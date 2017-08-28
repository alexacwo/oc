@extends('layouts.app')

@section('content')
<div ng-controller="locationOrSearchResultsController" ng-cloak>
	<div class="header_container">
		<div class="row" style="margin:0px;">
			<h1>{{ $company->company_name }}</h1>
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
				<h3 style="margin-top:0px;">Search Results:</h3>
				<div class="frontpage_header_underline"></div>
			</div>	
		</div>
		@if (count($device_units) > 0)
			<div class="row" ng-init="deviceUnits = {{ $device_units }}">
				<div class="col-md-6 frontpage_device_list">
					<div class="printer_option" ng-repeat="deviceUnit in deviceUnits"> 
						<input type="radio" id="device_option_{[{ deviceUnit.id }]}"
							value="{[{ deviceUnit.id }]}"
							name="device_unit_id"
							ng-model="$parent.deviceUnitId"
						>
						<label for="device_option_{[{ deviceUnit.id }]}" style="padding-right: 0px;">
							{[{ deviceUnit.device.model }]} (Location: {[{ deviceUnit.location.friendly_name }]})
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
										ng-click="saveDeviceFriendlyName({{ $company->id }}, newDeviceName[deviceUnit.id], this)"
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
						<div class="device_specification">
							<ul>
								<li ng-if="deviceUnit.base_cost != null && deviceUnit.base_cost != ''"><b>Base cost:</b> {[{ deviceUnit.base_cost }]} </li>
								<li ng-if="deviceUnit.color_included != null && deviceUnit.color_included != ''"><b>Color pages included:</b> {[{ deviceUnit.color_included }]} </li>
								<li ng-if="deviceUnit.mono_included != null && deviceUnit.mono_included != ''"><b>Mono pages included:</b> {[{ deviceUnit.mono_included }]} </li>
								<li ng-if="deviceUnit.cost_per_color != null && deviceUnit.cost_per_color != ''"><b>Cost per extra color page:</b> {[{ deviceUnit.cost_per_color }]} </li>
								<li ng-if="deviceUnit.cost_per_mono != null && deviceUnit.cost_per_mono != ''"><b>Cost per extra mono page:</b> {[{ deviceUnit.cost_per_mono }]} </li>
								<li ng-if="deviceUnit.escalation_percentage != null && deviceUnit.escalation_percentage != ''"><b>Escalation percentage:</b> {[{ deviceUnit.escalation_percentage }]} </li>
								<li ng-if="deviceUnit.lease_expiration != null && deviceUnit.lease_expiration != ''"><b>Lease end date:</b> {[{ deviceUnit.lease_expiration }]} </li>
								<li ng-if="deviceUnit.supply_provider.name != null && deviceUnit.supply_provider.name != ''">
									<b>Supplies provider:</b> {[{ deviceUnit.supply_provider.name }]}
									<div style="padding-left:20px;">
										<span ng-if="deviceUnit.supply_provider.contact_person_name != null && deviceUnit.supply_provider.contact_person_name != ''">
											<b>Contact person:</b> {[{ deviceUnit.supply_provider.contact_person_name }]}
										</span>
										<span ng-if="deviceUnit.supply_provider.contact_person_phone != null && deviceUnit.supply_provider.contact_person_phone != ''">
											<br><b>Phone:</b> {[{ deviceUnit.supply_provider.contact_person_phone }]}
										</span>
										<span ng-if="deviceUnit.supply_provider.contact_person_email != null && deviceUnit.supply_provider.contact_person_email != ''">
											<br><b>Email:</b> {[{ deviceUnit.supply_provider.contact_person_email }]}
										</span>
									</div>
								</li>
								<li ng-if="deviceUnit.service_provider.name != null && deviceUnit.service_provider.name != ''">
									<b>Supplies provider:</b> {[{ deviceUnit.service_provider.name }]}
									<div style="padding-left:20px;">
										<span ng-if="deviceUnit.service_provider.contact_person_name != null && deviceUnit.service_provider.contact_person_name != ''">
											<b>Contact person:</b> {[{ deviceUnit.service_provider.contact_person_name }]}
										</span>
										<span ng-if="deviceUnit.service_provider.contact_person_phone != null && deviceUnit.service_provider.contact_person_phone != ''">
											<br><b>Phone:</b> {[{ deviceUnit.service_provider.contact_person_phone }]}
										</span>
										<span ng-if="deviceUnit.service_provider.contact_person_email != null && deviceUnit.service_provider.contact_person_email != ''">
											<br><b>Email:</b> {[{ deviceUnit.service_provider.contact_person_email }]}
										</span>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-6 frontpage_device_photo">
					<img ng-src="{{ url('storage/images/') }}/{[{ deviceUnitPhotoUrl }]}"
						ng-show="deviceUnitPhotoUrl != null"
					/>
				</div>
			</div>
		@else			
			<div class="row">
				No devices were found. <a href="{{ url('company/' . $company->id) }}">Please try again.</a>
			</div>
		@endif
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
					action="{{ url('company/' . $company->id . '/need_supplies') }}"
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
					action="{{ url('company/' . $company->id . '/need_service') }}"
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
							ng-click="changeSuppliesCredentials({{$company->id}}, deviceUnitId)"
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
								ng-click="changeServiceCredentials({{$company->id}}, deviceUnitId)"
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
	</div>
</div>
@endsection
