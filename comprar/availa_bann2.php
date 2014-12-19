<?php
session_start();
extract($_SESSION);
if(isset($_SESSION['carro'])){
	$carro=$_SESSION['carro'];	
}else{
	$carro=false;
	}
if(isset($_GET['dia_actual'])){
	$dia_actual = $_GET['dia_actual'];
}
if(isset($_GET['nuevo_mes'])){
	$nuevo_mes = $_GET['nuevo_mes'];
}
if(isset($_GET['nuevo_ano'])){
	$nuevo_ano = $_GET['nuevo_ano'];
}
$fecha_bus = $nuevo_ano.'/'.$nuevo_mes.'/'.$dia_actual;

if(isset($_GET['ruta'])){
	$ruta = $_GET['ruta'];
}
if(isset($_GET['ruta'])){
	$ruta = $_GET['ruta'];
}
if(isset($_GET['desde'])){
	$desde = $_GET['desde'];
}
if(isset($_GET['hasta'])){
	$hasta = $_GET['hasta'];
}
echo '<table id="bann2_1">';
if((empty($dia_actual))&&(empty($ruta))){
	echo 	'<tr>';
	echo 		'<td id="bann2_1td1">';
	echo 			'<h1>Choose a date <br>to see availability</h1>';
	echo 		'</td>';
	echo 	'</tr>';
}elseif(($ruta=='login.php')||($ruta=='confirm.php')||($ruta=='account.php')){

}else{
	include_once("classes/restaFechas.class.php");
	include_once("classes/mysql.php");
	$mysql = new MySQL();
	if(empty($dia_actual)){
		$seleccion = '';
	}else{
		$seleccion = ' WHERE id = '.$dia_actual;
	}
	if(empty($carro[$user]['villa'])){
		$caal = '';
	}else{
		$caal = ' WHERE id = '.$carro[$user]['villa'];
	}
	$sql = $mysql->consulta("SELECT id,nombre FROM catalogo_index".$caal);
		while($row=$mysql->fetch_array($sql)){
			$idd	= $row[0];
			$nombre	= $row[1];
//			$precio = $row[2];
			$sql_comprar = $mysql->consulta("SELECT id,desde,hasta FROM comprar_index WHERE catalogo = '$idd' AND '$fecha_bus' BETWEEN desde AND hasta");
			extract($_SESSION);
			$calculoDias =diferenciaEntreFechas($carro[$user]['fecha_B'],$carro[$user]['fecha_A'],"DIAS",FALSE);
			$precio=$carro[$user]['precio'];
			$precio_total=($precio*$calculoDias);
			$row_comprar = $mysql->fetch_array($sql_comprar);
			if(($row_comprar[0]=='')&&($_SESSION['user']!='')){
				$availability = ' is available';
				if(($carro[$user]['fecha_A']!='')&&($carro[$user]['fecha_B']=='')){
					$now='Now, select a date for "until" and if it´s available, press here again';
				}elseif(($carro[$user]['fecha_A']!='')&&($carro[$user]['fecha_B']!='')){
					$now='You have selected from: '.$carro[$user]['fecha_A'].'<br> until: '.$carro[$user]['fecha_B'];
				}else{
					$now='Click here for set <strong>from: '.$nuevo_mes.'/'.$dia_actual.'/'.$nuevo_ano.'</strong> in your budget request';
				}
				$apart ='<a href="availability.php?ruta=agregacar.php&nuevo_mes='.$nuevo_mes.'&nuevo_ano='.$nuevo_ano.'&dia_actual='.$dia_actual.'&villa='.$row[0].'">'.$now.'<br></a>';
			}elseif(($row_comprar[0]=='')&&($_SESSION['user']=='')){
				$availability = ' is available for '.$nuevo_mes.'/'.$dia_actual.'/'.$nuevo_ano.', but you should sign in for scheduling';
				$apart = '<a href="sesion.php">sign in</a>';
			}else{
				$availability = 'not available';
				$apart='';
			}
			echo 	'<tr>';
			echo 		'<td id="bann2_1td1">';
			echo 			'<h1>'.$row[1].'</h1>';
			echo 			'<h2>'.$availability.'</h2>';
			echo 			$apart;
			echo 		'</td>';
			echo 	'</tr>';
		}
}
			echo 	'<tr>';
			echo 		'<td>';
/*			echo 			'<a href="'.$_SERVER['PHP_SELF'].'?ruta=llena.php">';
			echo				'ver carro';
			echo			'</a><br>';*/
		if(!empty($carro[$user])){
			echo '<strong>'.$nombre.' villa</strong>.- Budget requested by: '.$user.'<br>';
		if(!empty($carro[$user]['fecha_B'])){
			echo $calculoDias.' days <br>';
		}
			echo '(From: '.$desde = $carro[$user]['fecha_A'];
			echo ' To: '.$hasta = $carro[$user]['fecha_B'];
			echo ')<br>';
/*		if(!empty($carro[$user]['fecha_B'])){
			echo 'Price: us$'.number_format($precio_total,2);
		}*/
			$desdee = date('Y/m/d', strtotime($desde));
			$hastae = date('Y/m/d', strtotime($hasta));
//			echo ' (price per night: us$'.number_format($precio,2).')<br>';
			if(($carro[$user]['fecha_A']!='')&&($carro[$user]['fecha_B']!='')){
			echo '<form method="post" action="availability.php?ruta=ip_confirm.php">';
			echo '<input type="hidden" name="user" value="'.$user.'">';
			echo '<input type="hidden" name="catalogo" value="'.$idd.'">';
			echo '<input type="hidden" name="precio" value="'.$precio.'">';
			echo '<input type="hidden" name="suma" value="'.$precio_total.'">';
			echo '<input type="hidden" name="desde" value="'.$desdee.'">';
			echo '<input type="hidden" name="hasta" value="'.$hastae.'">';
			echo '<input type="submit" value="Confirm">';
			echo '</form>';
			}
			echo '<br><br>';
			echo '<a href="availability.php?ruta=borra.php">';
			echo 'reset';
			echo '</a>';
			echo 		'</td>';
			echo 	'</tr>';
		}
echo '</table>';