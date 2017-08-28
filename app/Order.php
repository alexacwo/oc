<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable = [
		'status'
	];	
	
    /**
     * Get the location that owns the order
     */
    public function location()
    {
        return $this->belongsTo('App\Location');
    }
	
    /**
     * Get the company that owns the order
     */
    public function company()
    {
        return $this->belongsTo('App\Company');
    }
	
    /**
     * Get the device unit that owns the order
     */
    public function device_unit()
    {
        return $this->belongsTo('App\DeviceUnit');
    }
	
    /**
     * Get the supply items that belong to this order
     */
    public function supply_items()
    {
        return $this->belongsToMany('App\SupplyItem');
    }
}
