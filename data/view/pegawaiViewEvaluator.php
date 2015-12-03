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



$log_username = $_SESSION['umask'];
$log_activity = "mengakses data pegawai ternilai";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);


$userRole = $_SESSION['role'];
$userID = $_SESSION['id_usr'];
$parameter = $_SESSION['params'];
$command = $_SESSION['levelparameter'];


switch($userRole){
    case 2:
        userRole2();
        break;
    
    case 4:
        userRole4($command);
        break;
    
    case 6:
        userRole6($command);
        break;
    
    case 8:
        userRole8($command);
        break;
        
}


function userRole2(){    
    
$counter = 1;    
$sqld = "select * from user where level='4'";
$queryd = mysql("u6799722_rumahsakit_dev", $sqld);
$rowsd = mysql_num_rows($queryd);
if($rowsd > 0){
    
    echo '<table width="100%" cellpadding="5" cellspacing="5" class="table table-bordered table-hover">
                                <thead>
                                    <tr id="theadBasic">
                                        <td width="10%" id="thead">No</td>
                                        <td width="30%" id="thead">Nama</td>
                                        <td width="30%" id="thead">NIP</td>
                                        <td width="30%" id="thead">Aksi</td>
                                    </tr>
                                </thead>
                                <tbody>';

while($rowd = mysql_fetch_assoc($queryd)){
    
    $userDetailID = $rowd['id'];
    
    $sqlud = "select * from user_detail where id='".$userDetailID."'";
    $queryud = mysql("u6799722_rumahsakit_dev", $sqlud);
    $rowud = mysql_fetch_array($queryud);
    
    $dataNama = $rowud['nama'];
    getPegawai($dataNama, $counter);
    $counter = $counter + 1;
    
}
    echo '</tbody>
          </table>';
}
    
    
}


function userRole4($parameter){
    $counter = 1;    
$sqld = "select * from user where ".$parameter."";
$queryd = mysql("u6799722_rumahsakit_dev", $sqld);
$rowsd = mysql_num_rows($queryd);
if($rowsd > 0){
    
    echo '<table width="100%" cellpadding="5" cellspacing="5" class="table table-bordered table-hover">
                                <thead>
                                    <tr id="theadBasic">
                                        <td width="10%" id="thead">No</td>
                                        <td width="30%" id="thead">Nama</td>
                                        <td width="30%" id="thead">NIP</td>
                                        <td width="30%" id="thead">Aksi</td>
                                    </tr>
                                </thead>
                                <tbody>';

while($rowd = mysql_fetch_assoc($queryd)){
    
    $userDetailID = $rowd['id'];
    
    $sqlud = "select * from user_detail where id='".$userDetailID."'";
    $queryud = mysql("u6799722_rumahsakit_dev", $sqlud);
    $rowud = mysql_fetch_array($queryud);
    
    $dataNama = $rowud['nama'];
    getPegawai($dataNama, $counter);
    $counter = $counter + 1;
}
}
echo '</tbody>
          </table>';
}

function userRole6($parameter){
    $counter = 1;    
$sqld = "select * from user where ".$parameter."";
$queryd = mysql("u6799722_rumahsakit_dev", $sqld);
$rowsd = mysql_num_rows($queryd);
if($rowsd > 0){
    
    echo '<table width="100%" cellpadding="5" cellspacing="5" class="table table-bordered table-hover">
                                <thead>
                                    <tr id="theadBasic">
                                        <td width="10%" id="thead">No</td>
                                        <td width="30%" id="thead">Nama</td>
                                        <td width="30%" id="thead">NIP</td>
                                        <td width="30%" id="thead">Aksi</td>
                                    </tr>
                                </thead>
                                <tbody>';

while($rowd = mysql_fetch_assoc($queryd)){
    
    $userDetailID = $rowd['id'];
    
    $sqlud = "select * from user_detail where id='".$userDetailID."'";
    $queryud = mysql("u6799722_rumahsakit_dev", $sqlud);
    $rowud = mysql_fetch_array($queryud);
    
    $dataNama = $rowud['nama'];
    getPegawai($dataNama, $counter);
    $counter = $counter + 1;
}
}
echo '</tbody>
          </table>';
}

