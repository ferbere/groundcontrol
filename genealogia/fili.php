<?php
session_start();
include_once("classes/mysql.php");
$mysql=new MySQL();
//HIJOS
echo '<h3>Sus hijos:</h3>';
$pater_sql=$mysql->consulta("SELECT fili,parent_f,parentesco FROM genealogia_fili  WHERE parent_f = '$rubro'  ");
$pater_hay=$mysql->num_rows($pater_sql);
echo '<table style="width:500px">';
if($pater_hay ==0 && $row['fecha_fal']==0 && $row['fecha_nac']== 0){
	echo "No tengo suficientes registros sobre su descendencia.";
}elseif($pater_hay==0 && $row['fecha_fal']==0 && $row['fecha_nac']>0){
	echo "No ha tenido aún.";
}elseif($pater_hay==0 && $row['fecha_fal']>0){
	echo 'No tuvo hijos.';
}elseif($pater_hay>0){
	while ($pater_row=$mysql->fetch_array($pater_sql)){
	$fili= $pater_row['fili'];
	$pater_sql2=$mysql->consulta("SELECT nombre,genero,id,foto FROM genealogia_index  WHERE id  = '$fili' ");
	while ($pater_row2=$mysql->fetch_array($pater_sql2)){
		$hijos='<a href="genealogia.php?ruta=perfil.php&rubro='.$pater_row2['id'].'">'.$pater_row2['nombre'].'</a>';
		if($pater_row2['genero']==0){
			$gender="ella"; }else{ $gender="el"; };
			if($pater_row2['foto']==''){
				$foto=$gender;
			}else{
				$foto=$pater_row2['foto'];
			}
			echo '<tr>';
			echo 	'<td>';
			echo 		'<img src="images/articulos/'.$foto.'.jpg" width="50" class="rollover">';
			echo 	'</td>';
			echo 	'<td>';
			echo 		$hijos;
			echo 	'</td>';
			echo '</tr>';
		}
	}
}
?>
	</table>