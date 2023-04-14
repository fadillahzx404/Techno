<?php

session_start();

include_once("function/koneksi.php");
include_once("function/helper.php");

$page = isset($_GET['page']) ? $_GET['page'] : false;
$kategori_id = isset($_GET['kategori_id']) ? $_GET['kategori_id'] : false;

$user_id = isset($_SESSION['user_id']) ? $_SESSION['user_id'] : false;
$nama = isset($_SESSION['nama']) ? $_SESSION['nama'] : false;
$level = isset($_SESSION['level']) ? $_SESSION['level'] : false;
$keranjang = isset($_SESSION['keranjang']) ? $_SESSION['keranjang'] : array();
$totalBarang = count($keranjang);



?><!DOCTYPE html>
<html>
<head>
	<title> Techno | barang-barang smart home</title>
	
	<link href="<?php echo BASE_URL."css/fontawesome-free-5.15.3-web/css/all.min.css"; ?>" type="text/css" rel="stylesheet" />
	<link href="<?php echo BASE_URL."css/style.css"; ?>" type="text/css" rel="stylesheet" />
	<link href="<?php echo BASE_URL."css/banner.css"; ?>" type="text/css" rel="stylesheet" />

	<script src="<?php echo BASE_URL."js/jquery-3.6.0.min.js"; ?>"></script>
	<script src="<?php echo BASE_URL."js/slidesjs-SlidesJS-3/source/jquery.slides.min.js"; ?>"></script>
	<script src="<?php echo BASE_URL."js/script.js"; ?>"></script>
	
</script>

	<script>
    $(function() {
      $('#slides').slidesjs({
        height: 350,
        play: { auto : true,
        		interval: 3000
        	},
        navigation: false
      });
    });
  </script>

</head>
<body>

	<div id="container">
		<div id="header">
			<a href="<?php echo BASE_URL."index.php"; ?>" >
				<img src="<?php echo BASE_URL."image/logo2.png"; ?>" />
			</a>

			<div id="menu">
				<div id="user">
					<?php
					if ($user_id) {
						echo "Hi <b>$nama</b>, 
						<a href ='".BASE_URL."index.php?page=my_profile&module=pesanan&action=list'>My Profile</a>
						<a href ='".BASE_URL."logout.php'>Logout</a>";
					}else{
						echo "<a href='".BASE_URL."login.html'>Login</a>
							  <a href='".BASE_URL."register.html'>Register</a>
							  <a href='https://drive.google.com/file/d/1cUxagg67vn6A-gDnFjQKHWxk5iVeV6Oi/view?usp=sharing'>Manual book</a>";
					}

					?>
				</div>
				
				<a href="<?php echo BASE_URL."keranjang.html"; ?>" id="button-keranjang" >
				<img src="<?php echo BASE_URL."image/cart.png"; ?>" />
				<?php
					if($totalBarang != 0){
						echo "<span class='total-barang'>$totalBarang</span>";
					}
				?>
			</a>

			</div>
		</div>
		

		<div id="content">
			<?php
			$filename = "$page.php";
			if(file_exists(($filename))) {
				include_once($filename);
			}else{
				include_once("main.php");
			}
			
			?>
		</div>


		<div id="footer">
			<div id="tentang">
            <p id="set">Tentang</p>
				<p id="justify-content">Home-techno adalah penyedia produk unggulan dari beberapa merk smarthome di indonesia.</p>
			</div>
			<div id="kontak_admin">
			<h6><p id="set">Kontak Admin</p></h6>
				<div id="nama_admin">
					<p id="nama">FADILLAH WAHYU HERYANTO
						<a id="whatsapp1" href="https://api.whatsapp.com/send?phone=6281387077566">Chat whatsapp</a></p>
					<p id="nama">MUHAMMAD RIANSYAH
						<a id="whatsapp2" href="https://api.whatsapp.com/send?phone=6281280525607">Chat whatsapp</a></p>
					<p id=nama">MUHAMAD IRFAN FADHILAH
						<a id="whatsapp3" href="https://api.whatsapp.com/send?phone=6287885238699">Chat whatsapp</a></p>
					<p id="nama">MUHAMMAD BERYL B.A
						<a id="whatsapp4" href="https://api.whatsapp.com/send?phone=6282213009233">Chat whatsapp</a></p>
				</div>
			</div>
			<div id="Media Sosial">
			<p id="set">Media sosial</p>
				<div id="sot">
				<a href="https://www.instagram.com/home_techno.id/"><p id="instasot">Instagram</p>
				<img id="logoinsta" src="<?php echo BASE_URL."image/logoinsta.png"; ?>" />
				</a>
				</div>
				<div id="sot1">
				<a href = "mailto: support@home-techno.web.id"><p id="mailsot1">Send Email</p>
				<img id="logomail" src="<?php echo BASE_URL."image/logomail.png"; ?>" />
				</a>
				</div>
			</div>
			<div id="copyright">CoprightCopyright &copy; 2021 All Rights Reserved by
			<a id="copyright" href="https://home-techno.web.id/">Home-techno.web.id</a>
			</div>

		</div>	


</body>
