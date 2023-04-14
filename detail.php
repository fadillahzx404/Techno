<div id="kiri">

<?php

	echo kategori($kategori_id);

	?>

</div>

<div id="kanan">

<?php

$barang_id = $_GET['barang_id'];

$query = mysqli_query($koneksi, "SELECT * FROM barang WHERE barang_id='$barang_id' AND status='on'");
$row = mysqli_fetch_assoc($query);


echo "<div id='detail-barang'>
			<h2>$row[nama_barang]</h2>
		<div id='frame-gambar'>
			<img src='".BASE_URL."image/barang/$row[gambar]' />
		</div>

		<div id='frame-harga'>
			<span>".rupiah($row['harga'])."</span>
			<a href='".BASE_URL."tambah_keranjang.php?barang_id=$row[barang_id]'>+ add to cart </a>
		</div>

		<div id='keterangan'>
			<b>Keterangan : </b> $row[spesifikasi]
		</div>

		<div id ='link_grab'>
			<b>Link Pembelian Lainya :</b>
			<a href=$row[link_grab]>
			<img src='".BASE_URL."image/logo/$row[logo_grab]' style= width:100px; />
			</a>
			<a href=$row[link_grab1]>
			<img src='".BASE_URL."image/logo1/$row[logo_grab1]' style= width:100px; />
			</a>
			<a href=$row[link_grab2]>
			<img src='".BASE_URL."image/logo2/$row[logo_grab2]' style= width:90px; />
			</a>
			<br>
			<br>
			<b>Note * Jika link tidak dapat dibuka, silakan pilih link lainya.</b>
		</div>
		</div>";


?>

</div>