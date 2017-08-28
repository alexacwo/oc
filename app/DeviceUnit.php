<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DeviceUnit extends Model
{
    protected $fillable = [
		'supply_provider_id',
		'friendly_name',
		'asset_number',
        'serial_number',
		'lease_expiration',
		'needs_meter_reads',
		'use_alt_supplies_link',
		'supplies_portal_link',
		'display_supplies_credentials',
		'supplies_login',
		'supplies_password',
		'display_service_credentials',
		'service_login',
		'service_password',
		'base_cost',
		'color_included',
		'mono_included',
		'cost_per_color',
		'cost_per_mono',
		'escalation_percentage'
		
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
	
	/**
     * Get the order that belongs to this device unit
     */
    public function order()
    {
        return $this->hasMany('App\Order');
    }
	
	/**
     * Get the service provider that owns this device unit
     */
    public function service_provider()
    {
        return $this->belongsTo('App\ServiceProvider');
    }
	
	/**
     * Get the supply provider that owns this device unit
     */
    public function supply_provider()
    {
        return $this->belongsTo('App\SupplyProvider');
    }

	/**
     * Supply item unit that is associated with this device
     */
    public function supply_item_units()
    {
        return $this->hasMany('App\SupplyItemUnit');
    }

	/**
     * Meter reads that belong to this item
     */
    public function meter_reads()
    {
        return $this->hasMany('App\MeterRead');
    }

}
