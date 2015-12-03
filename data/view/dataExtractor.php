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

$errorFunction = '';

function getGolonganFromID($num){
    
    $dataGolongan = "";
    
    $query = mysql("u6799722_rumahsakit_dev", "select * from u6799722_rumahsakit_dev.data_pegawai where data_pegawai.id='$num'");
    $row = mysql_fetch_array($query);
    $dataGolongan = $row['golongan'];
    
    return $dataGolongan;
    
}

function golongan($num){
    
    $dataGolongan = "";
    
    $query = mysql("u6799722_rumahsakit_dev", "select * from u6799722_rumahsakit_dev.a_2_kepegawaian where a_2_kepegawaian.id='$num'");
    $row = mysql_fetch_array($query);
    $dataGolongan = $row['keterangan'];
    
    return $dataGolongan;
}

function pajak($num){
    
    $dataPajak = 0;
    
    $query = mysql("u6799722_rumahsakit_dev", "select * from u6799722_rumahsakit_dev.a_2_kepegawaian where a_2_kepegawaian.id='$num'");
    $row = mysql_fetch_array($query);
    $dataPajak = $row['pajak'];
    
    return $dataPajak;
}

function satker($num){
    
    $dataSatker = "";
    
    $query = mysql("u6799722_rumahsakit_dev", "select satuan_kerja from u6799722_rumahsakit_dev.satker where satker.id='$num'");
    $row = mysql_fetch_array($query);
    $dataSatker = $row['satuan_kerja'];
    
    return $dataSatker;
}

function jabatan($num){
    
    $dataJabatan = "";
    
    $query = mysql("u6799722_rumahsakit_dev", "select keterangan from u6799722_rumahsakit_dev.e_1_struktural where e_1_struktural.id='$num'");
    $row = mysql_fetch_array($query);
    $dataJabatan = $row['keterangan'];
    
    return $dataJabatan;
}

function kelompok($num){
    
    $dataKelompok = "";
    
    $query = mysql("u6799722_rumahsakit_dev", "select kelompok from u6799722_rumahsakit_dev.kelompok where kelompok.id='$num'");
    $row = mysql_fetch_array($query);
    $dataKelompok = $row['kelompok'];
    
    return $dataKelompok;
}

function pendidikan($num){
    
    $dataPendidikan = "";
    
    $query = mysql("u6799722_rumahsakit_dev", "select keterangan from u6799722_rumahsakit_dev.b_1_pendidikan where b_1_pendidikan.id='$num'");
    $row = mysql_fetch_array($query);
    $dataPendidikan = $row['keterangan'];
    
    return $dataPendidikan;
}

function sertifikasi($num){
    
    $dataSertifikasi = "";
    
    $query = mysql("u6799722_rumahsakit_dev", "select keterangan from u6799722_rumahsakit_dev.b_2_sertifikasi where b_2_sertifikasi.id='$num'");
    $row = mysql_fetch_array($query);
    $dataSertifikasi = $row['keterangan'];
    
    return $dataSertifikasi;
}

function perangkat($num){
    
    $dataPerangkat = "";
    
    $query = mysql("u6799722_rumahsakit_dev", "select keterangan from u6799722_rumahsakit_dev.perangkat_rs where perangkat_rs.id='$num'");
    $row = mysql_fetch_array($query);
    $dataPerangkat = $row['keterangan'];
    
    return $dataPerangkat;
}

function risk($num){
    
    $dataRisk = "";
    
    $query = mysql("u6799722_rumahsakit_dev", "select level_risk from u6799722_rumahsakit_dev.perangkat_rs where perangkat_rs.id='$num'");
    $row = mysql_fetch_array($query);
    $dataRisk = $row['level_risk'];
    
    return $dataRisk;
}

function emergency($num){
    
    $dataEmergency = "";
    
    $query = mysql("u6799722_rumahsakit_dev", "select level_emergency from u6799722_rumahsakit_dev.perangkat_rs where perangkat_rs.id='$num'");
    $row = mysql_fetch_array($query);
    $dataEmergency = $row['level_emergency'];
    
    return $dataEmergency;
}

function lamaKerja($then){
    
    $then_ts = strtotime($then);
    $then_year = date('Y', $then_ts);
    $age = date('Y') - $then_year;
    if(strtotime('+' . $age . ' years', $then_ts) > time()) $age--;
    return $age;
}

function nama($num){
    $nama = "";
            
    $query = mysql("u6799722_rumahsakit_dev", "select nama from u6799722_rumahsakit_dev.data_pegawai where data_pegawai.id='$num'");
    $row = mysql_fetch_array($query);
    $nama = $row['nama'];
    return $nama;
}

