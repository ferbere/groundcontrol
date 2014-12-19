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

	<link rel="stylesheet" href="library/jquery.innerfade/css/reset.css"  type="text/css" media="all" />
	<link rel="stylesheet" href="library/jquery.innerfade/css/fonts.css"  type="text/css" media="all" />
	<style type="text/css" media="screen, projection">
				@import url(css/jq_fade.css);
	</style>		
</head>
<body>				
<?php
include_once("../classes/conex.php");
$link=Conectarse();
$sql=mysql_query("SELECT catalogo_index2.imagen,catalogo_ext.nombre FROM catalogo_index2 INNER JOIN catalogo_ext ON catalogo_index2.ext = catalogo_ext.id INNER JOIN catalogo_categoria ON catalogo_index2.categoria = catalogo_categoria.id WHERE catalogo_index2.visible = 1 AND catalogo_categoria.nombre = 'Index' ", $link);

$sql2=mysql_query("SELECT catalogo_index2.nombre,catalogo_index2.descripcion FROM catalogo_index2 INNER JOIN catalogo_categoria ON catalogo_index2.categoria = catalogo_categoria.id WHERE catalogo_index2.visible = 1 AND catalogo_categoria.nombre = 'Index' ", $link);

?>
<div id="bann0-1">
	<div id="bann0-1border">
		<div class="limiter">
			<ul id="portfolio">
<?php
while ($row=mysql_fetch_array($sql)){
	?>
				<li>
					<div id="gallery">
					<a href="images/catalogo/<?php echo $row[0].'.'.$row[1] ?>">
						<img src="images/catalogo/<?php echo $row[0].'.'.$row[1] ?>"/>
					</a>
					</div>
				</li>
<?php
}
?>
			</ul>
		</div>
	</div>
	<div id="bann0-2">
		<h1>Welcome</h1>
	
		<ul id="pork">
		<?php
		while ($row2=mysql_fetch_array($sql2)){
			?>
			<li>
				<h2><?php echo $row2[0]; ?></h2>
				<?php echo $row2[1]; ?>
			</li>
		<?php
		}
		?>
		</ul>
	
	</div>
</div>
			</body>