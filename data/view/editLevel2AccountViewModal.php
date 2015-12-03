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
$sql = "select * from user, user_detail where user.id=user_detail.id and user.level=4";
$query = mysql("u6799722_rumahsakit_dev", $sql);
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $id2 = $row['id'];
        $namaView2 = $row["nama"];
        $userView2 = $row["user_umask"];
        $passView2 = $row["pass_umask"];
        $createView2 = $row["change_date"];
        $teleponView2 = $row["telepon"];
        echo 
            "
            <div id='EditUser".$counter."' class='modal hide'' tabindex='-1' role='dialog' aria-labelledby='UserDetail".$counter."' aria-hidden='true'>
            <div class='modal-header' style='background-color: #149bdf;'>
            <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
            <h3 id='myModalLabel' style='color: #fff;'>Edit User Level 2</h3>
            </div>
            <div class='modal-body'>
                <form class='form-horizontal' action='' method='post'>
                                <div class='control-group'>
                                    <label class='control-label' for='namalengkap'>ID</label>
                                    <div class='controls'>
                                        <input id='id' name='id' type='text' class='uneditable-input' value='".$id2."'>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='namalengkap'>Nama Lengkap*</label>
                                    <div class='controls'>
                                        <input id='namalengkap' name='namalengkap' type='text' required='required' value='".$namaView2."'>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='username'>Username*</label>
                                    <div class='controls'>
                                        <input id='username' name='username' type='text' class='uneditable-input' maxlength='20' value='".$userView2."'>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='password'>Password*</label>
                                    <div class='controls'>
                                        <input id='password' name='password' type='password' class='span5' maxlength='20' required='required' value='".$passView2."'>
                                    </div>
                                </div>
                                <!-- <div class='control-group'>
                                    <label class='control-label' for='password2'>Re-type Password*</label>
                                    <div class='controls'>
                                        <input id='password2' name='password2' type='password' placeholder='Masukkan kembali Password' class='span5' required='required'>
                                        <span class='help-inline' style='color: #cf0404;'>Password tidak sama!</span>
                                        <span class='help-inline' style='color: #7aba7b;'>Password sama!</span>
                                    </div>
                                </div> -->
                                <div class='control-group'>
                                    <label class='control-label' for='telepon'>No. Telepon*</label>
                                    <div class='controls'>
                                        <input id='telepon' name='telepon' type='text' class='span5' maxlength='20' required='required' value='".$teleponView2."'>
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