<?php

	$barang_id = isset($_GET['barang_id']) ? $_GET['barang_id'] : false;

	$nama_barang = "";
	$kategori_id = "";
	$spesifikasi = "";
	$gambar = "";
	$stok = "";
	$harga = "";
	$status = "";
	$keterangan_gambar = "";
	$link_grab = "";
	$link_grab1 = "";
	$link_grab2 = "";
	$logo_grab = "";
	$logo_grab1 = "";
	$logo_grab2 = "";
	$keterangan_logo_grab = "";
	$button = "Add";

	if($barang_id){
		$query = mysqli_query($koneksi, "SELECT * FROM barang WHERE barang_id='$barang_id'");
		$row = mysqli_fetch_assoc($query);

		$nama_barang = $row['nama_barang'];
		$kategori_id = $row['kategori_id'];
		$spesifikasi = $row['spesifikasi'];
		$gambar = $row['gambar'];
		$harga = $row['harga'];
		$stok = $row['stok'];
		$link_grab = $row['link_grab'];
		$link_grab1 = $row['link_grab1'];
		$link_grab2 = $row['link_grab2'];
		$logo_grab = $row['logo_grab'];
		$logo_grab1 = $row['logo_grab1'];
		$logo_grab2 = $row['logo_grab2'];
		$status = $row['status'];
		$button = "Update";

		$keterangan_gambar = "(Klik pilih gambar jika ingin mengubah gambar disamping)";
		$gambar = "<img src='".BASE_URL."image/barang/$gambar' style = 'width: 200px;vertical-align: middle;' />";
		$keterangan_logo_grab = "(Klik pilih gambar jika ingin mengubah logo grab disamping)";
		$keterangan_logo_grab1 = "(Klik pilih gambar jika ingin mengubah logo grab disamping)";
		$keterangan_logo_grab2 = "(Klik pilih gambar jika ingin mengubah logo grab disamping)";
		$logo_grab = "<img src='".BASE_URL."image/logo/$logo_grab' style = 'width: 80px;vertical-align: middle;' />";
		$logo_grab1 = "<img src='".BASE_URL."image/logo/$logo_grab1' style = 'width: 80px;vertical-align: middle;' />";
		$logo_grab2 = "<img src='".BASE_URL."image/logo/$logo_grab2' style = 'width: 80px;vertical-align: middle;' />";
	}

?>

<script src = "<?php echo BASE_URL."js/ckeditor/ckeditor.js"; ?>"></script>

<form action="<?php echo BASE_URL."module/barang/action.php?barang_id=$barang_id"; ?>" method="POST" enctype="multipart/form-data">

	<div class="element-form">
	<label>Kategori</label>
	<span>
		<select name="kategori_id">
			<?php
				$query = mysqli_query($koneksi, "SELECT kategori_id, kategori FROM kategori WHERE status='on' ORDER BY kategori ASC");
				while ($row=mysqli_fetch_assoc($query)) {
					if($kategori_id == $row['kategori_id']){
					echo "<option value='$row[kategori_id]'selected 'true'>$row[kategori]</option>";
				}else{
				echo "<option value='$row[kategori_id]'>$row[kategori]</option>";
				}
			}
			?>
		</select>
	</span>
	</div>

	<div class="element-form">
	<label>Nama Barang</label>
	<span><input type="text" name="nama_barang" value="<?php echo $nama_barang; ?>" /></span>
	</div>

	<div style="margin-bottom: 10px">
	<label style="font-weight: bold">Spesifikasi</label>
	<span><textarea name="spesifikasi" id="editor"><?php echo $spesifikasi; ?></textarea></span>
	</div>
	
	<div class="element-form">
	<label>Stok</label>
	<span><input type="text" name="stok" value="<?php echo $stok; ?>" /></span>
	</div>

	<div class="element-form">
	<label>Harga</label>
	<span><input type="text" name="harga" value="<?php echo $harga; ?>" /></span>
	</div>

	<div class="element-form">
	<label>Gambar <?php echo $keterangan_gambar; ?> </label>
	<span>
	<input type="file" name="file" /><?php echo $gambar; ?>
	</span>
	</div>

	<div class="element-form">
	<label>Link Grabing</label>
	<span>
	<input type="text" name="link_grab" value="<?php echo $link_grab; ?>" />
	<label style="padding-top: 1em;" >Logo grab<?php echo $keterangan_logo_grab; ?> </label>
	<input type="file" name="logo" /><?php echo $logo_grab; ?>
	</span>
	</div>

	<div class="element-form">
	<label>Link Grabing1</label>
	<span>
	<input type="text" name="link_grab1" value="<?php echo $link_grab1; ?>" />
	<label style="padding-top: 1em;" >Logo grab<?php echo $keterangan_logo_grab1; ?> </label>
	<input type="file" name="logo1" /><?php echo $logo_grab1; ?>
	</span>
	</div>

	<div class="element-form">
	<label>Link Grabing2</label>
	<span>
	<input type="text" name="link_grab2" value="<?php echo $link_grab2; ?>" />
	<label style="padding-top: 1em;" >Logo grab<?php echo $keterangan_logo_grab2; ?> </label>
	<input type="file" name="logo2" /><?php echo $logo_grab2; ?>
	</span>
	</div>


	<div class="element-form">
	<label>Status</label>
	<span>
	<input type="radio" name="status" value="on" <?php if($status == "on"){ echo "checked='true'"; } ?> /> On
	<input type="radio" name="status" value="off" <?php if($status == "off"){ echo "checked='true'"; } ?> /> Off
	</span>
	</div>

	<div class="element-form">
	<span><input type="submit" name="button" value="<?php echo $button; ?>" /></span>
	</div>

</form>

<script>
var roxyFileman = 'js/ckeditor/fileman/index.html'; 
	$(function(){
   CKEDITOR.replace( 'editor',{filebrowserBrowseUrl:roxyFileman,
                                filebrowserImageBrowseUrl:roxyFileman+'?type=image',
                                removeDialogTabs: 'link:upload;image:upload'}); 
});
 </script>
</script>