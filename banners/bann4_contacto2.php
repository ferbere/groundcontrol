<?php
session_start();
include_once("classes/mysql.php");
include("classes/cuenta.class.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
if($_SESSION['dia']=='sun'){
	$dia='sun';
	$diaL='moon';
}else{
	$dia='moon';
	$diaL='sun';
}
echo '<table id="bann0-img">';
if($_SESSION['lang']=='en'){
	$sql = $mysql->consulta("SELECT gadgets_botones.nombre,gadgets_botones.imagen,general_ext.nombre,gadgets_botones.ruta FROM gadgets_botones INNER JOIN general_ext ON gadgets_botones.ext = general_ext.id WHERE gadgets_botones.posicion = 5 ORDER BY gadgets_botones.id DESC");
}else{
	$sql = $mysql->consulta("SELECT language_content.nombre,gadgets_botones.imagen,general_ext.nombre,gadgets_botones.ruta FROM gadgets_botones INNER JOIN general_ext ON gadgets_botones.ext = general_ext.id INNER JOIN language_content ON gadgets_botones.id = language_content.vinculo WHERE gadgets_botones.posicion = 5 ORDER BY gadgets_botones.id DESC");
	
}
while($row = $mysql->fetch_array($sql)){
		echo '<tr>';
		echo 	'<td>';
		echo 		'<a href="'.$row[3].'">';
		echo 			'<img src="style/images/'.$row[1].'.'.$row[2].'">';
		echo 		'</a>';
		echo 	'</td>';
		echo 		'<td>';
		echo 			$row[0];
		echo 	'</td>';
		echo '</tr>';
}
		echo '<tr>';
		echo 	'<td colspan="2" align="left">';
		echo 	'<a href="http://www.ferbere.com" target="_blank" title="Designed by ferbere"><img src="style/images/ferberelogo.jpg"></a>';
echo 		'</td>';
echo 	'</tr>';
echo '</table>';
?>