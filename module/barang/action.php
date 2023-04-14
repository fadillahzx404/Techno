<?php

	include_once("../../function/koneksi.php");
	include_once("../../function/helper.php");

	admin_only("barang", $level);

	$button = isset($_POST['button']) ? $_POST['button'] : $_GET['button'];
	$barang_id = isset($_GET['barang_id']) ? $_GET['barang_id'] : "";

	$nama_barang = isset($_POST['nama_barang']) ? $_POST['nama_barang'] : false;
	$kategori_id = isset($_POST['kategori_id']) ? $_POST['kategori_id'] : false;
	$spesifikasi = isset($_POST['spesifikasi']) ? $_POST['spesifikasi'] : false;
	$status = isset($_POST['status']) ? $_POST['status'] : false;
	$harga = isset($_POST['harga']) ? $_POST['harga'] : false;
	$stok = isset($_POST['stok']) ? $_POST['stok'] : false;
	$link_grab = isset($_POST['link_grab']) ? $_POST['link_grab'] : false;
	$link_grab1 = isset($_POST['link_grab1']) ? $_POST['link_grab1'] : false;
	$link_grab2 = isset($_POST['link_grab2']) ? $_POST['link_grab2'] : false;
	
	$update_gambar = "";
	

	if(!empty($_FILES["file"]["name"])){
	$nama_file = $_FILES["file"]["name"];
	move_uploaded_file($_FILES["file"]["tmp_name"], "../../image/barang/".$nama_file);

	$update_gambar = ", gambar='$nama_file'";
	}

	$update_logo_grab = "";

	if(!empty($_FILES["logo"]["name"])){
	$logo_file = $_FILES["logo"]["name"];
	move_uploaded_file($_FILES["logo"]["tmp_name"], "../../image/logo/".$logo_file);

	$update_logo_grab = ", logo_grab='$logo_file'";
	}

	$update_logo_grab1 = "";

	if(!empty($_FILES["logo1"]["name"])){
	$logo_file1 = $_FILES["logo1"]["name"];
	move_uploaded_file($_FILES["logo1"]["tmp_name"], "../../image/logo1/".$logo_file1);

	$update_logo_grab1 = ", logo_grab1='$logo_file1'";
	}

	$update_logo_grab2 = "";

	if(!empty($_FILES["logo2"]["name"])){
	$logo_file2 = $_FILES["logo2"]["name"];
	move_uploaded_file($_FILES["logo2"]["tmp_name"], "../../image/logo2/".$logo_file2);

	$update_logo_grab2 = ", logo_grab2='$logo_file2'";
	}


	if($button == "Add"){
	mysqli_query($koneksi, "INSERT INTO barang (nama_barang, kategori_id, spesifikasi, gambar, harga, stok, status, link_grab, link_grab1, link_grab2, logo_grab, logo_grab1, logo_grab2) 
							VALUES ('$nama_barang','$kategori_id','$spesifikasi','$nama_file','$harga','$stok', '$status','$link_grab', '$link_grab1', '$link_grab2', '$logo_file','$logo_file1','$logo_file2')");
	}
	else if ($button == "Update"){
		mysqli_query($koneksi, "UPDATE barang SET kategori_id='$kategori_id', nama_barang='$nama_barang', spesifikasi='$spesifikasi', harga='$harga', stok='$stok', status='$status', link_grab='$link_grab', link_grab1='$link_grab1', link_grab2='$link_grab2' $update_gambar $update_logo_grab $update_logo_grab1 $update_logo_grab2 WHERE barang_id='$barang_id'");

	}
	else if ($button == "Delete"){
		mysqli_query($koneksi, "DELETE FROM barang WHERE barang_id='$barang_id'");
	}

	header("location:".BASE_URL."index.php?page=my_profile&module=barang&action=list");