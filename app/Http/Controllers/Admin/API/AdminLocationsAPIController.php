<?php

namespace App\Http\Controllers\Admin\API;
 
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Location; 
use App\Device; 
use App\DeviceUnit;
use App\ProposedDeviceUnit;

class AdminLocationsAPIController extends Controller
{
     /**
     * Display a listing of the device units
     *
     * @return Response
     */
    public function get_device_units(Request $request, $company_id)
    {
		$device_units_by_location_id = array();
		
		$device_units = DeviceUnit::with('location', 'device.supply_items.supply_item_units', 'service_provider', 'supply_provider')->whereHas('location', function($query) use ($company_id) {
			$query->where('locations.company_id', '=', $company_id);
		})->get();
		
		foreach($device_units as $device_unit) {
			$location_id = $device_unit->location_id;
			
			$device_unit_id = $device_unit->id;
			if (count($device_unit->device->supply_items) > 0) {
				$device_unit->device->sorted_supply_item_units =
				(is_null($device_unit->device->sorted_supply_item_units)) ? new \stdClass : $device_unit->device->sorted_supply_item_units;		
				foreach($device_unit->device->supply_items as $supply_item) {
					
					if (!property_exists($device_unit->device->sorted_supply_item_units, $device_unit_id)) {
						$device_unit->device->sorted_supply_item_units->{$device_unit_id} = array();
					}
				 
					$price = 0;
					if (count($supply_item->supply_item_units) > 0) {
						foreach ($supply_item->supply_item_units as $supply_item_unit) {
							if ($supply_item_unit->device_unit_id == $device_unit_id) {
								$supply_item_id = $supply_item->id;
								$price = $supply_item_unit->price; 
								$device_unit->device->sorted_supply_item_units->{$device_unit_id}[$supply_item_id] = $price;
								continue;
							}
						}
					}				 
				} 
			}
			
			$device_units_by_location_id[$location_id][] = $device_unit;
		}
		
        return response()->json([
			'device_units_by_location_id' => $device_units_by_location_id
		]);
    }
	
	/**
     * Display a listing of the proposed device units
     *
     * @return Response
     */
    public function get_proposed_device_units(Request $request, $company_id)
    {
		$proposed_device_units_by_location_id = array();
		
		$proposed_device_units = ProposedDeviceUnit::with('location', 'device')->whereHas('location', function($query) use ($company_id) {
			$query->where('locations.company_id', '=', $company_id);
		})->get();
		
		foreach($proposed_device_units as $proposed_device_unit) {
			$location_id = $proposed_device_unit->location_id;
			
			$proposed_device_units_by_location_id[$location_id][] = $proposed_device_unit;
		}
		
        return response()->json([
			'proposed_device_units_by_location_id' => $proposed_device_units_by_location_id
		]);
    }
	
     /**
     * Add the device unit to the location
     *
     * @return Response
     */
    public function add_device_unit_to_location(Request $request, Location $location)
    {
		$device_id = $request->device_id;
		
		$device = Device::find($device_id);
		$device_unit = new DeviceUnit;
		$device_unit->location_id = $location->id;
		$device_unit->use_alt_supplies_link = 0;
		$device_unit->use_alt_service_link = 0;
		
		$device_unit->display_supplies_credentials = 0;
		$device_unit->display_service_credentials = 0;
		
		$device->device_units()->save($device_unit);
		
        return response()->json([
			'status' => 'success',			
			'device_unit' => $device_unit,			
			'device_model' => $device->model
		]);		
    }
	
     /**
     * Confirm proposed device unit
     *
     * @return Response
     */
    public function confirm_proposed_device_unit(Request $request, ProposedDeviceUnit $proposed_device_unit)
    {
		$device_unit = new DeviceUnit;
		
		$device_unit->location_id = $proposed_device_unit->location_id;
		$device_unit->device_id = $proposed_device_unit->device_id;
		$device_unit->friendly_name = $proposed_device_unit->friendly_name;
		$device_unit->asset_number = $proposed_device_unit->asset_number;
		$device_unit->serial_number = $proposed_device_unit->serial_number;
		
		if ($device_unit->save()) {
			$proposed_device_unit->delete();
		}
		
        return response()->json([
			'status' => 'success'
		]);		
    } 
	
     /**
     * Remove proposed device unit
     *
     * @return Response
     */
    public function remove_proposed_device_unit(Request $request, ProposedDeviceUnit $proposed_device_unit)
    {
		$proposed_device_unit->delete();
		
        return response()->json([
			'status' => 'success'
		]);		
    }
	
     /**
     * Remove device unit
     *
     * @return Response
     */
    public function remove_device_unit(Request $request, DeviceUnit $device_unit)
    {
		$device_unit->delete();
		
        return response()->json([
			'status' => 'success'
		]);		
    } 
	
}