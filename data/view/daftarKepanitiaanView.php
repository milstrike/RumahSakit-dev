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

$counter = 1;

$log_username = $_SESSION['umask'];
$log_activity = "mengakses daftar kepanitiaan";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);

$sql = "select * from daftar_kepanitiaan";
$query = mysql("u6799722_rumahsakit_dev", "select * from daftar_kepanitiaan");
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $nama_kepanitiaan = $row["nama_kepanitiaan"];
        $detail_kepanitiaan = $row["detail_kepanitiaan"];
        $detail_kepanitiaan = shorten_string($detail_kepanitiaan, 10);
        echo 
            "<tr>
            <td width='10%' id='thead'>".$counter."</td>
            <td width='20%' id='thead'>".$nama_kepanitiaan."</td>
            <td width='40%' id='thead'>".$detail_kepanitiaan."</td>
            <td width='40%' id='thead'>
            <a href='#detail".$counter."' data-toggle='modal'><button type='submit' id='edit' name='edit' class='btn btn-info btn-small' title='Info Kepanitiaan'><i class='icon-info-sign icon-white'></i></button></a>
            <a href='#tambahAnggota".$counter."' data-toggle='modal'><button type='submit' id='launch' name='launch' class='btn btn-primary btn-small' title='Edit Anggota Kepanitiaan'><i class='icon-list icon-white'></i></button></a>
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
            <strong>Belum ada data kepanitiaan yang tersimpan, silakan tambahkan melalui menu Tambah Kepanitiaan</strong>
            </p>
            </td>
            </tr>
            ";
}

function shorten_string($oldstring, $wordsreturned)
{
  $retval = $oldstring;
  $string = preg_replace('/(?<=\S,)(?=\S)/', ' ', $oldstring);
  $string = str_replace("\n", " ", $string);
  $array = explode(" ", $string);
  if (count($array)<=$wordsreturned)
  {
    $retval = $string;
  }
  else
  {
    array_splice($array, $wordsreturned);
    $retval = implode(" ", $array)." ...";
  }
  return $retval;
}