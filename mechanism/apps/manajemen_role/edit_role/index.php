<!DOCTYPE html>
<html>
    <head>
        <?php
        include "../../../../class/router.php";
        include "../../../../class/initTitle.php";
        include "../../../../data/basic.php";
        include "../../../../data/getRoleUnit.php";
        include "../../../../class/logout.php";
        if(empty ($_SESSION['status'])){
            header("Location:../../../../"); // Redirecting To Other Page
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
                                            <img src="../../../../assets/icon-uses/nama.png" alt="icon-user"/>
                                        </td>
                                        <td width="75%" class="anotherColumn">
                                            <strong><?php echo $_SESSION['nama'];?></strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="firstColumn">
                                            <img src="../../../../assets/icon-uses/jabatan.png" alt="icon-jabatan"/>
                                        </td>
                                        <td class="anotherColumn">
                                            <?php echo $_SESSION['jabatan'];?>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="firstColumn">
                                            <img src="../../../../assets/icon-uses/telepon.png" alt="icon-telepon"/>
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
                                    <li><a href="../../../landing/">Beranda</a> <span class="divider">/</span></li>
                                    <li><a href="../../manajemen_user/">Manajemen User</a> <span class="divider">/</span></li>
                                    <li><a href="../">Manajemen Role</a> <span class="divider">/</span></li>
                                    <li class="active">Edit Role</li>
                                </ul>
                                
                                <table width="100%" class="table table-bordered table-hover">
                                <thead>
                                    <tr id="theadBasic">
                                        <td id="thead">Berikan cek pada parameter yang Anda inginkan</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <?php
                                                include "../../../../data/view/roleUnit.php";
                                            ?>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Pastikan opsi yang Anda pilih sesuai dengan aturan yang berlaku.
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            
                            <?php
                               // include "../../../../data/view/editRoleViewModal.php";
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <script src='../../../../bootstrap/js/jquery.js'></script>
        <script src='../../../../bootstrap/js/bootstrap.js'></script>
        
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



