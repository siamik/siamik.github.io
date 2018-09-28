<table border="1">

<?php

include "../connect.php";
$no=1;
$sql = mysql_query("SELECT *
FROM list_matkul, dosen, ruang
WHERE list_matkul.id_dosen = dosen.id_dosen
AND list_matkul.id_ruang = ruang.id_rg");
while($row=mysql_fetch_array($sql)){
    ?>
<tr><td><?php echo $no ?></td><td><?php echo $row['nama_list']; ?></td><td><?php echo $row['sks_list']; ?></td><td><?php echo $row['semester_list']; ?></td><td><?php echo $row['nama_dosen']; ?></td><td><?php echo $row['nomer_rg']; ?></td><td><a href="<?php echo "delete.php?id=".$row['id_list']; ?>"><button>delete</button></a></td><td><a href="<?php echo "form_update.php?id=".$row['id_list']; ?>"><button>update</button></a></td></tr>

<?php
$no++;  
}

?>

    
    </table>

<a href="index.php"><button>kembali</button></a>