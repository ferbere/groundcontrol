<?php
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
include_once("classes/mysql.php");
include_once("classes/fecha.class.php");
$mysql = new MySQL();
echo '<div style="text-align:right">Hoy es '.actual_date(date('Y')).'.</div>';
$sql = $mysql->consulta("SELECT id,nombre, f_nac, CURDATE(),(YEAR(CURDATE())-YEAR(f_nac)) - (RIGHT(CURDATE(),5)<RIGHT(f_nac,5)) AS age FROM homeopop_directorio WHERE id = '$rubro' ");
while($row=$mysql->fetch_array($sql)){
	echo '<h3><small>Paciente:</small> '.$row[1].'</h3>';
	echo 'Edad actual: '.$row[4].' años<br>';
}
include("consulta_previa.php");
echo '<br><br>';
include("if_consulta.php");
?>