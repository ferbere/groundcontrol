<?php
session_start();
include_once("classes/mysql.php");
include_once("classes/cambiaf_a_normal.class.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
?>
<div style="text-align:justify">
		<h1>Tu diputado</h1>
		<div style="font-size:0.9em;margin-top:-20px;padding-bottom:20px;text-align:center"></div>
<?php
$sql = $mysql->consulta("SELECT perfil_index.id,perfil_index.nombre,perfil_index.imagen,perfil_index.distrito,perfil_categoria.nombre FROM perfil_index INNER JOIN perfil_categoria ON perfil_index.categoria = perfil_categoria.id WHERE perfil_index.orden > 0 ORDER BY perfil_index.orden ASC");

while($row = $mysql->fetch_array($sql)){
	if($row[0]==12){
		$coordinador='<strong>(Coordinador)</strong>';
	}else{
		$coordinador='';
	}
	
?>
	<div id="contenido_boletines">
		<div id="content3">
			<li>
				<div id="content3-1">
					<a href="diputado.php?rubro=<?php echo $row[0];?>">
						<img src="images/perfil/<?php echo $row[2]; ?>.jpg">
					</a>
				</div>
				<div id="content3-2">
					<div id="content3-2-1">
						<?php echo '<b>'.$row[1].'</b>'?>
						<?php echo '<br>'.$coordinador; ?>
					</div>
					<div id="content3-2-2">
						<?php echo '<big>Distrito '.$row[3].', '.$row[4].'</big>'?>
					</div>
				</div>
			</li>
		</div>
	</div>
<?php
} ?>
</div>