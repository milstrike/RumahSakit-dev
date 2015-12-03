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
//include "../../../data/view/dataExtractor.php";

$log_username = $_SESSION['umask'];
$log_activity = "mengakses poin penilaian pegawai (evaluator)";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);

$counter = 1;
$sql = "select * from daftar_nilai";
$query = mysql("u6799722_rumahsakit_dev", "select * from daftar_nilai");
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row['id'];
        $bulan = $row['bulan'];
        $tahun = $row['tahun'];
        $nama_tabel = $row['nama_tabel'];
        $bulanSebenarnya = MonthSelector($bulan);
        $waktu = $bulanSebenarnya." ".$tahun;
        echo 
            "
            <div id='check".$counter."' class='modal hide'' tabindex='-1' role='dialog' aria-labelledby='delete".$counter."' aria-hidden='true'>
            <div class='modal-header' style='background-color: #149bdf;'>
            <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
            <h3 id='myModalLabel' style='color: #fff;'>Konfirmasi Edit Poin Pegawai</h3>
            </div>
            <div class='modal-body'>
                <form action='' method='post'>
                <input id='id' name='id' type='text' class='uneditable-input' value='".$id."' style='display:none;'>
                <input id='nama_tabel' name='nama_tabel' type='text' class='uneditable-input' value='".$nama_tabel."' style='display:none;'>
                <input id='waktu' name='waktu' type='text' class='uneditable-input' value='".$waktu."' style='display:none;'>
                <p align='center'>
                Apakah Anda yakin ingin mengedit poin pegawai pada bulan <strong>".$waktu."</strong>?.
                </p>
                <p align='right'>
                <button type='submit' id='submitCheck' name='submitCheck' class='btn btn-primary'><i class='icon-share icon-white'></i>&nbsp;<strong>Lanjutkan!</strong></button><br/>
                </p>
                </form>
            </div>
            </div>";
        $counter = $counter + 1;
    }
}