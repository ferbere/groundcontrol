<?php
include_once('classes/mysql.php');
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
if(empty($rubro)){
	$rubro=14;
}
	$sql=$mysql->consulta("SELECT nombre,email FROM perfil_index WHERE id = ".$rubro);
	$row=$mysql->fetch_array($sql);
	$dirigido=$row[0];
	$dirigido_mail=$row[1];
if($rubro!=14){
	echo '<b>Mensaje dirigido a: </b><br>'.$dirigido;
}
?>
<div id="contact-form">
	<form action="admin/gadgets/mensajes/exe_mail.php" method="post">
	<input type="hidden" name="dirigido" value="<?php echo $dirigido ?>">
	<input type="hidden" name="dirigido_mail" value="<?php echo $dirigido_mail ?>">
	<input type="text" name="titulo" placeholder="Título" style="width:65%">
	<input type="text" name="email" placeholder="Su correo-e" style="width:65%">
	<input type="text" name="nombre" placeholder="Su nombre completo" style="width:65%">
	<textarea name="mensaje"  style="width:65% " rows="7"  placeholder="Su mensaje"></textarea><br>
<!--	<input type="image"  src="style/images/enviar.png" class="rollover">-->
	<input type="submit">
</div>
	