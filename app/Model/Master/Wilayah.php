<?php

namespace App\Model\Master;

use Illuminate\Database\Eloquent\Model;


class Wilayah extends Model
{
    public $additional_attributes = ['display_name'];

    public function getDisplayNameAttribute()
    {
        return "{$this->kode} - {$this->nama}";
    }
}
