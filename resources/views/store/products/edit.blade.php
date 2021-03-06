@extends('layouts.store', ['store'=>$store])

@section('store-title')
{{ $store->store_name }} - Edit Product
@endsection

@section('store-view')
Products
@endsection
@section('store-subview')
Edit Products
@endsection

@section('store-breadcrumb')
<li><a href="/store/products"></a></li>
<li>Edit Product</li>
@endsection

@section('store-content')

@section('store-alertcontent')
@if($errors->any())
<div class="container">
    <div class="alert alert-warning alert-dismissable">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>NOTE!</strong>
        {!! $errors->first('category_check') !!}
        {!! $errors->first('privilege_check') !!}
    </div>
</div>
@endif
@endsection

@section('store-successcontent')
@if(session()->has('message'))
<div class="container">
    <div class="alert alert-success alert-dismissable">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>SUCCESS!</strong>
        {!! session()->get('message') !!}
    </div>
</div>
@endif
@endsection
<section class="col-lg-12">
<div class="box box-default">
    <div class="box-header"><div class="box-title">{{ $product['product_name'] }}</div></div>
    <div class="box-body">
        <form class="form-horizontal" role="form" method="POST" action="/store/products/edited_p/{{$product['id']}}" id="updateProduct" enctype="multipart/form-data">
            {{ csrf_field() }}
            <div class="form-group">
                <label for="product_code" class="col-md-4 control-label">Product Code</label>
                <input type="text" name="id" class="hidden" id="id" value="{{ $product['id'] }}" />
                <div class="col-md-6">
                    <input id="product_code" type="text" value="{{ $product['product_code'] }}" class="form-control" name="product_code" value="{{ old('product_code') }}" required autofocus>
                    <input type="text" name="old_code" class="hidden" id="old_code" value="{{ $product['product_code'] }}" />
                    <span class="error" id="product_code_error"></span>
                </div>
            </div>
            <input id="store_username" type="text" class="hidden" value="{{ $store->store_username }}" />
            <input id="product_slug" type="text" class="hidden" name="slug" value="{{ $product['slug'] }}" />
            <div class="form-group">
                <label for="product_name" class="col-md-4 control-label">Name</label>
                <div class="col-md-6">
                    <input id="product_name" type="text" class="form-control" name="product_name" value="{{ $product['product_name'] }}" required autofocus>
                    <span class="error" id="product_name_error"></span>
                </div>
            </div>
            <div class="form-group">
                <label for="product_desc" class="col-md-4 control-label">Description</label>
                <div class="col-md-6">
                    <textarea id="product_desc" class="form-control" name="product_desc" required autofocus>{{ $product['product_desc'] }}</textarea>
                    <span class="error" id="product_desc_error"></span>
                </div>
            </div>
            <div class="form-group">
                <label for="product_price" class="col-md-4 control-label">Price</label>
                <div class="col-md-6">
                    <input id="product_price" class="form-control" name="product_price" value="{{ $product['product_price'] }}" required autofocus />
                    <span class="error" id="product_price_error"></span>
                </div>
            </div>
            <div class="form-group">
                <label for="product_discount" class="col-md-4 control-label">Discount (in numbers eg 10)</label>
                <div class="col-md-6">
                    <input id="product_discount" class="form-control" name="product_discount" value="{{ $product['product_discount'] }}" required autofocus placeholder="Enter percentage of discount." />
                    <span class="error" id="product_discount_error"></span>
                </div>
            </div>
            <div class="form-group">
                <label for="product_quantity" class="col-md-4 control-label">Quantity</label>
                <div class="col-md-6">
                    <input id="product_quantity" class="form-control" name="product_quantity" value="{{ $product['product_quantity'] }}" required autofocus />
                    <span class="error" id="product_quantity_error"></span>
                </div>
            </div>
            <div class="form-group{{ $errors->has('product_category') ? ' has-error' : '' }}">
                <label for="product_category" class="col-md-4 control-label">Category</label>
                <div class="col-md-6">
                    <select id="product_category" class="form-control" name="product_category" required autofocus>
                        <option value="{{ $product['id'] }}" selected class="select_default">{{ $product['category'] }} - Current Category</option>
                        <hr />
                        @forelse($categories as $cats)
                        <option value="{{ $cats->id }}">{{ $cats->category }}</option>
                        @empty
                        <option value="0" selected disabled>No Categories set.</option>
                        @endforelse
                    </select>
                    <span class="error" id="product_category_error"></span>
                </div>
            </div>
            <div class="form-group">
                <label for="product_sub_category" class="col-md-4 control-label">Sub Category</label>
                <div class="col-md-6">
                    <?php $main_cats = array(); ?>
                    @forelse($categories as $cats)
                    <select id="product_sub_category_{{ $cats->id }}" class="form-control sub_category" name="product_sub_category" required autofocus>
                        <option value="{{ $product['sub_category'] }}" selected></option>
                        <?php
                        $sub_cats = getSubCategories($cats->id);
                        if(count($sub_cats) > 0)
                        {
                        ?>
                        @forelse($sub_cats as $subs)
                        ?>
                        <option value="{{ $subs->spsc_id }}">{{ $subs->sub_category }}</option>
                        @empty
                        <option disabled selected>No sub categories for this.</option>
                        @endforelse
                        <?php
                        
                        }
                        ?>
                    </select>
                    @empty
                    <option value="0" selected disabled>No Categories set.</option>
                    @endforelse
                </div>
            </div>
            <div class="form-group">
                <label for="product_image1" class="col-md-4 control-label">Image 1</label>
                <div class="col-md-6">
                    <input id="product_image1" type="file" class="form-control" name="product_image1" autofocus />
                    <input type="text" class="hidden" name="product_old_image1" value="{{ $product['product_image1'] }}">
                </div>
            </div>
            <div class="form-group">
                <label for="product_image2" class="col-md-4 control-label">Image 2</label>
                <div class="col-md-6">
                    <input id="product_image2" type="file" class="form-control" name="product_image2" autofocus />
                    <input type="text" class="hidden" name="product_old_image2" value="{{ $product['product_image2'] }}">
                </div>
            </div>
            <div class="form-group">
                <label for="product_image3" class="col-md-4 control-label">Image 3</label>
                <div class="col-md-6">
                    <input id="product_image3" type="file" class="form-control" name="product_image3" autofocus />
                    <input type="text" class="hidden" name="product_old_image3" value="{{ $product['product_image3'] }}">
                </div>
            </div>
            <div class="form-group">
                <label for="product_image4" class="col-md-4 control-label">Image 4</label>
                <div class="col-md-6">
                    <input id="product_image4" type="file" class="form-control" name="product_image4" autofocus />
                    <input type="text" class="hidden" name="product_old_image4" value="{{ $product['product_image4'] }}">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-6 col-md-offset-4">
                    <input value="Save" type="submit" class="btn btn-primary" id="edit_product" />
                </div>
            </div>
        </form>
    </div>
</div>
</section>
<script>
$(document).ready(function()
{
    $("#product_category").on('change',function()
    {
        $(".sub_category").slideUp();
        $(".sub_category").prop('disabled','disabled');
        var id = $(this).val();
        $("#product_sub_category_"+id).slideDown();
        $("#product_sub_category_"+id).prop('disabled',false);
    });
});
</script>
@endsection


@section('css')
<style>
.sub_category
{
    display: none;
}
</style>
@endsection