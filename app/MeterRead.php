<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MeterRead extends Model
{
    protected $fillable = [
		'color',
		'mono',
		'config_file'
	];

	/**
     * Device unit that owns this meter read
     */
    public function device_unit()
    {
        return $this->belongsTo('App\DeviceUnit');
    }
}
