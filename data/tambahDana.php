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

$error='';

if (isset($_POST['submitTambah'])) {

$danaMasuk=$_POST['masukanDana'];

    
$sqlx = "UPDATE master_resource_gaji SET dana='$danaMasuk' where id=1";
$queryx = mysql("u6799722_rumahsakit_dev", $sqlx);     

$log_username = $_SESSION['umask'];
$log_activity = "Memasukkan Dana";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);


roundDanaCounter();

}

function roundDanaCounter(){
    
$sqla = "select * from master_resource_gaji";
$querya = mysql("u6799722_rumahsakit_dev", $sqla);
$rows = mysql_num_rows($querya);
if($rows > 0){
    while($rowa = mysql_fetch_assoc($querya)){
        $id = $rowa['id'];
        $idSource = $rowa['id_sumber'];
        $resource = $rowa['bagian'];
        
        
        $danaUtama = getDanaUtama($idSource);
        $hitungDana = ($resource/100) * $danaUtama;
        
        updateDanaCounter($id, $hitungDana);
        
    }
    }
    
}

function updateDanaCounter($id, $dana){
    $sqlx = "UPDATE master_resource_gaji SET dana='$dana' WHERE id='$id'";
    $queryx = mysql("u6799722_rumahsakit_dev", $sqlx);  
}

function getDanaUtama($id_sumber){
    $danaUtama = 0;
    $queryn = mysql("u6799722_rumahsakit_dev", "select * from master_resource_gaji where id='$id_sumber'");
    $rown = mysql_fetch_array($queryn);
    $danaUtama = $rown['dana'];
    
    return $danaUtama;
}
