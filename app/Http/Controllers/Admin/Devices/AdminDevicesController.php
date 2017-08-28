<?php

namespace App\Http\Controllers\Admin\Devices;
 
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\File;

use App\Device; 
use App\DeviceUnit;
use App\SupplyItem;
use App\SupplyItemUnit;
use App\VideoLink;

class AdminDevicesController extends Controller
{
    /**
     * Show devices list
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function devices(Request $request)
    {
		$devices = Device::get();
		
        return view('admin.devices.devices',
			[
				'devices' => $devices
			]
		);
    }
	
    /**
     * Redirect 
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function redirect_to_edit_or_remove_device(Request $request)
    {		
		$device_id = $request->device_id;
		
		if (!is_null($request->edit_button)) {		
			return redirect()->route('edit_device',
				[
					'device_id' => $device_id
				]
			);	
		} 
		if (!is_null($request->remove_button)) {
			$device = Device::with('supply_items')->find($device_id);
			$device_model = $device->model;		
			
			$device_units = DeviceUnit::where('device_id', $device_id)->get();			
			foreach($device_units as $device_unit) {
				$device_unit->delete();
			}
					
			foreach($device->supply_items as $supply_item) {
				$device->supply_items()->detach($supply_item->id);
				$supply_item_units = SupplyItemUnit::where('supply_item_id', $supply_item->id)->get();			
				foreach($supply_item_units as $supply_item_unit) {
					$supply_item_unit->delete();
				}
				$supply_item->delete();
			}
			
			$device->delete();
			
			return back()->with('device_removed', 'Device "' . $device_model . '" was removed successfully');  ;
		}   
    }
	
    /**
     * Create new device
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function create_device(Request $request)
    {		
		$device = new Device;
		$device->model = 'New Device'; 	
		$device->save(); 		
		 
        return redirect()->route('edit_device',
			[
				'device_id' => $device->id
			]
		);	  
    }

    /**
     * Edit device
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function edit_device(Request $request, $device_id)
    {			
		$device = Device::with('supply_items')->find($device_id); 
		
        return view('admin.devices.edit_device',
			[
				'device' => $device
			]
		);
    }
	
    /**
     * Save device
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function save_device(Request $request, Device $device)
    {  		
		$device->type = $request->device_type;
		$device->make = $request->device_make;
		$device->model = $request->device_model;
		$device->friendly_name = $request->device_friendly_name;
		
		if ($request->hasFile('device_photo_url')) {
			$file = $request->file('device_photo_url');		
			$file_name = $file->getClientOriginalName();
			$path = base_path().'/storage/images/';
			$file->move($path, $file_name); 
			$device->photo_url = $file_name;
		}
		
		if (count($request->video_links) > 0 ){
			foreach($request->video_links as $video_link_id => $video_link_to_save) {
				$video_link = VideoLink::find($video_link_id); 
				$video_link->link = $video_link_to_save['link'];
				$video_link->save();	
			}
		}
		if (count($request->supply_items) > 0 ){
			foreach($request->supply_items as $supply_item_id => $supply_item_to_save) {
				
				$supply_item = SupplyItem::find($supply_item_id); 
				$supply_item->name = $supply_item_to_save['name'];
				$supply_item->item_number = $supply_item_to_save['item_number'];
				$supply_item->page_yield = $supply_item_to_save['page_yield'];
				$supply_item->description = $supply_item_to_save['description'];
				$supply_item->save();			
			}
		}
		
		$device->save();
		
		return back();
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
		$device->supply_items()->save($supply_item);
		
		return back();
	}
	
}