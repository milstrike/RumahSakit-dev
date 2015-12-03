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

include "../../../data/view/dataExtractor.php";

$nama_tabel = $_SESSION['tabel'];
$parameter = $_SESSION['params'];

$userRole = $_SESSION['role'];
$userID = $_SESSION['id_usr'];

$params = $_SESSION['levelparameter'];

$log_username = $_SESSION['umask'];
$log_activity = "mengakses data poin pegawai (evaluator)";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);

$error = "";
$finalisasiData = 0;


switch($userRole){
    case 2:
        viewNilaiPegawaiRole2($nama_tabel);
        break;
    
    case 4:
        viewNilaiPegawaiRole4($nama_tabel, $params);
        break;
    
    case 6:
        viewNilaiPegawaiRole4($nama_tabel, $params);
        break;
    
    case 8:
        viewNilaiPegawaiRole8($nama_tabel, $params);
        break;
}


function viewNilaiPegawaiRole2($nama_tabel){
    $jumlahAkhir = 0;
    $counter = 1;
$sql = "select * from user, user_detail, ".$nama_tabel.", data_pegawai where (user.id=user_detail.id) and (data_pegawai.id = ".$nama_tabel.".id_pegawai) and (user_detail.nama = data_pegawai.nama) and user.level=4";
$query = mysql("u6799722_rumahsakit_dev", $sql);
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $id_pegawai = $row["id_pegawai"];
        $masaKerja = $row["masa_kerja"];
        $gajiPokok = $row["gaji_pokok"];
        $golongan = $row["golongan"];
        $basicIndex = $row["basic_index"];
        $pendidikan = $row["pendidikan"];
        $sertifikasi = $row["sertifikasi"];
        $capacityIndex = $row["capacity_index"];
        $levelResiko = $row["level_resiko"];
        $riskIndex = $row["risk_index"];
        $levelEmergency = $row["level_emergency"];
        $emergencyIndex = $row["emergency_index"];
        $struktural = $row["struktural"];
        $levelKoordinasi = $row["level_koordinasi"];
        $kepanitiaan = $row["kepanitiaan"];
        $positionIndex = $row["position_index"];
        $sum_ikip = $row["sum_ikip"];
        $ikip = $row["ikip"];
        $sum_ikukp = $row["sum_ikup"];
        $ikukp = $row["ikukp"];
        $performanceIndex = $row["performance_index"];
        $totalIndividu = $row["total_individu"];
        
        $jumlahAkhir = $jumlahAkhir + $performanceIndex;
        
        $performance_index = ($ikip + $ikukp)*30;
        
         $sqlxh = "UPDATE u6799722_rumahsakit_dev.".$nama_tabel." SET performance_index='$performance_index' WHERE id='$id'";
         $queryxh = mysql("u6799722_rumahsakit_dev", $sqlxh);
        
        //ExtractData
        $namaPegawai = nama($id_pegawai);
        
        $sqlp = "select * from u6799722_rumahsakit_dev.data_pegawai where id='$id_pegawai'";
        $queryp = mysql("u6799722_rumahsakit_dev", "select * from u6799722_rumahsakit_dev.data_pegawai where id='$id_pegawai'");
        $rowp = mysql_fetch_array($queryp);
        
        $nip = $rowp["nip"];
        $golonganView = $rowp["golongan"];
        $satkerView = $rowp["satker"];
        $jabatanView = $rowp["jabatan"];
        $kelompokView = $rowp["kelompok"];
        $pendidikanView = $rowp["pendidikan"];
        $sertifikasiView = $rowp["sertifikasi"];
        $perangkatView = $rowp["perangkat"];
        $tanggal_masukView = $rowp["tanggal_masuk"];
        
        
        $getGolongan = poinGolongan($golonganView);
        
        $getPendidikan = poinPendidikan($pendidikanView);
        $getSertifikasi = poinSertifikasi($sertifikasiView);
        $getLevelResiko = poinLevelResiko($perangkatView);
        $getLevelEmergency = poinGradeEmergency($perangkatView);
        $getStruktural = poinStruktural($jabatanView);
        
        
        
        $golonganHelp = $golonganView;
        
        
        $golonganView = golongan($golonganView);
        $satkerView = satker($satkerView);
        $jabatanView = jabatan($jabatanView);
        $kelompokView = kelompok($kelompokView);
        $pendidikanView = pendidikan($pendidikanView);
        $sertifikasiView = sertifikasi($sertifikasiView);
        $risk_levelView = risk($perangkatView);
        $emergency_levelView = emergency($perangkatView);
        $perangkatView = perangkat($perangkatView);
        $masaKerjaView = lamaKerja($tanggal_masukView);
        $gajiView = gajiPokok($rowp["golongan"]);
        $levelKoordinasiView = IDLevelKoordinasi($id_pegawai);
        $kepanitiaanView = poinKepanitiaan($id_pegawai);
        
        $getMasaKerja = poinMasaKerja($masaKerjaView);
        $getGajiPokok = pembagiGajiPokok($gajiView, $golonganHelp);  
        $getLevelKoordinasi = poinLevelKoordinasi($levelKoordinasiView);
        
        $fghj = $kepanitiaanView/5;
        $getKepanitiaan = round($fghj);                        
        
        echo 
            "<tr>
            <td width='10%' id='thead'>".$counter."</td>
            <td width='30%' id='thead'>".$namaPegawai."</td>
            <td width='20%' id='thead'>
            <button class='btn btn-primary btn-small' title='Lihat Detail' data-toggle='collapse' data-target='#detail".$counter."' ><i class='icon-check icon-white'></i> Lihat Detail</button>
            </td>
            </tr>
            <tr>
                <td colspan=3>
                    <div class='collapse' id='detail".$counter."'>
                    <table width='100%' cellpadding='5' cellspacing='5' class='table table-bordered'>
                                <thead>
                                    <tr id='theadBasic'>
                                        <td id='thead'>Faktor</td>
                                        <td width='40%' colspan='2' id='thead'>Keterangan</td>                                        
                                        <td width='20%' id='thead'>Perhitungan Poin</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                    <td width='40%'>Masa Kerja</td>
                                    <td width='20%'>".$masaKerjaView." Tahun</td>
                                    <td width='20%'>".$getMasaKerja."</td>
                                    <td width='40%'>".$masaKerja."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Golongan</td>
                                    <td>".$golonganView."</td>
                                    <td>".$getGolongan."</td>
                                    <td>".$golongan."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Gaji Pokok</td>
                                    <td>".$gajiView."</td>
                                    <td>".$getGajiPokok."</td>
                                    <td>".$gajiPokok."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Pendidikan</td>
                                    <td>".$pendidikanView."</td>
                                    <td>".$getPendidikan."</td>
                                    <td>".$pendidikan."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Sertifikasi</td>
                                    <td>".$sertifikasiView."</td>
                                    <td>".$getSertifikasi."</td>
                                    <td>".$sertifikasi."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Level Resiko</td>
                                    <td>".$risk_levelView."</td>
                                    <td>".$getLevelResiko."</td>
                                    <td>".$levelResiko."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Level Emergency</td>
                                    <td>".$emergency_levelView."</td>
                                    <td>".$getLevelEmergency."</td>
                                    <td>$levelEmergency</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Struktural</td>
                                    <td>".$jabatanView."</td>
                                    <td>".$getStruktural."</td>
                                    <td>".$struktural."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Level Koordinasi</td>
                                    <td>".$levelKoordinasiView."</td>
                                    <td>".$getLevelKoordinasi."</td>
                                    <td>".$levelKoordinasi."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Kepanitiaan</td>
                                    <td>".$kepanitiaanView."</td>
                                    <td>".$getKepanitiaan."</td>
                                    <td>".$kepanitiaan."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>IKIP</td>
                                    <td style='vertical-align:middle;'>".$sum_ikip."</td>
                                    <td style='vertical-align:middle;'><form action='' method='post'>
                                        <input id='id' name='id' type='text' class='uneditable-input' value='".$id_pegawai."_ikip_".$nama_tabel."' style='display:none;'>
                                        <button type='submit' id='checkIKIP' name='checkIKIP' class='btn btn-primary btn-small'><i class='icon-check icon-white'></i>&nbsp;Edit IKIP</button><br/>   
                                        </form>
                                    </td>
                                    <td style='vertical-align:middle;'>".$ikip."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>IKUKP</td>
                                    <td style='vertical-align:middle;'>".$sum_ikukp."</td>
                                    <td style='vertical-align:middle;'><form action='' method='post'>
                                        <input id='id' name='id' type='text' class='uneditable-input' value='".$id_pegawai."_ikukp_".$nama_tabel."' style='display:none;'>
                                        <button type='submit' id='checkIKUKP' name='checkIKUKP' class='btn btn-primary btn-small'><i class='icon-check icon-white'></i>&nbsp;Edit IKUKP</button><br/>   
                                        </form>
                                    </td>
                                    <td style='vertical-align:middle;'>".$ikukp."</td>
                                    </tr>
                                    
                                </tbody>
                        </table>
                        
                        <table class='table table-bordered'>
                            <tr>
                                <td width='30%'>Nilai Akhir</td>
                                <td width='70%'>".$totalIndividu."</td>
                                </td>
                            </tr>
                        </table>
                        </div>
                </td>
            </tr>
            ";
        $counter = $counter + 1;
    }
    
}
else{
    echo 
            "<tr>
            <td colspan='7' style='padding:20px'> 
            <p align='center'>
            <strong>Belum ada data poin yang tersimpan, silakaan hubungi Admin</strong>
            </p>
            </td>
            </tr>
            ";
}
}

