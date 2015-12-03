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
include "my-conf.php";

$error='';

if (isset($_POST['submitTambah'])) {

$poin = "poin_";
$tahunWaktu = $_POST['tahun'];
$bulanWaktu = $_POST['bulan'];
$tahun = $_POST['tahun'];
$bulan = $_POST['bulan']."_";
$nama_tabel = $poin.$bulan.$tahun;

$sqlx = "INSERT INTO u6799722_rumahsakit_dev.daftar_nilai (id, bulan, tahun, nama_tabel, total_nilai) VALUES (NULL, '$bulanWaktu', '$tahunWaktu', '$nama_tabel', 0)";
$queryx = mysql("u6799722_rumahsakit_dev", $sqlx);  

$sqly = "CREATE TABLE ".$nama_tabel." LIKE master_nilai";
$queryy = mysql("u6799722_rumahsakit_dev", $sqly);  

$log_username = $_SESSION['umask'];
$log_activity = "tambah data nilai";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);
    
}


