<?php
session_start();
include_once("classes/mysql.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
?>
<div id="opinion">
	<div id="opinion_tit">Propuestas</div>
<?php
$sql = $mysql->consulta("SELECT id,nombre,texto FROM perfil_iniciativa WHERE categoria = 1 AND id = '$rubro'");

while($row = $mysql->fetch_array($sql)){
?>
		<h1><?php echo $row[1];?></h1>
		<div id="contenido">
			<!--<img src="images/articulos/<?php echo $row[2]; ?>">-->
			<?php echo $row[2];?>
		</div>
<?php
}
?>
</div>