<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProposedDeviceUnit extends Model
{
    protected $fillable = [
		'friendly_name',
		'asset_number',
        'serial_number'
	];

	/**
     * Device that owns this proposed item
     */
    public function device()
    {
        return $this->belongsTo('App\Device');
    }
	
	/**
     * Get the location that owns this proposed device item.
     */
    public function location()
    {
        return $this->belongsTo('App\Location');
    }
	
	/**
     * Get the company that created this proposed device item
     */
    public function company()
    {
        return $this->belongsTo('App\Company');
    }
}
