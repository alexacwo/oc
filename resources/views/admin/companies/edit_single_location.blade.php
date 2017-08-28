<div uib-accordion-group
	class="panel-default panel-warning"
	heading="Location: {{ $location->friendly_name }}"
	is-open="0"
	style="margin-bottom:20px;"
>
	<form action="{{ url('admin/save_location/'.$location->id) }}" method="post" class="form-horizontal">
		{{ csrf_field() }}
		<div class="col-sm-10">
			<div class="col-sm-10">
						
				@include('admin.companies.edit_single_location_contacts')
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="location_friendly_name_{{ $location->id }}">
						Friendly name:
					</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"
							id="location_friendly_name_{{ $location->id }}"
							name="location_friendly_name[{{ $location->id }}]"
							placeholder="Enter friendly name"
							value="{{ $location->friendly_name }}"
						/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="location_address_{{ $location->id }}">
						Address:
					</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"
							id="location_address_{{ $location->id }}"
							name="location_address[{{ $location->id }}]"
							placeholder="Enter address"
							value="{{ $location->address }}"
						/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="location_city_{{ $location->id }}">
						City:
					</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"
							id="location_city_{{ $location->id }}"
							name="location_city[{{ $location->id }}]"
							placeholder="Enter city"
							value="{{ $location->city }}"
						/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="location_state_{{ $location->id }}">
						State:
					</label>
					<div class="col-sm-10"> 
						<input type="text" class="form-control"
							id="location_state_{{ $location->id }}"
							name="location_state[{{ $location->id }}]"
							placeholder="Enter state" 
							value="{{ $location->state }}"
						/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="location_zip_code_{{ $location->id }}">
						Zip Code:
					</label>
					<div class="col-sm-10"> 
						<input type="text" class="form-control"
							id="location_zip_code_{{ $location->id }}"
							name="location_zip_code[{{ $location->id }}]"
							placeholder="Enter zip code"
							value="{{ $location->zip_code }}"
						/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3" for="location_special_instructions_{{ $location->id }}">
						Special instructions:
					</label>
					<div class="col-sm-9"> 
						<textarea class="form-control" rows="5"
							id="location_special_instructions_{{ $location->id }}"
							name="location_special_instructions[{{ $location->id }}]"
							style="resize:none;">{{ $location->special_instructions }}</textarea>
					</div>
				</div>			
				<div class="form-group">									
					<label class="col-sm-4">
						Manual meter reads entry allowed:
					</label>
					<div class="col-sm-8">				
						<input type="checkbox"
							name="location_manual_meter_reads_entry[{{ $location->id }}]"
							@if ($location->manual_meter_reads_entry == 1)
								checked
							@endif
						/>
					</div>
				</div>	
			</div>
			
				
			<div class="col-sm-2">
				<button type="submit" class="btn btn-info">
					<i class="fa fa-trash"></i> Save
				</button> 
			</div>
		
			<div class="col-sm-12">	
				<div class="col-sm-12" style="padding:0px;">	
					Add device to this location:
					<br>
					<div class="col-sm-8">	
						<div class="form-group">
							<select class="form-control" ng-model="deviceId">
								@foreach ($devices as $device)
									<option value="{{ $device->id }}">
										{{ $device->model }}
									</option>
								@endforeach
							</select>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="btn btn-info"
							ng-show="deviceId != null"
							ng-click="addDeviceToLocation({{ $location->id }}, deviceId)">
							<i class="fa fa-trash"></i> Add
						</div>
					</div> 
				</div>
		 
				<div class="col-sm-12" style="padding:0px;">	
					
					@include('admin.companies.edit_single_location_edit_device_units')
					
				</div> 
				<div class="col-sm-12" style="padding:0px;">	
					<div style="font-weight:bold;margin-bottom:20px;">Proposed Devices:</div>
					
					@include('admin.companies.edit_single_location_edit_proposed_device_units')
					
				</div> 
			</div> 
			
		</div>
	
	</form>
	
	<div class="col-sm-2">												
		<form action="{{ url('admin/delete_location/'.$location->id) }}" method="post">
			{{ csrf_field() }}
			{{ method_field('DELETE') }}

			<button type="submit" class="btn btn-danger">
				<i class="fa fa-trash"></i> Delete
			</button>
		</form>
	</div> 
</div>