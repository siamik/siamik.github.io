
<table class="table table-hover">
	<tr><td>No</td><td>Matkul</td><td>sks</td></tr>
	<?php
	$sql = mysql_query("SELECT id_temp,nama_temp,sks_matkul FROM temp_matakuliah");
	while ($rows=mysql_fetch_array($sql)) {
		$id_temp = $rows['id_temp'];
		$nama_temp = $rows['nama_temp'];
		$sks_matkul = $rows['sks_matkul'];
		?>
			<tr><td><?php echo $id_temp; ?></td><td><?php echo $nama_temp; ?></td><td><?php echo $sks_matkul; ?></td></tr>
		<?php

	}
	?>

</table>