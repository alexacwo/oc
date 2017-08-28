<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SupplyProvider extends Model
{
    protected $fillable = [
		'name'
	];
	
	/**
     * Get the device units accociated with this supply provider
     */
    public function device_units()
    {
        return $this->hasMany('App\DeviceUnit');
    }

}
