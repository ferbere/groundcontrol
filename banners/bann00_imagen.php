<head>
	<script type="text/javascript" src="library/jquery.innerfade/js/jquery.innerfade.js"></script>
	<script type="text/javascript">
   $(document).ready(
			function(){			
				$('ul#portfolio').innerfade({
					speed: 1000,
					timeout: 5000,
					type: 'sequence',
					containerheight: '220px'
				});
				$('ul#pork').innerfade({
					speed: 1000,
					timeout: 5000,
					type: 'sequence',
					containerheight: '220px'
				});

		});
</script>
<script type="text/javascript">
$(function() {
    $('#gallery a').lightBox();
});
</script>
<style>
	li{
		list-style: none;;
	}
</style>
</head>
<?php
include_once("classes/mysql.php");
include("classes/cuenta.class.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
$sql = $mysql->consulta("SELECT imagen FROM banners_index WHERE visible = 1 AND banner = 0 ORDER BY id ASC");
while($row = $mysql->fetch_array($sql)){
	$imagen		= $row[0];
	?>
				<ul id="portfolio">
<li>
					<div id="gallery">
	<div id="bann00_imagen">
		<img src="images/banners/<?php echo $imagen; ?>">
	</div>
</div>
</li>
	<?php
}
?>
</ul>