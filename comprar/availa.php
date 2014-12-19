<!--<script>
	function devuelveFecha(dia,mes,ano){
		//Se encarga de escribir en el formulario adecuado los valores seleccionados
		//también debe cerrar la ventana del calendario
		var formulario_destino = '<?php echo $_GET["formulario"]?>'
		
		var campo_destino = '<?php echo $_GET["nomcampo"]?>'
				
		//meto el dia
		eval ("opener.document." + formulario_destino + "." + campo_destino + ".value='" + dia + "/" + mes + "/" + ano + "'")
		window.close()
	}
</script>-->
<?php
session_start();
if($_SESSION['user']!=''){
	echo '<div id="sesion_2">User: '.$_SESSION['user'].'<br><a href="sesion.php?ruta=destroy_comprar.php">End session</a></div>';
}
//TOMO LOS DATOS QUE RECIBO POR LA url Y LOS COMPONGO PARA PASARLOS EN SUCESIVAS EJECUCIONES DEL CALENDARIO
$parametros_formulario = "formulario=" . $_GET["formulario"] . "&nomcampo=" . $_GET["nomcampo"];
?>

<table id="availa">
	<tr>
		<td>
<?php
include_once("classes/cal.class.php");
$tiempo_actual = time();
$dia_solo_hoy = date("d",$tiempo_actual);
if (!$_POST && !isset($_GET["nuevo_mes"]) && !isset($_GET["nuevo_ano"])){
	$mes = date("n", $tiempo_actual);
	$ano = date("Y", $tiempo_actual);
}elseif ($_POST) {
	$mes = $_POST["nuevo_mes"];
	$ano = $_POST["nuevo_ano"];
}else{
	$mes = $_GET["nuevo_mes"];
	$ano = $_GET["nuevo_ano"];
}
echo mostrar_calendario($mes,$ano);
//echo formularioCalendario($mes,$ano);

?>
		</td>
	</tr>
</table>