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

//include "../../../data/view/dataExtractor.php";

$nama_tabel = $_SESSION['tabel'];

$counter = 1;
$sql = "select DISTINCT no, nama, bagian, jumlah, potongan, bersih, ttd from ".$nama_tabel;
$query = mysql("u6799722_rumahsakit_dev", $sql);
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        
        $no = $row["no"];
        $nama = $row["nama"];
        $bagian = $row["bagian"];
        $jumlah = $row["jumlah"];
        $potongan = $row["potongan"];
        $bersih = $row["bersih"];
        $keterangan = $row["ttd"];
        
        
        
        echo 
            "<tr>
            <td>".$counter."</td>
            <td>".$nama."</td>
            <td>".$bagian."</td>
            <td>Rp".$number_format_vietnam = number_format($jumlah, 2, ',', '.')."</td>
            <td>Rp".$number_format_vietnam = number_format($potongan, 2, ',', '.')."</td>
            <td>Rp".$number_format_vietnam = number_format($bersih, 2, ',', '.')."</td>
            <td>".$keterangan."</td>
            <td>
            <form action='' method='post'>
             <input id='status' name='status' type='text' class='uneditable-input' value='".$counter."' style='display:none;'>
            <button type='submit' id='ubahStatus' name='ubahStatus' class='btn btn-primary btn-small' title='sudah diterima'><i class='icon-ok-circle icon-white'></i></button>
            </form>
            </td>
            </tr>
            ";
        $counter = $counter + 1;
    }
}
else{
    echo 
            "<tr>
            <td colspan='8' style='padding:20px'> 
            <p align='center'>
            <strong>Belum ada data gaji yang tersimpan, silakan tambahkan melalui menu Isi Tabel. Tabel akan terisi secara otomatis jika Data Nilai Pegawai sudah ada</strong>
            </p>
            </td>
            </tr>
            ";
}