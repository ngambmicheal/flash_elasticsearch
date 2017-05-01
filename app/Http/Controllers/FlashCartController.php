<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Store;
use App\Store_product;
use App\User;
use App\Link_to_store;
use App\Store_order;
use App\Store_order_product;
use App\Store_log;

use Auth;
use View;
use Carbon\Carbon;

class FlashCartController extends Controller
{
    public function index()
    {
    	$search = "";
    	return view('flashcart.index', compact('search'));
    }

    public function find_product(Request $request)
    {

        $products = store_product::search($request->product);
        $search = $request->product;

    

        $initial = explode(' ', $search);
        $next = [];


        foreach($initial as $in){
            $next[] = "<span style='background:orange'>".ucfirst($in)."</span>";
        }


        return view('flashcart.search', compact('products', 'search', 'initial','next'));

        return $products;


    	$search = trim($request->product);

        if($search != "" || $search != NULL)
        {

            $products = Store_product::select('id as product_id','store_products.slug','store_products.id', 'product_name', 'product_price', 'product_discount', 'product_views','product_image1','product_image2','product_image3','product_image4', 'store_name', 'store_products.store_id', 'store_sale_products.sale_id', 'sale_name', 'discount', 'store_username','product_quantity', 'store_sales.status as sale_status')
                ->leftJoin('store_sale_products','store_products.id','store_sale_products.product_id')
                ->leftJoin('store_sales', 'store_sale_products.sale_id','store_sales.sale_id')
                ->leftJoin('stores','store_products.store_id','stores.store_id')
                ->whereRaw('MATCH(product_name, product_desc) AGAINST (? IN BOOLEAN MODE)', array($search))
                ->paginate(12);
        }
        else
        {
            $products = Store_product::select('id as product_id','store_products.id', 'product_name', 'product_price', 'product_discount', 'product_views','product_image1','product_image2','product_image3','product_image4', 'store_name', 'store_products.store_id', 'store_sale_products.sale_id', 'sale_name', 'discount', 'store_username','product_quantity', 'store_sales.status as sale_status')
                ->leftJoin('store_sale_products','store_products.id','store_sale_products.product_id')
                ->leftJoin('store_sales', 'store_sale_products.sale_id','store_sales.sale_id')
                ->leftJoin('stores','store_products.store_id','stores.store_id')
                ->paginate(12);
        }

    	return view('flashcart.products',compact('products','search'));
    }

    public function review()
    {
        $search = "";
        $products = session('products');

        if($products != "")
        {
            foreach($products as $arr)
            {
                if(session('stores') == NULL)
                {
                    session()->push('stores', $arr['store']);
                } 
                else if(!in_array($arr['store'], session('stores')))
                {
                    session()->push('stores', $arr['store']);
                }
            }

            //$stores = session('stores');

            /*$final_array = array();
            foreach($stores as $arr)
            {
                foreach($products as $arr2)
                {
                    if($arr == $arr2['store'])
                    {
                        $final_array[$arr]['product'][] = $arr2['product'];
                    }
                }
            }

            session()->put('order', $final_array);*/
            return view('flashcart.order.review');
        
        }
        else
        {
            return redirect()->back()->withErrors(['check'=>"Add products to your cart first."]);
        }
    }

