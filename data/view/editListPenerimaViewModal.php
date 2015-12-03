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
//include 'optionMasterGajiLastView.php';

$counter = 1;
$sql = "select * from daftar_penerima ORDER BY id";
$query = mysql("u6799722_rumahsakit_dev", $sql);
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $id_struktural = $row["id_struktural"];
        $id_sumberGaji = $row["id_sumber"];
        
        $viewStruktural = getKeteranganStruktural($id_struktural);
        
        $dataViewMasterGaji = getSelectedMasterGaji($id_sumberGaji);
        
        
        echo 
            "
            <div id='edit".$counter."' class='modal hide'' tabindex='-1' role='dialog' aria-labelledby='edit".$counter."' aria-hidden='true'>
            <div class='modal-header' style='background-color: #149bdf;'>
            <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
            <h3 id='myModalLabel' style='color: #fff;'>Edit Bagian Penerima</h3>
            </div>
            <div class='modal-body'>
                <form class='form-horizontal' action='' method='post'>
                                <div class='control-group' style='display:none;'
                                    <label class='control-label' for='idEdit'>ID</label>
                                    <div class='controls'>
                                        <input id='idEdit' name='idEdit' type='text' class='uneditable-input' value='".$id."'>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='strukturalPenerimaEdit'>Struktural*</label>
                                    <div class='controls'>
                                        <input id='strukturalPenerimaEdit' name='strukturalPenerimaEdit' type='text' required='required' class='uneditable-input' disabled value='".$viewStruktural."'>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='sumberBagianEdit'>Sumber Bagian*</label>
                                    <div class='controls'>
                                        <select name='sumberBagianEdit' id='sumberBagianEdit'>
                                        ".$dataViewMasterGaji."
                                        </select>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='ann'>&nbsp;</label>
                                    <div class='controls'>
                                        <p class='text-error'>Harap perhatikan isi form sebelum Anda menyimpan perubahan!</p>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='submit'>&nbsp;</label>
                                    <div class='controls'>
                                        <button type='submit' id='submitEdit' name='submitEdit' class='btn btn-primary'><i class='icon-plus-sign icon-white'></i>&nbsp;<strong>Simpan Perubahan!</strong></button><br/>
                                    </div>
                                </div>
                                    </form>
            </div>
            </div>";
        $counter = $counter + 1;
    }
}

function getKeteranganStruktural($id_struktural){
    $Keterangan = "";
    
    $query = mysql("u6799722_rumahsakit_dev", "select * from e_1_struktural where id='$id_struktural'");
    $row = mysql_fetch_array($query);
    $Keterangan = $row['keterangan'];
    
    return $Keterangan;
}

