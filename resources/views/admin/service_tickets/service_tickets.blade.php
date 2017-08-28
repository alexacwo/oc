@extends('layouts.app')

@section('content')
<div class="container admin_dashboard" ng-controller="serviceTicketsCtrl" ng-cloak>
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-info">
                <div class="panel-heading">Service tickets list</div>

                <div class="panel-body" ng-init="serviceTickets = {{$service_tickets}}">
					<div class="col-sm-12">
						<ul uib-pagination
							total-items="serviceTickets.length"
							items-per-page="serviceTicketsNumPerPage"
							ng-model="serviceTicketsCurrentPage"
							max-size="serviceTicketsMaxSize"
							class="pagination-sm"
							boundary-links="true"></ul>
					</div>
								
					<table class="table table-striped">
						<thead>
							<th>Id</th>
							<th>Location</th>
							<th>Description</th>
							<th>Error Codes</th>
							<th>Date</th>
						</thead>
						<tbody>
							<tr	ng-repeat="serviceTicket in filteredServiceTickets">
								<td class="table-text col-sm-1">									
									{[{ serviceTicket.id }]}
								</td>
								<td class="table-text col-sm-2">
									<span ng-if="serviceTicket.location != null"> 
										<b>{[{ serviceTicket.location.friendly_name }]}</b>
										( {[{ serviceTicket.location.company.company_name }]} )
									</span>
									<span ng-if="placedOrder.location == null">
										-
										<b>( {[{ serviceTicket.company.company_name }]} )</b>
									</span>
								</td>
								<td class="table-text col-sm-4">									
									{[{ serviceTicket.description }]}
								</td>
								<td class="table-text col-sm-3">									
									{[{ serviceTicket.error_codes }]}
								</td>
								<td class="table-text col-sm-2">								
									{[{ serviceTicket.created_at }]}
								</td>
							</tr>
						</tbody>
					</table>
					
					<div class="col-sm-12">
						<ul uib-pagination
							total-items="serviceTickets.length"
							items-per-page="serviceTicketsNumPerPage"
							ng-model="serviceTicketsCurrentPage"
							max-size="serviceTicketsMaxSize"
							class="pagination-sm"
							boundary-links="true"></ul>
					</div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
