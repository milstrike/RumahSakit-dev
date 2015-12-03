<!DOCTYPE html>
<html>
    <head>
        <?php
        include "class/router.php";
        include "class/initTitle.php";
        include "data/basic.php";
        include "data/auth.php";
        //include "";
        ?>
        <script type="text/javascript">
            
            function myFunction()
            {
                alert("Selamat Datang di Sistem Informasi Rumah Sakit - Dev Mode!");
            }
            
        </script>
    </head>
    <body class="bodyBackground" onload="myFunction()">
        
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


