<?php
session_start();
include_once("classes/mysql.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
?>
<div style="text-align:justify">
<?php
$sql = $mysql->consulta("SELECT perfil_iniciativa.id,perfil_iniciativa.nombre,perfil_iniciativa.texto,perfil_iniciativa.categoria FROM perfil_iniciativa  WHERE perfil_iniciativa.id = '$rubro'");

while($row = $mysql->fetch_array($sql)){
	$titulo 	= $row[1];
	$contenido 	= $row[2];
}
?>
		<div id="contenido_boletines">
			<div id="logo1_boletines"><img src="style/images/logo_pan.png"></div>
			<div id="logo2_boletines"><img src="style/images/logo_gpo_pan.jpg"></div>
			<div id="content3">
				<h1><?php echo $titulo;?></h1>
				<div id="contenido"><?php echo $contenido;?></div>
			</div>
</div>