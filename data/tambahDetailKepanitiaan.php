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

function SearchPoint($num){
    $dataPoin = "";
    
    $query = mysql("u6799722_rumahsakit_dev", "select poin from u6799722_rumahsakit_dev.e_2_kepanitiaan_tim_kerja where e_2_kepanitiaan_tim_kerja.id='$num'");
    $row = mysql_fetch_array($query);
    $dataPoin = $row['poin'];
    
    return $dataPoin;
}

$error='';

if (isset($_POST['submitTambah'])) {
$id = $_SESSION['id_kepanitiaan'];
$nama=$_POST['nama'];
$jabatan=$_POST['jabatan'];
$poin = SearchPoint($jabatan);

    
$sqlx = "INSERT INTO u6799722_rumahsakit_dev.detail_kepanitiaan (id, id_pegawai, jabatan, poin, bulan) VALUES ('$id', '$nama', '$jabatan', '$poin', CURRENT_TIMESTAMP)";
$queryx = mysql("u6799722_rumahsakit_dev", $sqlx);  

$log_username = $_SESSION['umask'];
$log_activity = "tambah detail kepanitiaan";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);

////header("Refresh:0");
}


