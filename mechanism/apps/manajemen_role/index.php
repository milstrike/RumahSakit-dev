<!DOCTYPE html>
<html>
    <head>
        <?php
        include "../../../class/router.php";
        include "../../../class/initTitle.php";
        include "../../../data/basic.php";
        include "../../../class/logout.php";
        if(empty ($_SESSION['status'])){
            header("Location:../../../"); // Redirecting To Other Page
        }
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
                                    <li><a href="../manajemen_user/">Manajemen User</a> <span class="divider">/</span></li>
                                    <li class="active">Manajemen Role</li>
                                </ul>
                            
                                Pilih salah satu untuk konfigurasi role user.
                            
                                <dl class="dl-horizontal">
                                    <a href="role_list">
                                    <dt>Daftar Role</dt>
                                    <dd>Daftar Role yang ada di dalam sistem</dd>
                                    </a>
                                    
                                     
                                    <a href="system_role/">
                                    <dt>System Role</dt>
                                    <dd>Konfigurasi role untuk user yang menangani sistem</dd>
                                    </a>
                                    
                                    
                                    
                                    <hr />
                                    
                                    <a href="level_1">
                                    <dt>Penilai Level 1</dt>
                                    <dd>Konfigurasi role untuk penilai dengan level tertinggi <strong>(Direktur)</strong>.</dd>
                                    </a>
                                    
<!--                                    <a href="pengamat_level_1/">
                                    <dt>Pengamat Level 1</dt>
                                    <dd>Konfigurasi role untuk pengamat dengan level tertinggi.</dd>
                                    </a>-->
                                    
                                    <hr/>
                                    
                                    <a href="level_2">
                                    <dt>Penilai Level 2</dt>
                                    <dd>Konfigurasi role untuk penilai dengan level kedua <strong>(Kepala Bidang / Kepala Bagian / Supervisor)</strong>.</dd>
                                    </a>
                                    
<!--                                    <a href="pengamat_level_2/">
                                    <dt>Pengamat Level 2</dt>
                                    <dd>Konfigurasi role untuk pengamat dengan level kedua.</dd>
                                    </a>-->
                                    
                                    <hr/>
                                    
                                    <a href="level_3">
                                    <dt>Penilai Level 3</dt>
                                    <dd>Konfigurasi role untuk penilai dengan level ketiga <strong>(Kepala Seksi)</strong>.</dd>
                                    </a>
                                    
<!--                                    <a href="pengamat_level_3/">
                                    <dt>Pengamat Level 3</dt>
                                    <dd>Konfigurasi role untuk pengamat dengan level ketiga.</dd>
                                    </a>-->
                                    
                                    <hr/>
                                    
                                    <a href="level_4">
                                    <dt>Penilai Level 4</dt>
                                    <dd>Konfigurasi role untuk penilai dengan level keempat <strong>(Kepala Ruang)</strong>.</dd>
                                    </a>
                                    
<!--                                    <a href="pengamat_level_4/">
                                    <dt>Pengamat Level 4</dt>
                                    <dd>Konfigurasi role untuk pengamat dengan level keempat.</dd>
                                    </a>-->
                                    
                                    <hr/>
                                    <p align="right">
                                    <a href="#infoEditRole" data-toggle='modal'><button class="btn btn-small"><i class="icon-info-sign"></i>&nbsp;Bantuan untuk Manajemen Role</button></a>                                
                                    </p>
                                    
                                    <div id="infoEditRole" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="" aria-hidden='true'>
                                        <div class='modal-header' style='background-color: #149bdf;'>
                                            <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
                                                <h3 id='myModalLabel' style='color: #fff;'>Bantuan Manajemen Role</h3>
                                        </div>
                                        <div class='modal-body'>
                                            <Strong>Yang harus dilakukan dalam melakukan manajemen role.</Strong><br/>
                                            <ol>
                                                <li>Selalu mulailah untuk memanajemen role dengan level paling rendah. (IV) </li> 
                                                <li>Role - role level tinggi hanya mengambil data dari role - role yang levelnya lebih rendah</li>
                                                <li>Role - role yang diatur di bagian ini akan berpengaruh pada proses penilaian, baik dari sisi pegawai maupun tim penilai suatu level</li>
                                            </ol>
                                        </div>
                                        <div class="modal-footer">
                                            <a href="#" class="btn" data-dismiss="modal" aria-hidden="true" style="text-decoration: none;">Close</a>
                                        </div>
                                    </div>
                                    
                                </dl>
                        </div>
                    </div>
                    
                    <div class="container">
        <div class="row-fluid">
            <div class="span12 footerGeneral">
                &copy; 2015<br/>
                by UNY Developer Network
            </div>
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



