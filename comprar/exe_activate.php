<?php
if(isset($_GET['mail'])){
	$mail=$_GET['mail'];
}
if(isset($_GET['name'])){
	$name=$_GET['name'];
}
$asunto = "Creating your account in santa-anita.net";
$cuerpo ="Dear ".$name.",<br> You are close to create your santa-anita.net's account. Just click the confirmation link above.";
$cuerpo .= '<br><br>Activate here: <a href="http://santa-anita.net/hotel/sesion.php?ruta=activate.php&mail='.$mail.'">Activate</a>';
$cuerpo .= '<br><br><br>
<img src="http://santa-anita.net/hotel/style/images/logoCH.png"><br>
<i>santa-anita.net</i><br>';
$cuerpo .= '<small><b>contact@santa-anita.net<br>
www.santa-anita.net</b></small>';

$cabeceras = "Content-type: text/html;charset=utf-8\r\n";
$cabeceras .="From: ferbere@yahoo.com\r\n";
$cabeceras .="From: activate@santa-anita.net\r\n";
$cabeceras .="Bcc: bills@santa-anita.net" . "\r\n";
mail($mail,$titulo,$cuerpo,$cabeceras);
echo '<script>window.location.href="sesion.php?ruta=account.php&created=1";</script>';

?>