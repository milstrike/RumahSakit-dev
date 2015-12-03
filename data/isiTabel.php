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

include "../../../data/my-conf.php";

include "../../../data/view/dataExtractor.php";

$pesanIsiTabel = "";

if (isset($_POST['isiTabel'])) {
    
    $pesanIsiTabel='<div class="alert alert-info"><button type="button" class="close" data-dismiss="alert">&times;</button>Sedang menambahkan data...</div>';
    
    $namaTabel = $_SESSION['tabel'];
    
    $hapusTabel = "TRUNCATE ".$namaTabel;
    $hapus = mysql("u6799722_rumahsakit_dev", $hapusTabel);
    
    //echo $namaTabel;
      

$counter = 1;
$sql = "select * from u6799722_rumahsakit_dev.data_pegawai";
$query = mysql("u6799722_rumahsakit_dev", $sql);
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $golongan = $row["golongan"];
        $satker = $row["satker"];
        $jabatan = $row["jabatan"];
        $kelompok = $row["kelompok"];
        $pendidikan = $row["pendidikan"];
        $sertifikasi = $row["sertifikasi"];
        $perangkat = $row["perangkat"];
        $tanggal_masuk = $row["tanggal_masuk"];
        $masaKerja = lamaKerja($tanggal_masuk);
        $jumlahBawahan = findPoinLevelKoordinasi($id);
        
        
        $a = poinMasaKerja($masaKerja);
        $b = hitungPoinMasaKerja($a);
        $aa = poinGolongan($golongan);
        $bb = hitungPoinGolongan($aa);
        $cc = gajiPokok($golongan);
        $dd = pembagiGajiPokok($cc, $golongan);
        $ee = hitungGajiPokok($aa, $dd);
        $ff = poinPendidikan($pendidikan);
        $gg = hitungPoinPendidikan($ff);
        $hh = poinSertifikasi($sertifikasi);
        $ii = hitungPoinSertifikasi($hh);
        $jj = poinLevelResiko($perangkat);
        $kk = hitungPoinLevelResiko($jj);
        $ll = poinGradeEmergency($perangkat);
        $mm = hitungPoinGradeEmergency($ll);
        $nn = poinStruktural($jabatan);
        $oo = hitungPoinStruktural($nn);
        $pp = poinLevelKoordinasi($jumlahBawahan);
        $qq = hitungPoinLevelKoordinasi($pp);
        $rr = PoinKepanitiaan($id);
        $ss = averageKepanitiaan($rr);
        $tt = hitungPoinKepanitiaan($ss);
         
        /*
        $a = poinMasaKerja(20);
$b = hitungPoinMasaKerja($a);
$aa = poinGolongan(5);
$bb = hitungPoinGolongan($aa);
$cc = gajiPokok(5);
$dd = pembagiGajiPokok($cc, 5);
$ee = hitungGajiPokok($aa, $dd);
$ff = poinPendidikan(10);
$gg = hitungPoinPendidikan($ff);
$hh = poinSertifikasi(4);
$ii = hitungPoinSertifikasi($hh);
$jj = poinLevelResiko(5);
$kk = hitungPoinLevelResiko($jj);
$ll = poinGradeEmergency(5);
$mm = hitungPoinGradeEmergency($ll);
$nn = poinStruktural(5);
$oo = hitungPoinStruktural($nn);
$pp = poinLevelKoordinasi(5);
$qq = hitungPoinLevelKoordinasi($pp);
$rr = PoinKepanitiaan(10);
$ss = averageKepanitiaan($rr);
$tt = hitungPoinKepanitiaan($ss);
         * 
         */
        
        $basic = 0;
        $basic_index = ($b+$ee+$bb)*14;
        $capacity_index = ($gg+$ii)*14;
        $risk_index = $kk * 14;
        $emergency_index = $mm * 14;
        $position_index = ($oo+$qq+$tt) * 14;
        $performance_index = $basic;
        $total = $basic_index + $capacity_index + $risk_index + $emergency_index + $position_index + $performance_index;
                  
        $sqlx = "INSERT INTO ".$namaTabel." (id, id_pegawai, masa_kerja, gaji_pokok, golongan, basic_index, pendidikan, sertifikasi, capacity_index, level_resiko, risk_index, level_emergency, emergency_index, struktural, level_koordinasi, kepanitiaan, position_index, ikip, ikukp, performance_index, total_individu) VALUES (NULL, '$id', '$b', '$ee', '$bb', '$basic_index', '$gg', '$ii', '$capacity_index', '$kk', '$risk_index', '$ll', '$emergency_index', '$oo', '$qq', '$tt', '$position_index', '$basic', '$basic', '$performance_index', 0)";
        $queryx = mysql("u6799722_rumahsakit_dev", $sqlx);
        
        $sqly = "CREATE TABLE ".$id."_ikip_".$namaTabel." LIKE master_ikip";
        $queryy = mysql("u6799722_rumahsakit_dev", $sqly);  
        
        $sqlyx = "INSERT ".$id."_ikip_".$namaTabel." SELECT * FROM master_ikip";
        $queryyx = mysql("u6799722_rumahsakit_dev", $sqlyx);
        
        $sqlt = "CREATE TABLE ".$id."_ikukp_".$namaTabel." LIKE master_ikukp";
        $quertt = mysql("u6799722_rumahsakit_dev", $sqlt); 
        
        $sqltx = "INSERT ".$id."_ikukp_".$namaTabel." SELECT * FROM master_ikukp";
        $querttx = mysql("u6799722_rumahsakit_dev", $sqltx);
        
        
    }
    
    $log_username = $_SESSION['umask'];
$log_activity = " mengisi tabel";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);
    
    $pesanIsiTabel='<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button>Sukses mengisi tabel pegawai!</div>';
}

}


