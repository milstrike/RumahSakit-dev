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
$log_activity = "mengakses data role unit";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);


$level = $_SESSION['adminLEVEL'];

$error = "";
$counter = 1;

switch($level){
    
    case 4:
        penilailevel2();
        break;
    
    case 6:
        penilailevel3();
        break;
    
    case 8:
        penilailevel4();
        break;
        
}

function penilaiLevel2(){
    $counter = 1;
    $user = $_SESSION['adminID'];
    $queries = mysql("u6799722_rumahsakit_dev", "select unit from u6799722_rumahsakit_dev.user where user.id='$user'");
    $rowies = mysql_fetch_array($queries);
    $dataPerangkat = $rowies['unit'];
    $stringCounter = strlen($dataPerangkat);
    
    $command = "";
    $commandCounter = 0;
    $cekEqual = 0;
    
    //$sql = "select * from user_detail";
    $sql = "select * from user_detail, user where user_detail.id=user.id and user.level=6 ORDER BY user_detail.nama ASC";
$query = mysql("u6799722_rumahsakit_dev", $sql);
$rows = mysql_num_rows($query);
if($rows > 0){
    echo '<form action="" method="post" class="form-inline">';
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $keterangan = $row["nama"];
        echo 
            "
                <label class='checkbox'>
                <input type='checkbox' name='check_list[]' value='".$id."'";  
                
                
                while($commandCounter < $stringCounter){
                    //echo $command;
                    $commander = substr($dataPerangkat, $commandCounter, 1);
                    if($commander == "-"){
                        $commandCounter++;
                    }
                    else{
                        $commanders = substr($dataPerangkat, $commandCounter+1, 1);
                        if($commanders == "-"){
                            if($id == $commander){
                                $command = $commander;
                                $cekEqual = 1;
                                $commandCounter = $stringCounter;
                            }
                            else{
                            }
                            $commandCounter++;
                        }
                        else{
                            $commander = $commander.$commanders;
                            if($id == $commander){
                                $command = $commander;
                                $cekEqual = 1;
                                $commandCounter = $stringCounter;
                            }
                            else{
                            }
                           $commandCounter = $commandCounter + 2; 
                        }
                    }
                }
                
                if($cekEqual == 1){
                    echo " checked > ".$keterangan."";
                }
                else{
                    echo " > ".$keterangan."";
                }
                $commandCounter = 0;
                $cekEqual = 0;
                $command = "";



                echo "</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
        $counter = $counter + 1;
    }
    echo "<br/><br/><br/><p align='right'><button type='submit' id='simpanPrivileges' name='simpanPrivileges' class='btn btn-warning btn-small' title='Edit Hak Akses'><i class='icon-pencil icon-white'></i> Re-Edit Parameter</button></p></form>";
}
else{
    echo 
            " 
            <p align='center'>
            <strong>Belum ada user level 3 yang tersimpan, silakan tambahkan melalui menu tambah user.</strong>
            </p>
            ";
}
}


