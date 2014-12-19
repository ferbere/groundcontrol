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
			$sql = $mysql -> consulta("SELECT id,nombre,cambio FROM hotel_moneda WHERE id = '$rubro' ORDER BY id ASC ");
			$cuenta = $mysql->num_rows($sql);
			while($row = $mysql -> fetch_array($sql)){
				$id			=	$row[0];
				$nombre		=	$row[1];
				$cambio		=	$row[2];
			}
?>
<div id="form-main">
	<form method="post" action="gadgets/hotel/ip_moneda_a.php">
	<input type="hidden" name="rubro" value="<?php echo $rubro ?>">
			<div id="maincontent-tit">
				Editar moneda
			</div>
				<div id="maincontent-body">
						Nombre:<br></h1>
						<input type="text" name="nombre" style="width:95%" value="<?php echo $nombre ?>" /><br><br>
						Tipo de Cambio:<br>
						<input type="number" name="cambio" value="<?php echo $cambio ?>"/>
<br><br>
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