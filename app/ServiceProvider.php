<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ServiceProvider extends Model
{
    protected $fillable = [
		'name',
		'contact_person_name',
		'contact_person_email',
		'contact_person_phone',
		'address',
		'city',
		'state',
		'zip_code'
	];
	
	/**
     * Get the device units accociated with this supply provider
     */
    public function device_units()
    {
        return $this->hasMany('App\DeviceUnit');
    }

}
