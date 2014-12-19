<?php
session_start();
include_once("classes/mysql.php");
$mysql=new MySQL();
?>
<div id="perfil">
<?php
$sql = $mysql->consulta("SELECT perfil_index.id,perfil_index.nombre,perfil_categoria.nombre,perfil_index.imagen,perfil_index.descripcion FROM perfil_index INNER JOIN perfil_categoria ON perfil_index.categoria = perfil_categoria.id WHERE perfil_index.id = 4");
while($row = $mysql->fetch_array($sql)){
	echo '<div id="perfil_tit">'.$row[1].'</div>';
	echo '<div id="perfil_subtit">'.$row[2].'</div>';
	echo '<img src="images/perfil/'.$row[3].'">';
	echo '<h1>Trayectoria</h1>';
	echo '<div id="contenido">'.$row[4].'</div>';
}
?>
</div>