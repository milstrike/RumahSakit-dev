<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$recentMonth = date("m");

$month = array("","Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");

for($i=1;$i<13;$i++){
    if($i == $recentMonth){
        echo "<option value='".$i."' selected='selected'>".$month[$i]."</option>";
    }
    else{
        echo "<option value='".$i."' selected='selected'>".$month[$i]."</option>";
    }
}