<?php 
session_start();
if($_SESSION["estado"]=="Autenticado"){
	$link=Conectarse();
	include("../library/confirm.php");
	include("../library/tinymce.php");
	if(isset($_GET['capturado'])){
		$capturado=$_GET['capturado'];
	}
	if(isset($_GET['rubro'])){
		$rubro=$_GET['rubro'];
	}
		$sql=mysql_query("SELECT id,titulo,mensaje,grupo,enviado FROM mails_massive_mensajes WHERE id = '$rubro' ",$link);
		while($row=mysql_fetch_array($sql)){
			$id			= $row[0];
			$titulo		= $row[1];
			$mensaje	= $row[2];
			$grupo		= $row[3];
			$enviado	= $row[4];
		}
?>
<div id="form-main">
	<div id="maincontent-tit">
		Redactar correo masivo<br><br>
	</div>
		<div id="maincontent-body">
			<form method="post" action="gadgets/mensajes/ip_massive_mail_a.php">
			<input type="text" name="titulo" value="<?php echo $titulo ?>" style="width:100%"><br><br>
			<textarea name="mensaje"  style="width:100% " rows="7"><?php echo $mensaje ?></textarea><br>
		<div>
<?php
if(empty($capturado)){
}
?>
			Grupo:<br>
			<select name="grupo">
<?php
	$sqlCat=mysql_query("SELECT id,nombre FROM mails_massive_grupo ORDER BY id ASC ",$link);
	while($rowCat=mysql_fetch_array($sqlCat)){
		if($grupo!=$rowCat['id']){
			$hig= 'nain';
		}else{$hig="selected";}
			echo '<option value="'.$rowCat['id'].'"'.$hig.'>'.$rowCat['nombre'].'</option>';
		}
?>
			</select><br><br>
			
			
				Enviado:<br>
				<select name="enviado">
	<?php
		$sqlEnv=mysql_query("SELECT id,nombre FROM mails_massive_enviados ORDER BY id ASC ",$link);
		while($rowEnv=mysql_fetch_array($sqlEnv)){
			if($enviado!=$rowEnv['id']){
				$hig_Env= 'nain';
			}else{
				$hig_Env="selected";}
				echo '<option value="'.$rowEnv['id'].'"'.$hig_Env.'>'.$rowEnv['nombre'].'</option>';
			}
	?>
				</select><br><br>
			
			
		</div>
			<input type="hidden" name="rubro" value="<?php echo $rubro ?>">
			<input type="submit" value="Guardar">
		</div>
<?php
}else{
	echo "Usted no tiene acceso a esta seccción";
}
?>