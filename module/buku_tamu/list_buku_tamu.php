<?php

    $search = isset($_GET["search"]) ? $_GET["search"] : false;
    
    $where = "";
    $search_url = "";
    if($search){
        $search_url = "&search=$search";
        $where = "WHERE user.nama LIKE '%$search%'";
    }

?>
<div id="frame-tambah">
<div id="left">

        <form action="<?php echo BASE_URL."index.php"; ?>" method="GET">
            
            <input type="hidden" name="page" value="<?php echo $_GET["page"]; ?>" />

            <input type="hidden" name="module" value="<?php echo $_GET["module"]; ?>" />

            <input type="hidden" name="action" value="<?php echo $_GET["action"]; ?>" />

            <input type="text" name="search" value="<?php echo $search; ?>" />
            
            <input type="submit" value="Search" />
        
        </form>
    
    </div>
</div>

<?php
    $no=1;

    $pagination = isset($_GET["pagination"]) ? $_GET["pagination"] : 1;
    $data_per_halaman = 5;
    $mulai_dari = ($pagination-1) * $data_per_halaman;
      
    $queryAdmin = mysqli_query($koneksi, "SELECT * FROM buku_tamu $where LIMIT $mulai_dari, $data_per_halaman");
      
    if(mysqli_num_rows($queryAdmin) == 0)
    {
        echo "<h3>Saat ini belum ada data tamu yang dimasukan</h3>";
    }
    else
    {
        echo "<table class='table-list'>";
          
            echo "<tr class='baris-title'>
                    <th class='kolom-nomor'>No</th>
                    <th class='kiri'>Nama</th>
                    <th class='kiri'>Email</th>
                    <th class='kiri'>Pesan</th>
                 </tr>";
  
            while($rowBukuTamu=mysqli_fetch_array($queryAdmin))
            {
                echo "<tr>
                        <td class='kolom-nomor'>$no</td>
                        <td>$rowBukuTamu[nama]</td>
                        <td>$rowBukuTamu[email]</td>
                        <td>$rowBukuTamu[pesan]</td>
                     </tr>";
              
                $no++;
            }
        echo "</table>";

        $queryHitungUser = mysqli_query($koneksi, "SELECT * FROM buku_tamu $where");
        pagination($queryHitungUser, $data_per_halaman, $pagination, "index.php?page=my_profile&module=buku_tamu&action=list$search_url");
    }
?>