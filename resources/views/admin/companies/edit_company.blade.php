@extends('layouts.app')

@section('content')
<div class="container admin_dashboard" ng-controller="editClientCtrl" ng-cloak>
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-info">
                <div class="panel-heading"><b>{{ $company->company_name }}</b> edit form</div>

                <div class="panel-body">
				
					<form method="post" action="{{ url('admin/save_company', [$company->id]) }}">
						{{ csrf_field() }}
												
						<div style="width:100%; margin-bottom:20px;">
							<button type="submit" class="btn btn-success" style="float:right;">
								Save
							</button>
							<div class="clearfix"></div>
						</div>
						<div style="width:100%; margin-bottom:20px;" class="form-horizontal">
							
							<div class="form-group">
								<div class="col-sm-12">									
									<input type="checkbox" name="same_main_location" id="same_main_location"
										@if ($company->same_main_location == '1')
											checked
										@endif 
									/>
									<label for="same_main_location">
										&nbsp;Main location address/contacts are the same as company address/contacts
										<br> (If there are no locations, it will create a location with the same contacts and address)
									</label> 
									<div class="clearfix"></div>
								</div>
							</div> 
							<div class="form-group">								
								<label class="control-label col-sm-2" for="company_name">Company name</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="company_name"
										value="{{ $company->company_name }}"
										placeholder="Enter company name"
										name="company_name"
									>
								</div> 
							</div> 
							<div class="form-group">									
								<label class="col-sm-4">
									Add ZOHO Books link in the top menu
								</label>
								<div class="col-sm-8">				
									<input type="checkbox"
										name="company_display_zoho_link"
										@if ($company->display_zoho_link == 1)
											checked
										@endif
									/>
								</div>
							</div>
						</div>
					
						@include('admin.companies.edit_company_contacts')
						
						<div class="panel panel-warning form-horizontal">
							<div class="panel-heading">
								Company main address:
							</div>

							<div class="panel-body">
								<div class="form-group">
									<label class="control-label col-sm-2" for="company_address">Address:</label>
									<div class="col-sm-10">
									<input type="text" class="form-control" id="company_address"
										name="company_address"
										placeholder="Enter address"
										value="{{ $company->address }}"
									>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-2" for="company_city">City:</label>
									<div class="col-sm-10">
									<input type="text" class="form-control" id="company_city"
										name="company_city"
										placeholder="Enter city"
										value="{{ $company->city }}"
									>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-2" for="company_state">State:</label>
									<div class="col-sm-10"> 
									<input type="text" class="form-control" id="company_state"
										name="company_state"
										placeholder="Enter state" 
										value="{{ $company->state }}"
									>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-2" for="company_zip_code">Zip Code:</label>
									<div class="col-sm-10"> 
									<input type="text" class="form-control" id="company_zip_code"
										name="company_zip_code"
										placeholder="Enter zip code"
										value="{{ $company->zip_code }}"
									>
									</div>
								</div>  
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
