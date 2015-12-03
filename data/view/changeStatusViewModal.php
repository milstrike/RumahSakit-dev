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
$sql = "select * from user, user_detail where user.id=user_detail.id";
$query = mysql("u6799722_rumahsakit_dev", "select * from user, user_detail where user.id=user_detail.id");
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id3 = $row['id'];
        $userView3 = $row['user_umask'];
        $status  = $row['mac_address'];
        echo 
            "
            <div id='aktivasiUser".$counter."' class='modal hide'' tabindex='-1' role='dialog' aria-labelledby='UserDetail".$counter."' aria-hidden='true'>
            <div class='modal-header' style='background-color: #149bdf;'>
            <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
            <h3 id='myModalLabel' style='color: #fff;'>Aktivasi User</h3>
            </div>
            <div class='modal-body'>
                <form action='' method='post'>
                <input id='id' name='id' type='text' class='uneditable-input' value='".$id3."' style='display:none;'>
                <input id='status' name='status' type='text' class='uneditable-input' value='".$status."' style='display:none;'>                    
                <p align='center'>";
          
        if($status == 0){
            echo "Apakah Anda yakin ingin mengaktifkan user <strong>".$userView3."</strong>?.";
        }
        else{
            echo "Apakah Anda yakin ingin menonaktifkan user <strong>".$userView3."</strong>?.";
        }
                 
                        
          echo "</p>
                <p align='right'>
                <button type='submit' id='aktivasiUser' name='aktivasiUser' class='btn btn-danger'><i class='icon-check icon-white'></i>&nbsp;<strong>Ubah Status User</strong></button><br/>
                </p>
                </form>
            </div>
            </div>";
        $counter = $counter + 1;
    }
}