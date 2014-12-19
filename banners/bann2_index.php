<?php
include_once("classes/mysql.php");
$mysql=new MySQL();
$sql = $mysql->consulta("SELECT imagen FROM banners_index WHERE banner = 2");
$cuenta = $mysql->num_rows($sql);
?>
<script type="text/javascript">
$(function() {
    $('#galleryS a').lightBox();
});
</script>

<div class="bann2">
	<?php
	while($row=$mysql->fetch_array($sql)){
		echo 	'<a href="images/banners/incump.php" target="_blank">';
		echo 		'<img src="images/banners/'.$row[0].'">';
		echo 	'</a>';
	}
	?>
</div>