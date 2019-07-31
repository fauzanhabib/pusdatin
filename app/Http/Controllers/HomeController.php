<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }


    public function testing()
    {
        $datas = DB::connection('mysql_testing')->select('select * from wilayah_2018 limit 90000, 10000');
        // dd($datas);

        // $postgre = DB::connection('pgsql')->select('select * from wilayah limit 20');
        // dd($postgre);

        $con2 = DB::connection('pgsql');
        foreach ($datas as $key => $data) {
            // dd($data->kode);

            $now = Carbon::now('Asia/Jakarta');
            $scope = 0;
            $keterangan = '';
            if(strlen($data->kode) == 2) {
                $scope = 1;
                $keterangan = 'Provinsi';
            }
            if(strlen($data->kode) == 5) {
                $scope = 2;
                $keterangan = 'Kabupaten / Kota';
            }
            if(strlen($data->kode) == 8) {
                $scope = 3;
                $keterangan = 'Kecamatan';
            }
            if(strlen($data->kode) == 13) {
                $scope = 4;
                $keterangan = 'Kelurahan';
            }
            $con2->insert('insert into wilayah (kode, nama, scope, keterangan, created_at, updated_at) values (?, ?, ?, ?, ?, ?)', [
                "".$data->kode,
                "".$data->nama,
                "".$scope,
                "".$keterangan,
                $now,
                $now
            ]);

        }
    }
}
