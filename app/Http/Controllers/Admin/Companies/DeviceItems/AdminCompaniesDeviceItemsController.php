<?php

namespace App\Http\Controllers\Admin\Companies\Locations;
 
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

use App\User; 
use App\Company; 
use App\Location; 

class AdminCompaniesDeviceItemsController extends Controller
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
		$user_id = $request->input('company_user_id');
		
		$company = User::find($user_id)->company; 
		
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
		$company = Company::with('locations')->find($company_id); 
		$locations = Location::orderBy('id', 'desc')->get();
		
        return view('admin.companies.edit_locations',
			[
				'companies' => $companies,
				'company' => $company,
				'locations' => $locations
			]
		);
    }
	
    /**
     * Add location to company
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function add_location(Request $request, $company_id)
    {
		$company = Company::find($company_id);		
		$location = new Location; 
		$company->locations()->save($location);
		
		return back();	
    }
	
    /**
     * Save location info
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function save_location(Request $request, Location $location)
    {
		$location->address = $request->location_address[$location->id];
		$location->city = $request->location_city[$location->id];
		$location->state = $request->location_state[$location->id];
		$location->zip_code = $request->location_zip_code[$location->id];
		$location->save();
		
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