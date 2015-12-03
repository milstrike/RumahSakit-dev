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

if (isset($_POST['submit'])) {
    
    $id = $_SESSION["userIDEdit"];
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
    
    $sqlx = "UPDATE data_pegawai SET nama='$nama', nip='$nip', golongan='$golongan', satker='$satker', jabatan='$jabatan', kelompok='$kelompok', pendidikan='$pendidikan', sertifikasi='$sertifikasi', perangkat='$perangkat', tanggal_masuk='$tanggal' WHERE id='$id'";
    $queryx = mysql("u6799722_rumahsakit_dev", $sqlx);
    
    $log_username = $_SESSION['umask'];
$log_activity = " mengedit data pegawai";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);
   
    header("location:../manajemen_pegawai/");
}