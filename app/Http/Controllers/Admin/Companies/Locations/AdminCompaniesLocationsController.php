<?php

namespace App\Http\Controllers\Admin\Companies\Locations;
 
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;
use App\Mail\SendLoginCredentials; 
use Illuminate\Support\Facades\Mail;
use App\Notifications\LoginCredentials;

use App\User; 
use App\Role; 
use App\Company; 
use App\Location;
use App\Contact;  
use App\Device;  
use App\DeviceUnit; 
use App\SupplyItem; 
use App\SupplyItemUnit; 
use App\SupplyProvider;
use App\ServiceProvider;

class AdminCompaniesLocationsController extends Controller
{
    /**
     * Show locations list
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function locations(Request $request)
    {
		$companies = Company::get();
		$locations = Location::orderBy('id', 'desc')->get();
		
        return view('admin.companies.locations',
			[
				'companies' => $companies,
				'locations' => $locations
			]
		);
    }
	
    /**
     * Redirect
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function redirect_to_edit_locations(Request $request)
    {	
		$company_id = $request->company_id;
		
		$company = Company::find($company_id); 
				
        return redirect()->route('edit_locations',
			[
				'company_id' => $company->id
			]
		);
    }
	
    /**
     * Edit locations for specific company
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function edit_locations(Request $request, $company_id)
    {			
		$companies = Company::get();
		$company = Company::with('locations.device_units.supply_item_units')->find($company_id); 
		
		if (!is_null($company)) {
			$locations = Location::orderBy('id', 'desc')->get();
			$devices = Device::get();
			$supply_items = SupplyItem::get();
			
			$supply_providers = SupplyProvider::get();
			$service_providers = ServiceProvider::get();
			 
			return view('admin.companies.edit_locations',
				[
					'companies' => $companies,
					'company' => $company,
					'locations' => $locations,
					'devices' => $devices,
					'supply_items' => $supply_items,
					'supply_providers' => $supply_providers,
					'service_providers' => $service_providers
				]
			);
		} else {
			 return redirect()->route('admin_locations');
		}
    }
	
    /**
     * Add location to company
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function add_location(Request $request, $company_id)
    {
		$user_email = $request->user_email;	
		$raw_password = uniqid(); 
				 
		$admin_user = Auth::user();
		$admin_user->notify(new LoginCredentials( 'new location (' . $user_email . ' )', $user_email, $raw_password )); 
			
		$company = Company::find($company_id);		
		$location = new Location; 	
		$location->friendly_name = 'New location'; 	
		$location->company()->associate($company); 
		$location->save(); 	 
		
		$user = new User;
		$role = Role::where('name', 'location')->first();
		$user->role_id = $role->id;	
		$user->name = 'New user';
		$user->email = $user_email;	
		$user->password = ''; // Hash::make($raw_password);			
		$user->enc_password = Crypt::encryptString($raw_password);
		$user->location()->associate($location); 
		$user->save();
		
		$contact = new Contact;
		$contact->name = 'New user';
		$contact->location_id = $location->id;
		$contact->email = $user_email;
		$contact->save();
		
		return back();	
    }
	
    /**
     * Save location info
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function save_location(Request $request, Location $location)
    { 
		$device_units_ids = $request->device_units_ids; 
		if (count($device_units_ids) > 0) {
			
			foreach ($device_units_ids as $device_unit_id) {
				$device_unit = DeviceUnit::find($device_unit_id);
				$device_unit->friendly_name = $request->device_unit_friendly_name[$device_unit_id];
				$device_unit->asset_number = $request->device_unit_asset_number[$device_unit_id];
				$device_unit->serial_number = $request->device_unit_serial_number[$device_unit_id];
				
				$lease_expiration_string = $request->device_unit_lease_expiration[$device_unit_id];
				$lease_expiration_date = is_null($lease_expiration_string) ? null : strtotime($lease_expiration_string);
				$device_unit->lease_expiration = is_null($lease_expiration_date) ? null : date('Y-m-d', $lease_expiration_date);
				
				$device_unit->needs_meter_reads =
					isset($request->device_unit_needs_meter_reads[$device_unit_id])
						&&
					$request->device_unit_needs_meter_reads[$device_unit_id] == 'on' ? 1 : 0;
					
				// Supplies portal link	
				$supplies_portal_link =
					isset($request->supplies_portal_link[$device_unit_id])
						&&
					$request->supplies_portal_link[$device_unit_id] == 'alt_link' ? 'alt_link' : 'system_link'; 
				$device_unit->use_alt_supplies_link = ($supplies_portal_link == 'alt_link') ? 1 : 0;
				$device_unit->supplies_portal_link = ($supplies_portal_link == 'alt_link') ? $request->device_unit_supplies_portal_link_url[$device_unit_id] : '';
				
				$display_supplies_credentials =
					isset($request->display_supplies_credentials[$device_unit_id])
						&&
					$request->display_supplies_credentials[$device_unit_id] == 1 ? 1 : 0;
				$device_unit->display_supplies_credentials = $display_supplies_credentials;
				$device_unit->supplies_login = ($display_supplies_credentials == 1) ? $request->device_unit_supplies_login[$device_unit_id] : '';
				$device_unit->supplies_password = ($display_supplies_credentials == 1) ? $request->device_unit_supplies_password[$device_unit_id] : '';
				 
				// Service portal link
				$service_portal_link =
					isset($request->service_portal_link[$device_unit_id])
						&&
					$request->service_portal_link[$device_unit_id] == 'alt_link' ? 'alt_link' : 'system_link'; 
				$device_unit->use_alt_service_link = ($service_portal_link == 'alt_link') ? 1 : 0;
				$device_unit->service_portal_link = ($service_portal_link == 'alt_link') ? $request->device_unit_service_portal_link_url[$device_unit_id] : '';
				
				$display_service_credentials =
					isset($request->display_service_credentials[$device_unit_id])
						&&
					$request->display_service_credentials[$device_unit_id] == 1 ? 1 : 0;
				$device_unit->display_service_credentials = $display_service_credentials;
				$device_unit->service_login = ($display_service_credentials == 1) ? $request->device_unit_service_login[$device_unit_id] : '';
				$device_unit->service_password = ($display_service_credentials == 1) ? $request->device_unit_service_password[$device_unit_id] : '';
								
				$device_unit->base_cost = $request->device_unit_base_cost[$device_unit_id];  
				$device_unit->color_included = $request->device_unit_color_included[$device_unit_id];  
				$device_unit->mono_included = $request->device_unit_mono_included[$device_unit_id];  
				$device_unit->cost_per_color = $request->device_unit_cost_per_color[$device_unit_id];  
				$device_unit->cost_per_mono = $request->device_unit_cost_per_mono[$device_unit_id];  
				$device_unit->escalation_percentage = $request->device_unit_escalation_percentage[$device_unit_id];  
				
				$device_unit->save();
				
				$service_provider_id = $request->device_unit_service_provider[$device_unit_id];
				$supply_provider_id = $request->device_unit_supply_provider[$device_unit_id];
				$service_provider = ServiceProvider::find($service_provider_id);
				$supply_provider = SupplyProvider::find($supply_provider_id);
				
				if ($service_provider != null) {
					$service_provider->device_units()->save($device_unit);
				}
				if ($supply_provider != null) {
					$supply_provider->device_units()->save($device_unit);
				}
				
				$device_unit_supply_item_units_prices = $request->device_unit_supply_item_units_prices;
							
				if (
					count( $device_unit_supply_item_units_prices ) > 0
						&&
					array_key_exists($device_unit_id, $device_unit_supply_item_units_prices)
						&&
					count($device_unit_supply_item_units_prices[$device_unit_id]) > 0
				) {
					foreach ($device_unit_supply_item_units_prices[$device_unit_id] as $supply_item_id => $supply_item_unit_price) {
						$supply_item_unit = SupplyItemUnit::where([
							['device_unit_id', '=', $device_unit_id],
							['supply_item_id', '=', $supply_item_id],
						])->first();
						 
						if ($supply_item_unit == null) {
							$supply_item_unit = new SupplyItemUnit;	
							$supply_item_unit->price = $supply_item_unit_price;
							$supply_item_unit->device_unit_id = 0;
							$supply_item_unit->supply_item_id = 0;
							$supply_item_unit->save();						
							
							$device_unit = DeviceUnit::find($device_unit_id);
							$device_unit->supply_item_units()->save($supply_item_unit);
							$supply_item = SupplyItem::find($supply_item_id);
							$supply_item->supply_item_units()->save($supply_item_unit);
						} else {							
							$supply_item_unit->price = $supply_item_unit_price; 
							$supply_item_unit->save();
						}
					}
				}
			}
		} 
		
		$location->friendly_name = $request->location_friendly_name[$location->id];
		$location->address = $request->location_address[$location->id];
		$location->city = $request->location_city[$location->id];
		$location->state = $request->location_state[$location->id];
		$location->zip_code = $request->location_zip_code[$location->id];
		$location->special_instructions = $request->location_special_instructions[$location->id];
		$location->manual_meter_reads_entry =
			isset($request->location_manual_meter_reads_entry[$location->id])
				&&
			$request->location_manual_meter_reads_entry[$location->id] == 'on' ? 1 : 0; 
		
		if ($location->company->same_main_location == '1') {
			$company = Company::find($location->company->id);
			$company->address = $request->location_address[$location->id];
			$company->city = $request->location_city[$location->id];
			$company->state = $request->location_state[$location->id];
			$company->zip_code = $request->location_zip_code[$location->id];
			$company->save();
		}
		$location->save();
		
		$input_users = $request->users; 
		if (count($input_users) > 0) {
			foreach ($input_users as $user_id => $input_user) {
							
				$user = User::find($user_id); 
				$user->name = $input_user['name'];
				//$user->email = $input_user['email'];
				$user->phone = $input_user['phone'];
				$user->save();
				
			}
		}
		
		return back();	
    }
		
    /**
     * Delete location
     * @param Location $location
     * @return \Illuminate\Http\Response
     */
    public function delete_location(Location $location)
    {
		$location->delete();
		 
		return back();	
    }
	
}