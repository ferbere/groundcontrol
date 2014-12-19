<?php
include_once("admin/classes/sacar.class.php");
if(isset($_GET['pag'])){
	$pag=$_GET['pag'];
}
$pag = sacar($_SERVER['PHP_SELF'],'orto/','.php');
echo	$pag;
?>
