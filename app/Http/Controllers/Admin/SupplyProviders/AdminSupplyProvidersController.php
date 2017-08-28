<?php

namespace App\Http\Controllers\Admin\SupplyProviders;
 
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\DeviceUnit;
use App\SupplyProvider;

class AdminSupplyProvidersController extends Controller
{
    /**
     * Show supply providers list
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
		$supply_providers = SupplyProvider::get();
		
        return view('admin.supply_providers.supply_providers',
			[
				'supply_providers' => $supply_providers
			]
		);
    }
	
    /**
     * Create new supply provider
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function create_supply_provider(Request $request)
    {		
		$supply_provider = new SupplyProvider;
		$supply_provider->name = 'New supply provider'; 	
		$supply_provider->save(); 		
		 
        return redirect()->route('edit_supply_provider',
			[
				'supply_provider_id' => $supply_provider->id
			]
		);	  
    }
	
    /**
     * Redirect 
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function redirect_to_edit_supply_provider(Request $request)
    {		
		$supply_provider_id = $request->supply_provider_id;
		
        return redirect()->route('edit_supply_provider',
			[
				'supply_provider_id' => $supply_provider_id
			]
		);	  
    }

    /**
     * Edit supply provider
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function edit_supply_provider(Request $request, $supply_provider_id)
    {			
		$supply_provider = SupplyProvider::find($supply_provider_id); 
		
        return view('admin.supply_providers.edit_supply_provider',
			[
				'supply_provider' => $supply_provider
			]
		);
    }
	  /**
     * Save supply provider
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function save_supply_provider(Request $request, SupplyProvider $supply_provider)
    {  		
		$supply_provider->name = $request->supply_provider_name;	
		$supply_provider->contact_person_name = $request->supply_provider_contact_person_name;	
		$supply_provider->contact_person_email = $request->supply_provider_contact_person_email;	
		$supply_provider->contact_person_phone = $request->supply_provider_contact_person_phone;	
		$supply_provider->address = $request->supply_provider_address;	
		$supply_provider->city = $request->supply_provider_city;	
		$supply_provider->state = $request->supply_provider_state;	
		$supply_provider->zip_code = $request->supply_provider_zip_code;		
		
		$supply_provider->save();
		
		return back();
	}
	

}