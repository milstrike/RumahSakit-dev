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

$sql = "select * from perangkat_rs ORDER BY perangkat_rs.keterangan ASC";
$query = mysql("u6799722_rumahsakit_dev", "select * from perangkat_rs ORDER BY perangkat_rs.keterangan ASC");
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $keterangan = $row["keterangan"];
        $level_risk = $row["level_risk"];
        $poin_risk = $row["poin_risk"];
        $level_emergency = $row["level_emergency"];
        $poin_emergency = $row["poin_emergency"];
        echo 
            "
                <option value='".$id."'
            ";
        if($id == $_SESSION["dataEditUnit"]){
            echo " selected='selected'>".$keterangan."</option>";
        }
        else{
            echo ">".$keterangan."</option>";
        }
    }
}
else{

}