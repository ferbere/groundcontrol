<?php
if(isset($_POST['dirigido'])){
	$dirigido=$_POST['dirigido'];
}
if(isset($_POST['dirigido_mail'])){
	$dirigido_mail=$_POST['dirigido_mail'];
}
if(isset($_POST['titulo'])){
	$titulo=$_POST['titulo'];
}
if(isset($_POST['email'])){
	$email=$_POST['email'];
}
if(isset($_POST['nombre'])){
	$nombre=$_POST['nombre'];
}
if(isset($_POST['mensaje'])){
	$mensaje=$_POST['mensaje'];
}
$correo = "lxlegislaturapan@gmail.com";
//$correo = "saargo@gmail.com";
$asunto = "Correo recibido de la página de www.diputadospanjalisco.net";
$cuerpo ="Enviado a ".$dirigido.", por <strong>".$nombre."</strong>, ";
$cuerpo .="cuya cuenta de correo es: ".$email."<br>";
$cuerpo .= "El día del envío es el ".date("d/m/Y").",<br>";
$cuerpo .= "a las: ".date("H:i:s")."<br>";
$cuerpo .= "La IP del usuario es:       ".$_SERVER['REMOTE_ADDR'].".<br><br>";
$cuerpo .= "Título: <strong>".$titulo."</strong><br>";
$cuerpo .= "Comentario:  <br>".$mensaje."<br>";
$cabeceras = "Content-type: text/html\r\n";
$cabeceras .="From: contacto@diputadospanjalisco.net\r\n";

mail($correo,$asunto,$cuerpo,$cabeceras);
echo '<script>window.location.href="exe_ip_mensaje.php?dirigido='.$dirigido.'&email='.$email.'&nombre='.$nombre.'&titulo='.$titulo.'&mensaje='.$mensaje.'&ip='.$_SERVER['REMOTE_ADDR'].'";</script>';
?>