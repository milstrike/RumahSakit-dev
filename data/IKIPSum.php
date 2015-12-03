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
//include "my-conf.php";

$error='';
$i = 0;

$namaTabel = $_SESSION['tabelIKIP'];
if (isset($_POST['check'])) {
    if (empty($_POST['ci']) || empty($_POST['tkib']) || empty($_POST['bobot'])) {
        
        $error='<div class="alert alert-error">Form Tidak Boleh Kosong!</div>';
        
        }
        else
        {   
            $id_tabel = $_POST['id_ikip'];
            $ci = $_POST['ci'];
            $tkia = $_POST['tkia'];
            $tkib = $_POST['tkib'];
            $nkk = $ci/$tkib;
            $bobot = $_POST['bobot']/100;
            $sum = $nkk * $bobot;
            
            $sqlx = "UPDATE u6799722_rumahsakit_dev.".$namaTabel." SET ci='$ci', target_a='$tkia', target_b='$tkib', nilai='$nkk', bobot='$bobot', sum='$sum' WHERE id='$id_tabel'";
            $queryx = mysql("u6799722_rumahsakit_dev", $sqlx);
            
    }   
}


