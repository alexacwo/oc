<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>OrderCaddy.com</title>

    <link href="{{ asset('public/css/app.css') }}" rel="stylesheet"> 
    <link href="{{ asset('public/css/font-awesome1.min.css') }}" rel="stylesheet">
    <link href="{{ asset('public/css/angular-material.1.1.4.min.css') }}" rel="stylesheet">
    <link href="{{ asset('public/css/style3.css') }}" rel="stylesheet">

    <script>
        window.Laravel = {!! json_encode([
            'csrfToken' => csrf_token(),
        ]) !!};
    </script>
</head>
<body style="background-color:#fff;">
    <div id="app">
        <nav class="navbar navbar-default navbar-static-top" style="margin-bottom:0px;">
            <div class="container">
                <div class="navbar-header">

                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

					@if ((Auth::guest()) || (!Auth::user()->hasRole('admin')))						
						<a class="navbar-brand" href="{{ url('/') }}">
							Pahoda Image Products
						</a>
					@else
						<a class="navbar-brand" href="{{ url('/admin') }}">
							Dashboard
						</a>
					@endif
					
                </div>

                <div class="collapse navbar-collapse" id="app-navbar-collapse">
				
                    <ul class="nav navbar-nav">
                        &nbsp;
                    </ul>

					<ul class="nav navbar-nav navbar-right">
                        @if (Auth::guest())
							<li><a href="{{ route('login') }}">Login</a></li> 
                        @else
							@if (Auth::user()->hasRole('admin')) 
								<li><a href="{{ route('admin_companies') }}">Clients</a></li>
								<li><a href="{{ route('admin_locations') }}">Locations</a></li>
								<li><a href="{{ route('admin_devices') }}">Devices</a></li>
								<li><a href="{{ route('admin_service_providers') }}">Service Providers</a></li>
								<li><a href="{{ route('admin_supply_providers') }}">Supplies Providers</a></li>
								<li><a href="{{ route('admin_orders') }}">Orders</a></li>
								<li><a href="{{ route('admin_service_tickets') }}">Service Tickets</a></li>
							@endif
								@if (
										(
											(isset($company) && $company->display_zoho_link == 1)
											||
											(isset($location) && $location->company->display_zoho_link == 1)
										)
										&&
										(!Auth::user()->hasRole('admin')) 
									)							
									<li><a href="https://books.zoho.com/portal/pahoda/login">Invoices (ZOHO Books)</a></li>
								@endif
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
										{{ Auth::user()->name }} <span class="caret"></span>
									</a>

									<ul class="dropdown-menu" role="menu">
										<li>
											<a href="{{ route('logout') }}"
												onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
												Logout
											</a>

											<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
												{{ csrf_field() }}
											</form>
										</li>
									</ul>
								</li>
                        @endif
					</ul>
                </div>
            </div>
        </nav>
		
		<div ng-app="angularApp">
			@yield('content')
		</div>
		
    </div>
	
	<script src="{{ asset('public/js/jquery.min.js') }}"></script> 
	<script src="{{ asset('public/js/jquery-slimscroll.min.js') }}"></script> 
	
	<script src="{{ asset('public/js/angular-1.6.1.min.js') }}"></script>
	<script src="{{ asset('public/js/angular-animate.1.6.1.min.js') }}"></script>
	<script src="{{ asset('public/js/angular-aria.1.6.1.min.js') }}"></script>
	<script src="{{ asset('public/js/angular-messages.1.6.1.min.js') }}"></script>
	<script src="{{ asset('public/js/angular-material.1.1.0.min.js') }}"></script>
	<script src="{{ asset('public/js/angular_slimscroll.js') }}"></script>
	
	<script src="{{ asset('public/js/filesaver.min.js') }}"></script>
	<script src="{{ asset('public/js/filesaver-bundle.min.js') }}"></script>
	<script src="{{ asset('public/js/blob.js') }}"></script>
	
	<script src="{{ asset('public/js/ui-bootstrap-tpls-2.5.0.min.js') }}"></script>
    <script src="{{ asset('public/js/app.js') }}"></script>
	
	<script>
		var app = angular.module('angularApp',
			[	'ui.bootstrap',
				'ngAnimate',
				'usersService',
				'devicesService',
				'locationsService',
				'ordersService',
				'ui.slimscroll',
				'ngMaterial',
				'ngMessages',
				'ngFileSaver'
			],
			function($interpolateProvider,$locationProvider){
				$interpolateProvider.startSymbol('{[{').endSymbol('}]}');
				
				$locationProvider.html5Mode({
					enabled: true,
					requireBase: false
				});
			}
		);
		
		app.filter('checkbBoxItemsKeyLength', function(){
			return function(input){
				var output = {}; 
				if(!angular.isObject(input)){
					throw Error("Usage of non-objects with keylength filter!!")
				} 
				for(var key in input) {
					if (input[key] === true) output[key] = input[key];
				}
				return Object.keys(output).length;
			}
		});
		
		app.filter('checkExpirationDate', function(){
			return function(expirationDateString){
				if (expirationDateString != null) {
					var expirationDate = new Date(expirationDateString);
					var currentDate = new Date();
					var remainingDays = (expirationDate - currentDate)/(60*60*24*1000)
					return Math.round(remainingDays);
				} else {
					return null;
				}
			}
		});

		app
		.directive('file', function(){
			return {
				scope: {
					file: '='				
				},
				link: function(scope, el, attrs){
					el.bind('change', function(event){
						var files = event.target.files;
						var file = files[0];
						scope.file = file ? file : {};					
						scope.$apply();
					});
				}
			};
		});
		
		app
		.directive('slideToggle', function() {
			return {
				restrict: 'A',
				link: function(scope, element, attrs) {
					attrs.expanded = false;
					element.bind('click', function() {
						console.log(attrs.expanded);
						var target = document.querySelector(attrs.slideToggle);
						var content = target.querySelector('.slideable_content');
						if(!attrs.expanded) {
							var y = content.clientHeight;
							content.style.border = 0;
							target.style.height = y + 'px';
						} else {
							target.style.height = '0px';
						}
						attrs.expanded = !attrs.expanded;
					});
				}
			}
		});
		
		angular
		.module('usersService', [])
		.factory('usersAPI', function($http) {
			return { 
				getUsersForCurrentCompany : function(currentCompanyId) {
					//console.log(currentClientId);
					return $http({
						method: 'POST',
						url: '{{ url("admin/api/get_users_for_current_company") }}',
						data: { 
							current_company_id: currentCompanyId
						}
					})  
				}, 
				getUsersForCurrentCompanyLocations : function(currentCompanyId) {
					//console.log(currentClientId);
					return $http({
						method: 'POST',
						url: '{{ url("admin/api/get_users_for_current_company_locations") }}',
						data: { 
							current_company_id: currentCompanyId
						}
					})  
				}, 
				saveCompanyUsers : function(companyId, users) {
					return $http({
						method: 'POST',
						url: '{{ url("admin/api/save_company_users") }}',
						data: { 
							company_id: companyId,
							users: users
						}
					}) 
				}, 
				addNewCompanyUser : function(companyId, userEmail) {
					return $http({
						method: 'POST',
						url: '{{ url("admin/api/add_new_company_user") }}',
						data: { 
							company_id: companyId,
							user_email: userEmail
						}
					}) 
				}, 
				addNewLocationUser : function(locationId, userEmail) {
					return $http({
						method: 'POST',
						url: '{{ url("admin/api/add_new_location_user") }}',
						data: { 
							location_id: locationId,
							user_email: userEmail
						}
					}) 
				},
				removeUser : function(userId) {
					return $http({
						method: 'DELETE',
						url: '{{ url("admin/api/remove_user") }}' + '/' + userId
					}) 
				}
			}
		});
		
		angular
		.module('devicesService', [])
		.factory('devicesAPI', function($http) {
			return { 
				getSupplyItems : function(currentDeviceId) {
					return $http({
						method: 'GET',
						url: '{{ url("admin/api/get_supply_items")}}' + '/' + currentDeviceId
					})  
				},
				addSupplyItem : function(currentDeviceId) {
					return $http({
						method: 'POST',
						url: '{{ url("admin/api/add_supply_item_to_device")}}' + '/' + currentDeviceId
					})  
				},
				removeSupplyItem : function(supplyItemId) {
					return $http({
						method: 'DELETE',
						url: '{{ url("admin/api/delete_supply_item")}}' + '/' + supplyItemId
					})  
				},
				getVideoLinks : function(currentDeviceId) {
					return $http({
						method: 'GET',
						url: '{{ url("admin/api/get_video_links")}}' + '/' + currentDeviceId
					})  
				},
				addVideoLink : function(currentDeviceId) {
					return $http({
						method: 'POST',
						url: '{{ url("admin/api/add_video_link_to_device")}}' + '/' + currentDeviceId
					})  
				},
				removeVideoLink : function(videoLinkId) {
					return $http({
						method: 'DELETE',
						url: '{{ url("admin/api/remove_video_link")}}' + '/' + videoLinkId
					})  
				},
				editDeviceUnit : function(deviceUnitData) {
					return $http({
						method: 'POST',
						url: '{{ url("admin/api/edit_device_unit")}}' + '/' + deviceUnitData.id,
						data: {
							device_unit_data: deviceUnitData
						}
					})  
				},
				changeSuppliesCredentials : function(companyId, deviceUnitId, login, password) {
					return $http({
						method: 'POST',
						url: '{{ url("company/api")}}' + '/' + companyId + '/change_supplies_credentials/' + deviceUnitId,
						data: {
							login: login,
							password: password
						}
					})  
				},
				changeServiceCredentials : function(companyId, deviceUnitId, login, password) {
					return $http({
						method: 'POST',
						url: '{{ url("company/api")}}' + '/' + companyId + '/change_service_credentials/' + deviceUnitId,
						data: {
							login: login,
							password: password
						}
					})  
				},
				getDevicesInfo : function(companyId) {
					return $http({
						method: 'GET',
						url: '{{ url("company/api")}}' + '/' + companyId + '/get_devices_info'
					})  
				}
			}
		});
		
		angular
		.module('locationsService', [])
		.factory('locationsAPI', function($http) {
			return { 
				getDeviceUnits : function(currentCompanyId) {
					return $http({
						method: 'GET',
						url: '{{ url("admin/api/get_device_units")}}' + '/' + currentCompanyId
					})  
				},
				getProposedDeviceUnits : function(currentCompanyId) {
					return $http({
						method: 'GET',
						url: '{{ url("admin/api/get_proposed_device_units")}}' + '/' + currentCompanyId
					})  
				},
				getDeviceUnitInfo: function(companyId, deviceUnitId) {
					return $http({
						method: 'GET',
						url: '{{ url("company/api") }}' + '/' + companyId + '/get_device_unit_info/' + deviceUnitId
					})  
				},
				addDeviceToLocation : function(locationId, deviceId) {
					return $http({
						method: 'POST',
						url: '{{ url("admin/api/add_device_unit_to_location")}}' + '/' + locationId,
						data: {
							device_id: deviceId
						}
					})  
				},
				confirmProposedDeviceUnit : function(proposedDeviceUnitId) {
					return $http({
						method: 'POST',
						url: '{{ url("admin/api/confirm_proposed_device_unit")}}' + '/' + proposedDeviceUnitId
					})  
				}, 
				removeProposedDeviceUnit : function(proposedDeviceUnitId) {
					return $http({
						method: 'DELETE',
						url: '{{ url("admin/api/remove_proposed_device_unit")}}' + '/' + proposedDeviceUnitId
					})  
				}, 
				removeDeviceUnit : function(deviceUnitId) {
					return $http({
						method: 'DELETE',
						url: '{{ url("admin/api/remove_device_unit")}}' + '/' + deviceUnitId
					})  
				}, 
				saveDeviceFriendlyName : function(companyId, deviceUnitId, deviceUnitFriendlyName) {
					return $http({
						method: 'POST',
						url: '{{ url("company/api") }}' + '/' + companyId + '/save_device_unit_friendly_name/' + deviceUnitId ,
						data: {
							device_unit_friendly_name: deviceUnitFriendlyName 
						}
					})  
				}
			}
		});		
		
		angular
		.module('ordersService', [])
		.factory('ordersAPI', function($http) {
			return { 
				updateOrderStatus : function(orderId, status, trackingNo = null) {
					return $http({
						method: 'POST',
						url: '{{ url("admin/api/update_order_status")}}' + '/' + orderId,
						data: {
							status: status,
							tracking_no: trackingNo
						}
					})  
				},
				saveTrackingNo : function(orderId, trackingNo) {
					return $http({
						method: 'POST',
						url: '{{ url("admin/api/save_tracking_number")}}' + '/' + orderId,
						data: {
							tracking_no: trackingNo
						}
					})  
				}
			}
		});	 
		
		app
		.controller('adminSearchResultController', function($scope, $element, $timeout, devicesAPI) {
			
			$scope.showLoadingSpinner = {};
			$scope.showSuccessMessage = false;
					
			$scope.leaseExpiration = {};
			
			$timeout( function(){
				angular.forEach($scope.deviceUnits, function(deviceUnit, deviceUnitIndex) {
					$scope.leaseExpiration[deviceUnit.id] = (deviceUnit.lease_expiration != null) ? new Date(deviceUnit.lease_expiration) : null;
					
					var datePicker = angular.element($element[0].querySelector('#datePicker_' + deviceUnit.id));
					var datePickerInputContainer = angular.element(datePicker[0].children[1]);
					var datePickerInput = angular.element(datePickerInputContainer[0].children[0]);
					datePickerInput.attr("name", "device_unit_lease_expiration[" + deviceUnit.id + "]");
				});  
			}, 100); 	
			
			$scope.saveDeviceUnitData = function(deviceUnitData) {
				$scope.showLoadingSpinner[deviceUnitData.id] = true;
				devicesAPI
					.editDeviceUnit(deviceUnitData)
					.then(	
						function(response) {
							var responseMessage = response.data;
							console.log(responseMessage);
							if (responseMessage.status == 'success') {	
								$scope.showLoadingSpinner[deviceUnitData.id] = false;
								$scope.showSuccessMessage = true;
								
								$timeout( function(){
									$scope.showSuccessMessage = false;
								}, 3000);
							}
							
						}, function(error) {
							console.log(error);
						}
					)
			}
		});
		
		app
		.controller('editClientCtrl', function($scope, $location, $timeout, usersAPI) {
			$scope.clientListLoaded = false;
			$scope.showSuccessMessage = false;
			$scope.showErrorMessage = false;
			
			var locationParams = $location.path().split("/");
			$scope.currentCompanyId = (locationParams[locationParams.length - 2] == 'company') ? locationParams[locationParams.length - 1] : 1;
				  			
			usersAPI
				.getUsersForCurrentCompany($scope.currentCompanyId)
				.then(	
					function(response) {
						$scope.clientListLoaded = true;
						//console.log(response.data);
				
						$scope.companyUsers = response.data.company_users;
						
						$scope.saveCompanyUsers = function(companyId) {
							
							usersAPI
							.saveCompanyUsers(companyId, $scope.companyUsers)
							.then(	
								function(response) {
									//console.log(response.data);
									
									responseMessage = response.data;
									if (responseMessage.status == 'success') {
										
										$scope.showSuccessMessage = true;
										$scope.successMessage = responseMessage.message;
										$timeout( function(){
											$scope.showSuccessMessage = false;
										}, 3000);
									}
									
								}, function(error) {
									console.log(error);
									
									$scope.showErrorMessage = true;
									$scope.errorMessage = '';
									$timeout( function(){
										$scope.showErrorMessage = false;
									}, 3000);
								}
							)							
						}
						
						$scope.addNewCompanyUser = function(companyId) {
							
							usersAPI
							.addNewCompanyUser(companyId, $scope.userEmail)
							.then(	
								function(response) {
									//console.log(responseMessage.status);
									
									responseMessage = response.data;
									if (responseMessage.status == 'success') {
										
										$scope.showSuccessMessage = true;
										$scope.successMessage = responseMessage.message;
										$timeout( function(){
											$scope.showSuccessMessage = false;
										}, 3000);
										
										var newUser = responseMessage.user;										
										$scope.companyUsers.push(newUser);
									} else {
										$scope.showErrorMessage = true;
										$scope.errorMessage = responseMessage.message;
										$timeout( function(){
											$scope.showErrorMessage = false;
										}, 3000);
									}
									
								}, function(error) {
									console.log(error);
									
									$scope.showErrorMessage = true;
									$scope.errorMessage = '';
									$timeout( function(){
										$scope.showErrorMessage = false;
									}, 3000);
								}
							)
							
						}
						
						$scope.removeUser = function(userId, userIndex) {
							
							usersAPI
							.removeUser(userId)
							.then(	
								function(response) {
									//console.log(response.data);
									
									responseMessage = response.data;
									if (responseMessage.status == 'success') {
																			
										$scope.companyUsers.splice(userIndex,1);
										
										$scope.showSuccessMessage = true;
										$scope.successMessage = responseMessage.message;
										$timeout( function(){
											$scope.showSuccessMessage = false;
										}, 3000);
									}
									
								}, function(error) {
									console.log(error);
									
									$scope.showErrorMessage = true;
									$scope.errorMessage = '';
									$timeout( function(){
										$scope.showErrorMessage = false;
									}, 3000);
								}
							)							
						}
						
					}, function(error) {
						console.log(error);
						
						$scope.showErrorMessage = true;
						$scope.errorMessage = '';
						$timeout( function(){
							$scope.showErrorMessage = false;
						}, 3000);
					}
				)
		});
		
		app
		.controller('editDeviceCtrl', function($scope, $location, devicesAPI) {
			
			$scope.showDevicesTab = false;
			$scope.showVideoLinksBlock = false;
			
			var locationParams = $location.path().split("/");
			$scope.currentDeviceId = (locationParams[locationParams.length - 2] == 'device') ? locationParams[locationParams.length - 1] : 1;
			
			devicesAPI
				.getVideoLinks($scope.currentDeviceId)
				.then(	
					function(response) {
						$scope.showVideoLinksBlock = true;
						$scope.videoLinks = response.data.video_links;
						
						$scope.addVideoLink = function(deviceId) {
							devicesAPI
								.addVideoLink(deviceId)
								.then(	
									function(response) {
										responseMessage = response.data;
										if (responseMessage.status == 'success') {
											var newVideoLink = responseMessage.video_link;
											
											$scope.videoLinks.push(newVideoLink);
										}									
									},
									function(error) {
										console.log(error);
									})
						}
						$scope.removeVideoLink = function(videoLinkId, videoLinkIndex) {
							devicesAPI
								.removeVideoLink(videoLinkId)
								.then(	
									function(response) {
										responseMessage = response.data;
										if (responseMessage.status == 'success') {
											$scope.videoLinks.splice(videoLinkIndex, 1);
										}									
									},
									function(error) {
										console.log(error);
									})
						}
					}, function(error) {
						console.log(error);
					}
				)
				
			devicesAPI
				.getSupplyItems($scope.currentDeviceId)
				.then(	
					function(response) {
						//console.log(response);
						$scope.showDevicesTab = true;
						$scope.supplyItems = response.data.supply_items;
						
						$scope.addNewSupplyItem = function(deviceId) {
							//console.log(deviceId);
							
							devicesAPI
							.addSupplyItem(deviceId)
							.then(	
								function(response) {
									responseMessage = response.data;
									if (responseMessage.status == 'success') {
										var newSupplyItem = responseMessage.supply_item;
										
										$scope.supplyItems.push(newSupplyItem);
										//console.log($scope.supplyItems);
									}									
								},
								function(error) {
									console.log(error);
								})
						}
						
						$scope.removeSupplyItem = function(supplyItemId, supplyItemIndex) {
							
							devicesAPI
							.removeSupplyItem(supplyItemId)
							.then(	
								function(response) {
									console.log(response);
									responseMessage = response.data;
									if (responseMessage.status == 'success') {
										
										$scope.supplyItems.splice(supplyItemIndex, 1);
										
									}									
								},
								function(error) {
									console.log(error);
								})
						}
						
					}, function(error) {
						console.log(error);
					}
				)
		});
		
		app
		.controller('editLocationCtrl', function($scope, $element, $location, $timeout, usersAPI, locationsAPI) {
			
			$scope.contactsListLoaded = false;
			$scope.showCompanyTab = false;
			$scope.showSuccessMessage = false;
			$scope.showErrorMessage = false;
			
			$scope.suppliesPortalLink = {};
			$scope.servicePortalLink = {};
			$scope.displaySuppliesCredentials = {};
			$scope.displayServiceCredentials = {};
										
			var locationParams = $location.path().split("/");
			$scope.currentCompanyId = (locationParams[locationParams.length - 2] == 'locations') ? locationParams[locationParams.length - 1] : 1;
			
			usersAPI
				.getUsersForCurrentCompanyLocations($scope.currentCompanyId)
				.then(	
					function(response) {
						$scope.contactsListLoaded = true;

						$scope.locationUsers = response.data.location_users;
						
						$scope.addNewLocationUser = function(locationId, userEmail) {
							
							$scope.userEmail = '';
							
							usersAPI
							.addNewLocationUser(locationId, userEmail)
							.then(	
								function(response) {
									
									//console.log(responseMessage.status);
									
									responseMessage = response.data;
									if (responseMessage.status == 'success') {
										
										$scope.showSuccessMessage = true;
										$scope.successMessage = responseMessage.message;
										$timeout( function(){
											$scope.showSuccessMessage = false;
										}, 3000);
										
										var newUser = responseMessage.user;										
										$scope.locationUsers[locationId].push(newUser);
									} else {
										$scope.showErrorMessage = true;
										$scope.errorMessage = responseMessage.message;
										$timeout( function(){
											$scope.showErrorMessage = false;
										}, 3000);
									}
								}, function(error) {
									console.log(error);
									
									$scope.showErrorMessage = true;
									$scope.errorMessage = '';
									$timeout( function(){
										$scope.showErrorMessage = false;
									}, 3000);
								}
							)							
						}
						
						$scope.removeUser = function(userId, userIndex, locationId) {
							
							usersAPI
							.removeUser(userId)
							.then(	
								function(response) {
									//console.log(response.data);
									
									responseMessage = response.data;
									if (responseMessage.status == 'success') {
																			
										$scope.locationUsers[locationId].splice(userIndex,1);
										
										$scope.showSuccessMessage = true;
										$scope.successMessage = responseMessage.message;
										$timeout( function(){
											$scope.showSuccessMessage = false;
										}, 3000);
									}
									
								}, function(error) {
									console.log(error);
									
									$scope.showErrorMessage = true;
									$scope.errorMessage = '';
									$timeout( function(){
										$scope.showErrorMessage = false;
									}, 3000);
								}
							)							
						}

						locationsAPI
							.getDeviceUnits($scope.currentCompanyId)
							.then(
								function(response) {
									
									locationsAPI
										.getProposedDeviceUnits($scope.currentCompanyId)
										.then(
											function(response) {
												$scope.proposedDeviceUnits = response.data.proposed_device_units_by_location_id;
											}, function (error) {
												console.log(error);
											});
											
									//console.log(response.data);
									$scope.showCompanyTab = true;
									$scope.deviceUnits = response.data.device_units_by_location_id;
									
									$scope.leaseExpiration = {};
									
									$timeout( function(){
										angular.forEach($scope.deviceUnits, function(deviceUnits, locationId) {
											angular.forEach(deviceUnits, function(deviceUnit, deviceUnitIndex) {
												$scope.leaseExpiration[deviceUnit.id] = (deviceUnit.lease_expiration != null) ? new Date(deviceUnit.lease_expiration) : null;
												
												var datePicker = angular.element($element[0].querySelector('#datePicker_' + deviceUnit.id));
												var datePickerInputContainer = angular.element(datePicker[0].children[1]);
												var datePickerInput = angular.element(datePickerInputContainer[0].children[0]);
												datePickerInput.attr("name", "device_unit_lease_expiration[" + deviceUnit.id + "]");
											}); 
										});
									}, 100); 
									
									$scope.addDeviceToLocation = function(locationId, deviceId) {
										
										locationsAPI
											.addDeviceToLocation(locationId, deviceId)
											.then(
												function(response) {
													responseMessage = response.data;
													if (responseMessage.status == 'success') {
														var newDeviceUnit = responseMessage.device_unit;
														newDeviceUnit.device = {
															model: responseMessage.device_model
														};
														$scope.suppliesPortalLink[newDeviceUnit.id] = 'system_link';
														$scope.servicePortalLink[newDeviceUnit.id] = 'system_link';
														$scope.displaySuppliesCredentials[newDeviceUnit.id] = 0;
														$scope.displayServiceCredentials[newDeviceUnit.id] = 0;
														
														if (typeof $scope.deviceUnits[locationId] == 'undefined') $scope.deviceUnits[locationId] = {};
														$scope.deviceUnits[locationId].push(newDeviceUnit);
														//console.log($scope.deviceUnits);
													}
												},
												function(error) {
													console.log(error);						
												}
											);
									};
									
									$scope.removeDeviceUnit = function(deviceUnitId, deviceUnitIndex, locationId) {
										
										locationsAPI
										.removeDeviceUnit(deviceUnitId)
										.then(	
											function(response) {
												//console.log(response.data);
												
												responseMessage = response.data;
												if (responseMessage.status == 'success') {
																						
													$scope.deviceUnits[locationId].splice(deviceUnitIndex,1);
													
												}
												
											}, function(error) {
												console.log(error);
											}
										)							
									}
									$scope.confirmProposedDeviceUnit = function(proposedDeviceUnitId, proposedDeviceUnitIndex, locationId) {
										
										locationsAPI
											.confirmProposedDeviceUnit(proposedDeviceUnitId)
											.then(	
												function(response) {
													//console.log(response.data);
													
													responseMessage = response.data;
													if (responseMessage.status == 'success') {
																							
														$scope.deviceUnits[locationId].push($scope.proposedDeviceUnits[locationId][proposedDeviceUnitIndex]);
														$scope.proposedDeviceUnits[locationId].splice(proposedDeviceUnitIndex,1);
														
													}
													
												}, function(error) {
													console.log(error);
												}
											)							
									}
									$scope.removeProposedDeviceUnit = function(proposedDeviceUnitId, proposedDeviceUnitIndex, locationId) {
										
										locationsAPI
											.removeProposedDeviceUnit(proposedDeviceUnitId)
											.then(	
												function(response) {
													//console.log(response.data);
													
													responseMessage = response.data;
													if (responseMessage.status == 'success') {
																							
														$scope.proposedDeviceUnits[locationId].splice(proposedDeviceUnitIndex,1);
														
													}
													
												}, function(error) {
													console.log(error);
												}
											)							
									}
								}, function (error) {
									console.log(error);
								}
							);
							
						}, function (error) {
							console.log(error);
						}
					);
		});
		
		app
		.controller('ordersCtrl', function($scope, ordersAPI) {
			$scope.placedOrdersCurrentPage = 1,
			$scope.orderedOrdersCurrentPage = 1,
			$scope.shippedOrdersCurrentPage = 1,
			$scope.ordersNumPerPage = 8,
			$scope.ordersMaxSize = 5; 
			$scope.movePlacedOrder = [],
			$scope.moveOrderedOrder = [],
			$scope.moveBackOrderedOrder = [],
			$scope.moveBackShippedOrder = [],
			$scope.updatePlacedOrdersList = 0,
			$scope.updateOrderedOrdersList = 0,
			$scope.updateShippedOrdersList = 0; 

			$scope.$watch(
				'placedOrdersCurrentPage + ordersNumPerPage + updatePlacedOrdersList',
				function() {   
					var begin = (($scope.placedOrdersCurrentPage - 1) * $scope.ordersNumPerPage), end = begin + $scope.ordersNumPerPage;					
					$scope.filteredPlacedOrders = $scope.placedOrders.slice(begin, end);
				}
			);
			$scope.$watch(
				'orderedOrdersCurrentPage + ordersNumPerPage + updateOrderedOrdersList',				
				function() {
					var begin = (($scope.orderedOrdersCurrentPage - 1) * $scope.ordersNumPerPage), end = begin + $scope.ordersNumPerPage;					
					$scope.filteredOrderedOrders = $scope.orderedOrders.slice(begin, end);
				}
			);
			$scope.$watch(
				'shippedOrdersCurrentPage + ordersNumPerPage + updateShippedOrdersList',
				function() {   
					var begin = (($scope.shippedOrdersCurrentPage - 1) * $scope.ordersNumPerPage), end = begin + $scope.ordersNumPerPage;					
					$scope.filteredShippedOrders = $scope.shippedOrders.slice(begin, end);
				}
			);
			$scope.$watch(
				'movePlacedOrder',
				function() {   
					var begin = (($scope.placedOrdersCurrentPage - 1) * $scope.ordersNumPerPage), end = begin + $scope.ordersNumPerPage;
					 
					$scope.moveToOrderedList = function(orderId) {
						
						$scope.movePlacedOrder[orderId] = false;
						for(var i=0;i<$scope.placedOrders.length;i++) {
							var key;
							if ($scope.placedOrders[i].id == orderId) {
								key = i; 
								$scope.orderedOrders.push($scope.placedOrders[key]);
								$scope.orderedOrders.sort(function(a, b) {
									return b.id - a.id;
								});
								$scope.placedOrders.splice(key, 1); 
								$scope.updateOrderedOrdersList++;
								$scope.updatePlacedOrdersList++;
								ordersAPI
									.updateOrderStatus(orderId, 'ordered')
									.then(
										function(response) {
											var responseMessage = response.data;
											if (responseMessage.status == 'success') {	
											} 
										}, function (error) {
											console.log(error);
										}
									);
							}
							continue;
						}
						$scope.filteredPlacedOrders = $scope.placedOrders.slice(begin, end);
					};
			
				},
				true
			);
			$scope.$watch(
				'moveOrderedOrder',
				function() {
					$scope.moveToShippedList = function(orderId, trackingNo) {
						var begin = (($scope.orderedOrdersCurrentPage - 1) * $scope.ordersNumPerPage), 
							end = begin + $scope.ordersNumPerPage;
						$scope.moveOrderedOrder[orderId] = false;
						var key;
						for(var i=0;i<$scope.orderedOrders.length;i++) {
							if ($scope.orderedOrders[i].id == orderId) {
								key = i;
								$scope.shippedOrders.push($scope.orderedOrders[key]);
								$scope.shippedOrders.sort(function(a, b) {
									return b.id - a.id;
								});
								$scope.orderedOrders.splice(key, 1);
								$scope.updateShippedOrdersList++;
								$scope.updateOrderedOrdersList++;
								
								ordersAPI
									.updateOrderStatus(orderId, 'shipped', trackingNo)
									.then(
										function(response) {
											var responseMessage = response.data;
											if (responseMessage.status == 'success') {
											}  
										}, function (error) {
											console.log(error);
										}
									);
							}
							continue;
						}
						$scope.filteredOrderedOrders = $scope.orderedOrders.slice(begin, end);
					};
			
				},
				true
			);
			$scope.$watch(
				'moveBackOrderedOrder',
				function() {
					var begin = (($scope.orderedOrdersCurrentPage - 1) * $scope.ordersNumPerPage), end = begin + $scope.ordersNumPerPage;
					
					$scope.moveBackToPlacedList = function(orderId) {
						$scope.moveBackOrderedOrder[orderId] = false;
												
						var key;						
						for(var i=0;i<$scope.orderedOrders.length;i++) {
							if ($scope.orderedOrders[i].id == orderId) {
								key = i;
								
								$scope.placedOrders.push($scope.orderedOrders[key]);
								$scope.placedOrders.sort(function(a, b) {
									return b.id - a.id;
								});
								$scope.orderedOrders.splice(key, 1);
								$scope.updatePlacedOrdersList++;
								$scope.updateOrderedOrdersList++;
								
								ordersAPI
									.updateOrderStatus(orderId, 'placed')
									.then(
										function(response) { 
											var responseMessage = response.data;
											if (responseMessage.status == 'success') {	
											}  
										}, function (error) {
											console.log(error);
										}
									);
							}
							continue;
						}
						$scope.filteredOrderedOrders = $scope.orderedOrders.slice(begin, end);
					};
			
				},
				true
			);
			$scope.$watch(
				'moveBackShippedOrder',
				function() { 
					var begin = (($scope.shippedOrdersCurrentPage - 1) * $scope.ordersNumPerPage), end = begin + $scope.ordersNumPerPage;
					
					$scope.moveBackToOrderedList = function(orderId) {
						$scope.moveBackShippedOrder[orderId] = false;
						
						var key;
						for(var i=0;i<$scope.shippedOrders.length;i++) {
							if ($scope.shippedOrders[i].id == orderId) {
								key = i;
						
								$scope.orderedOrders.push($scope.shippedOrders[key]);
								$scope.orderedOrders.sort(function(a, b) {
									return b.id - a.id;
								});
								$scope.shippedOrders.splice(key, 1);
								$scope.updateOrderedOrdersList++;
								$scope.updateShippedOrdersList++;
								
								ordersAPI
									.updateOrderStatus(orderId, 'ordered')
									.then(
										function(response) { 
											var responseMessage = response.data;
											if (responseMessage.status == 'success') {	
											}  
										}, function (error) {
											console.log(error);
										}
									);
							}
							continue;
						}
						$scope.filteredShippedOrders = $scope.shippedOrders.slice(begin, end);
					};
			
				},
				true
			);
			
			$scope.saveButtonLoadingSpinner = [];
			$scope.saveTrackingNo = function(orderId, trackingNo) {
				
				$scope.saveButtonLoadingSpinner[orderId] = true;
			
				ordersAPI
				.saveTrackingNo(orderId, trackingNo)
				.then(
					function(response) {
						var responseMessage = response.data;
						if (responseMessage.status == 'success') {	
							$scope.saveButtonLoadingSpinner[orderId] = false;
						} 
					}, function (error) {
						console.log(error);
					}
				);
			};
		});
		
		app
		.controller('serviceTicketsCtrl', function($scope) {
			$scope.serviceTicketsCurrentPage = 1,
			$scope.serviceTicketsNumPerPage = 5,
			$scope.serviceTicketsMaxSize = 5; 

			$scope.$watch(
				'serviceTicketsCurrentPage + serviceTicketsNumPerPage',
				function() {
					var begin = (($scope.serviceTicketsCurrentPage - 1) * $scope.serviceTicketsNumPerPage),
						end = begin + $scope.serviceTicketsNumPerPage;
					
					$scope.filteredServiceTickets = $scope.serviceTickets.slice(begin, end);
				}
			);
		});
		
		app
		.controller('companyController', function($scope, $timeout, devicesAPI, FileSaver) {

			$scope.downloadDeviceInfo = function(companyId) {
				
				devicesAPI
					.getDevicesInfo(companyId)
					.then(
						function(response) {	
							responseMessage = response.data;
							
							if (responseMessage.status == 'success') {	
							
								var deviceUnits = response.data.device_units;
								
								var CSV = [
									'"Device Unit Id","Location","Device S/N","Friendly Name","Base Rate","Included Color Pages","Included B&W Pages","Overage Color cost","Overage B&W cost","Lease Expiration Date"'
								];
								
								angular.forEach(deviceUnits, function(deviceUnitInfo, deviceUnitIndex) {
									var deviceUnitInfoLocationFriendlyName =
										(deviceUnitInfo.location.friendly_name != null && deviceUnitInfo.location.friendly_name != '') ?
										'"' + deviceUnitInfo.location.friendly_name + '"' : '';
									var deviceUnitInfoSerialNumber =
										(deviceUnitInfo.serial_number != null && deviceUnitInfo.serial_number != '') ?
										'"' + deviceUnitInfo.serial_number + '"' : '';
									var deviceUnitInfoFriendlyName =
										(deviceUnitInfo.friendly_name != null && deviceUnitInfo.friendly_name != '') ?
										'"' + deviceUnitInfo.friendly_name + '"' : '';
									var deviceUnitInfoBaseCost =
										(deviceUnitInfo.base_cost != null && deviceUnitInfo.base_cost != '') ?
										'"' + deviceUnitInfo.base_cost.toString().replace('.',',') + '"' : '';
									var deviceUnitInfoColorIncluded =
										(deviceUnitInfo.color_included != null && deviceUnitInfo.color_included != '') ?
										'"' + deviceUnitInfo.color_included.toString().replace('.',',') + '"' : '';
									var deviceUnitInfoMonoIncluded =
										(deviceUnitInfo.mono_included != null && deviceUnitInfo.mono_included != '') ?
										'"' + deviceUnitInfo.mono_included.toString().replace('.',',') + '"' : '';
									var deviceUnitInfoCostPerColor =
										(deviceUnitInfo.cost_per_color != null && deviceUnitInfo.cost_per_color != '') ?
										'"' + deviceUnitInfo.cost_per_color.toString().replace('.',',') + '"' : '';
									var deviceUnitInfoCostPerMono =
										(deviceUnitInfo.cost_per_mono != null && deviceUnitInfo.cost_per_mono != '') ?
										'"' + deviceUnitInfo.cost_per_mono.toString().replace('.',',') + '"' : '';
									var deviceUnitInfoLeaseExpiration =
										(deviceUnitInfo.lease_expiration != null && deviceUnitInfo.lease_expiration != '') ?
										'"' + deviceUnitInfo.lease_expiration + '"' : '';
														
									CSV.push(
										deviceUnitInfo.id + ',' +
										deviceUnitInfoLocationFriendlyName + ',' +
										deviceUnitInfoSerialNumber + ',' +
										deviceUnitInfoFriendlyName + ',' +
										deviceUnitInfoBaseCost + ',' +
										deviceUnitInfoColorIncluded + ',' +
										deviceUnitInfoMonoIncluded + ',' +
										deviceUnitInfoCostPerColor + ',' +
										deviceUnitInfoCostPerMono + ',' +
										deviceUnitInfoLeaseExpiration
									);
								}); 
								
								var CSVString = CSV.join(',\n');
							 
								var data = new Blob([CSVString], {type : 'text/csv'});
								FileSaver.saveAs(data, 'deviceUnitsData.csv');
							}
						},
						function(error) {
							console.log(error);						
						}
					);
			}
		});
		
		app
		.controller('locationOrSearchResultsController', function($scope, $timeout, locationsAPI, devicesAPI, FileSaver) {
			
			$scope.deviceUnitPhotoUrl = null;
			$scope.deviceUnitSuppliesPortalLink = null;
			$scope.deviceUnitServicePortalLink = null;
			$scope.deviceUnitSuppliesLogin = null;
			$scope.deviceUnitSuppliesPassword = null;
			$scope.deviceUnitServiceLogin = null;
			$scope.deviceUnitServicePassword = null;
			
			$scope.$watch(
				'deviceUnitId',
				function() {
					if(typeof $scope.deviceUnitId != 'undefined') {
						for(var i=0;i < $scope.deviceUnits.length;i++) {
							if ($scope.deviceUnits[i].id == $scope.deviceUnitId) {
								$scope.deviceUnitPhotoUrl = (typeof $scope.deviceUnits[i].device != 'undefined') ?
									$scope.deviceUnits[i].device.photo_url : $scope.deviceUnits[i].photo_url;
																
								$scope.deviceUnitUseAltSuppliesLink = $scope.deviceUnits[i].use_alt_supplies_link;
								
								$scope.deviceUnitSuppliesPortalLink =
									(/^[http://]/.test($scope.deviceUnits[i].supplies_portal_link) || /^[https://]/.test($scope.deviceUnits[i].supplies_portal_link)) ?
									$scope.deviceUnits[i].supplies_portal_link : 'http://' + $scope.deviceUnits[i].supplies_portal_link;
									
								$scope.deviceUnitUseAltServiceLink = $scope.deviceUnits[i].use_alt_service_link;
								
								$scope.deviceUnitServicePortalLink =
									(/^[http://]/.test($scope.deviceUnits[i].service_portal_link) || /^[https://]/.test($scope.deviceUnits[i].service_portal_link)) ?
									$scope.deviceUnits[i].service_portal_link : 'http://' + $scope.deviceUnits[i].service_portal_link;
									
								$scope.deviceUnitSuppliesLogin = $scope.deviceUnits[i].supplies_login;
								$scope.deviceUnitSuppliesPassword = $scope.deviceUnits[i].supplies_password;
								$scope.deviceUnitServiceLogin = $scope.deviceUnits[i].service_login;
								$scope.deviceUnitServicePassword = $scope.deviceUnits[i].service_password;																
							}
							continue;
						}
					}
				}
			);
			
			$scope.editFormVisible = [];
			$scope.newDeviceName = [];
			$scope.showEditForm = function(deviceUnitId, deviceUnitFriendlyName) {
				$scope.newDeviceName[deviceUnitId] = deviceUnitFriendlyName;
				$scope.editFormVisible[deviceUnitId] = !$scope.editFormVisible[deviceUnitId];
			} 
			$scope.saveDeviceFriendlyName = function(companyId, deviceUnitNewFriendlyName, scope) {
				
				var deviceUnitId = scope.deviceUnit.id;		

				locationsAPI
					.saveDeviceFriendlyName(companyId, deviceUnitId, deviceUnitNewFriendlyName)
					.then(
						function(response) {	
							responseMessage = response.data;
							if (responseMessage.status == 'success') {					
								$scope.editFormVisible[deviceUnitId] = false;
								scope.deviceUnit.friendly_name = deviceUnitNewFriendlyName;
							}
						},
						function(error) {
							console.log(error);						
						}
					);
				
			}
			
			$scope.showSuppliesLinkLoadingSpinner = {};
			$scope.showServiceLinkLoadingSpinner = {};
			$scope.changeSuppliesCredentials = function(companyId, deviceUnitId) {
				
				$scope.showSuppliesLinkLoadingSpinner[deviceUnitId] = true;
				devicesAPI
					.changeSuppliesCredentials(companyId, deviceUnitId, $scope.deviceUnitSuppliesLogin, $scope.deviceUnitSuppliesPassword)
					.then(	
						function(response) { 
							responseMessage = response.data;
							if (responseMessage.status == 'success') {
								
								$timeout( function(){
									$scope.showSuppliesLinkLoadingSpinner[deviceUnitId] = false;
								}, 3000);
								
							}									
						},
						function(error) {
							console.log(error);
						})
					
			}
			$scope.changeServiceCredentials = function(companyId, deviceUnitId) {
				
				$scope.showServiceLinkLoadingSpinner[deviceUnitId] = true;
				devicesAPI 
					.changeServiceCredentials(companyId, deviceUnitId, $scope.deviceUnitServiceLogin, $scope.deviceUnitServicePassword)
					.then(	
						function(response) { 
							responseMessage = response.data;
							if (responseMessage.status == 'success') {
								
								$timeout( function(){
									$scope.showServiceLinkLoadingSpinner[deviceUnitId] = false;
								}, 3000);
								
							}									
						},
						function(error) {
							console.log(error);
						})
					
			}
			 
		});
					
	</script>
</body>
</html>
