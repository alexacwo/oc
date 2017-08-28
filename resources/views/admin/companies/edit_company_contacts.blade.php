<div class="panel panel-info form-horizontal" ng-show="clientListLoaded">
	<div class="panel-heading">Contacts list (up to 4):</div>

	<div class="panel-body animate-show ng-cloak">
		<div style="width:100%;">
			<div class="alert alert-success animate-show" ng-show="showSuccessMessage">
				<strong>Success!</strong> {[{ successMessage }]}
			</div>
			<div class="alert alert-danger animate-show" ng-show="showErrorMessage">
				<strong>Error!</strong> {[{ errorMessage }]}
			</div>
			
			<div class="col-sm-6">
				<div class="form-group">												
					<label>Add new contact:</label>
					<input type="text" class="form-control" id="user_email"
						placeholder="Enter user email"
						name="user_email"
						ng-model="userEmail"
					>						
					<button type="button" class="btn btn-info" style="margin-top: 10px;"
						ng-click="addNewCompanyUser({{ $company->id }})"
						ng-show="userEmail"
					>
						Add Contact
					</button>
				</div> 
			</div>										
			<div class="col-sm-6">											
				<button type="button" class="btn btn-success" style="float:right;"
					ng-click="saveCompanyUsers({{ $company->id }})"
				>
					Save Contacts
				</button>
			</div> 
			<div class="clearfix"></div>
		</div>   
		<div class="contact_information" ng-repeat="user in companyUsers track by $index">					
			<div class="col-sm-9">	
				<div style="width:100%;">
					<h4> {[{ $index + 1 }]} . {[{ user.name }]}</h4>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="new_contact_name">Name:</label>
					<div class="col-sm-10">
					<input type="text" class="form-control" id="new_contact_name_{[{ user.id }]}"
						placeholder="Enter name"
						ng-model="user.name"
						name="users[{[{ user.id }]}][name]"	
					>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="new_contact_email">Email:</label>
					<div class="col-sm-10"> 
					<input type="text" class="form-control" id="new_contact_email_{[{ user.id }]}"
						placeholder="Enter email"		
						ng-model="user.email"
						name="users[{[{ user.id }]}][email]"
						disabled
					>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="new_contact_phone">Phone:</label>
					<div class="col-sm-10"> 
					<input type="text" class="form-control" id="new_contact_phone_{[{ user.id }]}"
						placeholder="Enter phone"
						ng-model="user.phone"
						name="users[{[{ user.id }]}][phone]"	
					>
					</div>
				</div>
			</div>									
			<div class="col-sm-3" style="padding-top: 40px;">											
				<button type="button" class="btn btn-danger" style="float:right;"
					ng-click="removeUser(user.id, $index)"
				>
					Remove
				</button>
			</div> 
		</div>
	</div>
</div>
						