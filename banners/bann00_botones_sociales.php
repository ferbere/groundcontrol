<?php
include_once("classes/mysql.php");
$mysql=new MySQL();
$sql = $mysql->consulta("SELECT perfil_boton_social.nombre,perfil_asigna_boton.cuenta,perfil_asigna_boton.url FROM perfil_asigna_boton INNER JOIN perfil_boton_social ON perfil_asigna_boton.boton_social = perfil_boton_social.id WHERE perfil_asigna_boton.diputado  = 4");
?>
<div class="botones_sociales_ind">
	<?php
	while($row=$mysql->fetch_array($sql)){
		if($row[0]=='twitter'){
			$soc='fa-twitter-square';
		}elseif($row[0]=='facebook'){
			$soc='fa-facebook-square';
		}elseif($row[0]=='youtube'){
			$soc='fa-youtube-square';
		}elseif($row[0]=='instagram'){
			$soc='fa-instagram';
		}
		$email=$row[0];

		echo 	'<a href="'.$row[2].'" target="_blank">';
		echo '<div id="botones_sociales" class="'.$soc.'">';
		echo '</div>';
		echo 	'</a>';

	}	
	?>
</div>