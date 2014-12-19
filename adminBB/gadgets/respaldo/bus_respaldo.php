<?php
$directorio = opendir("./gadgets/respaldo/respaldos/"); //ruta actual
	while ($archivo = readdir($directorio)) //obtenemos un archivo y luego otro sucesivamente
	{
	    if (is_dir($archivo))//verificamos si es o no un directorio
	    {
	//        echo "[".$archivo . "]<br />"; //de ser un directorio lo envolvemos entre corchetes
	    }
	    else
	    {
			$pedazos = explode('.', $archivo);
			$total = count($pedazos);
			$archivo_fin = $pedazos[$total-1];
			if($archivo_fin=='sql'){
				echo '<a href="./gadgets/respaldo/respaldos/descargar.php?f='.$archivo.'">'.$archivo . "</a><br />";
			}
	    }
	}
?>