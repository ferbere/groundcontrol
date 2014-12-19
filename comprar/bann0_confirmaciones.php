	<div id="bann0-1" style="margin:0px auto;text-align:center; padding-top:10%;">
<?php 
include_once("../classes/mysql.php");
$mysql= new MySQL();
if(isset($_GET['email'])){
	$email = $_GET['email'];
}
if(!empty($email)){
	$sql = $mysql->consulta("UPDATE comprar_directorio SET activated = 1 WHERE email = '$email' ");
	echo '<script>window.location.href="confirmaciones.php";</script>';
}else{
	echo 'Your account is activated, now. <br>Thank you, very much.<br> See you in Calappa, at Sayulita, Mexico';
}
?>
</div>