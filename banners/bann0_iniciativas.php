<?php
include_once("classes/mysql.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
?>
<div style="text-align:justify">
	<h1>Iniciativas del Grupo Parlamentario del PAN</h1>
<?php
	$sql_grupo = $mysql->consulta("SELECT perfil_iniciativa.id,perfil_iniciativa.nombre,perfil_iniciativa.categoria FROM perfil_iniciativa INNER JOIN perfil_asigna_iniciativa ON perfil_iniciativa.id = perfil_asigna_iniciativa.iniciativa WHERE perfil_iniciativa.visible = 1 AND perfil_asigna_iniciativa.diputado = 14");
	?>
			<div id="contenido_boletines">
				<h2>Iniciativas de Grupo</h2>
				<div id="content3">
<?php
		while($row_grupo = $mysql->fetch_array($sql_grupo)){
?>
					<li>
						<a href="iniciativas_diputado.php?rubro=<?php echo $row_grupo[0];?>">
							<?php echo $row_grupo[1];?>
						</a>
					</li>
<?php } ?>
				</div>
			</div>							<h2>Iniciativas por diputado</h2>
	<?php
$sql = $mysql->consulta("SELECT perfil_index.id,perfil_index.nombre FROM perfil_index WHERE id > 0 AND id < 14 ORDER BY orden ASC");
while($row=$mysql->fetch_array($sql)){
	$diputado=$row[0];
	$diputado_nombre=$row[1];
	echo 	'<h3>'.$diputado_nombre.'</h3>';
	$sql2 = $mysql->consulta("SELECT perfil_iniciativa.id,perfil_iniciativa.nombre,perfil_iniciativa.categoria FROM perfil_iniciativa INNER JOIN perfil_asigna_iniciativa ON perfil_iniciativa.id = perfil_asigna_iniciativa.iniciativa WHERE perfil_iniciativa.visible = 1 AND perfil_asigna_iniciativa.diputado = '$diputado'");
	while($row2 = $mysql->fetch_array($sql2)){
?>
		<div id="contenido_boletines">
			<div id="content3">
				<li>
					<a href="iniciativas_diputado.php?rubro=<?php echo $row2[0];?>">
						<?php echo $row2[1];?>
					</a>
				</li>
			</div>
		</div>
<?php
	}
}
?>

</div>