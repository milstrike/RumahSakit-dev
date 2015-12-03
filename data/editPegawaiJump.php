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

if (isset($_POST['submitEdit'])) {
    
    $id = $_POST['id'];
    $_SESSION["userIDEdit"] = $id;
    
    
    $query = mysql("u6799722_rumahsakit_dev", "select * from u6799722_rumahsakit_dev.data_pegawai where data_pegawai.id='$id'");
    $row = mysql_fetch_array($query);
    
    $dataNama = $row['nama'];
    $dataNIP = $row['nip'];
    $dataGolongan = $row['golongan'];
    $dataSatuanKerja = $row['satker'];
    $dataStruktural = $row['jabatan'];
    $dataKelompok = $row['kelompok'];
    $dataPendidikan = $row['pendidikan'];
    $dataSertifikasi = $row['sertifikasi'];
    $dataUnit = $row['perangkat'];
    $dataTanggal = $row['tanggal_masuk'];
    
    
    list($data1, $data2, $data3) = explode("-", $dataTanggal, 3);
    $tahun = $data1;
    $bulan = $data2;
    $tanggal = $data3;
    
    $_SESSION["dataEditNama"] = $dataNama; 
    $_SESSION["dataEditNIP"] = $dataNIP;
    $_SESSION["dataEditGolongan"] = $dataGolongan;
    $_SESSION["dataEditSatuanKerja"] = $dataSatuanKerja;
    $_SESSION["dataEditStruktural"] = $dataStruktural;
    $_SESSION["dataEditKelompok"] = $dataKelompok;
    $_SESSION["dataEditPendidikan"] = $dataPendidikan;
    $_SESSION["dataEditSertifikasi"] = $dataSertifikasi;
    $_SESSION["dataEditUnit"] = $dataUnit;
    $_SESSION["dataEditTahun"] = $tahun;
    $_SESSION["dataEditBulan"] = $bulan;
    $_SESSION["dataEditTanggal"] = $tanggal;
    
    $log_username = $_SESSION['umask'];
$log_activity = " pindah edit data pegawai";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);
    
    header("Location:../edit_pegawai/");
}