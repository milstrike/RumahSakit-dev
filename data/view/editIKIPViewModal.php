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

$counter = 1;
$sql = "select * from master_ikip ORDER BY master_ikip.kategori ASC";
$query = mysql("u6799722_rumahsakit_dev", "select * from master_ikip ORDER BY master_ikip.kategori ASC");
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $kategori = $row["kategori"];
        $indikator = $row["indikator"];
        echo 
            "
            <div id='edit".$counter."' class='modal hide'' tabindex='-1' role='dialog' aria-labelledby='edit".$counter."' aria-hidden='true'>
            <div class='modal-header' style='background-color: #149bdf;'>
            <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
            <h3 id='myModalLabel' style='color: #fff;'>Edit Indikator Kerja</h3>
            </div>
            <div class='modal-body'>
                <form class='form-horizontal' action='' method='post'>
                                <div class='control-group' style='display:none;'>
                                    <label class='control-label' for='id'>ID</label>
                                    <div class='controls'>
                                        <input id='id' name='id' type='text' class='uneditable-input' value='".$id."'>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='kategori'>Kategori*</label>
                                    <div class='controls'>
                                        <input id='kategori' name='kategori' type='text' required='required' value='".$kategori."'>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='indikator'>Indikator Kinerja*</label>
                                    <div class='controls'>
                                        <textarea rows='5' id='indikator' name='indikator' type='text' required='required'>".$indikator."</textarea>
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