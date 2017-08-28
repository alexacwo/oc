<uib-accordion close-others="oneAtATime"> 
	<div uib-accordion-group
		class="panel-default panel-danger form-horizontal"
		heading="{[{proposedDeviceUnit.device.model}]}"
		is-open="1"
		ng-repeat="proposedDeviceUnit in proposedDeviceUnits[{{$location->id}}]"
		style="margin-bottom:20px;">
			
		<div class="form-group">
			<div class="col-sm-9">										
				<button type="button" class="btn btn-info" style="float:right;"
					ng-click="confirmProposedDeviceUnit(proposedDeviceUnit.id, $index, {{$location->id}})"
				>
					Confirm
				</button>		
			</div>
			<div class="col-sm-3">		
				<button type="button" class="btn btn-danger" style="float:right;"
					ng-click="removeProposedDeviceUnit(proposedDeviceUnit.id, $index, {{$location->id}})"
				>
					Remove
				</button>	
			</div>			
		</div>	
		<div class="form-group">
			<label class="control-label col-sm-2" for="proposed_device_unit_friendly_name_{[{ proposedDeviceUnit.id }]}">
				Friendly name:	
			</label>
			<div class="col-sm-10">
				<input type="text" class="form-control"
					id="proposed_device_unit_friendly_name_{[{ proposedDeviceUnit.id }]}"
					name="proposed_device_unit_friendly_name_[{[{ proposedDeviceUnit.id }]}]"
					placeholder="Enter friendly name"
					ng-model="proposedDeviceUnit.friendly_name"
				/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="proposed_device_unit_asset_number_{[{ proposedDeviceUnit.id }]}">
				Asset number:	
			</label>
			<div class="col-sm-10">
				<input type="text" class="form-control"
					id="proposed_device_unit_asset_number_{[{ proposedDeviceUnit.id }]}"
					name="proposed_device_unit_asset_number_[{[{ proposedDeviceUnit.id }]}]"
					placeholder="Enter asset number"
					ng-model="proposedDeviceUnit.asset_number"
				/>
			</div>
		</div>
		<div class="form-group">										
			<label class="control-label col-sm-2" for="proposed_device_unit_serial_number_{[{ proposedDeviceUnit.id }]}">
				Serial number:
			</label>
			<div class="col-sm-10">
				<input type="text" class="form-control"
					id="proposed_device_unit_serial_number_{[{ proposedDeviceUnit.id }]}"
					name="proposed_device_unit_serial_number_[{[{ proposedDeviceUnit.id }]}]"
					placeholder="Enter serial number"
					ng-model="proposedDeviceUnit.serial_number"
				>
			</div>
		</div>			
	</div> 
</uib-accordion>