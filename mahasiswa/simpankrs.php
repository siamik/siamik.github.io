<?php
include "../connect.php";
$id_matkul = $_GET['matkul'];
$sql = mysql_query("SELECT * from temp_matakuliah where id_temp='$id_matkul'") or die(mysql_error());
$baris=mysql_fetch_array($sql);
$sql2 = mysql_query("INSERT INTO `matakuliah2`(`nama_temp`, `jam_temp`, `sks_matkul`, `semester_temp`, `id_rg`, `id_dosen`, `id_mhs`) VALUES ('$baris[1]','$baris[2]','$baris[3]','$baris[4]','$baris[5]','$baris[6]','$baris[7]')") or die(mysql_error());
if($sql2){
    echo "BERHASIL";
    header("location:dasboard.php?module=krs");
}else{
    echo "GAGAL";
    
}
?>