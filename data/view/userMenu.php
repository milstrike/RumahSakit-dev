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

$level = $_SESSION['role'];

switch($level){
    
    case 1:
        landing();
        break;
    
    case 2:
        takeoff();
        break;
    
    case 4:
        takeoff();
        break;
    
    case 6:
        takeoff();
        break;
    
    case 8:
        takeoff();
        break;
    
    case 3:
        offset();
        break;
    
    case 5:
        offset();
        break;
    
    case 7:
        offset();
        break;
    
    case 9:
        offset();
        break;
}


function offset(){
                           echo '
                               <div class="alert alert-info fade in"><button type="button" class="close" data-dismiss="alert">&times;</button>Anda dalam Mode '.$_SESSION['levelDescription'].'</div>
                               <ul class="breadcrumb">
                                    <li class="active">Beranda</li>
                                </ul>
                                <div class="span3">
                                <legend>Struktural </legend>
                                <table width="100%" border="0" cellpadding="5" cellspacing="5">
                                    <tr>
                                        <td widtch="20%" class="firstColumn">
                                            <img src="../../assets/icon-uses/nama.png" alt="icon-pegawai"/>
                                        </td>
                                        <td width="80%" class="anotherColumn">
                                            <a href="../apps/user_admin/" title="Lihat Struktural"><strong>Lihat Struktural</strong></a>
                                        </td>
                                    </tr>
                                </table>
                                
                                <br/>
                                </div> 
                                 
                                <div class="span4">
                                <legend>Kepegawaian</legend>
                                <table width="100%" border="0" cellpadding="5" cellspacing="5">
                                   <tr>
                                        <td widtch="20%" class="firstColumn">
                                            <img src="../../assets/icon-uses/pegawai.png" alt="icon-pegawai"/>
                                        </td>
                                        <td width="80%" class="anotherColumn">
                                            <a href="../apps/pegawai_ternilai/" title="Manajemen Pegawai Ternilai"><strong>Manajemen Pegawai Ternilai</strong></a>
                                        </td>
                                    </tr>
                                </table>    
                                </div>
                                
                                <div class="span4">
                                    <legend>Penilaian '.$_SESSION['levelDescription'].'</legend>
                               <table width="100%" border="0" cellpadding="5" cellspacing="5">
                                    <tr>
                                        <td widtch="20%" class="firstColumn">
                                            <img src="../../assets/icon-uses/laporan.png" alt="icon-laporan"/>
                                        </td>
                                        <td width="80%" class="anotherColumn">
                                            <a href="../apps/manajemen_penilaian_evaluator/" title="Manajemen Laporan Penilaian"><strong>Penilaian '.$_SESSION['levelDescription'].'</strong></a>
                                        </td>
                                    </tr>
                                </table>
                                </div>
                            ';
}



function takeoff(){
                           echo '
                               <div class="alert alert-info fade in"><button type="button" class="close" data-dismiss="alert">&times;</button>Anda dalam Mode '.$_SESSION['levelDescription'].'</div>
                               <ul class="breadcrumb">
                                    <li class="active">Beranda</li>
                                </ul>
                                <div class="span3">
                                <legend>Struktural </legend>
                                <table width="100%" border="0" cellpadding="5" cellspacing="5">
                                    <tr>
                                        <td widtch="20%" class="firstColumn">
                                            <img src="../../assets/icon-uses/nama.png" alt="icon-pegawai"/>
                                        </td>
                                        <td width="80%" class="anotherColumn">
                                            <a href="../apps/user_admin/" title="Lihat Struktural"><strong>Lihat Struktural</strong></a>
                                        </td>
                                    </tr>
                                </table>
                                
                                <br/>
                                </div> 
                                 
                                <div class="span4">
                                <legend>Pegawai Ternilai</legend>
                                <table width="100%" border="0" cellpadding="5" cellspacing="5">
                                   <tr>
                                        <td widtch="20%" class="firstColumn">
                                            <img src="../../assets/icon-uses/pegawai.png" alt="icon-pegawai"/>
                                        </td>
                                        <td width="80%" class="anotherColumn">
                                            <a href="../apps/pegawai_ternilai/" title="Manajemen Pegawai Ternilai"><strong>Manajemen Pegawai Ternilai</strong></a>
                                        </td>
                                    </tr>
                                </table>    
                                </div>
                                
                                <div class="span4">
                                    <legend>Penilaian '.$_SESSION['levelDescription'].'</legend>
                               <table width="100%" border="0" cellpadding="5" cellspacing="5">
                                    <tr>
                                        <td widtch="20%" class="firstColumn">
                                            <img src="../../assets/icon-uses/laporan.png" alt="icon-laporan"/>
                                        </td>
                                        <td width="80%" class="anotherColumn">
                                            <a href="../apps/manajemen_penilaian_evaluator/" title="Manajemen Laporan Penilaian"><strong>Penilaian '.$_SESSION['levelDescription'].'</strong></a>
                                        </td>
                                    </tr>
                                </table>
                                </div>
                            ';
}


