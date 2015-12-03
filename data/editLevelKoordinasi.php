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
include "../../../data/view/dataExtractor.php";

$errorMessages='';
$_SESSION["kembali"] = "";
if (isset($_POST['submitEdit'])) {
// Define $username and $password
$id=$_POST['id'];
$jumlah = $_POST['bawahan'];

$poin = getPoinLevelKoordinasi($jumlah);

if($poin > 0){
        $errorMessages = '<div class="alert alert-success fade in" id="pesanBerhasil"><button type="button" class="close" data-dismiss="alert">&times;</button>Sukses mengubah data jumlah bawahan!</div>';
        $_SESSION["kembali"] = "";
    }else{
        $errorMessages = '<div class="alert alert-warning fade in" id="pesanGagal"><button type="button" class="close" data-dismiss="alert">&times;</button>Jumlah bawahan belum terdefinisikan di Konfigurasi Poin Level Koordinasi! Untuk Konfigurasi Poin Level Koordinasi klik <a href="../konfigurasi_poin/konfigurasi_poin_level_koordinasi/" style="text-decoration:none;">Di sini</a></div>';
        $_SESSION["kembali"] = "<a href='../../koordinasi/' ><button type='submit' class='btn btn-small'><i class='icon-chevron-left'></i>&nbsp;Kembali ke Manajemen Level Koordinasi</button></a>";
    }

$sqlx = "UPDATE u6799722_rumahsakit_dev.level_koordinasi SET id_level_koordinasi='$jumlah', poin='$poin' WHERE level_koordinasi.id_pegawai='$id'";
$queryx = mysql("u6799722_rumahsakit_dev", $sqlx);    

$log_username = $_SESSION['umask'];
$log_activity = " mengedit data level koordinasi";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);

//header("Location:../apps/konfigurasi_poin/konfigurasi_poin_masa_kerja");
//header("Refresh:0");
}

