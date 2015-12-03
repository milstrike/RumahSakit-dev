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

$opening="<html>
<head>
	<style>
        body {
            font-family: Arial;
        }
        table {
            border-collapse: collapse;
        }
        th {
            background-color: #cccccc;
        }
        th, td {
            border: 1px solid #000;
        }
    </style>
</head>
<body>
	<table>
		<thead>
		<tr height=10px>
			<th width=15px>&nbsp;&nbsp;No&nbsp;&nbsp;</th>
			<th width=40px>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nama&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			<th width=30px>&nbsp;&nbsp;Bagian&nbsp;&nbsp;</th>
			<th width=40px>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Jumlah&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                      <th width=40px>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Potongan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                      <th width=40px>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Terima Bersih&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                      <th width=60px>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tanda Tangan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
		</tr>
		</thead>
		<tbody>";

$closing="</tbody>
	</table>
</body>
</html>";

$data = "";
$finalData = "";

if (isset($_POST['exportData'])) {
    $nama_tabel = $_SESSION['tabel'];

$counter = 1;
$sql = "select * from ".$nama_tabel;
$query = mysql("u6799722_rumahsakit_dev", $sql);
$rows = mysql_num_rows($query);
if($rows > 0){
    while($row = mysql_fetch_assoc($query)){
        $no = $row["no"];
        $nama = $row["nama"];
        $bagian = $row["bagian"];
        $jumlah = $row["jumlah"];
        $potongan = $row["potongan"];
        $bersih = $row["bersih"];
        $keterangan = $row["ttd"];
        
        $data = $data."<tr height=10px><td>".$no."</td><td>".$nama."</td><td>".$bagian."</td><td>Rp".$number_format_vietnam = number_format($jumlah, 2, ',', '.')."</td><td>Rp".$number_format_vietnam = number_format($potongan, 2, ',', '.')."</td><td>Rp".$number_format_vietnam = number_format($bersih, 2, ',', '.')."</td><td></td><tr>";
    }
}

$finalData = $opening.$data.$closing;
$_SESSION['finalDatax'] = $finalData;
header("Location:../../../data/result.php");
}