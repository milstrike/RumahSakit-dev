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

if (isset($_POST['submitEdit'])) {
if (empty($_POST['namalengkap']) || empty($_POST['username']) || empty($_POST['password']) || empty($_POST['telepon'])) {
//$error = "<font color='red'>kolom isian harus diisi semua!</font>";
}
else
{
// Define $username and $password
$id=$_POST['id'];
$namalengkap=$_POST['namalengkap'];
$username=$_POST['username'];
$password=$_POST['password'];
$telepon=$_POST['telepon'];

//Convert to md5
$username2 = md5($username);
$password2 = md5($password);


// To protect MySQL injection for Security purpose
$username2 = stripslashes($username2);
$password2 = stripslashes($password2);
$username2 = mysql_real_escape_string($username2);
$password2 = mysql_real_escape_string($password2);

$sqlx = "UPDATE u6799722_rumahsakit_dev.user SET password='$password2', pass_umask='$password' WHERE user.id='$id'";
$queryx = mysql("u6799722_rumahsakit_dev", $sqlx);    


$sqln = "UPDATE u6799722_rumahsakit_dev.user_detail SET nama='$namalengkap', telepon='$telepon' WHERE user_detail.id='$id'";
$queryn = mysql("u6799722_rumahsakit_dev", $sqln); 

$log_username = $_SESSION['umask'];
$log_activity = " mengedit data akun user level 1";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);


header("location:../../manajemen_role/level_1/");
}
}

