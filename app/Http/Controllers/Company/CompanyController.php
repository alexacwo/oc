<?php

namespace App\Http\Controllers\Company;
 
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth; 
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Collection;

use App\User; 
use App\Company; 
use App\Location;
use App\Device; 
use App\DeviceUnit; 
use App\ProposedDeviceUnit; 
use App\Order; 
use App\ServiceTicket; 
use App\MeterRead; 

class CompanyController extends Controller
{
    /**
     * Show company index page.
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request, $company_id)
    {
		$company = Company::with('locations')->find($company_id);
		
		$devices = Device::all();
		
        return view('company.index', [
            'company' => $company,
            'devices' => $devices
        ]);
    }
	
    /**
     * Show location index page
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function location_index(Request $request, $company_id, $location_id)
    {
		$location = Location::with('device_units', 'device_units.device', 'device_units.location')
			->find($location_id);
		
		$needs_meter_reads = false;
		foreach ($location->device_units as $device_unit) {
			if ($device_unit->needs_meter_reads == 1) {
				$needs_meter_reads = true;
				continue;
			}
		}
		
		$orders = Order::with('supply_items')
			->where('location_id', $location_id)
			->orderBy('id','desc')
			->get();
		
		$user_email = Auth::user()->email;
		$user_password = Crypt::decryptString(Auth::user()->enc_password);
		
        return view('company.location.index', [
            'location' => $location,
            'orders' => $orders,
			'needs_meter_reads' => $needs_meter_reads,
			'user_email' => $user_email,
			'user_password' => $user_password
        ]);
    }
	
    /**
     * Show supplies page
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function need_supplies(Request $request, $company_id, $location_id = null)
    {
		$device_unit_id = $request->device_unit_id;		
		$device_unit = DeviceUnit::with('device', 'supply_item_units')->find($device_unit_id);
		
		if ($location_id != null) {
			$location = Location::with('device_units', 'device_units.device')->find($location_id);
			
			$needs_meter_reads = false;
			foreach ($location->device_units as $single_device_unit) {
				if ($single_device_unit->needs_meter_reads == 1) {
					$needs_meter_reads = true;
					continue;
				}
			}
			
			return view('company.location.need_supplies', [
				'location' => $location,
				'device_unit' => $device_unit,
				'prices' => array(),
				'needs_meter_reads' => $needs_meter_reads
			]);
		} else {
			$company = Company::find($company_id);
			
			return view('company.need_supplies', [
				'company' => $company,
				'device_unit' => $device_unit,
				'prices' => array()
			]);
		}
    }	
	
    /**
     * Submit order
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function submit_order(Request $request)
    {
		$company_id = $request->company_id;
		$location_id = is_null($request->location_id) ? null : $request->location_id;
		$device_unit_id = $request->device_unit_id;
		$supply_items = $request->supply_items;
		
		$use_alt_address = $request->use_alt_address;
		
		$order = new Order;
		$order->ordered_by = Auth::user()->email;
		$order->status = 'placed';
		$order->device_unit()->associate($device_unit_id); 
		if (!is_null($location_id)) {
			$order->location()->associate($location_id); 
		} else {
			$order->company()->associate($company_id);
		}
		
		if ($use_alt_address) {
			$order->use_alt_address = 1;
			$order->alt_address_addr = $request->alt_address_addr;
			$order->alt_address_attn = $request->alt_address_attn;
			$order->alt_address_city = $request->alt_address_city;
			$order->alt_address_state = $request->alt_address_state;
			$order->alt_address_zip = $request->alt_address_zip;
		} 
		$order->save();
		$order->supply_items()->attach($supply_items); 	
		
		if (!is_null($location_id)) {
			return redirect()->route('location_index',
				[
					'company_id' => $company_id,
					'location_id' => $location_id
				]
			)->with('order_message', 'Thanks! Your order was submitted.');
		} else { 
			return redirect()->route('company_index',
				[
					'company_id' => $company_id
				]
			)->with('order_message', 'Thanks! Your order was submitted.');
		}
    }
	
    /**
     * Show service page
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function need_service(Request $request, $company_id, $location_id = null)
    {
		$device_unit_id = $request->device_unit_id;
		$device_unit = DeviceUnit::with('device', 'supply_item_units', 'service_provider')->find($device_unit_id);
		
		if (count ($device_unit->device->video_links) > 0) {
			foreach ($device_unit->device->video_links as &$video_link) {
				if (strpos($video_link->link, 'youtube')) {
					$youtube_video_id_pos = strpos($video_link->link, 'v=');
					$youtube_video_id = substr($video_link->link, $youtube_video_id_pos + 2);
					$video_link->image = 'https://img.youtube.com/vi/' . $youtube_video_id . '/0.jpg';
				}
			}
		}
		
		if ($location_id != null) {
			$location = Location::with('device_units', 'device_units.device')->find($location_id);
		
			return view('company.location.need_service', [
				'location' => $location,
				'device_unit' => $device_unit
			]);
		} else {
			$company = Company::find($company_id);
			
			return view('company.need_service', [ 
				'company' => $company,
				'device_unit' => $device_unit
			]);
		}
    }
	
    /**
     * Submit service ticket
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function submit_service_ticket(Request $request)
    {
		$company_id = $request->company_id;
		$location_id = is_null($request->location_id) ? null : $request->location_id;
		$description = $request->description;
		$error_codes = $request->error_codes;
		
		$service_ticket = new ServiceTicket;
		if (!is_null($location_id)) {
			$service_ticket->location()->associate($location_id); 
		} else {
			$service_ticket->company()->associate($company_id);
		}
		
		$service_ticket->description = $description; 
		$service_ticket->error_codes = $error_codes; 
		$service_ticket->save();
		
		if (!is_null($location_id)) {
			return redirect()->route('location_index',
				[
					'company_id' => $company_id,
					'location_id' => $location_id
				]
			)->with('order_message', 'Thanks! Your service ticket was submitted.');
		} else {
			return redirect()->route('company_index',
				[
					'company_id' => $company_id
				]
			)->with('order_message', 'Thanks! Your service ticket was submitted.');
		}
    }
	
    /**
     * Submit meter reads page
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function submit_meter_reads_page(Request $request, $company_id, $location_id)
    {		
		$location = Location::with('device_units', 'device_units.device')->find($location_id);
				
		$device_units_needing_meter_reads = array();
		foreach ($location->device_units as $device_unit) {
			if ($device_unit->needs_meter_reads == 1) {
				$device_units_needing_meter_reads[] = $device_unit;
			}
		}
		
        return view('company.location.submit_meter_reads', [
            'location' => $location,
            'device_units_needing_meter_reads' => $device_units_needing_meter_reads
        ]);
    }
	
    /**
     * Submit meter reads
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function submit_meter_reads(Request $request, $company_id, $location_id)
    {		 
		$config_files = $request->file('config_files');
		$meter_read_values = $request->meter_reads;
		 
		if (count($config_files) > 0) {
			
			foreach ($config_files as $device_unit_id => $config_file) {
				if(
					$config_file != null
						||
					(
						$meter_read_values[$device_unit_id]['color'] != null
							&&
						$meter_read_values[$device_unit_id]['mono'] != null
					)
				) 
				{					  
					$meter_read = new MeterRead;
					if($meter_read_values[$device_unit_id]['color'] != null) $meter_read->color = $meter_read_values[$device_unit_id]['color'];
					if($meter_read_values[$device_unit_id]['mono'] != null) $meter_read->mono = $meter_read_values[$device_unit_id]['mono'];
						
					$config_file_name = $config_file->getClientOriginalName();
					$path = base_path().'/storage/config_files/';
					$config_file->move($path, $config_file_name);  
					$meter_read->config_file = $config_file_name;
					
					$meter_read->device_unit()->associate($device_unit_id);
					
					$meter_read->save();
					 
					$device_unit = DeviceUnit::find($device_unit_id);
					$device_unit->needs_meter_reads = 0;
					$device_unit->save(); 
				}
			}
		}
		
		$location = Location::with('device_units', 'device_units.device')->find($location_id);
		$device_units_needing_meter_reads = array();
		foreach ($location->device_units as $device_unit) {
			if ($device_unit->needs_meter_reads == 1) {
				$device_units_needing_meter_reads[] = $device_unit;
			}
		}
		
		if (count($device_units_needing_meter_reads) > 0) {
			return redirect()->route('submit_meter_reads_page',
				[
					'company_id' => $company_id,
					'location_id' => $location_id
				]
			);
		} else {
			return redirect()->route('location_index',
				[
					'company_id' => $company_id,
					'location_id' => $location_id
				]
			)->with('order_message', 'Thanks! Meter reads were submitted.');
		}
    }
	
    /**
     * Save login credentials
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function save_login_credentials(Request $request, $company_id, $location_id)
    {		 
		$user_password = $request->user_password;
		$user = Auth::user();
		
		$user->enc_password = Crypt::encryptString($user_password);
		$user->save();
		
        return back();
	}
	
    /**
     * Search for the device
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function search_for_the_device(Request $request, $company_id)
    {		
		$search_device_text = $request->copier_name;
		
		$company = Company::find($company_id);
		
		$device_units = DeviceUnit::with('location', 'device', 'supply_provider', 'service_provider')
			->whereHas('device', function ($query) use ($search_device_text) {
				$query->where('model', 'like',  '%' . $search_device_text . '%');
			})
			->orWhere('serial_number', 'like', '%' . $search_device_text . '%')
			->get(); 
		
        return view('company.search_results', [
			'company' => $company,
			'device_units' => $device_units
        ]);
	}
	
    /**
     * Add new device unit
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function add_new_device_unit(Request $request, $company_id)
    {		
		$device_id = $request->device_id;
		$location_id = $request->location_id;
		
		//$device = Device::find($device_id);
		//$location = Location::find($location_id);
		
		$proposed_device_unit = new ProposedDeviceUnit;
		
		if (!is_null($device_id)) {
			$proposed_device_unit->device_id = $device_id; 
			if (!is_null($location_id)) {
				$proposed_device_unit->location_id = $location_id; 
				$proposed_device_unit->company_id = $company_id; 
			
				$proposed_device_unit->friendly_name = $request->device_friendly_name;
				$proposed_device_unit->friendly_name = $request->device_friendly_name;
				
				$proposed_device_unit->friendly_name = $request->device_friendly_name;
				$proposed_device_unit->asset_number = $request->device_asset_number;
				$proposed_device_unit->serial_number = $request->device_serial_number;
				
				$proposed_device_unit->save();
		
				return redirect()->route('company_index',
					[
						'company_id' => $company_id
					]
				)->with('order_message', 'Thanks! New device information was submitted to the administrator.');
			}
		}
		
		return redirect()->route('company_index',
			[
				'company_id' => $company_id
			]
		)->with('order_message', 'Sorry, there was some error processing your request.');
		
				
	}
}