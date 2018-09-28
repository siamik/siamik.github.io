<!Doctype html>
<?php
include "pilih.php";
$pilih = new pilih();
?>
<html lang=en><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dasboard</title>
<link href="../css/dasboard.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap-responsive.css">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap.css">
<style>
a:visited{
 text-decoration:none;   
}
a:link{
 text-decoration:none;   
}
a:hover{
 text-decoration:none;   
}
a:active{
 text-decoration:none;   
}
a{
 text-decoration:none;   
}
</style>

<?php
session_start();
if(empty($_SESSION['username']) && empty($_SESSION['password'])){
header("location:index.php");
    
}

?>
</head>
<body>
<div class="header">
<div class="logo"></div>
  <div class="colom_menu">ITN MALANG</div>
    <div class="top-menu"><a href="?module=home"><div class="menu_header">Beranda</div></a><a href="?module=profile"><div class="menu_header">Profile</div></a><a href="?module=logout"><div class="menu_header">Logout</div></a> </div>
</div>
<div class="row-fluid body">
  <div class="span2 offset1 side_menu">
    <div class="mini_profile">
    <div id="photo"><img src="../img/bg2.jpg" class="img-polaroid"/> </div>
    <div id="nama"></div>
    <div id="nim"><?php echo $_SESSION['username']; ?></div>
    </div>
	<div class="header_side_menu">MENU SIAKAD</div>

<a href="?module=khs"><div class="menu-list"><i class="icon-chevron-right"></i>KHS
</div></a><a href="?module=transkrip"><div class="menu-list"><i class="icon-chevron-right"></i>Transkrip Nilai
</div></a><a href="?module=pemasaran"><div class="menu-list"><i class="icon-chevron-right"></i>Pemasaran Matakuliah
</div></a><a href="?module=krs"><div class="menu-list"><i class="icon-chevron-right"></i>KRS
</div></a><a href="?module=jadwal"><div class="menu-list"><i class="icon-chevron-right"></i>Jadwal Kuliah
</div></a>
</div>
    
    <div class="span8 offset3 isi">
    <?php
if(!empty($_GET['module'])){
$modul = $_GET['module'];
switch($modul){
    case "home" : header("location:dasboard.php");break;
case "profile" : include "profile.php";break;
case "khs" : include "khs.php";break;
case "transkrip" : include "";include "";break;
case "pemasaran" : include "pemasaran.php";break;
case "krs" : include "krs.php";break;
case "jadwal" : include "";break;
case "logout" : include "logout.php"; break;
default: include "";break;

}
}

?>
    </div>
    

</div>    
  <div class="footer">
 
    <div class="copyright">Lembaga Pengembangan Sistem Informasi Institut Teknologi Nasional Malang</div></a>
</div>


</body></html>