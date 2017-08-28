<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SupplyItem extends Model
{
    protected $fillable = [
		'item_number',
		'name',
		'description',
		'page_yield'
	];

	/**
     * Get the devices associated with this supply item
     */
    public function devices()
    {
        return $this->belongsToMany('App\Device');
    }

	/**
     * Supply item unit that belong to this item
     */
    public function supply_item_units()
    {
        return $this->hasMany('App\SupplyItemUnit');
    }

	/**
     * Orders that belong to this item
     */
    public function orders()
    {
        return $this->belongsToMany('App\Order');
    }

}
