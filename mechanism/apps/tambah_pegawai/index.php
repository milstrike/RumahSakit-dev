<!DOCTYPE html>
<html>
    <head>
        <?php
        include "../../../class/router.php";
        include "../../../class/initTitle.php";
        include "../../../data/basic.php";
        include "../../../data/tambahPegawai.php";
        include "../../../data/editPegawaiJump.php";
        include "../../../class/logout.php";
        include "../../../data/view/optionRole.php";
        if(empty ($_SESSION['status'])){
            header("Location:../../../"); // Redirecting To Other Page
        }
        
        $_SESSION["dataEditNama"] = ""; 
        $_SESSION["dataEditNIP"] = "";
        $_SESSION["dataEditGolongan"] = "";
        $_SESSION["dataEditSatuanKerja"] = "";
        $_SESSION["dataEditStruktural"] = "";
        $_SESSION["dataEditKelompok"] = "";
        $_SESSION["dataEditPendidikan"] = "";
        $_SESSION["dataEditSertifikasi"] = "";
        $_SESSION["dataEditUnit"] = "";
        $_SESSION["dataEditTanggal"] = "";
        ?>
    </head>
    <body class="bodyBackground">
        
        <!-- NavigationBar -->
        <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container" style="height: 60px;">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
            <a class="brand" style="color: white; padding-top: 18px;"><?php BasicConfiguration(1); ?></a>
          <div class="nav-collapse collapse">
          </div>
        </div>
      </div>
    </div>
        
        
        <!-- content -->
        <div class="container" style="padding-top:100px;">
            <div class="row-fluid">
                <div class="span12">
                    <div class="row-fluid">
                        <div class="span3">
                            <div class="panelSide boxShadow">
                                <div class="boxBA">
                                <strong>Detail Akun</strong>
                            </div>
                            <div class="boxBC">
                                <table width="100%" border="0" cellpadding="5" cellspacing="5">
                                    <tr>
                                        <td widtch="25%" class="firstColumn">
                                            <img src="../../../assets/icon-uses/nama.png" alt="icon-user"/>
                                        </td>
                                        <td width="75%" class="anotherColumn">
                                            <strong><?php echo $_SESSION['nama'];?></strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="firstColumn">
                                            <img src="../../../assets/icon-uses/jabatan.png" alt="icon-jabatan"/>
                                        </td>
                                        <td class="anotherColumn">
                                            <?php echo $_SESSION['jabatan'];?>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="firstColumn">
                                            <img src="../../../assets/icon-uses/telepon.png" alt="icon-telepon"/>
                                        </td>
                                        <td class="anotherColumn">
                                            <?php echo $_SESSION['telepon'];?>
                                        </td>
                                    </tr>
                                </table>
                                <form action="" method="post">
                                    <button type="submit" id="logout" name="logout" class="btn btn-block btn-warning buttonLock">Logout!</button>
                                </form>
                            </div>
                            </div>
                        </div>
                        
                        <div class="span9 bigPanel boxShadow" id="bigPanel">
                                <ul class="breadcrumb">
                                    <li><a href="../../landing/">Beranda</a> <span class="divider">/</span></li>
                                    <li><a href="../manajemen_pegawai/">Manajemen Pegawai</a> <span class="divider">/</span></li>
                                    <li class="active">Tambah Pegawai</li>
                                </ul>
                            
                            
                            <form class="form-horizontal" action="" method="post">
                                <div class="control-group">
                                    <label class="control-label" for="nama">Nama Lengkap*</label>
                                    <div class="controls">
                                        <input id="nama" name="nama" type="text" placeholder="Nama Lengkap" class="span6" required="required">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="nip">Nomor Induk Pegawai*</label>
                                    <div class="controls">
                                        <input id="nip" name="nip" type="text" placeholder="Nomor Induk Pegawai" class="span6" maxlength="20" required="required"/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="golongan">Golongan*</label>
                                    <div class="controls">
                                         <select id="golongan" name="golongan" class="span6" required="required">
                                            <?php include "../../../data/opt/Golongan.php";  ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="satker">Satuan Kerja*</label>
                                    <div class="controls">
                                         <select id="satker" name="satker" class="span6" required="required">
                                            <?php include "../../../data/opt/Satker.php";  ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="jabatan">Jabatan Struktural*</label>
                                    <div class="controls">
                                         <select id="jabatan" name="jabatan" class="span6" required="required">
                                            <?php include "../../../data/opt/Struktural.php";  ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="kelompok">Kelompok*</label>
                                    <div class="controls">
                                         <select id="kelompok" name="kelompok" class="span6" required="required">
                                            <?php include "../../../data/opt/Kelompok.php";  ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="pendidikan">Tingkat Pendidikan*</label>
                                    <div class="controls">
                                         <select id="pendidikan" name="pendidikan" class="span6" required="required">
                                            <?php include "../../../data/opt/Pendidikan.php";  ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="sertifikasi">Sertifikasi*</label>
                                    <div class="controls">
                                        <select id="sertifikasi" name="sertifikasi" class="span6" required="required">
                                            <?php include "../../../data/opt/Sertifikasi.php";  ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="perangkat">Unit*</label>
                                    <div class="controls">
                                        <select id="perangkat" name="perangkat" class="span6" required="required">
                                            <?php include "../../../data/opt/Perangkat.php";  ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="tanggalmasuk">Tanggal Masuk Pegawai*</label>
                                    <div class="controls">
                                        <select id="tanggal" name="tanggal" class="span2" required="required">
                                            <?php include "../../../data/opt/DateNeo.php";  ?>
                                        </select>
                                        <select id="bulan" name="bulan" class="span2" required="required">
                                            <?php include "../../../data/opt/MonthNeo.php";  ?>
                                        </select>
                                        <select id="tahun" name="tahun" class="span2" required="required">
                                            <?php include "../../../data/opt/YearNeo.php";  ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="submit">&nbsp;</label>
                                    <div class="controls">
                                        <button type="submit" id="submit" name="submit" class="btn btn-primary"><i class="icon-user icon-white"></i>&nbsp;<strong>Tambahkan Data Pegawai</strong></button><br/>
                                    </div>
                                </div>
                                <span class="spanErrorB"><?php echo $error; ?></span>
                                    </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <script src='../../../bootstrap/js/jquery.js'></script>
        <script src='../../../bootstrap/js/bootstrap.js'></script>
        
    </body>
</html>



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



