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
//include "../../../../data/view/dataExtractor.php";

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
            "
            <div id='delete".$counter."' class='modal hide'' tabindex='-1' role='dialog' aria-labelledby='Hapus Anggota".$counter."' aria-hidden='true'>
            <div class='modal-header' style='background-color: #149bdf;'>
            <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
            <h3 id='myModalLabel' style='color: #fff;'>Hapus Anggota</h3>
            </div>
            <div class='modal-body'>
                <form action='' method='post'>
                <input id='id' name='id' type='text' class='uneditable-input' value='".$id."' style='display:none;'>
                <input id='id_pegawai' name='id_pegawai' type='text' class='uneditable-input' value='".$id_pegawai."' style='display:none;'>
                <p align='center'>
                Apakah Anda yakin ingin menghapus <strong>".$nama."</strong> dengan jabatan sebagai <strong>".$jabatan."</strong> dari kepanitiaan ini?.
                </p>
                <p align='right'>
                <button type='submit' id='submitDelete' name='submitDelete' class='btn btn-danger'><i class='icon-remove icon-white'></i>&nbsp;<strong>Hapus Anggota!</strong></button><br/>
                </p>
                </form>
            </div>
            </div>";
        $counter = $counter + 1;
    }
}




