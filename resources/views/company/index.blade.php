@extends('layouts.app')

@section('content')
<div ng-controller="companyController" ng-cloak style="background:#fff;">
	<div class="header_container">
		<div class="row" style="margin:0px;">
			<h1>{{ $company->company_name }} - Site Information</h1>
		</div>
	</div>
	
	@if (count($company->locations) > 0)
		<div class="container" style="margin-top:30px; margin-bottom: 30px;">
			@if (Session::has('order_message'))
				<div class="col-md-12" style="padding-left:0px;">			
					<div class="custom_alert success">
						<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
						{{ Session::get('order_message') }}
					</div>
				</div>
			@endif	
			<div class="col-md-6">
				<div class="row" style="margin-bottom: 30px;"> 
					<h3 style="margin-top:0px;">Locations:</h3>
					<div class="frontpage_header_underline"></div>
				</div> 
				<div class="row"> 
					<div class="location_options">
						@foreach ($company->locations as $location) 
							<div class="need_button hover_button need_service_block" style="margin-left:0px; text-align: left; padding-left: 20px;">
								<a href="{{url ('/company') . '/' . $company->id . '/location/' . $location->id }}">
									<div>	
										{{$loop->index + 1}}). {{ $location->friendly_name }}
									</div>
								</a>
							</div>
						@endforeach
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="row" style="margin-bottom: 30px; float:left;width:100%;"> 
					<h3 style="margin-top:0px;">Search for the copier:</h3>
					<div class="frontpage_header_underline"></div>
				</div> 
				<div class="row" style=" float:left;width:100%;margin-bottom:30px;"> 
					Enter copier model or serial number or part of it:
					<br><br>
					<div class="device_friendly_name_edit_form animate-show" style="position:relative;float:left;">
						<form method="post" action="{{url ('/company') . '/' . $company->id . '/search_for_the_device'}}">
							{{ csrf_field() }}
							<input type="text" name="copier_name" />
							<button type="submit" class="hover_button">Search</button>
						</form>
					</div>
				</div> 
				<div class="row" style=" float:left;width:100%;"> 	
					<div class="device_friendly_name underline"
						ng-click="downloadDeviceInfo({{ $company->id }})"
						style="margin-bottom:20px;"
					>
						Download devices info as CSV file
					</div>
				</div> 
				<div class="clearfix"></div>
			</div>
		</div>
	@endif
	
	<div class="container" style="margin-bottom:20px;">
		<div class="row">
			<div class="col-xs-12 col-md-3">			
				<div class="need_button hover_button need_service_block" style="margin-left:0px; text-align: left;">
					<div slide-toggle="#add_new_device_block">
						<div style="padding-left:20px;">
							Add a New Device
						</div>
					</div>
				</div>							
			</div>
			<div id="add_new_device_block" class="col-xs-12 col-md-5 slideable_wrapper">
				<form action="{{url ('/company') . '/' . $company->id . '/add_new_device_unit' }}" method="post">
					{{ csrf_field() }}
					<div  class="col-xs-12 col-md-6 ">
						<div class="slideable_content">
							<div class="form-group">
								<label for="device_model">
									Choose location:
								</label>
								<select class="form-control" name="location_id"
								>
									@foreach ($company->locations as $location)
										<option value="{{ $location->id }}">{{ $location->friendly_name }}</option>
									@endforeach
								</select>
								<label for="device_model">
									Choose device model:
								</label>
								<select class="form-control" name="device_id"
								>
									@foreach ($devices as $device)
										<option value="{{ $device->id }}">{{ $device->model }}</option>
									@endforeach
								</select>	
								
								<label for="device_friendly_name">
									Friendly name:
								</label>
								<input id="device_friendly_name" type="text" class="form-control" name="device_friendly_name" />
								
								<label for="device_asset_number">
									Asset number:
								</label>
								<input id="device_asset_number" type="text" class="form-control" name="device_asset_number" />
								 
								<label for="device_serial_number">
									Serial number:
								</label>
								<input id="device_serial_number" type="text" class="form-control" name="device_serial_number" />
							</div> 
						</div>
					</div>
					<div class="col-xs-12 col-md-6" style="border: 1px solid #fff;">
						<div class="device_add_form">
							<button type="submit" class="hover_button">ADD</button>
						</div> 
					</div>
				</form>
			</div>
			<div class="col-xs-12 col-md-4">
			</div>
		</div>
	</div>

</div>
@endsection
