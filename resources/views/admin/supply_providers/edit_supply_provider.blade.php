@extends('layouts.app')

@section('content')
<div class="container admin_dashboard" ng-cloak>
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-info">
                <div class="panel-heading"><b>{{ $supply_provider->name}}</b> edit form</div>

                <div class="panel-body">
				
					<form method="post"
						action="{{ url('admin/save_supply_provider', [$supply_provider->id]) }}"
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
							<label class="control-label col-sm-2" for="supply_provider_name">
								Name
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="supply_provider_name"
									value="{{ $supply_provider->name }}"
									placeholder="Enter supply provider name"
									name="supply_provider_name"
								>
							</div> 
						</div>						 	
						<div class="form-group">
							<label class="control-label col-sm-2" for="supply_provider_contact_person_name">
								Contact person name
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="supply_provider_contact_person_name"
									value="{{ $supply_provider->contact_person_name }}"
									placeholder="Enter contact person name"
									name="supply_provider_contact_person_name"
								>
							</div> 
						</div>	
						<div class="form-group">
							<label class="control-label col-sm-2" for="supply_provider_contact_person_email">
								Contact person email
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="supply_provider_contact_person_email"
									value="{{ $supply_provider->contact_person_email }}"
									placeholder="Enter contact person email"
									name="supply_provider_contact_person_email"
								>
							</div> 
						</div>	  	
						<div class="form-group">
							<label class="control-label col-sm-2" for="supply_provider_contact_person_phone">
								Contact person phone
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="supply_provider_contact_person_phone"
									value="{{ $supply_provider->contact_person_phone }}"
									placeholder="Enter contact person phone"
									name="supply_provider_contact_person_phone"
								>
							</div> 
						</div>	
						<div class="form-group">
							<label class="control-label col-sm-2" for="supply_provider_address">
								Address
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="supply_provider_address"
									value="{{ $supply_provider->address }}"
									placeholder="Enter supply provider address"
									name="supply_provider_address"
								>
							</div> 
						</div>	 	
						<div class="form-group">
							<label class="control-label col-sm-2" for="supply_provider_city">
								City
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="supply_provider_city"
									value="{{ $supply_provider->city }}"
									placeholder="Enter supply provider city"
									name="supply_provider_city"
								>
							</div> 
						</div>	
						<div class="form-group">
							<label class="control-label col-sm-2" for="supply_provider_state">
								State
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="supply_provider_state"
									value="{{ $supply_provider->state }}"
									placeholder="Enter supply provider state"
									name="supply_provider_state"
								>
							</div> 
						</div>	
						<div class="form-group">
							<label class="control-label col-sm-2" for="supply_provider_zip_code">
								Zip code
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="supply_provider_zip_code"
									value="{{ $supply_provider->zip_code }}"
									placeholder="Enter supply provider zip code"
									name="supply_provider_zip_code"
								>
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
