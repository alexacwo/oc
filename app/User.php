<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'phone', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * A company that owns this user
     *
     * @return \Illuminate\Database\Eloquent\Relations\OneToOne
     */
    public function company()
	{
		return $this->belongsTo('App\Company');
    }

    /**
     * Location that owns this user
     *
     * @return \Illuminate\Database\Eloquent\Relations\OneToOne
     */
    public function location()
	{
		return $this->belongsTo('App\Location');
    }
	
    /**
     * A user can have one role
     *
     * @return \Illuminate\Database\Eloquent\Relations\belongsTo
     */
    public function role() {

        return $this->belongsTo('App\Role');
    }
	
	
    /**
     * Check if user has specific role
     *
     * @return boolean
     */
	public function hasRole($roleName)
    {
		if ($this->role->name == $roleName) {
            {
                return true;
            }
        }

        return false;
    }

}
