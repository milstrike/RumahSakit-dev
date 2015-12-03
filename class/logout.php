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

//session_start();
//include "../data/my-conf.php";
$pesanLogout = '';


if (isset($_POST['logout'])) {
    
    $id_usr = $_SESSION['id_usr'];
    $mac_addr = 0;
    
    $sqlx = "UPDATE u6799722_rumahsakit_dev.user SET logout=CURRENT_TIMESTAMP WHERE user.id='$id_usr'";
    $queryx = mysql("u6799722_rumahsakit_dev", $sqlx);
    
    $log_username = $_SESSION['umask'];
$log_activity = "session logout";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);
    
    $pesanLogout = '<div class="alert alert-warning fade in"><button type="button" class="close" data-dismiss="alert">&times;</button>Log Out...</div>';
    
    session_destroy();
    header("Refresh:0");
}