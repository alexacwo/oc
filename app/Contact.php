<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $fillable = [
        'name',
		'email',
		'phone'
    ];
	
    /**
     * Get the company that owns the contact.
     */
    public function company()
    {
        return $this->belongsTo('App\Company');
    }
	
    /**
     * Get the location that owns the contact.
     */
    public function location()
    {
        return $this->belongsTo('App\Location');
    }

}
