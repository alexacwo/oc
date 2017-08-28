<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VideoLink extends Model
{
    protected $fillable = [
		'link'
	];

	/**
     * Get the devices associated with this supply item
     */
    public function device()
    {
        return $this->belongsTo('App\Device');
    }

}
