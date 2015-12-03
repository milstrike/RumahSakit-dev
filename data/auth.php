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
include "store.php";


$error=''; // Variable To Store Error Message
if (isset($_POST['submit'])) {
if (empty($_POST['username']) || empty($_POST['password'])) {
$error = "<font color='red'>username atau password tidak boleh kosong!</font>";
}
else
{
// Define $username and $password
$username=$_POST['username'];
$password=$_POST['password'];

//Convert to md5
$username = md5($username);
$password = md5($password);


// To protect MySQL injection for Security purpose
$username = stripslashes($username);
$password = stripslashes($password);
$username = mysql_real_escape_string($username);
$password = mysql_real_escape_string($password);

// SQL query to fetch information of registerd users and finds user match.
$query = mysql("u6799722_rumahsakit_dev", "select * from user where password='$password' AND username='$username'");
$rows = mysql_num_rows($query);
$row = mysql_fetch_array($query);

$_SESSION['params'] = $row['unit'];
$_SESSION['umask'] = $row['user_umask'];
$id_usr = $row['id'];
$check_mac = $row['mac_address'];
$level = $row['level'];
$_SESSION['role'] = $level;
$_SESSION["dataEditStruktural"] = "";

$keteranganLevel = levelDescription($level);
$_SESSION['levelDescription'] = $keteranganLevel;



if ($rows == 1 && $check_mac == 1) {
//if ($rows == 1 ) {
$mac_addr = 1;
$ip_addr = readIP();
$host_addr = php_uname('n');
$_SESSION['status'] = "1";
$_SESSION['login_user']=$username;
$_SESSION['id_usr'] = $id_usr;// Initializing Session

storing($username);
//$error = " Login!";

$log_username = $_SESSION['umask'];
$log_activity = "Session Login";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop); 

$userRole = $_SESSION['role'];

$sqlx = "UPDATE u6799722_rumahsakit_dev.user SET last_login=CURRENT_TIMESTAMP, ip_address='$ip_addr', mac_address='$mac_addr', computer_name='$host_addr' WHERE user.id='$id_usr'";
$queryx = mysql("u6799722_rumahsakit_dev", $sqlx);

switch($userRole){
    case 1:
        header("Location:mechanism/landing");
        break;
    
    case 2:
        header("Location:mechanism/takeoff");
        break;
    
    case 4:
        header("Location:mechanism/takeoff");
        break;
    
    case 6:
        header("Location:mechanism/takeoff");
        break;
    
    case 8:
        header("Location:mechanism/takeoff");
        break;
    
    case 3:
        header("Location:mechanism/offset");
        break;
    
    case 5:
        header("Location:mechanism/offset");
        break;
    
    case 7:
        header("Location:mechanism/offset");
        break;
    
    case 9:
        header("Location:mechanism/offset");
        break;
}

} 


else if($rows == 1 && $check_mac == 0){
       $error = "<font color='red'>Maaf Akun Anda belum aktif, mohon hubungi administrator untuk mengaktifkannya!</font>";
}

else {
    
    $log_usernames = "<font color='red'>unknown</font>";
    $log_activitys = "Session Login Failed";
    $sqlops = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_usernames', CURRENT_TIMESTAMP, '$log_activitys')";
    $queryops = mysql("u6799722_rumahsakit_dev", $sqlops); 
    
    $error = "<font color='red'>username atau password salah!</font>";
}
//mysql_close($conn); // Closing Connection
}
}

function readIP(){
//    $_IP_ADDRESS = $_SERVER['REMOTE_ADDR'];
//    $_PERINTAH = "arp -a $_IP_ADDRESS";
//    ob_start();
//    system($_PERINTAH);
//    $_HASIL = ob_get_contents();
//    ob_clean();
//    $_PECAH = strstr($_HASIL, $_IP_ADDRESS);
//    $_PECAH_STRING = explode($_IP_ADDRESS, str_replace(" ", "", $_PECAH));
//    $_HASIL = substr($_PECAH_STRING[1], 0, 17);
//    return $_IP_ADDRESS;
if (!empty($_SERVER["HTTP_CLIENT_IP"]))
{
 //check for ip from share internet
 $ip = $_SERVER["HTTP_CLIENT_IP"];
}
elseif (!empty($_SERVER["HTTP_X_FORWARDED_FOR"]))
{
 // Check for the Proxy User
 $ip = $_SERVER["HTTP_X_FORWARDED_FOR"];
}
else
{
 $ip = $_SERVER["REMOTE_ADDR"];
}

// This will print user's real IP Address
// does't matter if user using proxy or not.
return $ip;
}

function levelDescription($num){
    $levelDescription = "";
    
    $query = mysql("u6799722_rumahsakit_dev", "select * from user_role where id='$num'");
    $row = mysql_fetch_array($query);
    $levelDescription = $row['role'];
    
    return $levelDescription;
}