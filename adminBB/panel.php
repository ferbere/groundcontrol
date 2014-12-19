<?php
session_start();
if($_SESSION["estado"]=="Autenticado"){
//	header("Location:../admin");
	include_once("../classes/mysql.php");
	$mysql = new MySQL();
	extract($_SESSION);	
	$sql = $mysql->consulta("SELECT * FROM usuario_privilegios INNER JOIN gadgets_index ON gadgets_index.privilegios >= usuario_privilegios.id WHERE gadgets_index.visible = 1 AND usuario_privilegios.nombre = '$privilegioss'");
?>	
		<table>
			<tr>
				<td>
<?php
	while ($row = $mysql->fetch_array($sql)){
		echo '<a href="'.$row['gadget'].'.php?ruta='.$row['ruta'].'"><img src="../admin/images/'.$row['gadget'].'.jpg" class="rollover"></a>';
	}
?>
				</td>
			</tr>
		</table>
<?php
}else{
	header("Location: sesion/index.php");
	/*
	if(isset($_POST['capturado'])){
		$capturado=$_POST['capturado'];
	}
	if(isset($_GET['adios'])){
		$adios=$_GET['adios'];
	}
	if(empty($capturado)){
		include("sesion/login.php");
	}else{
		include("ses.php");
	}
	echo $capturado;
	*/
}

?>