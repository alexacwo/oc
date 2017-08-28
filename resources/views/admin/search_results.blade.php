@extends('layouts.app')

@section('content')
<div class="container admin_dashboard" ng-controller="adminSearchResultController" ng-cloak>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-info">
                <div class="panel-heading">Search results</div>

                <div class="panel-body">
					<div class="alert alert-success animate-show" ng-show="showSuccessMessage">
						<strong>Success!</strong> Device info was saved.
					</div>
					
					@if (count($device_units) > 0)
						<div ng-init="deviceUnits = {{ $device_units }}">
							<div ng-repeat="deviceUnit in deviceUnits" style="padding-top:20px;padding-bottom:20px;border-bottom:2px solid #ccc;" class="col-md-12">
								<div class="col-md-3">
									<b>Device model:</b>
									<input type="text"
										disabled
										class="form-control"
										ng-model="deviceUnit.device.model"
									/> 
								</div>
								<div class="col-md-3">
									<b>Device friendly name:</b>
									<input type="text"
										class="form-control"
										ng-model="deviceUnit.friendly_name"
									/> 
								</div>
								<div class="col-md-4">
									<b>S/N:</b>
									<input type="text"
										class="form-control"
										ng-model="deviceUnit.serial_number"
									/> 
								</div>
								<div class="col-md-2">
									<button type="submit" class="btn btn-info" style="margin-top:22px;"
										ng-click="saveDeviceUnitData(deviceUnit)"
									>
										<i class="animate-show fa fa-spinner fa-spin" ng-show="showLoadingSpinner[deviceUnit.id]"></i>
										Save
									</button>
								</div>
								<div class="col-md-12">							
									<div style="margin-top:10px;">
										(Company: <b>{[{ deviceUnit.location.company.company_name }]}</b>/Location: <b>{[{ deviceUnit.location.friendly_name }]}</b>)
									</div>		
								</div>	
								<div class="col-md-12" style="padding:0px;">							
									<div class="col-md-3" style="margin-top:10px;">	
										<b>Base cost:</b>
										<input type="text"
											class="form-control"
											ng-model="deviceUnit.base_cost"
										/> 									
									</div>
									<div class="col-md-3" style="margin-top:10px;">	
										<b>Color pages included:</b>
										<input type="text"
											class="form-control"
											ng-model="deviceUnit.color_included"
										/> 									
									</div>
									<div class="col-md-3" style="margin-top:10px;">	
										<b>Mono pages included:</b>
										<input type="text"
											class="form-control"
											ng-model="deviceUnit.mono_included"
										/> 									
									</div>
									<div class="col-md-3" style="margin-top:10px;margin-bottom:10px;">	
										<b>Cost per extra color page:</b>
										<input type="text"
											class="form-control"
											ng-model="deviceUnit.cost_per_color"
										/> 									
									</div>
									<div class="col-md-3" style="margin-top:10px;">	
										<b>Cost per extra mono page:</b>
										<input type="text"
											class="form-control"
											ng-model="deviceUnit.cost_per_mono"
										/> 									
									</div>
									<div class="col-md-3" style="margin-top:10px;margin-bottom:10px;">	
										<b>Escalation percentage:</b>
										<input type="text"
											class="form-control"
											ng-model="deviceUnit.escalation_percentage"
										/> 									
									</div>
									<div class="col-md-3" style="margin-top:10px;margin-bottom:10px;" ng-init="supply_providers = {{ $supply_providers }}">	
										<b>Supplies provider:</b>
										<select class="form-control"
											ng-options="item.name for item in supply_providers track by item.id" 
											ng-model="deviceUnit.supply_provider" 
										>  
										</select>	
									</div>
									<div class="col-md-3" style="margin-top:10px;margin-bottom:10px;" ng-init="service_providers = {{ $service_providers }}">	
										<b>Supplies provider:</b>
										<select class="form-control"
											ng-options="item.name for item in service_providers track by item.id" 
											ng-model="deviceUnit.service_provider" 
										>  
										</select>	
									</div>
									<div class="col-md-3" style="margin-top:10px;margin-bottom:10px;">	
										<b>Lease end date:</b>
										<md-datepicker id="datePicker_{[{deviceUnit.id}]}" ng-model="leaseExpiration[deviceUnit.id]" md-placeholder="Enter date">
										</md-datepicker>
										<div class="clearfix"></div>
									</div>							
								</div> 
							</div>
						</div>
					@else
						Nothing was found.
					@endif
				</div>
			</div>
        </div>
    </div>
</div>
@endsection
