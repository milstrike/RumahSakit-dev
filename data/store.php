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

include 'my-conf.php';

function storing ($v){
$username = $v;
$id_user = "";
$namaUser = "";
$jabatanUser = "";
$teleponUser = "";
$roleUser = 0;

$query = mysql("u6799722_rumahsakit_dev", "select * from user where username='$username'");
while($row = mysql_fetch_assoc($query)) {
         $id_user = $row["id"];
         $roleUser = $row['level'];
   }
   
$query2 = mysql("u6799722_rumahsakit_dev", "select * from user_detail where id='$id_user'");
while($row = mysql_fetch_assoc($query2)) {
         $namaUser = $row["nama"];
         $jabatanUser = $row["jabatan"];
         $teleponUser = $row["telepon"];
         
   }
   
$_SESSION['nama'] = $namaUser;
$_SESSION['jabatan'] = $jabatanUser;
$_SESSION['telepon'] = $teleponUser;
$_SESSION['role'] = $roleUser;

$log_username = $_SESSION['umask'];
$log_activity = "simpan data user";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);

}