<?php

namespace App\Http\Controllers\Admin\API;
 
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Device;
use App\SupplyItem;
use App\VideoLink;
use App\DeviceUnit;
use App\ServiceProvider;
use App\SupplyProvider;

class AdminDevicesAPIController extends Controller
{
     /**
     * Display a listing of the supply items
     *
     * @return Response
     */
    public function get_supply_items(Request $request, $device_id)
    {
		$supply_items = SupplyItem::with('devices')->whereHas('devices', function($query) use ($device_id) {
			$query->where('devices.id', '=', $device_id);
		})->get();
		
        return response()->json([
			'supply_items' => $supply_items
		]);
    }
	
    /**
     * Add supply item to device
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function add_supply_item_to_device(Request $request, Device $device)
    {  		
		$supply_item = new SupplyItem;
		$supply_item->name = 'New supply item'; 
		$supply_item->item_number = '';
		$supply_item->page_yield = 0;
		$supply_item->description = '';
		$device->supply_items()->save($supply_item);
		
        return response()->json([
			'status' => 'success',			
			'supply_item' => $supply_item
		]);
	}
	
    /**
     * Delete supply item
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function delete_supply_item(Request $request, SupplyItem $supply_item)
    {  	
		foreach($supply_item->supply_item_units as $supply_item_unit) {
			$supply_item_unit->delete();
		}
		foreach($supply_item->orders as $order) {
			$order->supply_items()->detach($supply_item->id);
		}
		foreach($supply_item->devices as $device) {
			$device->supply_items()->detach($supply_item->id);
		}
		$supply_item->delete();
		
        return response()->json([
			'status' => 'success'
		]);
	}
	
     /**
     * Get video links for this device
     *
     * @return Response
     */
    public function get_video_links(Request $request, $device_id)
    {
		$video_links = VideoLink::where('device_id', $device_id)->get();
		
        return response()->json([
			'video_links' => $video_links
		]);
    }
	
    /**
     * Add video link to device
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function add_video_link_to_device(Request $request, Device $device)
    {  		
		$video_link = new VideoLink;
		$video_link->device()->associate($device->id); 
		$video_link->save();
		
        return response()->json([
			'status' => 'success',			
			'video_link' => $video_link
		]);
	}
	
    /**
     * Remove video link
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function remove_video_link(Request $request, VideoLink $video_link)
    {  		
		$video_link->delete();
		
        return response()->json([
			'status' => 'success'
		]);
	}
	
    /**
     * Edit device unit
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function edit_device_unit(Request $request, DeviceUnit $device_unit)
    {  	
		$device_unit_data = $request->device_unit_data;
		
		$device_unit->friendly_name = $device_unit_data['friendly_name'];
		$device_unit->serial_number = $device_unit_data['serial_number'];
		$device_unit->base_cost = $device_unit_data['base_cost'];
		$device_unit->color_included = $device_unit_data['color_included'];
		$device_unit->mono_included = $device_unit_data['mono_included'];
		$device_unit->cost_per_color = $device_unit_data['cost_per_color'];
		$device_unit->cost_per_mono = $device_unit_data['cost_per_mono'];
		$device_unit->escalation_percentage = $device_unit_data['escalation_percentage'];
		$device_unit->lease_expiration = $device_unit_data['lease_expiration'];
		
		$service_provider_id = $device_unit_data['service_provider']['id'];
		$supply_provider_id = $device_unit_data['supply_provider']['id'];
		$service_provider = ServiceProvider::find($service_provider_id);
		$supply_provider = SupplyProvider::find($supply_provider_id);
		
		if ($service_provider != null) {
			$service_provider->device_units()->save($device_unit);
		}
		if ($supply_provider != null) {
			$supply_provider->device_units()->save($device_unit);
		}
		
		$device_unit->save();
		
        return response()->json([
			'status' => 'success',
			'data' => $device_unit_data
		]);
	}
	
}