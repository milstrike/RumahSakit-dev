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

if (isset($_POST['submitDelete'])) {
$id=$_POST['id'];
$nama_tabel = $_POST['nama_tabel'];

$sqlx = "DELETE FROM u6799722_rumahsakit_dev.daftar_nilai WHERE daftar_nilai.id='$id'";
$queryx = mysql("u6799722_rumahsakit_dev", $sqlx);    

$sqlq = "DROP TABLE ".$nama_tabel."";
$queryq = mysql("u6799722_rumahsakit_dev", $sqlq);

$log_username = $_SESSION['umask'];
$log_activity = " menghapus data nilai";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop); 

deleteikiptable($nama_tabel);
deleteikukptable($nama_tabel);
}

function deleteikiptable($nama_tabel){
    $sql = "select * from data_pegawai ORDER BY data_pegawai.nama ASC";
    $query = mysql("u6799722_rumahsakit_dev", "select * from data_pegawai ORDER BY data_pegawai.nama ASC");
    $rows = mysql_num_rows($query);
    if($rows > 0){
        while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $sqlq = "DROP TABLE ".$id."_ikip_".$nama_tabel."";
        $queryq = mysql("u6799722_rumahsakit_dev", $sqlq);
    }
}
}

function deleteikukptable($nama_tabel){
    $sql = "select * from data_pegawai ORDER BY data_pegawai.nama ASC";
    $query = mysql("u6799722_rumahsakit_dev", "select * from data_pegawai ORDER BY data_pegawai.nama ASC");
    $rows = mysql_num_rows($query);
    if($rows > 0){
        while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $sqlq = "DROP TABLE ".$id."_ikukp_".$nama_tabel."";
        $queryq = mysql("u6799722_rumahsakit_dev", $sqlq);
    }
}
}