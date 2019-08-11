<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Food extends Model
{
    public function getNamaBrowseAttribute()
    {
        return $this->nama ?? '-';
    }
    
    public function getNamaReadAttribute()
    {
        return 'Nama Kamu';
    }
    
    public function getNamaAddAttribute()
    {
        return 'Tambah Nama Kamu';
    }

    public function getNamaEditAttribute()
    {
        return 'Ubah Nama Kamu';
    }
}
