<?php
include "../connect.php";

$method = $_GET['control'];
switch($method){
    case 'update' : include "update.php";break;
    case 'delete' : include "delete.php";break;
    default: echo "not found"; break;
}


?>