<?php

namespace App\Http\Controllers\Admin\API;
 
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth; 
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Mail;
use App\Notifications\LoginCredentials;

use App\User; 
use App\Company;
use App\Location;
use App\Role; 

class AdminUsersAPIController extends Controller
{
    /**
     * Get users for the current company
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function get_users_for_current_company(Request $request)
    {	
		/*
		$user = User::find($request->current_user_id); 
	 
		$company = $user->company;  
		*/
		
		$company_users = Company::find($request->current_company_id)->users;
		
        return response()->json([
			'company_users' => $company_users
		]);
    }

    /**
     * Get users for the current company locations
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function get_users_for_current_company_locations(Request $request)
    {
		$locations = Company::find($request->current_company_id)->locations;
		
		$location_users = array();
		
		foreach ($locations as $location) {
			$location_users[$location->id] = $location->users;
		}
		
        return response()->json([
			'location_users' => $location_users
		]);
    }

    /**
     * Save user for the current company
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function save_company_users(Request $request)
    {	
		$company_id = $request->company_id;		
		$users_to_save = $request->users;
		
		foreach($users_to_save as $user_to_save) {
			
			$user = User::find($user_to_save['id']); 
			$user->name = isset($user_to_save['name']) ? $user_to_save['name'] : '';
			$user->email = isset($user_to_save['email']) ? $user_to_save['email'] : '';
			$user->phone = isset($user_to_save['phone']) ? $user_to_save['phone'] : '';
			$user->save();
		}
		
        return response()->json([
			'status' => 'success',
			'message' => 'User data was saved successfully.',
		]);
    }
	
    /**
     * Add new user to the company
     * @param  Request $request
     * @return \Illuminate\Http\Response
     */
    public function add_new_company_user(Request $request)
    {
		$company_id = $request->company_id;
		
		$company = Company::find($company_id); 
		
		if(count($company->users) < 4) {
			
			$user_email = $request->user_email;	
			$user_exists = User::where('email', $user_email)->first();
			
			if (!$user_exists) {
				$raw_password = uniqid(); 
				
				$admin_user = Auth::user();
				$admin_user->notify(new LoginCredentials( 'new company (' . $user_email . ' )', $user_email, $raw_password )); 

				$role = Role::where('name', 'company')->first();
				
				$user = new User;
				$user->name = 'New user';
				$user->email = $user_email;
				$user->password = ''; // Hash::make($raw_password);			
				$user->enc_password = Crypt::encryptString($raw_password);
				$user->role_id = $role->id;
				$user->company()->associate($company_id); 			
				$company->users()->save($user);
				
				return response()->json([
					'status' => 'success',
					'message' => 'User added successfully.',
					'user' => $user
				]);
			} else {
				return response()->json([
					'status' => 'error',
					'message' => 'User with this email already exists in the system.'
				]);
			}
		} else {
			return response()->json([
				'status' => 'error',
				'message' => 'No more than 4 users allowed.'
			]);			
		}
    }
	
    /**
     * Add new user to the location
     * @param  Request $request
     * @return \Illuminate\Http\Response
     */
    public function add_new_location_user(Request $request)
    {
		$location_id = $request->location_id;
		
		$location = Location::find($location_id); 
		
		if(count($location->users) < 4) {
			
			$user_email = $request->user_email;
			$user_exists = User::where('email', $user_email)->first();
			
			if (!$user_exists) {
				$raw_password = uniqid(); 
				
				$admin_user = Auth::user();
				$admin_user->notify(new LoginCredentials( 'new company (' . $user_email . ' )', $user_email, $raw_password )); 

				$user = new User;
				$user->name = 'New user';
				$user->email = $user_email;
				$role = Role::where('name', 'location')->first();
				$user->role_id = $role->id;
				$user->password = ''; // Hash::make($raw_password);			
				$user->enc_password = Crypt::encryptString($raw_password);
				$user->location()->associate($location_id);
				$user->save();
				
				return response()->json([
					'status' => 'success',
					'message' => 'User added successfully.',
					'user' => $user
				]);
			} else {
				return response()->json([
					'status' => 'error',
					'message' => 'User with this email already exists in the system.'
				]);				
			}
		
		} else {
			return response()->json([
				'status' => 'error',				
				'message' => 'No more than 4 users allowed.'
			]);			
		}
    }

    /**
     * Delete user from the database
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function remove_user(Request $request, User $user)
    {	
		$user->delete();
		
        return response()->json([
			'status' => 'success',
			'message' => 'User was removed successfully.',
		]);
    }
	
}