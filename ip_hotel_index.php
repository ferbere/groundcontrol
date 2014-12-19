<?php
session_start();
if(($_SESSION['privilegioss']=='ferbere')||($_SESSION['privilegioss']=='directivo')){
	include_once('../../../classes/mysql.php');
	$mysql = new MySQL();
	$fecha=$_GET["fecha"];
	$habitacion=$_GET["habitacion"];
	$ocupacion=$_GET["ocupacion"];
	$moneda=$_GET["moneda"];
	$moneda_ext=$_GET["moneda_ext"];
	$visita_diaria=$_GET["visita_diaria"];
	$visita_mensual=$_GET["visita_mensual"];
	
	if($moneda==1){
		$sql_hab=$mysql->consulta("SELECT ".tarifa.'_'.$ocupacion." FROM hotel_habitacion WHERE numero = '$habitacion' ");
		while($row_hab=$mysql->fetch_array($sql_hab)){
			$hab_sel = $row_hab[0];
			$extras='';
		}
	}elseif($moneda==2){
		$hab_sel=$moneda_ext;
		$extras = (($visita_diaria*10)+($visita_mensual*200));
	}
	$sql_fecha=$mysql->consulta("SELECT id FROM hotel_fecha WHERE habitacion = '$habitacion' && fecha = '$fecha' ");
	$cuenta_fecha =$mysql->num_rows($sql_fecha);
	if($cuenta_fecha<1){
		$que=$mysql->consulta("INSERT INTO hotel_fecha (fecha,habitacion,personas,tarifa,extras,visita_diaria,visita_mensual) values ('{$fecha}','{$habitacion}','{$ocupacion}','{$hab_sel}','{$extras}','{$visista_daria}','{$visita_mensual}') ");
		if(!$que){die ("Pos no se capturó el contenido, parece que: " .mysql_error());
		}else{
			echo '<script>window.location.href="hotel.php?ruta=hotel_index.php";</script>';
			exit();
		}
	}else{
		$que=$mysql->consulta("UPDATE hotel_fecha SET habitacion = '$habitacion', personas = '$ocupacion', tarifa = '$hab_sel', extras = '$extras', visita_diaria = '$visita_diaria', visita_mensual = '$visita_mensual' WHERE habitacion = '$habitacion' && fecha = '2013-02-12'");
		if(!$que){die ("Pos no se capturó el contenido, parece que: " .mysql_error());
		}else{
			echo '<script>window.location.href="hotel.php?ruta=hotel_index.php";</script>';
			exit();
		}
	
	}
}else{
	echo "Sorry, you aren´t allowed to browse further in this page";
}
?>