function viewNilaiPegawaiRole4($nama_tabel, $params){
     $jumlahAkhir = 0;
    $counter = 1;
$sql = "select * from user, user_detail, ".$nama_tabel.", data_pegawai where (user.id=user_detail.id) and (data_pegawai.id = ".$nama_tabel.".id_pegawai) and (user_detail.nama = data_pegawai.nama) and (".$params.")";
$query = mysql("u6799722_rumahsakit_dev", $sql);
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $id_pegawai = $row["id_pegawai"];
        $masaKerja = $row["masa_kerja"];
        $gajiPokok = $row["gaji_pokok"];
        $golongan = $row["golongan"];
        $basicIndex = $row["basic_index"];
        $pendidikan = $row["pendidikan"];
        $sertifikasi = $row["sertifikasi"];
        $capacityIndex = $row["capacity_index"];
        $levelResiko = $row["level_resiko"];
        $riskIndex = $row["risk_index"];
        $levelEmergency = $row["level_emergency"];
        $emergencyIndex = $row["emergency_index"];
        $struktural = $row["struktural"];
        $levelKoordinasi = $row["level_koordinasi"];
        $kepanitiaan = $row["kepanitiaan"];
        $positionIndex = $row["position_index"];
        $sum_ikip = $row["sum_ikip"];
        $ikip = $row["ikip"];
        $sum_ikukp = $row["sum_ikup"];
        $ikukp = $row["ikukp"];
        $performanceIndex = $row["performance_index"];
        $totalIndividu = $row["total_individu"];
        
        $jumlahAkhir = $jumlahAkhir + $performanceIndex;
        
        $performance_index = ($ikip + $ikukp)*30;
        
         $sqlxh = "UPDATE u6799722_rumahsakit_dev.".$nama_tabel." SET performance_index='$performance_index' WHERE id='$id'";
         $queryxh = mysql("u6799722_rumahsakit_dev", $sqlxh);
        
        //ExtractData
        $namaPegawai = nama($id_pegawai);
        
        $sqlp = "select * from u6799722_rumahsakit_dev.data_pegawai where id='$id_pegawai'";
        $queryp = mysql("u6799722_rumahsakit_dev", "select * from u6799722_rumahsakit_dev.data_pegawai where id='$id_pegawai'");
        $rowp = mysql_fetch_array($queryp);
        
        $nip = $rowp["nip"];
        $golonganView = $rowp["golongan"];
        $satkerView = $rowp["satker"];
        $jabatanView = $rowp["jabatan"];
        $kelompokView = $rowp["kelompok"];
        $pendidikanView = $rowp["pendidikan"];
        $sertifikasiView = $rowp["sertifikasi"];
        $perangkatView = $rowp["perangkat"];
        $tanggal_masukView = $rowp["tanggal_masuk"];
        
        
        $getGolongan = poinGolongan($golonganView);
        
        $getPendidikan = poinPendidikan($pendidikanView);
        $getSertifikasi = poinSertifikasi($sertifikasiView);
        $getLevelResiko = poinLevelResiko($perangkatView);
        $getLevelEmergency = poinGradeEmergency($perangkatView);
        $getStruktural = poinStruktural($jabatanView);
        
        
        
        $golonganHelp = $golonganView;
        
        
        $golonganView = golongan($golonganView);
        $satkerView = satker($satkerView);
        $jabatanView = jabatan($jabatanView);
        $kelompokView = kelompok($kelompokView);
        $pendidikanView = pendidikan($pendidikanView);
        $sertifikasiView = sertifikasi($sertifikasiView);
        $risk_levelView = risk($perangkatView);
        $emergency_levelView = emergency($perangkatView);
        $perangkatView = perangkat($perangkatView);
        $masaKerjaView = lamaKerja($tanggal_masukView);
        $gajiView = gajiPokok($rowp["golongan"]);
        $levelKoordinasiView = IDLevelKoordinasi($id_pegawai);
        $kepanitiaanView = poinKepanitiaan($id_pegawai);
        
        $getMasaKerja = poinMasaKerja($masaKerjaView);
        $getGajiPokok = pembagiGajiPokok($gajiView, $golonganHelp);  
        $getLevelKoordinasi = poinLevelKoordinasi($levelKoordinasiView);
        
        $fghj = $kepanitiaanView/5;
        $getKepanitiaan = round($fghj);                        
        
        echo 
            "<tr>
            <td width='10%' id='thead'>".$counter."</td>
            <td width='30%' id='thead'>".$namaPegawai."</td>
            <td width='20%' id='thead'>
            <button class='btn btn-primary btn-small' title='Lihat Detail' data-toggle='collapse' data-target='#detail".$counter."' ><i class='icon-check icon-white'></i> Lihat Detail</button>
            </td>
            </tr>
            <tr>
                <td colspan=3>
                    <div class='collapse' id='detail".$counter."'>
                    <table width='100%' cellpadding='5' cellspacing='5' class='table table-bordered'>
                                <thead>
                                    <tr id='theadBasic'>
                                        <td id='thead'>Faktor</td>
                                        <td width='40%' colspan='2' id='thead'>Keterangan</td>                                        
                                        <td width='20%' id='thead'>Perhitungan Poin</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                    <td width='40%'>Masa Kerja</td>
                                    <td width='20%'>".$masaKerjaView." Tahun</td>
                                    <td width='20%'>".$getMasaKerja."</td>
                                    <td width='40%'>".$masaKerja."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Golongan</td>
                                    <td>".$golonganView."</td>
                                    <td>".$getGolongan."</td>
                                    <td>".$golongan."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Gaji Pokok</td>
                                    <td>".$gajiView."</td>
                                    <td>".$getGajiPokok."</td>
                                    <td>".$gajiPokok."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Pendidikan</td>
                                    <td>".$pendidikanView."</td>
                                    <td>".$getPendidikan."</td>
                                    <td>".$pendidikan."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Sertifikasi</td>
                                    <td>".$sertifikasiView."</td>
                                    <td>".$getSertifikasi."</td>
                                    <td>".$sertifikasi."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Level Resiko</td>
                                    <td>".$risk_levelView."</td>
                                    <td>".$getLevelResiko."</td>
                                    <td>".$levelResiko."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Level Emergency</td>
                                    <td>".$emergency_levelView."</td>
                                    <td>".$getLevelEmergency."</td>
                                    <td>$levelEmergency</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Struktural</td>
                                    <td>".$jabatanView."</td>
                                    <td>".$getStruktural."</td>
                                    <td>".$struktural."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Level Koordinasi</td>
                                    <td>".$levelKoordinasiView."</td>
                                    <td>".$getLevelKoordinasi."</td>
                                    <td>".$levelKoordinasi."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Kepanitiaan</td>
                                    <td>".$kepanitiaanView."</td>
                                    <td>".$getKepanitiaan."</td>
                                    <td>".$kepanitiaan."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>IKIP</td>
                                    <td style='vertical-align:middle;'>".$sum_ikip."</td>
                                    <td style='vertical-align:middle;'><form action='' method='post'>
                                        <input id='id' name='id' type='text' class='uneditable-input' value='".$id_pegawai."_ikip_".$nama_tabel."' style='display:none;'>
                                        <button type='submit' id='checkIKIP' name='checkIKIP' class='btn btn-primary btn-small'><i class='icon-check icon-white'></i>&nbsp;Edit IKIP</button><br/>   
                                        </form>
                                    </td>
                                    <td style='vertical-align:middle;'>".$ikip."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>IKUKP</td>
                                    <td style='vertical-align:middle;'>".$sum_ikukp."</td>
                                    <td style='vertical-align:middle;'><form action='' method='post'>
                                        <input id='id' name='id' type='text' class='uneditable-input' value='".$id_pegawai."_ikukp_".$nama_tabel."' style='display:none;'>
                                        <button type='submit' id='checkIKUKP' name='checkIKUKP' class='btn btn-primary btn-small'><i class='icon-check icon-white'></i>&nbsp;Edit IKUKP</button><br/>   
                                        </form>
                                    </td>
                                    <td style='vertical-align:middle;'>".$ikukp."</td>
                                    </tr>
                                    
                                </tbody>
                        </table>
                        
                        <table class='table table-bordered'>
                            <tr>
                                <td width='30%'>Nilai Akhir</td>
                                <td width='70%'>".$totalIndividu."</td>
                                </td>
                            </tr>
                        </table>
                        </div>
                </td>
            </tr>
            ";
        $counter = $counter + 1;
    }
    
}
else{
    echo 
            "<tr>
            <td colspan='7' style='padding:20px'> 
            <p align='center'>
            <strong>Belum ada data poin yang tersimpan, silakaan hubungi Admin</strong>
            </p>
            </td>
            </tr>
            ";
}
}

