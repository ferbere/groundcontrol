<?php
require_once("classes/fecha.class.php");
?>
<div>
	<div id="fecha"><?php
echo actual_date();
?>
	</div>
		<div id="buscar">
			<form action="buscar.php" method="get">
				<input id="buscar_input" type="search" name="criterio" placeholder="Buscar" >
				<input id="submit_input" type="submit" value="">
			</form>
		</div>
</div>