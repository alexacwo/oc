<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use App\Location; 

Route::get('/', [
	'as' => 'index', 
	'uses' => 'IndexController@index'
]);	
	
Auth::routes();

Route::group(['middleware' => 'permissions', 'auth' ], function () {
		
	Route::group(['prefix' => 'admin', 'namespace' => 'Admin'], function() {
		Route::get('/', [
            'as' => 'admin_index', 
            'uses' => 'AdminController@index'
        ]);		
		Route::post('/save_user_credentials/{user}', [
            'as' => 'save_user_credentials', 
            'uses' => 'AdminController@save_user_credentials'
        ]);		
		Route::post('/send_invitation/{user}', [
            'as' => 'send_invitation', 
            'uses' => 'AdminController@send_invitation'
        ]);	
		Route::post('/search_for_the_device', 'AdminController@search_for_the_device');		
		
		/* Companies */		
		Route::group(['namespace' => 'Companies'], function() {			
			Route::get('/companies', [
				'as' => 'admin_companies', 
				'uses' => 'AdminCompaniesController@companies'
			]);		
			
			Route::get('/edit_or_remove_company', [
				'as' => 'redirect_to_edit_or_remove_company', 
				'uses' => 'AdminCompaniesController@redirect_to_edit_or_remove_company'
			]);		
			
			Route::get('/company/{company_id}', [
				'as' => 'edit_company', 
				'uses' => 'AdminCompaniesController@edit_company'
			]);	
			
			Route::post('/create_company', 'AdminCompaniesController@create_company');		
			
			Route::post('/save_company/{company_id}', 'AdminCompaniesController@save_company');		
		
			/* Locations */
			Route::group(['namespace' => 'Locations'], function() {
					
				Route::get('/locations', [
					'as' => 'admin_locations', 
					'uses' => 'AdminCompaniesLocationsController@locations'
				]);	
				
				Route::post('/add_location/{company_id}', [
					'as' => 'add_location', 
					'uses' => 'AdminCompaniesLocationsController@add_location'
				]);	
				
				Route::post('/save_location/{location}', [
					'as' => 'save_location', 
					'uses' => 'AdminCompaniesLocationsController@save_location'
				]);	
				
				Route::delete('/delete_location/{location}', [
					'as' => 'delete_location', 
					'uses' => 'AdminCompaniesLocationsController@delete_location'
				]);		
				
				Route::get('/edit_locations', [
					'as' => 'redirect_to_edit_locations', 
					'uses' => 'AdminCompaniesLocationsController@redirect_to_edit_locations'
				]);
				
				Route::get('/locations/{company_id}', [
					'as' => 'edit_locations', 
					'uses' => 'AdminCompaniesLocationsController@edit_locations'
				]);		
				
			});	
		});

		/* Devices */
		Route::group(['namespace' => 'Devices'], function() {		
			Route::get('/devices', [
				'as' => 'admin_devices', 
				'uses' => 'AdminDevicesController@devices'
			]);	
			
			Route::get('/edit_or_remove_device', [
				'as' => 'redirect_to_edit_or_remove_device', 
				'uses' => 'AdminDevicesController@redirect_to_edit_or_remove_device'
			]);		
			
			Route::get('/device/{device_id}', [
				'as' => 'edit_device', 
				'uses' => 'AdminDevicesController@edit_device'
			]);	
			
			Route::post('/create_device', 'AdminDevicesController@create_device');		
			
			Route::post('/save_device/{device}', 'AdminDevicesController@save_device');
		});	
		
		/* ServiceProviders */
		Route::group(['namespace' => 'ServiceProviders'], function() {
			
			Route::get('/service_providers', [
				'as' => 'admin_service_providers', 
				'uses' => 'AdminServiceProvidersController@index'
			]);
			
			Route::post('/create_service_provider', 'AdminServiceProvidersController@create_service_provider');	
						
			Route::get('/edit_service_provider', [
				'as' => 'redirect_to_edit_service_provider', 
				'uses' => 'AdminServiceProvidersController@redirect_to_edit_service_provider'
			]);		
			
			Route::get('/service_provider/{service_provider_id}', [
				'as' => 'edit_service_provider', 
				'uses' => 'AdminServiceProvidersController@edit_service_provider'
			]);				
			
			Route::post('/save_service_provider/{service_provider}', 'AdminServiceProvidersController@save_service_provider');
			
		});	
		
		/* SupplyProviders */
		Route::group(['namespace' => 'SupplyProviders'], function() {
			
			Route::get('/supply_providers', [
				'as' => 'admin_supply_providers', 
				'uses' => 'AdminSupplyProvidersController@index'
			]);
			
			Route::post('/create_supply_provider', 'AdminSupplyProvidersController@create_supply_provider');	
						
			Route::get('/edit_supply_provider', [
				'as' => 'redirect_to_edit_supply_provider', 
				'uses' => 'AdminSupplyProvidersController@redirect_to_edit_supply_provider'
			]);		
			
			Route::get('/supply_provider/{supply_provider_id}', [
				'as' => 'edit_supply_provider', 
				'uses' => 'AdminSupplyProvidersController@edit_supply_provider'
			]);				
			
			Route::post('/save_supply_provider/{supply_provider}', 'AdminSupplyProvidersController@save_supply_provider');
		});
		
		/* Orders */
		Route::group(['namespace' => 'Orders'], function() {
			Route::get('/orders', [
				'as' => 'admin_orders', 
				'uses' => 'AdminOrdersController@index'
			]);
		});
		
		/* ServiceTickets */
		Route::group(['namespace' => 'ServiceTickets'], function() {
			Route::get('/service_tickets', [
				'as' => 'admin_service_tickets', 
				'uses' => 'AdminServiceTicketsController@index'
			]);
		});
		
		/* API */
		Route::group(['prefix' => 'api', 'namespace' => 'API'], function() {
			
			/* Locations */
			Route::get('/get_device_units/{company_id}', 'AdminLocationsAPIController@get_device_units');				 
			Route::get('/get_proposed_device_units/{company_id}', 'AdminLocationsAPIController@get_proposed_device_units');				 
			Route::post('/add_device_unit_to_location/{location}', 'AdminLocationsAPIController@add_device_unit_to_location');		
			Route::post('/confirm_proposed_device_unit/{proposed_device_unit}', 'AdminLocationsAPIController@confirm_proposed_device_unit');		
			Route::delete('/remove_proposed_device_unit/{proposed_device_unit}', 'AdminLocationsAPIController@remove_proposed_device_unit');		
			Route::delete('/remove_device_unit/{device_unit}', 'AdminLocationsAPIController@remove_device_unit');		
			
			/* Devices */
			Route::get('/get_supply_items/{device}', 'AdminDevicesAPIController@get_supply_items');							
			Route::post('/add_supply_item_to_device/{device}', 'AdminDevicesAPIController@add_supply_item_to_device');		
			Route::delete('/delete_supply_item/{supply_item}', 'AdminDevicesAPIController@delete_supply_item');	
			Route::get('/get_video_links/{device}', 'AdminDevicesAPIController@get_video_links');		
			Route::post('/add_video_link_to_device/{device}', 'AdminDevicesAPIController@add_video_link_to_device');
			Route::delete('/remove_video_link/{video_link}', 'AdminDevicesAPIController@remove_video_link');
			Route::post('/edit_device_unit/{device_unit}', 'AdminDevicesAPIController@edit_device_unit');						
			
			/* Users */
			Route::post('/get_users_for_current_company', 'AdminUsersAPIController@get_users_for_current_company');	
			Route::post('/get_users_for_current_company_locations', 'AdminUsersAPIController@get_users_for_current_company_locations');
			Route::delete('/remove_user/{user}', 'AdminUsersAPIController@remove_user');							
			
			Route::post('/add_new_company_user', 'AdminUsersAPIController@add_new_company_user');								
			Route::post('/add_new_location_user', 'AdminUsersAPIController@add_new_location_user');							
			Route::post('/save_company_users', 'AdminUsersAPIController@save_company_users');
			
			/* Orders */						
			Route::post('/update_order_status/{order}', 'AdminOrdersAPIController@update_order_status');
			Route::post('/save_tracking_number/{order}', 'AdminOrdersAPIController@save_tracking_number');
			
		});
	});	 
	
	/* Company - Client side */
	Route::group(['prefix' => 'company', 'namespace' => 'Company'], function() {		
		Route::get('{company_id}/', [
			'as' => 'company_index', 
			'uses' => 'CompanyController@index'
		]);
		
		Route::get('{company_id}/location/{location_id}', [
			'as' => 'location_index', 
			'uses' => 'CompanyController@location_index'
		]);		
		
		Route::post('{company_id}/search_for_the_device', 'CompanyController@search_for_the_device');
		
		Route::get('{company_id}/location/{location_id}/submit_meter_reads_page', [
			'as' => 'submit_meter_reads_page', 
			'uses' => 'CompanyController@submit_meter_reads_page'
		]);
		Route::post('{company_id}/location/{location_id}/submit_meter_reads', 'CompanyController@submit_meter_reads');
		
		Route::post('{company_id}/location/{location_id}/need_supplies', 'CompanyController@need_supplies');
		Route::post('{company_id}/need_supplies', 'CompanyController@need_supplies');			
		Route::post('{company_id}/location/{location_id}/need_service', 'CompanyController@need_service');
		Route::post('{company_id}/need_service', 'CompanyController@need_service');
		Route::post('{company_id}/location/{location_id}/submit_order', 'CompanyController@submit_order');
		Route::post('{company_id}/submit_order', 'CompanyController@submit_order');
		Route::post('{company_id}/location/{location_id}/submit_service_ticket', 'CompanyController@submit_service_ticket');
		Route::post('{company_id}/submit_service_ticket', 'CompanyController@submit_service_ticket');
		
		Route::post('{company_id}/location/{location_id}/save_login_credentials', 'CompanyController@save_login_credentials');
		
		Route::post('{company_id}/add_new_device_unit', 'CompanyController@add_new_device_unit');
		
		
		/* API */
		Route::group(['prefix' => 'api', 'namespace' => 'API'], function() {
			
			/* Locations */
			Route::get('{company_id}/get_device_unit_info/{device_unit_id}', 'CompanyLocationsAPIController@get_device_unit_info');	
			Route::post('{company_id}/save_device_unit_friendly_name/{device_unit}', 'CompanyLocationsAPIController@save_device_unit_friendly_name');	
			Route::post('{company_id}/change_supplies_credentials/{device_unit}', 'CompanyLocationsAPIController@change_supplies_credentials');	
			Route::post('{company_id}/change_service_credentials/{device_unit}', 'CompanyLocationsAPIController@change_service_credentials');	
			Route::get('{company_id}/get_devices_info', 'CompanyLocationsAPIController@get_devices_info');	
			
		});
	});

});
