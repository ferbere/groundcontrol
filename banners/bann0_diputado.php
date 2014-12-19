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
$sql = $mysql->consulta("SELECT perfil_index.id,perfil_index.nombre,perfil_index.descripcion,perfil_index.imagen,perfil_index.distrito,perfil_categoria.nombre,perfil_index.email,perfil_index.sala,perfil_index.telefonos,perfil_index.enlace FROM perfil_index INNER JOIN perfil_categoria ON perfil_index.categoria = perfil_categoria.id WHERE perfil_index.id = '$rubro'");

while($row = $mysql->fetch_array($sql)){
	$id				=	$row[0];
	$nombre			=	$row[1];
	$descripcion	=	$row[2];
	$imagen			=	$row[3];
	$distrito		=	$row[4];
	$categoria		=	$row[5];
	$email			=	$row[6];
	$sala			=	$row[7];
	$telefonos		=	$row[8];
	$enlace			=	$row[9];
}
//Comisiones
$sql = $mysql->consulta("SELECT perfil_comisiones.nombre,perfil_asigna_comisiones.preside,perfil_comisiones.id FROM perfil_asigna_comisiones INNER JOIN perfil_comisiones ON perfil_asigna_comisiones.comision = perfil_comisiones.id WHERE perfil_asigna_comisiones.diputado = '$rubro' ORDER BY perfil_asigna_comisiones.preside DESC ");

//Iniciativas
$sql_ini = $mysql->consulta("SELECT perfil_iniciativa.nombre,perfil_asigna_iniciativa.suscribe,perfil_iniciativa.id FROM perfil_asigna_iniciativa INNER JOIN perfil_iniciativa ON perfil_asigna_iniciativa.iniciativa = perfil_iniciativa.id WHERE perfil_iniciativa.visible = 1 AND perfil_asigna_iniciativa.diputado = '$rubro' ");

//Botones sociales
$sql_bs = $mysql->consulta("SELECT perfil_boton_social.nombre,perfil_asigna_boton.cuenta,perfil_asigna_boton.url,perfil_index.id FROM perfil_asigna_boton INNER JOIN perfil_boton_social ON perfil_asigna_boton.boton_social = perfil_boton_social.id INNER JOIN perfil_index ON perfil_asigna_boton.diputado = perfil_index.id WHERE perfil_asigna_boton.diputado  = '$rubro' ");

if($id==12){
	$coordinador='<strong>Coordinador</strong>';
}else{
	$coordinador='';
}
?>
		<div id="titulo"><h1><?php echo $nombre;?></h1><p><?php echo $coordinador?></p></div>
		<div id=conten>
			<div id="imagen"><img src="images/perfil/<?php echo $imagen;?>.jpg"></div>
			<div id="botones_sociales">
				<?php
				while($row_bs=$mysql->fetch_array($sql_bs)){
					if(($row_bs[0]=='twitter')||($row_bs[0]=='facebook')){
						$dos='2';
						$tres='';
						$cuatro='_blank';
					}elseif($row_bs[0]=='email'){
						$dos='';
						$tres=$row_bs[3];
						$cuatro='_self';
					}else{
						$dos='';
						$tres='';
						$cuatro='_blank';
					}
					$mail=$row_bs[0];
					echo '<a href="'.$row_bs[2].$tres.'" target="'.$cuatro.'">';
					echo 	'<img src="style/images/'.$row_bs[0].$dos.'.png">';
					echo '</a>';
				}
				?>
			</div>
			<!--termina Botones Sociales-->
		</div>
		<div id="conten2">
			<div id="distrito">Distrito <?php echo $distrito.' <small>('.$categoria.')</small>';?></div>
			<div id="sala"><b>Sala:</b> <?php echo $sala;?></div>
			<div id="email"><b>e-mail:</b> <?php echo $email;?></div>
			<div id="telefonos"><b>Teléfonos:</b> <?php echo $telefonos;?></div>
			<div id="enlace"><h3>Casa de enlace</h3><?php echo $enlace;?></div>
			<!--Inicia importación Comisiones-->
			<div>
				<div id="comisiones_titulo">
				<p>Comisiones que integra</p>
				</div>
				<div id="comisiones">
					<?php
					while($row=$mysql->fetch_array($sql)){
						if($row[1]==1){
							$preside = 'Preside';
						}else{
							$preside = 'Vocal';
						}
						echo 	'<div id="comisiones1">';
						echo 		'<li>';
//						echo 		'<a href="comisiones.php?rubro='.$row[2].'">';
						echo 			$row[0];
//						echo 		'</a>';
						echo 		'</li>';
						echo 	'</div>';
						echo 	'<div id="comisiones2">';
						echo 		'<strong><small>';
						echo 			$preside;
						echo 		'</strong></small>';
						echo 	'</div>';
					}
					?>
				</div>
			</div><!--Termina importacion Comisiones-->
			

			<!--Inicia importación Comisiones-->
			<div>
				<div id="comisiones_titulo">
				<p>Iniciativas o puntos de acuerdo</p>
				</div>
				<div id="comisiones">
					<?php
					while($row_ini=$mysql->fetch_array($sql_ini)){
						if($row_ini[1]==1){
							$suscribe = 'Suscribe';
						}else{
							$suscribe = 'Apoya';
						}
						echo 	'<div id="comisiones1">';
						echo 		'<a href="iniciativas_diputado.php?rubro='.$row_ini[2].'">';
						echo 			$row_ini[0];
						echo 		'</a><br/><br/>';
						echo 	'</div>';
						echo 	'<div id="comisiones2">';
						echo 		'<strong><small>';
						echo 			$suscribe;
						echo 		'</strong></small>';
						echo 	'</div>';
					}
					?>
				</div>
			</div><!--Termina importacion Comisiones-->
		</div>
</div>