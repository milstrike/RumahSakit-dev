<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$Date = 1;
$recentDay = date("d");
do{
    if($Date == $recentDay){
        echo "<option value='".$Date."' selected='selected'>".$Date."</option>";
    }
    else{
        echo "<option value='".$Date."'>".$Date."</option>";
    }
    
    $Date++;
}while($Date < 32);