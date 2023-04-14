<?php
// Membuka file JSON
$file = file_get_contents("http://localhost/techno/json/techno_json_mysql.php");
$json = json_decode($file);

foreach($json as $key) {  	      
    foreach ($key as $keyword => $value) {  
        echo $keyword . ' : ' . $value . '<br />';  
    }  
}  
    
?>