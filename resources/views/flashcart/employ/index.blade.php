@extends('layouts.flashcart')

@section('title')
	Employment @ FlashCart
@endsection

@section('search')
	@include('flashcart.static.store-search',['store_categories' => $store_categories])
@endsection

@section('side-menu-section')
	@include('flashcart.static.store-side-menu')
@endsection

@section('main-section')
@endsection