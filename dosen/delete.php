<?php
include "../connect.php";
if(!empty($_GET['id'])){
$id = $_GET['id'];
    $sql = mysql_query("DELETE FROM list_matkul where id_list='$id'") or die(mysql_error());
    if($sql){
        echo "berhasil delete";
        header("location:lihat.php");
    }else{
        echo "gagal delete";
    }
    
}



?>