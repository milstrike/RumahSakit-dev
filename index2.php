<!DOCTYPE html>
<html>
    <head>
        <?php
        include "class/router.php";
        include "class/initTitle.php";
        include "class/init.php";
        include "data/basic.php";
        include "data/auth.php";
        
        $query = mysql("u6799722_rumahsakit_dev", "select * from migrasi");
        $row = mysql_fetch_array($query);
        $dataProses = $row['proses'];
        $dataFiles = $row['files'];
        $dataError = $row['error'];
        
        ?>
    </head>
    <body class="bodyBackground">
        
        
        <div id="myModal" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class='modal-header' style='background-color: #7e3f9d;'>
            <h3 id='myModalLabel' style='color: #fff;'>Proses Migrasi</h3>
            </div>
            <div class='modal-body'>
                <div class="progress">
                    <div class="bar" style="width: <?php echo $dataProses;?>%;"></div>
                </div>
                <div><strong>Proses:</strong> <?php echo $dataProses;?> dari 100</div>
                <div>
                    <p align="justify">
                        Sistem Informasi Pegawai: Rumah Sakit (Technical Preview) sedang dalam proses migrasi. Waktu migrasi memerlukan waktu antara 1(satu) sampai dengan 2(dua) hari tergantung dari banyaknya konfigurasi dan traffic. Dalam proses migrasi, aktivitas sistem yang terjadi adalah sebagai berikut:
                    </p>
                    <ol>
                        <li>Merge Data Aplikasi Lama dengan Data Aplikasi yang baru.</li>
                        <li>Konfigurasi Sistem untuk Base yang baru.</li>
                       <li>Pemindahan dan sinkronisasi database baru dengan database yang lama</li>
                        <li>Aktivasi modul - modul</li>    
                    </ol>
                    <p align="justify">
                    	Oleh karena itu, kami mengharapkan kesabaran Anda untuk menunggu proses ini berakhir. Terima Kasih. 
                    </p> 
                    <p style="padding-top:20px; color: green;">
                    	<strong><?php echo $dataFiles;?> File(s)</strong> configured so far.
                    </p>
		    <p style="color: red;">
                    	<strong><?php echo $dataError;?> Error(s)</strong> found. Check Error log.
                    </p>
                </div>
            </div>
            </div>
        
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
    
    <!-- Content -->
    <div class="container" style="padding-top:100px;">
        <div class="row-fluid">
            <div class="span12">
                <div class="row-fluid">
                    <div class="span3">
                    
                    </div>
                    <div class="span6 boxMain">
                        <div class="container-fluid boxA" style="padding: 10px;">
                            <div class="boxB">
                                <strong>Sistem Login</strong>
                            </div>
                            <div class="contA">
                                Masukkan username dan password Anda untuk dapat mengakses sistem.
                            </div>
                            <div class="container-fluid">
                                <div class="row-fluid">
                                    <div class="span8">
                                        <form action="" method="post" style="padding-top:30px;">
                                            <input class="span10" type="text" id="username" name="username" placeholder="username" style="height: 28px;"><br/>
                                            <input class="span10" type="password" id="password" name="password" placeholder="password" style="height: 28px;"><br/>
                                            <button type="submit" id="submit" name="submit" class="btn btn-primary"><i class="icon-lock icon-white"></i>&nbsp;<strong>Login</strong></button><br/>
                                            <span class="spanErrorA"><?php echo $error; ?></span>
                                        </form>

                                    </div>
                                    <div class="span4">
                                        <div class="textA">
                                            <?php BasicConfiguration(2); ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr class="lineClass" noshade/>
                        </div>
                    </div>
                    <div class="span3">
                    
                    </div>    
                </div>
            </div>
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
    
        <?php
        include "class/initjs.php";
        ?>
    </body>
    
</html>



