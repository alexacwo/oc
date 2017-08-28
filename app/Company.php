<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    protected $fillable = [
        'company_name',
		'city',
		'state',
		'zip_code',
		'same_main_location'
    ];
	
    /**
     * Get the users that manage this company.
     */
    public function users()
    {
        return $this->hasMany('App\User');
    }
	
	/**
     * Get the locations for this company
     */
    public function locations()
    {
        return $this->hasMany('App\Location');
    }

	/**
     * Get the proposed device items associated with this company
     */
    public function proposed_device_units()
    {
        return $this->hasMany('App\ProposedDeviceUnit');
    }

}
