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

$counter = 1;
$sql = "select * from daftar_kepanitiaan";
$query = mysql("u6799722_rumahsakit_dev", "select * from daftar_kepanitiaan");
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $namaKepanitiaan = $row["nama_kepanitiaan"];
        $keteranganKepanitiaan = $row["detail_kepanitiaan"];
        $dibuatPada = $row['change_date'];
        echo 
            "
            <div id='detail".$counter."' class='modal hide'' tabindex='-1' role='dialog' aria-labelledby='UserDetail".$counter."' aria-hidden='true'>
            <div class='modal-header' style='background-color: #149bdf;'>
            <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
            <h3 id='myModalLabel' style='color: #fff;'>Detail Kepanitiaan</h3>
            </div>
            <div class='modal-body'>
                <table width='100%' border='0' cellpadding='5' cellspacing='5'>
                    <tr>
                        <td width='25%' style='vertical-align:top;'><strong>Nama Kepanitiaan</strong></td>
                        <td width='1%' style='vertical-align:middle;'>:</td>
                        <td width='74%' style='vertical-align:middle'>".$namaKepanitiaan."</td>
                    </tr>
                    <tr>
                        <td width='25%' style='vertical-align:top;'><strong>Detail Kepanitiaan</strong></td>
                        <td width='1%' style='vertical-align:middle;'>:</td>
                        <td width='74%' style='vertical-align:middle'>".$keteranganKepanitiaan."</td>
                    </tr>
                    <tr>
                        <td width='25%' style='vertical-align:top;'><strong>Dibuat pada</strong></td>
                        <td width='1%' style='vertical-align:middle;'>:</td>
                        <td width='74%' style='vertical-align:middle'>".$dibuatPada."</td>
                    </tr>
                </table>
            </div>
            <div class='modal-footer'>
            <button class='btn btn-info' data-dismiss='modal' aria-hidden='true'>Tutup</button>
            </div>
            </div>";
        $counter = $counter + 1;
    }
}