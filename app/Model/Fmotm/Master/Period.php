<?php

namespace App\Model\Fmotm\Master;

use Illuminate\Database\Eloquent\Model;


class Period extends Model
{
    public $additional_attributes = ['display_name'];

    public function getDisplayNameAttribute()
    {
        if($this->periode == '-'){
            return "-";
        }
        return "{$this->periode} - {$this->tahun}";
    }
}
