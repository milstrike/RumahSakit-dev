<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include "../../../data/view/dataExtractor.php";

$option = $_SESSION['levelID'];

switch($option){
    case 1:
        level1();
        break;
    case 2:
        level2();
        break;
    case 3:
        level3();
        break;
    case 4:
        level4();
        break;
    case 5:
        level5();
        break;
    case 6:
        level6();
        break;
    case 7:
        level7();
        break;
    case 8:
        level8();
        break;
    case 9:
        level9();
        break;
}

//Administrator
function level1(){
$level = getTingkatan($_SESSION['levelID']);
    echo '<h4>Pembuatan Akun Administrator</h4>
                                    <div class="control-group">
                                    <label class="control-label" for="namalengkap">Nama Lengkap*</label>
                                    <div class="controls">
                                        <input id="namalengkap" name="namalengkap" type="text" placeholder="Nama Lengkap" class="span10" required="required">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="username">Username*</label>
                                    <div class="controls">
                                        <input id="username" name="username" type="text" placeholder="Username" class="span10" maxlength="20" required="required">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="password">Password*</label>
                                    <div class="controls">
                                        <input id="password" name="password" type="password" placeholder="Password" class="span10" maxlength="20" required="required">
                                    </div>
                                </div>                                
                                <div class="control-group">
                                    <label class="control-label" for="telepon">No. Telepon*</label>
                                    <div class="controls">
                                        <input id="telepon" name="telepon" type="number" placeholder="No. Telepon" class="span10" maxlength="20" required="required" onkeypress="return isNumberKey(evt)">
                                    </div>
                                </div>
                                <div class="control-group" style="display:none;">
                                    <label class="control-label" for="jabatan">Tingkatan</label>
                                    <div class="controls">
                                    <input id="jabatan" name="jabatan" type="text" class="span5" maxlength="20" required="required" value="'.$level.'">
                                    </div>
                                </div>
                                <div class="control-group" style="display:none;">
                                    <label class="control-label" for="jabatan">Tingkatan</label>
                                    <div class="controls">
                                    <input id="level" name="level" type="text" class="span5" maxlength="20" required="required" value="1">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="submit">&nbsp;</label>
                                    <div class="controls">
                                        <button type="submit" id="submit" name="submit" class="btn btn-primary"><i class="icon-user icon-white"></i>&nbsp;<strong>Buat Akun!</strong></button><br/>
                                    </div>
                                </div>
                                <span class="spanErrorB"><?php echo $error; ?></span>';
}

//Direktur
function level2(){
    $level = getTingkatan($_SESSION['levelID']);
    $optionUser = userDelimiter(7);
    
    echo '<h4>Pembuatan Akun Penilai Level 1(Direktur)</h4>
        <div class="control-group">
                                    <label class="control-label" for="namalengkap">Daftar nama dengan jabatan: Direktur</label>
                                    <div class="controls">
                                        <select id="namalengkap" name="namalengkap" class="span10" required="required">
                                            ';
    echo $optionUser;
                                        echo '</select>
                                    </div>
                                    <i>Apabila nama belum ada, cek daftar pegawai apakah nama yang dicari sudah masuk dalam daftar pegawai.</i>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="username">Username*</label>
                                    <div class="controls">
                                        <input id="username" name="username" type="text" placeholder="Username" class="span10" maxlength="20" required="required">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="password">Password*</label>
                                    <div class="controls">
                                        <input id="password" name="password" type="password" placeholder="Password" class="span10" maxlength="20" required="required">
                                    </div>
                                </div>                                
                                <div class="control-group">
                                    <label class="control-label" for="telepon">No. Telepon*</label>
                                    <div class="controls">
                                        <input id="telepon" name="telepon" type="number" placeholder="No. Telepon" class="span10" maxlength="20" required="required" onkeypress="return isNumberKey(evt)">
                                    </div>
                                </div>
                                <div class="control-group" style="display:none;">
                                    <label class="control-label" for="jabatan">Tingkatan</label>
                                    <div class="controls">
                                    <input id="jabatan" name="jabatan" type="text" class="span5" maxlength="20" required="required" value="'.$level.'">
                                    </div>
                                </div>
                                <div class="control-group" style="display:none;">
                                    <label class="control-label" for="jabatan">Tingkatan</label>
                                    <div class="controls">
                                    <input id="level" name="level" type="text" class="span5" maxlength="20" required="required" value="2">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="submit">&nbsp;</label>
                                    <div class="controls">
                                        <button type="submit" id="submit" name="submit" class="btn btn-primary"><i class="icon-user icon-white"></i>&nbsp;<strong>Buat Akun!</strong></button><br/>
                                    </div>
                                </div>
                                <span class="spanErrorB"><?php echo $error; ?></span>';
    
}

