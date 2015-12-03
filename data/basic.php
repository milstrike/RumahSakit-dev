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

session_start();

include "my-conf.php";

$siteAddress = "http://rumahsakit-dev.unydevelopernetwork.com";



function BasicConfiguration($var){
   $sql = "SELECT config.value FROM config WHERE config.id=$var";
   executors($sql);
}

function executors($adb){
   $query = mysql("u6799722_rumahsakit_dev", $adb);
   if (! $query){
         throw new mysqli_sql_exception('Database error: ' . mysql_error());
   }
   while($row = mysql_fetch_assoc($query)) {
        echo $row["value"];
   }
}
$_SESSION["localAddress"] = $siteAddress;

