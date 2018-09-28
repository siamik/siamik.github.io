<?php

include "../connect.php";
$nama_matkul = $_POST['nama_matkul'];
$jam_matkul = $_POST['jam_matkul'];
$sks_matkul = $_POST['sks_matkul'];
$dosen = $_POST['dosen'];
$ruang = $_POST['ruang'];

$sql = mysql_query("INSERT INTO `list_matkul`(`nama_list`, `jam_list`, `sks_list`, `id_dosen`, `id_ruang`) VALUES ('$nama_matkul','$jam_matkul','$sks_matkul','$dosen','$ruang')");
if($sql){
 echo "berhasil input";   
    header("location:index.php");
    
}else{
    echo "gagal input";
    
}

?>