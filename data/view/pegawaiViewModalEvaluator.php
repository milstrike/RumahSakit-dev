<?php

/* 
 * Copyright (C) 2015 milstrike
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

//include "../my-conf.php";

include "dataExtractor.php";

$userRole = $_SESSION['role'];
$userID = $_SESSION['id_usr'];
$params = $_SESSION['levelparameter'];


switch($userRole){
    case 2:
        viewUserRole2();
        break;
    
    case 4:
        viewUserRole4($params);
        break;
    
    case 6:
        viewUserRole6($params);
        break;
    
    case 8:
        viewUserRole8($params);
        break;
}


function viewUserRole2(){

$parameter = $_SESSION['params'];
$counter = 1;
$sql = "select data_pegawai.nama as nama, data_pegawai.nip as nip, data_pegawai.golongan as golongan, data_pegawai.jabatan as jabatan, data_pegawai.kelompok as kelompok, data_pegawai.satker as satker, data_pegawai.pendidikan as pendidikan, data_pegawai.sertifikasi as sertifikasi, data_pegawai.perangkat as perangkat, data_pegawai.tanggal_masuk as tanggal_masuk  from user, user_detail, data_pegawai where (user.id=user_detail.id) and (user_detail.nama = data_pegawai.nama) and user.level=4";
$query = mysql("u6799722_rumahsakit_dev", $sql);
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $nama = $row["nama"];
        $nip = $row["nip"];
        $golongan = $row["golongan"];
        $satker = $row["satker"];
        $jabatan = $row["jabatan"];
        $kelompok = $row["kelompok"];
        $pendidikan = $row["pendidikan"];
        $sertifikasi = $row["sertifikasi"];
        $perangkat = $row["perangkat"];
        $tanggal_masuk = $row["tanggal_masuk"];
        
        $golongan = golongan($golongan);
        $satker = satker($satker);
        $jabatan = jabatan($jabatan);
        $kelompok = kelompok($kelompok);
        $pendidikan = pendidikan($pendidikan);
        $sertifikasi = sertifikasi($sertifikasi);
        $risk_level = risk($perangkat);
        $emergency_level = emergency($perangkat);
        $perangkat = perangkat($perangkat);
        $masaKerja = lamaKerja($tanggal_masuk);
        
        echo 
            "
            <div id='detail".$counter."' class='modal hide'' tabindex='-1' role='dialog' aria-labelledby='UserDetail".$counter."' aria-hidden='true'>
            <div class='modal-header' style='background-color: #149bdf;'>
            <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
            <h3 id='myModalLabel' style='color: #fff;'>Detail Data Pegawai</h3>
            </div>
            <div class='modal-body'>
                <table width='100%' border='0' cellpadding='5' cellspacing='5'>
                    <tr>
                        <td width='30%'>Nama Pegawai</td>
                        <td width='1%'>:</td>
                        <td width='61%'>".$nama."</td>
                    </tr>
                    <tr>
                        <td>Nomor Induk Pegawai</td>
                        <td>:</td>
                        <td>".$nip."</td>
                    </tr>
                    <tr>
                        <td>Golongan</td>
                        <td>:</td>
                        <td>".$golongan."</td>
                    </tr>
                    <tr>
                        <td>Satuan Kerja</td>
                        <td>:</td>
                        <td>".$satker."</td>
                    </tr>
                    <tr>
                        <td>Jabatan Struktural</td>
                        <td>:</td>
                        <td>".$jabatan."</td>
                    </tr>
                    <tr>
                        <td>Kelompok</td>
                        <td>:</td>
                        <td>".$kelompok."</td>
                    </tr>
                    <tr>
                        <td>Tingkat Pendidikan</td>
                        <td>:</td>
                        <td>".$pendidikan."</td>
                    </tr>
                    <tr>
                        <td>Sertifikasi</td>
                        <td>:</td>
                        <td>".$sertifikasi."</td>
                    </tr>
                    <tr>
                        <td>Unit</td>
                        <td>:</td>
                        <td>".$perangkat."</td>
                    </tr>
                    <tr>
                        <td>Level Risiko</td>
                        <td>:</td>
                        <td>".$risk_level."</td>
                    </tr>
                    <tr>
                        <td>Level Emergensi</td>
                        <td>:</td>
                        <td>".$emergency_level."</td>
                    </tr>
                    <tr>
                        <td>Tanggal Masuk</td>
                        <td>:</td>
                        <td>".$tanggal_masuk."</td>
                    </tr>
                    <tr>
                        <td>Masa Kerja</td>
                        <td>:</td>
                        <td>".$masaKerja." Tahun</td>
                    </tr>
                </table>
            </div>
            <div class='modal-footer'>
            <button class='btn btn-info' data-dismiss='modal' aria-hidden='true'>Tutup</button>
            </div>
            </div>";
        $counter = $counter + 1;
    }
}
    
}

function viewUserRole4($params){
$counter = 1;
$sql = "select data_pegawai.nama as nama, data_pegawai.nip as nip, data_pegawai.golongan as golongan, data_pegawai.jabatan as jabatan, data_pegawai.kelompok as kelompok, data_pegawai.satker as satker, data_pegawai.pendidikan as pendidikan, data_pegawai.sertifikasi as sertifikasi, data_pegawai.perangkat as perangkat, data_pegawai.tanggal_masuk as tanggal_masuk  from user, user_detail, data_pegawai where (user.id=user_detail.id) and (user_detail.nama = data_pegawai.nama) and (".$params.")";
$query = mysql("u6799722_rumahsakit_dev", $sql);
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $nama = $row["nama"];
        $nip = $row["nip"];
        $golongan = $row["golongan"];
        $satker = $row["satker"];
        $jabatan = $row["jabatan"];
        $kelompok = $row["kelompok"];
        $pendidikan = $row["pendidikan"];
        $sertifikasi = $row["sertifikasi"];
        $perangkat = $row["perangkat"];
        $tanggal_masuk = $row["tanggal_masuk"];
        
        $golongan = golongan($golongan);
        $satker = satker($satker);
        $jabatan = jabatan($jabatan);
        $kelompok = kelompok($kelompok);
        $pendidikan = pendidikan($pendidikan);
        $sertifikasi = sertifikasi($sertifikasi);
        $risk_level = risk($perangkat);
        $emergency_level = emergency($perangkat);
        $perangkat = perangkat($perangkat);
        $masaKerja = lamaKerja($tanggal_masuk);
        
        echo 
            "
            <div id='detail".$counter."' class='modal hide'' tabindex='-1' role='dialog' aria-labelledby='UserDetail".$counter."' aria-hidden='true'>
            <div class='modal-header' style='background-color: #149bdf;'>
            <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
            <h3 id='myModalLabel' style='color: #fff;'>Detail Data Pegawai</h3>
            </div>
            <div class='modal-body'>
                <table width='100%' border='0' cellpadding='5' cellspacing='5'>
                    <tr>
                        <td width='30%'>Nama Pegawai</td>
                        <td width='1%'>:</td>
                        <td width='61%'>".$nama."</td>
                    </tr>
                    <tr>
                        <td>Nomor Induk Pegawai</td>
                        <td>:</td>
                        <td>".$nip."</td>
                    </tr>
                    <tr>
                        <td>Golongan</td>
                        <td>:</td>
                        <td>".$golongan."</td>
                    </tr>
                    <tr>
                        <td>Satuan Kerja</td>
                        <td>:</td>
                        <td>".$satker."</td>
                    </tr>
                    <tr>
                        <td>Jabatan Struktural</td>
                        <td>:</td>
                        <td>".$jabatan."</td>
                    </tr>
                    <tr>
                        <td>Kelompok</td>
                        <td>:</td>
                        <td>".$kelompok."</td>
                    </tr>
                    <tr>
                        <td>Tingkat Pendidikan</td>
                        <td>:</td>
                        <td>".$pendidikan."</td>
                    </tr>
                    <tr>
                        <td>Sertifikasi</td>
                        <td>:</td>
                        <td>".$sertifikasi."</td>
                    </tr>
                    <tr>
                        <td>Unit</td>
                        <td>:</td>
                        <td>".$perangkat."</td>
                    </tr>
                    <tr>
                        <td>Level Risiko</td>
                        <td>:</td>
                        <td>".$risk_level."</td>
                    </tr>
                    <tr>
                        <td>Level Emergensi</td>
                        <td>:</td>
                        <td>".$emergency_level."</td>
                    </tr>
                    <tr>
                        <td>Tanggal Masuk</td>
                        <td>:</td>
                        <td>".$tanggal_masuk."</td>
                    </tr>
                    <tr>
                        <td>Masa Kerja</td>
                        <td>:</td>
                        <td>".$masaKerja." Tahun</td>
                    </tr>
                </table>
            </div>
            <div class='modal-footer'>
            <button class='btn btn-info' data-dismiss='modal' aria-hidden='true'>Tutup</button>
            </div>
            </div>";
        $counter = $counter + 1;
    }
}
}

function viewUserRole6($params){
$counter = 1;
$sql = "select data_pegawai.nama as nama, data_pegawai.nip as nip, data_pegawai.golongan as golongan, data_pegawai.jabatan as jabatan, data_pegawai.kelompok as kelompok, data_pegawai.satker as satker, data_pegawai.pendidikan as pendidikan, data_pegawai.sertifikasi as sertifikasi, data_pegawai.perangkat as perangkat, data_pegawai.tanggal_masuk as tanggal_masuk  from user, user_detail, data_pegawai where (user.id=user_detail.id) and (user_detail.nama = data_pegawai.nama) and (".$params.")";
$query = mysql("u6799722_rumahsakit_dev", $sql);
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $nama = $row["nama"];
        $nip = $row["nip"];
        $golongan = $row["golongan"];
        $satker = $row["satker"];
        $jabatan = $row["jabatan"];
        $kelompok = $row["kelompok"];
        $pendidikan = $row["pendidikan"];
        $sertifikasi = $row["sertifikasi"];
        $perangkat = $row["perangkat"];
        $tanggal_masuk = $row["tanggal_masuk"];
        
        $golongan = golongan($golongan);
        $satker = satker($satker);
        $jabatan = jabatan($jabatan);
        $kelompok = kelompok($kelompok);
        $pendidikan = pendidikan($pendidikan);
        $sertifikasi = sertifikasi($sertifikasi);
        $risk_level = risk($perangkat);
        $emergency_level = emergency($perangkat);
        $perangkat = perangkat($perangkat);
        $masaKerja = lamaKerja($tanggal_masuk);
        
        echo 
            "
            <div id='detail".$counter."' class='modal hide'' tabindex='-1' role='dialog' aria-labelledby='UserDetail".$counter."' aria-hidden='true'>
            <div class='modal-header' style='background-color: #149bdf;'>
            <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
            <h3 id='myModalLabel' style='color: #fff;'>Detail Data Pegawai</h3>
            </div>
            <div class='modal-body'>
                <table width='100%' border='0' cellpadding='5' cellspacing='5'>
                    <tr>
                        <td width='30%'>Nama Pegawai</td>
                        <td width='1%'>:</td>
                        <td width='61%'>".$nama."</td>
                    </tr>
                    <tr>
                        <td>Nomor Induk Pegawai</td>
                        <td>:</td>
                        <td>".$nip."</td>
                    </tr>
                    <tr>
                        <td>Golongan</td>
                        <td>:</td>
                        <td>".$golongan."</td>
                    </tr>
                    <tr>
                        <td>Satuan Kerja</td>
                        <td>:</td>
                        <td>".$satker."</td>
                    </tr>
                    <tr>
                        <td>Jabatan Struktural</td>
                        <td>:</td>
                        <td>".$jabatan."</td>
                    </tr>
                    <tr>
                        <td>Kelompok</td>
                        <td>:</td>
                        <td>".$kelompok."</td>
                    </tr>
                    <tr>
                        <td>Tingkat Pendidikan</td>
                        <td>:</td>
                        <td>".$pendidikan."</td>
                    </tr>
                    <tr>
                        <td>Sertifikasi</td>
                        <td>:</td>
                        <td>".$sertifikasi."</td>
                    </tr>
                    <tr>
                        <td>Unit</td>
                        <td>:</td>
                        <td>".$perangkat."</td>
                    </tr>
                    <tr>
                        <td>Level Risiko</td>
                        <td>:</td>
                        <td>".$risk_level."</td>
                    </tr>
                    <tr>
                        <td>Level Emergensi</td>
                        <td>:</td>
                        <td>".$emergency_level."</td>
                    </tr>
                    <tr>
                        <td>Tanggal Masuk</td>
                        <td>:</td>
                        <td>".$tanggal_masuk."</td>
                    </tr>
                    <tr>
                        <td>Masa Kerja</td>
                        <td>:</td>
                        <td>".$masaKerja." Tahun</td>
                    </tr>
                </table>
            </div>
            <div class='modal-footer'>
            <button class='btn btn-info' data-dismiss='modal' aria-hidden='true'>Tutup</button>
            </div>
            </div>";
        $counter = $counter + 1;
    }
}
}

function viewUserRole8($params){
$counter = 1;
$sql = "select * from data_pegawai where ".$params."";
$query = mysql("u6799722_rumahsakit_dev", $sql);
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $nama = $row["nama"];
        $nip = $row["nip"];
        $golongan = $row["golongan"];
        $satker = $row["satker"];
        $jabatan = $row["jabatan"];
        $kelompok = $row["kelompok"];
        $pendidikan = $row["pendidikan"];
        $sertifikasi = $row["sertifikasi"];
        $perangkat = $row["perangkat"];
        $tanggal_masuk = $row["tanggal_masuk"];
        
        $golongan = golongan($golongan);
        $satker = satker($satker);
        $jabatan = jabatan($jabatan);
        $kelompok = kelompok($kelompok);
        $pendidikan = pendidikan($pendidikan);
        $sertifikasi = sertifikasi($sertifikasi);
        $risk_level = risk($perangkat);
        $emergency_level = emergency($perangkat);
        $perangkat = perangkat($perangkat);
        $masaKerja = lamaKerja($tanggal_masuk);
        
        echo 
            "
            <div id='detail".$counter."' class='modal hide'' tabindex='-1' role='dialog' aria-labelledby='UserDetail".$counter."' aria-hidden='true'>
            <div class='modal-header' style='background-color: #149bdf;'>
            <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
            <h3 id='myModalLabel' style='color: #fff;'>Detail Data Pegawai</h3>
            </div>
            <div class='modal-body'>
                <table width='100%' border='0' cellpadding='5' cellspacing='5'>
                    <tr>
                        <td width='30%'>Nama Pegawai</td>
                        <td width='1%'>:</td>
                        <td width='61%'>".$nama."</td>
                    </tr>
                    <tr>
                        <td>Nomor Induk Pegawai</td>
                        <td>:</td>
                        <td>".$nip."</td>
                    </tr>
                    <tr>
                        <td>Golongan</td>
                        <td>:</td>
                        <td>".$golongan."</td>
                    </tr>
                    <tr>
                        <td>Satuan Kerja</td>
                        <td>:</td>
                        <td>".$satker."</td>
                    </tr>
                    <tr>
                        <td>Jabatan Struktural</td>
                        <td>:</td>
                        <td>".$jabatan."</td>
                    </tr>
                    <tr>
                        <td>Kelompok</td>
                        <td>:</td>
                        <td>".$kelompok."</td>
                    </tr>
                    <tr>
                        <td>Tingkat Pendidikan</td>
                        <td>:</td>
                        <td>".$pendidikan."</td>
                    </tr>
                    <tr>
                        <td>Sertifikasi</td>
                        <td>:</td>
                        <td>".$sertifikasi."</td>
                    </tr>
                    <tr>
                        <td>Unit</td>
                        <td>:</td>
                        <td>".$perangkat."</td>
                    </tr>
                    <tr>
                        <td>Level Risiko</td>
                        <td>:</td>
                        <td>".$risk_level."</td>
                    </tr>
                    <tr>
                        <td>Level Emergensi</td>
                        <td>:</td>
                        <td>".$emergency_level."</td>
                    </tr>
                    <tr>
                        <td>Tanggal Masuk</td>
                        <td>:</td>
                        <td>".$tanggal_masuk."</td>
                    </tr>
                    <tr>
                        <td>Masa Kerja</td>
                        <td>:</td>
                        <td>".$masaKerja." Tahun</td>
                    </tr>
                </table>
            </div>
            <div class='modal-footer'>
            <button class='btn btn-info' data-dismiss='modal' aria-hidden='true'>Tutup</button>
            </div>
            </div>";
        $counter = $counter + 1;
    }
}
}