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
$log_activity = "mengakses editor IKUKP";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);

$tabelIKUKP = $_SESSION['tabelIKUKP'];
$counter = 1;
$sql = "select * from ".$tabelIKUKP." ORDER BY kategori ASC";
$query = mysql("u6799722_rumahsakit_dev", $sql);
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
        if($row["bobot"]==""){
        $bobot="";
        }
        else{
        $bobot = $row["bobot"]*100;
        }
        $sum = $row["sum"];
        echo 
           "<form action='' method='post'>
            <tr>
            <td id='thead'>".$counter."</td>
            <td id='thead'>".$kategori."</td>
            <td >".$indikator."</td>
            <td id='thead' style='vertical-align:middle'><input id='ci' name='ci' type='text' required='required' class='span12' value='".$ci."'></td>
            <td id='thead' style='vertical-align:middle'><input id='tkia' name='tkia' type='text' required='required' class='span12' value='".$target_a."'></td>
            <td id='thead' style='vertical-align:middle'><input id='tkib' name='tkib' type='text' required='required' class='span12' value='".$target_b."'></td>
            <td id='thead' style='vertical-align:middle'><input id='nkk' name='nkk' type='text' required='required' class='span12' disabled value='".$nilai."'></td>
            <td id='thead' style='vertical-align:middle'><input id='bobot' name='bobot' type='text' required='required' class='span12' value='".$bobot."'></td>
            <td id='thead' style='vertical-align:middle'><input id='sum' name='sum' type='text' required='required' class='span12' disabled value='".$sum."' title='".$sum."'></td>
            <td id='thead' style='vertical-align:middle'>
            <input id='id_ikukp' name='id_ikukp' type='text' class='uneditable-input' value='".$id."' style='display:none;'>
            <button type='submit' id='check' name='check' class='btn btn-warning btn-small' title='Edit Data'><i class='icon-ok-circle icon-white'></i></button>
            </td>
            </tr>
            </form>
            ";        
        $counter++;
        
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