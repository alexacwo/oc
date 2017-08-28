<?php

namespace App\Http\Controllers\Admin\Orders;
 
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Order; 

class AdminOrdersController extends Controller
{
    /**
     * Show orders list
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
		$placed_orders = Order::with('supply_items', 'location.company', 'company', 'device_unit.device')
			->where('status', 'placed')
			->orderBy('id', 'desc')
			->get();
		$ordered_orders = Order::with('supply_items', 'location.company', 'company', 'device_unit.device')
			->where('status', 'ordered')
			->orderBy('id', 'desc')
			->get(); 
		$shipped_orders = Order::with('supply_items', 'location.company', 'company', 'device_unit.device')
			->where('status', 'shipped')
			->orderBy('id', 'desc')
			->get(); 
		
        return view('admin.orders.orders',
			[
				'placed_orders' => $placed_orders,
				'ordered_orders' => $ordered_orders,
				'shipped_orders' => $shipped_orders
			]
		);
    }
}