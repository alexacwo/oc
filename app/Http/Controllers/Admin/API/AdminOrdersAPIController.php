<?php

namespace App\Http\Controllers\Admin\API;
 
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Order; 

class AdminOrdersAPIController extends Controller
{
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
		
		if(count($company->users) < 3) {
			
			$user_email = $request->user_email;	
			$user_exists = User::where('email', $user_email)->first();
			
			if (!$user_exists) {
				$raw_password = uniqid(); 
				
				$new_user_data = array(
					'user_email' => $user_email,
					'raw_password' => $raw_password,
					'admin_email' => Auth::user()->email
				);

				$role = Role::where('name', 'company')->first();
				
				$user = new User;
				$user->name = 'New user';
				$user->email = $user_email;
				$user->password = Hash::make($raw_password);
				$user->role_id = $role->id;
				$user->company()->associate($company_id); 			
				$company->users()->save($user);
				
				Mail::send(
					'emails.send_login_credentials',
					$new_user_data,
					function ($message) use ($new_user_data) {
						$message->from('noreply@pahoda.com', 'Pahoda Image Products');
						$message->to('12toydolls46@gmail.com')->subject('Login credentials for a new user ( ' . $new_user_data['user_email'] . ' )');
					}
				);	
				
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
				'message' => 'No more than 3 users allowed.'
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
		
		if(count($location->users) < 3) {
			
			$user_email = $request->user_email;
			$user_exists = User::where('email', $user_email)->first();
			
			if (!$user_exists) {
				$raw_password = uniqid(); 
				
				$new_user_data = array(
					'user_email' => $user_email,
					'raw_password' => $raw_password,
					'admin_email' => Auth::user()->email
				);

				$user = new User;
				$user->name = 'New user';
				$user->email = $user_email;
				$role = Role::where('name', 'location')->first();
				$user->role_id = $role->id;
				$user->password = $raw_password;
				$user->location()->associate($location_id);
				$user->save();
				
				Mail::send(
					'emails.send_login_credentials',
					$new_user_data,
					function ($message) use ($new_user_data) {
						$message->from('noreply@pahoda.com', 'Pahoda Image Products');
						$message->to('12toydolls46@gmail.com')->subject('Login credentials for a new user ( ' . $new_user_data['user_email'] . ' )');
					}
				);	
				
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
				'message' => 'No more than 3 users allowed.'
			]);			
		}
    }
	
    /**
     * Update order status
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function update_order_status(Request $request, Order $order)
    {	
		if (!is_null($request->tracking_no)) $order->tracking_no = $request->tracking_no;
		$order->status = $request->status;
		$order->save();		
		
        return response()->json([
			'status' => 'success'
		]);
    }
	
    /**
     * Save tracking number
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function save_tracking_number(Request $request, Order $order)
    {	
		$order->tracking_no = $request->tracking_no;
		$order->save();		
		
        return response()->json([
			'status' => 'success'
		]);
    }
	
}