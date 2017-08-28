@extends('layouts.app')

@section('content')
<div class="container admin_dashboard" ng-controller="editLocationCtrl" ng-cloak>
    <div class="row">
        <div class="col-md-10 col-md-offset-1" ng-show="showCompanyTab">
            <div class="panel panel-info">
                <div class="panel-heading">Select company to edit locations</div>

                <div class="panel-body">
				
					<label for="clientOptions">Select company:</label>
					<form method="get" action="{{ url('admin/edit_locations') }}">
						{{ csrf_field() }}
						<div class="form-group" style="width:100%;">
							
							<select class="form-control" id="clientOptions"
								name="company_id"
							>
								@foreach ($companies as $single_company)
									<option value="{{ $single_company->id }}">{{ $single_company->company_name }}</option>
								@endforeach
							</select>
							
						</div>
						<div class="form-group" style="width:100%;">
							<button type="submit" class="btn btn-success">
								Edit
							</button>
						</div>
					</form> 
					
				</div>
			</div>
			
            <div class="panel panel-info">
                <div class="panel-heading">
					<b>{{ $company->company_name }}</b> - Add locations
				</div>

                <div class="panel-body">
				
					<label>Add new location:</label>
					<div style="width:100%;">
						<form action="{{ url('admin/add_location', [$company->id]) }}" method="post" class="form-horizontal">
							{{ csrf_field() }}
							<div class="form-group"> 
								<div class="col-sm-10">
									<input type="text" class="form-control" id="user_email"
										placeholder="Enter user email"
										name="user_email"
										ng-model="userEmail"
									>
								</div> 
							</div>
							
							<div class="form-group">
								<div class="col-sm-6">
									<button type="submit" class="btn btn-info" ng-show="userEmail">
										<i class="fa fa-plus"></i> Add
									</button>
								</div>
							</div>
						</form>
					</div>
					
					@if (count($locations) > 0)
						<div class="panel panel-default">
							<div class="panel-heading">
								Existing locations
							</div>

							<div class="panel-body">
							
								<uib-accordion close-others="oneAtATime">
								
									@foreach ($company->locations as $location)
									
										@include('admin.companies.edit_single_location')
										
									@endforeach
								
								</uib-accordion>
 
							</div>
						</div>
					@endif
					 
				</div>
            </div>
        </div>
    </div>
</div>
@endsection
