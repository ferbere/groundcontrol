<div id="contacto_form">
<br><br>
	<h1>Contacto</h1>
<?php
if(isset($_GET['robru'])){
	$robru=$_GET['robru'];
}
if(isset($_POST['robru'])){
	$robru=$_POST['robru'];
}
echo '<div id="contact-form">';
if(empty($robru)){
/*		include_once("classes/conex.php");
		$link=Conectarse();

		$sql_u=mysql_query("SELECT url,pagina FROM template_general",$link);
		$url=mysql_fetch_array($sql_u);
		if($url[1]==''){
			$url_d='../ferberenet/gadgets/robrus/exe_if_robru.php';
		}else{
			$url_d='http://'.$url[1].'/'.$_SESSION['admin'].'gadgets/robrus/exe_if_robru.php';
		}
		include($url_d);*/
?>
	<form action="contacto.php" method="post">
	<input type="hidden" name="robru" value="1">
	<input type="text" name="titulo" placeholder="Title" style="width:65%">
	<input type="text" name="email" placeholder="Your email address" style="width:65%">
	<input type="text" name="nombre" placeholder="Your fullname" style="width:65%">
	<textarea name="mensaje"  style="width:65% " rows="7"  placeholder="Your message"></textarea><br>
<!--	<input type="image"  src="style/images/enviar.png" class="rollover">-->
	<input type="submit">
<?php
}elseif($robru==1){
	include_once('classes/conex.php');
	include_once('classes/sacar.class.php');
	$link=Conectarse();
	if(isset($_POST['dirigido'])){
		$dirigido=$_POST['dirigido'];
	}
	if(isset($_POST['nombre'])){
		$nombre=$_POST['nombre'];
	}
	if(isset($_POST['titulo'])){
		$titulo=$_POST['titulo'];
	}
	if(isset($_POST['mensaje'])){
		$mensaje=$_POST['mensaje'];
	}
	if(isset($_POST['email'])){
		$email=$_POST['email'];
	}
	if(isset($_POST['ip'])){
		$ip=$_POST['ip'];
	}
	if(empty($ip)){
		$ip=$_SERVER['REMOTE_ADDR'];
		}
	$sql=mysql_query("INSERT INTO mails_index (nombre,titulo,mensaje,email,dirigido,ip) VALUES ('{$nombre}','{$titulo}','{$mensaje}', '{$email}', '{$dirigido}', '{$ip}')",$link);
		if(!$sql){
		die ("chispas:" .mysql_error());
		}else{
			$liga= "contacto.php?robru=2";
			echo '<script>window.location.href="'.$liga.'";</script>';
		}
}elseif($robru==2){
	include_once("classes/conex.php");
	$link=Conectarse();
	$sql=mysql_query("SELECT contenido FROM corporativa_index WHERE id = 3 ",$link);
	while ($row=mysql_fetch_array($sql)){
		echo $row['contenido'];
	}
}
?>
<br><br>
	</div>
</div>
