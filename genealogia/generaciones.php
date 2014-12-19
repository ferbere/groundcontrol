<?php
session_start();
include_once("classes/mysql.php");
include_once("classes/fechas.class.php");
$mysql=new MySQL();
//if($_SESSION['estado']=='Autenticado'){
if(isset($_GET['generacion'])){
	$generacion=$_GET['generacion'];
}
if(empty($generacion)){
	$generacion=1;
}
?><div align="center">
<table border="0">
	<tr>
		<td>generacion: 
<?php
$sql_gen=$mysql->consulta("SELECT id,nombre FROM genealogia_generacion WHERE id > 0");
while($row_gen=$mysql->fetch_array($sql_gen)){
	echo '<a href="genealogia.php?generacion='.$row_gen[0].'">'.$row_gen[1].'</a> '."\n";
}
echo 	"</td>
	</tr>";

$sql=$mysql->consulta("SELECT nombre,id,generacion,done FROM genealogia_index  WHERE generacion = '$generacion' ",$link);
while ($row=$mysql->fetch_array($sql)){
	if($row['done']==0){
		$done="";
	}elseif($row['done']==1){
		$done='<img src="style/images/editado.png">';
	}
	echo'<tr>
			<td align="left">
				<a href="genealogia.php?ruta=perfil.php&rubro='.$row['id'].'">'.$row['nombre'].'</a> '.$done.'
			</td>
		</tr>';
}
echo '</table>';

/*}else{
echo '<p style="text-align: center">Usted no tiene acceso a esta sección. Pida una sesión en el botón respectivo.</p>';
}*/
echo '</div>';
?>