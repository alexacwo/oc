<uib-accordion close-others="oneAtATime"> 
	<div uib-accordion-group
		class="panel-default panel-success form-horizontal"
		heading="{[{deviceUnit.device.model}]}"
		is-open="0"
		ng-repeat="deviceUnit in deviceUnits[{{$location->id}}]"
		style="margin-bottom:20px;">
		<div class="form-group">
			<div class="col-sm-12">										
				<button type="button" class="btn btn-danger" style="float:right;"
					ng-click="removeDeviceUnit(deviceUnit.id, $index, {{$location->id}})"
				>
					Remove
				</button>		
			</div>	
		</div>	
		<div class="form-group">
			<label class="control-label col-sm-2" for="device_unit_friendly_name_{[{ deviceUnit.id }]}">
				Friendly name:	
			</label>
			<div class="col-sm-10">
				<input type="text" class="form-control"
					id="device_unit_friendly_name_{[{ deviceUnit.id }]}"
					name="device_unit_friendly_name[{[{ deviceUnit.id }]}]"
					placeholder="Enter friendly name"
					ng-model="deviceUnit.friendly_name"
				/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="device_unit_asset_number_{[{ deviceUnit.id }]}">
				Asset number:	
			</label>
			<div class="col-sm-10">
				<input type="text" class="form-control"
					id="device_unit_asset_number_{[{ deviceUnit.id }]}"
					name="device_unit_asset_number[{[{ deviceUnit.id }]}]"
					placeholder="Enter asset number"
					ng-model="deviceUnit.asset_number"
				/>
			</div>
		</div>
		<div class="form-group">										
			<label class="control-label col-sm-2" for="device_unit_serial_number_{[{ deviceUnit.id }]}">
				Serial number:
			</label>
			<div class="col-sm-10">
				<input type="text" class="form-control"
					id="device_unit_serial_number_{[{ deviceUnit.id }]}"
					name="device_unit_serial_number[{[{ deviceUnit.id }]}]"
					placeholder="Enter serial number"
					ng-model="deviceUnit.serial_number"
				>
			</div>
		</div>
		<div class="form-group">										
			<label class="control-label col-sm-2">
				Lease expiration date:
			</label>
			<div class="col-sm-10"> 
				<md-datepicker id="datePicker_{[{deviceUnit.id}]}" ng-model="leaseExpiration[deviceUnit.id]" md-placeholder="Enter date">
				</md-datepicker>				
			</div>
		</div>
		<div class="form-group">										
			<label class="control-label col-sm-2">
				Assign a supply provider to this device:
			</label>
			<div class="col-sm-10">
				<select class="form-control" name="device_unit_supply_provider[{[{ deviceUnit.id }]}]">
					<option value="false"></option>
					@foreach ($supply_providers as $supply_provider)
						<option value="{{ $supply_provider->id }}"
							ng-selected="deviceUnit.supply_provider.id == {{ $supply_provider->id }}"
						>							
							{{ $supply_provider->name }}
						</option>
					@endforeach
				</select>
			</div>
		</div>
		<div class="form-group">										
			<label class="control-label col-sm-2">
				Assign a service provider to this device:
			</label>
			<div class="col-sm-10">
				<select class="form-control" name="device_unit_service_provider[{[{ deviceUnit.id }]}]">
					<option value="false"></option>
					@foreach ($service_providers as $service_provider)
						<option value="{{ $service_provider->id }}"
							ng-selected="deviceUnit.service_provider.id == {{ $service_provider->id }}"
						>
							{{ $service_provider->name }}
						</option>
					@endforeach
				</select>
			</div>
		</div>
		<div class="form-group">									
			<label class="col-sm-4">
				The device needs meter reads:
			</label>
			<div class="col-sm-8">				
				<input type="checkbox"
					name="device_unit_needs_meter_reads[{[{ deviceUnit.id }]}]"
					ng-checked="deviceUnit.needs_meter_reads == 1"
				/>
			</div>
		</div>
		<div class="form-group">
		
			<!-- 									SUPPLIES START										-->
			
			<label class="control-label col-sm-2">
				Supplies portal info
			</label>
			<div class="col-sm-10">
				<div class="radio">
					<label>
						<input type="radio"
							name="supplies_portal_link[{[{ deviceUnit.id }]}]"
							value="system_link"
							ng-model="suppliesPortalLink[ deviceUnit.id ]"
							ng-checked="deviceUnit.use_alt_supplies_link == 0"
							>
							Use System Link
					</label>
				</div>
				<div class="radio">
					<label>
						<input type="radio"
							name="supplies_portal_link[{[{ deviceUnit.id }]}]"
							value="alt_link"
							ng-model="suppliesPortalLink[ deviceUnit.id ]"
							ng-checked="deviceUnit.use_alt_supplies_link == 1"
						>
							Use Alternative Link
					</label>
					<div class="animate-show" ng-show="suppliesPortalLink[ deviceUnit.id ] == 'alt_link' || ( suppliesPortalLink[ deviceUnit.id ] == null && deviceUnit.use_alt_supplies_link == 1)">
						<div class="form-group animate-show"
							style="margin-top:10px;"
						>										
							<label class="control-label col-sm-3" for="device_unit_supplies_portal_link_url_{[{ deviceUnit.id }]}">
								Link URL:
							</label>
							<div class="col-sm-9">
								<input type="text" class="form-control"
									id="device_unit_supplies_portal_link_url_{[{ deviceUnit.id }]}"
									name="device_unit_supplies_portal_link_url[{[{ deviceUnit.id }]}]"
									ng-model="deviceUnit.supplies_portal_link"
								/>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-sm-3">
								Display credentials:
							</label>
							<div class="col-sm-9">
								<div class="radio">
									<label>
										<input type="radio"
											name="display_supplies_credentials[{[{ deviceUnit.id }]}]"
											value="0"
											ng-model="displaySuppliesCredentials[ deviceUnit.id ]"
											ng-checked="deviceUnit.display_supplies_credentials == 0"
										/>
											No
									</label>
									<label>
										<input type="radio"
											name="display_supplies_credentials[{[{ deviceUnit.id }]}]"
											value="1"
											ng-model="displaySuppliesCredentials[ deviceUnit.id ]"
											ng-checked="deviceUnit.display_supplies_credentials == 1"
										/>
											Yes
									</label>
								</div>
							</div>
						</div>
						<div class="animate-show" ng-show="displaySuppliesCredentials[ deviceUnit.id ] == 1 || ( displaySuppliesCredentials[ deviceUnit.id ] == null && deviceUnit.display_supplies_credentials == 1)"
						>
							<div class="form-group"
								style="margin-top:10px;"
							>		
								<label class="control-label col-sm-3" for="device_unit_supplies_login_{[{ deviceUnit.id }]}">
									Login:
								</label>
								<div class="col-sm-9">
									<input type="text" class="form-control"
										id="device_unit_supplies_login_{[{ deviceUnit.id }]}"
										name="device_unit_supplies_login[{[{ deviceUnit.id }]}]"
										ng-model="deviceUnit.supplies_login"
									/>
								</div>	
							</div>	
							<div class="form-group"
								style="margin-top:10px;"
							>
								<label class="control-label col-sm-3" for="device_unit_supplies_password_{[{ deviceUnit.id }]}">
									Password:
								</label>
								<div class="col-sm-9">
									<input type="text" class="form-control"
										id="device_unit_supplies_password_{[{ deviceUnit.id }]}"
										name="device_unit_supplies_password[{[{ deviceUnit.id }]}]"
										ng-model="deviceUnit.supplies_password"
									/>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="form-group">										
			<label class="control-label col-sm-2">
				Service portal info
			</label>
			<div class="col-sm-10">
				<div class="radio">
					<label>
						<input type="radio"
							name="service_portal_link[{[{ deviceUnit.id }]}]"
							value="system_link"
							ng-model="servicePortalLink[ deviceUnit.id ]"
							ng-checked="deviceUnit.use_alt_service_link == 0"
							>
							Use System Link
					</label>
				</div>
				<div class="radio">
					<label>
						<input type="radio"
							name="service_portal_link[{[{ deviceUnit.id }]}]"
							value="alt_link"
							ng-model="servicePortalLink[ deviceUnit.id ]"
							ng-checked="deviceUnit.use_alt_service_link == 1"
						>
							Use Alternative Link
					</label>
					<div class="form-group animate-show"
						ng-show="servicePortalLink[ deviceUnit.id ] == 'alt_link' || ( servicePortalLink[ deviceUnit.id ] == null && deviceUnit.use_alt_service_link == 1)"
					>
						<div class="form-group animate-show"
							ng-show="servicePortalLink[ deviceUnit.id ] == 'alt_link' || ( servicePortalLink[ deviceUnit.id ] == null && deviceUnit.use_alt_service_link == 1)"
							style="margin-top:10px;"
						>										
							<label class="control-label col-sm-3" for="device_unit_service_portal_link_url_{[{ deviceUnit.id }]}">
								Link URL:
							</label>
							<div class="col-sm-9">
								<input type="text" class="form-control"
									id="device_unit_service_portal_link_url_{[{ deviceUnit.id }]}"
									name="device_unit_service_portal_link_url[{[{ deviceUnit.id }]}]"
									ng-model="deviceUnit.service_portal_link"
								/>
							</div>
						</div>
		
						<label class="control-label col-sm-3">
							Display credentials:
						</label>
						<div class="col-sm-9">
							<div class="radio">
								<label>
									<input type="radio"
										name="display_service_credentials[{[{ deviceUnit.id }]}]"
										value="0"
										ng-model="displayServiceCredentials[ deviceUnit.id ]"
										ng-checked="deviceUnit.display_service_credentials == 0"
									/>
										No
								</label>
								<label>
									<input type="radio"
										name="display_service_credentials[{[{ deviceUnit.id }]}]"
										value="1"
										ng-model="displayServiceCredentials[ deviceUnit.id ]"
										ng-checked="deviceUnit.display_service_credentials == 1"
									/>
										Yes
								</label>
							</div>
						</div>
					</div>
					<div class="animate-show" ng-show="displayServiceCredentials[ deviceUnit.id ] == 1 || ( displayServiceCredentials[ deviceUnit.id ] == null && deviceUnit.display_service_credentials == 1)"
					>
						<div class="form-group"
							style="margin-top:10px;"
						>		
							<label class="control-label col-sm-3" for="device_unit_service_login_{[{ deviceUnit.id }]}">
								Login:
							</label>
							<div class="col-sm-9">
								<input type="text" class="form-control"
									id="device_unit_service_login_{[{ deviceUnit.id }]}"
									name="device_unit_service_login[{[{ deviceUnit.id }]}]"
									ng-model="deviceUnit.service_login"
								/>
							</div>	
						</div>	
						<div class="form-group"
							style="margin-top:10px;"
						>
							<label class="control-label col-sm-3" for="device_unit_service_password_{[{ deviceUnit.id }]}">
								Password:
							</label>
							<div class="col-sm-9">
								<input type="text" class="form-control"
									id="device_unit_service_password_{[{ deviceUnit.id }]}"
									name="device_unit_service_password[{[{ deviceUnit.id }]}]"
									ng-model="deviceUnit.service_password"
								/>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="form-group" ng-if="deviceUnit.device.supply_items.length > 0">										
			<label class="control-label col-sm-2">
				Edit prices for supply items:
			</label>
			<div class="col-sm-10">
				<div class="panel panel-info">
					<div class="panel-heading">
						Supply items
					</div>
					<div class="panel-body">
						<table class="table">
							<thead>
								<tr>
									<th>Item number</th>
									<th>Name</th>
									<th>Price</th>
								</tr>
								</thead>
							<tbody>
								<tr ng-repeat="supplyItem in deviceUnit.device.supply_items">
									<td>{[{ supplyItem.item_number }]}</td>
									<td>{[{ supplyItem.name }]}</td>
									<td>  
										<input type="text"
											class="form-control"
											name="device_unit_supply_item_units_prices[{[{ deviceUnit.id }]}][{[{ supplyItem.id }]}]"
											value="{[{ deviceUnit.device.sorted_supply_item_units[deviceUnit.id][supplyItem.id] }]}"
										/>
									</td>
								</tr>

							</tbody>
						</table> 
					</div>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="device_unit_base_cost_{[{ deviceUnit.id }]}">
				Base cost:
			</label>
			<div class="col-sm-10">
				<input type="text" class="form-control"
					id="device_unit_base_cost_{[{ deviceUnit.id }]}"
					name="device_unit_base_cost[{[{ deviceUnit.id }]}]"
					placeholder="Enter base cost"
					ng-model="deviceUnit.base_cost"
				/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="device_unit_color_included_{[{ deviceUnit.id }]}">
				Included color pages:
			</label>
			<div class="col-sm-10">
				<input type="text" class="form-control"
					id="device_unit_color_included_{[{ deviceUnit.id }]}"
					name="device_unit_color_included[{[{ deviceUnit.id }]}]"
					placeholder="Enter number of included color pages"
					ng-model="deviceUnit.color_included"
				/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="device_unit_mono_included_{[{ deviceUnit.id }]}">
				Included B&W pages:
			</label>
			<div class="col-sm-10">
				<input type="text" class="form-control"
					id="device_unit_mono_included_{[{ deviceUnit.id }]}"
					name="device_unit_mono_included[{[{ deviceUnit.id }]}]"
					placeholder="Enter number of included B&W pages"
					ng-model="deviceUnit.mono_included"
				/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="device_unit_cost_per_color_{[{ deviceUnit.id }]}">
				Cost of additional color pages:
			</label>
			<div class="col-sm-10">
				<input type="text" class="form-control"
					id="device_unit_cost_per_color_{[{ deviceUnit.id }]}"
					name="device_unit_cost_per_color[{[{ deviceUnit.id }]}]"
					placeholder="Enter the cost of additional color pages"
					ng-model="deviceUnit.cost_per_color"
				/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="device_unit_cost_per_mono_{[{ deviceUnit.id }]}">
				Cost of additional B&W pages:
			</label>
			<div class="col-sm-10">
				<input type="text" class="form-control"
					id="device_unit_cost_per_mono_{[{ deviceUnit.id }]}"
					name="device_unit_cost_per_mono[{[{ deviceUnit.id }]}]"
					placeholder="Enter the cost of additional mono pages"
					ng-model="deviceUnit.cost_per_mono"
				/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="device_unit_escalation_percentage_{[{ deviceUnit.id }]}">
				Escalation percentage:
			</label>
			<div class="col-sm-10">
				<input type="text" class="form-control"
					id="device_unit_escalation_percentage_{[{ deviceUnit.id }]}"
					name="device_unit_escalation_percentage[{[{ deviceUnit.id }]}]"
					placeholder="Enter escalation percentage"
					ng-model="deviceUnit.escalation_percentage"
				/>
			</div>
		</div>
		<input type="hidden" name="device_units_ids[]" value="{[{deviceUnit.id}]}" />
	</div> 
</uib-accordion>