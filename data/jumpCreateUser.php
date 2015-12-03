<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

if (isset($_POST['submitAkun'])) {
$_SESSION['levelID'] = $_POST['id'];

$log_username = $_SESSION['umask'];
$log_activity = "pindah edit Create User Baru";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);

header("Location:../buat_akun/");
}

