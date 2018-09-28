<?php

$id = $_GET['id'];
$sql = mysql_query("DELETE FROM login where id_login='$id'") or die(mysql_error());
if($sql){
    echo "berhasil delete";
    header("location:index.php");
}else{
    echo "gagal delete";
}
?>