function jabatanPanitia($num){
    $jabatan = "";
    $query = mysql("u6799722_rumahsakit_dev", "select * from e_2_kepanitiaan_tim_kerja where e_2_kepanitiaan_tim_kerja.id='$num'");
    $row = mysql_fetch_array($query);
    $jabatan = $row['keterangan'];
    return $jabatan;
}

function findID($num){
    $nama = "";
    $query = mysql("u6799722_rumahsakit_dev", "select * from data_pegawai where nama LIKE '$num'");
    $row = mysql_fetch_array($query);
    $nama = $row['id'];
    
    return $nama;
    
}

function jumlahBawahan($num){
    $bawahan = "";
    $query = mysql("u6799722_rumahsakit_dev", "select * from e_3_level_koordinasi where jumlah='$num'");
    $row = mysql_fetch_array($query);
    $bawahan = $row['jumlah'];
    
    return $bawahan;
}

function getPoinLevelKoordinasi($num){
    $poin = "";
    $query = mysql("u6799722_rumahsakit_dev", "select * from e_3_level_koordinasi where jumlah='$num'");
    $row = mysql_fetch_array($query);
    $poin = $row['poin'];
    if($poin > 0){
        $errorFunction = '<div class="alert alert-success fade in"><button type="button" class="close" data-dismiss="alert">&times;</button>Sukses mengubah data jumlah bawahan!</div>';
    }else{
        $errorFunction = '<div class="alert alert-danger fade in"><button type="button" class="close" data-dismiss="alert">&times;</button>Jumlah bawahan belum terdefinisikan di Konfigurasi Poin Level Koordinasi!</div>';
    }
    
    return $poin;
}

function findPoinLevelKoordinasi($num){
    $poin = "";
    $query = mysql("u6799722_rumahsakit_dev", "select * from level_koordinasi where id_pegawai='$num'");
    $row = mysql_fetch_array($query);
    $poin = $row['id_level_koordinasi'];
    
    $poinFinal = IDLevelKoordinasi($poin);
    return $poinFinal;
}

function IDLevelKoordinasi($num){
    $poin = "";
    $query = mysql("u6799722_rumahsakit_dev", "select * from e_3_level_koordinasi where id='$num'");
    $row = mysql_fetch_array($query);
    $poin = $row['jumlah'];
    
    return $poin;
}

function MonthSelector($num){
    $bulanHasil = "";
    
    switch($num){
        case 1:
            $bulanHasil = "JANUARI";
            break;
        case 2:
            $bulanHasil = "FEBRUARI";
            break;
        case 3:
            $bulanHasil = "MARET";
            break;
        case 4:
            $bulanHasil = "APRIL";
            break;
        case 5:
            $bulanHasil = "MEI";
            break;
        case 6:
            $bulanHasil = "JUNI";
            break;
        case 7:
            $bulanHasil = "JULI";
            break;
        case 8:
            $bulanHasil = "AGUSTUS";
            break;
        case 9:
            $bulanHasil = "SEPTEMBER";
            break;
        case 10:
            $bulanHasil = "OKTOBER";
            break;
        case 11:
            $bulanHasil = "NOVEMBER";
            break;
        case 12:
            $bulanHasil = "DESEMBER";
            break;
        
        default :
            $bulanHasil = "NONE";
            break;
    }
    return $bulanHasil;
}

function poinMasaKerja($num){
    $poin = 0;
    
    $query = mysql("u6799722_rumahsakit_dev", "select * from u6799722_rumahsakit_dev.a_1_masa_kerja where a_1_masa_kerja.keterangan='$num'");
    $row = mysql_fetch_array($query);
    $poin = $row['poin'];
    
    return $poin;
    
}

function hitungPoinMasaKerja($num){
    $hitungPoin = 0;
    $query = mysql("u6799722_rumahsakit_dev", "select MAX(poin) as poin from u6799722_rumahsakit_dev.a_1_masa_kerja");
    $row = mysql_fetch_array($query);
    $hitungPoin = $row['poin'];
    
    $finalPoin = $num/$hitungPoin * 0.35;
    
    return $finalPoin;
}

function poinGolongan($num){
    $poin = 0;
    
    $query = mysql("u6799722_rumahsakit_dev", "select * from u6799722_rumahsakit_dev.a_2_kepegawaian where a_2_kepegawaian.id='$num'");
    $row = mysql_fetch_array($query);
    $poin = $row['poin'];
    
    return $poin;
}

