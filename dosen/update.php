<?php

include_once "../connect.php";
$id_list=$_POST['id_list'];
$nama_matkul = $_POST['nama_matkul'];
$jam_matkul = $_POST['jam_matkul'];
$sks_matkul = $_POST['sks_matkul'];
$dosen = $_POST['dosen'];
$ruang = $_POST['ruang'];
$sql = mysql_query("UPDATE `list_matkul` SET `nama_list`='$nama_matkul', `jam_list`='$jam_matkul', `sks_list`='$sks_matkul',`id_dosen`='$dosen',`id_ruang`='$ruang' where `id_list`='$id_list'");
if($sql){
 echo "berhasil update";   
   header("location:lihat.php");
}else{
    echo "gagal update";
    
}
?>