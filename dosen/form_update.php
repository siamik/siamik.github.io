<?php
include "../connect.php";
if(!empty($_GET['id'])){
    $id=$_GET['id'];
$select = mysql_query("SELECT * FROM `list_matkul` where `id_list`='$id'"); 
    $list = mysql_fetch_array($select);
}


?>
<form action="update.php" method="post">
    <input type="hidden" name="id_list" value="<?php echo $list['id_list']; ?>">
<input type="text" name="nama_matkul" placeholder="Nama matkul" value="<?php echo $list['nama_list']; ?>">   
<input type="text" name="jam_matkul" placeholder="jam" value="<?php echo $list['jam_list']; ?>">
<input type="text" name="sks_matkul" placeholder="sks" value="<?php echo $list['sks_list']; ?>">
<select name="dosen"[''];
<?php

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
</form>    
    <div>