@extends('index_store.layouts.layout-'.$layout->layout_id, ['store'=>$store])


@section('header')
	@include('index_store.header.header-'.$layout->header_id, ['store'=>$store, 'social'=>$social, 'categories'=>$categories, 'sales'=>$sales]) 
@endsection

@section('categories')
	@include('index_store.category_panel.category-panel-'.$layout->category_panel_id, ['store' => $store, 'categories'=>$categories, 'sales'=>$sales])
@endsection

@section('body')
<img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg">
<img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg">
<img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg">
<img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg">
<img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg">
<img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg"><img src="https://upload.wikimedia.org/wikipedia/en/2/22/Batman-DC-Comics.jpg">
@endsection