function landing(){
    echo '<ul class="breadcrumb">
                                    <li class="active">Beranda</li>
                                </ul>
                            <div class="span3">
                                <legend>Administrasi</legend>
                                <table width="100%" border="0" cellpadding="5" cellspacing="5">
                                <tr>
                                    <td widtch="20%" class="firstColumn">
                                        <img src="../../assets/icon-uses/nama.png" alt="icon-user"/>
                                    </td>
                                    <td width="80%" class="anotherColumn">
                                        <a href="../apps/manajemen_user/" title="Manajemen user yang menggunakan sistem">Manajemen User</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td widtch="20%" class="firstColumn">
                                        <img src="../../assets/icon-uses/tool.png" alt="icon-konfigurasi"/>
                                    </td>
                                    <td width="80%" class="anotherColumn">
                                        <a href="../apps/konfigurasi_sistem/" title="Konfigurasi sistem secara keseluruhan">Konfigurasi Sistem</a>
                                    </td>
                                </tr>
                               <!--  <tr>
                                    <td widtch="20%" class="firstColumn">
                                        <img src="../../assets/icon-uses/maintenance.png" alt="icon-maintenance"/>
                                    </td>
                                    <td width="80%" class="anotherColumn">
                                        <a href="../apps/maintenance_sistem/" title="Mengubah sistem ke mode maintenance">Maintenance Sistem</a>
                                    </td>
                                </tr> -->
                                <tr>
                                    <td widtch="20%" class="firstColumn">
                                        <img src="../../assets/icon-uses/bantuan.png" alt="icon-bantuan"/>
                                    </td>
                                    <td width="80%" class="anotherColumn">
                                        <a href="../apps/bantuan_sistem/" title="Dapatkan bantuan sistem di sini.">Bantuan Sistem</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td widtch="20%" class="firstColumn">
                                        <img src="../../assets/icon-uses/bantuan.png" alt="icon-bantuan"/>
                                    </td>
                                    <td width="80%" class="anotherColumn">
                                        <a href="../apps/change_log/" title="Dapatkan Daftar Perubahan di sini.">Daftar Perubahan dan Pengembangan</a>
                                    </td>
                                </tr>
                            </table>
                            <br/>
                            
                            <legend>Kepanitiaan</legend>
                                <table width="100%" border="0" cellpadding="5" cellspacing="5">
                                <tr>
                                    <td widtch="20%" class="firstColumn">
                                        <img src="../../assets/icon-uses/kepanitiaan.png" alt="icon-user"/>
                                    </td>
                                    <td width="80%" class="anotherColumn">
                                        <a href="../apps/daftar_kepanitiaan/" title="Manajemen user yang menggunakan sistem">Daftar Kepanitiaan</a>
                                    </td>
                                </tr>
                            </table>
                                
                            </div>
                            
                            <div class="span4">
                                <legend>Kepegawaian</legend>
                                <table width="100%" border="0" cellpadding="5" cellspacing="5">
                                    <tr>
                                        <td widtch="20%" class="firstColumn">
                                            <img src="../../assets/icon-uses/plus.png" alt="icon-tambah"/>
                                        </td>
                                        <td width="80%" class="anotherColumn">
                                            <a href="../apps/tambah_pegawai/" title="Tambah Pegawai yang terdaftar di institusi">Tambah Pegawai...</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td widtch="20%" class="firstColumn">
                                            <img src="../../assets/icon-uses/pegawai.png" alt="icon-pegawai"/>
                                        </td>
                                        <td width="80%" class="anotherColumn">
                                            <a href="../apps/manajemen_pegawai/" title="Manajemen Pegawai yang terdaftar di institusi">Manajemen Pegawai</a>
                                        </td>
                                    </tr>
                                    <tr>
                                    <td widtch="20%" class="firstColumn">
                                        <img src="../../assets/icon-uses/group.png" alt="icon-user"/>
                                    </td>
                                    <td width="80%" class="anotherColumn">
                                        <a href="../apps/manajemen_kelompok/" title="Manajemen kelompok">Manajemen Kelompok</a>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td widtch="20%" class="firstColumn">
                                        <img src="../../assets/icon-uses/satker.png" alt="icon-user"/>
                                    </td>
                                    <td width="80%" class="anotherColumn">
                                        <a href="../apps/satuan_kerja/" title="Manajemen Satuan Kerja">Manajemen Satuan Kerja</a>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td widtch="20%" class="firstColumn">
                                        <img src="../../assets/icon-uses/bawahan.png" alt="icon-user"/>
                                    </td>
                                    <td width="80%" class="anotherColumn">
                                        <a href="../apps/koordinasi/" title="Manajemen Koordinasi">Manajemen Level Koordinasi</a>
                                    </td>
                                    </tr>
                                </table>
                                
                                <br/>
                                <legend>Penilaian</legend>
                                <table width="100%" border="0" cellpadding="5" cellspacing="5">
                                    <tr>
                                        <td widtch="20%" class="firstColumn">
                                            <img src="../../assets/icon-uses/poin.png" alt="icon-poin"/>
                                        </td>
                                        <td width="80%" class="anotherColumn">
                                            <a href="../apps/konfigurasi_poin/" title="Konfigurasi poin poin penilaian pegawai">Konfigurasi Poin</a>
                                        </td>
                                    </tr>
                                  <!--  <tr>
                                        <td widtch="20%" class="firstColumn">
                                            <img src="../../assets/icon-uses/bobot.png" alt="icon-bobot"/>
                                        </td>
                                        <td width="80%" class="anotherColumn">
                                            <a href="../apps/konfigurasi_bobot/" title="Manajemen bobot bobot nilai">Konfigurasi Bobot</a>
                                        </td>
                                    </tr> -->
                                    <tr>
                                        <td widtch="20%" class="firstColumn">
                                            <img src="../../assets/icon-uses/ikip.png" alt="icon-ikip"/>
                                        </td>
                                        <td width="80%" class="anotherColumn">
                                            <a href="../apps/form_ikip/" title="Manajemen Indikator Kinerja Individual Pegawai(IKIP)">Form IKIP</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td widtch="20%" class="firstColumn">
                                            <img src="../../assets/icon-uses/ikiku.png" alt="icon-ikiku"/>
                                        </td>
                                        <td width="80%" class="anotherColumn">
                                            <a href="../apps/form_ikukp/" title="Manajemen Indikator Kinerja Unit Kerja Pegawai(IKUKP)">Form IKUKP</a>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            
                            <div class="span4">
                                <legend>Rumah Sakit</legend>
                                <table width="100%" border="0" cellpadding="5" cellspacing="5">
                                    <tr>
                                        <td widtch="20%" class="firstColumn">
                                            <img src="../../assets/icon-uses/bagian.png" alt="icon-bagian"/>
                                        </td>
                                        <td width="80%" class="anotherColumn">
                                            <a href="../apps/manajemen_rs/" title="Manajemen Laporan Penggajian">Manajemen Unit RS</a>
                                        </td>
                                    </tr>
                                </table>
                                <legend>Keuangan</legend>
                                <table width="100%" border="0" cellpadding="5" cellspacing="5">
                                    <tr>
                                        <td widtch="20%" class="firstColumn">
                                            <img src="../../assets/icon-uses/masterGaji.png" alt="icon-master-gaji"/>
                                        </td>
                                        <td width="80%" class="anotherColumn">
                                            <a href="../apps/manajemen_pembagian_gaji/" title="Manajemen Penggajian">Manajemen Penggajian</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td widtch="20%" class="firstColumn">
                                            <img src="../../assets/icon-uses/gaji.png" alt="icon-gaji"/>
                                        </td>
                                        <td width="80%" class="anotherColumn">
                                            <a href="../apps/manajemen_gaji_pokok/" title="Manajemen Gaji Pokok">Manajemen Gaji Pokok</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td widtch="20%" class="firstColumn">
                                            <img src="../../assets/icon-uses/pajak.png" alt="icon-pajak"/>
                                        </td>
                                        <td width="80%" class="anotherColumn">
                                            <a href="../apps/manajemen_perpajakan/" title="Manajemen Perpajakan">Manajemen Perpajakan</a>
                                        </td>
                                    </tr>
                                </table>
                                <br/>
                                <legend>Manajemen Laporan</legend>
                                <table width="100%" border="0" cellpadding="5" cellspacing="5">
                                    <tr>
                                        <td widtch="20%" class="firstColumn">
                                            <img src="../../assets/icon-uses/laporan.png" alt="icon-laporan"/>
                                        </td>
                                        <td width="80%" class="anotherColumn">
                                            <a href="../apps/manajemen_penilaian/" title="Manajemen Laporan Penilaian">Manajemen Laporan Penilaian</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td widtch="20%" class="firstColumn">
                                            <img src="../../assets/icon-uses/laporan.png" alt="icon-laporan"/>
                                        </td>
                                        <td width="80%" class="anotherColumn">
                                            <a href="../apps/manajemen_penggajian/" title="Manajemen Laporan Penggajian">Manajemen Laporan Penggajian</a>
                                        </td>
                                    </tr>
                                </table>
                            </div>';
}