function viewNilaiPegawaiRole6($nama_tabel, $params){
     $jumlahAkhir = 0;
    $counter = 1;
$sql = "select * from user, user_detail, ".$nama_tabel.", data_pegawai where (user.id=user_detail.id) and (data_pegawai.id = ".$nama_tabel.".id_pegawai) and (user_detail.nama = data_pegawai.nama) and (".$params.")";
$query = mysql("u6799722_rumahsakit_dev", $sql);
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $id_pegawai = $row["id_pegawai"];
        $masaKerja = $row["masa_kerja"];
        $gajiPokok = $row["gaji_pokok"];
        $golongan = $row["golongan"];
        $basicIndex = $row["basic_index"];
        $pendidikan = $row["pendidikan"];
        $sertifikasi = $row["sertifikasi"];
        $capacityIndex = $row["capacity_index"];
        $levelResiko = $row["level_resiko"];
        $riskIndex = $row["risk_index"];
        $levelEmergency = $row["level_emergency"];
        $emergencyIndex = $row["emergency_index"];
        $struktural = $row["struktural"];
        $levelKoordinasi = $row["level_koordinasi"];
        $kepanitiaan = $row["kepanitiaan"];
        $positionIndex = $row["position_index"];
        $sum_ikip = $row["sum_ikip"];
        $ikip = $row["ikip"];
        $sum_ikukp = $row["sum_ikup"];
        $ikukp = $row["ikukp"];
        $performanceIndex = $row["performance_index"];
        $totalIndividu = $row["total_individu"];
        
        $jumlahAkhir = $jumlahAkhir + $performanceIndex;
        
        $performance_index = ($ikip + $ikukp)*30;
        
         $sqlxh = "UPDATE u6799722_rumahsakit_dev.".$nama_tabel." SET performance_index='$performance_index' WHERE id='$id'";
         $queryxh = mysql("u6799722_rumahsakit_dev", $sqlxh);
        
        //ExtractData
        $namaPegawai = nama($id_pegawai);
        
        $sqlp = "select * from u6799722_rumahsakit_dev.data_pegawai where id='$id_pegawai'";
        $queryp = mysql("u6799722_rumahsakit_dev", "select * from u6799722_rumahsakit_dev.data_pegawai where id='$id_pegawai'");
        $rowp = mysql_fetch_array($queryp);
        
        $nip = $rowp["nip"];
        $golonganView = $rowp["golongan"];
        $satkerView = $rowp["satker"];
        $jabatanView = $rowp["jabatan"];
        $kelompokView = $rowp["kelompok"];
        $pendidikanView = $rowp["pendidikan"];
        $sertifikasiView = $rowp["sertifikasi"];
        $perangkatView = $rowp["perangkat"];
        $tanggal_masukView = $rowp["tanggal_masuk"];
        
        
        $getGolongan = poinGolongan($golonganView);
        
        $getPendidikan = poinPendidikan($pendidikanView);
        $getSertifikasi = poinSertifikasi($sertifikasiView);
        $getLevelResiko = poinLevelResiko($perangkatView);
        $getLevelEmergency = poinGradeEmergency($perangkatView);
        $getStruktural = poinStruktural($jabatanView);
        
        
        
        $golonganHelp = $golonganView;
        
        
        $golonganView = golongan($golonganView);
        $satkerView = satker($satkerView);
        $jabatanView = jabatan($jabatanView);
        $kelompokView = kelompok($kelompokView);
        $pendidikanView = pendidikan($pendidikanView);
        $sertifikasiView = sertifikasi($sertifikasiView);
        $risk_levelView = risk($perangkatView);
        $emergency_levelView = emergency($perangkatView);
        $perangkatView = perangkat($perangkatView);
        $masaKerjaView = lamaKerja($tanggal_masukView);
        $gajiView = gajiPokok($rowp["golongan"]);
        $levelKoordinasiView = IDLevelKoordinasi($id_pegawai);
        $kepanitiaanView = poinKepanitiaan($id_pegawai);
        
        $getMasaKerja = poinMasaKerja($masaKerjaView);
        $getGajiPokok = pembagiGajiPokok($gajiView, $golonganHelp);  
        $getLevelKoordinasi = poinLevelKoordinasi($levelKoordinasiView);
        
        $fghj = $kepanitiaanView/5;
        $getKepanitiaan = round($fghj);                        
        
        echo 
            "<tr>
            <td width='10%' id='thead'>".$counter."</td>
            <td width='30%' id='thead'>".$namaPegawai."</td>
            <td width='20%' id='thead'>
            <button class='btn btn-primary btn-small' title='Lihat Detail' data-toggle='collapse' data-target='#detail".$counter."' ><i class='icon-check icon-white'></i> Lihat Detail</button>
            </td>
            </tr>
            <tr>
                <td colspan=3>
                    <div class='collapse' id='detail".$counter."'>
                    <table width='100%' cellpadding='5' cellspacing='5' class='table table-bordered'>
                                <thead>
                                    <tr id='theadBasic'>
                                        <td id='thead'>Faktor</td>
                                        <td width='40%' colspan='2' id='thead'>Keterangan</td>                                        
                                        <td width='20%' id='thead'>Perhitungan Poin</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                    <td width='40%'>Masa Kerja</td>
                                    <td width='20%'>".$masaKerjaView." Tahun</td>
                                    <td width='20%'>".$getMasaKerja."</td>
                                    <td width='40%'>".$masaKerja."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Golongan</td>
                                    <td>".$golonganView."</td>
                                    <td>".$getGolongan."</td>
                                    <td>".$golongan."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Gaji Pokok</td>
                                    <td>".$gajiView."</td>
                                    <td>".$getGajiPokok."</td>
                                    <td>".$gajiPokok."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Pendidikan</td>
                                    <td>".$pendidikanView."</td>
                                    <td>".$getPendidikan."</td>
                                    <td>".$pendidikan."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Sertifikasi</td>
                                    <td>".$sertifikasiView."</td>
                                    <td>".$getSertifikasi."</td>
                                    <td>".$sertifikasi."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Level Resiko</td>
                                    <td>".$risk_levelView."</td>
                                    <td>".$getLevelResiko."</td>
                                    <td>".$levelResiko."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Level Emergency</td>
                                    <td>".$emergency_levelView."</td>
                                    <td>".$getLevelEmergency."</td>
                                    <td>$levelEmergency</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Struktural</td>
                                    <td>".$jabatanView."</td>
                                    <td>".$getStruktural."</td>
                                    <td>".$struktural."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Level Koordinasi</td>
                                    <td>".$levelKoordinasiView."</td>
                                    <td>".$getLevelKoordinasi."</td>
                                    <td>".$levelKoordinasi."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Kepanitiaan</td>
                                    <td>".$kepanitiaanView."</td>
                                    <td>".$getKepanitiaan."</td>
                                    <td>".$kepanitiaan."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>IKIP</td>
                                    <td style='vertical-align:middle;'>".$sum_ikip."</td>
                                    <td style='vertical-align:middle;'><form action='' method='post'>
                                        <input id='id' name='id' type='text' class='uneditable-input' value='".$id_pegawai."_ikip_".$nama_tabel."' style='display:none;'>
                                        <button type='submit' id='checkIKIP' name='checkIKIP' class='btn btn-primary btn-small'><i class='icon-check icon-white'></i>&nbsp;Edit IKIP</button><br/>   
                                        </form>
                                    </td>
                                    <td style='vertical-align:middle;'>".$ikip."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>IKUKP</td>
                                    <td style='vertical-align:middle;'>".$sum_ikukp."</td>
                                    <td style='vertical-align:middle;'><form action='' method='post'>
                                        <input id='id' name='id' type='text' class='uneditable-input' value='".$id_pegawai."_ikukp_".$nama_tabel."' style='display:none;'>
                                        <button type='submit' id='checkIKUKP' name='checkIKUKP' class='btn btn-primary btn-small'><i class='icon-check icon-white'></i>&nbsp;Edit IKUKP</button><br/>   
                                        </form>
                                    </td>
                                    <td style='vertical-align:middle;'>".$ikukp."</td>
                                    </tr>
                                    
                                </tbody>
                        </table>
                        
                        <table class='table table-bordered'>
                            <tr>
                                <td width='30%'>Nilai Akhir</td>
                                <td width='70%'>".$totalIndividu."</td>
                                </td>
                            </tr>
                        </table>
                        </div>
                </td>
            </tr>
            ";
        $counter = $counter + 1;
    }
    
}
else{
    echo 
            "<tr>
            <td colspan='7' style='padding:20px'> 
            <p align='center'>
            <strong>Belum ada data poin yang tersimpan, silakaan hubungi Admin</strong>
            </p>
            </td>
            </tr>
            ";
}
}

