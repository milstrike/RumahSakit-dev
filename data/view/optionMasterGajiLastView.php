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
        
        $result = getJumlahSumber($id);
        
        if($result > 0){
            
        }
        else{
            $optionViewGaji = $optionViewGaji."<option value='".$id."'>".$keterangan."</option>";
        }
        
       // echo 
         //   "
           // <option value='".$keterangan."-".$poin."'>".$keterangan."</option>
            //";
    }
}

function getSelectedMasterGaji($id_sumber){
    $id_diterima = $id_sumber;
    $optionViewGajiSelected = "";
    $counterfeit = 1;
$sqlb = "select * from master_resource_gaji ORDER BY id ASC";
$queryb = mysql("u6799722_rumahsakit_dev", $sqlb);
$rowsb = mysql_num_rows($queryb);
if($rowsb > 0){
    while($rowb = mysql_fetch_assoc($queryb)){
        $idb = $rowb["id"];
        $keteranganb = $rowb["keterangan"];
        
        $resultb = getJumlahSumber($idb);
        
        if($resultb > 0){
            
        }
        else{
            if($id_diterima == $idb){
                $optionViewGajiSelected = $optionViewGajiSelected."<option value='".$idb."' selected>".$keteranganb."</option>";
            }
            else{
                $optionViewGajiSelected = $optionViewGajiSelected."<option value='".$idb."'>".$keteranganb."</option>";
            }
            
        }
    }
}
return $optionViewGajiSelected;
}



function getJumlahSumber($id_sumber){
    $sqla = "SELECT COUNT(id_sumber) as counter from master_resource_gaji WHERE id_sumber=".$id_sumber."";
    $querya = mysql("u6799722_rumahsakit_dev", $sqla);
    $rowa = mysql_fetch_array($querya);
    $jumlah = $rowa['counter'];
    
    return $jumlah;
}