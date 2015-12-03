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
        userMenuLevel2();
        break;
    
    case 4:
        userMenuLevel4();
        break;
    
    case 6:
        userMenuLevel6();
        break;
    
    case 8:
        userMenuLevel8();
        break;
    
    case 3:
        userMenuLevel3();
        break;
    
    case 5:
        userMenuLevel5();
        break;
    
    case 7:
        userMenuLevel7();
        break;
    
    case 9:
        userMenuLevel9();
        break;
        
    
    
}

function userMenuLevel9(){
	echo "";
}

function userMenuLevel7(){
	echo "";
}

function userMenuLevel5(){
	echo "";
}

function userMenuLevel3(){
	echo "";
}

function userMenuLevel8(){
	echo "";
}

function userMenuLevel6(){
	echo "";
}

function userMenuLevel4(){
	echo "";
}

function userMenuLevel2(){
	echo "";
}

function userMenuLevel1(){
	echo "";
}


