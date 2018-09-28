<?php

include "../connect.php";
$user = $_GET['username'];
$pass = $_GET['password'];
$level = $_GET['level'];
$sql = mysql_query("INSERT INTO login (`username`,`password`,`level`) values('$user','$pass','$level')") or die(mysql_error());
if($sql){
 echo "berhasil";   
    header("location:index.php");
}else{
    echo "gagal";
}

?>