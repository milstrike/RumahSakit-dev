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

include "../../../data/my-conf.php";

include "../../../data/view/dataExtractor.php";

$error = "";
if (isset($_POST['isiTabel'])) {
    $counter = 1;
    
    $tabelMaster = $_SESSION['tabel'];
    $crackel = substr($tabelMaster, 4);
    $tabelPegawai = "poin".$crackel;
    $dana = $_POST['jumlahdana'];
    $total = 0;
    $pengali = 0;$
    
    $defaultTerima = "<span style=color:red>Belum Diterima</span>";
    
    $sql = "select * from daftar_nilai where nama_tabel='$tabelPegawai'";
            $query = mysql("u6799722_rumahsakit_dev", $sql);
            $rows = mysql_num_rows($query);
                  if($rows > 0){
                           while($row = mysql_fetch_assoc($query)){
                                    $total = $row["total_nilai"];
                           }
                  $pengali = $dana/$total;
                  }
                  
         $hapusTabel = "TRUNCATE ".$tabelMaster;
    $hapus = mysql("u6799722_rumahsakit_dev", $hapusTabel);
                  
        $sqlrty = "select * from ".$tabelPegawai."";
        $queryrty = mysql("u6799722_rumahsakit_dev", $sqlrty);
        $rowsrty = mysql_num_rows($queryrty);
            if($rowsrty > 0){
                while($rowrty = mysql_fetch_assoc($queryrty)){
                    $id = $rowrty["id"];
                    $idPegawai = $rowrty["id_pegawai"];
                    $nilai = $rowrty["total_individu"];
                    $nama = nama($idPegawai);
                    $golongan = getGolonganFromID($idPegawai);
                    $pajak = pajak($golongan);
                    $diterima1 = $nilai * $pengali;
                    $nilaiPajak = floor($diterima1 * $pajak);
                    $diterimaAkhir = $diterima1 - $nilaiPajak;
                    
                    $sqlxa = "INSERT INTO ".$tabelMaster."(no, nama, bagian, jumlah, potongan, bersih, ttd) VALUES (NULL, '$nama', '$nilai', '$diterima1', '$nilaiPajak', '$diterimaAkhir', '$defaultTerima')";
                    $queryxa = mysql("u6799722_rumahsakit_dev", $sqlxa);  
                    $counter++;
                }
            }
            
            
            $sqlxih = "UPDATE daftar_gaji SET dana='$dana' WHERE nama_tabel='$tabelMaster'";
            $queryxih = mysql("u6799722_rumahsakit_dev", $sqlxih);
    
    
            $error='<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button>Sukses Melakukan Import Data!</div>';
            //$error = $diterimaAkhir;
}
