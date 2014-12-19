<?php header("Location: ".$_SERVER['HTTP_REFERER']);
session_start();
include("style/header.html"); ?>
<title>sii</title>
<?php
//require("conex.php");
$link=Conectarse();
if(isset($_GET['modify'])){
$modify=$_GET['modify'];
if(isset($_GET["rubro"])){
if(isset($_GET["bole"])){
$rubro=$_GET["rubro"];
$bole=$_GET["bole"];
}
}
}
if($modify==1){
if(isset($_GET["titulo"])){
if(isset($_GET["autor"])){
if(isset($_GET["categoria"])){
if(isset($_GET["contenido"])){
$titulo=$_GET["titulo"];
$autor=$_GET["autor"];
$categoria=$_GET["categoria"];
$contenido=$_GET["contenido"];
}
}
}
}
$que=mysql_query("UPDATE cafeco_post SET titulo = '$titulo', autor = '$autor', categoria = '$categoria', contenido = '$contenido' WHERE id_post = $rubro",$link);
if(!$que){die ("chispas:" .mysql_error());
}
}elseif($modify==10){ //Sigue Modificar Categoría Menu
if(isset($_GET["id"])){
if(isset($_GET["categoria"])){
$id=$_GET["id"];
$categoria=$_GET["categoria"];

}
}
$que=mysql_query("UPDATE cafeco_categoria_t SET id = '$id', categoria = '$categoria' WHERE id = '$rubro'",$link);
if(!$que){die ("chispas:" .mysql_error());
}

}elseif($modify==2){ //Sigue Modificar PRENSA
if(isset($_GET["liga"])){
if(isset($_GET["ruta"])){
if(isset($_GET["contenido"])){	
$liga=$_GET["liga"];
$ruta=$_GET["ruta"];
$contenido=$_GET["contenido"];
}
}
}
$que=mysql_query("UPDATE cafeco_ligas SET liga = '$liga', ruta = '$ruta', contenido = '$contenido' WHERE id = '$rubro'",$link);
if(!$que){die ("chispas:" .mysql_error());
}

}elseif($modify==3){
if(isset($_GET["titulo"])){
if(isset($_GET["subtitulo"])){
if(isset($_GET["contenido"])){
if(isset($_GET["precio"])){	
if(isset($_GET["imagen"])){	
if(isset($_GET["categoria"])){	
$titulo=$_GET["titulo"];
$subtitulo=$_GET["subtitulo"];
$descripcion=$_GET["descripcion"];
$precio=$_GET["precio"];
$imagen=$_GET["imagen"];
$grupo=$_GET["categoria"];
//$bole=$row["id"]; 

}
}
}
}
}
}
$que=mysql_query("UPDATE cafeco_menu_t SET titulo = '$titulo', subtitulo = '$subtitulo', descripcion = '$descripcion', precio = '$precio', imagen = '$imagen', categoria = '$categoria' WHERE id = $rubro",$link);
if(!$que){die ("chispas:" .mysql_error());
} 
}elseif($modify==4){ //Modificar Contenidos
	if(isset($_GET["rubro"])){
	if(isset($_GET["titulo"])){
	if(isset($_GET["subtitulo"])){
	if(isset($_GET["contenido"])){
//	if(isset($_GET["comentario"])){	
//	if(isset($_GET["pie"])){
//	if(isset($_GET["imagen"])){
	$rubro=$_GET["rubro"];
	$titulo=$_GET["titulo"];
	$subtitulo=$_GET["subtitulo"];
	$contenido=$_GET["contenido"];
//	$comentario=$_GET["comentario"];
//	$pie=$_GET["pie"];
//	$imagen=$_GET["imagen"];
	//$bole=$row["id"]; 
//	}
//	}
//	}
	}
	}
	}
	}
	$que=mysql_query("UPDATE cafeco_contenido SET titulo = '$titulo', subtitulo = '$subtitulo', contenido = '$contenido'  WHERE id = '$rubro'",$link);
	if(!$que){die ("chispas:" .mysql_error());
	}
	}elseif($modify==5){ //Sigue Modificar Artistas
	if(isset($_GET["nombre_a"])){
	if(isset($_GET["mail_a"])){
	if(isset($_GET["foto_a"])){	
	if(isset($_GET["perfil"])){	
	if(isset($_GET["grupo"])){	
	$nombre_a=$_GET["nombre_a"];
	$mail_a=$_GET["mail_a"];
	$foto_a=$_GET["foto_a"];
	$perfil=$_GET["perfil"];
	$grupo=$_GET["grupo"];
}
}
}
}
}
$que=mysql_query("UPDATE cafeco_autores SET nombre_a = '$nombre_a', mail_a = '$mail_a', foto_a = '$foto_a', perfil = '$perfil', grupo = '$grupo' WHERE id = '$rubro'",$link);
if(!$que){die ("chispas:" .mysql_error());
}
}elseif($modify==6){//Sigue Modificar Obra
if(isset($_GET["autor"])){
if(isset($_GET["titulo"])){
if(isset($_GET["tecnica"])){
if(isset($_GET["medidas"])){
if(isset($_GET["precio"])){	
if(isset($_GET["imagen"])){	
if(isset($_GET["grupo"])){	
if(isset($_GET["vendido"])){
$autor=$_GET["autor"];
$titulo=$_GET["titulo"];
$tecnica=$_GET["tecnica"];
$medidas=$_GET["medidas"];
$precio=$_GET["precio"];
$imagen=$_GET["imagen"];
$grupo=$_GET["grupo"];
$vendido=$_GET["vendido"];
}
}
}
}
}
}
}
}
$que=mysql_query("UPDATE cafeco_obra SET autor = '$autor', titulo = '$titulo', tecnica = '$tecnica', medidas = '$medidas', precio = '$precio', imagen = '$imagen', grupo = '$grupo', vendido = '$vendido' WHERE id = $rubro",$link);
if(!$que){die ("chispas:" .mysql_error());
} 
}elseif($modify==7){//Sigue Modificar Eventos
include("funciones.php");
fechamysql();
if(isset($_GET["evento"])){
if(isset($_GET["categoria"])){
if(isset($_GET["descripcion"])){
if(isset($_GET["fecha"])){	
$evento=$_GET["evento"];
$categoria=$_GET["categoria"];
$descripcion=$_GET["descripcion"];
$fecha=$_GET["fecha"];
$fechaa=fechamysql($fecha);
}
}
}
}
$que=mysql_query("UPDATE cafeco_eventos SET evento = '$evento', categoria = '$categoria', descripcion = '$descripcion', fecha = '$fechaa' WHERE id = $rubro",$link);
if(!$que){die ("chispas:" .mysql_error());
} 
}elseif($modify==8){ //Modificar Tips Gourmet
		if(isset($_GET["rubro"])){
		if(isset($_GET["titulo"])){
		if(isset($_GET["subtitulo"])){
		if(isset($_GET["contenido"])){
		if(isset($_GET["publicado"])){	
		if(isset($_GET["imagen"])){	
	//	if(isset($_GET["pie"])){
	//	if(isset($_GET["imagen"])){
		$rubro=$_GET["rubro"];
		$titulo=$_GET["titulo"];
		$subtitulo=$_GET["subtitulo"];
		$contenido=$_GET["contenido"];
		$publicado=$_GET["publicado"];
		$imagen=$_GET["imagen"];
	//	$pie=$_GET["pie"];
	//	$imagen=$_GET["imagen"];
		//$bole=$row["id"]; 
	//	}
	//	}
}
}
}
}
}
}
$que=mysql_query("UPDATE cafeco_tipsgourmet SET titulo = '$titulo', subtitulo = '$subtitulo', contenido = '$contenido', publicado = '$publicado', imagen = '$imagen'  WHERE id = '$rubro'",$link);
if(!$que){die ("chispas:" .mysql_error());
}
}elseif($modify==9){//Sigue Modificar Eventos Foto
if(isset($_GET["evento"])){
if(isset($_GET["descripcion"])){
if(isset($_GET["imagen"])){	
$evento=$_GET["evento"];
$descripcion=$_GET["descripcion"];
$imagen=$_GET["imagen"];
}
}
}
$que=mysql_query("UPDATE cafeco_eventofoto SET evento = '$evento', descripcion = '$descripcion', imagen = '$imagen' WHERE id = $rubro",$link);
if(!$que){die ("chispas:" .mysql_error());
} 
}elseif($modify==11){ //Sigue Modificar Red Social
if(isset($_GET["titulo"])){
if(isset($_GET["imagen"])){
if(isset($_GET["participan"])){	
$titulo=$_GET["titulo"];
$imagen=$_GET["imagen"];
$participan=$_GET["participan"];
}
}
}
$que=mysql_query("UPDATE cafeco_social SET titulo = '$titulo', imagen = '$imagen', participan = '$participan' WHERE id = '$rubro'",$link);
if(!$que){die ("chispas:" .mysql_error());
}

}elseif($modify==14){ //Sigue Modificar contactos
if(isset($_GET["nombre"])){
if(isset($_GET["apellidos"])){
if(isset($_GET["mail"])){	
$nombre=$_GET["nombre"];
$apellidos=$_GET["apellidos"];
$mail=$_GET["mail"];
}
}
}
$que=mysql_query("UPDATE cafeco_contactos SET nombre = '$nombre', apellidos = '$apellidos', mail = '$mail' WHERE id = '$rubro'",$link);
if(!$que){die ("chispas:" .mysql_error());
}

}

include("style/footer.html"); ?>