<?php

namespace App\Providers;

use Illuminate\Contracts\Auth\User;
use Illuminate\Contracts\Auth\UserProvider;

abstract class CustomUserProvider implements UserProvider  {

	protected $model;

	public function __construct(UserContract $model)
	{
		$this->model = $model;
	}

    /**
     * Retrieve a user by their unique identifier.
     *
     * @param  mixed  $identifier
     * @return \Illuminate\Contracts\Auth\Authenticatable|null
     */
	public function retrieveById($identifier)
	{
		// TODO: Implement retrieveById() method.

		$qry = User::where('admin_id','=',$identifier);

		if($qry->count() >0)
		{
			$user = $qry->select('admin_id', 'username', 'first_name', 'last_name', 'email', 'password')->first();

			$attributes = array(
				'id' => $user->admin_id,
				'username' => $user->username,
				'password' => $user->password,
				'name' => $user->first_name . ' ' . $user->last_name,
			);

			return $user;
		}
		return null;
	}

 
 

}