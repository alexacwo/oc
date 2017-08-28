@extends('layouts.app')

@section('content')
<div class="container" ng-controller="editClientCtrl">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-info">
                <div class="panel-heading"><b>{{ $user->organization->company_name }}</b> edit form</div>

                <div class="panel-body">
				
					<form method="post" action="{{ url('admin/save_client', [$user->id]) }}">
						{{ csrf_field() }}
						<div style="width:100%; margin-bottom:20px;">
							<button type="submit" class="btn btn-success" style="float:right;">
								Save
							</button> 
							<div class="clearfix"></div>
						</div>
						
						<div class="panel panel-success form-horizontal">
								
							<div class="panel-heading">Login credentials:</div>

							<div class="panel-body">
									
								@if(session()->has('response_status') && session()->has('response_message'))
									<div class="alert alert-{{ session()->get('response_status') }}">
										{{ session()->get('response_message') }}
									</div>
								@endif 
								<div class="form-group">
									<label class="control-label col-sm-2" for="username">Login email:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="username"
											value="{{$user->email}}"
											placeholder="Enter user email"
											name="user_email"
										>
									</div> 
								</div>
								<div class="well">
									<b>Change password (works only if 'New password' field is not blank):</b>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-2" for="old_password">Old password:</label>
									<div class="col-sm-10"> 
									<input type="password" class="form-control" id="old_password"
										placeholder="Enter old password"
										name="old_password"									
										>
									</div> 
								</div> 
								<div class="form-group">
									<label class="control-label col-sm-2" for="new_password">New password:</label>
									<div class="col-sm-10"> 
									<input type="password" class="form-control" id="new_password"
										placeholder="Enter new password"
										name="new_password"
										>
									</div> 
								</div> 
								<div class="form-group">
									<label class="control-label col-sm-2" for="confirm_password">Confirm password:</label>
									<div class="col-sm-10"> 
									<input type="password" class="form-control" id="confirm_password"
										placeholder="Confirm new password"
										name="confirm_password"	
									>
									</div> 
								</div>						
									
							</div> 
						</div>
					
						<div class="panel panel-info form-horizontal">
							<div class="panel-heading">Contacts list (up to 3):</div>

							<div class="panel-body animate-show ng-cloak" ng-show="clientListLoaded">
								<div style="width:100%;">										
									<button type="button" class="btn btn-success" style="float:left;"
										ng-click="saveContacts({{ $user->organization->id }})"
									>
										Save Contacts
									</button> 								
									<button type="button" class="btn btn-info" style="float:right;"
										ng-click="addNewContact({{ $user->organization->id }})"
									>
										Add Contact
									</button>
									<div class="clearfix"></div>
								</div>   
								<div class="contact_information" ng-repeat="contact in contacts track by $index">
									<div style="width:100%;">
										<h4> {[{ $index + 1 }]} . {[{ contact.name }]}</h4>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="new_contact_name">Name:</label>
										<div class="col-sm-10">
										<input type="text" class="form-control" id="new_contact_name_{[{ contact.id }]}"
											placeholder="Enter name"
											ng-model="contact.name"
											name="contacts[{[{ contact.id }]}][name]"	
										>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="new_contact_email">Email:</label>
										<div class="col-sm-10"> 
										<input type="text" class="form-control" id="new_contact_email_{[{ contact.id }]}"
											placeholder="Enter email"		
											ng-model="contact.email"
											name="contacts[{[{ contact.id }]}][email]"	
										>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="new_contact_phone">Phone:</label>
										<div class="col-sm-10"> 
										<input type="text" class="form-control" id="new_contact_phone_{[{ contact.id }]}"
											placeholder="Enter phone"
											ng-model="contact.phone"
											name="contacts[{[{ contact.id }]}][phone]"	
										>
										</div>
									</div>
								</div>
							</div>
						</div>
						
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
										value="{{ $user->organization->address }}"
									>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-2" for="company_city">City:</label>
									<div class="col-sm-10">
									<input type="text" class="form-control" id="company_city"
										name="company_city"
										placeholder="Enter city"
										value="{{ $user->organization->city }}"
									>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-2" for="company_state">State:</label>
									<div class="col-sm-10"> 
									<input type="text" class="form-control" id="company_state"
										name="company_state"
										placeholder="Enter state" 
										value="{{ $user->organization->state }}"
									>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-2" for="company_zipcode">Zip Code:</label>
									<div class="col-sm-10"> 
									<input type="text" class="form-control" id="company_zipcode"
										name="company_zipcode"
										placeholder="Enter zip code"
										value="{{ $user->organization->zip_code }}"
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
