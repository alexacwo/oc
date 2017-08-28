<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DeviceItem extends Model
{
    protected $fillable = [
		'asset_number',
        'serial_number',
		'lease_expiration'
	];

	/**
     * Device that owns this item
     */
    public function device()
    {
        return $this->belongsTo('App\Device');
    }
	
	/**
     * Get the location that owns this device item.
     */
    public function location()
    {
        return $this->belongsTo('App\Location');
    }

}