function hitungPoinGolongan($num){
    $hitungPoin = 0;
    $query = mysql("u6799722_rumahsakit_dev", "select MAX(poin) as poin from u6799722_rumahsakit_dev.a_2_kepegawaian");
    $row = mysql_fetch_array($query);
    $hitungPoin = $row['poin'];
    
    $finalPoin = $num/$hitungPoin * 0.3;
    
    return $finalPoin;
}

function gajiPokok($num){
    $gaji = 0;
    
    $query = mysql("u6799722_rumahsakit_dev", "select * from u6799722_rumahsakit_dev.a_2_kepegawaian where a_2_kepegawaian.id='$num'");
    $row = mysql_fetch_array($query);
    $gaji = $row['gaji'];
    
    return $gaji;
}

function pembagiGajiPokok($num1, $num2){
    $pembagi = 0;
    
    $query = mysql("u6799722_rumahsakit_dev", "select * from u6799722_rumahsakit_dev.a_2_kepegawaian where a_2_kepegawaian.id='$num2'");
    $row = mysql_fetch_array($query);
    $pembagi = $row['pembagi'];
    
    $hitungPoin1 = $num1/$pembagi;
    
    return $hitungPoin1;
}

function hitungGajiPokok($num1, $num2){
    $hitungGajiPokok = $num2/$num1 * 0.35;
    return $hitungGajiPokok;
}

function poinPendidikan($num){
    $poin = 0;
    
    $query = mysql("u6799722_rumahsakit_dev", "select * from u6799722_rumahsakit_dev.b_1_pendidikan where b_1_pendidikan.id='$num'");
    $row = mysql_fetch_array($query);
    $poin = $row['poin'];
    
    return $poin;
}

function hitungPoinPendidikan($num){
    $poin = 0;
    $query = mysql("u6799722_rumahsakit_dev", "select MAX(poin) as poin from u6799722_rumahsakit_dev.b_1_pendidikan");
    $row = mysql_fetch_array($query);
    $poin = $row['poin'];
    
    $finalPoin = $num/$poin * 0.6;
    
    return $finalPoin;
}

function poinSertifikasi($num){
    $poin = 0;
    
    $query = mysql("u6799722_rumahsakit_dev", "select * from u6799722_rumahsakit_dev.b_2_sertifikasi where b_2_sertifikasi.id='$num'");
    $row = mysql_fetch_array($query);
    $poin = $row['poin'];
    
    return $poin;
}

function hitungPoinSertifikasi($num){
    $poin = 0;
    $query = mysql("u6799722_rumahsakit_dev", "select MAX(poin) as poin from u6799722_rumahsakit_dev.b_2_sertifikasi");
    $row = mysql_fetch_array($query);
    $poin = $row['poin'];
    
    $finalPoin = $num/$poin * 0.4;
    
    return $finalPoin;
}

function poinLevelResiko($num){
    $poin = 0;
    
    $query = mysql("u6799722_rumahsakit_dev", "select * from u6799722_rumahsakit_dev.perangkat_rs where perangkat_rs.id='$num'");
    $row = mysql_fetch_array($query);
    $poin = $row['poin_risk'];
    
    return $poin;
}

function hitungPoinLevelResiko($num){
    $poin = 0;
    $query = mysql("u6799722_rumahsakit_dev", "select MAX(poin_risk) as poin from u6799722_rumahsakit_dev.perangkat_rs");
    $row = mysql_fetch_array($query);
    $poin = $row['poin'];
    
    $finalPoin = $num/$poin * 1.0;
    
    return $finalPoin;
}

function poinGradeEmergency($num){
    $poin = 0;
    
    $query = mysql("u6799722_rumahsakit_dev", "select * from u6799722_rumahsakit_dev.perangkat_rs where perangkat_rs.id='$num'");
    $row = mysql_fetch_array($query);
    $poin = $row['poin_emergency'];
    
    return $poin;
}

function hitungPoinGradeEmergency($num){
    $poin = 0;
    $query = mysql("u6799722_rumahsakit_dev", "select MAX(poin_emergency) as poin from u6799722_rumahsakit_dev.perangkat_rs");
    $row = mysql_fetch_array($query);
    $poin = $row['poin'];
    
    $finalPoin = $num/$poin * 1.0;
    
    return $finalPoin;
}

