<div id="kiri">
	
	<?php

	echo kategori($kategori_id);

	?>
	
</div>

<div id="graphcomment"></div>
<script type="text/javascript">

  /* - - - CONFIGURATION VARIABLES - - - */

  // make sure the id is yours
  window.gc_params = {
    graphcomment_id: 'home-techno',
    overlay: {"width":300,"button":{"background":"#1e5474","color":"#ffffff","label":"BUKU TAMU"},"bubble":false},
  };

  /* - - - DON'T EDIT BELOW THIS LINE - - - */

  
  (function() {
    var gc = document.createElement('script'); gc.type = 'text/javascript'; gc.async = true;
    gc.src = 'https://graphcomment.com/js/integration.js?' + Date.now();
    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(gc);
  })();

</script>


<div id="kanan">

	<div id="slides">
		
		<?php 

			$queryBanner = mysqli_query($koneksi, "SELECT * FROM banner WHERE status='on' ORDER BY banner_id DESC LIMIT 3");
			while ($rowBanner=mysqli_fetch_assoc($queryBanner)) {
				echo "<a href='".BASE_URL."$rowBanner[link]'><img src='".BASE_URL."image/slide/$rowBanner[gambar]' /></a>";
			}

		?>

	</div>


	
	<div id="frame-barang">
		
		<ul>
			<?php

			if($kategori_id){

				$kategori_id = "AND barang.kategori_id='$kategori_id'";
			}

				$query = mysqli_query($koneksi, "SELECT barang.*, kategori.kategori FROM barang JOIN kategori 
					ON barang.kategori_id=kategori.kategori_id WHERE barang.status='on' $kategori_id ORDER BY rand() DESC LIMIT 9");


			$no=1;

			while($row=mysqli_fetch_assoc($query)){

				$kategori = strtolower($row["kategori"]);
				$barang = strtolower($row["nama_barang"]);
				$barang = str_replace(" ", "-", $barang);

				$style=false;
				if($no == 3){

					$style="style='margin-right:0px'";
					$no=0;
				}

				echo "<li $style>
				<p class='price'>".rupiah($row['harga'])."</p>
					<a href='".BASE_URL."$row[barang_id]/$kategori/$barang.html'>
					<img src='".BASE_URL."image/barang/$row[gambar]' />
				</a>
				<div class='keterangan-gambar'>
					<p><a href='".BASE_URL."$row[barang_id]/$kategori/$barang.html''>$row[nama_barang]</a></p>
					<span>Stok : $row[stok]</span>
				</div>

				<div class='button-add-cart'>
					<a href='".BASE_URL."tambah_keranjang.php?barang_id=$row[barang_id]'>+ add to cart </a>
				</div>";

				$no++;
			}


			?>

		</ul>

	</div>


</div>