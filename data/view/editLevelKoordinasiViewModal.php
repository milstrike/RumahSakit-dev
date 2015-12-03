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
//"../../../data/view/dataExtractor.php";

$counter = 1;
$sql = "select * from level_koordinasi";
$query = mysql("u6799722_rumahsakit_dev", "select * from level_koordinasi");
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id_pegawai = $row["id_pegawai"];
        $id_level_koordinasi = $row["id_level_koordinasi"];
        
        $nama = nama($id_pegawai);
        $bawahan = jumlahBawahan($id_level_koordinasi);
        echo 
            "
            <div id='edit".$counter."' class='modal hide'' tabindex='-1' role='dialog' aria-labelledby='edit".$counter."' aria-hidden='true'>
            <div class='modal-header' style='background-color: #149bdf;'>
            <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
            <h3 id='myModalLabel' style='color: #fff;'>Edit Jumlah Bawahan</h3>
            </div>
            <div class='modal-body'>
                <form class='form-horizontal' action='' method='post'>
                                <div class='control-group' style='display:none;'>
                                    <label class='control-label' for='id'>ID</label>
                                    <div class='controls'>
                                        <input id='id' name='id' type='text' class='uneditable-input' value='".$id_pegawai."'>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='nama'>Nama</label>
                                    <div class='controls'>
                                        <input id='nama' name='nama' type='text' class='uneditable-input' value='".$nama."'>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='bawahan'>Jumlah Bawahan*</label>
                                    <div class='controls'>
                                        <input id='bawahan' name='bawahan' type='text' required='required' value='".$bawahan."'>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='submit'>&nbsp;</label>
                                    <div class='controls'>
                                        <button type='submit' id='submitEdit' name='submitEdit' class='btn btn-warning'><i class='icon-pencil icon-white'></i>&nbsp;<strong>Simpan Hasil Perubahan!</strong></button><br/>
                                    </div>
                                </div>
                                    </form>
            </div>
            </div>";
        $counter = $counter + 1;
    }
}