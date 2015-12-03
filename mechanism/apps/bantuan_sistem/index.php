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
                                    <li class="active">Bantuan Sistem</li>
                                </ul>
                                <div style="margin:20px;"> 
                                    <h3>Panduan Sistem Informasi Rumah Sakit</h3>
                                    <h4>(SIP - RS) - Versi 0.0.1</h4>
                                    <hr align="center" noshade width="100%" style="border-color:#000000;"/>
                                    <span><strong>LEVEL USER</strong><br/>
                                    Di dalam sistem ini terdapat 3(tiga) level user, yakni sebagai berikut:
                                    <ol>
                                        <li>Administrator<br/>
                                            Berfungsi untuk mengontrol keseluruhan sistem. Termasuk komponen - komponen utama dalam sistem informasinya, yakni membuat, mengedit, dan menghapus Data Pegawai, Data Gaji, Data Pajak, dan lain sebagainya.
                                        </li>
                                        <li>Penilai<br/>
                                            Berfungsi sebagai penilai pada komponen pegawai dan pengamat pada Sistem Pegawai. Penilai melakukan penilaian manual pada Indikator Kinerja Individual Pegawai(IKIP) dan Indikator Kinerja Unit Kerja Pegawai(IKUKP). Sementara nilai - nilai yang berhubungan dengan identitas kepegawaian, struktur, jabatan, dan lain sebagainya yang bersifat tetap dilakukan secara otomatis oleh sistem.
                                        </li>
                                        <li>Pengamat<br/>
                                            Berfungsi sebagai pengamat saja, bertugas untuk mengontrol Penilai apabila belum melakukan kewajibannya untuk menilai pegawai yang berada di bawahnya. Pengamat hanya dapat melihat Data Pegawai yang menjadi tanggung jawabnya beserta daftar nilainya.
                                        </li>
                                    </ol>    
                                    </span>

                                    <span>
                                        <strong>STRUKTUR SISTEM</strong><br/>
                                        Struktur Sistem Informasi Rumah Sakit adalah sebagai berikut:
                                        <ol>
                                            <li>Manajemen User<br/>
                                                Berfungsi untuk melakukan manajemen pada user yang dapat mengakses sistem. Fitur - fitur yang terdapat dalam Manajemen User antara lain sebegai berikut:
                                                <ol>
                                                    <li>Tambah User<br/>
                                                        Berfungsi untuk menambahkan user yang dapat mengakses sistem. Data - data yang dibutuhkan untuk menambahkan user adalah sebagai berikut:
                                                        <ol>
                                                            <li>Nama Lengkap</li>
                                                            <li>Username</li>
                                                            <li>Password</li>
                                                            <li>No. Telepon</li>
                                                            <li>Tingkatan(Super Admin, Penilai, Pengamat</li>
                                                        </ol>
                                                        Sebagai tambahan, apabila username yang dimasukkan sudah pernah tercatat di dalam sistem, maka secara default sistem akan menolak masukan.
                                                    </li>
                                                    <li>Info User<br/>
                                                        Berfungsi untuk menampilkan detail user/akun.
                                                    </li>
                                                    <li>Edit User(Edit Akun)<br/>
                                                        Berfungsi untuk mengedit informasi umum dari suatu user/akun. Tidak akan mengubah tingkatan yang telah diset saat pembuatan akun. Apabila ingin mengubah tingkatan, maka suatu user harus dihapus terlebih dahulu baru dibuatkan akun user yang baru.
                                                    </li>
                                                    <li>Hapus User<br/>
                                                        Berfungsi untuk menghapus user. PERHATIAN! Data yang sudah dihapus tidak dapat dikembalikan lagi, maka sebelum data dihapus akan muncul notifikasi dan harap perhatikan baik - baik notifikasi tersebut.
                                                    </li>
                                                    <li>Reset Password<br/>
                                                        Berfungsi untuk mereset password user menjadi sama dengan usernamenya. Hal ini dilakukan apabila satu user lupa password. Aksi ini hanya dapat dilakukan oleh Administrator.
                                                    </li> 
                                                </ol>
                                                    
                                            </li>
                                            <li>Manajemen Role</li>
                                            <li>Daftar Kepanitiaan</li>
                                            <li>Manajemen Pegawai</li>
                                            <li>Manajemen Kelompok</li>
                                            <li>Manajemen Satuan Kerja</li>
                                            <li>Manajemen Level Koordinasi</li>
                                            <li>Konfigurasi Poin</li>
                                            <li>Manajemen Unit RS</li>
                                            <li>Manajemen Penggajian</li>
                                            <li>Manajemen Perpajakan</li>
                                            <li>Manajemen Penilaian</li>
                                            <li>Manajemen Form IKIP/IKUKP</li>
                                        </ol>
                                    </span>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
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



