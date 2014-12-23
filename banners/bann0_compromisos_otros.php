<?php
include_once("classes/recorte.php");
include_once("classes/mysql.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
?>
<div id="opinion_ant">
	<div id="opinion_ant_sec">Otras compromisos</div>
<?php
$sql = $mysql->consulta("SELECT id,nombre,texto FROM perfil_iniciativa WHERE categoria = 2 AND id != '$rubro' ORDER BY id ASC");
		echo '<ul>';
while($row = $mysql->fetch_array($sql)){
		//echo '<div id="opinion_ant_img">';
		
		//echo '</div>';
		echo '<li id="opinion_ant_cont">';
		echo 	'<a href="compromisos.php?rubro='.$row[0].'">';
		echo 		$row[0].'.- '.$row[1];
		//echo 	'<img src="images/articulos/'.$row[2].'">';
		echo 	'</a>';
		echo '</li>';
} ?>
	</ul>
</div>