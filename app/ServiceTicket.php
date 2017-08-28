<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ServiceTicket extends Model
{
    protected $fillable = [
		'description', 'error_codes'
	];
	
    /**
     * Get the location that owns the service ticket
     */
    public function location()
    {
        return $this->belongsTo('App\Location');
    }
	
    /**
     * Get the company that owns the service ticket
     */
    public function company()
    {
        return $this->belongsTo('App\Company');
    }
}
