<?php
if(isset($_GET['rubro'])){
$rubro=$_GET['rubro'];
}
include_once("classes/mysql.php");
include_once("classes/recorte.php");
$mysql = new MySQL();
$cat=array(1=>'Antecedentes',2=>'Artículos');
if(empty($rubro)){
	$categoria=2;
	$seleccion=" order by articulos_index.id asc";
	$volver='';
}elseif(!empty($rubro)&&($rubro!=6)){
	$categoria=2;
	$seleccion=" and articulos_index.id = '$rubro'";
	$volver='<a href="'.$_SERVER['HTTP_REFERER'].'"><< Volver</a>';
	$leermas='';
}elseif(!empty($rubro)&&($rubro==6)){
	$categoria=1;
//	$seleccion=" and articulos_index.id = 2";
}
$sql=$mysql->consulta("SELECT articulos_index.id,articulos_index.titulo,articulos_index.imagen,articulos_index.contenido,articulos_index.categoria FROM articulos_index WHERE articulos_index.categoria = ".$categoria.$seleccion);
?>
<div align="center">
	<table>
		<tr>
			<td colspan="2" valign="top" align="center">
				<h1><?php echo $cat[$categoria] ?></h1>
			</td>
		</tr>
<?php
while ($row=$mysql->fetch_array($sql)){
if(!empty($rubro)){
	$contenido=$row['contenido'];
}else{
	$contenido=cut_string($row['contenido'],450);
}
if(empty($rubro)){
	$leermas='<a href="index.php?rubro='.$row['id'].'">leer más</a>';
}
echo '<tr>
		<td id="bann0_index">
			<img src="images/articulos/'.$row['imagen'].'.jpg">
		</td>
		<td id="bann0_index2">
			<h2>'.$row['titulo'].'</h2>';
echo 		$contenido.'<br>'."\n".$leermas;
echo 		'<p style="text-align: right">'.$volver.'</p>
		</td>
	</tr>';
}
?>
	</table>