    public function place(Request $request)
    {
        $order = array();
        $product_ids = array();
        $prices = array();
        $username = $request->s_value_u;
        $store_id = $request->s_value;

        $products = searchProductArrayByUsername(session('products'), $username);
        foreach($products as $product)
        {
            $details = getProductById($product['product']);
            $product_ids[] = $product['product'];
            
            $price = price_check($details->product_discount, $details->product_price, $details->sale_id, $details->discount, $details->sale_status);
            $prices[] = clearNumber($price);
        }
        $order['products'] = $product_ids;
        $order['prices'] = $prices;
        $order['quantities'] = $request->qty;
        $order['store'] = $store_id;
        $order['payment_id'] = $request->payment_method;
        if(Auth::user())
        {
            if($request->add_type == 1)
            {
                $order['address'] = $request->address_primary;
                $order['name'] = Auth::user()->name;
            }
            else if($request->add_type == 0)
            {
                $address = "House no. ".$request->address_secondary_hno.", Street ".$request->address_secondary_street." (".$request->address_secondary_street."/".$request->address_secondary_hno.")<br />".$request->address_secondary_area."<br />".$request->address_secondary_city.", ".$request->address_secondary_state." - ".$request->address_secondary_postal."<br />".$request->address_secondary_phone.", ".$request->address_secondary_mobile;
                $order['address'] = $address;
                $order['name'] = trim($request->order_name);
            }
            $order['user_id'] = Auth::user()->id;
        }
        else
        {
            $order['name'] = trim($request->order_name);
            $address = "House no. ".$request->address_guest_hno.", Street ". $request->address_guest_street." (".$request->address_guest_street."/".$request->address_guest_hno.")<br />".$request->address_guest_area."<br />".$request->address_guest_city.", ".$request->address_guest_state." - ".$request->address_guest_postal."<br />".$request->address_guest_phone.", ".$request->address_guest_mobile;
                $order['address'] = $address;

            $order['user_id'] = 0;
        }

        $invoice_count = Store_order::count();
        $invoice_id = session('user_type')."-".$invoice_count."-".rand(100,999)."-".rand(1000,9999)."-".date("Y");
        //$order = (object)$order;

        //dd($order);

        $store = Store::select('store_name','brand_logo', 'store_username')
            ->join('store_brandmarks','stores.store_id','store_brandmarks.store_id')
            ->where('stores.store_id','=',$store_id)
            ->first();

        $order['invoice_id'] = $invoice_id;

        session()->put($username, $order);

        //dd(session($username));
        
        return view('flashcart.order.place', compact('order', 'store', 'invoice_id', 'username'));

    }

    public function sign($username)
    {
        $username = trim($username);
        $signed = array();
        $signed = session($username);
        //$store = getStoreNameByUsername($signed['store']);
        $orderArray = array();

        $order = new Store_order;
        $orderArray['user_id'] = $signed['user_id'];
        $orderArray['order_name'] = $signed['name'];
        $orderArray['store_id'] = $signed['store'];
        $orderArray['payment_method'] = $signed['payment_id'];
        $orderArray['address_info'] = $signed['address'];
        $orderArray['invoice_id'] = $signed['invoice_id'];
        $orderArray['order_status'] = 2;
        $orderArray['created_at'] = Carbon::now()->format('Y-m-d H:i:s');
        $invoice = $order->insertGetId($orderArray);

        $log_string = "New order '".$signed['invoice_id']."' by ".$signed['name'];
        $log = new Store_log;
        $log->store_id = session('store_id');
        $log->log = $log_string;
        $log->log_type = 21;
        $log->log_by = $signed['user_id'];
        $log->log_linker = $signed['invoice_id'];
        $log->save();


        notifyStore($signed['user_id'],3,$signed['invoice_id']);

        $products = $signed["products"];
        $quantities = $signed['quantities'];
        $prices = $signed['prices'];

        for($i=0;$i<count($products); $i++)
        {
            $sop = new Store_order_product;
            $sop->order_id = $invoice;
            $sop->product_id = $products[$i];
            $sop->quantity = $quantities[$i];
            $sop->price = $prices[$i];
            $sop->save();
        }


        $stores = session('stores');
        $stores = array_values($stores);

        session()->put('stores', $stores);
        removeFromSingleArraySession('stores',$username);


        $m = session('products');
        $m = array_values(array_filter($m));

        for($i=0;$i<count($m);$i++)
        {
            if($m[$i]['store']==$username)
            {
                unset($m[$i]['store']);
                unset($m[$i]['product']);
            }
        }
        $m = array_values(array_filter($m));
        
        session()->put('products', $m);

        return redirect()->to('/order/review');
    }

























}
