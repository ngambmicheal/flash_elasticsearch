@extends('layouts.flashcart')

@section('title')
	{{ $store->store_name }} - Apply
@endsection

@if($errors->any())
@section('content-alert')
<div class="container">
	<div class="alert alert-warning alert-dismissable">
      <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  		<strong>NOTE !</strong>  {{ $errors->first('salary_error') }}
	</div>
</div>
@endsection
@endif

@section('search')
<div class="jumbotron text-center">
	<div class="container">
		<div class="row">
			<div class="col-md-2" id="brandmark-logo">
				<div id="logo">
					<img src="/uploads/store/brand_marks/{{ $store->brand_logo }}" alt="{{ $store->store_name }}" class="img-responsive" height="200" width="200">
				</div>
			</div>
			<div class="col-md-10" id="brand-name">
				<div id="title">
					<h1 id="title-content">{{ $store->store_name }}</h1>
					<div id="tagline">
						<p id="tagline-content">{{ $store->tagline }}</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection

@section('side-menu-section')
  @include('flashcart.static.store-side-menu',['store_categories' => $store_categories])
@endsection



@if(session()->has('proposal_successful'))
	@section('main-section')
		<div class="container">
			<p>{{ $user->name }}, {{ session()->get('proposal_successful') }}</p>
			<p>Good Luck :)</p>
		</div>
	@endsection
@endif


@section('main-section')
@if(isset($store_check_ownership))
<div class="container">
	<div class="col-md-7 col-md-offset-3">
		<p>{{ $user->name }}, you cannot apply to your own store.</p>
	</div>
</div>
@elseif(isset($proposal_check))
<div class="container">
	<div class="col-md-7 col-md-offset-3">
		<p>{{ $user->name }}, you have already applied to {{ $store->name }}. Please wait for their decision.</p>
	</div>
</div>
@else
<div id="apply-form" class="container">
	<div class="row">
		<div class="col-md-8">
			<div class="panel panel-primary">
				<div class="panel-body">
					<div class="panel-heading less-height">
						Apply Form
					</div>
					<div class="panel-body">
						<form action="/employ/apply_form" id="applyForm" method="POST">
							{{ csrf_field() }}

							Please sign your proposal, {{ $user->name }}
							<br />
							<div class="form-group">
								<div class="">
									Salary:
								</div>
								<div class="">
									<input type="number" pattern="[0-9]+" name="salary" id="salary" class="form-control" required />
								</div>
							</div>
							<div class="form-group">
								<div class="">
									Proposal:
								</div>
								<div class="">
									<textarea class="form-control" name="proposal" id="proposal" required></textarea>
								</div>
							</div>
							<div class="form-group">
								<input type="submit" name="submit" value="Submit" class="btn btn-warning" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="panel panel-primary">
				<div class="panel-body">
					<div class="panel-heading">
						Note!
					</div>
					<div class="panel-body">
						<p>Make sure your proposal lies in between store's given salary range that is <strong>{{ number_format($store->min_wage)}} Rs.</strong> - <strong>{{ number_format($store->max_wage) }} Rs.</strong> </p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
@endif
@endsection

@section('css')
<style>
#tagline-content
{
	color: black;
	font-style: italic;
}
#title-content
{
	color: black;
}
.jumbotron
{
	background-color: white !important;
}
#brandmark-logo
{
	margin-top: 20px;
	display: block;
	height: 215px;
	min-height: 50px; 
}
#brand-name
{
	margin-top: 20px;
	display: block;	
}
</style>
@endsection