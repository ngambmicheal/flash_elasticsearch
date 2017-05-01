@extends('layouts.flashcart')

@section('search')
  @include('flashcart.static.product-search')
@endsection

@section('title')
  Welcome to FlashCart
@endsection


@section('content')


  <div class="" id="row-container">
<div class=" " id="container-1">
  <div class="top-row row" id="">
    <span class="row-icon"><i class="fa fa-eye  fa-fw"></i></span><span class="row-title">Search Results for <span style="color:orange">{{$search}}</span> - Results : ({{$products->totalHits()}})</span>
  </div>
  <div class="row item-row" id="item-row-1">
   
      <hr style="color:orange; height: 10px">
    <div class="col-xs-12 col-lg-12">
      <div class="s">       
      
      



        @foreach($products as $product)
        <div class="col-sm-12">
          <div class="col-sm-3">
            <div class="product-image">
              <img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
            </div>
          </div>
          <div class="col-sm-9">
          <div class="product-description">
            <a href="">{!! str_ireplace($initial, $next, $product->product_name) !!}</a>
            <p>{!! str_ireplace($initial, $next, $product->product_desc) !!}</p>
            <p class="price">Rs. 32323</p>
            <p>@ asdsa</p>
          </div>
          </div>
        </div>

        @endforeach
      </div>
    </div>
  </div>
</div>


@stop