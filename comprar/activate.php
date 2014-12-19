	<div id="bann0-1" style="margin:0px auto;text-align:center; padding-top:10%;">
<?php 
include_once("../classes/mysql.php");
$mysql= new MySQL();
if(isset($_GET['mail'])){
	$mail = $_GET['mail'];
}
if(!empty($mail)){
	$sql = $mysql->consulta("UPDATE comprar_directorio SET activated = 1 WHERE mail = '$mail' ");
	echo '<script>window.location.href="sesion.php?ruta=activate.php";</script>';
}else{
	echo 'Your account is activated, now. <br>Thank you, very much.<br> See you in Calappa, at Sayulita, Mexico';
}
?>
</div>