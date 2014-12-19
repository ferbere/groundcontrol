<?php 
session_start(); 
include_once("../classes/mysql.php");
$mysql = new MySQL();
?>
<div align="center">
	<table>
	<tr>
		<td>
<?php
extract($_SESSION);
$sql = $mysql->consulta("SELECT * FROM usuario_index WHERE user = '$user' ");
while ($row = $mysql->fetch_array($sql)){
	echo 'El domicilio de entrega de su compra es...
'.$row['domicilio'].'. En '. $row['poblacion'].'.'."\n".'Su código postal es'."\n".$row['cp'].','. "\n".'en '.$row['pais'];
}
?>
		</td>
	</tr>
		<tr>
			<td>
<?php
//termina envío
//Empieza cuenta
print 'Haga su depósito, por favor, en pesos mexicanos, en la Sucursal número:
de Banamex, en la cuenta 25289, por la cantidad de $'. number_format($_GET['costo'],2).'.<br>';

echo "<pre>";
//print_r($_SESSION);
$viaje=serialize($carro);
$viajee=urlencode($viaje);
//print_r ($viajee);

echo "</pre>";
$contador=0;
$suma=0;
?>
<?php
 foreach($carro as $k => $v){
 $subto=$v['cantidad']*$v['precio'];
 $suma=$suma+$subto;
 $contador++;

}
//termina cuenta
//Empieza forma envío datos a la DB
//echo http_build_query($_SESSION);
?>
<form action="comprar.php" method="get">
<input type="hidden" name="ruta" value="ip_terminar.php">
<input type="hidden" name="user" value="<?php echo $user ?>">
<input type="hidden" name="pedido" value="<?php print $viajee ?>">
<input type="hidden" name="suma" value="<?php echo $suma ?>">
<?php
?>
<input type="submit" value="enviar">
</form>
			</td>
		</tr>
	</table>
</div>
