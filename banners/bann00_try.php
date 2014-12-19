<?php
include_once("../classes/mysql.php");
$mysql=new MySQL();
/*****bann1 Perfil*****/
$sql1 = $mysql->consulta("SELECT id,nombre,imagen FROM perfil_index WHERE orden  = ".$_POST['variable']);
/*****bann2 Comisiones*****/
$sql2 = $mysql->consulta("SELECT perfil_comisiones.nombre,perfil_asigna_comisiones.preside,perfil_comisiones.id FROM perfil_asigna_comisiones INNER JOIN perfil_comisiones ON perfil_asigna_comisiones.comision = perfil_comisiones.id INNER JOIN perfil_index ON perfil_asigna_comisiones.diputado = perfil_index.id WHERE perfil_index.orden  = ".$_POST['variable']." ORDER BY perfil_asigna_comisiones.preside DESC ");
$cuenta2 = $mysql->num_rows($sql2);
/*****bann3 Iniciativas*****/
$sql3 = $mysql->consulta("SELECT perfil_iniciativa.nombre,perfil_asigna_iniciativa.suscribe,perfil_iniciativa.id,perfil_index.id FROM perfil_asigna_iniciativa INNER JOIN perfil_iniciativa ON perfil_asigna_iniciativa.iniciativa = perfil_iniciativa.id INNER JOIN perfil_index ON perfil_asigna_iniciativa.diputado = perfil_index.id WHERE perfil_iniciativa.visible = 1 AND perfil_index.orden = ".$_POST['variable']);
$cuenta3 = $mysql->num_rows($sql3);
/******bann4 Botones sociales*****/
$sql4 = $mysql->consulta("SELECT perfil_boton_social.nombre,perfil_asigna_boton.cuenta,perfil_asigna_boton.url,perfil_index.id FROM perfil_asigna_boton INNER JOIN perfil_boton_social ON perfil_asigna_boton.boton_social = perfil_boton_social.id INNER JOIN perfil_index ON perfil_asigna_boton.diputado = perfil_index.id WHERE perfil_index.orden  = ".$_POST['variable']);
/*****bann5 Citas*****/
$mysql=new MySQL();
$sql5 = $mysql->consulta("SELECT autor,contenido FROM citas_index WHERE visible = 1 AND diputado = ".$_POST['variable']);
$cuenta5 = $mysql->num_rows($sql5);
?>
<table id="nivel2" cellpadding="3">
	<tr>
		<td id="nivel2_1">
			<div id="nivel2_perfil">
				<?php
				while($row1=$mysql->fetch_array($sql1)){
					if($row1[0]==12){
						$coordinador='<br><small><strong>Coordinador</strong></small>';
					}else{
						$coordinador='';
					}
					echo '<a href="diputado.php?rubro='.$row1[0].'">';
					echo '<img src="images/perfil/'.$row1[2].'.jpg">';
					echo '</a><br>';
					echo utf8_encode($row1[1]);
					echo $coordinador;
				}
				?>
			</div>
		</td>
		<td id="nivel2_2">
			<div class="seccion2" id="iniciativas">
				<p>Comisiones que integra<br><span class="title_cuenta"><?php echo '('.$cuenta2.')'; ?></span></p>
				<div class="seccion2_int">
					<table>
					<?php
					while($row2=$mysql->fetch_array($sql2)){
						if($row2[1]==1){
							$preside = 'Preside';
						}else{
							$preside = 'Vocal';
						}
						echo '<tr>';
						echo 	'<td>';
						echo 		'<li>';
//						echo 		'<a href="comisiones.php?rubro='.$row2[2].'">';
						echo 			utf8_encode($row2[0]);
//						echo 		'</a>';
						echo 		'</li>';
						echo 	'</td>';
						echo 	'<td>';
						echo 		'<strong><small>';
						echo 			$preside;
						echo 		'</strong></small>';
						echo 	'</td>';
						echo '</tr>';
					}
					?>
					</table>
				</div>
			</div>
		</td>
		<td id="nivel2_3">
			<div class="seccion2" id="iniciativas">
				<p>Sus iniciativas<br><span class="title_cuenta">(o puntos de acuerdo)<br><?php echo '('.$cuenta3.')'; ?></span></p>
				<div class="seccion2_int">
					<table>
					<?php
					while($row3=$mysql->fetch_array($sql3)){
						if($row3[1]==1){
							$suscribe = 'Suscribe';
						}else{
							$suscribe = 'Apoya';
						}
						echo '<tr>';
						echo 	'<td>';
						echo 		'<li>';
						echo 		'<a href="iniciativas_diputado.php?rubro='.$row3[2].'">';
						echo 			utf8_encode($row3[0]);
						echo 		'</a>';
						echo 		'</li>';
						echo 	'</td>';
						echo 	'<td>';
						echo 		'<strong><small>';
						echo 			$suscribe;
						echo 		'</strong></small>';
						echo 	'</td>';
						echo '</tr>';
					}
					?>
					</table>
				</div>
			</div>
		</td>
		<td id="nivel2_4">
			<div class="botones_sociales_ind">
				<?php
				while($row4=$mysql->fetch_array($sql4)){
					if(($row4[0]=='twitter')||($row4[0]=='facebook')){
						$dos='2';
						$tres='';
						$cuatro='_blank';
					}elseif($row4[0]=='email'){
						$dos='';
						$tres=$row4[3];
						$cuatro='_self';
					}else{
						$dos='';
						$tres='';
						$cuatro='_blank';
					}
					$mail=$row4[0];
					echo '<a href="'.$row4[2].$tres.'" target="'.$cuatro.'">';
					echo 	'<img src="style/images/'.$row4[0].$dos.'.png">';
					echo '</a>';
				}
				?>
			</div>
		</td>
		<td id="nivel2_5">
			<div id="nivel2_citas">
				<?php
				while($row5=$mysql->fetch_array($sql5)){
					echo '<p>'.utf8_encode($row5[1]).'</p>';
					echo '<div id="nivel2_citas2">'.utf8_encode($row5[0]).'</div>';
				}
				?>
			</div>
		</td>
	</tr>
</table>
