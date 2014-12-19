<?php
include_once("classes/mysql.php");
$mysql=new MySQL();
include_once("classes/fecha.class.php");
include_once("classes/cal.class.php");
?>
<table border="0" cellspacing="4px">
	<tr>
		<td colspan="3" align="center">
<?php
if(isset($_GET['mes'])){
	$mes=$_GET['mes'];
}else{
	$mes=(date("m")*1);
}
echo 'Mes de: <font size="2">';
for($i=1;$i<=12;$i++){
	echo '<a href="genealogia.php?ruta=onomasticos.php&mes='.$i.'">'.dame_nombre_mes($i).'</a>'."\n";
}
echo '</font>
		</td>
	</tr>';
$suceso=array('nacieron'=>'fecha_nac','fallecieron'=>'fecha_fal');
foreach($suceso as $x=>$x_value){
	echo '<tr><td colspan="3">';
	echo '<font size="5">Durante el mes de '.dame_nombre_mes($mes)."\n".$x.':</font>';
	echo '</td></tr>';
	$sql=$mysql->consulta("SELECT nombre,id,generacion,fecha_nac,fecha_fal FROM genealogia_index WHERE MONTH(".$x_value.") = '$mes' ORDER BY DAY(".$x_value.") ");
	while($row=$mysql->fetch_array($sql)){
		echo'<tr>
				<td align="left">';
		echo		cambiaf_a_normal($row[$x_value])."\n";
		echo 	'</td>';
		echo 	'<td>';
		echo 		'<a href="genealogia.php?ruta=perfil.php&rubro='.$row['id'].'">';
		echo 			$row['nombre'];
		echo 		'</a>,';
		echo 	'<td> ';
		echo 		'de la '.$row['generacion'] .'a generación';
		echo 	'</td>';
		echo '</tr>';
	}
}
echo '</tr></table>';
?>