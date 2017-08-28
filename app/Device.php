<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Device extends Model
{
    protected $fillable = [
		'type',
        'make',
		'model',
		'photo_url'
    ];

	/**
     * Get the device items associated with this device
     */
    public function device_units()
    {
        return $this->hasMany('App\DeviceUnit');
    }

	/**
     * Get the proposed device items associated with this device
     */
    public function proposed_device_units()
    {
        return $this->hasMany('App\ProposedDeviceUnit');
    }

	/**
     * Get the supply items associated with this device
     */
    public function supply_items()
    {
        return $this->belongsToMany('App\SupplyItem');
    }

	/**
     * Get the video links associated with this device
     */
    public function video_links()
    {
        return $this->hasMany('App\VideoLink');
    }
}
