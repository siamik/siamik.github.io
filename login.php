<?php
include "connect.php";

$user = $_POST['username'];
$pass = $_POST['password'];
$level = $_POST['level'];

$sql = mysql_query("SELECT * FROM login where username='$user' and password='$pass' and level='$level'");
session_start();
if(mysql_num_rows($sql)>0){
    $_SESSION['username']=$user;
    $_SESSION['password']=$pass;
    switch($level){
        case 'admin' : header("location:admin/index.php"); break;
        case 'dosen' : header("location:dosen/index.php"); break;
        case 'mahasiswa' : header("location:mahasiswa/dasboard.php"); break;
        default : echo "gagal";break;
    }
}else{
    echo $user.$pass.$level;
   // header("location:index.php");
}

?>