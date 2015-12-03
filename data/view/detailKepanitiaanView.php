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

//include "../../../../data/my-conf.php";
include "../../../../data/view/dataExtractor.php";

$idPanitia = $_SESSION['id_kepanitiaan'];
$counter = 1;
$sql = "select * from detail_kepanitiaan where id='$idPanitia'";
$query = mysql("u6799722_rumahsakit_dev", "select * from u6799722_rumahsakit_dev.detail_kepanitiaan where detail_kepanitiaan.id='$idPanitia'");
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row['id'];
        $jabatan = $row['jabatan'];
        $id_pegawai = $row['id_pegawai'];
        $nama = nama($id_pegawai);
        $jabatan = jabatanPanitia($jabatan);
        
        echo
            "<tr>
            <td id='thead'>".$counter."</td>
            <td id='thead'>".$nama."</td>
            <td id='thead'>".$jabatan."</td>
            <td id='thead'>
            <!-- <a href='#edit".$counter."' data-toggle='modal'><button type='submit' id='edit' name='edit' class='btn btn-warning btn-small' title='Edit Data'><i class='icon-pencil icon-white'></i></button></a> -->
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
            <strong>Belum ada data anggota yang tersimpan, silakan tambahkan melalui menu Tambah Anggota</strong>
            </p>
            </td>
            </tr>
            ";
}




