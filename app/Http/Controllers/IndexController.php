<?php

namespace App\Http\Controllers;
 
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class IndexController extends Controller
{
    /**
     * Show index page.
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
	 
    public function index(Request $request)
    {
		$user = Auth::user();
		
		if($user) {			
			if( $user->hasRole('admin')) {	
				return redirect()->intended('/admin');
			} 
			if( $user->hasRole('company')) {
				return redirect('company/' . $user->company->id);
			} 
			if( $user->hasRole('location')) {
				return redirect('company/' . $user->location->company->id . '/location/' . $user->location->id);
			} 
		} else {
			return redirect()->route('login');
		}
    }
}