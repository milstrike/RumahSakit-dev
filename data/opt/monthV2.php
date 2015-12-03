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


$month = ""."<option value='1'>Januari</option>"."<option value='2'>Februari</option>"."<option value='3'>Maret</option>"."<option value='4'>April</option>"."<option value='5'>Mei</option>"."<option value='6'>Juni</option>"."<option value='7'>Juli</option>"."<option value='8'>Agustus</option>"."<option value='9'>September</option>"."<option value='10'>Oktober</option>"."<option value='11'>November</option>"."<option value='12'>Desember</option>";
$recentMonth = date("m");
$months = array("","Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");

for($i=1;$i<13;$i++){
    if($i == $recentMonth){
        $month = $month."<option value='".$i."' selected='selected'>".$months[$i]."</option>";
    }
    else{
        $month = $month."<option value='".$i."'>".$months[$i]."</option>";
    }
}