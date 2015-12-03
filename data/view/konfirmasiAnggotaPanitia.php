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

$log_username = $_SESSION['umask'];
$log_activity = "mengakses konfirmasi anggota panitia";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);

$counter = 1;
$sql = "select * from daftar_kepanitiaan";
$query = mysql("u6799722_rumahsakit_dev", "select * from daftar_kepanitiaan");
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row['id'];
        $namaKepanitiaan = $row['nama_kepanitiaan'];
        $detail_kepanitiaan= $row['detail_kepanitiaan'];
        echo 
            "
            <div id='tambahAnggota".$counter."' class='modal hide'' tabindex='-1' role='dialog' aria-labelledby='delete".$counter."' aria-hidden='true'>
            <div class='modal-header' style='background-color: #149bdf;'>
            <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
            <h3 id='myModalLabel' style='color: #fff;'>Edit Anggota Kepanitiaan</h3>
            </div>
            <div class='modal-body'>
                <form action='' method='post'>
                <input id='id' name='id' type='text' class='uneditable-input' value='".$id."' style='display:none;'>
                <input id='keterangan' name='keterangan' type='text' class='uneditable-input' value='".$namaKepanitiaan."' style='display:none;'>
                <p align='center'>
                Apakah Anda yakin ingin mengedit data anggota untuk kepanitiaan: <strong>".$namaKepanitiaan."</strong>?
                </p>
                <p align='right'>
                <button type='submit' id='submitOK' name='submitOK' class='btn btn-success'><i class='icon-ok-circle icon-white'></i>&nbsp;<strong>Lanjutkan!</strong></button><br/>
                </p>
                </form>
            </div>
            </div>";
        $counter = $counter + 1;
    }
}