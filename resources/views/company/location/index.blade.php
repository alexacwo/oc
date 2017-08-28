@extends('layouts.app')

@section('content')
<div ng-controller="locationOrSearchResultsController" ng-cloak>
	<div class="header_container">
		<div class="row" style="margin:0px;">
			<h1>{{ $location->company->company_name }} - {{ $location->friendly_name }}</h1>
		</div>
	</div>
	<div class="container" style="margin-top:30px;">
		<div class="row" style="margin-bottom: 30px;">
			@if (Session::has('order_message'))
				<div class="col-md-12" style="padding-left:0px;">			
					<div class="custom_alert success">
						<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
						{{ Session::get('order_message') }}
					</div>
				</div>
			@endif	
			<div class="col-md-6" style="padding-left:0px;">
				<h3 style="margin-top:0px;">Which Printer Do you need help with?</h3>
				<div class="frontpage_header_underline"></div>
			</div>
			@if ($needs_meter_reads)
				<div class="col-md-6" style="padding-right:0px;">
					<a href="{{ url('company/' . $location->company->id . '/location/' . $location->id . '/submit_meter_reads_page') }}">
						<div class="meter_reads_button green">
							Meter Reads Needed
						</div>
					</a>
					<div class="clearfix"></div>
				</div>
			@endif	
		</div>
		<div class="row" ng-init="deviceUnits = {{ $location->device_units }}">
			<div class="col-md-6 frontpage_device_list">
				<div class="printer_option" ng-repeat="deviceUnit in deviceUnits">
					<input type="radio" id="device_option_{[{ deviceUnit.id }]}"
						value="{[{ deviceUnit.id }]}"
						name="device_unit_id"
						ng-model="$parent.deviceUnitId"
					>
					<label for="device_option_{[{ deviceUnit.id }]}" style="padding-right: 0px;">
						{[{ deviceUnit.device.model }]}
					</label> 
					
					<div class="device_friendly_name 						
						@if (Auth::user()->hasRole('company'))
							underline
						@endif
						"
						ng-if="deviceUnit.friendly_name != null && deviceUnit.friendly_name != ''"
					>
						<div												
							@if (Auth::user()->hasRole('company'))
								ng-click="showEditForm(deviceUnit.id, deviceUnit.friendly_name)"
							@endif
						>
							({[{ deviceUnit.friendly_name }]})
						</div>
						@if (Auth::user()->hasRole('company'))
							<div class="device_friendly_name_edit_form animate-show" 
								ng-show="editFormVisible[deviceUnit.id]"
							>
								<input type="text" value="{[{ deviceUnit.friendly_name }]}"
									ng-model="newDeviceName[deviceUnit.id]"
								/>
								<button class="hover_button"
									ng-hide="newDeviceName[deviceUnit.id] == ''"
									ng-click="saveDeviceFriendlyName({{ $location->company->id }}, newDeviceName[deviceUnit.id], this)"
								> 
									Save
								</button>
							</div>
						@endif
					</div>
					<div class="device_friendly_name" ng-if="(deviceUnit.friendly_name == null || deviceUnit.friendly_name == '') && (deviceUnit.serial_number != null && deviceUnit.serial_number != '')">
						({[{ deviceUnit.serial_number }]})
					</div> 
					<span class="expiration_warning"
						ng-if="(deviceUnit.lease_expiration | checkExpirationDate) < 14 && (deviceUnit.lease_expiration | checkExpirationDate) > 0" 
					>
						Expires in {[{ deviceUnit.lease_expiration | checkExpirationDate }]} days!
					</span>
					<span class="expiration_warning"
						ng-if="(deviceUnit.lease_expiration | checkExpirationDate) == 0" 
					>
						Expires today!
					</span>
					<span class="expiration_warning"
						ng-if="(deviceUnit.lease_expiration | checkExpirationDate) < 0" 
					>
						Expired!
					</span>
						 
					<div class="custom_radio"></div>
				</div>
			</div>
			<div class="col-md-6 frontpage_device_photo">
				<img ng-src="{{ url('storage/images/') }}/{[{ deviceUnitPhotoUrl }]}"
					ng-show="deviceUnitPhotoUrl != null"
				/>
			</div>
		</div>
		<div class="row" style="margin-top: 40px;">
			<div class="col-md-6" style="padding-left: 0px; margin-bottom:20px;">	 
				<div>
					<div class="frontpage_contacts_block">
						Questions or Concerns?
					</div>
					<div class="frontpage_contacts_block">
						support@pahoda.com
					</div>
					<div class="frontpage_contacts_block">
						(720) 356-0248
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<form target="_blank" method="post"
					action="{{ url('company/' . $location->company->id . '/location/' . $location->id . '/need_supplies') }}"
					class="animate-show"
					ng-show="deviceUnitId && deviceUnitUseAltSuppliesLink != 1"
				>
					{{ csrf_field() }}					
					<input type="hidden" value="{[{deviceUnitId}]}" name="device_unit_id" />
					<button type="submit" class="need_button hover_button need_supplies_block" style="border: none;"> 
						I Need Supplies 
					</button>
				</form> 
				<a target="_blank" href="{[{ deviceUnitSuppliesPortalLink }]}" ng-show="deviceUnitId && deviceUnitUseAltSuppliesLink == 1">
					<button type="submit" class="need_button hover_button need_supplies_block" style="margin-left:0px;border: none;"> 
						I Need Supplies 
					</button>
				</a> 
				<form target="_blank" method="post"
					action="{{ url('company/' . $location->company->id . '/location/' . $location->id . '/need_service') }}"
					class="animate-show"
					ng-show="deviceUnitId && deviceUnitUseAltServiceLink != 1"
				>
					{{ csrf_field() }}
					<input type="hidden" value="{[{deviceUnitId}]}" name="device_unit_id" />
					<button type="submit" class="need_button hover_button need_service_block" style="border: none;"> 
						I Need Service 
					</button>
				</form> 
				<a target="_blank" href="{[{ deviceUnitServicePortalLink }]}" ng-show="deviceUnitId && deviceUnitUseAltServiceLink == 1">
					<button type="submit" class="need_button hover_button need_service_block" style="margin-left:0px;border: none;"> 
						I Need Service 
					</button>
				</a> 
			</div>
			<div class="col-md-3" ng-show="deviceUnitId && (deviceUnitUseAltSuppliesLink == 1 || deviceUnitUseAltServiceLink == 1)">
				
				<div class="  devices_needing_meter_reads" >
					<div style="margin-bottom:20px;">
						<b>Supplies link credentials:</b>
						<button type="submit" class="btn btn-info"
							ng-click="changeSuppliesCredentials({{$location->company->id}}, deviceUnitId)"
						>
							<i class="animate-show fa fa-spinner fa-spin"
								ng-show="showSuppliesLinkLoadingSpinner[deviceUnitId]"
							>
							</i>
							Save
						</button>
						<div class="color_block">
							Login:
							<input type="text" ng-model="deviceUnitSuppliesLogin" style="height:40px" />
						</div>
						<div class="blank_and_white_block">
							Password:
							<input type="text" ng-model="deviceUnitSuppliesPassword" style="height:40px" />
						</div>
					</div>
					<div style="margin-bottom:20px;">
						<b>Service link credentials:</b>
							<button type="submit" class="btn btn-info"
								ng-click="changeServiceCredentials({{$location->company->id}}, deviceUnitId)"
							> 
								<i class="animate-show fa fa-spinner fa-spin"
									ng-show="showServiceLinkLoadingSpinner[deviceUnitId]">
								</i>
								Save
							</button>
						<div class="color_block">
							Login:
							<input type="text" ng-model="deviceUnitServiceLogin" style="height:40px" />
						</div>
						<div class="blank_and_white_block">
							Password:
							<input type="text" ng-model="deviceUnitServicePassword" style="height:40px" />
						</div>
					</div>
				</div>	
				
			</div>
		</div>		
		<div class="row" style="margin-top: 40px;">
			<div class="col-md-12 location_options">
				@if (count ($orders) > 0)
					<div class="need_button   need_service_block" style="margin:auto; cursor:text; text-align: center;"> 
						<div>	
							Past orders
						</div> 
					</div>
					<div style="overflow: hidden; height:480px;">
						<div class="frontpage_device_list1" slimscroll="{height: 460}" style="background-color: #eee; padding: 20px 30px;">									
							<div class="form-group">
								@foreach ($orders as $order)	
									<div class="printer_option">
										<b>Order ID:</b> {{ $order->id }}
										<br><b>Device model:</b> {{ $order->device_unit->device->model }}
										<br><b>Device S/N:</b> {{ $order->device_unit->serial_number }}
										<br><b>Items ordered:</b>
										<ul>
										@foreach ($order->supply_items as $supply_item)	
											<li>
												{{ $supply_item->name }}
											</li>
										@endforeach
										</ul>
										<b>Status:</b> {{ $order->status }}
										@if ($order->status == 'shipped' && !is_null($order->tracking_no))
											<br><b>Tracking number:</b> {{ $order->tracking_no }}
										@endif
										<br><b>Date:</b> {{ $order->created_at }}
										<hr style="border-top:1px solid #000;">
									</div>
								@endforeach
							</div>
						</div>
					</div>
				@endif
			</div>
		</div>
	</div>
</div>
@endsection
