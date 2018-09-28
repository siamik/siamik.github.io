<?php
class pilih{

private $sql=""	;
function __construct(){

mysql_connect("localhost","root","") or die(mysql_error());
mysql_select_db("database_siakad") or die(mysql_error());
}
function sql($param){
switch($param){
	case "nama_mhs":return "SELECT ".$param." from `mahasiswa`";
	case "nim_mhs":return "SELECT ".$param." from `mahasiswa`";
	default:break;
}
}
function select($param){
switch ($param) {
	case "nama_mhs":
		$sql = mysql_query($this->sql($param));
		$baris = mysql_fetch_array($sql);
		return $baris['nama_mhs'];
	case "nim_mhs":
		$sql = mysql_query($this->sql($param));
		$baris = mysql_fetch_array($sql);
		return $baris['nama_mhs'];
	default:
		break;
}


}

}


?>