<?php
session_start();
extract($_SESSION);
include_once("../classes/mysql.php");
$mysql = new MySQL();
$sql = $mysql -> consulta("SELECT * FROM comprar_index WHERE user = '$user' ORDER BY id DESC ");
$cuenta = $mysql->num_rows($sql);
if(empty($cuenta)){
	echo	"El usuario <b>".$user.'</b> no tiene movimientos registrados.';
}else{
	echo	"El usuario <b>".$user.'</b> tiene registrados los siguientes movimientos:<br><br>';
}
?>
<script language=javascript> 
function ventanaSecundaria (URL){ 
   window.open(URL,"ventana1","width=700 height=600 scrollbars=NO",titlebar="yes") 
} 
</script>
<?php
while($row = $mysql -> fetch_array($sql)){
	$pedido=$row["pedido"];
	$urldecode=urldecode($pedido);
	$unserialize=unserialize($urldecode);
	echo '<table style="width:100%">';
	echo '<tr>';
	echo '<td style="border:1px dotted" colspan="4">Operación: '.$row['id']."\n";
	echo 'Realizada el día '.$row['fecha']."\n";
	echo ', a las '.$row['hora'].'.</td>';
	echo '</tr>';
//	print_r ($unserialize);
	$contador=0;
	$suma=0;
	 foreach($unserialize as $k => $v){
	 	$subto=$v['cantidad']*$v['precio'];
		 $suma=$suma+$subto;
		 $contador++;
		if(!empty($v['comentario'])){
			$com = "javascript:ventanaSecundaria('comprar/comen.php?rubro=".$row['id']."')";
			
			$comen='<td><a href="'.$com.'">Comentario</a></td>';
		}else{
			$comen = '<td></td>';
		}
		echo '<tr>';
		echo '<td style="width:10%;"></td>';
		echo '<td style="width:40%;">Concepto: '.$v['nombre'].'</td>';
		echo '<td style="width:20%;">Cantidad: '.$v['cantidad'].'</td>';
		echo '<td style="width:30%; text-align:right">Precio unitario: <b>$'.number_format($v['precio'],2).'</b></td>';
		echo '</tr>';
	}
		echo '<tr>';
		echo $comen;
		echo '<td colspan="2" style="text-align:right;">';
		echo '<strong>Monto total:</td>';
		echo '<td style="text-align:right;">';
		echo '<b>$'.number_format($row['suma'],2).'</b>';
		echo '</strong></td>';
		echo '</tr>';
		echo '</table>';
}
?>