@extends('layouts.app')

@section('content')
<div class="header_container transparent_style">
    <div class="row" style="margin:0px;">
		<h1>Order Supplies</h1>
	</div>
</div>

<div class="container" style="margin-top:30px;" ng-cloak>
    <div class="row" style="
    margin-bottom: 30px;">
        <div class="col-md-6" style="padding-left:0px;">
			<h3 style="margin-top:0px; color:#51b2df;">			
				{{ $device_unit->device->model }}
			</h3> 
		</div> 
    </div>
	<div class="row">
		<form method="post"
			action="{{ url('company/' . $location->company->id . '/location/' . $location->id . '/submit_order') }}"
			id="needSuppliesForm"
		>
			{{ csrf_field() }}
			
			<div class="col-md-6 frontpage_device_photo">
				<img src="{{ url('storage/images', [$device_unit->device->photo_url]) }}" />
			</div>
			<div class="col-md-6 frontpage_device_list" ng-init="supplyItems = {}">
					@if (count($device_unit->device->supply_items) > 0)
						@foreach ($device_unit->device->supply_items as $supply_item)
							<div class="printer_option">
								<input type="checkbox" id="supply_item_{{$supply_item->id}}"
									name="supply_items[]"
									value="{{ $supply_item->id }}"
									ng-model="supplyItems['{{ $supply_item->id }}']"
								>
								@php
									$prices[$supply_item->id] = 0;
									foreach ($device_unit->supply_item_units as $supply_item_unit){
										if ($supply_item_unit->supply_item_id == $supply_item->id) {
											$prices[$supply_item->id] = $supply_item_unit->price;
										}
									}
								@endphp
								<label for="supply_item_{{$supply_item->id}}">{{ $supply_item->name }}
								@if ($prices[$supply_item->id])
									| Price: ${{ $prices[$supply_item->id] }}
								@endif
								</label>
								<div class="custom_checkbox"></div>
							</div>
						@endforeach
					@endif
			</div>
			<input type="hidden" name="device_unit_id" value="{{ $device_unit->id }}" />
			<input type="hidden" name="location_id" value="{{ $location->id }}" />
			<input type="hidden" name="company_id" value="{{ $location->company->id }}" />
			<input type="hidden" name="use_alt_address" value="{[{ useAlternativeAddress }]}" />
			<input type="hidden" name="alt_address_addr" value="{[{ alternativeAddressAddr }]}" />
			<input type="hidden" name="alt_address_attn" value="{[{ alternativeAddressAttn }]}" />
			<input type="hidden" name="alt_address_city" value="{[{ alternativeAddressCity }]}" />
			<input type="hidden" name="alt_address_state" value="{[{ alternativeAddressState }]}" />
			<input type="hidden" name="alt_address_zip" value="{[{ alternativeAddressZip }]}" />
		</form>
	</div>
		
	<div class="row" style="margin-top: 40px; margin-bottom:20px; ">
		<div class="col-md-6" style="padding-left: 0px; margin-bottom:20px;">
			<div class="need_service hover_button" style="width:100px;">
				<form method="post"
					action="{{ url('company/' . $location->company->id . '/location/' . $location->id . '/need_service') }}"
					class="animate-show"
					id="needServiceForm"
				>
					{{ csrf_field() }} 
					<input type="hidden" value="{{ $device_unit->id }}" name="device_unit_id" />
					<a onclick="event.preventDefault(); document.getElementById('needServiceForm').submit();" href="#">	
						I need service
					</a>
				</form>		
			</div>
			@if ($needs_meter_reads)
				<div class="need_button hover_button meter_reads_block">		
					<a href="{{ url('company/' . $location->company->id . '/location/' . $location->id . '/submit_meter_reads_page') }}">	
						Submit Meter Reads
					</a>
				</div>
			@endif	
		</div>
		<div class="col-md-6" ng-show="( supplyItems | checkbBoxItemsKeyLength ) > 0">
		
			<div class="form-group">
				<label for="user_login">Shipping address:</label>
				<input type="text" disabled class="form-control" id="user_login" value="{{ $location->address }}">
			</div>
			
			<div class="printer_option alt_address_option" style="margin-bottom:10px;">
				<input type="checkbox" id="use_alt_address"
					name="use_alt_address"
					ng-model="useAlternativeAddress"
				/>
				<label for="use_alt_address">
					Use alternative address
				</label>
				<div class="custom_checkbox"></div>
			</div>
			
			<div class="printer_option alt_address_option form-group animate-show" ng-show="useAlternativeAddress">
				<div class="col-xs-12" style="margin-bottom:10px;">					
					<label for="alt_address_address" style="padding-left: 0px;">
						Address:
					</label>
					<input id="alt_address_city" type="text" class="form-control" ng-model="alternativeAddressAddr" />
				</div>
				<div class="col-xs-12" style="margin-bottom:10px;">					
					<label for="alt_address_attn" style="padding-left: 0px;">
						Attention:
					</label>
					<input id="alt_address_city" type="text" class="form-control" ng-model="alternativeAddressAttn" />
				</div>
			</div>
			<div class="form-group animate-show" ng-show="useAlternativeAddress">
				<div class="col-xs-12 col-md-4" style="margin-bottom:10px;">					
					<label for="alt_address_city">
						City:
					</label>
					<input id="alt_address_city" type="text" class="form-control" ng-model="alternativeAddressCity" />
				</div>
				<div class="col-xs-12 col-md-4" style="margin-bottom:10px;">					
					<label for="alt_address_state">
						State:
					</label>
					<input id="alt_address_street" type="text" class="form-control" ng-model="alternativeAddressState" />
				</div>
				<div class="col-xs-12 col-md-4" style="margin-bottom:10px;">					
					<label for="alt_address_zip">
						ZIP:
					</label>
					<input id="alt_address_zip" type="text" class="form-control" ng-model="alternativeAddressZip" />
				</div>
			</div>
			
			<button
				onclick="document.getElementById('needSuppliesForm').submit();"
				class="need_button submit_order animate-show"
				style="border: none;"
			> 		
				Submit Order
			</button>
		</div>
	</div>
</div>

@endsection
