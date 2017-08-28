@extends('layouts.app')

@section('content')
<div class="container admin_dashboard" ng-cloak>
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-info">
                <div class="panel-heading">Clients List</div>

                <div class="panel-body">
					@if (Session::has('error'))
						<div class="alert alert-danger">
							<strong>Error!</strong> {{ Session::get('error') }}
						</div>
					@endif	 
					<ul class="list-group">
						<li class="list-group-item" >
							<label>Create a new company:</label>
							<div style="width:100%;">
								
								<form method="post" action="{{ url('admin/create_company') }}" class="form-horizontal">
									{{ csrf_field() }}
									<div class="form-group"> 
										<div class="col-sm-10">
											<input type="text" class="form-control" id="user_email"
												placeholder="Enter user email"
												name="user_email"
												ng-model="userEmailIsNotBlank"
											>
										</div> 
									</div>
									<button type="submit" class="btn btn-info" ng-show="userEmailIsNotBlank">
										Create
									</button>
								</form>
								
							</div>
						</li> 
						<li class="list-group-item">
						
							@if (Session::has('company_removed'))
								<div class="alert alert-success">
									<strong>Success!</strong> {{ Session::get('company_removed') }}
								</div>
							@endif
								
							<label for="clientOptions">Select company to edit:</label>
							<form method="get" action="{{ url('admin/edit_or_remove_company') }}">
								{{ csrf_field() }}
								<div class="form-group" style="width:100%;">
									
									<select class="form-control" id="clientOptions"
											name="company_id"
										>
											@foreach ($companies as $company)
												<option value="{{ $company->id }}">{{ $company->company_name }}</option>
											@endforeach
										</select>
									
								</div>
								<div class="form-group" style="width:100%;">
									<input type="submit" class="btn btn-success" name="edit_button" value="Edit">
									<input onclick="return confirm('Do you really want to remove this company?');" type="submit" class="btn btn-danger" name="remove_button" value="Remove company" style="float:right;">
								</div>
							</form>
						</li>
					</ul>

					
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
