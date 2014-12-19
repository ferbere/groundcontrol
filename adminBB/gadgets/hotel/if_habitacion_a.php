<?php
session_start();
if(($_SESSION['privilegioss']=='ferbere')||($_SESSION['privilegioss']=='directivo')){
	include_once("../classes/mysql.php");

	$mysql = new MySQL();
	if(isset($_GET['capturado'])){
		$capturado = $_GET['capturado'];
	}
	if(empty($capturado)){	
		if(isset($_GET['rubro'])){
			$rubro = $_GET['rubro'];
		}
			$sql = $mysql -> consulta("SELECT id,numero,capacidad,tarifa_1,tarifa_2,tarifa_3,tarifa_4,tarifa_5,tarifa_6 FROM hotel_habitacion WHERE id = '$rubro' ORDER BY id ASC ");
			$cuenta = $mysql->num_rows($sql);
			while($row = $mysql -> fetch_array($sql)){
				$id				=	$row[0];
				$numero			=	$row[1];
				$capacidad		=	$row[2];
				$tarifa_1		=	$row[3];
				$tarifa_2		=	$row[4];
				$tarifa_3		=	$row[5];
				$tarifa_4		=	$row[6];
				$tarifa_5		=	$row[7];
				$tarifa_6		=	$row[8];
			}
?>
<style>
#mon1, #mon2{
	display:inline-block;
	padding:0.3em;
	vertical-align:top;
}
</style>
<div id="form-main">
	<form method="post" action="gadgets/hotel/ip_habitacion_a.php">
	<input type="hidden" name="rubro" value="<?php echo $rubro ?>">
			<div id="maincontent-tit">
				Editar habitación
			</div>
				<div id="maincontent-body">
						Número:<br></h1>
						<input type="text" name="numero" style="width:95%" value="<?php echo $numero ?>" /><br><br>
						Capacidad:<br>
						<input type="number" name="capacidad" value="<?php echo $capacidad ?>"/>
<br><br>
<?
for($i=1;$i<=$capacidad;$i++){
	$sql_tar=$mysql->consulta("SELECT hotel_tarifa.id,hotel_tarifa.nombre,hotel_tarifa.cantidad,hotel_moneda.nombre FROM hotel_tarifa INNER JOIN hotel_moneda ON hotel_tarifa.moneda = hotel_moneda.id");
$tars=array(1=>$tarifa_1,2=>$tarifa_2,3=>$tarifa_3,4=>$tarifa_4,5=>$tarifa_5,6=>$tarifa_6);
?>
						<div id="mon1">Personas: <?php echo $i ?></div>
						<div id="mon2">Tarifa:
						<select name="tarifa_<?php echo $i ?>">
<?php 
						while($row_tar=$mysql->fetch_array($sql_tar)){
							$tar_id			= $row_tar[0];
							$tar_nombre		= $row_tar[1];
							$tar_cantidad	= $row_tar[2];
							$tar_moneda		= $row_tar[3];
							if($tars[$i]==$tar_id){
								$tar_sel='selected';
							}else{
								$tar_sel='nain';
							}
?>
							<option value="<?php echo $tar_id; ?>"<?php echo $tar_sel ?>>
								<?php echo $tar_nombre.' ('.$tar_moneda.' '.$tar_cantidad.')'; ?>
							</option>

<?php							} ?>
						</select>
						</div><br>
<?php } ?><br>
							<input type="submit"  value="enviar">
							</form>
						</div>
<?php
	}elseif($capturado==1){
		echo 'Muy bien, el contenido ha sido capturado';
	}else{
		echo 'Pos algo pasó en la base de datos, que no se capturó';
	}
}else{
	echo "No tienes privilegios para ingresar en esta sección";
}
?>