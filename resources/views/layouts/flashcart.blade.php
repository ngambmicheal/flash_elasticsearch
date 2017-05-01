<?php 
	$identifiers = getIdentifiers();

?>
<!DOCTYPE html>
<html>
<head>
	<title>FlashCart</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="../../../../../js/jquery.min-3.1.1.js"></script>
  	<script src="../../../../../js/flashcart/body.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="icon" href="../../../../uploads/flashcart/logo/FlashCart.png" type="image/x-icon"/>
	<link rel="shortcut icon" href="../../../../uploads/flashcart/logo/FlashCart.png" type="image/x-icon"/>
	<link rel="stylesheet" type="text/css" href="../../../../../css/flashcart/body.css" />
	<link rel="stylesheet" type="text/css" href="../../../../../css/font-awesome.min.css">
	
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet"> 
</head>
<body>
<div class="container" id="main-container">
	<div class="flash_header">
		<div class="flash_nav ">
			<div class="nav-div">
				<div class="row">
					<div class="col-lg-3">
						<a href="/"><img src="../../../../uploads/flashcart/logo/FlashCart.png" class="img-responsive" /></a>
					</div>
					<div class="col-lg-9">
						<form class="search_form" action="/product/search" >
							<div class="input-group">
								<input type="text" class="form-control nav_form" placeholder="Search" id="searchBar" name="product" list='products_lists' autocomplete="off"  />
								<div class="input-group-btn">
									<button class="btn btn-default nav_form" type="submit" id="searchButton">
									<i class="glyphicon glyphicon-search"></i>
									</button>
								</div>
							</div>
						</form>

						<datalist id='products_lists' style="display: none">
								
						</datalist>
					</div>
				</div>
			</div>
			<div class="category_nav">
				<ul class="category_nav_ul light-border">
					<li id="category_nav_ul_category">
						<h2 class="flash_title" id="category_title" tabindex="1">
						Categories
						<i class="fa fa-bars pull-right"></i>
						</h2>
					</li>
					<li><h2 class="flash_title">asdsaas</h2></li>
				</ul>
			</div>
			<div id="category_nav_div" class="light-border">
				<div class="left-menu collapse in" id="left-menu">
					<nav>
						<ul class="left-menu-ul list-group">
							@forelse($identifiers as $identifier)
							<?php $categories = getCategories($identifier->pci_id); ?>
							<li class="category list-group-item">
								@if($identifier->icon != "")
								<i class="{{ $identifier->icon }} fa-fw"></i>
								@else
								<i class="fa fa-angle-right fa-fw"></i>
								@endif
									<a href="/mystore/category/{{$identifier->identifier}}">{{$identifier->identifier}}
										<i aria-hidden="true" class="fa fa-angle-right pull-right"></i>
									</a>


								<div class="left-mega-menu light-border">
					
									<div class="row">
											<ul class="list-group">
										@foreach($categories as $category)
											<div class="col-lg-6 sub_category">
												<a href="/mystorecategory/{{$category->category}}/sub_cat/">
													<li class="list-group-item sub_categories">{{$category->category}}</li>
												</a>
											</div>
										@endforeach
											</ul>
									</div>

					
								</div>
							</li>
								@empty
								<li>No categories yet.</li>
								@endforelse
							</ul>
						</nav>
					</div>
				</div>
			</div>
			
		</div>


@yield('content')



<div class="" id="row-container">
<div class=" items-container" id="container-1">
	<div class="top-row row" id="row-1">
		<span class="row-icon"><i class="fa fa-camera  fa-fw"></i></span><span class="row-title">Top Row</span>
	</div>
	<div class="row item-row" id="item-row-1">
		<div class="col-xs-2 col-lg-2 categories">
			<ul class="list-group categories-list">
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">vItem 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
			</ul>
		</div>
		<div class="col-xs-10 col-lg-10">
			<div class="products">
				
				
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>

<div class=" items-container" id="container-2">
	<div class="top-row row" id="row-2">
		<span class="row-icon"><i class="fa fa-camera  fa-fw"></i></span><span class="row-title">Top Row</span>
	</div>
	<div class="row item-row" id="item-row-2">
		<div class="col-lg-2 categories">
			<ul class="list-group categories-list">
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">vItem 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
			</ul>
		</div>
		<div class="col-lg-10">
			<div class="products">
				
				
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class=" items-container" id="container-3">
	<div class="top-row row" id="row-3">
		<span class="row-icon"><i class="fa fa-camera  fa-fw"></i></span><span class="row-title">Top Row</span>
	</div>
	<div class="row item-row" id="item-row-3">
		<div class="col-lg-2 categories">
			<ul class="list-group categories-list">
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">vItem 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
			</ul>
		</div>
		<div class="col-lg-10">
			<div class="products">
				
				
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<div class=" items-container" id="container-4">
	<div class="top-row row" id="row-4">
		<span class="row-icon"><i class="fa fa-camera  fa-fw"></i></span><span class="row-title">Top Row</span>
	</div>
	<div class="row item-row" id="item-row-4">
		<div class="col-lg-2 categories">
			<ul class="list-group categories-list">
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">vItem 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
			</ul>
		</div>
		<div class="col-lg-10">
			<div class="products">
				
				
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<div class=" items-container" id="container-5">
	<div class="top-row row" id="row-5">
		<span class="row-icon"><i class="fa fa-camera  fa-fw"></i></span><span class="row-title">Top Row</span>
	</div>
	<div class="row item-row" id="item-row-5">
		<div class="col-lg-2 categories">
			<ul class="list-group categories-list">
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">vItem 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
			</ul>
		</div>
		<div class="col-lg-10">
			<div class="products">
				
				
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class=" items-container" id="container-6">
	<div class="top-row row" id="row-6">
		<span class="row-icon"><i class="fa fa-camera  fa-fw"></i></span><span class="row-title">Top Row</span>
	</div>
	<div class="row item-row" id="item-row-6">
		<div class="col-lg-2 categories">
			<ul class="list-group categories-list">
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">vItem 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
				<li class="list-group-item category-item">Item 1</li>
			</ul>
		</div>
		<div class="col-lg-10">
			<div class="products">
				
				
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
				<div class="product">
					<div class="product-image">
						<img class="img-responsive" src="http://www.telemart.pk/media/catalog/product/cache/7/small_image/180x/9df78eab33525d08d6e5fb8d27136e95/l/i/lite2_1.jpg" width="130" height="130" alt="" />
					</div>
					<div class="product-description">
						<a href="">Huawei Honor 8 Lite (3GB,16GB) With Warranty</a>
						<p class="price">Rs. 32323</p>
						<p>@ asdsa</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
	</div>






</body>
</html>

			