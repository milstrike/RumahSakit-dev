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

$log_username = $_SESSION['umask'];
$log_activity = "mengakses data perpajakan";
$sqlop = "INSERT INTO u6799722_rumahsakit_dev.log_book (id, username, time_log, activity) VALUES (NULL, '$log_username', CURRENT_TIMESTAMP, '$log_activity')";
$queryop = mysql("u6799722_rumahsakit_dev", $sqlop);

$counter = 1;
$sql = "select * from a_2_kepegawaian ORDER BY a_2_kepegawaian.poin ASC";
$query = mysql("u6799722_rumahsakit_dev", "select * from a_2_kepegawaian ORDER BY a_2_kepegawaian.poin ASC");
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $idKepegawaian = $row["id"];
        $keteranganKepegawaian = $row["keterangan"];
        $pajakKepegawaian = $row["pajak"]*100;
        echo 
            "<tr>
            <td width='10%' id='thead'>".$counter."</td>
            <td width='30%' id='thead'>".$keteranganKepegawaian."</td>
            <td width='30%' id='thead'>".$pajakKepegawaian."%</td>
            <td width='30%' id='thead'>
            <a href='#editKepegawaian".$counter."' data-toggle='modal'><button type='submit' id='edit' name='edit' class='btn btn-warning btn-small' title='Edit Data'><i class='icon-pencil icon-white'></i></button></a>
            <a href='#deleteKepegawaian".$counter."' data-toggle='modal'><button type='submit' id='remove' name='remove' class='btn btn-danger btn-small' title='Hapus Data'><i class='icon-remove icon-white'></i></button></a>
            </td>
            </tr>
            ";
        $counter = $counter + 1;
    }
}