function level3(){
    $level = getTingkatan($_SESSION['levelID']);
    $optionUser = userDelimiter(6);
    
    echo '<h4>Pembuatan Akun Pengamat Level 1(Wakil Direktur)</h4>
        <div class="control-group">
                                    <label class="control-label" for="namalengkap">Daftar nama dengan jabatan: Wakil Direktur</label>
                                    <div class="controls">
                                        <select id="namalengkap" name="namalengkap" class="span10" required="required">
                                            ';
    echo $optionUser;
                                        echo '</select>
                                    </div>
                                    <i>Apabila nama belum ada, cek daftar pegawai apakah nama yang dicari sudah masuk dalam daftar pegawai.</i>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="username">Username*</label>
                                    <div class="controls">
                                        <input id="username" name="username" type="text" placeholder="Username" class="span10" maxlength="20" required="required">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="password">Password*</label>
                                    <div class="controls">
                                        <input id="password" name="password" type="password" placeholder="Password" class="span10" maxlength="20" required="required">
                                    </div>
                                </div>                                
                                <div class="control-group">
                                    <label class="control-label" for="telepon">No. Telepon*</label>
                                    <div class="controls">
                                        <input id="telepon" name="telepon" type="number" placeholder="No. Telepon" class="span10" maxlength="20" required="required" onkeypress="return isNumberKey(evt)">
                                    </div>
                                </div>
                                <div class="control-group" style="display:none;">
                                    <label class="control-label" for="jabatan">Tingkatan</label>
                                    <div class="controls">
                                    <input id="jabatan" name="jabatan" type="text" class="span5" maxlength="20" required="required" value="'.$level.'">
                                    </div>
                                </div>
                                <div class="control-group" style="display:none;">
                                    <label class="control-label" for="jabatan">Tingkatan</label>
                                    <div class="controls">
                                    <input id="level" name="level" type="text" class="span5" maxlength="20" required="required" value="3">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="submit">&nbsp;</label>
                                    <div class="controls">
                                        <button type="submit" id="submit" name="submit" class="btn btn-primary"><i class="icon-user icon-white"></i>&nbsp;<strong>Buat Akun!</strong></button><br/>
                                    </div>
                                </div>
                                <span class="spanErrorB"><?php echo $error; ?></span>';
}

function level4(){
    $level = getTingkatan($_SESSION['levelID']);
    $optionUser = userDelimiter(5);
    
    echo '<h4>Pembuatan Akun Penilai Level 2(Kabid/Kabag/Supervisi)</h4>
        <div class="control-group">
                                    <label class="control-label" for="namalengkap">Daftar nama dengan jabatan: Kabid/Kabag/Supervisi</label>
                                    <div class="controls">
                                        <select id="namalengkap" name="namalengkap" class="span10" required="required">
                                            ';
    echo $optionUser;
                                        echo '</select>
                                    </div>
                                    <i>Apabila nama belum ada, cek daftar pegawai apakah nama yang dicari sudah masuk dalam daftar pegawai.</i>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="username">Username*</label>
                                    <div class="controls">
                                        <input id="username" name="username" type="text" placeholder="Username" class="span10" maxlength="20" required="required">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="password">Password*</label>
                                    <div class="controls">
                                        <input id="password" name="password" type="password" placeholder="Password" class="span10" maxlength="20" required="required">
                                    </div>
                                </div>                                
                                <div class="control-group">
                                    <label class="control-label" for="telepon">No. Telepon*</label>
                                    <div class="controls">
                                        <input id="telepon" name="telepon" type="number" placeholder="No. Telepon" class="span10" maxlength="20" required="required" onkeypress="return isNumberKey(evt)">
                                    </div>
                                </div>
                                <div class="control-group" style="display:none;">
                                    <label class="control-label" for="jabatan">Tingkatan</label>
                                    <div class="controls">
                                    <input id="jabatan" name="jabatan" type="text" class="span5" maxlength="20" required="required" value="'.$level.'">
                                    </div>
                                </div>
                                <div class="control-group" style="display:none;">
                                    <label class="control-label" for="jabatan">Tingkatan</label>
                                    <div class="controls">
                                    <input id="level" name="level" type="text" class="span5" maxlength="20" required="required" value="4">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="submit">&nbsp;</label>
                                    <div class="controls">
                                        <button type="submit" id="submit" name="submit" class="btn btn-primary"><i class="icon-user icon-white"></i>&nbsp;<strong>Buat Akun!</strong></button><br/>
                                    </div>
                                </div>
                                <span class="spanErrorB"><?php echo $error; ?></span>';
}

