<html>
</head>
	<title>Buku</title>
	<style type="text/css">
		body { font-family:tahoma; font-size:12px; }
		#buku_tamu { width: auto; height: auto; padding:5px 25px; margin:15px 3px; border: double; }
		input[type="text"] { width: 300px; }
		input[type="text"], textarea { padding:5px; margin:2px 0px; border: 1px solid #777; }
		input[type="submit"], input[type="reset"] { padding: 5px 20px; margin:2px 0px; font-weight:bold; cursor:pointer; }
		#error { border:1px solid red; background:#ffc0c0; padding:5px; }
	</style>
</head>
<body>

	<div id="buku_tamu">
		<h1>Buku Tamu</h1>
		<p>Silahkan isi buku tamu di bawah ini untuk meninggalkan pesan Anda!</p>

		<?php


		if(@$_POST['go']){
           
            $server = "localhost";
            $username = "hometec1_root";
            $password = "heryanto225";
            $database = "hometec1_technohome";
        
            $koneksi = mysqli_connect($server, $username, $password, $database) or die("koneksi ke database gagal");

			$nama	= htmlentities(mysqli_real_escape_string($koneksi, $_POST['nama']));
			$email	= htmlentities(mysqli_real_escape_string($koneksi, $_POST['email']));
			$pesan	= htmlentities(mysqli_real_escape_string($koneksi, $_POST['pesan']));
			

			if($nama && $email && $pesan){
				if(filter_var($email, FILTER_VALIDATE_EMAIL)){
					$in = mysqli_query($koneksi, "INSERT INTO buku_tamu VALUES(NULL, '$nama', '$email', '$pesan')");
					if($in){
						echo '<script language="javascript">alert("Terima kasih, data Anda berhasil disimpan"); "location: "BASE_URL.index.php";</script>';
					}else{
						echo '<div id="error">Uppsss...! Query ke database gagal dilakukan!</div>';
					}
				}else{
					echo '<div id="error">Uppsss...! Email Anda tidak valid!</div>';
				}
			}else{
				echo '<div id="error">Uppsss...! Lengkapi form!</div>';
			}

		}
		?>
		

		<form action="" method="post">
			<p><b>Nama Lengkap :</b><br><input type="text" name="nama" placeholder="Isi nama kamu" required /></p>
			<p><b>Email :</b><br><input type="text" name="email" placeholder="user@weshop.com" required /></p>
			<p><b>Pesan :</b><br><textarea name="pesan" rows="5" cols="95" placeholder="Hai, saya sangat senang bisa berkunjung di website ini !!!" required></textarea></p>
			<p><input type="submit" name="go" value="Kirim" /> <input type="reset" name="del" value="Hapus" /></p>
			<a href="https://home-techno.web.id/">Kembali Ke Halaman Website</a>
		</form>
	</div>

</body>
</html>