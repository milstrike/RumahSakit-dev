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

        $kategori = $_POST['kategori'];
        $indikator = $_POST['indikator'];
        $ci = "";
        $target_a = "";
        $target_b = "";
        $nilai = "";
        $bobot = "";
        $sum = "";

$sqlx = "INSERT INTO u6799722_rumahsakit_dev.master_ikip (id, kategori, indikator, ci, target_a, target_b, nilai, bobot, sum) VALUES (NULL, '$kategori', '$indikator', '$ci', '$target_a', '$target_b', '$nilai', '$bobot', '$sum')";
$queryx = mysql("u6799722_rumahsakit_dev", $sqlx); 

$log_username = $_SESSION['umask'];
$log_activity = "tambah indikator IKIP";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);
    
}


