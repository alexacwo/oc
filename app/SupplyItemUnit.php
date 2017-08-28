<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SupplyItemUnit extends Model
{
    protected $fillable = [
		'price'
	];

	/**
     * Device unit that owns this unit
     */
    public function device_unit()
    {
        return $this->belongsTo('App\DeviceUnit');
    }
	
	/**
     * Supply items that own this unit
     */
    public function supply_items()
    {
        return $this->belongsTo('App\SupplyItem');
    }

}