function penilailevel3(){
    $counter = 1;
    $user = $_SESSION['adminID'];
    $queries = mysql("u6799722_rumahsakit_dev", "select unit from u6799722_rumahsakit_dev.user where user.id='$user'");
    $rowies = mysql_fetch_array($queries);
    $dataPerangkat = $rowies['unit'];
    $stringCounter = strlen($dataPerangkat);
    
    $command = "";
    $commandCounter = 0;
    $cekEqual = 0;
    
    //$sql = "select * from user_detail";
    $sql = "select * from user_detail, user where user_detail.id=user.id and user.level=8 ORDER BY user_detail.nama ASC";
$query = mysql("u6799722_rumahsakit_dev", $sql);
$rows = mysql_num_rows($query);
if($rows > 0){
    echo '<form action="" method="post" class="form-inline">';
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $keterangan = $row["nama"];
        echo 
            "
                <label class='checkbox'>
                <input type='checkbox' name='check_list[]' value='".$id."'";  
                
                
                while($commandCounter < $stringCounter){
                    echo $command;
                    $commander = substr($dataPerangkat, $commandCounter, 1);
                    if($commander == "-"){
                        $commandCounter++;
                    }
                    else{
                        $commanders = substr($dataPerangkat, $commandCounter+1, 1);
                        if($commanders == "-"){
                            if($id == $commander){
                                $command = $commander;
                                $cekEqual = 1;
                                $commandCounter = $stringCounter;
                            }
                            else{
                            }
                            $commandCounter++;
                        }
                        else{
                            $commander = $commander.$commanders;
                            if($id == $commander){
                                $command = $commander;
                                $cekEqual = 1;
                                $commandCounter = $stringCounter;
                            }
                            else{
                            }
                           $commandCounter = $commandCounter + 2; 
                        }
                    }
                }
                
                if($cekEqual == 1){
                    echo " checked > ".$keterangan."";
                }
                else{
                    echo " > ".$keterangan."";
                }
                $commandCounter = 0;
                $cekEqual = 0;
                $command = "";



                echo "</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
        $counter = $counter + 1;
    }
    echo "<br/><br/><br/><p align='right'><button type='submit' id='simpanPrivileges' name='simpanPrivileges' class='btn btn-warning btn-small' title='Edit Hak Akses'><i class='icon-pencil icon-white'></i> Re-Edit Parameter</button></p></form>";
}
else{
    echo 
            " 
            <p align='center'>
            <strong>Belum ada user level 4 yang tersimpan, silakan tambahkan melalui menu tambah user.</strong>
            </p>
            ";
}
}

function penilailevel4(){
    $counter = 1;
    $user = $_SESSION['adminID'];
    $queries = mysql("u6799722_rumahsakit_dev", "select unit from u6799722_rumahsakit_dev.user where user.id='$user'");
    $rowies = mysql_fetch_array($queries);
    $dataPerangkat = $rowies['unit'];
    $stringCounter = strlen($dataPerangkat);
    
    $command = "";
    $commandCounter = 0;
    $cekEqual = 0;
    
    $sql = "select * from perangkat_rs ORDER BY perangkat_rs.keterangan ASC";
$query = mysql("u6799722_rumahsakit_dev", $sql);
$rows = mysql_num_rows($query);
if($rows > 0){
    echo '<form action="" method="post" class="form-inline">';
    while($row = mysql_fetch_assoc($query)){
        $id = $row["id"];
        $keterangan = $row["keterangan"];
        echo 
            "
                <label class='checkbox'>
                <input type='checkbox' name='check_list[]' value='".$id."'";  
                
                
                while($commandCounter < $stringCounter){
                    echo $command;
                    $commander = substr($dataPerangkat, $commandCounter, 1);
                    if($commander == "-"){
                        $commandCounter++;
                    }
                    else{
                        $commanders = substr($dataPerangkat, $commandCounter+1, 1);
                        if($commanders == "-"){
                            if($id == $commander){
                                $command = $commander;
                                $cekEqual = 1;
                                $commandCounter = $stringCounter;
                            }
                            else{
                            }
                            $commandCounter++;
                        }
                        else{
                            $commander = $commander.$commanders;
                            if($id == $commander){
                                $command = $commander;
                                $cekEqual = 1;
                                $commandCounter = $stringCounter;
                            }
                            else{
                            }
                           $commandCounter = $commandCounter + 2; 
                        }
                    }
                }
                
                if($cekEqual == 1){
                    echo " checked > ".$keterangan."";
                }
                else{
                    echo " > ".$keterangan."";
                }
                $commandCounter = 0;
                $cekEqual = 0;
                $command = "";



                echo "</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
        $counter = $counter + 1;
    }
    echo "<br/><br/><br/><p align='right'><button type='submit' id='simpanPrivileges' name='simpanPrivileges' class='btn btn-warning btn-small' title='Edit Hak Akses'><i class='icon-pencil icon-white'></i> Re-Edit Parameter</button></p></form>";
}
else{
    echo 
            " 
            <p align='center'>
            <strong>Belum ada unit rumah sakit yang tersimpan, silakan tambahkan melalui menu Tambah Unit Rumah Sakit</strong>
            </p>
            ";
}
}