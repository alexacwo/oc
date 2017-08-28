<?php

namespace App\Http\Controllers\Admin\ServiceProviders;
 
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\DeviceUnit;
use App\ServiceProvider;

class AdminServiceProvidersController extends Controller
{
    /**
     * Show service providers list
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
		$service_providers = ServiceProvider::get();
		
        return view('admin.service_providers.service_providers',
			[
				'service_providers' => $service_providers
			]
		);
    }
	
    /**
     * Create new service provider
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function create_service_provider(Request $request)
    {		
		$service_provider = new ServiceProvider;
		$service_provider->name = 'New service provider'; 	
		$service_provider->save(); 		
		 
        return redirect()->route('edit_service_provider',
			[
				'service_provider_id' => $service_provider->id
			]
		);	  
    }
	
    /**
     * Redirect 
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function redirect_to_edit_service_provider(Request $request)
    {		
		$service_provider_id = $request->service_provider_id;
		
        return redirect()->route('edit_service_provider',
			[
				'service_provider_id' => $service_provider_id
			]
		);	  
    }

    /**
     * Edit service provider
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function edit_service_provider(Request $request, $service_provider_id)
    {			
		$service_provider = ServiceProvider::find($service_provider_id); 
		
        return view('admin.service_providers.edit_service_provider',
			[
				'service_provider' => $service_provider
			]
		);
    }
	
	/**
     * Save service provider
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function save_service_provider(Request $request, ServiceProvider $service_provider)
    {  		
		$service_provider->name = $request->service_provider_name;	
		$service_provider->contact_person_name = $request->service_provider_contact_person_name;	
		$service_provider->contact_person_email = $request->service_provider_contact_person_email;	
		$service_provider->contact_person_phone = $request->service_provider_contact_person_phone;	
		$service_provider->address = $request->service_provider_address;	
		$service_provider->city = $request->service_provider_city;	
		$service_provider->state = $request->service_provider_state;	
		$service_provider->zip_code = $request->service_provider_zip_code;		
		
		$service_provider->save();
		
		return back();
	}
	

}