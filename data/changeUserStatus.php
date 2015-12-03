<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

if (isset($_POST['aktivasiUser'])) {
    
    $id_usr = $_POST['id'];
    $mac_addr = $_POST['status'];
    
    if($mac_addr == 0){
        $mac_addr = 1;
    }
    else{
        $mac_addr = 0;
    }
    
    $sqlx = "UPDATE u6799722_rumahsakit_dev.user SET mac_address='$mac_addr' WHERE user.id='$id_usr'";
    $queryx = mysql("u6799722_rumahsakit_dev", $sqlx);
    
}

