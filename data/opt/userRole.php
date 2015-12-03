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


$sqlio = "select * from user_role";
$queryio = mysql("u6799722_rumahsakit_dev", $sqlio);
$rowsio = mysql_num_rows($query);
if($rowsio > 0){
    while($rowio = mysql_fetch_assoc($queryio)){
        $idio = $rowio["id"];
        $roleio = $rowio["role"];
        echo 
            "
                <option value='".$idio."'
            ";
        if($idio == $_SESSION["dataEditKelompok"]){
            echo " selected='selected'>".$roleio."</option>";
        }
        else{
            echo ">".$roleio."</option>";
        }
    }
}
else{
}