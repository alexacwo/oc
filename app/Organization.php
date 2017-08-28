<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Organization extends Model
{
    protected $fillable = [
        'company_name',
		'city',
		'state',
		'zip_code'
    ];
	
    /**
     * Get the user that owns the company.
     */
    public function user()
    {
        return $this->belongsTo('App\User');
    }
	
	/**
     * Get the contacts for this organization
     */
    public function contacts()
    {
        return $this->hasMany('App\Contact');
    }
	
	/**
     * Get the locations for this organization
     */
    public function locations()
    {
        return $this->hasMany('App\Location');
    }

}
