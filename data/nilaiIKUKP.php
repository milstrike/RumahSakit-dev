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

if (isset($_POST['simpanData'])) {
    $nama_tabel = $_SESSION['tabel'];
    $tabelIKUKP = $_SESSION['tabelIKUKP'];
   $sql =  "select sum(sum) as jumlah from ".$tabelIKUKP."";
   $query = mysql("u6799722_rumahsakit_dev", $sql);
   $rows = mysql_num_rows($query);
    $nilaiIKUKP = 0;
    if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $nilaiIKUKP = $row["jumlah"];
    }
    }
    
    $sumIKUKP = $nilaiIKUKP;
    $ikukpAkhir = $sumIKUKP * 0.3;
    $idPegawai = getIDPegawai($tabelIKUKP);
    
   $sqlx = "UPDATE ".$nama_tabel." SET sum_ikup='$sumIKUKP', ikukp='$ikukpAkhir' WHERE id_pegawai='$idPegawai'";
    $queryx = mysql("u6799722_rumahsakit_dev", $sqlx);   
    
    $log_username = $_SESSION['umask'];
$log_activity = " memasukkan nilai IKUKP";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);
    
    $error='<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button>Sukses Menghitung Indikator Kinerja Unit Kerja Pegawai (IKUKP)</div>';
    
}

function getIDPegawai($nama_tabel){
    $idPegawai = "";
    $idPegawaiTemp = "";
    $longTabel = strlen($nama_tabel);
    $i = 0;
    while($i<$longTabel){
        $idPegawaiTemp = substr($nama_tabel, $i, 1);
        if($idPegawaiTemp == "_"){
            $i = $longTabel;
        }
        else{
            $idPegawai = $idPegawai.$idPegawaiTemp;
            $i++;
        }
    }
    
    return $idPegawai;
}