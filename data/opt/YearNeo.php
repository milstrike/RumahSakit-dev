<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$Year = 1945;
$recentYear = date("Y");
do{
    if($Year == $recentYear){
        echo "<option value='".$Year."' selected='selected'>".$Year."</option>";
    }
    else{
        echo "<option value='".$Year."'>".$Year."</option>";
    }
    $Year++;
}while($Year < 2099);