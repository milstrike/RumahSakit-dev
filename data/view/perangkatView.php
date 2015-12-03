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
$log_activity = "mengakses data unit";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);

$counter = 1;
$sql = "select * from perangkat_rs ORDER BY perangkat_rs.keterangan ASC";
$query = mysql("u6799722_rumahsakit_dev", "select * from perangkat_rs ORDER BY perangkat_rs.keterangan ASC");
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $keterangan = $row["keterangan"];
        $level_risk = $row["level_risk"];
        $poin_risk = $row["poin_risk"];
        $level_emergency = $row["level_emergency"];
        $poin_emergency = $row["poin_emergency"];
        echo 
            "<tr>
            <td width='10%' id='thead'>".$counter."</td>
            <td width='30%' id='thead'>".$keterangan."</td>
            <td width='15%' id='thead'>".$level_risk."</td>
            <td width='5%' id='thead'>".$poin_risk."</td>
            <td width='15%' id='thead'>".$level_emergency."</td>
            <td width='5%' id='thead'>".$poin_emergency."</td>
            <td width='20%' id='thead'>
            <a href='#edit".$counter."' data-toggle='modal'><button type='submit' id='edit' name='edit' class='btn btn-warning btn-small' title='Edit Data'><i class='icon-pencil icon-white'></i></button></a>
            <a href='#delete".$counter."' data-toggle='modal'><button type='submit' id='remove' name='remove' class='btn btn-danger btn-small' title='Hapus Data'><i class='icon-remove icon-white'></i></button></a>
            </td>
            </tr>
            ";
        $counter = $counter + 1;
    }
}
else{
    echo 
            "<tr>
            <td colspan='7' style='padding:20px'> 
            <p align='center'>
            <strong>Belum ada perangkat rumah sakit yang tersimpan, silakan tambahkan melalui menu Tambah Unit Rumah Sakit</strong>
            </p>
            </td>
            </tr>
            ";
}