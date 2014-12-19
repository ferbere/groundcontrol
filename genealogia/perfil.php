<?php
session_start();
include_once("classes/mysql.php");
$mysql=new MySQL();
include_once("classes/fechas.class.php");
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
?>
<table border="0">
<?php
include("buscar.php");
$sql=$mysql->consulta("SELECT * FROM genealogia_index  WHERE id = '$rubro' ");
while ($row=$mysql->fetch_array($sql)){
	if($row['fecha_fal']==0){
		$vive="  (Vive)";
	}else{
		$vive='  (falleció el '.cambiaf_a_normal($row['fecha_fal']).')';
	}
	if($row['genero']==0){
		$gender="ella"; }else{ $gender="el"; };
	if($row['foto']==''){
		$foto=$gender;
	}else{
		$foto=$row['foto'];
	}
$sql_gen=$mysql->consulta("SELECT id,nombre FROM genealogia_generacion WHERE id = ".$row['generacion']);
$row_gen= $mysql->fetch_array($sql_gen);
$generacion=$row_gen[1];
echo'<tr>';
echo'<td width="150" rowspan="2"><img src="images/articulos/'.$foto.'.jpg" width="150"></td><td width="50" rowspan="2"></td><td valign="top" width="250"><h1>'. $row['nombre'].'</h1>';
echo '<font size="4" color=#990000>'.$vive.'.</font><br>'."\n".' Corresponde a la '.$generacion.' generación.<br>';
echo'<br><font size="3"><strong>Ocupación: </strong>'. $row['ocupacion'].'.<br>';
echo '<strong>Fecha nacimiento: </strong>'.cambiaf_a_normal($row['fecha_nac']).'.<br>';
include("pater.php");
if($row['genero']==0){
	$letra='a';
}else{
	$letra='o';
};
    echo'Hij'.$letra.' de don '.$padre.' y doña '.$madre.'.<br>';
include("casose.php");
	echo'</td></tr>';	
	echo'</table>';
    echo'<table border="0" width="250"><tr><td>';
include("fili.php");
    echo'</td><td>';
//Aquí van los hermanos
echo '<tr></table>';    
}
include("linea_intento2.php");
?>