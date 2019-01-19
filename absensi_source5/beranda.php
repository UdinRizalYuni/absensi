<div class="container">
    <div class="row">
        <div class ="col-xs-12">

            <div class="alert alert-info">
			<body><marquee widht="200" height="23"  scrollamount="9">
                <strong><font size="3">Selamat Datang di Sistem Informasi Absensi Pegawai..........!!!!
			Silahkan Login terlebih dahulu untuk mengakses Sistem Lebih lanjut...!!!!
				</font></strong></marquee>
            </div>
        </div>
    <!--colomn kedua-->
    <div class="col-sm-3 col-xs-12">
      <div class="panel panel-default">
        <div class="panel-heading>
                </div>
            </div>
        </div>
        <!--akhir colomn kedua-->
        <div class="col-sm-3 col-xs-12">
          <!--Jika terjadi login error tampilkan pesan ini-->
          <?php if(isset($_GET['error']) ) {?>
          <div class="alert alert-danger">Maaf! Login Gagal, Coba Lagi..</div>
          <?php }?>
          <?php if (isset($_SESSION['username'])) { ?>
          <div class="alert alert-info"> <strong>Welcome
            <?=$_SESSION['nama']?>
          </strong> </div>
          <?php
           } else { ?>
          <div class="panel panel-success">
            <div class="panel-heading">
              <h3 class="panel-title">Masuk Ke Sistem</h3>
            </div>
            <div class="panel-body">
              <form class="form-horizontal" action="proses_login.php" method="post">
                <div class="form-group">
                  <div class="col-sm-12">
                    <input type="text" name="user" class="form-control input-sm"
                                   placeholder="Username" required="" autocomplete="off"/>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-12">
                    <input type="password" name="pwd" class="form-control input-sm"
                                   placeholder="Password" required="" autocomplete="off"/>
                  </div>
                </div>
                <div class="form-group">
                <div class="col-sm-12">
                  <button type="submit" name="login" value="login"
                                        class="btn btn-success btn-block"><span class="fa fa-unlock-alt"></span> Login Ke Sistem </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
    </div>
  </div>
<div class="panel-body">
                     <table id="dtskripsi" class="table table-bordered table-striped table-hover">
                       <thead>
<p align="Right"><img src="img/12345.jpg" width="856" height="240" /></img>
<div class="row">
<div>
</div>
</div>
<p class="label-title" align="center"><strong><font size="5">Absensi Pegawai Sekolah Menengah Atas SMAN 1 Meranti </font></strong></p>                      
<p class="col-sm-12 col-xs-12" align="center">
                            Selamat datang di halaman administrator Sistem Informasi Absensi Pegawai Sekolah Menengah Atas(SMA) <br>
                            Melalui halaman ini dapat dilakukan pengelolaan data <br>
                            Akses menu  Data pada bagian atas sistem untuk pengelolaan data absen.<br>
                            Akses menu User untuk mengelola informasi tentang user yang login.<br><br><br>
<div class="col-sm-3 col-xs-12"><div class="panel panel-default"></div>
</div>
