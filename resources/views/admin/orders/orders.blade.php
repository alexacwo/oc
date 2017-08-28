@extends('layouts.app')

@section('content')
<div class="container admin_dashboard" ng-controller="ordersCtrl" ng-cloak>
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-danger">
                <div class="panel-heading">Placed Orders list</div>
                <div class="panel-body" ng-init="placedOrders = {{$placed_orders}}">
					<div class="col-sm-12">
						<ul uib-pagination
							total-items="placedOrders.length"
							items-per-page="ordersNumPerPage"
							ng-model="placedOrdersCurrentPage"
							max-size="ordersMaxSize"
							class="pagination-sm"
							boundary-links="true">
						</ul>
					</div>
								
					<table class="table table-bordered">
						<thead>
							<th class="id_th">Id</th>
							<th>Ordered by</th>
							<th>Location</th>
							<th>Alternative shipping address</th>
							<th>Supply Items</th>
							<th>Date</th>
							<th>Move to ordered</th>
						</thead>
						<tbody>
							<tr	ng-repeat="placedOrder in filteredPlacedOrders" class="repeat-item">
								<td class="table-text col-sm-1 centered_cell">									
									{[{ placedOrder.id }]}
								</td>
								<td class="table-text col-sm-1">
									{[{ placedOrder.ordered_by }]}
								</td>
								<td class="table-text col-sm-2">
									<span ng-if="placedOrder.location != null">
										<b>{[{ placedOrder.location.friendly_name }]}</b>
										({[{ placedOrder.location.company.company_name }]})
									</span>
									<span ng-if="placedOrder.location == null">
										-
										<b>({[{ placedOrder.company.company_name }]})</b>
									</span>
								</td>
								<td class="table-text col-sm-2">
									<div ng-if="placedOrder.use_alt_address">
										<b>Address:</b> {[{ placedOrder.alt_address_addr }]}
										<br><b>Attention:</b> {[{ placedOrder.alt_address_attn }]}
										<br><b>City:</b> {[{ placedOrder.alt_address_city }]}
										<br><b>State:</b> {[{ placedOrder.alt_address_state }]}
										<br><b>ZIP:</b> {[{ placedOrder.alt_address_zip }]}
									</div>
								</td>
								<td class="table-text col-sm-3">
									<b>Model:</b> {[{ placedOrder.device_unit.device.model }]}
									<br>
									<b>Serial number:</b> {[{ placedOrder.device_unit.serial_number }]}
									<br>
									<div ng-repeat="supplyItem in placedOrder.supply_items">
										{[{ $index + 1}]}). {[{ supplyItem.name }]}<br>
									</div>
								</td>
								<td class="table-text col-sm-2 centered_cell">								
									{[{ placedOrder.created_at }]}
								</td>
								<td class="table-text col-sm-1" style="text-align:center;">  				
									<input type="checkbox"
										ng-model="$parent.movePlacedOrder[placedOrder.id]"
										ng-click="moveToOrderedList(placedOrder.id)"
									/>
								</td>
							</tr>
						</tbody>
					</table>
					
					<div class="col-sm-12">
						<ul uib-pagination
							total-items="placedOrders.length"
							items-per-page="ordersNumPerPage"
							ng-model="placedOrdersCurrentPage"
							max-size="ordersMaxSize"
							class="pagination-sm"
							boundary-links="true">
						</ul>
					</div> 
                </div>				
			</div>		
			
            <div class="panel panel-warning">
                <div class="panel-heading">Ordered Orders list</div>
                <div class="panel-body" ng-init="orderedOrders = {{$ordered_orders}}">
					<div class="col-sm-12">
						<ul uib-pagination
							total-items="orderedOrders.length"
							items-per-page="ordersNumPerPage"
							ng-model="orderedOrdersCurrentPage"
							max-size="ordersMaxSize"
							class="pagination-sm"
							boundary-links="true">
						</ul>
					</div>
								
					<table class="table table-bordered">
						<thead>
							<th>Id</th>
							<th>Ordered by</th>
							<th>Location</th>
							<th>Alternative shipping address</th>
							<th>Supply Items</th>
							<th>Tracking no.</th>
							<th>Date</th>
							<th>Move to shipped</th>
							<th>Move back to placed</th>
						</thead>
						<tbody>
							<tr	ng-repeat="orderedOrder in filteredOrderedOrders" class="repeat-item">
								<td class="table-text col-sm-1 centered_cell">	 	
									{[{ orderedOrder.id }]}
								</td>
								<td class="table-text col-sm-1">
									{[{ orderedOrder.ordered_by }]}
								</td>
								<td class="table-text col-sm-1">
									<b>{[{ orderedOrder.location.friendly_name }]}</b> ({[{ orderedOrder.location.company.company_name}]})							
								</td>
								<td class="table-text col-sm-1">
									<div ng-if="orderedOrder.use_alt_address">
										<b>Address:</b> {[{ orderedOrder.alt_address_addr }]}
										<br><b>Attention:</b> {[{ orderedOrder.alt_address_attn }]}
										<br><b>City:</b> {[{ orderedOrder.alt_address_city }]}
										<br><b>State:</b> {[{ orderedOrder.alt_address_state }]}
										<br><b>ZIP:</b> {[{ orderedOrder.alt_address_zip }]}
									</div>
								</td>
								<td class="table-text col-sm-2">
									<div ng-repeat="supplyItem in orderedOrder.supply_items">
										{[{ $index + 1}]}). {[{ supplyItem.name }]}<br>
									</div>	
								</td>
								<td class="table-text col-sm-3">											
									<div class="form-group">
										<div style=" width: 60%; float: left;">
											<input type="text" class="form-control"
												ng-model="orderedOrder.tracking_no"
											/>	
										</div>
										<div style=" width: 40%; float: left; text-align: center;">	
											<button class="btn btn-info has-spinner"
												ng-init="saveButtonLoadingSpinner[orderedOrder.id] = false"
												ng-class="{'active': saveButtonLoadingSpinner[orderedOrder.id]}"
												ng-click="saveTrackingNo(orderedOrder.id, orderedOrder.tracking_no)"
											>
												<span class="spinner"><i class="icon-spin icon-refresh"></i></span>
												Save
											</button>
										</div>
									</div>	 
								</td>
								<td class="table-text col-sm-1 centered_cell">								
									{[{ orderedOrder.created_at }]}
								</td>
								<td class="table-text col-sm-1" style="text-align:center;">  				
									<input type="checkbox"
										ng-model="$parent.moveOrderedOrder[orderedOrder.id]"
										ng-click="moveToShippedList(orderedOrder.id , orderedOrder.tracking_no)"
									/>
								</td>
								<td class="table-text col-sm-1" style="text-align:center;">  				
									<input type="checkbox"
										ng-model="$parent.moveBackOrderedOrder[orderedOrder.id]"
										ng-click="moveBackToPlacedList(orderedOrder.id)"
									/>
								</td>
							</tr>
						</tbody>
					</table>
					
					<div class="col-sm-12">
						<ul uib-pagination
							total-items="orderedOrders.length"
							items-per-page="ordersNumPerPage"
							ng-model="orderedOrdersCurrentPage"
							max-size="ordersMaxSize"
							class="pagination-sm"
							boundary-links="true">
						</ul>
					</div> 
                </div>			
			</div>			
			
            <div class="panel panel-success">
                <div class="panel-heading panel">Shipped Orders list</div>
                <div class="panel-body" ng-init="shippedOrders = {{$shipped_orders}}">
					<div class="col-sm-12">
						<ul uib-pagination
							total-items="shippedOrders.length"
							items-per-page="ordersNumPerPage"
							ng-model="shippedOrdersCurrentPage"
							max-size="ordersMaxSize"
							class="pagination-sm"
							boundary-links="true">
						</ul>
					</div>
								
					<table class="table table-bordered">
						<thead>
							<th>Id</th>
							<th>Ordered by</th>
							<th>Location</th>
							<th>Alternative shipping address</th>
							<th>Supply Items</th>
							<th>Tracking no.</th>
							<th>Date</th>
							<th>Move back to ordered</th>
						</thead>
						<tbody>
							<tr	ng-repeat="shippedOrder in filteredShippedOrders" class="repeat-item">
								<td class="table-text col-sm-1 centered_cell">									
									{[{ shippedOrder.id }]}
								</td>
								<td class="table-text col-sm-1">
									{[{ shippedOrder.ordered_by }]}
								</td>
								<td class="table-text col-sm-2">	
									<b>{[{ shippedOrder.location.friendly_name }]}</b> ({[{ shippedOrder.location.company.company_name}]})													 
								</td>
								<td class="table-text col-sm-1">
									<div ng-if="shippedOrder.use_alt_address">
										<b>Address:</b> {[{ shippedOrder.alt_address_addr }]}
										<br><b>Attention:</b> {[{ shippedOrder.alt_address_attn }]}
										<br><b>City:</b> {[{ shippedOrder.alt_address_city }]}
										<br><b>State:</b> {[{ shippedOrder.alt_address_state }]}
										<br><b>ZIP:</b> {[{ shippedOrder.alt_address_zip }]}
									</div>
								</td>
								<td class="table-text col-sm-2">
									<div ng-repeat="supplyItem in shippedOrder.supply_items">
										{[{ $index + 1}]}). {[{ supplyItem.name }]}<br>
									</div>		 
								</td>
								<td class="table-text col-sm-3">												
									<div class="form-group">
										<div style=" width: 60%; float: left;">
											<input type="text" class="form-control"
												ng-model="shippedOrder.tracking_no"
											/>	
										</div>
										<div style=" width: 40%; float: left; text-align: center;">	
											<button class="btn btn-info has-spinner"
												ng-init="saveButtonLoadingSpinner[shippedOrder.id] = false"
												ng-class="{'active': saveButtonLoadingSpinner[shippedOrder.id]}"
												ng-click="saveTrackingNo(shippedOrder.id, shippedOrder.tracking_no)"
											>
												<span class="spinner"><i class="icon-spin icon-refresh"></i></span>
												Save
											</button>
										</div>
									</div>	 
								</td>
								<td class="table-text col-sm-1 centered_cell">								
									{[{ shippedOrder.created_at }]}
								</td>
								<td class="table-text col-sm-1" style="text-align:center;">							
									<input type="checkbox"
										ng-model="$parent.moveBackShippedOrder[shippedOrder.id]"
										ng-click="moveBackToOrderedList(shippedOrder.id)"
									/>
								</td>
							</tr>
						</tbody>
					</table>
					
					<div class="col-sm-12">
						<ul uib-pagination
							total-items="shippedOrders.length"
							items-per-page="ordersNumPerPage"
							ng-model="shippedOrdersCurrentPage"
							max-size="ordersMaxSize"
							class="pagination-sm"
							boundary-links="true">
						</ul>
					</div> 
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
