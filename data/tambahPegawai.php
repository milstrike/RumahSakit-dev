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
include "../../../data/my-conf.php";
include "../../../data/view/dataExtractor.php";

$error='';

if (isset($_POST['submit'])) {
    
$nama = $_POST['nama'];
$nip = $_POST['nip'];
$golongan = $_POST['golongan'];
$satker = $_POST['satker'];
$jabatan = $_POST['jabatan'];
$kelompok = $_POST['kelompok'];
$pendidikan = $_POST['pendidikan'];
$sertifikasi = $_POST['sertifikasi'];
$perangkat = $_POST['perangkat'];
$tanggal = $_POST['tahun']."-".$_POST['bulan']."-".$_POST['tanggal'];


$sqlx = "INSERT INTO u6799722_rumahsakit_dev.data_pegawai (id, nama, nip, golongan, satker, jabatan, kelompok, pendidikan, sertifikasi, perangkat, tanggal_masuk, change_date) VALUES (NULL, '$nama', '$nip', '$golongan', '$satker', '$jabatan', '$kelompok', '$pendidikan', '$sertifikasi', '$perangkat', '$tanggal', CURRENT_TIMESTAMP)";
$queryx = mysql("u6799722_rumahsakit_dev", $sqlx);  

$id_pegawai = findID($nama);

$sql = "INSERT INTO u6799722_rumahsakit_dev.level_koordinasi (id_pegawai, id_level_koordinasi, poin) VALUES ('$id_pegawai', '0', '0')";
$query = mysql("u6799722_rumahsakit_dev", $sql);  


$log_username = $_SESSION['umask'];
$log_activity = "tambah data pegawai";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);

    header("Location:../../apps/manajemen_pegawai/");


/* $query = mysql("u6799722_rumahsakit_dev", "select * from data_pegawai where nip='$nip'");
$rows = mysql_num_rows($query);
if ($rows == 1) {
$error = "<font color='red'>Terjadi duplikasi data pegawai, Cek terlebih Dahulu!</font>";
} 
else if($rows == 0) {

$sqlx = "INSERT INTO u6799722_rumahsakit_dev.data_pegawai (id, nama, nip, satker, jabatan, kelompok, pendidikan, sertifikasi, perangkat, tanggal_masuk, change_date) VALUES (NULL, '$nama', '$nip', '$satker', '$jabatan', '$kelompok', '$pendidikan', '$sertifikasi', '$perangkat', '$tanggal', CURRENT_TIMESTAMP)";
$queryx = mysql("u6799722_rumahsakit_dev", $sqlx);    

    header("Location:../../apps/manajemen_pegawai/");

} */
}

