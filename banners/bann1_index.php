<?php
include_once("classes/mysql.php");
$mysql=new MySQL();
$sql = $mysql->consulta("SELECT imagen FROM banners_index WHERE banner = 0 ORDER BY orden ASC");
$cuenta = $mysql->num_rows($sql);
?>
<!--<div class="seccion" id="iniciativas">-->
<div id="bann1_index">
	<?php
	while($row=$mysql->fetch_array($sql)){
		echo '<img src="images/banners/'.$row[0].'.jpg">';
	}
	?>
</div>