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

$optionViewGaji = "";

$counter = 1;
$sql = "select * from master_resource_gaji ORDER BY id ASC";
$query = mysql("u6799722_rumahsakit_dev", $sql);
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $keterangan = $row["keterangan"];
        
        $optionViewGaji = $optionViewGaji."<option value='".$id."'>".$keterangan."</option>";
    }
}


function getSelectedOptionMasterGajiView($id_sumber){

$optionViewGajiSelected = "";

$idSumberSelected = $id_sumber;
    
$counter = 1;
$sql = "select * from master_resource_gaji ORDER BY id ASC";
$query = mysql("u6799722_rumahsakit_dev", $sql);
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $keterangan = $row["keterangan"];
        
        if($id == $idSumberSelected){
            $optionViewGajiSelected = $optionViewGajiSelected."<option value='".$id."' selected>".$keterangan."</optione>";
        }
        else{
            $optionViewGajiSelected = $optionViewGajiSelected."<option value='".$id."'>".$keterangan."</optione>";
        }
    }
}
return $optionViewGajiSelected;
}
