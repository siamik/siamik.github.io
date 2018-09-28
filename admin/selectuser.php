
<div>
<table class="table table-bordered" cellpadding=2px>

<?php
include "../connect.php";
$sql = mysql_query("SELECT * FROM login");
while($baris = mysql_fetch_array($sql)){
    echo "<tr><td>".$baris['username']."</td><td>".$baris['password']."</td><td>".$baris['level']."</td><td><a href='control.php?id=".$baris['id_login']."&control=delete'><button>delete</button></a></td></tr>";
}


?>
    
</table>
    
</div>