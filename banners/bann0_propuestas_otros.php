<?php
include_once("classes/recorte.php");
include_once("classes/mysql.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
?>
<div id="opinion_ant">
	<div id="opinion_ant_sec">Otras propuestas</div>
<?php
$sql = $mysql->consulta("SELECT id,nombre,texto FROM perfil_iniciativa WHERE categoria = 1 AND id != '$rubro' ORDER BY id DESC LIMIT 10");
		echo '<ul>';
while($row = $mysql->fetch_array($sql)){
		//echo '<div id="opinion_ant_img">';
		
		//echo '</div>';
		echo '<li id="opinion_ant_cont">';
		echo 	'<a href="propuestas.php?rubro='.$row[0].'">';
		echo 		$row[1];
		//echo 	'<img src="images/articulos/'.$row[2].'">';
		echo 	'</a>';
		echo '</li>';
} ?>
	</ul>
</div>