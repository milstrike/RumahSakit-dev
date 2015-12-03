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
            <div id='tambahMasaKerja' class='modal hide'' tabindex='-1' role='dialog' aria-labelledby='tambahMasaKerja' aria-hidden='true'>
            <div class='modal-header' style='background-color: #149bdf;'>
            <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
            <h3 id='myModalLabel' style='color: #fff;'>Tambah Masa Kerja</h3>
            </div>
            <div class='modal-body'>
                <form class='form-horizontal' action='' method='post'>
                                <div class='control-group'>
                                    <label class='control-label' for='keteranganMasaKerja'>Lama Tahun*</label>
                                    <div class='controls'>
                                        <input id='keteranganMasaKerja' name='keteranganMasaKerja' type='text' required='required' placeholder='Contoh: 2'>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='poinMasaKerja'>Poin Masa Kerja*</label>
                                    <div class='controls'>
                                        <input id='poinMasaKerja' name='poinMasaKerja' type='text' required='required' placeholder='Contoh: 20'>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='submit'>&nbsp;</label>
                                    <div class='controls'>
                                        <button type='submit' id='submitTambah' name='submitTambah' class='btn btn-primary'><i class='icon-plus-sign icon-white'></i>&nbsp;<strong>Tambah Masa Kerja!</strong></button><br/>
                                    </div>
                                </div>
                                    </form>
            </div>
            </div>";