function level5(){
    $level = getTingkatan($_SESSION['levelID']);
    $optionUser = userDelimiter(5);
    
    echo '<h4>Pembuatan Akun Pengamat Level 2(Kabid/Kabag/Supervisi)</h4>
        <div class="control-group">
                                    <label class="control-label" for="namalengkap">Daftar nama dengan jabatan: Kabid/Kabag/Supervisi</label>
                                    <div class="controls">
                                        <select id="namalengkap" name="namalengkap" class="span10" required="required">
                                            ';
    echo $optionUser;
                                        echo '</select>
                                    </div>
                                    <i>Apabila nama belum ada, cek daftar pegawai apakah nama yang dicari sudah masuk dalam daftar pegawai.</i>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="username">Username*</label>
                                    <div class="controls">
                                        <input id="username" name="username" type="text" placeholder="Username" class="span10" maxlength="20" required="required">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="password">Password*</label>
                                    <div class="controls">
                                        <input id="password" name="password" type="password" placeholder="Password" class="span10" maxlength="20" required="required">
                                    </div>
                                </div>                                
                                <div class="control-group">
                                    <label class="control-label" for="telepon">No. Telepon*</label>
                                    <div class="controls">
                                        <input id="telepon" name="telepon" type="number" placeholder="No. Telepon" class="span10" maxlength="20" required="required" onkeypress="return isNumberKey(evt)">
                                    </div>
                                </div>
                                <div class="control-group" style="display:none;">
                                    <label class="control-label" for="jabatan">Tingkatan</label>
                                    <div class="controls">
                                    <input id="jabatan" name="jabatan" type="text" class="span5" maxlength="20" required="required" value="'.$level.'">
                                    </div>
                                </div>
                                <div class="control-group" style="display:none;">
                                    <label class="control-label" for="jabatan">Tingkatan</label>
                                    <div class="controls">
                                    <input id="level" name="level" type="text" class="span5" maxlength="20" required="required" value="5">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="submit">&nbsp;</label>
                                    <div class="controls">
                                        <button type="submit" id="submit" name="submit" class="btn btn-primary"><i class="icon-user icon-white"></i>&nbsp;<strong>Buat Akun!</strong></button><br/>
                                    </div>
                                </div>
                                <span class="spanErrorB"><?php echo $error; ?></span>';
}

