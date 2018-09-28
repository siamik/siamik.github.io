<?php
include "../connect.php";


?>
<form action="simpankrs.php" method="get">
<table class="table table-hover">
	<tr><td>pilih</td><td>No</td><td>Matkul</td><td>jam</td><td>sks</td><td>dosen</td><td>gedung</td><td>ruang</td></tr>
	<?php
	$sql = mysql_query("SELECT id_temp,nama_temp,jam_temp,sks_matkul,nama_dosen,gedung_rg,nomer_rg FROM temp_matakuliah,dosen,ruang where temp_matakuliah.id_dosen=dosen.id_dosen and temp_matakuliah.id_rg=ruang.id_rg");
	while ($rows=mysql_fetch_array($sql)) {
		$id_temp = $rows['id_temp'];
		$nama_temp = $rows['nama_temp'];
		$jam_temp = $rows['jam_temp'];
		$sks_matkul = $rows['sks_matkul'];
		$nama_dosen = $rows['nama_dosen'];
		$gedung_rg = $rows['gedung_rg'];
		$nomer_rg = $rows['nomer_rg'];
		?>
			<tr><td><input type="radio" name="matkul" id="<?php echo $id_temp; ?>" value="<?php echo $id_temp; ?>"/></td><td><?php echo $id_temp; ?></td><td><?php echo $nama_temp; ?></td><td><?php echo $jam_temp; ?></td><td><?php echo $sks_matkul; ?></td><td><?php echo $nama_dosen; ?></td><td><?php echo $gedung_rg; ?></td><td><?php echo $nomer_rg; ?></td></tr>
		<?php
	}
	?>

</table>
    <button type="submit">simpan</button>
    </form>
<table class="table table-hover">
<?php
	$sql2 = mysql_query("SELECT id_temp,nama_temp,jam_temp,sks_matkul,nama_dosen,gedung_rg,nomer_rg FROM matakuliah2,dosen,ruang where matakuliah2.id_dosen=dosen.id_dosen and matakuliah2.id_rg=ruang.id_rg") or die(mysql_error());
	while ($rows=mysql_fetch_array($sql2)) {
		$id_temp = $rows['id_temp'];
		$nama_temp = $rows['nama_temp'];
		$jam_temp = $rows['jam_temp'];
		$sks_matkul = $rows['sks_matkul'];
		$nama_dosen = $rows['nama_dosen'];
		$gedung_rg = $rows['gedung_rg'];
		$nomer_rg = $rows['nomer_rg'];
		?>
			<tr><td><?php echo $id_temp; ?></td><td><?php echo $nama_temp; ?></td><td><?php echo $jam_temp; ?></td><td><?php echo $sks_matkul; ?></td><td><?php echo $nama_dosen; ?></td><td><?php echo $gedung_rg; ?></td><td><?php echo $nomer_rg; ?></td><td><a href="?module=krs&delete=true&id=<?php echo $id_temp; ?>"<?php echo $id_temp; ?>><button>delete</button></a></td></tr>
		<?php
	}
	?>
    <?php
if(!empty($_GET['delete']) && !empty($_GET['id'])){
    $del = $_GET['delete'];
    $id = $_GET['id'];
    $sql3 = mysql_query("DELETE FROM matakuliah2 where id_temp='$id'") or die(mysql_error());
    if($sql3){
        echo "berhasil delete";
        header("location:dasboard.php?module=krs");
    }else{
        echo "gagal delete";
    }
}


?>
</table>