function viewNilaiPegawaiRole8($nama_tabel, $params){
    $jumlahAkhir = 0;
    $counter = 1;
$sql = "select * from ".$nama_tabel.", data_pegawai where (".$params.") and (data_pegawai.id=".$nama_tabel.".id_pegawai)";
$query = mysql("u6799722_rumahsakit_dev", $sql);
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $id_pegawai = $row["id_pegawai"];
        $masaKerja = $row["masa_kerja"];
        $gajiPokok = $row["gaji_pokok"];
        $golongan = $row["golongan"];
        $basicIndex = $row["basic_index"];
        $pendidikan = $row["pendidikan"];
        $sertifikasi = $row["sertifikasi"];
        $capacityIndex = $row["capacity_index"];
        $levelResiko = $row["level_resiko"];
        $riskIndex = $row["risk_index"];
        $levelEmergency = $row["level_emergency"];
        $emergencyIndex = $row["emergency_index"];
        $struktural = $row["struktural"];
        $levelKoordinasi = $row["level_koordinasi"];
        $kepanitiaan = $row["kepanitiaan"];
        $positionIndex = $row["position_index"];
        $sum_ikip = $row["sum_ikip"];
        $ikip = $row["ikip"];
        $sum_ikukp = $row["sum_ikup"];
        $ikukp = $row["ikukp"];
        $performanceIndex = $row["performance_index"];
        $totalIndividu = $row["total_individu"];
        
        $jumlahAkhir = $jumlahAkhir + $performanceIndex;
        
        $performance_index = ($ikip + $ikukp)*30;
        
         $sqlxh = "UPDATE u6799722_rumahsakit_dev.".$nama_tabel." SET performance_index='$performance_index' WHERE id='$id'";
         $queryxh = mysql("u6799722_rumahsakit_dev", $sqlxh);
        
        //ExtractData
        $namaPegawai = nama($id_pegawai);
        
        $sqlp = "select * from u6799722_rumahsakit_dev.data_pegawai where id='$id_pegawai'";
        $queryp = mysql("u6799722_rumahsakit_dev", "select * from u6799722_rumahsakit_dev.data_pegawai where id='$id_pegawai'");
        $rowp = mysql_fetch_array($queryp);
        
        $nip = $rowp["nip"];
        $golonganView = $rowp["golongan"];
        $satkerView = $rowp["satker"];
        $jabatanView = $rowp["jabatan"];
        $kelompokView = $rowp["kelompok"];
        $pendidikanView = $rowp["pendidikan"];
        $sertifikasiView = $rowp["sertifikasi"];
        $perangkatView = $rowp["perangkat"];
        $tanggal_masukView = $rowp["tanggal_masuk"];
        
        
        $getGolongan = poinGolongan($golonganView);
        
        $getPendidikan = poinPendidikan($pendidikanView);
        $getSertifikasi = poinSertifikasi($sertifikasiView);
        $getLevelResiko = poinLevelResiko($perangkatView);
        $getLevelEmergency = poinGradeEmergency($perangkatView);
        $getStruktural = poinStruktural($jabatanView);
        
        
        
        $golonganHelp = $golonganView;
        
        
        $golonganView = golongan($golonganView);
        $satkerView = satker($satkerView);
        $jabatanView = jabatan($jabatanView);
        $kelompokView = kelompok($kelompokView);
        $pendidikanView = pendidikan($pendidikanView);
        $sertifikasiView = sertifikasi($sertifikasiView);
        $risk_levelView = risk($perangkatView);
        $emergency_levelView = emergency($perangkatView);
        $perangkatView = perangkat($perangkatView);
        $masaKerjaView = lamaKerja($tanggal_masukView);
        $gajiView = gajiPokok($rowp["golongan"]);
        $levelKoordinasiView = IDLevelKoordinasi($id_pegawai);
        $kepanitiaanView = poinKepanitiaan($id_pegawai);
        
        $getMasaKerja = poinMasaKerja($masaKerjaView);
        $getGajiPokok = pembagiGajiPokok($gajiView, $golonganHelp);  
        $getLevelKoordinasi = poinLevelKoordinasi($levelKoordinasiView);
        
        $fghj = $kepanitiaanView/5;
        $getKepanitiaan = round($fghj);                        
        
        echo 
            "<tr>
            <td width='10%' id='thead'>".$counter."</td>
            <td width='30%' id='thead'>".$namaPegawai."</td>
            <td width='20%' id='thead'>
            <button class='btn btn-primary btn-small' title='Lihat Detail' data-toggle='collapse' data-target='#detail".$counter."' ><i class='icon-check icon-white'></i> Lihat Detail</button>
            </td>
            </tr>
            <tr>
                <td colspan=3>
                    <div class='collapse' id='detail".$counter."'>
                    <table width='100%' cellpadding='5' cellspacing='5' class='table table-bordered'>
                                <thead>
                                    <tr id='theadBasic'>
                                        <td id='thead'>Faktor</td>
                                        <td width='40%' colspan='2' id='thead'>Keterangan</td>                                        
                                        <td width='20%' id='thead'>Perhitungan Poin</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                    <td width='40%'>Masa Kerja</td>
                                    <td width='20%'>".$masaKerjaView." Tahun</td>
                                    <td width='20%'>".$getMasaKerja."</td>
                                    <td width='40%'>".$masaKerja."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Golongan</td>
                                    <td>".$golonganView."</td>
                                    <td>".$getGolongan."</td>
                                    <td>".$golongan."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Gaji Pokok</td>
                                    <td>".$gajiView."</td>
                                    <td>".$getGajiPokok."</td>
                                    <td>".$gajiPokok."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Pendidikan</td>
                                    <td>".$pendidikanView."</td>
                                    <td>".$getPendidikan."</td>
                                    <td>".$pendidikan."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Sertifikasi</td>
                                    <td>".$sertifikasiView."</td>
                                    <td>".$getSertifikasi."</td>
                                    <td>".$sertifikasi."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Level Resiko</td>
                                    <td>".$risk_levelView."</td>
                                    <td>".$getLevelResiko."</td>
                                    <td>".$levelResiko."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Level Emergency</td>
                                    <td>".$emergency_levelView."</td>
                                    <td>".$getLevelEmergency."</td>
                                    <td>$levelEmergency</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Struktural</td>
                                    <td>".$jabatanView."</td>
                                    <td>".$getStruktural."</td>
                                    <td>".$struktural."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Level Koordinasi</td>
                                    <td>".$levelKoordinasiView."</td>
                                    <td>".$getLevelKoordinasi."</td>
                                    <td>".$levelKoordinasi."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>Kepanitiaan</td>
                                    <td>".$kepanitiaanView."</td>
                                    <td>".$getKepanitiaan."</td>
                                    <td>".$kepanitiaan."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>IKIP</td>
                                    <td style='vertical-align:middle;'>".$sum_ikip."</td>
                                    <td style='vertical-align:middle;'><form action='' method='post'>
                                        <input id='id' name='id' type='text' class='uneditable-input' value='".$id_pegawai."_ikip_".$nama_tabel."' style='display:none;'>
                                        <button type='submit' id='checkIKIP' name='checkIKIP' class='btn btn-primary btn-small'><i class='icon-check icon-white'></i>&nbsp;Edit IKIP</button><br/>   
                                        </form>
                                    </td>
                                    <td style='vertical-align:middle;'>".$ikip."</td>
                                    </tr>
                                    
                                    <tr>
                                    <td>IKUKP</td>
                                    <td style='vertical-align:middle;'>".$sum_ikukp."</td>
                                    <td style='vertical-align:middle;'><form action='' method='post'>
                                        <input id='id' name='id' type='text' class='uneditable-input' value='".$id_pegawai."_ikukp_".$nama_tabel."' style='display:none;'>
                                        <button type='submit' id='checkIKUKP' name='checkIKUKP' class='btn btn-primary btn-small'><i class='icon-check icon-white'></i>&nbsp;Edit IKUKP</button><br/>   
                                        </form>
                                    </td>
                                    <td style='vertical-align:middle;'>".$ikukp."</td>
                                    </tr>
                                    
                                </tbody>
                        </table>
                        
                        <table class='table table-bordered'>
                            <tr>
                                <td width='30%'>Nilai Akhir</td>
                                <td width='70%'>".$totalIndividu."</td>
                                </td>
                            </tr>
                        </table>
                        </div>
                </td>
            </tr>
            ";
        $counter = $counter + 1;
    }
    
}
else{
    echo 
            "<tr>
            <td colspan='7' style='padding:20px'> 
            <p align='center'>
            <strong>Belum ada data poin yang tersimpan, silakaan hubungi Admin</strong>
            </p>
            </td>
            </tr>
            ";
}
}