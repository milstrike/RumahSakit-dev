<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



$roleUser = $_SESSION['role'];


switch($roleUser){
    case 2:
        $parameter = $_SESSION['params'];
        $command = $parameter;
        $command = getParameter($command);
        $_SESSION['levelparameter'] = $command;
        break;
    
    case 4:
        $parameter = $_SESSION['params'];
        $command = $parameter;
        $command = getParameter($command);
        $_SESSION['levelparameter'] = $command;
        break;
    
    case 6:
        $parameter = $_SESSION['params'];
        $command = $parameter;
        $command = getParameter($command);
        $_SESSION['levelparameter'] = $command;
        break;
    
    case 8:
        $parameter = $_SESSION['params'];
        $command = $parameter;
        $command = getParameter2($command);
        $_SESSION['levelparameter'] = $command;
        break;
        
}




function getParameter($parameter){
    $stringCounter = strlen($parameter);
    $command = "";
    $commandCounter = 0;
    $cekEqual = 0;
    $commander = "";
    $commanders = "";
    
    $params = "";
    
    while($commandCounter < $stringCounter-1){
                    //echo $command;
                    $commander = substr($parameter, $commandCounter, 1);
                    if($commander == "-"){
                        $params = $params." or ";
                        $commandCounter++;
                    }
                    else{
                        $commanders = substr($parameter, $commandCounter+1, 1);
                        if($commanders == "-"){
                            $params = $params." user.id=".$commander;
                            
                            $commandCounter++;
                        }
                        else{
                            $commander = $commander.$commanders;
                            $params = $params." user.id=".$commander;
                            $commandCounter++;
                            $commandCounter++; 
                        }
                    }
                }
                
                return $params;
    
}


function getParameter2($parameter){
    $stringCounter = strlen($parameter);
    $command = "";
    $commandCounter = 0;
    $cekEqual = 0;
    $commander = "";
    $commanders = "";
    
    $params = "";
    
    while($commandCounter < $stringCounter-1){
                    echo $command;
                    $commander = substr($parameter, $commandCounter, 1);
                    if($commander == "-"){
                        $params = $params." or ";
                        $commandCounter++;
                    }
                    else{
                        $commanders = substr($parameter, $commandCounter+1, 1);
                        if($commanders == "-"){
                            $params = $params." data_pegawai.perangkat=".$commander;
                            
                            $commandCounter++;
                        }
                        else{
                            $commander = $commander.$commanders;
                            $params = $params." data_pegawai.perangkat=".$commander;
                            $commandCounter++;
                            $commandCounter++; 
                        }
                    }
                }
                
                return $params;
    
}
