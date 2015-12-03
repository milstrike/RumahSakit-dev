<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



session_start();


$servername = "localhost";
$username = "u6799722_rs-dev";
$password = "P4nggun9B0ewanA";
$database = "u6799722_rumahsakit_dev";

// Create connection
$conn = mysql_connect($servername, $username, $password, $database);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$id_usr = $_SESSION['id_usr'];
//$id_usr = 6;

$logout = 0;
        
$sqlx = "UPDATE u6799722_rumahsakit_dev.user SET mac_address='$logout' WHERE id='$id_usr'";
$queryx = mysql("u6799722_rumahsakit_dev", $sqlx);

session_destroy();
