<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    protected $fillable = [
        'friendly_name',
        'address',
        'city',
		'state',
		'zip_code',
		'special_instructions',
		'manual_meter_reads_entry'
    ];
	
    /**
     * Get the users that manage this location.
     */
    public function users()
    {
        return $this->hasMany('App\User');
    }
	
    /**
     * Get the orders that belong to this location.
     */
    public function orders()
    {
        return $this->hasMany('App\Order');
    }
	
    /**
     * Get service tickets that belong to this location.
     */
    public function service_tickets()
    {
        return $this->hasMany('App\ServiceTicket');
    }
	
    /**
     * Get the company that owns the location.
     */
    public function company()
    {
        return $this->belongsTo('App\Company');
    }
	
    /**
     * Get the device items associated with this location.
     */
    public function device_units()
    {
        return $this->hasMany('App\DeviceUnit');
    }

	/**
     * Get the proposed device items associated with this location
     */
    public function proposed_device_units()
    {
        return $this->hasMany('App\ProposedDeviceUnit');
    }
}
