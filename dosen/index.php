<!Doctype html>

<html>
<head>
    <link rel="stylesheet" href="../css/bootstrap/css/bootstrap-responsive.css"/>
    <link rel="stylesheet" href="../css/bootstrap/css/bootstrap.css"/>
    
    <script src="../css/bootstrap/js/bootstrap.js"></script>
    <link rel="stylesheet" href="../css/admin.css" />
    <title></title></head>
<body class="container-fluid">
<form action="input_matkul.php" method="post">
<input type="text" name="nama_matkul" placeholder="Nama matkul">   
<input type="text" name="jam_matkul" placeholder="jam">
<input type="text" name="sks_matkul" placeholder="sks">
<select name="dosen">
<?php
include "../connect.php";
$sql = mysql_query("SELECT * FROM dosen");
while($baris=mysql_fetch_array($sql)){
    ?>    
    <option value="<?php echo $baris[0];?>"><?php echo $baris[2];?></option>
    <?php
}

?>
    
    
</select>
    
    <select name="ruang">
    <?php
    $sql2 = mysql_query("SELECT * FROM ruang");
while($row=mysql_fetch_array($sql2)){
 ?>
       <option value="<?php echo $row[0];?>"><?php echo $row[2];?></option>
        
        <?php
}

    ?>
    
    </select>
    <select name="semester">
    <?php
for($i=1;$i<=8;$i++){
    ?>
        <option value="<?php echo $i; ?>"><?php echo $i; ?></option>
        <?php
}

?>
    
    </select>
<button type="submit">input</button>
   <a href="logout.php"><div class="menu_header">Logout</div></a>
    
<!--
    <?php
//    if(!empty($_GET['module'])){
//    if($_GET['module']=="logout"){
//        include "../logout.php";
//    }
//    }
?>
-->
</form>    
    <div>
       <a href="lihat.php"><button>lihat data</button> </a>
        
    </div>
</body>
</html>