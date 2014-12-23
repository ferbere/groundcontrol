<?php
require_once('../classes/sacar.class.php');
if(isset($pagina)){
	$pagina=$_GET['pagina'];
}
$pagina= sacar($_SERVER['PHP_SELF'],"/","/cuartelgeneral");
?>
<script>window.location.href="../../ferberenet/cuartelgeneral/index.php?pagina=<?php echo $pagina; ?>"</script>
