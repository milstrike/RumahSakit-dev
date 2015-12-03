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

$optionRoles = "<option value='0-none'>None</option>";

$sql = "select * from user_role";
$query = mysql("u6799722_rumahsakit_dev", "select * from user_role");
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $userRole = $row["role"];
        
        $optionRoles = $optionRoles."<option value='".$id."-".$userRole."'>".$userRole."</option>";
        
        //echo 
          //  "
            //<option value='".$keterangan."-".$poin."'>".$keterangan."</option>
            //";
    }
}