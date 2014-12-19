<?php
include_once("classes/mysql.php");
$mysql = new MySQL();
$mysql2 = new MySQL();
if(isset($_GET['user'])){
	$user=($_GET['user']);
}
if(isset($_GET['desde'])){
	$desde=($_GET['desde']);
}
if(isset($_GET['hasta'])){
	$hasta=($_GET['hasta']);
}
if(isset($_GET['suma'])){
	$suma=($_GET['suma']);
}
if(isset($_GET['catalogo'])){
	$catalogo=($_GET['catalogo']);
}
if(isset($_GET['precio'])){
	$precio=($_GET['precio']);
}
$sql = $mysql->consulta("SELECT name,mail FROM comprar_directorio WHERE user = '$user' ");
while($row=$mysql->fetch_array($sql)){
	$name = $row[0];
	$mail = $row[1];
}
$sql_corp = $mysql2->consulta("SELECT contenido FROM corporativa_index WHERE id = 7");
while($row_corp=$mysql2->fetch_array($sql_corp)){
	$contenido = $row_corp[0];
}
$villa=array(1=>'BlueCrab Villa',2=>'RedCrab villa',3=>'GreenCrab Villa');

$asunto = "There´s a place ready for you in sayulitacalappa.com";
$cuerpo ="Dear ".$name.",<br> We have received your application for spending some days in Sayulita, at ".$villa[$catalogo].": Since ".$desde." Until ".$hasta.". <br><br>total cost for lodging in the villages would be ".number_format($suma,2).". For concluding this last step, please just deposit in our bank account listed below.";
$cuerpo .= '<br><br>'.$contenido;
$cuerpo .= '<br><br><br>
<img src="http://sayulitacalappa.com/calappa/style/images/logoCH.png"><br>
<i>Calappa, Sayulita Villas</i><br>';
$cuerpo .= '<small><b>contact@sayulitacalappa.com<br>
www.sayulitacalappa.com</b></small>';

$cabeceras = "Content-type: text/html;charset=utf-8\r\n";
$cabeceras .="From: schedule@sayulitacalappa.com\r\n";
$cabeceras .="Bcc: bills@sayulitacalappa.com" . "\r\n";
mail($mail,$titulo,$cuerpo,$cabeceras);
echo '<script>window.location.href="availability.php?ruta=confirm.php&capturado=1";</script>';

?>