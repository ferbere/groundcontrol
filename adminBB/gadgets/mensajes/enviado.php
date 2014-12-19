<?php
include_once("../classes/mysql.php");
if(isset ($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
if(isset ($_GET['grupo'])){
	$grupo=$_GET['grupo'];
}
$mysql3 = new MySQL();
$sql3 = $mysql3->consulta("UPDATE mails_massive_mensajes SET enviado = 1 WHERE id = '$rubro' ");

$mysql = new MySQL();
if(empty($grupo)){
	$grupo=3;
}
if($grupo==3){
	$grup ='';
}else{
	$grup = " AND grupo = ".$grupo;
}
$i = 0;
$sql2 = $mysql->consulta("SELECT nombre,email FROM mails_massive_directorio WHERE email != '' ".$grup);
echo '<strong>El mensaje ha sido enviado a:</strong><br><br>';
while($row2 = $mysql->fetch_array($sql2)){
	$i=$i+1;
	echo $i.".-\n".$row2['nombre'].", a su email: ".$row2['email'].'<br>';
}?>