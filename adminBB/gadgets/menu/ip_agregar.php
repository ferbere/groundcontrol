<?php
session_start();
if($agregar==14){
header("Location: index.php?rubro=9");
}else{
header("Location: ".$_SERVER['HTTP_REFERER']);
}
include("style/header.html"); 
if($_SESSION['privilegios']=="ferbere"){
//require("conex.php");
$link=Conectarse();

if(isset($_GET['agregar'])){
$agregar= $_GET['agregar'];
}	
if($agregar==1){ // Agregar ==1: casarombo_autores
if(isset($_POST['titulo'])){
if(isset($_POST['autor'])){
if(isset($_POST['contenido'])){
if(isset($_POST['categoria'])){
if(isset($_POST['enlace'])){
$titulo=$_POST['titulo'];
$autor=$_POST['autor'];
$contenido=$_POST['contenido'];
$categoria=$_POST['categoria'];
$enlace=$_POST['enlace'];
}
}
}
}
}
	$que=mysql_query("INSERT into cafeco_post (titulo,autor,contenido,categoria,enlace) values ('{$titulo}','{$autor}','{$contenido}', '{$categoria}', '{$enlace}')",$link);
	if(!$que){
		die ("chispas:" .mysql_error());
	}
}
elseif($agregar==2){
$liga=$_POST['liga'];
$ruta=$_POST['ruta'];
$contenido=$_POST['contenido'];
$que=mysql_query("INSERT into cafeco_ligas (liga,ruta,contenido) values ('{$liga}','{$ruta}','{$contenido}')",$link);
if(!$que){die ("chispas:" .mysql_error());
    }
}elseif($agregar==10){ // Agregar ==10: Categoría a cafeco_menu_t
$categoria=$_POST['categoria'];
$que=mysql_query("INSERT into cafeco_categoria_t (categoria) values ('{$categoria}')",$link);
if(!$que){
die ("chispas:" .mysql_error());
}
}elseif($agregar==3){ // Agregar ==3: cafeco_menu_t
$titulo=$_POST['titulo'];
$subtitulo=$_POST['subtitulo'];
$descripcion=$_POST['descripcion'];
$precio=$_POST['precio'];
$categoria=$_POST['categoria'];
$imagen=$_POST['imagen'];
$que=mysql_query("INSERT into cafeco_menu_t (titulo,subtitulo,descripcion,precio,categoria,imagen) values ('{$titulo}','{$subtitulo}','{$descripcion}','{$precio}', '{$categoria}','{$imagen}')",$link);
if(!$que){
	die ("chispas:" .mysql_error());
}
}elseif($agregar==4){ // Agregar ==4: casarombo_contenido
$titulo=$_POST['titulo'];
$subtitulo=$_POST['subtitulo'];
$contenido=$_POST['contenido'];
$que=mysql_query("INSERT into cafeco_contenido (titulo,subtitulo,contenido) values ('{$titulo}','{$subtitulo}','{$contenido}')",$link);
if(!$que){die ("chispas:" .mysql_error());
}
}elseif($agregar==5){ // Agregar ==5: cafeco_autores
if(isset($_POST['nombre_a'])){
if(isset($_POST['mail_a'])){
if(isset($_POST['grupo'])){
if(isset($_POST['foto_a'])){
if(isset($_POST['perfil'])){
	$nombre_a=$_POST['nombre_a'];
	$mail_a=$_POST['mail_a'];
	$grupo=$_POST['grupo'];
	$foto_a=$_POST['foto_a'];
	$perfil=$_POST['perfil'];
}
}
}
}
}
	$que=mysql_query("INSERT into cafeco_autores (nombre_a,mail_a,grupo,foto_a,perfil) values ('{$nombre_a}','{$mail_a}','{$grupo}', '{$foto_a}', '{$perfil}')",$link);
	if(!$que){
		die ("chispas:" .mysql_error());
	}
}
elseif($agregar==6){ // Agregar ==6: cafeco_obra
$titulo=$_POST['titulo'];
$autor=$_POST['autor'];
$tecnica=$_POST['tecnica'];
$medidas=$_POST['medidas'];
$precio=$_POST['precio'];
$grupo=$_POST['grupo'];
$imagen=$_POST['imagen'];
$que=mysql_query("INSERT into cafeco_obra (titulo,autor,tecnica,medidas,precio,grupo,imagen) values ('{$titulo}','{$autor}','{$tecnica}','{$medidas}', '{$precio}', '{$grupo}','{$imagen}')",$link);
if(!$que){
	die ("chispas:" .mysql_error());
}
}elseif($agregar==7){ // Agregar ==7: Evento nuevo
$evento=$_POST['evento'];
$mail_a=$_POST['mail_a'];
$categoria=$_POST['categoria'];
$descripcion=$_POST['descripcion'];
$fecha=$_POST['fecha'];
$que=mysql_query("INSERT into cafeco_eventos (evento,mail_a,categoria,descripcion,fecha) values ('{$evento}','{$mail_a}','{$categoria}','{$descripcion}', '{$fecha}')",$link);
if(!$que){
	die ("chispas:" .mysql_error());
}
}elseif($agregar==8){//Agregar Nuevo Tip Gourmet
$titulo=$_POST['titulo'];
$subtitulo=$_POST['subtitulo'];
$contenido=$_POST['contenido'];
$publicado=$_POST['publicado'];
$que=mysql_query("INSERT into cafeco_tipsgourmet (titulo,subtitulo,contenido,publicado) values ('{$titulo}','{$subtitulo}','{$contenido}','{$publicado}')",$link);
if(!$que){die ("chispas:" .mysql_error());
	}
}elseif($agregar==9){//Agregar Nueva foto Evento
$evento=$_POST['evento'];
$imagen=$_POST['imagen'];
$descripcion=$_POST['descripcion'];
$que=mysql_query("INSERT into cafeco_eventofoto (evento,imagen,descripcion) values ('{$evento}','{$imagen}','{$descripcion}')",$link);
if(!$que){die ("chispas:" .mysql_error());
}
}elseif($agregar==11){ // Agregar ==6: cafeco_social
$titulo=$_POST['titulo'];
$imagen=$_POST['imagen'];
$participan=$_POST['participan'];
$que=mysql_query("INSERT into cafeco_social (titulo,participan,imagen) values ('{$titulo}','{$participan}','{$imagen}')",$link);
if(!$que){die ("chispas:" .mysql_error());
}
}elseif($agregar==14){ // Agregar ==14: cafeco_contactos
$nombre=$_POST['nombre'];
$apelidos=$_POST['apellidos'];
$mail=$_POST['mail'];
$que=mysql_query("INSERT into cafeco_contactos (nombre,apellidos,mail) values ('{$nombre}','{$apellidos}','{$mail}')",$link);
if(!$que){die ("chispas:" .mysql_error());
}
}
}else{
echo "Usted no tiene acceso a esta sección";
}
include("style/footer.html"); ?>