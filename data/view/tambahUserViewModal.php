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


        echo 
            "
            <div id='pilihRole' class='modal hide'' tabindex='-1' role='dialog' aria-labelledby='tambah' aria-hidden='true'>
            <div class='modal-header' style='background-color: #149bdf;'>
            <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
            <h3 id='myModalLabel' style='color: #fff;'>Pilih Role</h3>
            </div>
            <div class='modal-body'>
                <form class='form-horizontal' action='' method='post'>
                                Pilih jenis role untuk melanjutkan, selanjutnya Anda akan dibawa menuju form pembuatan user baru.<br/>
                                Pilihan Role:<br/>
                                        <select id='id' name='id' class='span8' required='required'>";
                                            include "../../../data/opt/roleList.php";
                                       echo " </select><br/>
                                           
                                <p align='center'>
                                    <br/>
                                <button type='submit' id='submitAkun' name='submitAkun' class='btn btn-primary'><i class='icon-chevron-right icon-white'></i>&nbsp;<strong>Lanjutkan</strong></button>
                                </p>

                </form>
            </div>
            </div>";