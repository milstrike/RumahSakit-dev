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

$error = "";

if (isset($_POST['finalisasiData'])) {
    
    $parameter = $_SESSION['params'];
    $namaTabel = $_SESSION['tabel'];
    $skorMaks = 0;
    $total = 0;
    
    $sqlq = "select * from ".$namaTabel.", data_pegawai where data_pegawai.id = ".$namaTabel.".id_pegawai";
    $queryq = mysql("u6799722_rumahsakit_dev", $sqlq);
    $rowsq = mysql_num_rows($queryq);
    if($rowsq > 0){
    while($rowq = mysql_fetch_assoc($queryq)){
        $id = $rowq["id"];
        $basicIndex = $rowq["basic_index"];
        $capacityIndex = $rowq["capacity_index"];
        $riskIndex = $rowq["risk_index"];
        $emergencyIndex = $rowq["emergency_index"];
        $positionIndex = $rowq["position_index"];
        $performanceIndex = $rowq["performance_index"];
        
        $total = $basicIndex + $capacityIndex + $riskIndex + $emergencyIndex + $performanceIndex + $capacityIndex;
        $skorMaks = $skorMaks + $total;
        
        $sqlxih = "UPDATE ".$namaTabel." SET total_individu='$total' WHERE id_pegawai='$id'";
        $queryxih = mysql("u6799722_rumahsakit_dev", $sqlxih);
    }
    }
    
    
    
    $sqlx = "UPDATE daftar_nilai SET total_nilai='$skorMaks' WHERE nama_tabel='$namaTabel'";
    $queryx = mysql("u6799722_rumahsakit_dev", $sqlx);   
    
    $log_username = $_SESSION['umask'];
$log_activity = " melakukan finalisasi data";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);
    
    echo $namaTabel;
    //$error='<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button>Sukses Melakukan Finalisasi Data!</div>';
   
    
}