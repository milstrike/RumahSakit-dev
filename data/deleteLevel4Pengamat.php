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
include "my-conf.php";

$error='';

if (isset($_POST['submitDelete'])) {
$id4=$_POST['id'];


$sqlx = "DELETE FROM u6799722_rumahsakit_dev.user WHERE user.id='$id4'";
$queryx = mysql("u6799722_rumahsakit_dev", $sqlx);    


$sqln = "DELETE FROM u6799722_rumahsakit_dev.user_detail WHERE user_detail.id='$id4'";
$queryn = mysql("u6799722_rumahsakit_dev", $sqln); 


header("Location:../../manajemen_role/pengamat_level_4/");
}

