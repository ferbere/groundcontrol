<?php
class navBar{
	private $posicion;
	private $cliente;
	private $privilegios;
	private $pr;
	private $evento;
	private $ev;
	private $ruta;
	private $pagado;
	private $catch;
	private $mysql;
	public function __construct($p,$c,$e){//(posición,cliente,evento)
		session_start();
		$this->mysql = new MySQL();
		$this->privilegios = $_SESSION['privilegioss_id'];
		$this->evento = $e;
	    $this->posicion=$p;
	    $this->cliente=$c;
	    $this->pr='';
	    $this->ev=' AND submenu = '.$this->evento;
	    $this->ruta='';
	    $this->pagado='';
	    $this->catch='';
  	}
	public function nB(){
		if($this->privilegios==1){
			$this->pr='';
		}elseif($this->privilegios==null){
			$this->pr='';
		}else{
			$this->pr=' AND privilegios = '.$this->privilegios;
		}
		$sql = $this->mysql->consulta("SELECT ruta,nombre FROM menus_botones WHERE visible = 1 AND posicion = ".$this->posicion.$this->pr.$this->ev." ORDER BY id ASC");
//		$this->catch=	'<div id="navbar">
		$this->catch='<ul>';
		while($row = $this->mysql->fetch_array($sql)){  
			if($this->posicion==7){//posición superior
				$this->ruta='<a href="';
				$this->pagado='';
			}elseif($this->posicion==6){//posición inferior
				$this->ruta='<a href="index.php?ruta=';
				$this->pagado='';
			}elseif($this->posicion==5){//posición derecha inferior
				$this->ruta='<a href="index.php?ruta=';
				$this->pagado='&cliente='.$this->cliente;
			}elseif($this->posicion==4){//posición derecha inferior
				$this->ruta='<a href="index.php?ruta=';
				$this->pagado='&cliente='.$this->cliente;
			}
		$this->catch.=		'<li>'.
								$this->ruta.$row[0].$this->pagado.'">'.
									$row[1].
								'</a>
							</li>';
		}
		$this->catch.='</ul>';
//			</div>';
			return $this->catch;
	}
}
?>
