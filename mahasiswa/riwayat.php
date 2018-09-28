<table>
<?php
include "connect.php";
$user = $_SESSION['username'];
$sql = mysql_query("SELECT * riwayat_akademik where nim_mhs='$user'");
while($baris=mysql_fetch_array($sql)){
    
?>
<tr><td></td><td></td><td></td><td></td></tr>
    
    
    <?php
}
    
    ?>

    
    
    
    </table>