function level6(){
    $level = getTingkatan($_SESSION['levelID']);
    $optionUser = userDelimiter(4);
    
    echo '<h4>Pembuatan Akun Penilai Level 3(KASUBID/KASUBAG)</h4>
        <div class="control-group">
                                    <label class="control-label" for="namalengkap">Daftar nama dengan jabatan: KASUBID/KASUBAG</label>
                                    <div class="controls">
                                        <select id="namalengkap" name="namalengkap" class="span10" required="required">
                                            ';
    echo $optionUser;
                                        echo '</select>
                                    </div>
                                    <i>Apabila nama belum ada, cek daftar pegawai apakah nama yang dicari sudah masuk dalam daftar pegawai.</i>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="username">Username*</label>
                                    <div class="controls">
                                        <input id="username" name="username" type="text" placeholder="Username" class="span10" maxlength="20" required="required">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="password">Password*</label>
                                    <div class="controls">
                                        <input id="password" name="password" type="password" placeholder="Password" class="span10" maxlength="20" required="required">
                                    </div>
                                </div>                                
                                <div class="control-group">
                                    <label class="control-label" for="telepon">No. Telepon*</label>
                                    <div class="controls">
                                        <input id="telepon" name="telepon" type="number" placeholder="No. Telepon" class="span10" maxlength="20" required="required" onkeypress="return isNumberKey(evt)">
                                    </div>
                                </div>
                                <div class="control-group" style="display:none;">
                                    <label class="control-label" for="jabatan">Tingkatan</label>
                                    <div class="controls">
                                    <input id="jabatan" name="jabatan" type="text" class="span5" maxlength="20" required="required" value="'.$level.'">
                                    </div>
                                </div>
                                <div class="control-group" style="display:none;">
                                    <label class="control-label" for="jabatan">Tingkatan</label>
                                    <div class="controls">
                                    <input id="level" name="level" type="text" class="span5" maxlength="20" required="required" value="6">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="submit">&nbsp;</label>
                                    <div class="controls">
                                        <button type="submit" id="submit" name="submit" class="btn btn-primary"><i class="icon-user icon-white"></i>&nbsp;<strong>Buat Akun!</strong></button><br/>
                                    </div>
                                </div>
                                <span class="spanErrorB"><?php echo $error; ?></span>';
}

function level7(){
    $level = getTingkatan($_SESSION['levelID']);
    $optionUser = userDelimiter(4);
    
    echo '<h4>Pembuatan Akun Pengamat Level 3(KASUBID/KASUBAG)</h4>
        <div class="control-group">
                                    <label class="control-label" for="namalengkap">Daftar nama dengan jabatan: KASUBID/KASUBAG</label>
                                    <div class="controls">
                                        <select id="namalengkap" name="namalengkap" class="span10" required="required">
                                            ';
    echo $optionUser;
                                        echo '</select>
                                    </div>
                                    <i>Apabila nama belum ada, cek daftar pegawai apakah nama yang dicari sudah masuk dalam daftar pegawai.</i>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="username">Username*</label>
                                    <div class="controls">
                                        <input id="username" name="username" type="text" placeholder="Username" class="span10" maxlength="20" required="required">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="password">Password*</label>
                                    <div class="controls">
                                        <input id="password" name="password" type="password" placeholder="Password" class="span10" maxlength="20" required="required">
                                    </div>
                                </div>                                
                                <div class="control-group">
                                    <label class="control-label" for="telepon">No. Telepon*</label>
                                    <div class="controls">
                                        <input id="telepon" name="telepon" type="number" placeholder="No. Telepon" class="span10" maxlength="20" required="required" onkeypress="return isNumberKey(evt)">
                                    </div>
                                </div>
                                <div class="control-group" style="display:none;">
                                    <label class="control-label" for="jabatan">Tingkatan</label>
                                    <div class="controls">
                                    <input id="jabatan" name="jabatan" type="text" class="span5" maxlength="20" required="required" value="'.$level.'">
                                    </div>
                                </div>
                                <div class="control-group" style="display:none;">
                                    <label class="control-label" for="jabatan">Tingkatan</label>
                                    <div class="controls">
                                    <input id="level" name="level" type="text" class="span5" maxlength="20" required="required" value="7">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="submit">&nbsp;</label>
                                    <div class="controls">
                                        <button type="submit" id="submit" name="submit" class="btn btn-primary"><i class="icon-user icon-white"></i>&nbsp;<strong>Buat Akun!</strong></button><br/>
                                    </div>
                                </div>
                                <span class="spanErrorB"><?php echo $error; ?></span>';
}