function userRole8($parameter){
    $counter = 1;    
$sqld = "select * from data_pegawai where ".$parameter."";
$queryd = mysql("u6799722_rumahsakit_dev", $sqld);
$rowsd = mysql_num_rows($queryd);
if($rowsd > 0){
    
    echo '<table width="100%" cellpadding="5" cellspacing="5" class="table table-bordered table-hover">
                                <thead>
                                    <tr id="theadBasic">
                                        <td width="10%" id="thead">No</td>
                                        <td width="30%" id="thead">Nama</td>
                                        <td width="30%" id="thead">NIP</td>
                                        <td width="30%" id="thead">Aksi</td>
                                    </tr>
                                </thead>
                                <tbody>';

while($rowd = mysql_fetch_assoc($queryd)){
    
         $id = $rowd["id"];
        $nama = $rowd["nama"];
        $nip = $rowd["nip"];
        echo 
            "<tr>
            <td width='10%' id='thead'>".$counter."</td>
            <td width='30%' id='thead'>".$nama."</td>
            <td width='30%' id='thead'>".$nip."</td>
            <td width='30%' id='thead'>
            <a href='#detail".$counter."' data-toggle='modal'><button type='submit' id='edit' name='edit' class='btn btn-primary btn-small' title='Info Pegawai'><i class='icon-info-sign icon-white'></i></button></a>
            <!-- <a href='#edit".$counter."' data-toggle='modal'><button type='submit' id='edit' name='edit' class='btn btn-warning btn-small' title='Edit Data'><i class='icon-pencil icon-white'></i></button></a> -->
            <!-- <a href='#delete".$counter."' data-toggle='modal'><button type='submit' id='remove' name='remove' class='btn btn-danger btn-small' title='Hapus Data'><i class='icon-remove icon-white'></i></button></a>-->
            </td>
            </tr>
            ";
    
    
    $counter = $counter + 1;
}
}
echo '</tbody>
          </table>';
}


function getPegawai($nama, $counter){
$sql = "select * from data_pegawai where nama='".$nama."'";
$query = mysql("u6799722_rumahsakit_dev", $sql);
$row = mysql_fetch_array($query);

        $id = $row["id"];
        $nama = $row["nama"];
        $nip = $row["nip"];
        echo 
            "<tr>
            <td width='10%' id='thead'>".$counter."</td>
            <td width='30%' id='thead'>".$nama."</td>
            <td width='30%' id='thead'>".$nip."</td>
            <td width='30%' id='thead'>
            <a href='#detail".$counter."' data-toggle='modal'><button type='submit' id='edit' name='edit' class='btn btn-primary btn-small' title='Info Pegawai'><i class='icon-info-sign icon-white'></i></button></a>
            <!-- <a href='#edit".$counter."' data-toggle='modal'><button type='submit' id='edit' name='edit' class='btn btn-warning btn-small' title='Edit Data'><i class='icon-pencil icon-white'></i></button></a> -->
            <!-- <a href='#delete".$counter."' data-toggle='modal'><button type='submit' id='remove' name='remove' class='btn btn-danger btn-small' title='Hapus Data'><i class='icon-remove icon-white'></i></button></a>-->
            </td>
            </tr>
            ";
}


//$parameter = $_SESSION['params'];
//$counter = 1;
//$sql = "select * from data_pegawai where ".$parameter." ORDER BY data_pegawai.nama ASC";
//$query = mysql("u6799722_rumahsakit_dev", $sql);
//$rows = mysql_num_rows($query);
//if($rows > 0){
//    
//    echo '<table width="100%" cellpadding="5" cellspacing="5" class="table table-bordered table-hover">
//                                <thead>
//                                    <tr id="theadBasic">
//                                        <td width="10%" id="thead">No</td>
//                                        <td width="30%" id="thead">Nama</td>
//                                        <td width="30%" id="thead">NIP</td>
//                                        <td width="30%" id="thead">Aksi</td>
//                                    </tr>
//                                </thead>
//                                <tbody>';
//    
//    while($row = mysql_fetch_assoc($query)){
//        $id = $row["id"];
//        $nama = $row["nama"];
//        $nip = $row["nip"];
//        echo 
//            "<tr>
//            <td width='10%' id='thead'>".$counter."</td>
//            <td width='30%' id='thead'>".$nama."</td>
//            <td width='30%' id='thead'>".$nip."</td>
//            <td width='30%' id='thead'>
//            <a href='#detail".$counter."' data-toggle='modal'><button type='submit' id='edit' name='edit' class='btn btn-primary btn-small' title='Info Pegawai'><i class='icon-info-sign icon-white'></i></button></a>
//            <!-- <a href='#edit".$counter."' data-toggle='modal'><button type='submit' id='edit' name='edit' class='btn btn-warning btn-small' title='Edit Data'><i class='icon-pencil icon-white'></i></button></a> -->
//            <!-- <a href='#delete".$counter."' data-toggle='modal'><button type='submit' id='remove' name='remove' class='btn btn-danger btn-small' title='Hapus Data'><i class='icon-remove icon-white'></i></button></a>-->
//            </td>
//            </tr>
//            ";
//        $counter = $counter + 1;
//    }
//    
//    echo '</tbody>
//                            </table>';
//}
//else{
//    echo '<p align="center" style="padding-top:50px;"><strong>Belum ada Data Pegawai yang tersimpan. Untuk menambahkan silakan klik tombol "Tambah Pegawai"</strong></p>';
//}