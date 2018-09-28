
<table class="table table-consended">
    <thead><td>NIM</td><td>Nama</td><td>Tempat Lahir</td><td>Tanggal Lahir</td></thead>
<?php

$user = $_SESSION['username'];
$sql = mysql_query("SELECT * FROM mahasiswa where nim_mhs='$user'");
while($rows = mysql_fetch_array($sql)){
  echo  "<tr><td>".$rows['nim_mhs']."</td><td>".
    $rows['nama_mhs']."</td><td>".
    $rows['tempat_mhs']."</td><td>".
    $rows['tgl_mhs']."</td><td>";
}
?>
    
</table>