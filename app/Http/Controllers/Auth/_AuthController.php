<?php

namespace App\Http\Controllers\Auth;

use App\User;
use Validator;
use Auth; 
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;

class AuthController extends Controller
{
    use AuthenticatesAndRegistersUsers, ThrottlesLogins;

    /**
     * Handle an authentication attempt.
     *
     * @return Response
     */
    public function authenticate()
    {	
        if (Auth::attempt(['email' => $email, 'password' => $password])) { 
            return redirect()->intended('dashboard');
        }
    }
}