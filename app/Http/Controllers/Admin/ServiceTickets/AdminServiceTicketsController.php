<?php

namespace App\Http\Controllers\Admin\ServiceTickets;
 
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\ServiceTicket; 

class AdminServiceTicketsController extends Controller
{
    /**
     * Show service tickets list
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
		$service_tickets = ServiceTicket::with('location.company', 'company')->orderBy('id', 'desc')->get();
		
        return view('admin.service_tickets.service_tickets',
			[
				'service_tickets' => $service_tickets
			]
		);
    }	
}