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

$optionRiskies = "<option value='none-0'>None</option>";

$counter = 1;
$sql = "select * from c_1_resiko ORDER BY c_1_resiko.poin ASC";
$query = mysql("u6799722_rumahsakit_dev", "select * from c_1_resiko ORDER BY c_1_resiko.poin ASC");
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $keterangan = $row["keterangan"];
        $poin = $row["poin"];
        
        $optionRiskies = $optionRiskies."<option value='".$keterangan."-".$poin."'>".$keterangan."</option>";
       // echo 
         //   "
           // <option value='".$keterangan."-".$poin."'>".$keterangan."</option>
            //";
    }
}