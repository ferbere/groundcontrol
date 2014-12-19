<?php
include_once("classes/mysql.php");
$mysql=new MySQL();
$sql = $mysql->consulta("SELECT imagen FROM banners_index WHERE banner = 0");
?>
<div class="bann2">
	<?php
	while($row=$mysql->fetch_array($sql)){
		echo 	'<a href="encuesta.php">';
		echo 		'<img src="images/banners/'.$row[0].'">';
		echo 	'</a>';
	}
	?>
</div>