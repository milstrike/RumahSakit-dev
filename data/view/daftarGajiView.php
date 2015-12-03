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


$counter = 1;
$sql = "select * from daftar_nilai";
$query = mysql("u6799722_rumahsakit_dev", "select * from daftar_gaji");
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $bulan = $row["bulan"];
        $tahun = $row["tahun"];
        $nama_tabel = $row["nama_tabel"];
        $bulanSebenarnya = MonthSelector($bulan);
        $waktu = $bulanSebenarnya." ".$tahun;
        
        echo 
            "<tr>
            <td width='10%' id='thead'>".$counter."</td>
            <td width='30%' id='thead'>".$waktu."</td>
            <td width='20%' id='thead'>
            <a href='#check".$counter."' data-toggle='modal'><button type='submit' id='check' name='check' class='btn btn-primary btn-small' title='Cek Data'><i class='icon-check icon-white'></i></button></a>
            <a href='#delete".$counter."' data-toggle='modal'><button type='submit' id='remove' name='remove' class='btn btn-danger btn-small' title='Hapus Data'><i class='icon-remove icon-white'></i></button></a>
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
            <strong>Belum ada data gaji yang tersimpan, silakan tambahkan melalui menu Tambah Data Gaji</strong>
            </p>
            </td>
            </tr>
            ";
}