function poinStruktural($num){
    $poin = 0;
    
    $query = mysql("u6799722_rumahsakit_dev", "select * from u6799722_rumahsakit_dev.e_1_struktural where e_1_struktural.id='$num'");
    $row = mysql_fetch_array($query);
    $poin = $row['poin'];
    
    return $poin;
}

function hitungPoinStruktural($num){
    //$poin = 0;
    //$query = mysql("u6799722_rumahsakit_dev", "select MAX(poin) as poin from u6799722_rumahsakit_dev.e_1_struktural");
    //$row = mysql_fetch_array($query);
    //$poin = $row['poin'];
    
    $finalPoin = $num/$num * 0.4;
    
    return $finalPoin;
}

function poinLevelKoordinasi($num){
    $poin = 0;
    
    $query = mysql("u6799722_rumahsakit_dev", "select * from u6799722_rumahsakit_dev.e_3_level_koordinasi where e_3_level_koordinasi.jumlah='$num'");
    $row = mysql_fetch_array($query);
    $poin = $row['poin'];
    
    return $poin;
}

function hitungPoinLevelKoordinasi($num){
    $poin = 0;
    $query = mysql("u6799722_rumahsakit_dev", "select MAX(poin) as poin from u6799722_rumahsakit_dev.e_3_level_koordinasi");
    $row = mysql_fetch_array($query);
    $poin = $row['poin'];
    
    $finalPoin = $num/$poin * 0.3;
    
    return $finalPoin;
}

function poinKepanitiaan($num){
    $poin = 0;
    
    $query = mysql("u6799722_rumahsakit_dev", "select SUM(poin) as poin from u6799722_rumahsakit_dev.detail_kepanitiaan where detail_kepanitiaan.id_pegawai='$num'");
    $row = mysql_fetch_array($query);
    $poin = $row['poin'];
    
    return $poin;
}

function averageKepanitiaan($num){
    
    $poin = $num/5;
    $poin = round($poin);
   
    return $poin;
}

function hitungPoinKepanitiaan($num){
    if($num == 0){
        $finalPoin = 0;
    }
        
    else{
        $finalPoin = $num/$num * 0.3;
    }
    return $finalPoin;
}

function getTingkatan($num){
    $tingkatan = "";
    
    $query = mysql("u6799722_rumahsakit_dev", "select * from user_role where id='$num'");
    $row = mysql_fetch_array($query);
    $tingkatan = $row['role'];
    
    return $tingkatan;
}

function levelDescription($num){
    $levelDescription = "";
    
    $query = mysql("u6799722_rumahsakit_dev", "select * from user_role where id='$num'");
    $row = mysql_fetch_array($query);
    $levelDescription = $row['keterangan'];
    
    return $levelDescription;
}



function userDelimiter($num){
    
    $optionUser = "";
    
    $sql = "select * from data_pegawai where jabatan='$num'";
$query = mysql("u6799722_rumahsakit_dev", "$sql");
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $keterangan = $row["nama"];
        
        $optionUser = $optionUser."<option value='".$keterangan."'";
        
        if($id == $_SESSION["dataEditStruktural"]){
            $optionUser = $optionUser."selected='selected'>".$keterangan."</option>";
        }
        else{
            $optionUser = $optionUser.">".$keterangan."</option>";
        }
    }
}

return $optionUser;

}


function selectedGolongan($num){
    
}

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


echo $a." Poin Masa Kerja <br>";
echo $b." Poin Masa Kerja <br>";
echo $aa." Poin Golongan<br>";
echo $bb." Hitung Poin Golongan <br>";
echo $cc." Gaji Pokok <br>";
echo $dd." Hitung Pembagi gaji Pokok <br>";
echo $ee." Poin Gaji Pokok<br> ";
echo $ff." Poin Pendidikan<br> ";
echo $gg." Hitung Poin Pendidikan<br> ";
echo $hh." Poin Sertifikasi<br> ";
echo $ii." Hitung Poin Sertifikasi<br> ";
echo $jj." Poin Level Resiko<br> ";
echo $kk." Hitung Poin Level Resiko<br> ";
echo $ll." Poin Grade Emergency<br> ";
echo $mm." Hitung Poin Grade Emergency<br> ";
echo $nn." Poin Struktural<br> ";
echo $oo." Hitung Poin Struktural<br> "; 
echo $pp." Poin Level Koordinasi<br> ";
echo $qq." Hitung Poin Level Koordinasi<br> ";
echo $rr." Hitung Poin Kepanitiaan<br> ";
echo $ss." Average Poin Kepanitiaan<br> ";
echo $tt." Hitung Poin Kepanitiaan<br> ";
*/