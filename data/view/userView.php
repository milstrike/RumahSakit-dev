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
$log_activity = "mengakses data user";
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
        $labels = "";
        
        switch($status){
            case 1:
                $labels = " <span class='label label-success'> Aktif </span> ";
                break;
            
            case 0:
                $labels = " <span class='label label-important'> Tidak Aktif </span> ";
                    
        }
        
        echo 
            "<tr>
            <td width='10%' id='thead'>".$counter."</td>
            <td width='30%'>".$labels.$namaView."</td>
            <td width='15%' id='thead'>".$userView."</td>
            <td width='15%' id='thead'>".$jabatanView."</td>
            <td width='30%' id='thead'>
            <a href='#UserDetail".$counter."' data-toggle='modal'><button type='submit' id='edit' name='edit' class='btn btn-primary btn-mini' title='Info Akun'><i class='icon-info-sign icon-white'></i></button></a>
            <a href='#EditUser".$counter."' data-toggle='modal'><button type='submit' id='edit' name='edit' class='btn btn-warning btn-mini' title='Edit Akun'><i class='icon-pencil icon-white'></i></button></a>
            <a href='#DeleteUser".$counter."' data-toggle='modal'><button type='submit' id='remove' name='remove' class='btn btn-danger btn-mini' title='Hapus Akun'><i class='icon-remove icon-white'></i></button></a>
            <a href='#resetPassword".$counter."' data-toggle='modal'><button type='submit' id='remove' name='remove' class='btn btn-info btn-mini' title='Reset Password Akun'><i class='icon-refresh icon-white'></i></button></a>";
            
        if($status == 0){
            echo " <a href='#aktivasiUser".$counter."' data-toggle='modal'><button type='submit' id='remove' name='remove' class='btn btn-inverse btn-mini' title='Aktifkan Akun'><i class='icon-off icon-white'></i></button></a>";
        }
        else{
            echo " <a href='#aktivasiUser".$counter."' data-toggle='modal'><button type='submit' id='remove' name='remove' class='btn btn-mini' title='Non-Aktifkan Akun User'><i class='icon-off'></i></button></a>";
        }
        
            echo "</td>
            </tr>
            ";
        $counter = $counter + 1;
    }
}