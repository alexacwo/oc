<?php

namespace App\Http\Controllers\Company\API;
 
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

use App\Location; 
use App\Device; 
use App\DeviceUnit;

class CompanyLocationsAPIController extends Controller
{
     /**
     * Save device unit friendly name
     *
     * @return Response
     */
    public function save_device_unit_friendly_name ( Request $request, $company_id, DeviceUnit $device_unit)
    {	
		$device_unit->friendly_name = $request->device_unit_friendly_name;
		$device_unit->save();
		
        return response()->json([
			'status' => 'success'
		]);		
    }
	
    /**
     * Change supplies credentials
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function change_supplies_credentials(Request $request, $company_id, DeviceUnit $device_unit)
    {	
		$device_unit->supplies_login 
		= $request->login;
		$device_unit->supplies_password = $request->password;
		$device_unit->save();
		
        return response()->json([
			'status' => 'success'
		]);	
	}
	
    /**
     * Change service credentials
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function change_service_credentials(Request $request, $company_id, DeviceUnit $device_unit)
    {	
		$device_unit->service_login = $request->login;
		$device_unit->service_password = $request->password;
		$device_unit->save();
		
        return response()->json([
			'status' => 'success'
		]);	
	}
	
    /**
     * Get devices info for a company
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function get_devices_info(Request $request, $company_id)
    {	
		$device_units = DeviceUnit::with('location')
			->whereIn('location_id', function($query) use ($company_id)
			{
				$query->select('id')
					  ->from('locations')
					  ->where('locations.company_id', $company_id);
			})
			//->toSql()
			->get();
			/*DB::enableQueryLog();
		dd(DB::getQueryLog());*/
		
        return response()->json([
			'status' => 'success',
			'device_units' => $device_units
		]);	
	}
}