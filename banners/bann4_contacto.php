<table id="bann4_1">
	<tr>
		<td id="bann4_2a">
<?php
session_start();
include_once("classes/mysql.php");
$mysql = new MySQL();
$mysql2 = new MySQL();
if($_SESSION['lang']=='en'){
	$sql = $mysql->consulta("SELECT gadgets_botones.imagen,general_ext.nombre,gadgets_botones.nombre,gadgets_botones.ruta FROM gadgets_botones INNER JOIN general_ext ON gadgets_botones.ext = general_ext.id WHERE gadgets_botones.posicion = 4 ");
	
	$sql2 = $mysql2->consulta("SELECT gadgets_botones.imagen,general_ext.nombre,gadgets_botones.nombre,gadgets_botones.ruta FROM gadgets_botones INNER JOIN general_ext ON gadgets_botones.ext = general_ext.id WHERE gadgets_botones.posicion = 6 AND gadgets_botones.id < 12 ");
	
}else{
	$sql = $mysql->consulta("SELECT gadgets_botones.imagen,general_ext.nombre,language_content.nombre,gadgets_botones.ruta FROM gadgets_botones INNER JOIN general_ext ON gadgets_botones.ext = general_ext.id INNER JOIN language_content ON gadgets_botones.imagen = language_content.imagen WHERE gadgets_botones.posicion = 4 ");	
	
	$sql2 = $mysql2->consulta("SELECT gadgets_botones.imagen,general_ext.nombre,language_content.nombre,gadgets_botones.ruta FROM gadgets_botones INNER JOIN general_ext ON gadgets_botones.ext = general_ext.id INNER JOIN language_content ON gadgets_botones.imagen = language_content.imagen WHERE gadgets_botones.posicion = 6 AND gadgets_botones.id < 12 ");
	
}

while($row=$mysql->fetch_array($sql)){
	echo '<div id="bann4_btn">';
/*	if($row[0]=='g+'){
	echo	'<div class="g-plusone" data-annotation="bubble"';
	}*/
	echo '<a href="'.$row[3].'"><img src="style/images/'.$row[0].'.'.$row[1].'"></a>';
/*	if($row[0]=='g+'){
	echo '</div>';
	}*/
	echo $row[2];
	echo '</div>';
	echo '<div id="bann4_btn_fin"></div>';
}
	echo '</td>';
	echo '<td id="bann4_2b">';
	echo '<table>';
	echo 	'<tr>';
while($row2=$mysql2->fetch_array($sql2)){
	echo 		'<td id="bann4_btn2">';
	echo 			'<div id="bann4_btn2_int">';
	echo 				'<a href="'.$row2[3].'">';
	if($row2[1]=='ninguno'){
		echo 				'<div id="cal">';
		echo 				'<div id="cal2">'.date("M").'</div>';
		echo 				'<div id="calBig">'.date("d").'</div>';
		echo 				'</div>';
	}else{
		echo 				'<img src="style/images/'.$row2[0].'.'.$row2[1].'">';		
	}
	echo 				'</a><br>';
	echo 			$row2[2];
	echo 			'</div>';
	echo 		'</td>';
}
	echo 	'</tr>';
	echo '</table>';
?>
		</td>
			<td id="bann4_2c">
				<?php include("banners/bann4_contacto2.php"); ?>
			</td>
	</tr>
</table>