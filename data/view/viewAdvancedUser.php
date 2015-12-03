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

include "../../../../data/view/dataExtractor.php";

$log_username = $_SESSION['umask'];
$log_activity = "mengakses data user system";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);

$counter = 1;
$sql = "select * from user where level=2 or level=3";
$query = mysql("u6799722_rumahsakit_dev", $sql);
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $user = $row["user_umask"];
        $level = $row["level"];
        $unit = $row["unit"];
        
        $tingkatan = getTingkatan($level);
        echo 
            "<tr>
            <td style='text-align:center;'>".$counter."</td>
            <td>".$user."</td>
            <td style='text-align:center;'>".$tingkatan."</td>
            <td style='text-align:center;'>".$unit."</td>
            <td style=text-align:center;'>
            <form action='' method='post'>
            <input id='adminID' name='adminID' type='text' class='uneditable-input' value='".$id."' style='display:none;'>
            <button type='submit' id='editPrivileges' name='editPrivileges' class='btn btn-warning btn-small' title='Edit Hak Akses'><i class='icon-pencil icon-white'></i></button>
             </form>
            </td>
            </tr>
            ";
        $counter = $counter + 1;
    }
}