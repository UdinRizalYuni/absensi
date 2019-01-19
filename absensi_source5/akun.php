<!-- Fixed navbar -->
  <div class="container">
        <div   class="navbar-header-">
              <?php if (isset($_SESSION['username'])) { ?>
                <marquee style="color:white;" bgcolor="#00d9ff;" onMouseOver=this.stop() onMouseOut=this.start() direction="up" scrollamount="1">Anda masuk sebagai
				<strong><?=$_SESSION['username']?></marquee></strong>
            <?php  } else {

            }?>

        </div>
    </div>
