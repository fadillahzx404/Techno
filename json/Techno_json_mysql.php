<?php

header("Content-type:application/json");

//konesksi ke database
$koneksi = mysqli_connect("localhost", "root", "", "techno");

//menampilkan data dari database, table user
$sql = "SELECT * FROM kota";
$result = mysqli_query($koneksi, $sql);

//membuat array
while ($row = mysqli_fetch_assoc($result)) {  
	    $kota[] = $row;  
}   

echo json_encode($kota,JSON_PRETTY_PRINT);

//tutup koneksi ke database
mysqli_close($koneksi);
?>