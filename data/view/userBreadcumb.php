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

$level = $_SESSION['role'];

switch($level){
    
    case 1:
        userMenuLevel1();
        break;
    
    case 2:
        takeoff();
        break;
    
    case 4:
        takeoff();
        break;
    
    case 6:
        takeoff();
        break;
    
    case 8:
        takeoff();
        break;
    
    case 3:
        offset();
        break;
    
    case 5:
        offset();
        break;
    
    case 7:
        offset();
        break;
    
    case 9:
        offset();
        break;
}

function offset(){ 
echo '<li><a href="../../offset/">Beranda</a> <span class="divider">/</span></li>';                       
}

function takeoff(){
echo '<li><a href="../../takeoff/">Beranda</a> <span class="divider">/</span></li>';                       
}


function userMenuLevel1(){
    
}