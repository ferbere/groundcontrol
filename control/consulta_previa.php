<?php
//include("../classes/mysql.php");
//include_once("../classes/fecha.class.php");
$mysql = new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
?>
<div id="form-main">
<hr>
<h2>Consultas previas</h2>
<?php
	$sql = $mysql->consulta("SELECT
	homeopop_consulta2.id,homeopop_consulta2.fecha,homeopop_consulta2.sintomas,homeopop_medicamentos.nombre,homeopop_potencia.nombre,homeopop_consulta2.modo,homeopop_consulta2.observaciones FROM homeopop_consulta2 INNER JOIN homeopop_medicamentos ON homeopop_consulta2.medicamento = homeopop_medicamentos.id INNER JOIN homeopop_potencia ON homeopop_consulta2.potencia = homeopop_potencia.id WHERE homeopop_consulta2.paciente = '$rubro' ORDER BY fecha DESC");
	$tot=mysql_fetch_row(mysql_query("SELECT FOUND_ROWS()"));
	$i=0;
	while($row=$mysql->fetch_array($sql)){
		if($i<=$tot){
			$i=$i+1;
		}
		?>
		<script>
			function mostrardiv<?php echo $i; ?>() {
				div = document.getElementById('flotante<?php echo $i; ?>');
				div.style.display = '';
			}
			function cerrar<?php echo $i; ?>() {
				div = document.getElementById('flotante<?php echo $i; ?>');
				div.style.display='none';
			}
		</script>

		<?php

		echo '<div id="mostrarDivS">';
		echo '<a href="javascript:mostrardiv'.$i.'();">';
	 	echo '<strong><big>'.date("F j, Y g:i a", strtotime($row[1])) . "</big></strong><br />";
		echo '</a>';
		echo '<div id="flotante'.$i.'" style="display:none">';
		echo '<b>Síntomas:</b> '.$row[2].'<br>';
		echo '<b>Medicamento</b>: '.$row[3].', ';
		echo '<b>Potencia:</b> '.$row[4].'<br>';
		echo '<b>Prescripción:</b> '.$row[5].'<br>';
		echo '<b>Observaciones:</b> '.$row[6].'<br>';
		echo '<a href="control.php?ruta=if_consulta_a.php&rubro='.$rubro.'&consulta='.$row[0].'">editar</a>';
		echo '  || ';
		echo '<a href="javascript:cerrar'.$i.'();">cerrar</a>';
		echo '<hr style="border:1px dotted">';
		echo '</div>';
		echo '</div>';
	}
?>
	<hr>
</div>
