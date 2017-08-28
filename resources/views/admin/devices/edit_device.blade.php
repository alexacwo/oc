@extends('layouts.app')

@section('content')
<div class="container admin_dashboard" ng-controller="editDeviceCtrl" ng-cloak>
    <div class="row">
        <div class="col-md-10 col-md-offset-1" ng-show="showDevicesTab">
            <div class="panel panel-info">
                <div class="panel-heading"><b>{{ $device->model}}</b> edit form</div>

                <div class="panel-body">
				
					<form method="post"
						action="{{ url('admin/save_device', [$device->id]) }}"
						class="form-horizontal"
						enctype="multipart/form-data">
						{{ csrf_field() }}
						<div style="width:100%; margin-bottom:20px;">
							<button type="submit" class="btn btn-success" style="float:right;">
								Save
							</button> 
							<div class="clearfix"></div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-sm-2" for="device_type">
								Device type
							</label>
							<div class="col-sm-10">								
								<select class="form-control" id="device_type"
									name="device_type">
									<option value="printer" {{ ($device->type == 'printer') ? ' selected="selected"' : '' }}>
										Printer
									</option>
									<option value="copier" {{ ($device->type == 'copier') ? ' selected="selected"' : '' }}>
										Copier
									</option>
									<option value="other" {{ ($device->type == 'other') ? ' selected="selected"' : '' }}>
										Other
									</option>
								</select>										
							</div> 
						</div>
						<div class="form-group">						
							<label class="control-label col-sm-2" for="device_make">
								Device make
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="device_make"
									value="{{ $device->make }}"
									placeholder="Enter device make"
									name="device_make"
								>
							</div> 
						</div>	
						<div class="form-group">			
							<label class="control-label col-sm-2" for="device_model">
								Device model
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="device_model"
									value="{{ $device->model }}"
									placeholder="Enter device model"
									name="device_model"
								>
							</div> 
						</div>	
						<div class="form-group">			
							<label class="control-label col-sm-2" for="device_friendly_name">
								Device friendly name
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="device_friendly_name"
									value="{{ $device->friendly_name }}"
									placeholder="Enter device friendly name"
									name="device_friendly_name"
								>
							</div> 
						</div>	
						<div class="form-group">
							<label class="control-label col-sm-2" for="device_photo_url">
								Device photo URL
							</label>			
							<div class="col-sm-3">
								@if ($device->photo_url != null)
								<img src="{{ url( '/storage/images/') . '/'. $device->photo_url }}"
									style="width:100px; height:auto;" />
								<br><br>
								@endif
								<label class="btn btn-warning btn-file">
									Browse
									<input type="file" style="display: none;"
										data-file="uploadedDeviceImage"
										name="device_photo_url"
										accept="image/jpeg,image/png,image/gif"
									/>
								</label>
								<br>
								<strong>{[{ uploadedDeviceImage.name }]}</strong>
							</div> 
							<label class="control-label col-sm-1" for="device_photo_url">
								Video links
							</label>			
							<div class="col-sm-6" ng-show="showVideoLinksBlock">	
								<div style="width:100%; margin-bottom:10px;">						
									<div class="btn btn-success" ng-click="addVideoLink({{ $device->id }})">
										<i class="fa fa-plus"></i> Add
									</div>
								</div>
								<div ng-repeat="videoLink in videoLinks track by $index"> 
									<div style="width:70%; float:left; padding-right:10px; margin-bottom:10px; ">
										<input class="form-control"
											type="text"
											name="video_links[ {[{videoLink.id }]} ][link]"
											ng-model="videoLink.link" 
										/>
									</div> 	
									<div style="width:30%; float:left;">				
										<div class="btn btn-danger" ng-click="removeVideoLink(videoLink.id, $index)">
											<i class="fa fa-trash"></i> Remove
										</div>
									</div> 
									<div class="clearfix">
									</div>
								</div> 	 	
							</div> 
						</div>	
						<div class="form-group"> 
							<label class="control-label col-sm-2" for="device_model">
								Add new supply item
							</label>
							<div class="col-sm-10">
								<div class="btn btn-info" ng-click="addNewSupplyItem({{ $device->id }})">
									<i class="fa fa-plus"></i> Add
								</div>
							</div>  
						</div>						 
						 
						<div class="panel panel-default" ng-show="supplyItems.length">
							<div class="panel-heading">
								Supply items
							</div>

							<div class="panel-body">
							
								<uib-accordion close-others="oneAtATime"> 
									<div uib-accordion-group
										class="panel-default panel-info form-horizontal"
										heading="{[{supplyItem.name}]}"
										is-open="1"
										style="margin-bottom:20px;" ng-repeat="supplyItem in supplyItems track by $index">
										<div style="width:80%; float:left;">
											<div class="form-group">										
												<label class="control-label col-sm-2" for="supply_item_name_{[{ supplyItem.id }]}">
													Name:
												</label>
												<div class="col-sm-10">
													<input type="text" class="form-control"
														id="supply_item_name_{[{ supplyItem.id }]}"
														placeholder="Enter supply item name"
														name="supply_items[{[{ supplyItem.id }]}][name]"
														ng-model="supplyItem.name"
													>
												</div>
											</div>
											<div class="form-group">										
												<label class="control-label col-sm-2" for="supply_item_number_{[{ supplyItem.id }]}">
													Item number:
												</label>
												<div class="col-sm-10">
													<input type="text" class="form-control"
														id="supply_item_number_{[{ supplyItem.id }]}"
														placeholder="Enter item number"
														name="supply_items[{[{ supplyItem.id }]}][item_number]"
														ng-model="supplyItem.item_number"
													>
												</div>
											</div>
											<div class="form-group">										
												<label class="control-label col-sm-2" for="supply_item_page_yield_{[{ supplyItem.id }]}">
													Page yield:
												</label>
												<div class="col-sm-10">
													<input type="text" class="form-control"
														id="supply_item_page_yield_{[{ supplyItem.id }]}"
														placeholder="Enter page yield"
														name="supply_items[{[{ supplyItem.id }]}][page_yield]"
														ng-model="supplyItem.page_yield"
													>
												</div>
											</div>
											<div class="form-group">										
												<label class="control-label col-sm-2" for="supply_item_description_{[{ supplyItem.id }]}">
													Description:
												</label>
												<div class="col-sm-10">
													<textarea class="form-control" rows="5" 
														id="supply_item_description_{[{ supplyItem.id }]}"
														placeholder="Enter description"
														name="supply_items[{[{ supplyItem.id }]}][description]"
														ng-model="supplyItem.description"></textarea>
												</div>
											</div>
										</div>
										<div style="width:20%; float:left;">
											<div class="btn btn-danger" ng-click="removeSupplyItem(supplyItem.id, $index)" style=" float:right;">
												<i class="fa fa-trash"></i> Remove
											</div>
										</div>
										<div class="clearfix">
										</div>
									</div> 
								</uib-accordion>
								
							</div>
						</div>
						<div style="width:100%;">
							<button type="submit" class="btn btn-success" style="float:right;">
								Save
							</button> 
							<div class="clearfix"></div>
						</div>
					</form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
