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
$log_activity = "mengakses master IKIP";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);

$counter = 1;
$sql = "select * from master_ikip ORDER BY master_ikip.kategori ASC";
$query = mysql("u6799722_rumahsakit_dev", "select * from master_ikip ORDER BY master_ikip.kategori ASC");
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $kategori = $row["kategori"];
        $indikator = $row["indikator"];
        $ci = $row["ci"];
        $target_a = $row["target_a"];
        $target_b = $row["target_b"];
        $nilai = $row["nilai"];
        $bobot = $row["bobot"];
        $sum = $row["sum"];
        echo 
            "<tr>
            <td id='thead'>".$counter."</td>
            <td id='thead'>".$kategori."</td>
            <td >".$indikator."</td>
            <td id='thead'>".$ci."</td>
            <td id='thead'>".$target_a."</td>
            <td id='thead'>".$target_b."</td>
            <td id='thead'>".$nilai."</td>
            <td id='thead'>".$bobot."</td>
            <td id='thead'>".$sum."</td>
            <td id='thead' style='vertical-align:middle'>
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
            <strong>Belum ada Indikator yang tersimpan, silakan tambahkan melalui menu Tambah Indikator</strong>
            </p>
            </td>
            </tr>
            ";
}