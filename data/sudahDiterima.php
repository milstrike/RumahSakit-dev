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

$error = "";
if (isset($_POST['ubahStatus'])) {
    
    $nomor = $_POST['status'];
    $tabelMaster = $_SESSION['tabel'];
    
    $changeStatus = "<span style=color:green>Sudah Diterima</span>";
    
    $sqlxih = "UPDATE ".$tabelMaster." SET ttd='$changeStatus' WHERE no='$nomor'";
    $queryxih = mysql("u6799722_rumahsakit_dev", $sqlxih);
    
    $error='<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button>Sukses mengubah status!</div>';
}
