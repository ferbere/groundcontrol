<?php session_start();
/*error_reporting(E_ALL);
@ini_set('display_errors', '1');*/
/*extract($_GET);
extract($_SESSION);*/
//Como antes, usamos extract() por comodidad, pero podemos no hacerlo tranquilamente
$carro=$_SESSION['carro'];
//Asignamos a la variable $carro los valores guardados en la sessi�n
unset($_SESSION['carro']);
//la funci�n unset borra el elemento de un array que le pasemos por par�metro. En este
//caso la usamos para borrar el elemento cuyo id le pasemos a la p�gina por la url 
//$_SESSION['carro']=$carro;
//Finalmente, actualizamos la sessi�n, como hicimos cuando agregamos un producto y volvemos al cat�logo
header("Location:availability.php");
?>