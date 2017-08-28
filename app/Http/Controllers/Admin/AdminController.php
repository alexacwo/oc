<?php

namespace App\Http\Controllers\Admin;
 
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;
use App\Notifications\InvitationToWebsite;

use App\User; 
use App\DeviceUnit;
use App\SupplyProvider; 
use App\ServiceProvider;  

class AdminController extends Controller
{
    /**
     * Show index page.
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
	 
    public function index(Request $request)
    {
		$user = Auth::user();
		
		$users = User::orderBy('id', 'desc')->get();
		
		foreach($users as $single_user) {
			$single_user->dec_password = Crypt::decryptString($single_user->enc_password);
		}
		
        return view('admin.index',
			[
				'user' => $user,
				'users' => $users
			]
		);
    }
	
    /**
     * Save user credentials
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
	 
    public function save_user_credentials(Request $request, User $user)
    {
		$password = $request->password;
		
		$enc_password = Crypt::encryptString($password);
		
		$user->enc_password = $enc_password;
		$user->save(); 
		
        return back();
    }
	
    /**
     * Send invitation to the website
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
	 
    public function send_invitation(Request $request, User $user)
    {
		$user->notify(new InvitationToWebsite( $request->email, $request->password ));
		 
        return back();
    }
	
    /**
     * Search for the device
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
	 
    public function search_for_the_device(Request $request)
    { 			
		$search_device_text = $request->copier_name;
		
		$device_units = DeviceUnit::with('location.company', 'device', 'supply_provider', 'service_provider')
		->whereHas('device', function ($query) use ($search_device_text) {
			$query->where('model', 'like',  '%' . $search_device_text . '%');
		})
		->orWhere('serial_number', 'LIKE', '%' . $search_device_text . '%')
		->get();

		$supply_providers = SupplyProvider::get();
		$service_providers = ServiceProvider::get();
		
        return view('admin.search_results', [
			'device_units' => $device_units,
			'supply_providers' => $supply_providers,
			'service_providers' => $service_providers
        ]);
    }
	
}