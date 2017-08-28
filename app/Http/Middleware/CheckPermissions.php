<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class CheckPermissions
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {  
		$user = Auth::user();
		
		if ($user) {
			if (
					$user->hasRole('admin')
					|| 
					( $user->hasRole('company') && $request->route('company_id') == $user->company->id )
					|| 
					( $user->hasRole('location') && $request->route('location_id') == $user->location->id ) 
				)
			{
				return $next($request);
			} else {
				return redirect()->route('index');		
				// die("You're not authorized to view this page");
			}
		} else {
			return redirect()->route('login')->with('auth_error_message', 'Please login to view internal pages.');
		}
    }
}
