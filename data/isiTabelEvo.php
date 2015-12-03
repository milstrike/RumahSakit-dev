<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include "../../../data/my-conf.php";
include "../../../data/view/dataExtractor.php";
$error = '';
if (isset($_POST['isiTabel'])) {
    $counter = 1;
    $tabelMaster = $_SESSION['tabel'];
    $tabelNilai = "poin".substr($tabelMaster, 4);
    $sqlParameter = "";
    $jumlahPoin = 0;
    $sumberDana = 0;
    $pengali = 0;

    $recentID = "";
    $postID = "";
    
    cleanTable($tabelMaster);
    $IDDanaUtama = getSumberDanaUtama();
    $DanaUtama = getSumberDana($IDDanaUtama);
    isiTabelUtama($DanaUtama);
    
    $defaultTerima = "<span style=color:red>Belum Diterima</span>";
    

    $sql = "select * from daftar_penerima ORDER BY id ASC";
    $query = mysql("u6799722_rumahsakit_dev", $sql);
    $rows = mysql_num_rows($query);
        if($rows > 0){
            while($row = mysql_fetch_assoc($query)){
                    $sqlParameter = getCommunityStruktural($row['id_sumber']);
                    $jumlahPoin = getJumlahPoin($tabelNilai, $sqlParameter);
                    $sumberDana = getSumberDana($row['id_sumber']);                    
                    //cleanTable($tabelMaster);
                    isiTabelGaji($sqlParameter, $tabelNilai, $jumlahPoin, $tabelMaster, $defaultTerima, $sumberDana);
            }
        }
        
$error='<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button>Sukses Melakukan Import Data!</div>';
}


function getCommunityStruktural($id_sumber){
    $counter = 0;
    $sqlParameter = "";
    $sql = "select * from daftar_penerima where id_sumber=".$id_sumber."";
    $query = mysql("u6799722_rumahsakit_dev", $sql);
    $rows = mysql_num_rows($query);
        if($rows > 0){
            while($row = mysql_fetch_assoc($query)){
                if($counter < 1){
                    $sqlParameter = "data_pegawai.jabatan=".$row['id_struktural']." ";
                }
                else{
                    $sqlParameter = $sqlParameter."or data_pegawai.jabatan=".$row['id_struktural']." ";
                }
                $counter++;
            }
        }
        
        return $sqlParameter; 
}

function getJumlahPoin($tabel, $parameter){
    $jumlah = 0;
    $sql = "select * from ".$tabel.", data_pegawai where (".$parameter.") and (data_pegawai.id=".$tabel.".id_pegawai)";
    $query = mysql("u6799722_rumahsakit_dev", $sql);
    $rows = mysql_num_rows($query);
        if($rows > 0){
            while($row = mysql_fetch_assoc($query)){
                $jumlah++;
            }
        }
        return $jumlah;
}

function getSumberDana($id_sumber){
    $dana = 0;
    $sql = "select * from master_resource_gaji where id=".$id_sumber."";
    $query = mysql("u6799722_rumahsakit_dev", $sql);
    $rows = mysql_num_rows($query);
        if($rows > 0){
            while($row = mysql_fetch_assoc($query)){
                $dana = $row['dana'];
            }
        }
        return $dana;
}



function getSumberDanaUtama(){
    $sumberID = "";
    $sql = "select * from daftar_penerima_umum";
    $query = mysql("u6799722_rumahsakit_dev", $sql);
    $rows = mysql_num_rows($query);
        if($rows > 0){
            while($row = mysql_fetch_assoc($query)){
                $sumberID = $row['id_sumber'];
            }
        }
        return $sumberID;
}

function getPengali($sumberDana, $jumlahPoin){
    $pengali = $sumberDana/$jumlahPoin;
    return $pengali;
}

function cleanTable($table){
    $hapusTabel = "TRUNCATE ".$table;
    $hapus = mysql("u6799722_rumahsakit_dev", $hapusTabel);   
}

function isiTabelGaji($parameter, $tabelNilai, $pengali, $tabelMaster, $defaultTerima, $sumberDana){
    $sql = "select * from ".$tabelNilai.", data_pegawai where ".$parameter." and (".$tabelNilai.".id_pegawai=data_pegawai.id)";
        $query = mysql("u6799722_rumahsakit_dev", $sql);
        $rows = mysql_num_rows($query);
            if($rows > 0){
                while($row = mysql_fetch_assoc($query)){
                    $id = $row["id"];
                    $idPegawai = $row["id_pegawai"];
                   // $nilai = $row["total_individu"];
                    $nama = nama($idPegawai);
                    //$golongan = getGolonganFromID($idPegawai);
                    //$pajak = pajak($golongan);
                    $diterimaAkhir = (1/$pengali)*$sumberDana;
                    //$nilaiPajak = floor($diterima1 * $pajak);
                    dataMasukGaji($tabelMaster, $nama, $diterimaAkhir);
                }
                
            }
}    


function dataMasukGaji($tabelMaster, $nama, $diterimaAkhir){
    
                $gajiKotor = getRecentGajiKotor($nama, $tabelMaster);
                $gajiBersih = getRecentGajiBersih($nama, $tabelMaster);
                $gajiKotorPejabat = $diterimaAkhir + $gajiKotor;
                $gajiBersihPejabat = $diterimaAkhir + $gajiBersih;
    
                 $sqlxa = "UPDATE ".$tabelMaster." set jumlah=".$gajiKotorPejabat.", bersih=".$gajiBersihPejabat.' where nama='.$nama."'";
                 $queryxa = mysql("u6799722_rumahsakit_dev", $sqlxa);
}

function getRecentGajiKotor($nama, $tabelMaster){
    $gajiKotor = "0";
    $sql = "select * from ".$tabelMaster." where nama='".$nama."'";
    $query = mysql("u6799722_rumahsakit_dev", $sql);
        $rows = mysql_num_rows($query);
            if($rows > 0){
                while($row = mysql_fetch_assoc($query)){
                    $gajiKotor = $row["jumlah"];
                }
            }
           return $gajiKotor;
}

function getRecentGajiBersih($nama, $tabelMaster){
    $gajiBersih = "0";
    $sql = "select * from ".$tabelMaster." where nama='".$nama."'";
    $query = mysql("u6799722_rumahsakit_dev", $sql);
        $rows = mysql_num_rows($query);
            if($rows > 0){
                while($row = mysql_fetch_assoc($query)){
                    $gajiBersih = $row["bersih"];
                }
            }
            return $gajiBersih;
}


function isiTabelUtama($DanaUtama){
    $counter = 1;
    
    $tabelMaster = $_SESSION['tabel'];
    $crackel = substr($tabelMaster, 4);
    $tabelPegawai = "poin".$crackel;
    $dana = $DanaUtama;
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
                    $defaultTerima = "<span style=color:red>Belum Diterima</span>";
                    
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