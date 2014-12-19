<?php 
session_start();
if(isset($_GET['fecha_AA'])){
	$fecha_AA = $_GET['fecha_AA'];
}
if(isset($_GET['fecha_BB'])){
	$fecha_BB = $_GET['fecha_BB'];
}
if(isset($_GET['dia_actual'])){
	$dia_actual = $_GET['dia_actual'];
}
if(isset($_GET['nuevo_mes'])){
	$nuevo_mes = $_GET['nuevo_mes'];
}
if(isset($_GET['nuevo_ano'])){
	$nuevo_ano = $_GET['nuevo_ano'];
}
if(isset($_GET['villa'])){
	$villa = $_GET['villa'];
}
if(isset($_GET['$fecha_set'])){
	$fecha_set=$_GET['fecha_set'];
}
if(isset($_GET['$fecha_temp'])){
	$fecha_temp=$_GET['fecha_temp'];
}
$fecha_set=$nuevo_mes.'/'.$dia_actual.'/'.$nuevo_ano;
$fecha_temp=$nuevo_ano.'-'.$nuevo_mes.'-'.$dia_actual;

include_once("../classes/mysql.php");
$mysql = new MySQL();
$sql_temp = $mysql->consulta("SELECT nombre FROM catalogo_temporadas WHERE '$fecha_temp' BETWEEN desde AND hasta ");
$row_temp= $mysql->fetch_array($sql_temp);
	$nombre_temp 	=	$row_temp[0];
	$sel		= 'precio_'.$nombre_temp;
$sql=$mysql->consulta("SELECT id,nombre,".$sel." FROM catalogo_index WHERE id = '$villa' ");
while($row = $mysql->fetch_array($sql)){
	$id 	= $row[0];
	$nombre = $row[1];
	$precio = $row[2];
}

extract($_SESSION);
if(isset($_SESSION['carro']))
if(empty($carro[$user]['fecha_A'])){
	$fecha_AA = $fecha_set;
}else{
	$fecha_AA=$carro[$user]['fecha_A'];
	$fecha_BB = $fecha_set;
}

$carro=$_SESSION['carro'];
$carro[$user]=array('identificador'=>$user,'villa'=>$villa,'fecha_A'=>$fecha_AA,'fecha_B'=>$fecha_BB,'precio'=>$precio);
$_SESSION['carro']=$carro;
//print_r ($_SESSION['carro']);
header("Location:availability.php?nuevo_mes=".$nuevo_mes."&nuevo_ano=".$nuevo_ano."&dia_actual=".$dia_actual."&villa=".$villa);

?>