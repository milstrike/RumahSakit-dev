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
$log_activity = "mengakses monitoring";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);

$counter = 1;
$sql = "select * from user, user_detail where user.id=user_detail.id";
$query = mysql("u6799722_rumahsakit_dev", "select * from user, user_detail where user.id=user_detail.id");
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $namaView = $row["nama"];
        $userView = $row["user_umask"];
        $passView = $row["pass_umask"];
        $createView = $row["change_date"];
        $jabatanView = $row["jabatan"];
        $teleponView = $row["telepon"];
        $status = $row['mac_address'];
        $login = $row['last_login'];
        $logout = $row['logout'];
        $ip_addr = $row['ip_address'];
        $dibuat = $row['change_date'];
        $labels = "";
        
        switch($status){
            case 1:
                $labels = " <span class='label label-success'> Aktif </span> ";
                break;
            
            case 0:
                $labels = " <span class='label label-important'> Tidak Aktif </span> ";
                    
        }
        
    if($login == "0000-00-00 00:00:00"){
        $login = "";
    }
    else{
        
    }
    
    if($logout == "0000-00-00 00:00:00"){
        $logout = "";
    }
    else{
        
    }
        
        echo 
            "<tr>
            <td id='thead'>".$counter."</td>
            <td >".$namaView."</td>
            <td id='thead'>".$userView."</td>
            <td id='thead'>".$jabatanView."</td>
            <td id='thead'>".$dibuat."</td>
            <td id='thead'>".$login."</td>
            <td id='thead'>".$logout."</td>
            <td id='thead'>".$ip_addr."</td>
            <td id='thead'>".$labels."</td>                
                    
            </tr>
            ";
        $counter = $counter + 1;
    }
}