function level8(){
    $level = getTingkatan($_SESSION['levelID']);
   $optionUser = userDelimiter(3);
    
    echo '<h4>Pembuatan Akun Penilai Level 4(Kepala Ruang)</h4>
        <div class="control-group">
                                    <label class="control-label" for="namalengkap">Daftar nama dengan jabatan: KEPALA RUANG</label>
                                    <div class="controls">
                                        <select id="namalengkap" name="namalengkap" class="span10" required="required">
                                            ';
    echo $optionUser;
                                        echo '</select>
                                    </div>
                                    <i>Apabila nama belum ada, cek daftar pegawai apakah nama yang dicari sudah masuk dalam daftar pegawai.</i>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="username">Username*</label>
                                    <div class="controls">
                                        <input id="username" name="username" type="text" placeholder="Username" class="span10" maxlength="20" required="required">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="password">Password*</label>
                                    <div class="controls">
                                        <input id="password" name="password" type="password" placeholder="Password" class="span10" maxlength="20" required="required">
                                    </div>
                                </div>                                
                                <div class="control-group">
                                    <label class="control-label" for="telepon">No. Telepon*</label>
                                    <div class="controls">
                                        <input id="telepon" name="telepon" type="number" placeholder="No. Telepon" class="span10" maxlength="20" required="required" onkeypress="return isNumberKey(evt)">
                                    </div>
                                </div>
                                <div class="control-group" style="display:none;">
                                    <label class="control-label" for="jabatan">Tingkatan</label>
                                    <div class="controls">
                                    <input id="jabatan" name="jabatan" type="text" class="span5" maxlength="20" required="required" value="'.$level.'">
                                    </div>
                                </div>
                                <div class="control-group" style="display:none;">
                                    <label class="control-label" for="jabatan">Tingkatan</label>
                                    <div class="controls">
                                    <input id="level" name="level" type="text" class="span5" maxlength="20" required="required" value="8">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="submit">&nbsp;</label>
                                    <div class="controls">
                                        <button type="submit" id="submit" name="submit" class="btn btn-primary"><i class="icon-user icon-white"></i>&nbsp;<strong>Buat Akun!</strong></button><br/>
                                    </div>
                                </div>
                                <span class="spanErrorB"><?php echo $error; ?></span>';
}

function level9(){
    $level = getTingkatan($_SESSION['levelID']);
    $optionUser = userDelimiter(2);
    
    echo '<h4>Pembuatan Akun Pengamat Level 4(Wakil Kepala Ruang)</h4>
        <div class="control-group">
                                    <label class="control-label" for="namalengkap">Daftar nama dengan jabatan: WAKIL KEPALA RUANG</label>
                                    <div class="controls">
                                        <select id="namalengkap" name="namalengkap" class="span10" required="required">
                                            ';
    echo $optionUser;
                                        echo '</select>
                                    </div>
                                    <i>Apabila nama belum ada, cek daftar pegawai apakah nama yang dicari sudah masuk dalam daftar pegawai.</i>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="username">Username*</label>
                                    <div class="controls">
                                        <input id="username" name="username" type="text" placeholder="Username" class="span10" maxlength="20" required="required">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="password">Password*</label>
                                    <div class="controls">
                                        <input id="password" name="password" type="password" placeholder="Password" class="span10" maxlength="20" required="required">
                                    </div>
                                </div>                                
                                <div class="control-group">
                                    <label class="control-label" for="telepon">No. Telepon*</label>
                                    <div class="controls">
                                        <input id="telepon" name="telepon" type="number" placeholder="No. Telepon" class="span10" maxlength="20" required="required" onkeypress="return isNumberKey(evt)">
                                    </div>
                                </div>
                                <div class="control-group" style="display:none;">
                                    <label class="control-label" for="jabatan">Tingkatan</label>
                                    <div class="controls">
                                    <input id="jabatan" name="jabatan" type="text" class="span5" maxlength="20" required="required" value="'.$level.'">
                                    </div>
                                </div>
                                <div class="control-group" style="display:none;">
                                    <label class="control-label" for="jabatan">Tingkatan</label>
                                    <div class="controls">
                                    <input id="level" name="level" type="text" class="span5" maxlength="20" required="required" value="9">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="submit">&nbsp;</label>
                                    <div class="controls">
                                        <button type="submit" id="submit" name="submit" class="btn btn-primary"><i class="icon-user icon-white"></i>&nbsp;<strong>Buat Akun!</strong></button><br/>
                                    </div>
                                </div>
                                <span class="spanErrorB"><?php echo $error; ?></span>';
}