<?php

namespace App\Http\Controllers\Admin\Companies;
 
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth; 
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Mail;
use App\Notifications\LoginCredentials;
 
use App\User; 
use App\Role; 
use App\Company; 
use App\Contact; 
use App\Location; 
use App\Device; 
use App\DeviceItem; 

class AdminCompaniesController extends Controller
{
    /**
     * Show companies list
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function companies(Request $request)
    {
		$companies = Company::get();
		
        return view('admin.companies.companies',
			[
				'companies' => $companies
			]
		);
    }	
	
    /**
     * Redirect 
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function redirect_to_edit_or_remove_company(Request $request)
    {		
		$company_id = $request->company_id;
		
		if (!is_null($request->edit_button)) {		
			return redirect()->route('edit_company',
				[
					'company_id' => $company_id
				]
			);	
		} 
		if (!is_null($request->remove_button)) {
			$company = Company::with(
				'users',
				'locations',
				'locations.orders',
				'locations.service_tickets',
				'locations.device_units.supply_item_units', 
				'locations.device_units.meter_reads'
			)->find($company_id);
			$company_name = $company->company_name;		
					
			foreach($company->users as $user) {
				$user->delete();
			}
			
			foreach($company->locations as $location) {			
			
				foreach($location->orders as $order) {					
					$order->delete();
				}
				foreach($location->service_tickets as $service_ticket) {					
					$service_ticket->delete();
				}
				foreach($location->device_units as $device_unit) {	
					foreach($device_unit->supply_item_units as $supply_item_unit) {					
						$supply_item_unit->delete();
					}
					foreach($device_unit->meter_reads as $meter_read) {					
						$meter_read->delete();
					}
					$device_unit->delete();
				}
				
				$location->delete();
			}
			
			$company->delete();
			
			return back()->with('company_removed', 'Company "' . $company_name . '" was removed successfully');  ;
		}     
    }

    /**
     * Create new company
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function create_company(Request $request)
    {	
		$user_email = $request->user_email;
		$user_exists = User::where('email', $user_email)->first();
		
		if (!$user_exists) {
			$raw_password = uniqid(); 
					
			$admin_user = Auth::user();
			$admin_user->notify(new LoginCredentials( 'new company (' . $user_email . ' )', $user_email, $raw_password )); 
			
			$company = new Company;
			$company->company_name = 'New company'; 		
			$company->save();
			
			$user = new User;
			$role = Role::where('name', 'company')->first();
			$user->role_id = $role->id;	 
			$user->name = 'New user';
			$user->email = $user_email;	
			$user->password = ''; // Hash::make($raw_password);			
			$user->enc_password = Crypt::encryptString($raw_password);
			
			$user->company()->associate($company->id); 			
			$company->users()->save($user);	
			 
			return redirect()->route('edit_company',
				[
					'company_id' => $company->id
				]
			);
		} else {
			return back()->with('error', 'User with this email already exists in the system.');  
		}
    }

    /**
     * Edit company
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function edit_company(Request $request, $company_id)
    {		
		$company = Company::with('users')->find($company_id);
		
		if (!is_null($company)) {
			return view('admin.companies.edit_company',
				[
					'company' => $company
				]
			);
		} else {
			 return redirect()->route('admin_companies');
		}
    }
	
    /**
     * Save company information
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function save_company(Request $request, $company_id)
    {	 
		$company = Company::find($company_id);
		
		$response_status = 'success';
		$response_message = '';
		
		$company->display_zoho_link =
			isset($request->company_display_zoho_link)
				&&
			$request->company_display_zoho_link == 'on' ? 1 : 0; 
		$company->company_name = $request->company_name;
		$company->address = $request->company_address;
		$company->city = $request->company_city;   
		$company->zip_code = $request->company_zip_code; 
		$company->state = $request->company_state; 
				
		$same_main_location = $request->same_main_location;
		
		if ($same_main_location == 'on') {
			$company->same_main_location = '1'; 
			 
			if (count($company->locations) == 0) {
				$location = new Location;			
				$location->friendly_name = (!is_null($request->company_city) && !($request->company_city == '')) ? $request->company_city : $request->company_name . ' location';
			} else {
				$location = $company->locations[0];
			}
			
			$location->address = $request->company_address;
			$location->city = $request->company_city;   
			$location->zip_code = $request->company_zip_code; 
			$location->state = $request->company_state; 
			$location->company()->associate($company); 
			$location->save();
		} else {			
			$company->same_main_location = '0';
		}
		
		$input_users = $request->users; 
		if (count($input_users) > 0) {
			foreach ($input_users as $user_id => $input_user) {
							
				$user = User::find($user_id); 
				$user->name = $input_user['name'];
				$user->phone = $input_user['phone'];
				if ($same_main_location == 'on') $user->location()->associate($location); 
				$user->save();
				
			}
		}
		
		$company->save();
		
		$response_message .= ' Company data was saved successfully';
		 
        return redirect()->route('edit_company',
			[
				'company_id' => $company_id
			]
		)->with([
			'response_message' => $response_message,
			'response_status' => $response_status
		]);
    }	
	
}