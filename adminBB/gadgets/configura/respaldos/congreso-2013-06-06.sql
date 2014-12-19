-- MySQL dump 10.13  Distrib 5.1.44, for apple-darwin8.11.1 (i386)
--
-- Host: localhost    Database: congreso
-- ------------------------------------------------------
-- Server version	5.1.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articulos_categoria`
--

DROP TABLE IF EXISTS `articulos_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos_categoria` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `imagen` varchar(10) NOT NULL DEFAULT '',
  `belong` int(3) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos_categoria`
--

LOCK TABLES `articulos_categoria` WRITE;
/*!40000 ALTER TABLE `articulos_categoria` DISABLE KEYS */;
INSERT INTO `articulos_categoria` VALUES (1,'Opinión','',0),(2,'Boletines de prensa','',0);
/*!40000 ALTER TABLE `articulos_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulos_ediciones`
--

DROP TABLE IF EXISTS `articulos_ediciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos_ediciones` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `imagen` varchar(10) NOT NULL,
  `ruta` varchar(159) NOT NULL,
  `liberada` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos_ediciones`
--

LOCK TABLES `articulos_ediciones` WRITE;
/*!40000 ALTER TABLE `articulos_ediciones` DISABLE KEYS */;
INSERT INTO `articulos_ediciones` VALUES (1,'unica','','',1);
/*!40000 ALTER TABLE `articulos_ediciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulos_fotoedicion`
--

DROP TABLE IF EXISTS `articulos_fotoedicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos_fotoedicion` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(50) NOT NULL,
  `paginas` varchar(50) DEFAULT NULL,
  `edicion` int(3) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=566 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos_fotoedicion`
--

LOCK TABLES `articulos_fotoedicion` WRITE;
/*!40000 ALTER TABLE `articulos_fotoedicion` DISABLE KEYS */;
/*!40000 ALTER TABLE `articulos_fotoedicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulos_index`
--

DROP TABLE IF EXISTS `articulos_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos_index` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `categoria` smallint(2) NOT NULL DEFAULT '0',
  `titulo` varchar(50) NOT NULL DEFAULT '',
  `subtitulo` varchar(50) NOT NULL DEFAULT '',
  `edicion` int(5) NOT NULL DEFAULT '0',
  `contenido` text NOT NULL,
  `publicado` smallint(1) NOT NULL DEFAULT '0',
  `autor` int(5) NOT NULL DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `imagen` varchar(20) NOT NULL DEFAULT '',
  KEY `id` (`id`),
  FULLTEXT KEY `titulo` (`titulo`,`subtitulo`,`contenido`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos_index`
--

LOCK TABLES `articulos_index` WRITE;
/*!40000 ALTER TABLE `articulos_index` DISABLE KEYS */;
INSERT INTO `articulos_index` VALUES (1,1,'Una discusión de 80 años','',1,'<p>Dice el dicho que no es lo largo del camino sino lo bachoso lo que hace el trayecto m&aacute;s dif&iacute;cil. En el caso de la presa en el R&iacute;o Verde, hoy llamada <strong>Zapotillo</strong>, el camino ha sido largo y bachoso; 80 a&ntilde;os de discusi&oacute;n no han sido suficientes para ponernos de acuerdo, lo cual podr&iacute;amos leer como un presagio de que no nos pondremos de acuerdo.</p>\r\n<p>En este largo camino hemos visto todo tipo de argumentos e incluso a algunos actores cambiar de bando seg&uacute;n soplan los vientos, pero sobre todo hemos visto argumentos ir y venir sin que &eacute;stos hayan hecho jam&aacute;s mella en la contraparte. Esto es, lejos de haber tenido 80 a&ntilde;os de un enriquecedor di&aacute;logo en torno a las ventajas y desventajas de construir presas en el lecho del R&iacute;o Verde, primero para generar electricidad y despu&eacute;s para dotar de agua a la ciudad de Guadalajara, lo que hemos tenido son largos y vehementes mon&oacute;logos entre actores que no se escuchan los unos a los otros.</p>\r\n<p>Un apresurado y poco meditado compromiso de campa&ntilde;a tiene hoy al gobernador metido en un problema del que no tiene forma de salir bien librado. Est&aacute; haciendo un gran esfuerzo pol&iacute;tico para escapar de un callej&oacute;n en el que se meti&oacute; de gratis, pero del que ya a estas alturas dif&iacute;cilmente saldr&aacute; sin golpes en la carrocer&iacute;a.</p>\r\n<p>La presa, conforme el programa de obra de la Comisi&oacute;n Nacional del Agua, deber&aacute; estar terminada antes del temporal de 2014, lo cual significa que el Gobierno del Estado tendr&aacute; dos momentos complicados para sortear pol&iacute;ticamente de aqu&iacute; a entonces. El primero, cuando la altura de la presa llegue a los 86 metros. En el &uacute;ltimo reporte que se hizo p&uacute;blico, a principios de a&ntilde;o, la constructora manifestaba un avance de 45 metros en la altura de la cortina. Si, como hasta ahora est&aacute; previsto, la presa deber&aacute; estar terminada dentro de un a&ntilde;o, en mayo de&nbsp; 2014, la constructora alcanzar&aacute; los 86 metros, el punto de no retorno, hacia finales de este a&ntilde;o. En la pr&aacute;ctica el Gobierno de Arist&oacute;teles Sandoval tiene unas 20 semanas para tomar y operar las decisiones que tenga que tomar.</p>\r\n<p>El segundo momento, quiz&aacute; el m&aacute;s cr&iacute;tico, vendr&aacute; cuando sea necesario desalojar el poblado de Temacapul&iacute;n, y eso deber&aacute; de ser antes de agosto o septiembre del pr&oacute;ximo a&ntilde;o para evitar cualquier riesgo.</p>\r\n<p>Despu&eacute;s de 80 a&ntilde;os de discusiones est&eacute;riles, al Gobierno actual le quedan en realidad s&oacute;lo algunos meses para tomar y operar decisiones.</p>\r\n<p>&nbsp;</p>',1,4,'2013-03-22 05:53:47','guipizcoa'),(7,2,'Boletín acuerdo liconsa Dip. Norma A.','',1,'<p>Guadalajara, Jalisco. 07-05-2013</p>\r\n<p>CMP0513-26</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Formalizan acuerdo para solicitar 450 millones de pesos en apoyo a 12,000 productores de leche de Jalisco</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><em>La presidenta de la Comisi&oacute;n de Ganader&iacute;a en el Congreso del Estado, Norma Ang&eacute;lica Cordero, as&iacute; como lecheros de los Altos de Jalisco, se reunieron este lunes para pedir formalmente, a trav&eacute;s de un escrito, el incremento de 1 peso por litro a la leche que venden productores a Liconsa.</em></p>\r\n<p>&nbsp;</p>\r\n<p>L&iacute;deres de la principal franja lechera, pertenecientes a las regiones altos Sur, altos Norte y Ci&eacute;nega de Jalisco, que representan a unos 12 mil productores de leche, junto con la presidenta de la comisi&oacute;n de Ganader&iacute;a en el Congreso del estado, la diputada del PAN Norma Ang&eacute;lica Cordero Prado, formalizaron la solicitud de apoyo para que autoridades federales de Sagarpa y Sedesol, destraben 450 millones de pesos en beneficio de lecheros de Jalisco.</p>\r\n<p>&nbsp;</p>\r\n<p>En una reuni&oacute;n que sostuvieron este lunes en el municipio de Encarnaci&oacute;n de D&iacute;az, la diputada Norma Ang&eacute;lica Cordero Prado, con l&iacute;deres de la Uni&oacute;n Ganadera Regional de Jalisco, autoridades de la Confederaci&oacute;n Nacional Ganadera y algunos presidentes municipales, analizaron la problem&aacute;tica del sector y ante ello, acordaron enviar un escrito formal al titular de la Sagarpa, Lic. Enrique Mart&iacute;nez y Mart&iacute;nez para que este otorgue lo equivalente a un aumento de 60 centavos por litro a la leche que venden a Liconsa.</p>\r\n<p>&nbsp;</p>\r\n<p>De la misma forma, solicitan a la Secretaria de Desarrollo Social, Rosario Robles Berlanga, para que esta dependencia otorgue 40 centavos m&aacute;s por litro, y as&iacute; llegar a un aumento general de 1 peso por litro para evitar el desplome del sector lechero.</p>\r\n<p>&nbsp;</p>\r\n<p>El acuerdo tomado ayer, refuerza el punto legislativo que suscribi&oacute; la diputada Norma Ang&eacute;lica Cordero Prado el pasado 25 e abril, cuando en el pleno del congreso exhort&oacute; al presidente de M&eacute;xico, Enrique Pe&ntilde;a Nieto, para que la Secretar&iacute;a de Agricultura, Ganader&iacute;a, Desarrollo Rural, Pesca y Alimentaci&oacute;n (Sagarpa), otorgue un subsidio de 450 millones de pesos a Liconsa, y con este recurso, la empresa pueda subir a 1 peso, el costo por cada litro de leche que paga a los productores.</p>\r\n<p>&nbsp;</p>\r\n<p>Este martes l&iacute;deres de la Uni&oacute;n Regional Ganadera de Jalisco, se entrevistar&aacute;n con el gobernador de Jalisco, Jorge Arist&oacute;teles Sandoval D&iacute;az, para solicitarle su intervenci&oacute;n ante las autoridades federales y el propio presidente de M&eacute;xico, para que ese apoyo de 450 millones de pesos llegue de manera urgente a los productores.</p>\r\n<p>&nbsp;</p>\r\n<p>La diputada Cordero Prado, insiste en que la Cruzada Nacional contra el Hambre implementada por la Presidencia de la Rep&uacute;blica, tiene que apoyar a los productores locales con la compra de sus productos y no beneficiar a empresas lecheras y de carne del extranjero. De no apoyar los ganaderos locales, contribuir&iacute;a al hambre de estos productores.</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-29 08:32:31',''),(8,2,'Boletín caso López Castro Dip. Victor Sánchez','',1,'<p>Guadalajara, Jalisco. 20-03-2013</p>\r\n<p>&nbsp;CMP0313-14</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Avances en demandas favorecen al Congreso: Dip. Victor S&aacute;nchez Orozco</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Esta ma&ntilde;ana, el Dip. Victor S&aacute;nchez Orozco dio a conocer la resoluci&oacute;n emitida por el&nbsp; Tercer Tribunal Colegiado en Materia Civil en el Estado de Jalisco, el cual resolvi&oacute; regresar los autos del Juicio de Amparo Indirecto 1129/2011al Juez Tercero de Distrito en Materia Civil a efecto de que reponga el procedimiento de ejecuci&oacute;n de la sentencia de amparo, en raz&oacute;n de que el juzgador federal, en el prove&iacute;do de veintiocho de noviembre de dos mil doce, mediante el cual orden&oacute; la remisi&oacute;n de los autos a este &oacute;rgano jurisdiccional</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Esto mismo derivado del Juicio de Amparo 1129/2011 del &iacute;ndice del Juzgado Tercero de Distrito en Materia Civil de la entidad promovido por Consultores L&oacute;pez Castro &amp; C&Iacute;A, esto coadyuva a que la Junta de Coordinaci&oacute;n Pol&iacute;tica, del Congreso de Jalisco promueva los recursos legales convenientes, los cuales podr&iacute;an ser: recurso de revisi&oacute;n, recurso de apelaci&oacute;n y as&iacute; mismo un Incidente de nulidad de actuaciones, mismos que est&aacute;n siendo revisados por la misma junta.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>El Dip. S&aacute;ncez Orozco refiri&oacute; que esta resoluci&oacute;n favorece al congreso, ya que da tiempo para la elaboraci&oacute;n de las estrategias legales en&nbsp; defensa de los intereses del Congreso, as&iacute; como a su presentaci&oacute;n se pretenden medidas cautelares y resoluciones (sentencias) que impidan el pago a la Consultor&iacute;a L&oacute;pez Castro.&nbsp;</p>\r\n<p><strong></strong></p>\r\n<p>&nbsp;</p>',1,0,'2013-05-29 09:03:35',''),(9,2,'Boletín com. readaptación social','',1,'<p>Guadalajara, Jalisco. 07 05 2013</p>\r\n<p>CMP0513-25</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>ACUERDAN DIPUTADOS PUNTOS IMPORTANTES EN MATERIA DE READAPTACION SOCIAL</strong></p>\r\n<p>&nbsp;</p>\r\n<p><em>Temas abordados en la Comisi&oacute;n presidida por el diputado del GPPAN, V&iacute;ctor Manuel S&aacute;nchez Orozco.</em></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Foro para la unificaci&oacute;n del C&oacute;digo Procesal y Penal: 21 Y 22 de mayo</strong></p>\r\n<p>El diputado Presidente de la Comisi&oacute;n de Readaptaci&oacute;n Social, V&iacute;ctor Manuel S&aacute;nchez Orozco organiza el Primer foro para la unificaci&oacute;n del C&oacute;digo Procesal y Penal en el que se debatir&aacute;n propuestas y proyectos encaminados a lograr avances en el sistema penal acusatorio, juicios orales y&nbsp; justicia alternativa, temas importantes&nbsp; que actualmente son analizados a nivel nacional.</p>\r\n<p>Dicho foro se llevar&aacute; a cabo los pr&oacute;ximos 21 y 22 de mayo en el Congreso del Estado. El legislador panista record&oacute; que para transitar a un C&oacute;digo Penal &Uacute;nico en Jalisco es un requisito ineludible iniciar un proceso de discusi&oacute;n y reflexi&oacute;n ideol&oacute;gica en el que debe ser incluida la sociedad civil a fin de lograr construir un nuevo sistema penal m&aacute;s justo, racional y respetuoso del ser humano.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Campa&ntilde;a para donar libros a la Biblioteca de Puente Grande</strong></p>\r\n<p>Durante los trabajos de la Comisi&oacute;n de Readaptaci&oacute;n Social que se efectu&oacute; el d&iacute;a de hoy,&nbsp; se aprob&oacute; la propuesta originada a partir de la visita que efectuaron los legisladores el pasado 24 de abril al complejo penitenciario de Puente Grande, en el que se percataron de la necesidad de aumentar la calidad del acervo bibliogr&aacute;fico de la biblioteca del Reclusorio de&nbsp; dicho centro penitenciario, el cual posee pocos libros de consulta para los reos.</p>\r\n<p>El diputado del Partido Acci&oacute;n Nacional, Juan Carlos M&aacute;rquez Rosas, vocal de dicha comisi&oacute;n legislativa pidi&oacute; que la campa&ntilde;a de recolecci&oacute;n de libros que iniciar&aacute; en este mes y terminar&aacute; a finales del mes de junio, sea dirigida a los poderes Ejecutivo y Judicial;&nbsp; universidades, instituciones y organismos p&uacute;blicos y privados, incluyendo las diferentes casas editoriales de Jalisco. El Congreso donar&iacute;a un acervo completo de leyes.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Buscar mecanismos para la despresurizaci&oacute;n de las c&aacute;rceles: Juicios orales, una soluci&oacute;n.</strong></p>\r\n<p>Por su parte el diputado panista Juan Jos&eacute; Cuevas Garc&iacute;a propuso buscar los mecanismos para la despresurizaci&oacute;n&nbsp; de las c&aacute;rceles, debido a que m&aacute;s del 60 por ciento de los presos en Puente Grande cometieron delitos por robos menores a los cinco mil pesos. Se busca que sean reinsertados a la sociedad; sobre todo abocarse en delitos cometidos por primodelincuentes y que podr&iacute;an salir bajo fianza.&nbsp;</p>\r\n<p>Sobre dicho tema, el diputado Presidente de la Comisi&oacute;n de Readaptaci&oacute;n Social, V&iacute;ctor S&aacute;nchez Orozco indic&oacute; que se debe dar impulso a la implementaci&oacute;n de los juicios orales que vendr&iacute;a a despresurizar las prisiones trayendo soluci&oacute;n a ese tipo de delitos. Propuso que en el mes de junio se lleve a cabo un foro para tratar dicho tema en particular.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Informe de la primera visita a centros penitenciarios: hacinamiento, el principal problema.</strong></p>\r\n<p>Sobresale en dicho informe de la Comisi&oacute;n de Readaptaci&oacute;n Social la sobrepoblaci&oacute;n de m&aacute;s de 100 por ciento del Complejo Penitenciario de Puente Grande ya que alberga a 7 mil 184 internos mientras que fue&nbsp; creado para tres mil internos. El promedio de ingreso diario es de 35 internos. Aproximadamente el 60 por ciento de los internos est&aacute;n recluidos por delitos no graves o de bajo impacto.</p>\r\n<p>Respecto a la visita que efectuaron los legisladores ese mismo 24 de abril al Centro Preventivo y de Readaptaci&oacute;n femenil destaca que cuenta con una poblaci&oacute;n de 490 mujeres lo que significa tambi&eacute;n un problema de sobrepoblaci&oacute;n ya que duermen en cada dormitorio de 9 a 10 reclusas.</p>\r\n<p>Se requiere rehabilitar espacios para la atenci&oacute;n m&eacute;dica y psicol&oacute;gica de las presas ya que falta mobiliario y &aacute;reas destinadas a las enfermas mentales.</p>\r\n<p>El diputado V&iacute;ctor Manuel S&aacute;nchez propuso ayudar a formar un gimnasio m&aacute;s completo para el uso de las internas.</p>\r\n<p>En el centro de Readaptaci&oacute;n Social en donde se encuentran reos que ya han sido sentenciados existe una poblaci&oacute;n de 5 mil 915 internos cuando fue creado para albergar a tres mil personas.&nbsp;</p>\r\n<p>El diputado V&iacute;ctor Manuel S&aacute;nchez Orozco indic&oacute; que en los tres centros visitados existen reclusos que est&aacute;n siendo procesados o ya se encuentran sentenciados por delitos del orden federal (aproximadamente 445) los cuales deber&iacute;an ser atendidos por los centros federales de readaptaci&oacute;n social y que a&uacute;n no son trasladados a esos lugares.</p>\r\n<p><strong>Visita a c&aacute;rcel de&nbsp; Ocotl&aacute;n</strong></p>\r\n<p>Para el d&iacute;a de ma&ntilde;ana 8 de mayo, la Comisi&oacute;n de Readaptaci&oacute;n Social visitar&aacute; la c&aacute;rcel municipal de Ocotl&aacute;n as&iacute; como el Ceinjure que qued&oacute; inconcluso desde hace casi 10 a&ntilde;os. Cabe destacar que la Comisi&oacute;n de Readaptaci&oacute;n Social ha hecho extensiva la invitaci&oacute;n a otras comisiones legislativas que puedan estar interesadas e involucradas en el tema.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-29 09:05:53',''),(10,2,'Boletín comparecencia reforma al ejecutivo','',1,'<p>Guadalajara, Jalisco. 21-Febrero-2013</p>\r\n<p>&nbsp;</p>\r\n<p>Los diputados de Acci&oacute;n nacional durante la comparecencia del Lic. Ricardo Villanueva Lomel&iacute;, coordinador del equipo de transici&oacute;n del gobernador electo Jorge Arist&oacute;teles Sandoval, observaron la necesidad de incluir en la propuesta de reforma los siguientes aspectos de los que se destacan entre otros: &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>1.- Ratificaci&oacute;n del Fiscal por Mayor&iacute;a Calificada&nbsp;</p>\r\n<p>2.- Establecer como requisito en la Constituci&oacute;n que para&nbsp; el nombramiento del Fiscal General el que haya pasado las evaluaciones de Control de Confianza y a su vez a los encargados de las &aacute;reas de dicha fiscal&iacute;a.</p>\r\n<p>3.- En caso de que el Fiscal General no sea ratificado por el Congreso en un t&eacute;rmino establecido, el Gobernador entienda como negada la propuesta y env&iacute;e una nueva al Congreso. En ning&uacute;n caso que aplique la Afirmativa Ficta.</p>\r\n<p>4.- Que los&nbsp; titulares de&nbsp; &oacute;rganos desconcentrados (la Fiscal&iacute;a General, la Fiscal&iacute;a Central, Fiscal&iacute;a de Derechos Humanos, Fiscal&iacute;a de Derechos Humanos, Reinserci&oacute;n Social y Comisionado de Seguridad P&uacute;blica)&nbsp; sean ratificados por el Congreso.</p>\r\n<p>5.- Las cuestiones establecidas en los art&iacute;culos transitorios en cuanto a las modificaciones presupuestales y modificaci&oacute;n de plantilla de personal deben ser por parte del Congreso del Estado, en consonancia con la ley de presupuesto, contabilidad y gasto p&uacute;blico.&nbsp;</p>\r\n<p>6.- Establecer de manera textual en la Ley Org&aacute;nica del Poder Ejecutivo que la creaci&oacute;n y extinci&oacute;n de organismos p&uacute;blicos descentralizados debe ser a propuesta&nbsp; del Gobernador&nbsp; y por aprobaci&oacute;n mediante Decreto del Congreso del Estado.</p>\r\n<p>7.- Que el titular de la Contralor&iacute;a as&iacute; como el de la nueva Secretarias de Finanzas y de Infraestructura y Obra P&uacute;blica se sometan a las evaluaciones de Control de Confianza. Lo anterior en virtud de la trascendencia en el manejo, aplicaci&oacute;n y vigilancia de recursos p&uacute;blicos.</p>\r\n<p>&nbsp;</p>\r\n<p>As&iacute; mismo, se adoptaron propuestas que se hicieron llegar por parte de la sociedad como las del Colegio De Arquitectos del Estado de Jalisco que son:&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>1.- Establecer en la Ley Org&aacute;nica del Poder Ejecutivo el requisito para ser Secretario del Gabinete contar con cedula profesional registrada ante profesiones del estado.</p>\r\n<p>2.- Establecer como facultad de la Secretar&iacute;a General de Gobierno facultades acerca del registro y control de asociaciones de profesionistas.</p>\r\n<p>&nbsp;</p>\r\n<p>El Grupo Parlamentario del Partido Acci&oacute;n Nacional manifest&oacute; que se seguir&aacute;&nbsp; en la revisi&oacute;n y observaci&oacute;n de la propuesta de reforma al poder Ejecutivo con el objetivo de lograr un planteamiento que garantice un proyecto incluyente y en beneficio para Jalisco&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-29 09:07:00',''),(11,2,'Boletin plenaria vallarta 09-04-13','',1,'<p>Guadalajara, Jalisco. 09-abril-2013</p>\r\n<p>CMP0413-15</p>\r\n<p><strong></strong></p>\r\n<p><strong>Afina GPPAN Agenda Legislativa por Jalisco</strong></p>\r\n<p>&nbsp;</p>\r\n<p>En el marco del la I Reuni&oacute;n Plenaria del Grupo parlamentario del PAN, en donde participaron las diputadas Gabriela Anal&oacute;n Bercerra, Norma A. Cordero Parado, Mariana Arambula Mel&eacute;ndez y los Diputados Jos&eacute; Gildardo Guerrero Torres -Coordinador de la Fracci&oacute;n- El&iacute;as Octavio I&ntilde;iguez Mej&iacute;a, L. Guillermo Mart&iacute;nez Mora, Jaime I. D&iacute;az Brambila, J. Hern&aacute;n Cort&eacute;s Berumen, Jos&eacute; Luis Mungu&iacute;a Cardona, Juan Carlos Marques Rosas, Juan Jos&eacute; Cuevas Garc&iacute;a, Victor Manuel S&aacute;nchez Orozco, con la ausencia por causas de fuerza mayor del Dip. Alberto Esquer Guti&eacute;rrez y acompa&ntilde;ados por el presidente del Partido Acci&oacute;n Nacional en el Estado Miguel &Aacute;ngel Monraz Ibarra.</p>\r\n<p>&nbsp;</p>\r\n<p>El coordinador de los Diputados panistas Gildardo Guerrero se refiri&oacute; a los trabajos que se realizar&aacute;n en la siguiente etapa legislativa, siendo una oposici&oacute;n responsable y logrando que el bien com&uacute;n&nbsp; llegue a cada uno de los ciudadanos. Refiri&oacute; que se est&aacute;n analizando los puntos importantes de la agenda legislativa sobre los cuales se trabajar&aacute; de manera responsable y comprometida principalmente en cuatro ejes fundamentales los cuales enmarcan:&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>1.- Pol&iacute;tica y Gobierno.</p>\r\n<p>Es importante trabajar en generar un organismo colegiado en donde se revise la rendici&oacute;n de cuentas, involucrando desde organismos de la sociedad civil hasta instituciones educativas con ello se vigilaran y cuidaran las finanzas del Estado.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>2.- Seguridad y Justicia.&nbsp;</p>\r\n<p>Trabajar en propuesta del \"Mando &Uacute;nico\", esta propuesta ya hab&iacute;a sido hecha por el gobierno panista en su momento pero fue rechazada incluso por quien ahora encabeza el gobierno del Estado, se revisar&aacute; para lograr una propuesta mas consolidada y&nbsp; acertada para los ciudadanos.</p>\r\n<p>&nbsp;</p>\r\n<p>3.- Bienestar Social y Educaci&oacute;n.</p>\r\n<p>El Grupo parlamentario del PAN, va por la propuesta del transporte escolar gratuito, sin maquillajes, que sea totalmente gratuito, porque es un compromiso con los estudiantes y se debe de cumplir, ya que con ello se generan mejores condiciones sociales para el logro educativo.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>4.- Econom&iacute;a y Desarrollo Sustentable.</p>\r\n<p>Es importante generar una movilidad integral no solo en la capital del estado sino tambi&eacute;n para las ciudades medias del interior.&nbsp;</p>\r\n<p>Lograr que la asignaci&oacute;n de obra p&uacute;blica sea participativa de manera ciudadana y no a gusto del gobernante en turno, con ello se generan una congruencia en el ejercicio de las mismas y se garantiza que la asignaci&oacute;n no se vea empa&ntilde;ada muchas veces por la corrupci&oacute;n y desv&iacute;o de fondos.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>El presidente del Comit&eacute; Directivo estatal del PAN Miguel &Aacute;ngel Monraz Ibarra, refiri&oacute; que el d&iacute;a de hoy se est&aacute;n realizando una serie de ejes tem&aacute;ticos los cuales se han venido trabajando desde hace varios meses con diversas organismos y consultas para definir la ruta que tendr&aacute; el grupo parlamentario en los siguientes meses, siendo una&nbsp; fuerza pol&iacute;tica constructiva, que genere acuerdos, pero tambi&eacute;n vigilante del ejercicio responsable del gobierno.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Algunos temas que se han trabajado van encaminados a la seguridad, educaci&oacute;n y la promoci&oacute;n econ&oacute;mica. Dijo adem&aacute;s que el Grupo Parlamentario del PAN en el Congreso del Estado ser&aacute; un grupo propositivo y constructivo.</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-29 09:07:51',''),(12,2,'Boletín rueda de prensa Dip. Victor Sánchez 06-02-','',1,'<p>Guadalajara, Jalisco. 06-Febrero-2013</p>\r\n<p><strong>CMP0213-04</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>LA OPACIDAD EN LA AUDITOR&Iacute;A SUPERIOR Y SU TITULAR ALONSO GODOY</strong></p>\r\n<p>El Diputado V&iacute;ctor Manuel S&aacute;nchez Orozco integrante del Grupo Parlamentario del Partido Acci&oacute;n Nacional, en Rueda de Prensa <strong>\"Denuncia de falta de Transparencia por parte del sujeto obligado: la Auditor&iacute;a Superior del Estado de Jalisco (ASEJ)</strong> por no publicar la informaci&oacute;n fundamental a que est&aacute; obligado por ley. (Art&iacute;culos 32 y 33 de la ley de informaci&oacute;n p&uacute;blica del estado de Jalisco y sus municipios.)&nbsp;</p>\r\n<p>Observando que es omiso en publicitar informaci&oacute;n p&uacute;blica de car&aacute;cter fundamental; incumpliendo con la obligaci&oacute;n legal de publicar la informaci&oacute;n fundamental:</p>\r\n<ol>\r\n<li>El reglamento interno de informaci&oacute;n p&uacute;blica de la ASEJ;</li>\r\n<li>Las nominas del sujeto obligado, de cuando menos los &uacute;ltimos seis a&ntilde;os;</li>\r\n<li>Las cuentas p&uacute;blicas y dem&aacute;s informes de gesti&oacute;n financiera;</li>\r\n<li>Las auditor&iacute;as internas y externas realizadas;</li>\r\n<li>Los Convenios, contratos y dem&aacute;s instrumentos jur&iacute;dicos suscritos;</li>\r\n<li>Los informes trimestrales y anuales de actividades;</li>\r\n<li>El registro de cuentas p&uacute;blicas e informe de gesti&oacute;n financiera entregados por las entidades fiscalizadas, con indicaci&oacute;n del estado procedimental que guardan;</li>\r\n<li>Los expedientes con motivo de la fiscalizaci&oacute;n de las cuentas publicas</li>\r\n<li>El registro de los cr&eacute;ditos fiscales aprobados con motivos del rechazo de cuentas p&uacute;blicas; entre otras.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>Por lo que el d&iacute;a de ma&ntilde;ana en la sesi&oacute;n presentare dos iniciativas y un exhorto, para atender dichos asuntos y poner soluci&oacute;n a los problemas que se han generado en el Poder Legislativo.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>UNO</strong>.- Iniciativa de acuerdo legislativo &nbsp; que <strong><em>propone la inclusi&oacute;n de la figura conocida como </em></strong><strong><em>AFIRMATIVA O POSITIVA FICTA</em></strong></p>\r\n<p><strong></strong></p>\r\n<p><strong>DOS</strong>.- Iniciativa para la creaci&oacute;n d<strong><em>el</em></strong> <strong><em>Consejo Ciudadano como &oacute;rgano de control interno y coadyuvante en las tareas de fiscalizaci&oacute;n y transparencia de las funciones de la Auditoria Superior del Estado de Jalisco. </em></strong>El objetivo que se persigue es trabajar de manera conjunta con la Sociedad Organizada en el ejercicio de gobierno y en el manejo de los asuntos p&uacute;blicos, lo cual garantiza la transparencia, la legalidad, el control, la evaluaci&oacute;n y la fiscalizaci&oacute;n,</p>\r\n<p><strong></strong></p>\r\n<p><strong>TRES</strong>.- Con el prop&oacute;sito de atender oportunamente los requerimientos de informaci&oacute;n y difusi&oacute;n de la situaci&oacute;n administrativa del Congreso dando cumplimiento a las disposiciones contenidas en materia de Informaci&oacute;n P&uacute;blica, se propondr&aacute; ante el Pleno <strong><em>la asunci&oacute;n de las atribuciones en lo referente a la integraci&oacute;n del Comit&eacute; de Clasificaci&oacute;n de la Informaci&oacute;n P&uacute;blica y en su caso la revisi&oacute;n de facultades y determinaci&oacute;n de responsabilidades a las &aacute;reas legalmente facultadas en la materia </em></strong>para que cumplan con sus funciones y tareas encomendadas en la Ley de Informaci&oacute;n P&uacute;blica.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>CUATRO</strong>.- <strong>Requerir al Titular de la Secretar&iacute;a General</strong> para que por su conducto se instruya a las &aacute;reas administrativas del Poder Legislativo,&nbsp; que publiquen permanentemente en internet o en otros medios de f&aacute;cil acceso y comprensi&oacute;n para la poblaci&oacute;n, as&iacute; como actualizar cuando menos cada mes, la informaci&oacute;n fundamental que le corresponda.</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-29 09:10:07',''),(13,2,'Reconocimiento a empresas Dip. Alberto Esquer','',1,'<p>Guadalajara, Jalisco. 30-Enero-2013</p>\r\n<p><strong>CMP0113-01</strong><strong>&nbsp;</strong></p>\r\n<p><strong></strong></p>\r\n<p><strong>Reconocen a empresarios del Sur de Jalisco</strong></p>\r\n<p>&nbsp;</p>\r\n<p>En un acto realizado a las puertas del Recinto Legislativo, del Congreso del Estado, el presidente de la Comisi&oacute;n de Desarrollo Agr&iacute;cola, Diputado Alberto Esquer Guti&eacute;rrez, reconoci&oacute; la labor realizada por cinco empresas de Zapotl&aacute;n el Grande.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>En la entrega de los reconocimientos, estuvo acompa&ntilde;ado por el Presidente de la Mesa Directiva del Congreso, Dip. Jos&eacute; Hern&aacute;n Cort&eacute;s Berumen, as&iacute; como por los diputados Ricardo Rodr&iacute;guez Jim&eacute;nez, Presidente de la Comisi&oacute;n de Desarrollo Econ&oacute;mico y El&iacute;as Octavio I&ntilde;iguez Mej&iacute;a, Presidente de la Comisi&oacute;n de Higiene y Salud P&uacute;blica.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>As&iacute; mismo, particip&oacute; el Delegado Federal de la Secretar&iacute;a de Econom&iacute;a en Jalisco, Lic. Roberto Fern&aacute;ndez Silva, en representaci&oacute;n de la Secretar&iacute;a de Promoci&oacute;n Econ&oacute;mica de Jalisco y el Coordinador General de Competitividad Empresarial, Mtro. Guillermo Espinoza Aranda, del CESJAL el Secretario General, Lic. Arturo Uribe Av&iacute;n.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>En su intervenci&oacute;n, el legislador Alberto Esquer Guti&eacute;rrez, promotor de dicho reconocimiento, coment&oacute; que en muy pocas ocasiones se reconoce el trabajo y labor de los empresarios. Refiri&oacute; la importancia de reconocerlos, ya que su labor conlleva un sentido de responsabilidad al ser generadores de empleos. Exhort&oacute; a las dependencias a lograr de la mejor manera el apoyo a las empresas del estado y del sur de Jalisco.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Dirigi&oacute; una felicitaci&oacute;n a cada empresario y los invit&oacute; a seguir con su labor de ser empresas de calidad que han trascendido hasta por tres generaciones, por la importancia de ser generadoras de empleo y por su perseverancia y dedicaci&oacute;n al ofrecer productos de calidad.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Las empresas reconocidas fueron:&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>Industrias Maga&ntilde;a S.A. de C.V.</li>\r\n<li>Industrializadora de Productos L&aacute;cteos y Derivados los Cuates S.A. de C.V.&nbsp;</li>\r\n<li>Chocolate Rey Amargo S.A. de C.V.</li>\r\n<li>Agua Purificada Nevado S.A de C.V&nbsp;</li>\r\n<li>Agro Gonz&aacute;lez S.P.R de R.L.&nbsp;</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>Para concluir, de manera simb&oacute;lica, el Dip. Alberto Esquer G. pidi&oacute; al Presidente del Congreso Dip. Hern&aacute;n Cort&eacute;s B. abrir las puertas del recinto para simbolizar que el Congreso y el Grupo Parlamentario del PAN, asumen el compromiso y crean apertura para apoyar y legislar a favor de las empresas jaliscienses. &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-29 09:11:46','');
/*!40000 ALTER TABLE `articulos_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulos_resaque`
--

DROP TABLE IF EXISTS `articulos_resaque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos_resaque` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `contenido` text NOT NULL,
  `vincula` int(3) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos_resaque`
--

LOCK TABLES `articulos_resaque` WRITE;
/*!40000 ALTER TABLE `articulos_resaque` DISABLE KEYS */;
/*!40000 ALTER TABLE `articulos_resaque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners_dir`
--

DROP TABLE IF EXISTS `banners_dir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners_dir` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `imagen` varchar(10) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners_dir`
--

LOCK TABLES `banners_dir` WRITE;
/*!40000 ALTER TABLE `banners_dir` DISABLE KEYS */;
INSERT INTO `banners_dir` VALUES (0,'Central',''),(1,'Izq. Superior',''),(2,'Der. Superior',''),(3,'Izq. Inferior',''),(4,'Der. Inferior',''),(5,'Inferior',''),(7,'Superior',''),(6,'Ninguno','');
/*!40000 ALTER TABLE `banners_dir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners_ext`
--

DROP TABLE IF EXISTS `banners_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners_ext` (
  `id` smallint(1) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners_ext`
--

LOCK TABLES `banners_ext` WRITE;
/*!40000 ALTER TABLE `banners_ext` DISABLE KEYS */;
INSERT INTO `banners_ext` VALUES (1,'jpg'),(2,'swf'),(3,'gif');
/*!40000 ALTER TABLE `banners_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners_index`
--

DROP TABLE IF EXISTS `banners_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners_index` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(50) DEFAULT NULL,
  `vincula` smallint(2) NOT NULL DEFAULT '1',
  `visible` smallint(1) NOT NULL DEFAULT '0',
  `nombre` varchar(250) NOT NULL,
  `contenido` text,
  `orden` int(2) NOT NULL DEFAULT '0',
  `banner` smallint(2) NOT NULL DEFAULT '6',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners_index`
--

LOCK TABLES `banners_index` WRITE;
/*!40000 ALTER TABLE `banners_index` DISABLE KEYS */;
INSERT INTO `banners_index` VALUES (1,'logo_gpo_pan',0,1,'Logo Fracción Parlamentaria','',1,2),(2,'siren',0,1,'Sirena','<p>Una sirena sacada de Yahoo</p>',1,0);
/*!40000 ALTER TABLE `banners_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat-catalogo`
--

DROP TABLE IF EXISTS `cat-catalogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat-catalogo` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `imagen` varchar(10) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat-catalogo`
--

LOCK TABLES `cat-catalogo` WRITE;
/*!40000 ALTER TABLE `cat-catalogo` DISABLE KEYS */;
INSERT INTO `cat-catalogo` VALUES (2,'Ninguna',''),(1,'Vidrios',''),(2,'Vitrales',''),(3,'Canceles',''),(3,'Dise&ntilde;o','');
/*!40000 ALTER TABLE `cat-catalogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_categoria`
--

DROP TABLE IF EXISTS `catalogo_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogo_categoria` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `imagen` varchar(30) DEFAULT NULL,
  `belong` smallint(2) NOT NULL DEFAULT '0',
  `subelong` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_categoria`
--

LOCK TABLES `catalogo_categoria` WRITE;
/*!40000 ALTER TABLE `catalogo_categoria` DISABLE KEYS */;
INSERT INTO `catalogo_categoria` VALUES (3,'GreenCrab Villa','',0,0);
/*!40000 ALTER TABLE `catalogo_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_dimensiones`
--

DROP TABLE IF EXISTS `catalogo_dimensiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogo_dimensiones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `precio` decimal(19,2) NOT NULL DEFAULT '0.00',
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `vincula` int(11) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_dimensiones`
--

LOCK TABLES `catalogo_dimensiones` WRITE;
/*!40000 ALTER TABLE `catalogo_dimensiones` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogo_dimensiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_ext`
--

DROP TABLE IF EXISTS `catalogo_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogo_ext` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) NOT NULL DEFAULT '',
  `descripcion` varchar(20) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_ext`
--

LOCK TABLES `catalogo_ext` WRITE;
/*!40000 ALTER TABLE `catalogo_ext` DISABLE KEYS */;
INSERT INTO `catalogo_ext` VALUES (0,'ninguno','sin formato'),(1,'jpg','fotos'),(2,'png','fotos'),(3,'swf','flash'),(4,'mov','video'),(5,'avi','video');
/*!40000 ALTER TABLE `catalogo_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_index`
--

DROP TABLE IF EXISTS `catalogo_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogo_index` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `descripcion` text,
  `imagen` varchar(100) NOT NULL DEFAULT 'sin_titulo',
  `subnombre` varchar(100) DEFAULT NULL,
  `categoria` int(3) NOT NULL DEFAULT '0',
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `ext` smallint(2) NOT NULL DEFAULT '0',
  `bolean` smallint(1) NOT NULL DEFAULT '0',
  `precio_baja` decimal(19,2) NOT NULL DEFAULT '0.00',
  `precio_alta` decimal(19,2) NOT NULL DEFAULT '0.00',
  `precio_altisima` decimal(19,2) NOT NULL DEFAULT '0.00',
  `precio_alta2` decimal(19,2) NOT NULL DEFAULT '0.00',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_index`
--

LOCK TABLES `catalogo_index` WRITE;
/*!40000 ALTER TABLE `catalogo_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogo_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_temporadas`
--

DROP TABLE IF EXISTS `catalogo_temporadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogo_temporadas` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `desde` date NOT NULL,
  `hasta` date NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_temporadas`
--

LOCK TABLES `catalogo_temporadas` WRITE;
/*!40000 ALTER TABLE `catalogo_temporadas` DISABLE KEYS */;
INSERT INTO `catalogo_temporadas` VALUES (1,'baja','2012-05-01','2012-10-31'),(2,'alta','2012-11-01','2012-12-20'),(3,'altisima','2012-12-21','2013-01-04'),(4,'alta2','2013-01-05','2013-04-30');
/*!40000 ALTER TABLE `catalogo_temporadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citas_index`
--

DROP TABLE IF EXISTS `citas_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citas_index` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `contenido` text NOT NULL,
  `autor` varchar(100) NOT NULL DEFAULT '',
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `diputado` smallint(2) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas_index`
--

LOCK TABLES `citas_index` WRITE;
/*!40000 ALTER TABLE `citas_index` DISABLE KEYS */;
INSERT INTO `citas_index` VALUES (1,'<p>...que s&oacute;lo un objetivo ha de guiarnos: el de acertar en la definici&oacute;n de lo que ser&aacute; mejor para M&eacute;xico.</p>','Manuel Gómez Morín',1,7),(2,'<p>Porque en la capacidad de insistir estriba la lucha misma; porque en ella est&aacute; el secreto final del &eacute;xito, que es &eacute;ste: nuestra vida, nuestra ventura, nuestra salvaci&oacute;n, nuestra gloria, son la gloria, la salvaci&oacute;n, la dignidad, la ventura, la vida de M&eacute;xico</p>','Manuel Gómez Morín',0,0),(3,'<p>La pol&iacute;tica no es una lucha de &aacute;ngeles contra demonios, sino que debe partir del fundamento que nuestro adversario pol&iacute;tico es un ser humano.</p>','Carlos Castillo Peraza ',1,2),(4,'<p>En la pol&iacute;tica debe haber gente dispuesta a lograr algo y no solamente gente que sigue a alguien.</p>','Florentina Villalobos ',1,9),(5,'<p>No es tiempo de inventar futuros con el pretexto de que inventar el futuro salva el presente, sino es tiempo de preservar el futuro por la acci&oacute;n responsable en el presente.</p>','Carlos Castillo Peraza',1,5),(6,'<p>Burocracia es el arte de convertir lo f&aacute;cil en dif&iacute;cil por medio de lo in&uacute;til.</p>','Carlos Castillo Peraza',1,4),(7,'<p>El trabajo pol&iacute;tico serio debe realizarse como cualquier otro trabajo; no debe efectuarse de cualquier manera. El trabajo pol&iacute;tico vale la pena de hacerse.</p>','Florentina Villalobos',1,6),(8,'<p>Existen valores fundamentales como la verdad, el amoral pr&oacute;jimo, la justicia, la estima del bien com&uacute;n, junto con las grandes normas de moral natural: haz el bien y evita el mal.</p>','Efraín González Morfín ',1,12),(9,'<p>No fue creado el hombre para el Estado, sino que ha sido el Estado instituido por el hombre.</p>','Rafael Preciado Hernández',1,11),(10,'<p>La fuerza de la democracia radica fundamentalmente en saber organizar la libertad de un pueblo, que s&oacute;lo as&iacute; puede convertirse en due&ntilde;o de su destino.</p>','Rafael Preciado Hernández',1,13),(11,'<p>Los partidos deben ser escuelas pr&aacute;cticas de democracia, para el pueblo y los gobernantes, y canales de expresi&oacute;n de la opini&oacute;n p&uacute;blica.</p>','Adolfo Christlieb Ibarrola',1,3),(12,'<p>Cuando nos tiran lodo, lo &uacute;nico que debemos hacer es esperar a que se seque porque se cae solo.</p>','Diego Fernández de Cevallos',1,8),(13,'<p>Que a nadie le impulse el rencor. Pero que a nadie lo detenga el miedo.</p>','Diego Fernández de Cevallos',1,1),(14,'<p>En los hombres p&uacute;blicos es indispensable la congruencia entre las tesis que pregonan y la conducta que practican.</p>','Abel Vicencio Tovar',1,10),(15,'<p>En pol&iacute;tica no hay dogmas. La pol&iacute;tica se da en el mundo de lo real, de la posibilidad, de la contingencia, del drama vital.</p>','Abel Vicencio Tovar',1,0),(16,'<p>Por estas razones y por muchas m&aacute;s, el origen del nuevo gobierno y de su presidente es ileg&iacute;timo, y seguir&aacute; siendo ileg&iacute;timo hasta el fin de los tiempos.</p>','Abel Vicencio Tovar',1,0),(17,'<p>Estamos decididos a demostrar que la democracia y el federalismo son posibles.</p>','Ernesto Ruffo Appel',1,0),(18,'<p>Cierto es que los j&oacute;venes no conocen al PRI autoritario que combatimos, pero tampoco al PAN heroico del que nos enamoramos.</p>','Gustavo Madero Muñoz',1,0),(19,'<p>El r&eacute;gimen carece de &eacute;tica pol&iacute;tica y ha abandonado los principios revolucionarios, porque los usurpadores no son ni rojos ni blancos sino que se desl&iacute;en en un suave color de rosa.</p>','Miguel Estrada Iturbide',1,0),(20,'<p>Quienes nos acusan de guardar una posici&oacute;n c&oacute;moda, de hacer una oposici&oacute;n elegante, ignoran lo que es nuestro esfuerzo y lo que es sacrificio.</p>','Miguel Estrada Iturbide',1,0),(21,'<p>\r\n<p>Siempre habr&aacute; hombres dispuestos para seguir gestionando la libertad, para seguir mereciendo la salvaci&oacute;n.</p>\r\n<div><br /></div>\r\n</p>','Miguel Estrada Iturbide',1,0),(22,'<p>No puede haber otra conducta pol&iacute;tica que la que se enfoca a la gesti&oacute;n del Bien Com&uacute;n ya sea dentro del poder o frente al poder.</p>','Miguel Estrada Iturbide',1,0),(23,'<p>Los problemas de M&eacute;xico no se resuelven solos, es tarea de todos y cada uno de nosotros buscar su soluci&oacute;n&hellip;</p>','Miguel Estrada Iturbide',1,0),(24,'<p>\r\n<p>Acci&oacute;n Nacional ha basado su organizaci&oacute;n y su actividad en una doctrina, integrada por principios permanentes.</p>\r\n</p>','Efraín González Morfín',1,0),(25,'<p>La conciencia del fin es elemento esencial de la propia identidad.</p>','Efraín González Morfín',1,0),(26,'<p>Saber de d&oacute;nde venimos, hacia d&oacute;nde vamos y cu&aacute;l es el camino, es condici&oacute;n indispensable para poder contestar qui&eacute;nes somos.</p>','Efraín González Morfín',1,0),(27,'<p>Sin doctrina, carece de base profunda la insatisfacci&oacute;n frente a la situaci&oacute;n de M&eacute;xico y la cr&iacute;tica que podamos hacer de la misma.</p>','Efraín González Morfín',1,0);
/*!40000 ALTER TABLE `citas_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coment`
--

DROP TABLE IF EXISTS `coment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL DEFAULT '',
  `remite` varchar(150) NOT NULL DEFAULT '',
  `correo` varchar(50) NOT NULL DEFAULT '',
  `comentario` text,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `relativo` int(11) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coment`
--

LOCK TABLES `coment` WRITE;
/*!40000 ALTER TABLE `coment` DISABLE KEYS */;
INSERT INTO `coment` VALUES (1,'Algo estÃ¡ pasando...','Alicia','','que mis mensajes no aparecen, TRABAJEEEEN!!!','2010-12-03 08:40:26',2);
/*!40000 ALTER TABLE `coment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprar_index`
--

DROP TABLE IF EXISTS `comprar_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comprar_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(250) NOT NULL,
  `suma` decimal(19,2) NOT NULL DEFAULT '0.00',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `catalogo` int(3) NOT NULL,
  `precio` decimal(19,2) NOT NULL DEFAULT '0.00',
  `desde` date NOT NULL,
  `hasta` date NOT NULL,
  `cliente` int(11) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprar_index`
--

LOCK TABLES `comprar_index` WRITE;
/*!40000 ALTER TABLE `comprar_index` DISABLE KEYS */;
INSERT INTO `comprar_index` VALUES (11,'oliver','2160.00','2012-11-29 18:50:40',2,'270.00','2012-11-16','2012-11-24',0);
/*!40000 ALTER TABLE `comprar_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `congreso_coordina`
--

DROP TABLE IF EXISTS `congreso_coordina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `congreso_coordina` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `coordinador_id` int(5) NOT NULL,
  `dia_id` int(5) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `congreso_coordina`
--

LOCK TABLES `congreso_coordina` WRITE;
/*!40000 ALTER TABLE `congreso_coordina` DISABLE KEYS */;
INSERT INTO `congreso_coordina` VALUES (1,8,1),(2,17,1),(3,25,1),(4,5,2),(5,2,2),(6,26,2),(7,12,3),(8,27,3),(9,28,3),(10,17,4),(11,29,4);
/*!40000 ALTER TABLE `congreso_coordina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `congreso_dia`
--

DROP TABLE IF EXISTS `congreso_dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `congreso_dia` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `congreso` smallint(2) NOT NULL DEFAULT '1',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `congreso_dia`
--

LOCK TABLES `congreso_dia` WRITE;
/*!40000 ALTER TABLE `congreso_dia` DISABLE KEYS */;
INSERT INTO `congreso_dia` VALUES (1,'Miércoles 18 de julio de 2012',1),(2,'Jueves 19 de julio de 2012',1),(3,'Viernes 20 de julio de 2012',1),(4,'Sábado 21 de julio de 2012',1),(5,'Domingo 22 de julio de 2012',1),(6,'Martes 17 de julio de 2012',2);
/*!40000 ALTER TABLE `congreso_dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `congreso_imparte`
--

DROP TABLE IF EXISTS `congreso_imparte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `congreso_imparte` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `imparte` varchar(250) NOT NULL DEFAULT '',
  `perfil` varchar(250) NOT NULL DEFAULT '',
  `curri` text NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `congreso_imparte`
--

LOCK TABLES `congreso_imparte` WRITE;
/*!40000 ALTER TABLE `congreso_imparte` DISABLE KEYS */;
INSERT INTO `congreso_imparte` VALUES (1,'Dr. Salvador Bueno Valenzuela','','Tesorero de la Academia Mexicana de Neurología'),(2,'Dr. Carlos Cuevas','','Presidente de la Academia Mexicana de Neurología'),(3,'Dr. Ulises Aguilar Baturoni','','Fisiologia y doctorado de Fisiologia  H. Syracussa New York Jefe de Neurofisiologia Hospital Juarez 2000 jefe de unidad de fisiologia UNAM. '),(4,'Dr. Francisco Javier Puerta Cuestas','','Neurofisiólogo y Somnólogo. Jefe del Servicio de Neurofisolofìa y de la Unidad de sueño Hospital la Ribera Valencia España. Ex presidente de la Sociedad Española de Sueño.'),(5,'Dra. Guadalupe Bonilla Mejía','','Neurologa IMSS centro medico nacional Neurofisiologia. Unidad Universitaria de Neurofisiologia H. Juarez 2000 Felow sueño Hospital la Ribera, Valencia España'),(6,'Dr. Juan Castrejón Chávez','','Neurólogo IMSS Centro Médico Nacional Neurofisiología. INNN Manuel velasco Suarez. Felos sueño Hospital la Ribera valencia Espana.'),(7,'Dr. Federico Micheli','','Neurólogo, Argentina'),(8,'Dra. Marisela Concepción Parra Bernal','','Neuróloga-Gerontóloga, Presidenta de ANNIMSS. México'),(9,'Dr. Bernardo Ng','','Psiquiatra. Tijuana, BC, México'),(10,'Dr. Francisco Javier Puertas, Dr. Juan Castrejón y Dra. Guadalupe Bonilla','',''),(11,'Dr. Victor M. Rivera-Olmos','','Neurólgo, profesor titular de Neurología, Baylor College of Medicine Maxine Mesinger Multiple Sclerosis Clinic, The Methodist Hospital, Houston, Texas, USA'),(12,'Dr. Miguel Ángel Macías Islas','','Profesor titular del departamento de Neurociencias, Centro Universitario de Ciencias de la Salud, Universidad de Guadalajara. Jefe del Departamento de Neurología, Hospital de Especialidades, Centro Médico Nacional de Occidente IMSS, Guadalajara, Jalisco.'),(13,'Dra. Adriana Horta','','IMSS, México'),(14,'Dr. Victor Rivera y Dr. Leonardo Llamas L.','',''),(21,'Dr. Antonio Rizzoli Córdoba ','','HIM'),(15,'Dra. Karina Vélez','','Neurólogoa IMSS. México'),(16,'Dr. Jaime Ruíz Chávez ','',''),(17,'Dra. Edith Alva Moncayo','','Neuróloga pediatra, H. La Raza IMSS, Secretaria de ANNIMSS. México'),(18,'Dra. María Castro Tarín  ','',''),(19,'Dra. Eunice López Correa ','',''),(20,'Dra. Guadalupe González de la Rosa','',''),(22,'Dr. David King-Stephens','Neurólogo, epileptólogo de los  E.U.','Escuela de Medicina, Universidad LaSalle, México. Internado en Medicina Interna en la Universidad de Yale, EUA (1998-1990).<br>\r\nResidencia en Neurología en la Universidad de Columbia, NY, EUA (1990-1993).<br>\r\nSubespecialidad en Epilepsia, Universidad de Yale, EUA (1993-1996).<br>\r\nDirector de neurofisiología, Co-director Servicio de Eplipsia, California Pacific Medical Center, San Francisco, CA, EUA (1999-presente).<br>\r\nPubliaciones: Neurology, Epilepsia, Epilepsia Research.'),(23,'Dr. Héctor González Usigli','','Subespecialidad en Trastornos del Movimiento desde Julio de 2011, en el departamento de Neurología de la Universidad de Cincinnati<br>\r\n\r\nResidencia en Neurología en el Hospital de Especialidades, Centro Médico Nacional de Occidente, IMSS, Universidad de Guadalajara.<br>\r\n\r\nEstudios de Medicina en la Universidad de Guadalajara, Centro Universitario de Ciencias de la Salud (1992.1998)'),(24,'Por confirmar (EU)','',''),(25,'Dr. Mario Mireles R.','',''),(26,'Dr. Francisco Javier Jiménez Gil','',''),(27,'Dr. Juan Lozano Zárate','',''),(28,'Dr. Roberto Partida Medina','',''),(29,'Dr. Leonardo Eleazar Cruz Alcalá','',''),(30,'Dra. Ingrid Eloísa Estrada Bellmann','','');
/*!40000 ALTER TABLE `congreso_imparte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `congreso_programa`
--

DROP TABLE IF EXISTS `congreso_programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `congreso_programa` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `tema` varchar(250) NOT NULL,
  `subtema` varchar(250) NOT NULL DEFAULT '',
  `tipo` int(2) NOT NULL DEFAULT '0',
  `imparte` int(3) NOT NULL DEFAULT '0',
  `dirigido` int(2) NOT NULL DEFAULT '0',
  `descripcion` text NOT NULL,
  `lugar` int(2) NOT NULL DEFAULT '0',
  `hora_i` time NOT NULL DEFAULT '00:00:00',
  `hora_t` time NOT NULL DEFAULT '00:00:00',
  `dia` smallint(2) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `congreso_programa`
--

LOCK TABLES `congreso_programa` WRITE;
/*!40000 ALTER TABLE `congreso_programa` DISABLE KEYS */;
INSERT INTO `congreso_programa` VALUES (1,'Inscripción y Registro','',1,0,0,'',0,'12:30:00','20:00:00',1),(2,'Pósters y Trabajos Libres','',2,1,0,'',0,'17:00:00','19:00:00',1),(3,'Inauguración','',1,0,0,'A cargo del Dr. Carlos Cuevas Presidente de la Academia Mexicana de Neurología.<br> Cena de Bienvenida.<br><br>\r\nInvitada especial Fundadora de la ANNIMSS<br> \r\nDra. Teresita Corona Vázquez. Directora de Instituto Nacional de Neurologia y Neurocirugía\r\n',0,'20:00:00','23:00:00',1),(4,'Ontogénesis y fisiología del sueño','',0,3,0,'',0,'08:00:00','08:40:00',2),(5,'Narcolepsia','',0,4,0,'',0,'08:40:00','09:40:00',2),(6,'Parasomnias','',0,5,0,'',0,'09:40:00','10:00:00',2),(7,'Síndrome de piernas inquietas y movimientos periódicos de piernas','',0,4,0,'',0,'10:30:00','11:30:00',2),(8,'Trastornos del sueño en Parkinson y Demencia','',0,6,0,'',0,'11:30:00','12:00:00',2),(9,'Actualidades del tratamiento de Enfermedad de Parkinson','',0,7,0,'',0,'12:00:00','13:00:00',2),(10,'Demencia y Parkinson','',0,2,0,'',0,'13:00:00','13:30:00',2),(11,'Simposio: Demencia de Alzheimer','',0,8,0,'',0,'14:00:00','14:30:00',2),(12,'Simposio: Actualidades del manejo de Alzheimer','',0,9,0,'',0,'14:30:00','15:00:00',2),(13,'Sesión de Casos Clínicos del Trastornos del Sueño','',0,10,0,'',0,'15:00:00','16:00:00',2),(14,'Rifa','',1,0,0,'',0,'16:00:00','17:00:00',2),(15,'Simposio: Actividades en tratamiento de la Esclerosis Múltiple ','',0,11,0,'',0,'08:00:00','09:00:00',3),(16,'Cognición y hallazgos neurofisiológicos en Esclerosis Múltiple','',0,12,0,'',0,'09:00:00','09:30:00',3),(38,'Simposio: Más allá de las manifestaciones motoras de la Enfermedad de Parkinson','',0,23,0,'',0,'11:00:00','11:40:00',3),(18,'Casos clínicos en Esclerosis Múltiple','',0,14,0,'',0,'09:30:00','10:30:00',3),(19,'Receso','',1,1,0,'',0,'10:30:00','11:00:00',3),(20,'Casos clínicos en Enfermedad Parkinson','',0,7,0,'',0,'11:40:00','12:40:00',3),(21,'Receso','',1,1,0,'',0,'12:40:00','13:00:00',3),(22,'Tratamiento profiláctico de la Migraña. Experiencia en Mexico','',0,15,0,'',0,'14:00:00','14:40:00',3),(23,'Rifa','',1,1,0,'',0,'14:40:00','15:00:00',3),(24,'Tiempo libre','',1,1,0,'',0,'15:00:00','20:00:00',3),(25,'Cena y entrega de reconocimientos','',1,1,0,'',0,'20:30:00','23:00:00',3),(26,'Simposio: Controversias en la aplicación de Inmunoglobulinas en Patologia Neurológica','',0,16,0,'',0,'08:00:00','09:00:00',4),(27,'Instrumento diagnóstico de los problemas del desarrollo infantil en México y Encuesta sobre las escalas de evaluación del desarrollo del niño a los asistentes.','',0,21,0,'',0,'09:00:00','09:40:00',4),(28,'Avances sobre tratamiento de Síndrome Epilépticos Catastróficos con los nuevos antiepilépticos Vs convencionales','',0,17,0,'',0,'09:40:00','10:10:00',4),(29,'Receso','',1,1,0,'',0,'11:10:00','11:40:00',4),(30,'TDAH  Avances en fisiopatología y aplicación en terapia farmacológica','',0,18,0,'',0,'11:40:00','12:20:00',4),(31,'Comorbilidades de TDAH en la paciente pediátrica','',0,19,0,'',0,'12:20:00','13:00:00',4),(32,'Tratamiento alternativo en TDAH en niños ','',0,20,0,'',0,'13:00:00','13:40:00',4),(33,'Comida de clausura y premiaciones','',1,1,0,'',0,'14:00:00','17:00:00',4),(34,'Salida','',1,0,0,'',0,'08:00:00','12:00:00',5),(35,'Receso','',1,0,0,'',0,'10:00:00','10:30:00',2),(36,'Receso','',1,0,0,'',0,'13:30:00','14:00:00',2),(37,'Simposio: Avances en el tratamiento de la epilepsia evidencias Vs. experiencias','',0,22,0,'',0,'10:10:00','11:10:00',4),(39,'Simposio: \"Diagnóstico de la Enfermedad de Pompe\" (comida)','',0,24,0,'',0,'13:00:00','14:00:00',3),(40,'Rifa','',1,0,0,'',0,'13:40:00','14:00:00',4),(41,'Incripciones (gratuitas)','',1,0,0,'',0,'08:00:00','09:00:00',6),(42,'Mitos y realidades en Epilepsia','',0,17,0,'',0,'09:00:00','10:00:00',6),(43,'Diagnóstico y tratamiento de Cefaleas','',0,1,0,'',0,'10:00:00','11:00:00',6),(44,'Trastornos de Déficit de Atención en Niños y Adolescentes','',0,17,0,'',0,'11:00:00','11:30:00',6),(45,'Trastornos de Déficit de Atención en Adultos','',0,8,0,'',0,'11:30:00','12:00:00',6),(46,'Mesa Redonda','',1,0,0,'',0,'12:00:00','12:30:00',6),(47,'Receso','',1,0,0,'',0,'12:30:00','13:00:00',6),(48,'Falla de memoria y demencias','',0,8,0,'',0,'13:00:00','14:00:00',6),(49,'Enfermedad de Parkinson, Diagnóstico y tratamiento','',0,30,0,'',0,'14:00:00','15:00:00',6);
/*!40000 ALTER TABLE `congreso_programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contador`
--

DROP TABLE IF EXISTS `contador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) DEFAULT NULL,
  `hora` varchar(8) DEFAULT NULL,
  `fecha` varchar(20) DEFAULT NULL,
  `segundos` varchar(30) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=334 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contador`
--

LOCK TABLES `contador` WRITE;
/*!40000 ALTER TABLE `contador` DISABLE KEYS */;
INSERT INTO `contador` VALUES (209,'','12:05:38','Fri 16 Nov 2012','1353045938'),(210,'::1','12:07:00','Fri 16 Nov 2012','1353046020'),(211,'::1','06:07:49','Fri 16 Nov 2012','1353067669'),(212,'::1','07:08:52','Fri 16 Nov 2012','1353071332'),(213,'::1','09:07:15','Fri 16 Nov 2012','1353078435'),(214,'::1','01:25:59','Tue 20 Nov 2012','1353439559'),(215,'::1','02:27:10','Tue 20 Nov 2012','1353443230'),(216,'::1','04:23:18','Tue 20 Nov 2012','1353450198'),(217,'::1','10:06:00','Tue 20 Nov 2012','1353470760'),(218,'::1','05:58:14','Mon 26 Nov 2012','1353974294'),(219,'::1','07:33:00','Mon 26 Nov 2012','1353979980'),(220,'::1','12:20:49','Tue 27 Nov 2012','1354040449'),(221,'::1','01:21:21','Tue 27 Nov 2012','1354044081'),(222,'::1','02:21:27','Tue 27 Nov 2012','1354047687'),(223,'::1','03:45:26','Tue 27 Nov 2012','1354052726'),(224,'::1','04:55:27','Tue 27 Nov 2012','1354056927'),(225,'::1','11:56:30','Wed 28 Nov 2012','1354125390'),(226,'::1','07:09:36','Wed 28 Nov 2012','1354151376'),(227,'::1','09:42:03','Thu 29 Nov 2012','1354203723'),(228,'::1','12:28:28','Thu 29 Nov 2012','1354213708'),(229,'::1','02:00:05','Thu 29 Nov 2012','1354219205'),(230,'::1','03:13:45','Thu 29 Nov 2012','1354223625'),(231,'::1','07:58:29','Thu 29 Nov 2012','1354240709'),(232,'::1','05:28:48','Fri 30 Nov 2012','1354318128'),(233,'::1','11:02:41','Mon 17 Dec 2012','1355763761'),(234,'fe80::1','11:31:13','Sat 12 Jan 2013','1358011873'),(235,'::1','07:18:07','Fri 08 Feb 2013','1360329487'),(236,'::1','01:49:07','Sat 09 Feb 2013','1360439347'),(237,'::1','11:00:58','Sat 09 Feb 2013','1360472458'),(238,'::1','01:33:04','Sun 10 Feb 2013','1360524784'),(239,'::1','03:48:10','Sun 10 Feb 2013','1360532890'),(240,'::1','04:48:25','Sun 10 Feb 2013','1360536505'),(241,'::1','06:29:47','Sun 10 Feb 2013','1360542587'),(242,'::1','07:29:55','Sun 10 Feb 2013','1360546195'),(243,'::1','08:32:13','Sun 10 Feb 2013','1360549933'),(244,'::1','09:32:57','Sun 10 Feb 2013','1360553577'),(245,'::1','10:32:59','Sun 10 Feb 2013','1360557179'),(246,'::1','08:34:23','Mon 11 Feb 2013','1360593263'),(247,'127.0.0.1','08:46:34','Mon 11 Feb 2013','1360593994'),(248,'::1','01:26:34','Mon 11 Feb 2013','1360610794'),(249,'::1','05:03:35','Mon 11 Feb 2013','1360623815'),(250,'::1','06:04:51','Mon 11 Feb 2013','1360627491'),(251,'::1','07:05:19','Mon 11 Feb 2013','1360631119'),(252,'::1','08:05:26','Mon 11 Feb 2013','1360634726'),(253,'::1','09:07:02','Mon 11 Feb 2013','1360638422'),(254,'::1','10:26:39','Mon 11 Feb 2013','1360643199'),(255,'::1','11:50:32','Mon 11 Feb 2013','1360648232'),(256,'::1','12:52:45','Tue 12 Feb 2013','1360651965'),(257,'127.0.0.1','01:03:08','Tue 12 Feb 2013','1360652588'),(258,'::1','01:53:34','Tue 12 Feb 2013','1360655614'),(259,'127.0.0.1','02:28:43','Tue 12 Feb 2013','1360657723'),(260,'::1','09:04:33','Tue 12 Feb 2013','1360681473'),(261,'::1','10:04:34','Tue 12 Feb 2013','1360685074'),(262,'::1','03:39:22','Tue 12 Feb 2013','1360705162'),(263,'::1','02:44:37','Fri 15 Feb 2013','1360961077'),(264,'fe80::1','02:46:30','Fri 15 Feb 2013','1360961190'),(265,'::1','08:11:45','Fri 15 Feb 2013','1360980705'),(266,'::1','09:11:59','Fri 15 Feb 2013','1360984319'),(267,'::1','08:57:34','Tue 19 Feb 2013','1361285854'),(268,'::1','11:04:26','Tue 19 Feb 2013','1361293466'),(269,'::1','12:07:50','Tue 19 Feb 2013','1361297270'),(270,'::1','01:08:59','Tue 19 Feb 2013','1361300939'),(271,'::1','12:19:02','Wed 20 Feb 2013','1361384342'),(272,'::1','01:20:55','Wed 20 Feb 2013','1361388055'),(273,'::1','03:46:54','Wed 20 Feb 2013','1361396814'),(274,'::1','07:54:08','Wed 20 Feb 2013','1361411648'),(275,'::1','08:55:16','Wed 20 Feb 2013','1361415316'),(276,'::1','09:58:58','Wed 20 Feb 2013','1361419138'),(277,'::1','10:59:08','Wed 20 Feb 2013','1361422748'),(278,'::1','07:43:50','Thu 21 Feb 2013','1361454230'),(279,'fe80::1','07:53:20','Thu 21 Feb 2013','1361454800'),(280,'::1','01:42:17','Thu 21 Feb 2013','1361475737'),(281,'127.0.0.1','09:31:02','Thu 21 Feb 2013','1361503862'),(282,'::1','09:44:05','Thu 21 Feb 2013','1361504645'),(283,'::1','08:56:29','Fri 22 Feb 2013','1361544989'),(284,'192.168.0.105','07:14:24','Fri 22 Feb 2013','1361582064'),(285,'::1','07:27:05','Fri 22 Feb 2013','1361582825'),(286,'::1','08:40:58','Fri 22 Feb 2013','1361587258'),(287,'::1','09:46:23','Fri 22 Feb 2013','1361591183'),(288,'::1','10:39:52','Sat 23 Feb 2013','1361637592'),(289,'::1','06:06:27','Sat 23 Feb 2013','1361664387'),(290,'::1','01:51:30','Thu 21 Mar 2013','1363895490'),(291,'::1','08:14:36','Thu 21 Mar 2013','1363918476'),(292,'::1','12:02:04','Fri 22 Mar 2013','1363932124'),(293,'::1','02:19:38','Fri 22 Mar 2013','1363983578'),(294,'fe80::1','02:50:57','Fri 22 Mar 2013','1363985457'),(295,'::1','05:26:37','Fri 22 Mar 2013','1363994797'),(296,'fe80::1','05:36:59','Fri 22 Mar 2013','1363995419'),(297,'fe80::1','06:42:56','Fri 22 Mar 2013','1363999376'),(298,'fe80::1','07:59:13','Fri 22 Mar 2013','1364003953'),(299,'fe80::1','08:59:17','Fri 22 Mar 2013','1364007557'),(300,'fe80::1','10:00:06','Fri 22 Mar 2013','1364011206'),(301,'fe80::1','11:28:43','Fri 22 Mar 2013','1364016523'),(302,'::1','01:04:18','Mon 25 Mar 2013','1364238258'),(303,'::1','02:12:55','Mon 25 Mar 2013','1364242375'),(304,'::1','01:50:41','Tue 26 Mar 2013','1364327441'),(305,'::1','02:09:10','Wed 27 Mar 2013','1364414950'),(306,'127.0.0.1','02:30:00','Wed 27 Mar 2013','1364416200'),(307,'::1','11:50:49','Tue 02 Apr 2013','1364925049'),(308,'::1','11:25:27','Tue 02 Apr 2013','1364966727'),(309,'::1','09:21:02','Thu 04 Apr 2013','1365088862'),(310,'::1','10:22:59','Thu 04 Apr 2013','1365092579'),(311,'::1','10:31:17','Thu 04 Apr 2013','1365136277'),(312,'::1','10:46:08','Fri 05 Apr 2013','1365180368'),(313,'::1','08:40:44','Fri 05 Apr 2013','1365216044'),(314,'::1','02:26:48','Tue 09 Apr 2013','1365535608'),(315,'::1','08:20:47','Wed 10 Apr 2013','1365643247'),(316,'::1','12:26:26','Thu 11 Apr 2013','1365701186'),(317,'::1','09:39:58','Thu 11 Apr 2013','1365734398'),(318,'::1','01:01:59','Fri 12 Apr 2013','1365789719'),(319,'::1','12:28:42','Sat 13 Apr 2013','1365874122'),(320,'::1','01:23:19','Mon 15 Apr 2013','1366050199'),(321,'::1','04:44:23','Mon 15 Apr 2013','1366062263'),(322,'::1','08:27:55','Wed 17 Apr 2013','1366248475'),(323,'::1','01:21:40','Thu 18 Apr 2013','1366309300'),(324,'::1','11:53:56','Fri 19 Apr 2013','1366390436'),(325,'::1','10:27:00','Mon 22 Apr 2013','1366644420'),(326,'::1','10:45:51','Mon 29 Apr 2013','1367293551'),(327,'::1','04:17:10','Thu 02 May 2013','1367529430'),(328,'::1','01:53:10','Fri 03 May 2013','1367607190'),(329,'::1','03:43:32','Sat 04 May 2013','1367700212'),(330,'::1','10:32:01','Sun 05 May 2013','1367767921'),(331,'::1','01:19:53','Sun 05 May 2013','1367777993'),(332,'::1','02:19:54','Sun 05 May 2013','1367781594'),(333,'::1','12:34:58','Mon 06 May 2013','1367861698');
/*!40000 ALTER TABLE `contador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corporativa_index`
--

DROP TABLE IF EXISTS `corporativa_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corporativa_index` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL DEFAULT '',
  `subtitulo` varchar(50) NOT NULL DEFAULT '',
  `contenido` text NOT NULL,
  `banner` smallint(6) NOT NULL DEFAULT '0',
  `publicado` smallint(1) NOT NULL DEFAULT '0',
  `autor` int(5) NOT NULL DEFAULT '0',
  `ruta` smallint(2) NOT NULL DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `imagen` varchar(50) NOT NULL DEFAULT '',
  `orden` int(2) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporativa_index`
--

LOCK TABLES `corporativa_index` WRITE;
/*!40000 ALTER TABLE `corporativa_index` DISABLE KEYS */;
INSERT INTO `corporativa_index` VALUES (1,'Nain','','',0,1,1,0,'0000-00-00 00:00:00','',1),(2,'Perfil','','<p>Inició sus estudios literarios en la Sociedad General de escritores de México (Sogem) y ha participado en diferentes talleres con los escritores: Fernando de León, Rosa María Aura y Marco Aurelio Larios.</p>\r\n<p>Tiene cuentos publicados dentro de la serie de libros titulados: Caleidoscopio, que edita la Sogem y la obra de teatro: El gallo se mata la primera noche, editado por la misma sociedad de escritores. Así como cuentos en diferentes periódicos literarios.</p>\r\n<p>Recuerdos Circulares es su primera novela.</p>',0,1,0,0,'2012-08-30 15:27:00','',0),(3,'Su mensaje...','','<p>Su mensaje se ha enviado exitosamente.<br /><br /> En breve nos pondremos en contacto con usted.</p>\r\n<p>Muchas gracias</p>',0,1,1,0,'2010-12-08 00:12:27','',0),(5,'About nain','','',0,1,0,0,'2012-10-30 02:15:35','logo',0),(6,'Account created','','<p>Your account has been created. Please check your email, You should have recieved a notification for activate it. If not, please take a look at spam folder, it may be there.</p>',0,1,0,0,'2012-11-08 17:01:19','',0),(7,'Bank account information','','<p>Banamex</p>\r\n<p>Sucursal: 15151515</p>\r\n<p>Cuenta 151515151</p>\r\n<p>A nombre de: Un nombre Aleatorio</p>',0,1,0,0,'2012-11-12 05:03:43','',0),(9,'¿Quiénes somos?','','<p>Hojuelas de ma&iacute;z</p>',0,1,0,0,'2013-05-06 15:03:38','',0);
/*!40000 ALTER TABLE `corporativa_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corporativa_resaque`
--

DROP TABLE IF EXISTS `corporativa_resaque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corporativa_resaque` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `contenido` text NOT NULL,
  `vincula` int(3) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporativa_resaque`
--

LOCK TABLES `corporativa_resaque` WRITE;
/*!40000 ALTER TABLE `corporativa_resaque` DISABLE KEYS */;
/*!40000 ALTER TABLE `corporativa_resaque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corporativa_rutas`
--

DROP TABLE IF EXISTS `corporativa_rutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corporativa_rutas` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporativa_rutas`
--

LOCK TABLES `corporativa_rutas` WRITE;
/*!40000 ALTER TABLE `corporativa_rutas` DISABLE KEYS */;
INSERT INTO `corporativa_rutas` VALUES (0,'ninguno');
/*!40000 ALTER TABLE `corporativa_rutas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descargar_index`
--

DROP TABLE IF EXISTS `descargar_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descargar_index` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '',
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `disponible` smallint(1) NOT NULL DEFAULT '4',
  `ext` varchar(5) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descargar_index`
--

LOCK TABLES `descargar_index` WRITE;
/*!40000 ALTER TABLE `descargar_index` DISABLE KEYS */;
INSERT INTO `descargar_index` VALUES (1,'Junio 2010',1,3,'pdf');
/*!40000 ALTER TABLE `descargar_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directorio`
--

DROP TABLE IF EXISTS `directorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) NOT NULL DEFAULT '',
  `apellidos` varchar(250) DEFAULT NULL,
  `grupo` int(11) NOT NULL DEFAULT '0',
  `imagen` varchar(10) NOT NULL DEFAULT '',
  `tratamiento` varchar(50) NOT NULL DEFAULT '',
  `apodo` varchar(50) NOT NULL DEFAULT '',
  `empresa` varchar(150) NOT NULL DEFAULT '',
  `cargo` varchar(150) NOT NULL DEFAULT '',
  `telefono_tr1` varchar(30) NOT NULL DEFAULT '',
  `telefono_tr2` varchar(30) NOT NULL DEFAULT '',
  `telefono_pa1` varchar(30) NOT NULL DEFAULT '',
  `telefono_pa2` varchar(30) NOT NULL DEFAULT '',
  `fax_tr` varchar(30) NOT NULL DEFAULT '',
  `fax_pa` varchar(30) NOT NULL DEFAULT '',
  `celular1` varchar(30) NOT NULL DEFAULT '',
  `celular2` varchar(30) NOT NULL DEFAULT '',
  `buscapersonas` varchar(80) NOT NULL DEFAULT '',
  `mail` varchar(50) NOT NULL DEFAULT '',
  `mail2` varchar(50) NOT NULL DEFAULT '',
  `msn` varchar(50) NOT NULL DEFAULT '',
  `google_talk` varchar(50) NOT NULL DEFAULT '',
  `skype` varchar(50) NOT NULL DEFAULT '',
  `facebook` varchar(50) NOT NULL DEFAULT '',
  `twitter` varchar(50) NOT NULL DEFAULT '',
  `direccion_tr` varchar(250) NOT NULL DEFAULT '',
  `ciudad_tr` varchar(150) NOT NULL DEFAULT '',
  `estado_tr` varchar(50) NOT NULL DEFAULT '',
  `cp_tr` varchar(10) NOT NULL DEFAULT '',
  `pais_tr` varchar(30) NOT NULL DEFAULT '',
  `direccion_tr2` varchar(250) NOT NULL DEFAULT '',
  `ciudad_tr2` varchar(150) NOT NULL DEFAULT '',
  `estado_tr2` varchar(50) NOT NULL DEFAULT '',
  `cp_tr2` varchar(10) NOT NULL DEFAULT '',
  `pais_tr2` varchar(30) NOT NULL DEFAULT '',
  `direccion_pa` varchar(250) NOT NULL DEFAULT '',
  `ciudad_pa` varchar(150) NOT NULL DEFAULT '',
  `estado_pa` varchar(50) NOT NULL DEFAULT '',
  `cp_pa` varchar(10) NOT NULL DEFAULT '',
  `pais_pa` varchar(30) NOT NULL DEFAULT '',
  `cumpleanos` date DEFAULT NULL,
  `web` varchar(50) NOT NULL DEFAULT '',
  `aniversario` date DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` timestamp NULL DEFAULT NULL,
  `notas` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directorio`
--

LOCK TABLES `directorio` WRITE;
/*!40000 ALTER TABLE `directorio` DISABLE KEYS */;
/*!40000 ALTER TABLE `directorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos_fotos`
--

DROP TABLE IF EXISTS `eventos_fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventos_fotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `fecha` varchar(50) NOT NULL DEFAULT '',
  `participan` text NOT NULL,
  `imagen` varchar(80) NOT NULL,
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `evento` int(5) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos_fotos`
--

LOCK TABLES `eventos_fotos` WRITE;
/*!40000 ALTER TABLE `eventos_fotos` DISABLE KEYS */;
INSERT INTO `eventos_fotos` VALUES (1,'Promesa de transporte público','','','0',1,1);
/*!40000 ALTER TABLE `eventos_fotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos_index`
--

DROP TABLE IF EXISTS `eventos_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventos_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  `fecha` varchar(100) NOT NULL DEFAULT '',
  `participan` text NOT NULL,
  `imagen` varchar(80) NOT NULL,
  `visible` smallint(1) NOT NULL DEFAULT '1',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos_index`
--

LOCK TABLES `eventos_index` WRITE;
/*!40000 ALTER TABLE `eventos_index` DISABLE KEYS */;
INSERT INTO `eventos_index` VALUES (1,'Esperando transporte gratuito','01-03-2013','<p>Y seguimos esperando que este Gobierno cumpla su promesa de dar transporte p&uacute;blico a los estudiantes.</p>','transporte_publico_gratuito',1);
/*!40000 ALTER TABLE `eventos_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categoria`
--

DROP TABLE IF EXISTS `faq_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categoria` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `imagen` varchar(10) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categoria`
--

LOCK TABLES `faq_categoria` WRITE;
/*!40000 ALTER TABLE `faq_categoria` DISABLE KEYS */;
INSERT INTO `faq_categoria` VALUES (0,'Ninguna',''),(1,'General',''),(2,'Unusual','');
/*!40000 ALTER TABLE `faq_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_index`
--

DROP TABLE IF EXISTS `faq_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_index` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `pregunta` text NOT NULL,
  `respuesta` text NOT NULL,
  `frecuencia` int(11) NOT NULL,
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `categoria` int(3) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_index`
--

LOCK TABLES `faq_index` WRITE;
/*!40000 ALTER TABLE `faq_index` DISABLE KEYS */;
INSERT INTO `faq_index` VALUES (1,'First','<p>Tell me about yourself?</p>','<p>This question or something similar usually starts every interview.  Your answer should be well-rehearsed, confidently delivered and last between 3-5 minutes.  It should also:<br />Focus on the areas of most relevance to the job in question<br />Include some impressive achievements e.g. improvements made<br />Convey your enthusiasm for the job<br />Avoid personal or irrelevant information e.g. your children, un-related jobs</p>',0,1,1),(2,'Second','<p>What are your key skills/strengths?</p>','<p>Focus on what you know they are looking for, even if it has been a smaller part of what you have been doing to date.  The job advert or person specification form will give you the information you need about their requirements.</p>',0,1,1),(3,'Third','<p>What are your weaknesses?</p>','<p>Choose a weakness that: Doesn\'t matter for the job e.g. languages for a UK firm.  Is a positive e.g. \"I like to make things happen and get frustrated if too long is spent sitting around discussing it without action\" <br />Used to be a weakness but which you have improved upon e.g. presentations</p>',0,1,1),(7,'Fourth','<p>Why did you leave your last job?</p>','<p>Your answer should be positive and upbeat even if the circumstances were difficult.  If you were made redundant, depersonalise it by talking about company restructuring rather than your individual circumstance.  Never criticise a previous employer no matter how tempting.</p>',0,1,2),(8,'Fitfh','<p>Why do you want this job?</p>','<p>Your answer should reinforce why you are such a good fit for the job and then convey your enthusiasm for the role e.g.</p>\r\n<p>Good match between your skills and their requirements<br />Interested in the product/market/sector<br />Company\'s excellent reputation, exciting challenge etc.<br />Do not say (even if it\'s true) that you just need a job, or you want it because it\'s local.</p>\r\n<p>&nbsp;</p>',0,1,2),(9,'Sixth','<p>Tell me about a difficult scenario at work and how you dealt with it</p>','<p>They are testing how you cope under pressure as well as your problem-solving and communication skills.  Good examples are where you:</p>\r\n<p>Helped resolve or improve a difficult situation<br />Were resilient in adverse conditions<br />Showed emotional intelligence and cool-headedness<br />Avoid any examples which still feel sensitive, because in a high-pressure interview situation, old emotions can easily resurface and throw you off balance.</p>\r\n<p>&nbsp;</p>',0,1,2),(10,'Seventh','<p>Tell me about an achievement of which you are proud?</p>','<p>Choose work-related examples that shows a tangible benefit to the business.   Personal achievements should only be included if they are very impressive or prestigous. More experienced candidates looking for a specific roles eg Sales Director Jobs should focus on closely related areas eg driving an increase in sales or building a successful sales team</p>',0,1,1),(11,'Jososososo','<p>uyuyuy</p>','<p>iuiuiui</p>',0,1,2);
/*!40000 ALTER TABLE `faq_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos_categoria`
--

DROP TABLE IF EXISTS `fotos_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos_categoria` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `imagen` varchar(30) DEFAULT NULL,
  `belong` smallint(2) NOT NULL DEFAULT '0',
  `subelong` smallint(1) NOT NULL DEFAULT '0',
  `descripcion` text NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos_categoria`
--

LOCK TABLES `fotos_categoria` WRITE;
/*!40000 ALTER TABLE `fotos_categoria` DISABLE KEYS */;
INSERT INTO `fotos_categoria` VALUES (1,'En tribuna','',0,0,'');
/*!40000 ALTER TABLE `fotos_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos_dimensiones`
--

DROP TABLE IF EXISTS `fotos_dimensiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos_dimensiones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `precio` decimal(19,2) NOT NULL DEFAULT '0.00',
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `vincula` int(11) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos_dimensiones`
--

LOCK TABLES `fotos_dimensiones` WRITE;
/*!40000 ALTER TABLE `fotos_dimensiones` DISABLE KEYS */;
/*!40000 ALTER TABLE `fotos_dimensiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos_ext`
--

DROP TABLE IF EXISTS `fotos_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos_ext` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) NOT NULL DEFAULT '',
  `descripcion` varchar(20) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos_ext`
--

LOCK TABLES `fotos_ext` WRITE;
/*!40000 ALTER TABLE `fotos_ext` DISABLE KEYS */;
INSERT INTO `fotos_ext` VALUES (7,'ninguno','sin formato'),(1,'jpg','fotos'),(2,'png','fotos'),(3,'swf','flash'),(4,'mov','video'),(5,'avi','video');
/*!40000 ALTER TABLE `fotos_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos_index`
--

DROP TABLE IF EXISTS `fotos_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos_index` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `descripcion` text,
  `imagen` varchar(100) NOT NULL DEFAULT 'sin_titulo',
  `subnombre` varchar(100) DEFAULT NULL,
  `categoria` int(3) NOT NULL DEFAULT '0',
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `bolean` smallint(1) NOT NULL DEFAULT '0',
  `orden` int(3) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos_index`
--

LOCK TABLES `fotos_index` WRITE;
/*!40000 ALTER TABLE `fotos_index` DISABLE KEYS */;
INSERT INTO `fotos_index` VALUES (1,'Gildardo Guerrero','<p>Ah&iacute; nom&aacute;s de prueba.</p>','808354.jpg','Prueba',1,1,0,0),(2,'Ambrosía','','180413_j_c_marquez.jpg','',1,1,0,0),(3,'Diputados varios','','220413_diputados_varios.jpg','',1,1,0,0);
/*!40000 ALTER TABLE `fotos_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gadgets_botones`
--

DROP TABLE IF EXISTS `gadgets_botones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gadgets_botones` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL DEFAULT '',
  `posicion` int(1) NOT NULL DEFAULT '0',
  `imagen` varchar(20) NOT NULL DEFAULT '',
  `ruta` text NOT NULL,
  `ext` smallint(2) NOT NULL DEFAULT '0',
  `submenu` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gadgets_botones`
--

LOCK TABLES `gadgets_botones` WRITE;
/*!40000 ALTER TABLE `gadgets_botones` DISABLE KEYS */;
INSERT INTO `gadgets_botones` VALUES (1,'Inicio',2,'','index.php',2,0),(2,'Quiénes somos',2,'','corporativa.php?rubro=9',0,0),(3,'Agenda legislativa',2,'','agenda_legislativa.php',0,0),(4,'Contacto',2,'','contacto.php',0,0),(5,'twitter',4,'twitter','http://www.twitter.com/gppanjal',2,0),(6,'You Tube',4,'youtube','http://www.youtube.com',2,0),(8,'facebook',4,'facebook','http://www.facebook.com/gppanjal',2,0),(11,'Ligas de interés',2,'','ligas.php',0,0),(12,'iniciativas',2,'','iniciativas.php',0,0);
/*!40000 ALTER TABLE `gadgets_botones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gadgets_botones_admin`
--

DROP TABLE IF EXISTS `gadgets_botones_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gadgets_botones_admin` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `boton` varchar(50) DEFAULT NULL,
  `imagen` varchar(20) NOT NULL DEFAULT '',
  `ext` char(3) NOT NULL DEFAULT '',
  `ruta` varchar(100) NOT NULL,
  `gadget` smallint(2) NOT NULL DEFAULT '0',
  `privilegios` smallint(1) DEFAULT '2',
  `visible` smallint(1) NOT NULL DEFAULT '1',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gadgets_botones_admin`
--

LOCK TABLES `gadgets_botones_admin` WRITE;
/*!40000 ALTER TABLE `gadgets_botones_admin` DISABLE KEYS */;
INSERT INTO `gadgets_botones_admin` VALUES (1,'Art&iacute;culo nuevo','new','png','if_articulos.php',2,2,1),(2,'Editar art&iacute;culo','edit','png','bus_articulos.php',2,2,1),(3,'Categor&iacute;a nueva','new','png','if_categoria.php',2,2,1),(4,'Agregar gadget','gadget','png','if_gadgets.php',1,2,1),(5,'Editar gadget','edit','png','bus_gadgets.php',1,2,1),(6,'Nueva informaci&oacute;n','new','png','if_corporativa.php',4,2,1),(7,'Editar informaci&oacute;n','edit','png','bus_corporativa.php',4,2,1),(8,'Agregar foto','camara','png','if_fotos.php',5,2,1),(9,'Administrar fotos','photo','png','bus_fotos.php',5,2,1),(10,'Editar categor&iacute;a','edit','png','bus_categoria.php',2,2,1),(11,'Agregar botón Admin','work','png','if_botones_admin.php',1,2,1),(12,'Agregar a cat&aacute;logo','new','png','if_catalogo.php',8,2,1),(13,'Editar cat&aacute;logo','edit','png','bus_catalogo.php',8,2,1),(14,'Nueva categoría','new','png','if_categoria.php',8,2,1),(15,'Editar categoría','edit','png','bus_categoria.php',8,2,1),(16,'Editar Botón Admin','edit','png','bus_botones_admin.php',1,2,1),(17,'Agregar submn&uacute;','new','png','if_submenu.php',1,2,1),(18,'Editar submn&uacute;','edit','png','bus_submenu.php',1,2,1),(19,'Agregar banner','new','png','if_banner.php',9,2,1),(20,'Editar banner','edit','png','bus_banner.php',9,2,1),(21,'Nuevo','new','png','if_proyectos.php',10,2,1),(22,'Editar proyecto','edit','png','bus_proyectos.php',10,2,1),(23,'Agregar usuario','new','png','if_autor.php',3,2,1),(24,'Modificar usuario','edit','png','bus_user.php',3,5,1),(25,'Revisar mensajes','camara','png','bus_mensajes.php',6,2,1),(26,'Revisar visitantes','camara','png','contador.php',7,2,1),(27,'Agregar Resaque','resaque','png','if_resaque.php',2,2,0),(28,'chas','none','png','if_corporativa_a.php',4,2,1),(29,'chas2','none','png','ip_corporativa_a.php',4,2,1),(31,'Agregar bot&oacute;n men&uacute;','boton','png','if_botones.php',1,2,1),(32,'Modifica articulo','none','png','if_articulos_a.php',2,2,1),(33,'Modifica categoria','none','png','if_categoria_a.php',2,2,1),(34,'Editar resaque','edit','png','bus_resaque.php',2,2,0),(35,'Editar resaque2','none','png','if_resaque_a.php',2,2,0),(36,'Editar user','none','png','if_autor_a.php',3,2,1),(37,'Editar foto','none','png','if_fotos_a.php',5,2,1),(38,'Revisar mensajes2','none','png','mensaje.php',6,2,1),(39,'borra articulo','none','png','borra.php',2,2,1),(40,'Modifica categoria catalogo','none','png','if_categoria_a.php',8,2,1),(41,'Modifica catalogo','none','png','if_catalogo_a.php',8,2,1),(42,'modificar banner','none','png','if_banner_a.php',9,2,1),(43,'Maqueta','new','png','if_maqueta.php',9,2,1),(44,'Editar maqueta','edit','png','bus_maqueta.php',9,2,1),(45,'Modificar maqueta','none','png','if_maqueta_a.php',9,2,1),(46,'Modificar proyectos','none','png','if_proyectos_a.php',10,2,1),(47,'Agregar publicación','new','png','if_publicaciones.php',11,2,1),(48,'Editar publicaciones','edit','png','bus_publicaciones.php',11,2,1),(49,'Modificar publicaciones','none','png','if_publicaciones_a.php',11,2,1),(50,'Noticia nueva','new','png','if_noticias.php',12,2,1),(51,'Editar noticia','edit','png','bus_noticias.php',12,2,1),(52,'Modificar noticia','none','png','if_noticias_a.php',12,2,1),(53,'Agregar testimonio','new','png','if_testimonios.php',13,2,1),(54,'Editar testimonio','edit','png','bus_testimonios.php',13,2,1),(55,'Modificar testimonio','none','png','if_testimonios_a.php',13,2,1),(56,'configuracion','new','png','if_configura_a.php',14,2,1),(57,'Crear hoja de estilo','new','png','if_templates.php',14,2,1),(58,'templates INVI','none','png','if_templates_a.php',14,2,1),(59,'Editar hoja de estilo','edit','png','bus_templates.php',14,2,1),(60,'Modificar bot&oacute;n men&uacute;','edit','png','bus_botones.php',1,2,1),(61,'botones admin INV','none','png','if_botones_admin_a.php',1,2,1),(62,'Agregar evento','new','png','if_evento.php',15,2,1),(63,'Editar evento','edit','png','bus_evento.php',15,2,1),(64,'evento INVI','none','png','if_evento_a.php',15,2,1),(65,'Agregar ponente','new','png','if_imparte.php',15,2,1),(66,'Editar ponente','edit','png','bus_imparte.php',15,2,1),(67,'ponente INVI','none','png','if_imparte_a.php',15,2,1),(68,'Agregar documento','new','png','if_descargar.php',16,2,1),(69,'Editar descarga','edit','png','bus_descargar.php',16,2,1),(70,'descarga INVI','none','png','if_descargar_a.php',16,2,1),(71,'Agregar video','new','png','if_video.php',17,2,1),(72,'Editar video','edit','png','bus_video.php',17,2,1),(73,'Editar video INVI','none','png','if_video_a.php',17,2,1),(74,'Editar boton INVI','none','png','if_botones_a.php',1,2,1),(75,'editar gadget INVI','none','png','if_gadgets_a.php',1,2,1),(76,'Agregar liga','new','png','if_ligas.php',18,2,1),(77,'Editar ligas','edit','png','bus_ligas.php',18,2,1),(78,'Editar ligas INVI','none','png','if_ligas_a.php',18,2,1),(79,'Agrega patrocinador','new','png','if_patrocinador.php',19,2,1),(80,'Editar Patrocinador','edit','png','bus_patrocinador.php',19,2,1),(81,'Editar Patrocinador INVI','none','png','if_patrocinador_a.php',19,2,1),(83,'Agregar/ editar coordinador','edit','png','bus_coordina.php',15,2,1),(84,'Editar coordina INVI','none','png','if_coordina.php',15,2,1),(85,'Agrega día','new','png','if_dia.php',15,2,1),(86,'Edita día','edit','png','bus_dia.php',15,2,1),(87,'Edita día INVI','none','png','if_dia_a.php',15,2,1),(88,'Agregar ruta','new','png','if_ruta.php',4,2,1),(89,'Editar ruta','edit','png','bus_ruta.php',4,2,1),(90,'Editar ruta INVI','none','png','if_ruta_a.php',4,2,1),(91,'Agregar resaque','new','png','if_resaque.php',4,2,1),(92,'Editar resaque','edit','png','bus_resaque.php',4,2,1),(93,'Editar resaque INVI','none','png','if_resaque_a.php',4,2,1),(94,'Movimientos','new','png','registro.php',20,3,1),(128,'Edita FAQ','edit','png','bus_faq.php',22,1,1),(127,'Agrega FAQ','new','png','if_faq.php',22,1,1),(97,'Respaldo DB','new','png','exe_respaldo.php',14,1,1),(123,'Agrega categoria','new','png','if_categoria.php',5,1,1),(99,'Agregar edición','new','png','if_ediciones.php',2,2,0),(100,'Editar edición','edit','png','bus_ediciones.php',2,2,0),(101,'Edta ediciones INVI','none','png','if_ediciones_a.php',2,2,0),(102,'Agrega foto edición','new','png','if_fotoedicion.php',2,2,0),(103,'Edita fotoedicion','edit','png','bus_fotoedicion.php',2,2,0),(104,'Edita fotoedicion INVI','none','png','if_fotoedicion_a.php',2,2,0),(105,'Redactar mail masivo','edit','png','if_massive_mail.php',6,2,1),(106,'Edita mail masivo','edit','png','bus_massive_mail.php',6,2,1),(107,'Crea grupo envío','new','png','if_massive_grupo.php',6,2,1),(108,'Edita grupo envío','edit','png','bus_massive_grupo.php',6,2,1),(109,'Edita grupo envío INVI','none','png','if_massive_grupo_a.php',6,2,1),(110,'Editar mail masivo INVI','none','png','if_massive_mail_a.php',6,2,1),(111,'enviado','none','png','enviado.php',6,2,1),(112,'EXE mail INVI','none','png','exe_massive_mail.php',6,2,1),(113,'Agrega contacto','new','png','if_massive_directorio.php',6,2,1),(114,'Editar contacto','edit','png','bus_massive_directorio.php',6,2,1),(115,'Editar contacto INVI','none','png','if_massive_directorio_a.php',6,2,1),(116,'PDF','new','png','pdf.php',6,2,1),(117,'Agrega contenido idioma','new','png','if_content.php',21,1,1),(118,'Editar contenido idioma','edit','png','bus_content.php',21,1,1),(119,'Editar idioma INVI','none','png','if_content_a.php',21,1,1),(120,'Agregar idioma','new','png','if_language.php',21,1,1),(121,'Editar idioma','edit','png','bus_language.php',21,1,1),(122,'Editar idioma INVI','none','png','if_language_a.php',21,1,1),(124,'Edita categoria','edit','png','bus_categoria.php',5,1,1),(125,'Edita catetgoria INVI','none','png','if_categoria_a.php',5,1,1),(126,'Médicos registrados','boton','png','bus_directorio.php',24,3,1),(129,'Edita FAQ INVI','none','png','if_faq_a.php',22,1,1),(130,'TEST','boton','png','ip_registro_a.php',19,1,1),(131,'Agrega categoria','new','png','if_categoria.php',22,1,1),(132,'Edita categoria','edit','png','bus_categoria.php',22,1,1),(133,'Edita categoria INVI','none','png','if_categoria_a.php',22,1,1),(134,'Medicos registrados INVO','none','png','if_directorio_a.php',24,1,1),(135,'Agrega temporada','new','png','if_temporadas.php',8,1,1),(136,'Edita temporadas','edit','png','bus_temporadas.php',8,1,1),(137,'Edita temproada INVI','none','png','if_temporadas_a.php',8,1,1),(138,'Agregar movimiento','new','png','if_registro.php',20,3,1),(139,'Edita registro INVI','none','png','if_registro_a.php',20,2,1),(140,'Agrega moneda','new','png','if_moneda.php',23,3,1),(141,'Edita moneda','edit','png','bus_moneda.php',23,3,1),(142,'Edita moneda','none','png','if_moneda_a.php',23,3,1),(143,'Agrega tarifa','new','png','if_tarifa.php',23,3,1),(144,'Edita tarifa','edit','png','bus_tarifa.php',23,3,1),(145,'Edita tarifa INVI','none','png','if_tarifa_a.php',23,3,1),(146,'Agrega habitación','new','png','if_habitacion.php',23,3,1),(147,'Edita habitación','edit','png','bus_habitacion.php',23,3,1),(148,'Edita habitación INVI','none','png','if_habitacion_a.php',23,3,1),(149,'Agrega medicamento','new','png','if_medicamento.php',24,3,1),(150,'Edita medicamento','edit','png','bus_medicamento.php',24,3,1),(151,'Edita medicamento INVI','none','png','if_medicamento_a.php',24,3,1),(152,'Agrega potencia','new','png','if_potencia.php',24,3,1),(153,'Edita potencia','edit','png','bus_potencia.php',24,3,1),(154,'Edita potencia INVi','none','png','if_potencia_a.php',24,3,1),(155,'Agrega registro','new','png','if_registro.php',25,1,1),(156,'Edita registro','edit','png','bus_registro.php',25,1,1),(157,'Edita registro INVI','none','png','if_registro_a.php',25,1,1),(158,'Busca padre INVI','none','png','bus_fili.php',25,1,1),(159,'Agrega cónyuge','none','png','bus_conyuge.php',25,1,1),(160,'Agrega hijos','none','png','bus_pater.php',25,1,1),(161,'Agrega perfil','new','png','if_perfil.php',26,2,0),(162,'Edita perfil','edit','png','bus_perfil.php',26,2,1),(163,'Edita perfil INVI','none','png','if_perfil_a.php',26,2,1),(164,'Agrega categoria','new','png','if_categoria.php',26,2,0),(165,'Edita categoria','edit','png','bus_categoria.php',26,2,0),(166,'Edita categoria INVI','none','png','if_categoria_a.php',26,2,0),(167,'Asigna comisión','new','png','if_asigna.php',26,2,1),(168,'Edita asigna comisión','edit','png','bus_asigna.php',26,2,1),(169,'Edita asigna comisión INVI','none','png','if_asigna_a.php',1,1,1),(170,'Agrega comisión','new','png','if_comisiones.php',26,2,1),(171,'Edita comisión','edit','png','bus_comisiones.php',26,2,1),(172,'Edita comisión INVI','none','png','if_comisiones_a.php',26,2,1),(173,'Agg Botón social','new','png','if_boton.php',26,2,0),(174,'Ed botón social','edit','png','bus_boton.php',26,2,0),(175,'Ed botón social INVI','none','png','if_boton_a.php',26,2,0),(176,'Asigna botón','new','png','if_asigna_boton.php',26,2,1),(177,'Edita asigna botón','edit','png','bus_asigna_boton.php',26,2,1),(178,'Edita asigna botón INVI','none','png','if_asigna_boton_a.php',26,2,1),(179,'Ag iniciativa','new','png','if_iniciativa.php',26,2,1),(180,'Edita iniciativa','edit','png','bus_iniciativa.php',26,2,1),(181,'Edita iniciativa INVI','none','png','if_iniciativa_a.php',26,2,1),(182,'Asigna iniciativa','new','png','if_asigna_iniciativa.php',26,2,1),(183,'Ed asigna iniciativa','edit','png','bus_asigna_iniciativa.php',26,2,1),(184,'Ed asigna iniciativa INVI','none','png','if_asigna_iniciativa_a.php',26,2,1),(185,'Agrega cita','new','png','if_citas.php',27,1,1),(186,'Edita cita','edit','png','bus_citas.php',27,1,1),(187,'Edita cita INVI','none','png','if_citas_a.php',27,1,1),(188,'Agrega evento','new','png','if_evento.php',28,2,1),(189,'Edita evento','edit','png','bus_evento.php',28,2,1),(190,'Edita evento INVI','none','png','if_evento_a.php',28,1,1),(191,'Agrega foto evento','new','png','if_evento_foto.php',28,2,1),(192,'Edita evento foto','edit','png','bus_evento_foto.php',28,1,1),(193,'Edita evento foto INVI','none','png','if_evento_foto_a.php',28,2,1);
/*!40000 ALTER TABLE `gadgets_botones_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gadgets_index`
--

DROP TABLE IF EXISTS `gadgets_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gadgets_index` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `gadget` varchar(20) NOT NULL DEFAULT '',
  `ruta` varchar(50) NOT NULL DEFAULT '',
  `visible` smallint(1) NOT NULL DEFAULT '0',
  `privilegios` smallint(1) NOT NULL DEFAULT '1',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gadgets_index`
--

LOCK TABLES `gadgets_index` WRITE;
/*!40000 ALTER TABLE `gadgets_index` DISABLE KEYS */;
INSERT INTO `gadgets_index` VALUES (1,'gadgets','if_gadgets.php',1,1),(2,'articulos','if_articulos.php',1,2),(3,'usuario','if_autor.php',1,5),(4,'corporativa','if_corporativa.php',1,2),(5,'fotos','if_fotos.php',1,2),(6,'mensajes','bus_mensajes.php',1,2),(7,'contador','contador.php',1,2),(8,'catalogo','if_catalogo.php',0,2),(9,'banners','if_banner.php',1,2),(10,'proyectos','if_proyectos.php',0,2),(11,'publicaciones','if_publicaciones.php',0,2),(12,'noticias','if_noticias.php',1,2),(13,'testimonios','if_testimonios.php',0,2),(14,'configura','if_configura_a.php',1,1),(15,'congreso','if_evento.php',0,2),(16,'descargar','if_descargar.php',1,2),(17,'video','if_video.php',1,2),(18,'ligas','if_ligas.php',1,2),(19,'patrocinador','if_patrocinador.php',0,2),(20,'comprar','registro.php',0,2),(21,'language','if_language.php',0,1),(22,'faq','if_faq.php',0,1),(23,'hotel','if_habitacion.php',0,1),(24,'homeopop','if_medicamento.php',0,3),(25,'genealogia','if_registro.php',0,1),(26,'perfil','if_perfil.php',1,1),(27,'citas','if_citas.php',1,1),(28,'eventos','if_evento.php',1,2);
/*!40000 ALTER TABLE `gadgets_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gadgets_posicion`
--

DROP TABLE IF EXISTS `gadgets_posicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gadgets_posicion` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `imagen` varchar(10) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gadgets_posicion`
--

LOCK TABLES `gadgets_posicion` WRITE;
/*!40000 ALTER TABLE `gadgets_posicion` DISABLE KEYS */;
INSERT INTO `gadgets_posicion` VALUES (0,'Ninguno',''),(1,'Central',''),(2,'Izq. Superior',''),(3,'Der. Superior',''),(4,'Izq. Inferior',''),(5,'Der. Inferior',''),(6,'Inferior',''),(7,'Superior','');
/*!40000 ALTER TABLE `gadgets_posicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genealogia_conyuge`
--

DROP TABLE IF EXISTS `genealogia_conyuge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genealogia_conyuge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` varchar(250) NOT NULL DEFAULT '',
  `conyuge` varchar(250) NOT NULL DEFAULT '',
  KEY `ide` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genealogia_conyuge`
--

LOCK TABLES `genealogia_conyuge` WRITE;
/*!40000 ALTER TABLE `genealogia_conyuge` DISABLE KEYS */;
INSERT INTO `genealogia_conyuge` VALUES (10,'2','1'),(2,'169','229'),(4,'76','54'),(5,'132','143'),(6,'366','333'),(7,'327','412'),(12,'11','8'),(13,'10','5'),(14,'35','13'),(15,'30','38'),(96,'63','68'),(17,'149','188'),(18,'149','177'),(19,'436','456'),(20,'176','198'),(21,'176','240'),(22,'72','41'),(23,'137','110'),(24,'288','296'),(25,'20','16'),(26,'49','73'),(27,'196','236'),(28,'117','148'),(29,'101','197'),(30,'155','195'),(31,'172','184'),(32,'160','225'),(33,'213','98'),(34,'127','210'),(35,'86','178'),(36,'59','79'),(37,'87','174'),(38,'162','228'),(39,'167','192'),(40,'219','150'),(41,'453','308'),(42,'309','418'),(43,'330','373'),(44,'405','323'),(45,'200','230'),(46,'9','7'),(47,'3','37'),(48,'36','19'),(49,'34','18'),(50,'22','40'),(51,'78','80'),(52,'70','46'),(54,'173','95'),(56,'203','222'),(57,'217','238'),(58,'506','145'),(59,'233','193'),(60,'233','215'),(62,'221','220'),(63,'129','211'),(64,'97','175'),(65,'216','153'),(66,'156','202'),(67,'208','146'),(68,'207','182'),(69,'136','226'),(70,'106','108'),(71,'100','115'),(72,'183','242'),(73,'77','69'),(74,'232','103'),(75,'112','89'),(76,'90','241'),(77,'234','194'),(78,'119','123'),(79,'107','189'),(80,'214','88'),(81,'51','42'),(82,'247','161'),(83,'212','105'),(84,'122','164'),(85,'190','157'),(86,'138','186'),(87,'185','126'),(88,'170','142'),(89,'133','144'),(90,'187','227'),(91,'60','56'),(92,'60','50'),(93,'159','205'),(95,'66','43'),(97,'168','141'),(98,'61','84'),(99,'204','116'),(100,'152','245'),(101,'224','124'),(102,'246','114'),(103,'102','508'),(104,'53','83'),(105,'163','99'),(106,'85','199'),(107,'125','135'),(108,'243','113'),(109,'237','94'),(110,'206','180'),(111,'209','235'),(112,'8','4'),(113,'55','48'),(114,'104','128'),(115,'131','248'),(116,'140','130'),(117,'121','181'),(118,'111','139'),(119,'109','154'),(120,'179','134'),(121,'171','239'),(122,'404','257'),(123,'279','306'),(124,'282','256'),(125,'310','345'),(126,'441','340'),(127,'425','283'),(128,'383','463'),(129,'399','266'),(130,'408','363'),(131,'272','281'),(132,'460','262');
/*!40000 ALTER TABLE `genealogia_conyuge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genealogia_fili`
--

DROP TABLE IF EXISTS `genealogia_fili`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genealogia_fili` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `fili` int(7) NOT NULL DEFAULT '0',
  `parent_f` int(2) NOT NULL DEFAULT '0',
  `parentesco` int(2) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=743 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genealogia_fili`
--

LOCK TABLES `genealogia_fili` WRITE;
/*!40000 ALTER TABLE `genealogia_fili` DISABLE KEYS */;
INSERT INTO `genealogia_fili` VALUES (1,309,169,1),(2,366,169,1),(4,453,169,1),(5,169,76,0),(6,169,54,1),(7,309,229,0),(8,366,229,0),(9,453,229,0),(10,132,76,0),(15,327,76,0),(12,132,54,1),(14,327,54,1),(16,330,132,1),(17,405,132,1),(18,408,132,1),(19,272,132,1),(20,272,143,0),(21,330,143,0),(22,405,143,0),(23,408,143,0),(24,484,327,1),(25,496,327,1),(26,478,327,1),(27,504,327,1),(28,484,412,0),(29,496,412,0),(30,478,412,0),(31,504,412,0),(32,476,366,1),(33,476,333,0),(34,503,366,1),(35,503,333,0),(40,6,1,1),(39,10,1,1),(41,8,1,1),(42,9,1,1),(43,3,1,1),(44,6,2,0),(45,10,2,0),(46,8,2,0),(47,9,2,0),(48,3,2,0),(49,21,8,1),(50,30,8,1),(51,20,8,1),(52,36,8,1),(53,21,11,0),(54,30,11,0),(55,20,11,0),(56,36,11,0),(272,39,10,1),(58,27,10,1),(59,26,10,1),(60,24,10,1),(61,33,10,1),(62,31,10,1),(63,35,10,1),(64,39,5,0),(65,27,5,0),(66,26,5,0),(67,24,5,0),(68,33,5,0),(69,31,5,0),(70,35,5,0),(71,66,30,1),(72,72,30,1),(73,66,38,0),(74,72,38,0),(75,93,66,1),(76,149,66,1),(77,191,66,1),(78,176,66,1),(79,93,43,0),(80,149,43,0),(81,191,43,0),(82,176,43,0),(83,436,149,1),(84,436,188,0),(85,339,149,1),(86,401,149,1),(87,500,436,0),(88,500,456,1),(89,339,177,0),(90,401,177,0),(91,382,176,1),(92,382,198,0),(93,390,176,1),(94,275,176,1),(95,390,240,0),(96,275,240,0),(97,137,72,0),(98,120,72,0),(99,137,41,1),(100,120,41,1),(101,288,137,1),(102,324,137,1),(103,324,110,0),(104,288,110,0),(105,49,20,1),(106,65,20,1),(107,45,20,1),(108,59,20,1),(109,78,20,1),(110,70,20,1),(111,69,20,1),(112,51,20,1),(113,49,16,0),(114,65,16,0),(115,45,16,0),(116,59,16,0),(117,78,16,0),(118,70,16,0),(119,69,16,0),(120,51,16,0),(121,196,49,1),(122,117,49,1),(123,101,49,1),(124,155,49,1),(125,172,49,1),(126,160,49,1),(127,213,49,1),(128,127,49,1),(129,86,49,1),(130,218,49,1),(131,196,73,0),(132,117,73,0),(133,101,73,0),(134,155,73,0),(135,172,73,0),(136,160,73,0),(137,213,73,0),(138,127,73,0),(139,86,73,0),(140,218,73,0),(141,395,196,0),(142,448,196,0),(143,253,196,0),(144,395,236,1),(145,448,236,1),(146,253,236,1),(147,336,148,1),(148,396,148,1),(149,336,117,0),(150,396,117,0),(151,291,101,1),(152,454,101,1),(153,449,101,1),(154,291,197,0),(155,454,197,0),(156,449,197,0),(157,347,155,1),(158,394,155,1),(159,302,155,1),(160,313,155,1),(161,347,195,0),(162,394,195,0),(163,302,195,0),(164,313,195,0),(165,376,172,1),(166,393,172,1),(167,362,172,1),(168,251,172,1),(169,376,184,0),(170,393,184,0),(171,362,184,0),(172,251,184,0),(173,352,160,1),(174,423,160,1),(175,435,160,1),(176,352,225,0),(177,423,225,0),(178,435,225,0),(179,284,213,0),(180,354,213,0),(181,263,213,0),(182,422,213,0),(183,284,98,1),(184,354,98,1),(185,263,98,1),(186,422,98,1),(187,411,127,1),(188,314,127,1),(189,307,127,1),(190,270,127,1),(191,411,210,0),(192,314,210,0),(193,307,210,0),(194,270,210,0),(195,254,86,1),(196,379,86,1),(197,254,178,0),(198,379,178,0),(199,87,59,1),(200,162,59,1),(202,167,59,1),(203,219,59,1),(204,200,59,1),(205,203,59,1),(206,217,59,1),(207,87,79,0),(208,162,79,0),(209,167,79,0),(210,219,79,0),(211,200,79,0),(212,203,79,0),(213,217,79,0),(214,377,87,1),(215,255,87,1),(216,299,87,1),(217,377,174,0),(218,255,174,0),(219,299,174,0),(220,361,162,1),(221,437,162,1),(222,361,228,0),(223,437,228,0),(224,357,167,1),(225,371,167,1),(226,357,192,0),(227,371,192,0),(228,440,219,0),(229,265,219,0),(230,440,150,1),(231,265,150,1),(232,481,453,0),(233,480,453,0),(234,493,453,0),(235,481,308,1),(236,480,308,1),(237,493,308,1),(238,488,309,1),(239,491,309,1),(240,488,418,0),(241,491,418,0),(242,492,330,0),(243,492,373,1),(244,483,405,0),(245,498,405,0),(246,489,405,0),(247,483,323,1),(248,498,323,1),(249,489,323,1),(250,385,200,1),(706,201,230,0),(705,385,230,0),(254,23,9,1),(255,34,9,1),(256,23,7,0),(257,34,7,0),(258,12,3,1),(259,15,3,1),(260,22,3,1),(261,32,3,1),(262,17,3,1),(263,29,3,1),(264,14,3,1),(265,12,37,0),(266,15,37,0),(267,22,37,0),(268,32,37,0),(269,17,37,0),(270,29,37,0),(271,14,37,0),(273,60,36,0),(274,43,36,0),(275,63,36,0),(276,76,36,0),(277,53,36,0),(278,60,19,1),(279,43,19,1),(280,63,19,1),(281,76,19,1),(282,53,19,1),(283,57,34,0),(284,62,34,0),(285,47,34,0),(286,57,18,1),(287,62,18,1),(288,47,18,1),(289,82,22,1),(290,54,22,1),(291,52,22,1),(292,75,22,1),(293,55,22,1),(294,82,40,0),(295,54,40,0),(296,52,40,0),(297,75,40,0),(298,55,40,0),(299,506,78,0),(300,233,78,0),(301,91,78,0),(302,221,78,0),(303,158,78,0),(304,506,80,1),(305,233,80,1),(306,91,80,1),(307,221,80,1),(308,158,80,1),(309,129,70,0),(310,129,46,1),(311,97,46,1),(312,216,46,1),(313,202,46,1),(314,166,46,1),(315,208,46,1),(316,207,46,1),(317,136,46,1),(318,106,46,1),(319,147,46,1),(320,100,46,1),(321,151,46,1),(322,173,46,1),(323,223,46,1),(324,96,46,1),(325,97,70,0),(326,216,70,0),(327,202,70,0),(328,208,70,0),(329,207,70,0),(330,136,70,0),(331,106,70,0),(332,166,70,0),(333,147,70,0),(334,100,70,0),(335,151,70,0),(336,173,70,0),(337,223,70,0),(338,96,70,0),(339,274,223,0),(340,276,173,1),(341,329,173,1),(342,367,203,0),(343,350,203,0),(344,367,222,1),(345,350,222,1),(346,421,217,0),(347,431,217,0),(348,421,238,1),(349,431,238,1),(350,335,506,0),(351,295,506,0),(352,458,506,0),(353,338,506,0),(354,341,506,0),(355,335,145,1),(356,295,145,1),(357,458,145,1),(358,338,145,1),(359,341,145,1),(360,397,233,1),(361,443,233,1),(362,397,193,0),(363,462,233,1),(364,443,215,0),(365,462,215,0),(366,426,221,1),(367,430,221,1),(368,269,221,1),(369,426,220,0),(370,430,220,0),(371,269,220,0),(372,372,129,1),(373,417,129,1),(374,372,211,0),(375,417,211,0),(376,413,97,1),(377,280,97,1),(378,259,97,1),(379,413,175,0),(380,280,175,0),(381,259,175,0),(382,346,216,0),(383,420,216,0),(384,386,216,0),(385,424,216,0),(386,346,153,1),(387,420,153,1),(388,386,153,1),(389,424,153,1),(390,402,156,1),(391,348,156,1),(392,402,202,0),(393,348,202,0),(394,337,208,0),(395,271,208,0),(396,466,208,0),(397,311,208,0),(398,337,146,1),(399,271,146,1),(400,466,146,1),(401,311,146,1),(402,438,207,0),(403,387,207,0),(404,428,207,0),(405,303,207,0),(406,438,182,1),(407,387,182,1),(408,428,182,1),(409,303,182,1),(410,319,136,1),(411,319,226,0),(412,289,106,1),(413,353,106,1),(414,289,108,0),(415,353,108,0),(416,286,100,1),(417,286,115,0),(418,375,115,0),(419,375,100,1),(420,392,183,1),(421,455,183,1),(422,392,242,0),(423,455,242,0),(424,183,77,0),(425,232,77,0),(426,112,77,0),(427,90,77,0),(428,234,77,0),(429,119,77,0),(430,107,77,0),(431,183,69,1),(432,232,69,1),(433,112,69,1),(434,90,69,1),(435,234,69,1),(436,119,69,1),(437,107,69,1),(438,416,232,0),(439,400,232,0),(440,301,232,0),(441,290,232,0),(442,416,103,1),(443,400,103,1),(444,301,103,1),(445,290,103,1),(446,257,112,0),(447,306,112,0),(448,256,112,0),(449,257,89,1),(450,306,89,1),(451,256,89,1),(452,445,90,1),(453,459,90,1),(454,445,241,0),(455,459,241,0),(456,444,234,1),(457,461,234,1),(458,278,234,1),(459,298,234,1),(460,457,234,1),(461,444,194,0),(462,461,194,0),(463,278,194,0),(464,298,194,0),(465,457,194,0),(466,389,119,1),(467,380,119,1),(468,370,119,1),(469,389,123,0),(470,380,123,0),(471,285,123,0),(472,370,123,0),(473,342,107,1),(474,294,107,1),(475,342,189,0),(476,294,189,0),(477,214,51,0),(478,247,51,0),(479,212,51,0),(480,122,51,0),(481,190,51,0),(482,138,51,0),(483,185,51,0),(484,170,51,0),(485,133,51,0),(486,214,42,1),(487,247,42,1),(488,212,42,1),(490,122,42,1),(491,190,42,1),(492,138,42,1),(493,185,42,1),(494,170,42,1),(495,133,42,1),(496,252,214,0),(497,264,214,0),(498,409,214,0),(499,359,214,0),(500,252,88,1),(501,264,88,1),(502,409,88,1),(503,359,88,1),(504,468,247,0),(505,378,247,0),(506,374,247,0),(507,464,247,0),(508,468,161,1),(509,378,161,1),(510,374,161,1),(511,464,161,1),(512,293,212,0),(513,260,212,0),(514,368,212,0),(515,250,212,0),(516,310,122,0),(517,441,122,0),(518,364,122,0),(519,425,190,0),(520,349,190,0),(521,344,190,0),(522,425,157,1),(523,349,157,1),(524,344,157,1),(525,419,138,1),(526,273,138,1),(527,419,186,0),(528,273,186,0),(529,384,185,0),(530,434,185,0),(531,384,126,1),(532,434,126,1),(533,415,170,1),(534,369,170,1),(535,450,170,1),(536,415,142,0),(537,369,142,0),(538,450,142,0),(539,325,133,1),(540,427,133,1),(541,325,144,0),(542,427,144,0),(543,365,187,0),(544,351,187,0),(545,321,187,0),(546,187,60,1),(547,187,50,0),(548,118,60,1),(549,159,60,1),(550,365,227,1),(551,351,227,1),(552,321,227,1),(553,356,159,1),(554,356,205,0),(555,168,63,1),(556,168,68,0),(557,383,168,1),(558,399,168,1),(559,383,141,0),(560,399,141,0),(561,204,61,1),(563,61,19,1),(564,61,36,0),(565,152,61,1),(566,224,61,1),(567,246,61,1),(568,102,61,1),(569,204,84,0),(570,152,84,0),(571,224,84,0),(572,246,84,0),(573,102,84,0),(574,507,204,0),(575,305,204,0),(576,469,204,0),(577,507,116,1),(578,305,116,1),(579,469,116,1),(580,403,152,1),(581,471,152,1),(582,403,245,0),(583,471,245,0),(584,433,224,0),(585,381,224,0),(586,332,224,0),(587,433,124,1),(588,381,124,1),(589,332,124,1),(590,304,246,0),(591,467,246,0),(592,163,53,0),(593,85,53,0),(594,125,53,0),(595,243,53,0),(596,237,53,0),(597,206,53,0),(598,209,53,0),(599,165,53,0),(600,163,83,1),(601,85,83,1),(602,125,83,1),(603,243,83,1),(604,237,83,1),(605,206,83,1),(606,209,83,1),(607,165,83,1),(608,360,163,1),(609,355,163,1),(610,447,163,1),(611,360,99,0),(612,355,99,0),(613,447,99,0),(614,312,85,0),(615,312,199,1),(616,320,125,0),(617,442,125,0),(618,261,125,0),(619,358,125,0),(620,320,135,1),(621,442,135,1),(622,261,135,1),(623,358,135,1),(624,297,243,0),(625,452,243,0),(626,297,113,1),(627,452,113,1),(628,300,206,0),(629,407,206,0),(630,388,206,0),(631,300,180,1),(632,407,180,1),(633,388,180,1),(634,446,209,0),(635,267,209,0),(636,331,209,0),(637,446,235,1),(638,267,235,1),(639,331,235,1),(640,28,8,1),(641,28,4,0),(642,104,55,0),(643,131,55,0),(644,140,55,0),(645,121,55,0),(646,111,55,0),(647,109,55,0),(651,179,55,0),(650,244,55,0),(659,104,48,1),(653,171,55,0),(654,316,104,1),(655,432,104,1),(656,334,104,1),(657,292,104,1),(658,410,104,1),(660,131,48,1),(661,140,48,1),(662,121,48,1),(663,111,48,1),(664,244,48,1),(665,179,48,1),(666,171,48,1),(667,316,128,0),(668,432,128,0),(669,334,128,0),(670,292,128,0),(671,410,128,0),(672,470,131,1),(673,470,248,0),(674,317,140,0),(675,328,140,0),(676,315,140,0),(677,391,121,0),(678,460,121,0),(679,258,121,0),(680,465,121,0),(681,391,181,1),(682,460,181,1),(683,258,181,1),(684,465,181,1),(685,326,111,0),(686,429,111,0),(687,277,111,0),(688,326,139,1),(689,429,139,1),(690,277,139,1),(691,398,109,0),(692,268,109,0),(693,451,109,0),(694,398,154,1),(695,268,154,1),(696,451,154,1),(697,322,179,0),(698,322,134,1),(699,439,171,1),(700,343,171,1),(701,414,171,1),(702,439,239,0),(703,343,239,0),(704,414,239,0),(707,201,200,1),(708,477,425,0),(709,479,425,0),(710,477,283,1),(711,479,283,1),(712,505,383,0),(713,502,383,0),(714,475,383,0),(715,505,463,1),(716,502,463,1),(717,475,463,1),(718,499,399,0),(719,473,399,0),(720,486,399,0),(721,494,399,0),(722,485,399,0),(723,499,266,1),(724,473,266,1),(725,486,266,1),(726,494,266,1),(727,485,266,1),(728,490,408,0),(729,474,408,0),(730,495,408,0),(731,501,408,0),(732,490,363,1),(733,474,363,1),(734,495,363,1),(735,501,363,1),(736,497,272,0),(737,487,272,0),(738,482,272,0),(739,497,281,1),(740,487,281,1),(741,482,281,1);
/*!40000 ALTER TABLE `genealogia_fili` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genealogia_generacion`
--

DROP TABLE IF EXISTS `genealogia_generacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genealogia_generacion` (
  `id` smallint(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genealogia_generacion`
--

LOCK TABLES `genealogia_generacion` WRITE;
/*!40000 ALTER TABLE `genealogia_generacion` DISABLE KEYS */;
INSERT INTO `genealogia_generacion` VALUES (0,'Ninguna'),(1,'Primera'),(2,'Segunda'),(3,'Tercera'),(4,'Cuarta'),(5,'Quinta'),(6,'Sexta'),(7,'Septima');
/*!40000 ALTER TABLE `genealogia_generacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genealogia_index`
--

DROP TABLE IF EXISTS `genealogia_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genealogia_index` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `genero` int(1) NOT NULL DEFAULT '0',
  `fecha_nac` date NOT NULL DEFAULT '0000-00-00',
  `ocupacion` varchar(100) NOT NULL DEFAULT '',
  `casose` int(2) NOT NULL DEFAULT '0',
  `fecha_mat` date NOT NULL DEFAULT '0000-00-00',
  `fecha_fal` date NOT NULL DEFAULT '0000-00-00',
  `generacion` int(11) NOT NULL DEFAULT '0',
  `foto` varchar(11) NOT NULL DEFAULT '',
  `done` int(2) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=509 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genealogia_index`
--

LOCK TABLES `genealogia_index` WRITE;
/*!40000 ALTER TABLE `genealogia_index` DISABLE KEYS */;
INSERT INTO `genealogia_index` VALUES (1,'Juan Nepomuceno Zuloaga',1,'1823-05-16','',1,'1846-03-25','1895-06-06',1,'1',0),(2,'Dolores Méndez y Verduzco',0,'1814-09-19','',1,'1846-03-25','1894-02-20',1,'2',0),(3,'Carlos José Zuloaga y Méndez',1,'1857-05-28','',1,'0000-00-00','1898-06-26',2,'3',0),(4,'Carlota Higuera',0,'0000-00-00','',1,'0000-00-00','0000-00-00',2,'',1),(5,'Ignacia González',0,'1848-10-04','',1,'0000-00-00','1925-07-15',2,'',0),(6,'Ignacio Zuloaga y Méndez',1,'0000-00-00','',0,'0000-00-00','0001-00-00',2,'',0),(7,'Ines Semaría',0,'0000-00-00','',1,'0000-00-00','0000-00-00',2,'',0),(8,'Jesús Alejo Zuloaga y Méndez',1,'1852-07-17','',1,'0000-00-00','1921-08-18',2,'8',1),(9,'José María Anselmo Zuloaga y Méndez',1,'0000-00-00','',1,'0000-00-00','0000-00-00',2,'9',0),(10,'Juan M. Zuloaga y Mendez',1,'1847-07-21','',1,'0000-00-00','1925-05-02',2,'',0),(11,'Mariana González y González',0,'1849-07-25','',1,'0000-00-00','1906-09-01',2,'',0),(12,'Ana Maria Manuela Zuloaga y Vizcaino',0,'1883-06-17','',0,'0000-00-00','1883-12-30',3,'',0),(13,'Armando Mejia',1,'0000-00-00','',1,'0000-00-00','1943-09-15',3,'',0),(14,'Carlos Octavio Zuloaga y Vizcaino',1,'0000-00-00','',0,'0000-00-00','0000-00-00',3,'',0),(15,'Carlos Zuloaga y Vizcaino',1,'1884-06-27','',0,'0000-00-00','1884-06-29',3,'',0),(16,'Dolores Zuloaga y Vizcaino',0,'1867-06-08','',1,'0000-00-00','1983-05-18',3,'',0),(17,'Francisco Jose Zuloaga y Vizcaino',1,'0000-00-00','',0,'0000-00-00','0000-00-00',3,'',0),(18,'Guillermo Aguirre y Fierro',1,'0000-00-00','',1,'0000-00-00','0000-00-00',3,'',0),(19,'Jesús Álvarez del Castillo y Velazco',1,'1881-08-15','',1,'0000-00-00','1966-05-25',3,'',0),(20,'Jesús Mariano Zuloaga y González',1,'1878-10-07','',1,'0000-00-00','1947-05-17',3,'',0),(21,'José Alberto Zuloaga y González',1,'1876-08-06','',2,'0000-00-00','1915-04-01',3,'',0),(22,'José Alejo Zuloaga y Vizcaíno',1,'1885-07-17','',1,'0000-00-00','1983-01-10',3,'',0),(23,'Jose Lucio Zuloaga y Semaria',1,'0000-00-00','',0,'0000-00-00','0000-00-00',3,'',0),(24,'Jose Macario Zuloaga y Gonzalez',1,'1877-03-10','',0,'0000-00-00','1941-08-19',3,'',0),(25,'Josefina Peña',0,'0000-00-00','',0,'0000-00-00','0000-00-00',3,'',0),(26,'Juan Ignacio Zuloaga y Gonzalez',1,'1875-06-21','',2,'0000-00-00','1876-09-28',3,'',0),(27,'Juan Ma. De San Ignacio Zuloaga y Gonzalez',1,'1875-08-13','',2,'0000-00-00','1875-09-01',3,'',0),(28,'Juan Nepomuceno Fernando Zuloaga y Higuera',1,'1811-06-09','',0,'0000-00-00','0000-00-00',3,'',0),(29,'Juan Nepomuceno Zuloaga y Vizcaino',1,'0000-00-00','',0,'0000-00-00','0000-00-00',3,'',0),(30,'Leopoldo Eugenio Zuloaga y González',1,'1877-11-15','',1,'0000-00-00','1956-12-17',3,'',0),(31,'Maria De Los Dolores Zuloaga y Gonzalez',0,'1882-11-21','',0,'0000-00-00','1930-09-24',3,'',0),(32,'Maria De Los Dolores Zuloaga y Vizcaino',0,'0000-00-00','',0,'0000-00-00','0000-00-00',3,'',0),(33,'Maria Del Carmen Zuloaga y Gonzalez',0,'1882-11-07','',0,'0000-00-00','0001-00-00',3,'33',0),(34,'María Guadalupe Zuloaga y Semaría',0,'0000-00-00','',1,'0000-00-00','0000-00-00',3,'',0),(35,'Maria Josefina Zuloaga y Gonzalez',0,'1886-03-19','',1,'0000-00-00','1953-09-23',3,'35',0),(36,'María Manuela de los Dolores Zuloaga y González',0,'1882-06-08','',1,'0000-00-00','1972-11-01',3,'',0),(37,'Mariana Vizcaíno y Vizcaíno',0,'1860-04-19','',1,'0000-00-00','1953-01-26',2,'',0),(38,'Mercedes Remus y Gomez',0,'1879-01-18','',1,'0000-00-00','1963-12-08',3,'',0),(39,'Othon Zuloaga y Gonzalez',1,'1873-07-07','',2,'0000-00-00','1873-07-07',3,'',0),(40,'Paz De la Torre',0,'1892-03-18','',1,'0000-00-00','1971-08-30',3,'',0),(41,'Abelardo Hijar y Cañedo',1,'1906-05-19','',1,'0000-00-00','1980-05-08',4,'',0),(42,'Alfonso Iturbide y Rojas',1,'0000-00-00','',1,'0000-00-00','0000-00-00',4,'',0),(43,'Ana María Guadalupe Álvarez del Castillo y Zuloaga',0,'1911-03-24','',1,'0000-00-00','0000-00-00',4,'',1),(44,'Ana Maria Guadalupe Alvarez Del Castillo y Remus',0,'0000-00-00','',0,'0000-00-00','0000-00-00',4,'',0),(45,'Ana Maria Zuloaga y Zuloaga',0,'1914-07-23','',2,'0000-00-00','1916-05-08',4,'',1),(46,'Antonio Martin Del Campo y Enriquez',1,'1921-07-07','',1,'0000-00-00','1997-10-28',4,'',1),(47,'Armando Aguirre y Zuloaga',1,'0000-00-00','',0,'0000-00-00','0000-00-00',4,'',0),(48,'Carlos Enrigue y Villaseñor',1,'1911-11-29','',1,'0000-00-00','1983-05-13',4,'',1),(49,'Carlos José Senen Zuloaga y Zuloaga',1,'1911-10-30','',1,'0000-00-00','1914-12-31',4,'',0),(50,'Catalina Romandia y Herreros',0,'1925-11-29','',0,'0000-00-00','0000-00-00',4,'',0),(51,'Dolores Leticia Zuloaga y Zuloaga',0,'1925-08-20','',1,'0000-00-00','0000-00-00',4,'',1),(52,'Elena Zuloaga y De La Torre',0,'0000-00-00','',0,'0000-00-00','0000-00-00',4,'',0),(53,'Emma Alicia Margarita Alvarez Del Castillo y Zuloaga',0,'1920-05-13','',1,'0000-00-00','0000-00-00',4,'',1),(54,'Francisco José Zuloaga y de la Torre',1,'1914-10-22','Ing. civil y comerciante',1,'1941-11-26','1999-03-21',4,'',0),(55,'Gabriela Zuloaga y De La Torre',0,'1919-10-01','',1,'0000-00-00','0000-00-00',4,'',1),(56,'Guillermina Davila y Valdez',0,'0000-00-00','',0,'0000-00-00','0000-00-00',4,'',0),(57,'Guillermo Antonio Aguirre y Zuloaga',1,'1917-05-22','',0,'0000-00-00','0000-00-00',4,'',0),(58,'Ignacio Juan Francisco Zuloaga y Zuloaga',1,'1919-08-21','',2,'0000-00-00','1921-06-04',4,'',1),(59,'Jesús Alberto Zuloaga y Zuloaga',1,'1916-01-19','',1,'0000-00-00','1983-01-13',4,'',1),(60,'Jesús Mariano Raymundo Álvarez del Castillo y Zuloaga',1,'1910-02-19','',1,'0000-00-00','1973-07-04',4,'',1),(61,'Jorge Alvarez Del Castillo y Zuloaga',1,'1917-01-22','',1,'0000-00-00','0000-00-00',4,'',0),(62,'Jose Luis Antonio Aguirre y Zuloaga',1,'1919-01-06','',0,'0000-00-00','0000-00-00',4,'',0),(63,'Jose Othón Álvarez del Castillo y Zuloaga',1,'1912-07-02','',1,'0000-00-00','1982-10-25',4,'',1),(64,'Jose Zuloaga y Peña',1,'0000-00-00','',0,'0000-00-00','0000-00-00',4,'',0),(65,'José Zuloaga y Zuloaga',1,'1913-03-14','',2,'0000-00-00','1913-03-14',4,'',0),(66,'Leopoldo Antonio Lorenzo Zuloaga y Remus',1,'1908-07-07','',1,'0000-00-00','0000-00-00',4,'',1),(68,'Lillian Dieguez y Rodriguez',0,'1920-12-16','',1,'0000-00-00','2000-10-15',4,'',1),(69,'Luis Florencio Zuloaga y Zuloaga',1,'1923-10-27','',1,'0000-00-00','0000-00-00',4,'',1),(70,'Ma. Concepcion Zuloaga y Zuloaga',0,'1922-02-05','',1,'0000-00-00','1991-09-18',4,'',1),(71,'Ma. Del Carmen Zuloaga y Zuloaga',0,'1928-10-08','',0,'0000-00-00','0000-00-00',4,'',0),(72,'Ma. Elena Guillermina Zuloaga y Remus',0,'1911-06-25','',1,'0000-00-00','0000-00-00',4,'',0),(73,'Ma. Elena Santos y Hermosillo',0,'1928-11-22','',1,'0000-00-00','0000-00-00',4,'',0),(74,'Ma. Guadalupe Zuloaga y Zuloaga',0,'1933-05-02','',0,'0000-00-00','1933-05-02',4,'',0),(75,'Margarita Zuloaga y De La Torre',0,'0000-00-00','',0,'0000-00-00','0000-00-00',4,'',0),(76,'Maria del Carmen Álvarez del Castillo y Zuloaga',0,'1913-10-02','',1,'1941-11-26','1991-05-01',4,'',0),(77,'Maria Luisa Santoscoy',0,'1924-06-29','',1,'0000-00-00','1968-03-25',4,'',1),(78,'Mariana Zuloaga y Zuloaga',0,'1917-07-26','',1,'0000-00-00','0000-00-00',4,'',0),(79,'Marina Chavez y Huacuja',0,'1918-02-10','',1,'0000-00-00','1977-06-23',4,'',1),(80,'Mauro Alatorre y Salcido',1,'1912-09-02','',0,'0000-00-00','1962-06-13',4,'',1),(81,'Mayra Ontiveros',0,'0000-00-00','',0,'0000-00-00','0000-00-00',4,'',0),(82,'Paz Zuloaga y De La Torre',0,'0000-00-00','',0,'0000-00-00','0000-00-00',4,'',0),(83,'Roberto Izquierdo e Hijar',1,'1918-02-26','',1,'0000-00-00','0000-00-00',4,'',1),(84,'Stella Gregory y Remus',0,'1924-07-03','',1,'0000-00-00','0000-00-00',4,'',1),(85,'Adriana María Eugenia Izquierdo y Álvarez del Castillo',0,'1949-04-01','',1,'0000-00-00','0000-00-00',5,'',1),(86,'Alberto Clemente Zuloaga y Santos',1,'1964-11-12','',0,'0000-00-00','0000-00-00',5,'',0),(87,'Alberto Rafael Zuloaga y Chavez',1,'1947-01-01','',1,'0000-00-00','0000-00-00',5,'',0),(88,'Alejandro Covarrubias y Jimenez',1,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',0),(89,'Alejandro Fernandez y Paniagua',1,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',1),(90,'Alejandro Zuloaga y Santoscoy',1,'1954-07-21','',1,'0000-00-00','0000-00-00',5,'',1),(91,'Alfonso Alatorre y Zuloaga',1,'1953-07-18','',0,'0000-00-00','0000-00-00',5,'',1),(93,'Ana Rosa Margarita Zuloaga y Alvarez Del Castillo',0,'1937-05-18','',2,'0000-00-00','1937-08-30',5,'',0),(94,'Ana Rosa Marquez y Velazco',0,'1954-04-25','',1,'0000-00-00','0000-00-00',5,'',1),(95,'Andrea Thort',0,'0000-00-00','',0,'0000-00-00','0000-00-00',5,'',0),(96,'Andrés Martín del Campo y Zuloaga',1,'1966-04-16','',2,'0000-00-00','0000-00-00',5,'',1),(97,'Antonio Martín del Campo y Zuloaga',1,'1948-03-25','',1,'0000-00-00','0000-00-00',5,'',1),(98,'Arturo Gomez y Palomera',1,'1980-05-15','',1,'0000-00-00','0000-00-00',5,'',0),(99,'Begonia Fisure y Gomez',0,'1949-01-04','',1,'0000-00-00','0000-00-00',5,'',1),(100,'Benjamín Martín del Campo y Zuloaga',1,'1952-12-11','',1,'0000-00-00','0000-00-00',5,'',1),(101,'Carlos Alberto Zuloaga y Santos',1,'1949-08-16','',0,'0000-00-00','0000-00-00',5,'',0),(102,'Carlos Álvarez del Castillo y Gregory',1,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',0),(103,'Carlos Díaz de León',1,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',1),(104,'Carlos Enrigue y Zuloaga',1,'1947-12-31','',1,'0000-00-00','0000-00-00',5,'',1),(105,'Carlos Marquez',1,'0000-00-00','',0,'0000-00-00','0000-00-00',5,'',0),(106,'Carlos Martín del Campo y Zuloaga',1,'1956-03-18','',1,'0000-00-00','1986-09-03',5,'',1),(107,'Carlos Zuloaga y Santoscoy',1,'1961-11-04','',1,'0000-00-00','0000-00-00',5,'',1),(108,'Carmen Beatriz Eng',0,'1957-07-30','',1,'0000-00-00','0000-00-00',5,'',1),(109,'Carmen Enrigue y Zuloaga',0,'1956-07-13','',1,'0000-00-00','0000-00-00',5,'',1),(110,'Carmen Fernandez y Araico',0,'1947-06-07','',1,'0000-00-00','0000-00-00',5,'',0),(111,'Cristina Enrigue y Zuloaga',0,'1953-12-21','',1,'0000-00-00','0000-00-00',5,'',1),(112,'Cristina Zuloaga y Santoscoy',0,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',1),(113,'Daniel Paredes y Rea',1,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',0),(114,'David Solorzano y Jauregui',1,'0000-00-00','',0,'0000-00-00','0000-00-00',5,'',0),(115,'Diana Ceballos y Monraz',0,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',1),(116,'Diego Delfin y Farias',1,'1936-11-05','',1,'0000-00-00','0000-00-00',5,'',1),(117,'Dolores Guadalupe Zuloaga y Santos',0,'1948-02-28','',1,'0000-00-00','0000-00-00',5,'',0),(118,'Eduardo Raymundo Alvarez del Castillo y Dávila',1,'1938-04-12','',0,'0000-00-00','1962-04-16',5,'',0),(119,'Eduardo Zuloaga y Santoscoy',1,'1958-07-28','',1,'0000-00-00','0000-00-00',5,'',1),(120,'Elena Cristina Mercedes Hijar y Zuloaga',0,'1936-02-14','',0,'0000-00-00','0000-00-00',5,'',0),(121,'Elena Enrigue y Zuloaga',0,'1951-06-22','',1,'0000-00-00','0000-00-00',5,'',1),(122,'Elena Ma. del Rayo Iturbide y Zuloaga',0,'1951-07-09','',1,'0000-00-00','0000-00-00',5,'',0),(123,'Elena Maytorena y Martinez Negrete',0,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',0),(124,'Emigdio Gonzalez Guerra y Munguia',1,'1948-09-11','',0,'0000-00-00','0000-00-00',5,'',0),(125,'Emma Margarita Izquierdo y Álvarez del Castillo',0,'1950-10-19','',1,'0000-00-00','0000-00-00',5,'',1),(126,'Enrique Guizar y Leal',1,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',0),(127,'Enrique Xavier Zuloaga y Santos',1,'1961-05-19','',1,'0000-00-00','0000-00-00',5,'',0),(128,'Fanny Lancaster Jones y Woogh',0,'1950-07-14','',1,'0000-00-00','0000-00-00',5,'',1),(129,'Felipe de Jesús Martin del Campo y Zuloaga',1,'1947-03-28','',1,'0000-00-00','0000-00-00',5,'',1),(130,'Felipe de Anda',1,'1945-06-28','',0,'0000-00-00','0000-00-00',5,'',0),(131,'Francisco Enrigue y Zuloaga',1,'1949-02-28','',1,'0000-00-00','2009-06-19',5,'',1),(132,'Francisco Guillermo Zuloaga y Alvarez del Castillo',1,'1942-08-22','Ingeniero químico',1,'1967-01-07','0000-00-00',5,'',0),(133,'Francisco Iturbide y Zuloaga',1,'1966-01-15','',1,'0000-00-00','0000-00-00',5,'',1),(134,'Francisco Javier Ruiz y Gonzalez',1,'1956-08-10','',1,'0000-00-00','0000-00-00',5,'',1),(135,'Francisco Lugo y Serrano',1,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',0),(136,'Francisco Martin del Campo y Zuloaga',1,'1955-03-10','',1,'0000-00-00','0000-00-00',5,'',1),(137,'Gabriel Abelardo Hijar y Zuloaga',1,'1935-01-21','',1,'0000-00-00','0000-00-00',5,'',0),(138,'Gabriel Iturbide y Zuloaga',1,'1954-09-09','',1,'0000-00-00','0000-00-00',5,'',0),(139,'Gabriel Nieto y Luna',1,'1953-08-20','',1,'0000-00-00','0000-00-00',5,'',1),(140,'Gabriela Enrigue y Zuloaga',0,'1950-06-06','',1,'0000-00-00','0000-00-00',5,'',0),(141,'Gabriela Ontiveros y Ochoa',0,'1945-02-16','',1,'0000-00-00','0000-00-00',5,'',1),(142,'Gabriela Rugeiro y Luckas',0,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',0),(143,'Gabriela Villaseñor y Urrea',0,'1945-01-08','',1,'1967-01-07','0000-00-00',5,'',0),(144,'Guadalupe Torrez y Lopez',0,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',1),(145,'Guillermo Alatorre y Carrillo',1,'1975-03-15','',1,'0000-00-00','0000-00-00',5,'',1),(146,'Guillermo Loya y Hernandez',1,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',1),(147,'Guillermo Martín del Campo y Zuloaga',1,'1957-05-31','',0,'0000-00-00','0000-00-00',5,'',0),(148,'Guillermo Nieto Martinez',1,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',0),(149,'Hugo Antonio Zuloaga y Alvarez del Castillo',1,'1938-05-13','',1,'0000-00-00','0000-00-00',5,'',0),(150,'Humberto Cortez y Buenrostro',1,'1976-01-10','',1,'0000-00-00','0000-00-00',5,'',0),(151,'Ignacio Martín del Campo y Zuloaga',1,'1960-09-21','',0,'0000-00-00','0000-00-00',5,'',1),(152,'Jaime Alvarez del Castillo y Gregory',1,'1949-07-30','',1,'0000-00-00','0000-00-00',5,'',1),(153,'Jaime Lubín Zermeño y Acosta',1,'1945-06-11','',1,'0000-00-00','0000-00-00',5,'',1),(154,'Jaime Manuel Valdez y Simancas',1,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',0),(155,'Jaime Martin Zuloaga y Santos',1,'1951-11-12','',1,'0000-00-00','0000-00-00',5,'',0),(156,'Javier Romo y Zúñiga',1,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',1),(157,'Javier Santacruz',1,'0000-00-00','',0,'0000-00-00','0000-00-00',5,'',0),(158,'Jesús Carlos Alatorre y Zuloaga',1,'1957-06-01','',0,'0000-00-00','2004-12-28',5,'',1),(159,'Jesús Manuel Álvarez del Castillo y Romandia',1,'1957-07-01','',1,'0000-00-00','0000-00-00',5,'',1),(160,'Jesus Mario Zuloaga y Santos',1,'1955-02-02','',1,'0000-00-00','0000-00-00',5,'',0),(161,'Jorge Casillas',1,'1947-05-12','',1,'0000-00-00','0000-00-00',5,'',0),(162,'Jorge Guillermo Zuloaga y Chavez',1,'1948-03-20','',1,'0000-00-00','0000-00-00',5,'',0),(163,'Jorge José Rafael Izquierdo y Alvarez del Castillo',1,'1948-03-19','',1,'0000-00-00','0000-00-00',5,'',1),(164,'Jose Antonio Isaac',1,'1982-11-29','',0,'0000-00-00','0000-00-00',5,'',0),(165,'José de Jesús Izquierdo y Alvarez del Castillo',1,'1959-05-23','',0,'0000-00-00','0000-00-00',5,'',0),(166,'Jose Eduardo Martín del Campo y Zuloaga',1,'1951-03-18','',2,'0000-00-00','1974-10-05',5,'',1),(167,'Ignacio Zuloaga y Chávez',1,'1950-09-20','',1,'0000-00-00','0000-00-00',5,'',1),(168,'Jose Luis Alvarez Del Castillo y Dieguez',1,'1942-09-24','',1,'0000-00-00','0000-00-00',5,'',1),(169,'José Manuel Zuloaga y Álvarez del Castillo',1,'1944-03-19','Licenciado en administración de empresas y comerciante',1,'1968-06-08','0000-00-00',5,'169',0),(170,'Juan Bosco Iturbide y Zuloaga',1,'1960-01-11','',1,'0000-00-00','0000-00-00',5,'',0),(171,'Juan Enrigue y Zuloaga',1,'1959-01-22','',1,'0000-00-00','0000-00-00',5,'',1),(172,'Juan Jose Zuloaga y Santos',1,'1953-05-16','',1,'0000-00-00','0000-00-00',5,'',0),(173,'Juan Martín del Campo y Zuloaga',1,'1962-04-21','',1,'0000-00-00','0000-00-00',5,'',1),(174,'Judith Guadalupe Fernandez',0,'1950-08-14','',1,'0000-00-00','0000-00-00',5,'',0),(175,'Julieta Sáenz y Vichis',0,'1948-02-16','',1,'0000-00-00','0000-00-00',5,'',1),(176,'Leopoldo Juan Manuel Zuloaga y Alvarez del Castillo',1,'1953-10-26','',1,'0000-00-00','0000-00-00',5,'',0),(177,'Leticia Rodriguez Salazar',0,'1948-07-06','',1,'0000-00-00','0000-00-00',5,'',0),(178,'Liliana Reynaga',0,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',0),(179,'Lorenza Enrigue y Zuloaga',0,'1957-10-29','',1,'0000-00-00','0000-00-00',5,'',1),(180,'Luis Felipe de Jesús Batiz y Vidrio',1,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',1),(181,'Luis Gomez Portugal',1,'1948-07-17','',1,'0000-00-00','0000-00-00',5,'',1),(182,'Luis Omar Leon y Iberri',1,'1978-12-09','',1,'0000-00-00','0000-00-00',5,'',1),(183,'Luis Zuloaga Santoscoy',1,'1950-05-20','',1,'0000-00-00','0000-00-00',5,'',1),(184,'Luz Maria de Obeso',0,'1957-09-03','',1,'0000-00-00','0000-00-00',5,'',0),(185,'Luz Maria Iturbide y Zuloaga',0,'1955-11-20','',1,'0000-00-00','0000-00-00',5,'',0),(186,'Luz María Orozco y Gascón',0,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',0),(187,'Ma. Catalina Rosalia de Jesús Alvarez del Castillo y Romandia',0,'1946-01-01','',1,'0000-00-00','0000-00-00',5,'',1),(188,'Ma. Concepcion Margarita Robles y Fregoso',0,'1941-12-05','',1,'0000-00-00','0000-00-00',5,'',0),(189,'María de la Luz Franco y Guijarro',0,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',0),(190,'María de la Salud Iturbide y Zuloaga',0,'1953-04-15','',1,'0000-00-00','0000-00-00',5,'',0),(191,'Ma. de las Mercedes Zuloaga y Álvarez del Castillo',0,'1943-01-30','',0,'0000-00-00','0000-00-00',5,'',0),(192,'Ma. de los Angeles Aceves y Fernandez',0,'1949-11-27','',1,'1956-03-06','0000-00-00',5,'',0),(193,'Ma. del Carmen Moya y Gussi',0,'1952-12-04','',1,'0000-00-00','0000-00-00',5,'',1),(194,'María del Carmen Rocío y Cano',0,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',0),(195,'Ma. del Carmen Saenz y Vilchis',0,'1975-11-08','',1,'0000-00-00','0000-00-00',5,'',0),(196,'Ma. Elena Zuloaga y Santos',0,'1942-10-14','',1,'0000-00-00','0000-00-00',5,'',0),(197,'Ma. Guadalupe Fernandez del Valle y Gallardo',0,'0000-00-00','',0,'0000-00-00','0000-00-00',5,'',0),(198,'Ma. Margarita del Rocío Verdugo y Bañuelos',0,'1953-09-12','',1,'0000-00-00','0000-00-00',5,'',0),(199,'Manuel Martinez',1,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',1),(200,'Manuel Zuloaga y Chávez',1,'1954-04-26','',1,'0000-00-00','0000-00-00',5,'',1),(201,'Manuel Zuloaga y Montelongo',1,'1984-06-04','',0,'0000-00-00','0000-00-00',5,'',0),(202,'Margarita Martín del Campo y Zuloaga',0,'1950-03-27','',1,'0000-00-00','0000-00-00',5,'',1),(203,'María de Lourdes Zuloaga y Chávez',0,'1955-08-13','hogar',1,'0000-00-00','0000-00-00',5,'',1),(204,'María del Carmen Álvarez del Castillo y Gregory',0,'1947-11-05','',1,'0000-00-00','0000-00-00',5,'',0),(205,'Maria del Carmen Castañeda',0,'1960-01-27','',1,'0000-00-00','0000-00-00',5,'',1),(206,'María del Carmen Izquierdo y Álvarez del Castillo',0,'1954-07-12','',1,'0000-00-00','0000-00-00',5,'',1),(207,'Maria del Carmen Martin del Campo y Zuloaga',0,'1953-10-13','',1,'0000-00-00','0000-00-00',5,'',1),(208,'Maria del Rayo Martín del Campo y Zuloaga',0,'1952-06-29','',1,'0000-00-00','0000-00-00',5,'',1),(209,'María del Rosario Izquierdo y Álvarez del Castillo',0,'1957-05-29','',1,'0000-00-00','0000-00-00',5,'',1),(210,'Maria Elena Cerna y Colin',0,'1985-08-03','',1,'0000-00-00','0000-00-00',5,'',0),(211,'Maria Eugenia Medel',0,'1949-04-07','',1,'0000-00-00','0000-00-00',5,'',1),(212,'Maria Guadalupe Iturbide y Zuloaga',0,'1950-05-07','',1,'0000-00-00','0000-00-00',5,'',0),(213,'Maria Isabel Zuloaga y Santos',0,'1958-01-25','',1,'0000-00-00','0000-00-00',5,'',0),(214,'Maria Pilar Iturbide y Zuloaga',0,'1947-10-11','',1,'0000-00-00','0000-00-00',5,'',0),(215,'Maria Rosario Ibarra',0,'1966-01-25','',1,'0000-00-00','0000-00-00',5,'',0),(216,'María Concepción Martín del Campo y Zuloaga',0,'1949-03-14','',1,'0000-00-00','0000-00-00',5,'',1),(217,'Marina Zuloaga y Chávez',0,'1966-04-16','',1,'0000-00-00','0000-00-00',5,'',1),(218,'Mariana Zuloaga y Santos',0,'1970-08-08','',0,'0000-00-00','0000-00-00',5,'',0),(219,'Martha Leticia Zuloaga y Chavez',0,'1952-11-30','',1,'0000-00-00','0000-00-00',5,'',0),(220,'Martha Yolanda Oros',0,'1958-12-22','',1,'0000-00-00','0000-00-00',5,'',1),(221,'Mauro Francisco Alatorre y Zuloaga',1,'1955-02-17','',1,'0000-00-00','0000-00-00',5,'',1),(222,'Miguel Neal y Rendón',1,'1979-08-11','',1,'0000-00-00','0000-00-00',5,'',1),(223,'Mónica Alejandra Martín del Campo y Zuloaga',0,'1964-06-18','',0,'0000-00-00','0000-00-00',5,'',1),(224,'Monica Margarita Álvarez del Castillo y Gregory',0,'1953-07-20','',1,'0000-00-00','0000-00-00',5,'',1),(225,'Monica Elias',0,'1945-12-13','',1,'0000-00-00','0000-00-00',5,'',0),(226,'Myriam Hernandez',0,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',1),(227,'Narciso Tostado y Gonzalez',1,'1943-06-08','',1,'0000-00-00','0000-00-00',5,'',1),(228,'Norali Franco y Abascal',0,'1958-07-01','',1,'0000-00-00','0000-00-00',5,'',0),(229,'Olga Diaque Lases',0,'1946-09-09','Ama de casa',1,'1968-06-08','0000-00-00',5,'229',0),(230,'Patricia Montelongo',0,'1959-01-22','hogar',1,'0000-00-00','0000-00-00',5,'',0),(231,'Patricia Noriega',0,'0000-00-00','',0,'0000-00-00','0000-00-00',5,'',0),(232,'Patricia Zuloaga y Santoscoy',0,'1951-05-24','',1,'0000-00-00','0000-00-00',5,'',1),(233,'Pedro Luis Alatorre y Zuloaga',1,'1952-01-16','',1,'0000-00-00','0000-00-00',5,'',1),(234,'Pedro Zuloaga y Santoscoy',1,'1955-08-24','',1,'0000-00-00','0000-00-00',5,'',1),(235,'Rafael Gomez y Diaz',1,'1958-11-17','',1,'0000-00-00','0000-00-00',5,'',1),(236,'Raul Elizarraras',1,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',0),(237,'Roberto Manuel Izquierdo y Álvarez del Castillo',1,'1952-11-14','',1,'0000-00-00','0000-00-00',5,'',1),(238,'Roberto Zertuche y Fuentes',1,'1959-08-19','',1,'0000-00-00','0000-00-00',5,'',1),(239,'Rocio Rosales y Aranguren',0,'1966-09-07','',1,'0000-00-00','0000-00-00',5,'',1),(240,'Rosa Isela Cardona Villanueva',0,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',0),(241,'Sandra Gonzalez',0,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',1),(242,'Silvia Fernandez',0,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',1),(243,'Silvia Izquierdo y Alvarez Del Castillo	',0,'1951-10-02','',1,'0000-00-00','0000-00-00',5,'',1),(244,'Sofia Enrigue y Zuloaga',0,'1954-05-04','',0,'0000-00-00','0000-00-00',5,'',1),(245,'Sofia Aldana y Martínez',0,'1956-08-27','',1,'0000-00-00','0000-00-00',5,'',1),(246,'Stella Alvarez Del Castillo y Gregory',0,'1954-10-20','',1,'0000-00-00','0000-00-00',5,'',1),(247,'Susana Iturbide y Zuloaga',0,'1949-01-14','',1,'0000-00-00','0000-00-00',5,'',0),(248,'Susana Valencia y Morfin',0,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',0),(249,'Teresa Aldape Gonzalez',0,'0000-00-00','',0,'0000-00-00','0000-00-00',5,'',0),(250,'Adrian Marquez y Iturbide',1,'1983-07-21','',0,'0000-00-00','0000-00-00',6,'',0),(251,'Adriana Isabel Zuloaga y de Obeso',0,'1988-11-11','',0,'0000-00-00','0000-00-00',6,'',0),(252,'Alejandro Covarrubias y Zuloaga',1,'1970-04-30','',0,'0000-00-00','0000-00-00',6,'',0),(253,'Alberto Elizarrarás y Zuloaga',1,'1970-05-27','',0,'0000-00-00','0000-00-00',6,'',1),(254,'Alberto Zuloaga y Reynaga',1,'1994-12-10','',0,'0000-00-00','0000-00-00',6,'',0),(255,'Alberto Zuloaga y Fernandez',1,'1972-07-08','',0,'0000-00-00','0000-00-00',6,'',0),(256,'Aldo Fernandez y Zuloaga',1,'1980-06-26','',1,'0000-00-00','0000-00-00',6,'',0),(257,'Alejandro Fernandez y Zuloaga',1,'1974-05-30','',1,'0000-00-00','0000-00-00',6,'',0),(258,'Alejandro Gomez y Enrigue',1,'1981-04-09','',0,'0000-00-00','0000-00-00',6,'',0),(259,'Alejandro Martin Del Campo y Saenz',1,'1978-10-09','',0,'0000-00-00','0000-00-00',6,'',0),(260,'Alfonso Marquez y Iturbide',1,'1974-05-15','',0,'0000-00-00','1974-05-17',6,'',0),(261,'Alian Cristopher Lugo y Izquierdo',1,'0000-00-00','',0,'0000-00-00','0000-00-00',6,'',0),(262,'Alicia Covarrubias',0,'0000-00-00','',0,'0000-00-00','0000-00-00',6,'',0),(263,'Alonso Gomez y Zuloaga',1,'1986-04-26','',0,'0000-00-00','0000-00-00',6,'',0),(264,'Alvaro Covarrubias y Zuloaga',1,'1972-08-18','',0,'0000-00-00','0000-00-00',6,'',0),(265,'Alvaro Cortez y Zuloaga',1,'1979-03-09','',0,'0000-00-00','0000-00-00',6,'',0),(266,'Alvaro Diaz Del Castillo y Mendoza',1,'0000-00-00','',1,'0000-00-00','0000-00-00',6,'',1),(267,'Alvaro Gomez y Izquierdo',1,'1984-05-23','',0,'0000-00-00','0000-00-00',6,'',0),(268,'Alvaro Valdez y Enrigue',1,'1988-03-02','',0,'0000-00-00','0000-00-00',6,'',0),(269,'Ana Cecilia Alatorre y Oros',0,'1968-10-21','',0,'0000-00-00','0000-00-00',6,'',0),(270,'Ana Lorena Zuloaga y Cerna',0,'1998-01-07','',0,'0000-00-00','0000-00-00',6,'',0),(271,'Ana Maria Loya y Martin Del Campo',0,'1979-07-18','',0,'0000-00-00','0000-00-00',6,'',0),(272,'Ana Maria Zuloaga y Villaseñor',0,'1976-11-12','',1,'0000-00-00','0000-00-00',6,'',1),(273,'Ana Paula Iturbide y Orozco',0,'1986-05-04','',0,'0000-00-00','0000-00-00',6,'',0),(274,'Ana Paula Martin Del Campo',0,'1985-08-09','',0,'0000-00-00','0000-00-00',6,'',0),(275,'Ana Sofia Zuloaga y Cardona',0,'0000-00-00','',0,'0000-00-00','0000-00-00',6,'',0),(276,'Andrea Martín del Campo y Thort',0,'1995-06-26','',0,'0000-00-00','0000-00-00',6,'',1),(277,'Andres Nieto y Enrigue',1,'1986-07-23','',0,'0000-00-00','0000-00-00',6,'',0),(278,'Andres Zuloaga y Cano',1,'1991-04-27','',0,'0000-00-00','0000-00-00',6,'',0),(279,'Anilú',0,'0000-00-00','',1,'0000-00-00','0000-00-00',6,'',0),(280,'Antonio Martin Del Campo y Saenz',1,'1975-10-25','',0,'0000-00-00','0000-00-00',6,'',0),(281,'Antonio Rodriguez y Gonzalez',1,'1971-05-16','',1,'0000-00-00','0000-00-00',6,'',1),(282,'Araceli',0,'0000-00-00','',1,'0000-00-00','0000-00-00',6,'',0),(283,'Armando Mora',1,'1968-11-03','',1,'0000-00-00','0000-00-00',6,'',1),(284,'Arturo Gomez y Zuloaga',1,'1981-03-27','',0,'0000-00-00','0000-00-00',6,'',0),(285,'Barbara Zuloaga y Maytorena',0,'1989-11-21','',0,'0000-00-00','0000-00-00',6,'',0),(286,'Benjamin Mart&iacute;n del Campo y Ceballos',1,'1983-06-05','',0,'0000-00-00','0000-00-00',6,'',0),(287,'Brenda Rodriguez Morores',0,'0000-00-00','',0,'0000-00-00','0000-00-00',6,'',0),(288,'Carlos Alberto Hijar y Fernandez',1,'1970-07-06','',1,'0000-00-00','0000-00-00',6,'',0),(289,'Carlos Antonio Martin Del Campo y Eng',1,'1979-11-13','',0,'0000-00-00','0000-00-00',6,'',0),(290,'Carlos Diaz De Leon y Zuloaga',1,'1987-07-23','',0,'0000-00-00','0000-00-00',6,'',0),(291,'Carlos Jose Zuloaga y Fernandez Del Valle',1,'1979-10-03','',0,'0000-00-00','0000-00-00',6,'',0),(292,'Carlos Maria Enrigue y Lancaster Jones',1,'1982-06-08','',0,'0000-00-00','0000-00-00',6,'',0),(293,'Carlos Marquez y Iturbide',1,'1973-05-10','',0,'0000-00-00','0000-00-00',6,'',0),(294,'Carlos Zuloaga y Franco',1,'0000-00-00','',0,'0000-00-00','0000-00-00',6,'',0),(295,'Cecilia Alatorre y Alatorre',0,'1978-05-02','',0,'0000-00-00','0000-00-00',6,'',0),(296,'Cristina Mojica Anaya',0,'0000-00-00','',1,'0000-00-00','0000-00-00',6,'',0),(297,'Daniel Paredes y Izquierdo',1,'0000-00-00','',0,'0000-00-00','0000-00-00',6,'',0),(298,'Daniel Zuloaga y Cano',1,'1997-08-11','',0,'0000-00-00','0000-00-00',6,'',0),(299,'Daniel Zuloaga y Fernandez',1,'1986-04-10','',0,'0000-00-00','0000-00-00',6,'',0),(300,'Daniela Batiz y Izquierdo',0,'0000-00-00','',0,'0000-00-00','0000-00-00',6,'',0),(301,'Daniela Diaz De Leon y Zuloaga',0,'1980-05-21','',0,'0000-00-00','0000-00-00',6,'',0),(302,'David Josue Zuloaga y Saenz',1,'1981-02-08','',0,'0000-00-00','0000-00-00',6,'',0),(303,'David Leon y Martin Del Campo',1,'1988-08-13','',0,'0000-00-00','0000-00-00',6,'',0),(304,'David Solorzano y Álvarez del Castillo',1,'1975-11-05','',0,'0000-00-00','0000-00-00',6,'',0),(305,'Diego Delfin y Álvarez del Castillo',1,'1971-04-28','',0,'0000-00-00','0000-00-00',6,'',0),(306,'Diego Fernandez y Zuloaga',1,'1975-06-16','',1,'0000-00-00','0000-00-00',6,'',0),(307,'Diego Zuloaga y Cerna',1,'1992-12-08','',0,'0000-00-00','0000-00-00',6,'',0),(308,'Eduardo Navarro y Becerra',1,'1961-06-29','',1,'0000-00-00','0000-00-00',6,'',0),(309,'Eduardo Zuloaga y Diaque',1,'1973-09-07','',1,'0000-00-00','0000-00-00',6,'',0),(310,'Elena Isaac y Iturbide',0,'1975-07-25','',1,'0000-00-00','0000-00-00',6,'',1),(311,'Elena Loya y Martin Del Campo',0,'1984-03-14','',0,'0000-00-00','0000-00-00',6,'',0),(312,'Emanuel Ismael Martinez y Izquierdo',1,'0000-00-00','',0,'0000-00-00','0000-00-00',6,'',0),(313,'Emilio Miguel Zuloaga y Saenz',1,'1988-02-14','',0,'0000-00-00','0000-00-00',6,'',0),(314,'Enrique Zuloaga y Cerna',1,'1990-02-16','',0,'0000-00-00','0000-00-00',6,'',0),(315,'Eugenio De Anda y Enrigue',1,'1985-06-04','',0,'0000-00-00','0000-00-00',6,'',0),(316,'Fanny Enrigue y Lancaster Jones',0,'1976-06-06','',0,'0000-00-00','0000-00-00',6,'',0),(317,'Felipe De Anda y Enrigue',1,'1982-04-01','',0,'0000-00-00','0000-00-00',6,'',0),(318,'Fernando Gomez',1,'0000-00-00','',0,'0000-00-00','0000-00-00',6,'',0),(319,'Francisco Martin Del Campo y Hernandez',1,'1981-10-15','',0,'0000-00-00','0000-00-00',6,'',0),(320,'Francisco Rafael Lugo y Izquierdo',1,'0000-00-00','',0,'0000-00-00','0000-00-00',6,'',0),(321,'Francisco Raymundo Tostado y Álvarez del Castillo',1,'1973-11-24','',0,'0000-00-00','0000-00-00',6,'',0),(322,'Francisco Ruiz y Enrigue',1,'1988-02-25','',0,'0000-00-00','0000-00-00',6,'',0),(323,'Francisco Sandoval y Flores',1,'1970-11-23','',1,'0000-00-00','0000-00-00',6,'',0),(324,'Gabriel Hijar y Fernandez',1,'1969-06-20','',0,'0000-00-00','0000-00-00',6,'',1),(325,'Gabriel Iturbide y Torres',1,'1996-05-08','',0,'0000-00-00','0000-00-00',6,'',0),(326,'Gabriel Nieto y Enrigue',1,'1981-08-20','',0,'0000-00-00','0000-00-00',6,'',0),(327,'Gabriel Zuloaga y Álvarez del Castillo',1,'1949-11-05','',1,'1975-10-04','2009-10-16',5,'',0),(328,'Gabriela De Anda y Enrigue',0,'1984-02-21','',0,'0000-00-00','0000-00-00',6,'',0),(329,'Gabriela Martin del Campo y Thort',0,'1998-06-14','',0,'0000-00-00','0000-00-00',6,'',1),(330,'Gabriela Zuloaga y Villaseñor',0,'1968-01-03','',1,'0000-00-00','0000-00-00',6,'',0),(331,'Gerardo Gomez y Izquierdo',1,'1985-10-15','',0,'0000-00-00','0000-00-00',6,'',0),(332,'Gerardo Gonzalez Guerra y Álvarez del Castillo',1,'1983-09-30','',0,'0000-00-00','0000-00-00',6,'',0),(333,'Gilda Chavez y Martinez',0,'1970-10-08','',1,'0000-00-00','0000-00-00',6,'',0),(334,'Guadalupe Enrigue y Lancaster Jones',0,'1980-03-06','',0,'0000-00-00','0000-00-00',6,'',0),(335,'Guillermo Alatorre y Alatorre',1,'1977-01-27','',0,'0000-00-00','0000-00-00',6,'',0),(336,'Guillermo Eugenio Nieto y Zuloaga',1,'1976-06-27','',0,'0000-00-00','0000-00-00',6,'',0),(337,'Guillermo Loya y Martin del Campo',1,'1978-02-20','',0,'0000-00-00','0000-00-00',6,'',0),(338,'Gustavo Alatorre y Alatorre',1,'1977-01-27','',0,'0000-00-00','0000-00-00',6,'',0),(339,'Hugo Zuloaga y Rodriguez',1,'1983-07-21','',0,'0000-00-00','0000-00-00',6,'',0),(340,'Ignacio Gonzalez y Cantu',1,'2002-03-20','',0,'0000-00-00','0000-00-00',6,'',0),(341,'Irene Alatorre y Alatorre',0,'1990-08-24','',0,'0000-00-00','0000-00-00',6,'',0),(342,'Iris Zuloaga y Franco',0,'0000-00-00','',0,'0000-00-00','0000-00-00',6,'',0),(343,'Isabel Enrigue y Rosales',0,'2000-10-10','',0,'0000-00-00','0000-00-00',6,'',0),(344,'Ivette Santacruz y Iturbide',0,'1978-12-17','',0,'0000-00-00','0000-00-00',6,'',0),(345,'Jacinto Arenas',1,'2000-05-19','',0,'0000-00-00','0000-00-00',6,'',0),(346,'Jaime Lubin Zermeño y Martin Del Campo',1,'1975-06-11','',0,'0000-00-00','0000-00-00',6,'',0),(347,'Jaime Zuloaga y Saenz',1,'1976-07-27','',0,'0000-00-00','0000-00-00',6,'',0),(348,'Javier Romo y Martin Del Campo',1,'1979-12-25','',0,'0000-00-00','0000-00-00',6,'',0),(349,'Javier Santacruz y Iturbide',1,'1976-01-12','',0,'0000-00-00','0000-00-00',6,'',0),(350,'Jesus Alberto Neal y Zuloaga',1,'1985-02-23','',0,'0000-00-00','0000-00-00',6,'',0),(351,'Jesús Alejandro Tostado y Álvarez del Castillo',1,'1971-06-18','',0,'0000-00-00','0000-00-00',6,'',0),(352,'Jesús Armando Zuloaga y Elias',1,'1976-06-08','',0,'0000-00-00','0000-00-00',6,'',0),(353,'Jesús Ernesto Martin Del Campo y Eng',1,'1979-11-13','',0,'0000-00-00','0000-00-00',6,'',0),(354,'Jesús  Carlos G&oacute;mez y Zuloaga',1,'1983-08-27','',0,'0000-00-00','0000-00-00',6,'',0),(355,'Jesús Mariano Izquierdo y Fisure',1,'1970-10-05','',0,'0000-00-00','0000-00-00',6,'',0),(356,'Jesús Omar Álvarez del Castillo y Castañeda',1,'1975-06-08','',0,'0000-00-00','0000-00-00',6,'',0),(357,'Joel Zuloaga y Aceves',1,'1977-01-11','',0,'0000-00-00','0000-00-00',6,'',0),(358,'Jonathan Lugo y Izquierdo',1,'0000-00-00','',0,'0000-00-00','0000-00-00',6,'',0),(359,'Jorge Covarrubias y Zuloaga',1,'1980-11-10','',0,'0000-00-00','0000-00-00',6,'',0),(360,'Jorge Roman Izquierdo y Fisure',1,'1969-08-15','',0,'0000-00-00','0000-00-00',6,'',1),(361,'Jorge Zuloaga y Franco',1,'1980-08-22','',0,'0000-00-00','0000-00-00',6,'',0),(362,'José Andres Zuloaga y De Obeso',1,'1984-01-16','',0,'0000-00-00','0000-00-00',6,'',0),(363,'José Antonio Alvarez y Garcia',1,'1970-02-17','',1,'0000-00-00','0000-00-00',6,'',1),(364,'José Antonio Isaac y Iturbide',1,'1982-11-29','',0,'0000-00-00','0000-00-00',6,'',0),(365,'José Eduardo Tostado y Álvarez del Castillo',1,'1968-04-30','',0,'0000-00-00','0000-00-00',6,'',0),(366,'José Luis Zuloaga y Diaque',1,'1969-03-29','',1,'0000-00-00','0000-00-00',6,'',0),(367,'José Miguel Neal y Zuloaga',1,'1981-09-13','',0,'0000-00-00','0000-00-00',6,'',0),(368,'José Rodrigo Marquez y Iturbide',1,'1978-03-19','',0,'0000-00-00','0000-00-00',6,'',0),(369,'Juan Bosco Iturbide y Rugeiro',1,'1988-06-21','',0,'0000-00-00','0000-00-00',6,'',0),(370,'Juan Diego Zuloaga y Maytorena',1,'1991-07-09','',0,'0000-00-00','0000-00-00',6,'',0),(371,'Juan Fernando Zuloaga y Aceves',1,'1978-08-06','',0,'0000-00-00','0000-00-00',6,'',0),(372,'Juan Francisco Martin Del Campo y Medel',1,'1979-10-04','',0,'0000-00-00','0000-00-00',6,'',0),(373,'Juan Ignacio Michel y Zepeda',1,'1975-02-20','',1,'0000-00-00','0000-00-00',6,'',0),(374,'Juan Pablo Casillas y Iturbide',1,'1979-03-05','',0,'0000-00-00','0000-00-00',6,'',0),(375,'Juan Pablo Martin Del Campo y Ceballos',1,'1985-03-07','',0,'0000-00-00','0000-00-00',6,'',0),(376,'Juan Pablo Zuloaga y De Obeso',1,'1982-04-26','',0,'0000-00-00','0000-00-00',6,'',0),(377,'Judith Guadalupe Zuloaga y Fernandez',0,'1971-02-13','',0,'0000-00-00','0000-00-00',6,'',0),(378,'Julio Cesar Casillas y Iturbide',1,'0000-00-00','',0,'0000-00-00','0000-00-00',6,'',0),(379,'Karina Emilia Zuloaga y Reynaga',0,'1998-10-07','',0,'0000-00-00','0000-00-00',6,'',0),(380,'Karla Elena Zuloaga y Maytorena',0,'1985-03-10','',0,'0000-00-00','0000-00-00',6,'',0),(381,'Karla Gonzalez Guerra y Álvarez del Castillo',0,'1975-11-07','',0,'0000-00-00','0000-00-00',6,'',0),(382,'Leopoldo Alberto Zuloaga y Verdugo',1,'1985-08-24','',0,'0000-00-00','0000-00-00',6,'',0),(383,'Lillian Lorenza Álvarez del Castillo y Ontiveros',0,'1968-03-20','',1,'0000-00-00','0000-00-00',6,'',1),(384,'Lizette Guizar y Iturbide',0,'1980-08-04','',0,'0000-00-00','0000-00-00',6,'',0),(385,'Lucia Patricia Zuloaga y Montelongo',0,'1980-12-21','',0,'0000-00-00','0000-00-00',6,'',0),(386,'Luciana Zermeño y Martin Del Campo',0,'1980-05-20','',0,'0000-00-00','0000-00-00',6,'',0),(387,'Luis Andres Leon y Martin Del Campo',1,'1982-11-28','',0,'0000-00-00','0000-00-00',7,'',0),(388,'Luis Batiz y Izquierdo',1,'0000-00-00','',0,'0000-00-00','0000-00-00',6,'',0),(389,'Luis Eduardo Zuloaga y Maytorena',1,'1984-05-09','',0,'0000-00-00','0000-00-00',6,'',0),(390,'Luis Fernando Zuloaga y Cardona',1,'0000-00-00','',0,'0000-00-00','0000-00-00',6,'',0),(391,'Luis Gomez y Enrigue',1,'1974-01-02','',0,'0000-00-00','0000-00-00',6,'',0),(392,'Luis Zuloaga y Fernandez',1,'1974-01-18','',0,'0000-00-00','0000-00-00',6,'',0),(393,'Luz María Zuloaga y de Obeso',0,'1982-04-26','',0,'0000-00-00','0000-00-00',6,'',0),(394,'Ma. Carminia Zuloaga y Saenz',0,'1980-06-03','',0,'0000-00-00','0000-00-00',6,'',0),(395,'María de los Angeles Elizarraras y Zuloaga',0,'1967-08-17','',2,'0000-00-00','0000-00-00',6,'',1),(396,'Ma. de los Dolores Nieto y Zuloaga',0,'1978-11-18','',0,'0000-00-00','0000-00-00',6,'',0),(397,'Ma. del Carmen Alatorre y Moya',0,'1997-04-07','',0,'0000-00-00','0000-00-00',6,'',0),(398,'Manuel Valdez y Enrigue',1,'1986-01-29','',0,'0000-00-00','0000-00-00',6,'',0),(399,'Marcela Álvarez del Castillo y Ontiveros',0,'1969-08-03','',1,'0000-00-00','0000-00-00',6,'',1),(400,'Marcela Díaz de León y Zuloaga',0,'1978-11-22','',0,'0000-00-00','0000-00-00',6,'',0),(401,'Marco Antonio Zuloaga y Rodriguez',1,'1985-07-22','',0,'0000-00-00','0000-00-00',6,'',1),(402,'Margarita Romo y Martín del Campo',0,'1977-05-15','',0,'0000-00-00','0000-00-00',6,'',0),(403,'Maria Álvarez del Castillo y Aldana',0,'1976-12-09','',0,'0000-00-00','0000-00-00',6,'',0),(404,'María Aurora',0,'0000-00-00','',1,'0000-00-00','0000-00-00',6,'',0),(405,'María de la Paz Zuloaga y Villaseñor',0,'1970-03-04','',1,'0000-00-00','0000-00-00',6,'',0),(407,'María del Carmen Batiz y Izquierdo',0,'0000-00-00','',0,'0000-00-00','0000-00-00',6,'',0),(408,'María del Carmen Zuloaga y Villaseñor',0,'1972-02-17','',1,'0000-00-00','0000-00-00',6,'',1),(409,'María del Pilar Covarrubias y Zuloaga',0,'1973-08-21','',0,'0000-00-00','0000-00-00',6,'',0),(410,'María del Rocio Enrigue y Lancaster Jones',0,'1985-08-15','',0,'0000-00-00','0000-00-00',6,'',0),(411,'María Elena Zuloaga y Cerna',0,'1986-06-08','',0,'0000-00-00','0000-00-00',6,'',0),(412,'María Gutierrez Hermosillo y Corvera',0,'1956-04-15','',1,'1975-10-04','0000-00-00',5,'',0),(413,'María Isabel Martín del Campo y Saenz',0,'1972-05-22','',0,'0000-00-00','0000-00-00',6,'',0),(414,'María José Enrigue y Rosales',0,'2001-12-12','',0,'0000-00-00','0000-00-00',6,'',0),(415,'María José Iturbide y Rugeiro',0,'1985-08-24','',0,'0000-00-00','0000-00-00',6,'',0),(416,'María Luisa Díaz de León y Zuloaga',0,'1976-07-31','',0,'0000-00-00','0000-00-00',6,'',0),(417,'María Martín del Campo y Medel',0,'1982-09-07','',0,'0000-00-00','0000-00-00',6,'',0),(418,'Mariana Diaz y Barba',0,'1976-01-20','',1,'0000-00-00','0000-00-00',6,'',0),(419,'Mariana Iturbide y Orozco',0,'1983-11-22','',0,'0000-00-00','0000-00-00',6,'',0),(420,'Mariana Zermeño y Martín del Campo',0,'1978-08-26','',0,'0000-00-00','0000-00-00',6,'',0),(421,'Marina Andrea Zertuche y Zuloaga',0,'1993-03-23','',0,'0000-00-00','0000-00-00',6,'',0),(422,'Marina Isabel Gomez y Zuloaga',0,'1989-12-02','',0,'0000-00-00','0000-00-00',6,'',0),(423,'Mario Alejandro Zuloaga y Elias',1,'1977-05-03','',0,'0000-00-00','0000-00-00',6,'',0),(424,'Mario Julian Zermeño y Martín del Campo',1,'1983-01-15','',0,'0000-00-00','0000-00-00',7,'',0),(425,'Mariza Santacruz y Iturbide',0,'1973-02-11','',1,'0000-00-00','0000-00-00',6,'',1),(426,'Martha Alejandra Alatorre y Oros',0,'1980-02-07','',0,'0000-00-00','0000-00-00',6,'',0),(427,'Mauricio Iturbide y Torres',1,'1999-02-22','',0,'0000-00-00','0000-00-00',6,'',0),(428,'Mauricio Leon y Martín del Campo',1,'1984-11-27','',0,'0000-00-00','0000-00-00',6,'',0),(429,'Mauricio Nieto y Enrigue',1,'1982-12-18','',0,'0000-00-00','0000-00-00',6,'',0),(430,'Mauro Francisco Alatorre y Oros',1,'1984-05-28','',0,'0000-00-00','0000-00-00',6,'',0),(431,'Mónica Alejandra Zertuche y Zuloaga',0,'1995-05-29','',0,'0000-00-00','0000-00-00',6,'',0),(432,'Mónica Enrigue y Lancaster Jones',0,'1978-02-10','',0,'0000-00-00','0000-00-00',6,'',0),(433,'Mónica Gonzalez Guerra y Álvarez del Castillo',0,'1972-01-19','',0,'0000-00-00','0000-00-00',6,'',0),(434,'Mónica Guizar y Iturbide',0,'1984-08-25','',0,'0000-00-00','0000-00-00',6,'',0),(435,'Mónica María Zuloaga y Elias',0,'1983-01-15','',0,'0000-00-00','0000-00-00',6,'',0),(436,'Myriam Zuloaga y Fregoso',0,'1965-09-17','',1,'0000-00-00','0000-00-00',6,'',0),(437,'Norali Paola Zuloaga y Franco',0,'1983-12-29','',0,'0000-00-00','0000-00-00',6,'',0),(438,'Omar Eduardo Leon y Martín del Campo',1,'1980-11-30','',0,'0000-00-00','0000-00-00',6,'',0),(439,'Paloma Enrigue y Rosales',0,'1996-10-07','',0,'0000-00-00','0000-00-00',6,'',0),(440,'Paulina Cortez y Zuloaga',0,'1977-12-12','',0,'0000-00-00','0000-00-00',6,'',0),(441,'Paulina Isaac y Iturbide',0,'1977-09-26','',1,'0000-00-00','0000-00-00',6,'',0),(442,'Paulo Christian Lugo y Izquierdo',1,'0000-00-00','',0,'0000-00-00','0000-00-00',6,'',0),(443,'Pedro Luis Alatorre y Ibarra',1,'1997-04-07','',0,'0000-00-00','0000-00-00',6,'',0),(444,'Pedro Zuloaga y Cano',1,'1986-09-11','',0,'0000-00-00','0000-00-00',6,'',0),(445,'Priscilla Zuloaga y Gonzalez',0,'1982-07-12','',0,'0000-00-00','0000-00-00',6,'',0),(446,'Rafael Gomez y Izquierdo',1,'1983-11-05','',0,'0000-00-00','0000-00-00',6,'',0),(447,'Raúl Bernardino Izquierdo y Fisure',1,'1975-07-16','',0,'0000-00-00','0000-00-00',6,'',0),(448,'Raúl Elizarraras y Zuloaga',1,'1968-09-05','',0,'0000-00-00','0000-00-00',6,'',1),(449,'Raymundo Zuloaga y Fernandez del Valle',1,'1993-12-22','',0,'0000-00-00','0000-00-00',6,'',0),(450,'Regina Iturbide y Rugeiro',0,'1990-06-04','',0,'0000-00-00','0000-00-00',6,'',0),(451,'Regina Valdez y Enrigue',0,'1993-01-02','',0,'0000-00-00','0000-00-00',6,'',0),(452,'Roberto Paredes y Izquierdo',1,'0000-00-00','',0,'0000-00-00','0000-00-00',6,'',0),(453,'Rocío Zuloaga y Diaque',0,'1971-04-24','',1,'0000-00-00','0000-00-00',6,'',0),(454,'Rodrigo Zuloaga y Fernandez del Valle',1,'1980-10-26','',0,'0000-00-00','0000-00-00',6,'',0),(455,'Rodrigo Zuloaga y Fernandez',1,'1978-07-14','',0,'0000-00-00','0000-00-00',6,'',0),(456,'Salvador Franco y Durán',1,'1967-09-21','',1,'0000-00-00','0000-00-00',6,'',0),(457,'Samuel Zuloaga y Cano',1,'1998-08-29','',0,'0000-00-00','0000-00-00',6,'',0),(458,'Sandra Alatorre y Alatorre',0,'1980-06-25','',0,'0000-00-00','0000-00-00',6,'',0),(459,'Sandra Zuloaga y Gonzalez',0,'1984-04-13','',0,'0000-00-00','0000-00-00',6,'',0),(460,'Santiago Gomez y Enrigue',1,'1979-01-18','',1,'0000-00-00','0000-00-00',6,'',1),(461,'Santiago Zuloaga y Cano',1,'1987-10-27','',0,'0000-00-00','0000-00-00',6,'',0),(462,'Sara Alatorre y Ibarra',0,'1998-07-03','',0,'0000-00-00','0000-00-00',6,'',0),(463,'Sergio Flores y Ochoa',1,'0000-00-00','',1,'0000-00-00','0000-00-00',6,'',0),(464,'Sofía Casillas y Iturbide',0,'1982-09-19','',0,'0000-00-00','0000-00-00',6,'',0),(465,'Sofía Gomez y Enrigue',0,'1990-09-01','',0,'0000-00-00','0000-00-00',6,'',0),(466,'Sofía Loya y Martín del Campo',0,'1981-05-21','',0,'0000-00-00','0000-00-00',6,'',0),(467,'Stella Solorzano y Álvarez del Castillo',0,'1978-04-06','',0,'0000-00-00','0000-00-00',6,'',0),(468,'Susana Casillas y Iturbide',0,'1975-02-20','',0,'0000-00-00','0000-00-00',6,'',0),(469,'Susana Delfin y Álvarez del Castillo',0,'1972-12-17','',0,'0000-00-00','0000-00-00',6,'',0),(470,'Susana Enrigue y Valencia',0,'1980-06-21','',0,'0000-00-00','0000-00-00',6,'',0),(471,'Vera Álvarez del Castillo y Aldana',0,'1978-01-20','',0,'0000-00-00','0000-00-00',6,'',0),(472,'Victoria Zuloaga y Noriega',0,'0000-00-00','',0,'0000-00-00','0000-00-00',6,'',0),(473,'Álvaro Diaz Del Castillo y Álvarez del Castillo',1,'0000-00-00','',0,'0000-00-00','0000-00-00',7,'',0),(474,'Ana Sofía Alvarez y Zuloaga',0,'1995-10-12','',0,'0000-00-00','0000-00-00',7,'',0),(475,'Andrés Flores y Álvarez del Castillo',1,'0000-00-00','',0,'0000-00-00','0000-00-00',7,'',0),(476,'Andrés Zuloaga y Chavez',1,'2001-01-03','',2,'0000-00-00','0000-00-00',7,'',0),(477,'Armando Mora y Santacruz',1,'1998-11-03','',0,'0000-00-00','0000-00-00',7,'',0),(478,'Bernardo Zuloaga y Gutiérrez Hermosillo',1,'1980-10-11','',0,'0000-00-00','0000-00-00',6,'',0),(479,'Diego Mora y Santacruz',1,'2002-01-25','',0,'0000-00-00','0000-00-00',7,'',0),(480,'Diego Navarro y Zuloaga',1,'2000-09-28','',0,'0000-00-00','0000-00-00',7,'',0),(481,'Eduardo Navarro y Zuloaga',1,'1998-07-04','',0,'0000-00-00','0000-00-00',7,'',0),(482,'Fátima Rodriguez y Zuloaga',0,'0000-00-00','',0,'0000-00-00','0000-00-00',7,'',0),(483,'Francisco Sandoval y Zuloaga',1,'1998-07-10','',0,'0000-00-00','0000-00-00',7,'',0),(484,'Gabriel Zuloaga y Gutiérrez Hermosillo',1,'1976-08-28','',0,'0000-00-00','0000-00-00',6,'',0),(485,'Gabriela Díaz del Castillo y Álvarez del Castillo',0,'0000-00-00','',0,'0000-00-00','0000-00-00',7,'',0),(486,'Inés Díaz del Castillo y Álvarez del Castillo',0,'0000-00-00','',0,'0000-00-00','0000-00-00',7,'',0),(487,'Inés Rodríguez y Zuloaga',0,'2005-12-31','',0,'0000-00-00','0000-00-00',7,'',0),(488,'Iván Zuloaga y Díaz',1,'2002-03-19','',0,'0000-00-00','0000-00-00',7,'',0),(489,'Jimena Sandoval y Zuloaga',0,'2005-07-29','',0,'0000-00-00','0000-00-00',7,'',0),(490,'José Antonio Alvarez y Zuloaga',1,'1992-01-26','',0,'0000-00-00','0000-00-00',7,'',0),(491,'José Pablo Zuloaga y Díaz',1,'2004-09-18','',2,'0000-00-00','0000-00-00',7,'',0),(492,'Juan Ignacio Michel y Zuloaga',1,'1997-04-28','',0,'0000-00-00','0000-00-00',7,'',0),(493,'Juan Pedro Navarro y Zuloaga',1,'2004-08-06','',0,'0000-00-00','0000-00-00',7,'',0),(494,'Luis Díaz del Castillo y Álvarez del Castillo',1,'0000-00-00','',0,'0000-00-00','0000-00-00',7,'',0),(495,'María José Alvarez y Zuloaga',0,'1998-03-19','',0,'0000-00-00','0000-00-00',7,'',0),(496,'María Zuloaga y Gutiérrez Hermosillo',0,'1978-08-05','',0,'0000-00-00','0000-00-00',6,'',0),(497,'Matías Rodriguez y Zuloaga',1,'2003-05-15','',0,'0000-00-00','0000-00-00',7,'',0),(498,'Mauricio Sandoval y Zuloaga',1,'2001-09-17','',0,'0000-00-00','0000-00-00',7,'',0),(499,'Paola Díaz del Castillo y Álvarez del Castillo',0,'0000-00-00','',0,'0000-00-00','0000-00-00',7,'',0),(500,'Salvador Franco y Zuloaga',1,'1986-08-05','',0,'0000-00-00','0000-00-00',7,'',0),(501,'Santiago Álvarez y Zuloaga',1,'2003-12-18','',0,'0000-00-00','0000-00-00',7,'',0),(502,'Santiago Flores y Álvarez del Castillo',1,'0000-00-00','',0,'0000-00-00','0000-00-00',7,'',0),(503,'Santiago Zuloaga y Chávez',1,'1997-09-27','',0,'0000-00-00','0000-00-00',7,'',0),(504,'Santiago Zuloaga y Gutiérrez Hermosillo',1,'0000-00-00','',0,'0000-00-00','0000-00-00',6,'',0),(505,'Sergio Flores y Álvarez del Castillo',1,'0000-00-00','',0,'0000-00-00','0000-00-00',7,'',0),(508,'Cecilia Rábago',0,'0000-00-00','',1,'0000-00-00','0000-00-00',5,'',0),(506,'Ana Cecilia Alatorre y Zuloaga',0,'1950-09-29','',1,'0000-00-00','0000-00-00',5,'',1),(507,'María del Carmen Delfín y Álvarez del Castillo',0,'1967-12-20','',0,'0000-00-00','0000-00-00',6,'',0);
/*!40000 ALTER TABLE `genealogia_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_ext`
--

DROP TABLE IF EXISTS `general_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_ext` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) NOT NULL,
  `descripcion` varchar(20) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_ext`
--

LOCK TABLES `general_ext` WRITE;
/*!40000 ALTER TABLE `general_ext` DISABLE KEYS */;
INSERT INTO `general_ext` VALUES (0,'ninguno','sin formato'),(1,'jpg','fotos'),(2,'png','fotos'),(3,'swf','flash'),(4,'mov','video'),(5,'avi','video');
/*!40000 ALTER TABLE `general_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_visible`
--

DROP TABLE IF EXISTS `general_visible`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_visible` (
  `id` smallint(1) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(5) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_visible`
--

LOCK TABLES `general_visible` WRITE;
/*!40000 ALTER TABLE `general_visible` DISABLE KEYS */;
INSERT INTO `general_visible` VALUES (0,'No'),(1,'Si');
/*!40000 ALTER TABLE `general_visible` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homeopop_consulta2`
--

DROP TABLE IF EXISTS `homeopop_consulta2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homeopop_consulta2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paciente` int(11) NOT NULL,
  `sintomas` varchar(250) NOT NULL,
  `medicamento` int(5) NOT NULL DEFAULT '0',
  `potencia` int(5) NOT NULL DEFAULT '0',
  `modo` varchar(150) DEFAULT NULL,
  `observaciones` varchar(250) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeopop_consulta2`
--

LOCK TABLES `homeopop_consulta2` WRITE;
/*!40000 ALTER TABLE `homeopop_consulta2` DISABLE KEYS */;
INSERT INTO `homeopop_consulta2` VALUES (1,'2013-02-24 00:36:07',2,'UNA',0,0,'','');
/*!40000 ALTER TABLE `homeopop_consulta2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homeopop_directorio`
--

DROP TABLE IF EXISTS `homeopop_directorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homeopop_directorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `domicilio` varchar(250) NOT NULL,
  `poblacion` varchar(150) NOT NULL,
  `estado` varchar(150) NOT NULL,
  `email` varchar(35) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `celular` varchar(30) DEFAULT NULL,
  `f_nac` date NOT NULL,
  `recomienda` varchar(250) DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `activated` smallint(1) NOT NULL DEFAULT '1',
  `sexo` smallint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeopop_directorio`
--

LOCK TABLES `homeopop_directorio` WRITE;
/*!40000 ALTER TABLE `homeopop_directorio` DISABLE KEYS */;
INSERT INTO `homeopop_directorio` VALUES (1,'Armida de la Vara y Porqui','Godrogro 1515','Pénjamo','Guanajuato','','56565656','33335555','1962-05-03','Juan Ortigoza','2013-02-19 18:03:12',0,2),(2,'José Zulaimán','Paseo de los pillos # 45','Acaponeta','Nayarit','zulaiman@bribon.com','555','','1937-06-22','Julio Cësar Chávez','2013-02-21 01:59:44',0,1),(3,'Lagrimita','Av. De los Payasos sin chiste #1000, colonia La perradita','Guadalajara','Jalisco','lagrima@gmail.com','','','1960-12-25','José Zulaimán','2013-02-22 03:42:08',1,1);
/*!40000 ALTER TABLE `homeopop_directorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homeopop_directorio_medicos`
--

DROP TABLE IF EXISTS `homeopop_directorio_medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homeopop_directorio_medicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(128) NOT NULL DEFAULT '',
  `passwd` varchar(128) DEFAULT NULL,
  `name` varchar(250) NOT NULL DEFAULT '',
  `address` varchar(250) NOT NULL DEFAULT '',
  `city` varchar(150) NOT NULL DEFAULT '',
  `state` varchar(150) NOT NULL DEFAULT '',
  `country` varchar(20) DEFAULT NULL,
  `zip` varchar(10) NOT NULL DEFAULT '',
  `mail` varchar(35) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `activated` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeopop_directorio_medicos`
--

LOCK TABLES `homeopop_directorio_medicos` WRITE;
/*!40000 ALTER TABLE `homeopop_directorio_medicos` DISABLE KEYS */;
INSERT INTO `homeopop_directorio_medicos` VALUES (1,'MedicoTawa','4a7d1ed414474e4033ac29ccb8653d9b','M.H. Marco Antonio Figueroa Rábago','Av. Alcalde 2487','Guadalajara','Jalisco','México','44220','','','2013-02-15 20:46:30',1),(2,'ferbere','b66a5c2600e9f61e6163bb1051457946','Ramsés Figueroa','Revolución 199','Santa Anita, Tlaq.,','Jalisco','México','45600','saargo@gmail.com','10 86 2136','2013-02-23 03:52:13',1);
/*!40000 ALTER TABLE `homeopop_directorio_medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homeopop_medicamentos`
--

DROP TABLE IF EXISTS `homeopop_medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homeopop_medicamentos` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `potencia` int(3) NOT NULL DEFAULT '1',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeopop_medicamentos`
--

LOCK TABLES `homeopop_medicamentos` WRITE;
/*!40000 ALTER TABLE `homeopop_medicamentos` DISABLE KEYS */;
INSERT INTO `homeopop_medicamentos` VALUES (0,'Ninguno',1);
/*!40000 ALTER TABLE `homeopop_medicamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homeopop_potencia`
--

DROP TABLE IF EXISTS `homeopop_potencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homeopop_potencia` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeopop_potencia`
--

LOCK TABLES `homeopop_potencia` WRITE;
/*!40000 ALTER TABLE `homeopop_potencia` DISABLE KEYS */;
INSERT INTO `homeopop_potencia` VALUES (0,'0'),(1,'6'),(2,'30'),(3,'200'),(4,'1000'),(5,'10000');
/*!40000 ALTER TABLE `homeopop_potencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_fecha`
--

DROP TABLE IF EXISTS `hotel_fecha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_fecha` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `habitacion` smallint(2) NOT NULL,
  `personas` smallint(2) NOT NULL,
  `tarifa` smallint(2) DEFAULT NULL,
  `pagado` smallint(2) NOT NULL DEFAULT '1',
  `ocupacion` smallint(1) NOT NULL DEFAULT '4',
  `fecha` date DEFAULT NULL,
  `extras` decimal(19,2) NOT NULL DEFAULT '0.00',
  `visita_diaria` smallint(1) NOT NULL DEFAULT '0',
  `visita_mensual` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_fecha`
--

LOCK TABLES `hotel_fecha` WRITE;
/*!40000 ALTER TABLE `hotel_fecha` DISABLE KEYS */;
INSERT INTO `hotel_fecha` VALUES (1,101,3,8,1,4,'2013-02-12','0.00',0,0),(2,102,3,11,1,4,'2013-02-12','10.00',1,0);
/*!40000 ALTER TABLE `hotel_fecha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_habitacion`
--

DROP TABLE IF EXISTS `hotel_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_habitacion` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `numero` int(3) NOT NULL,
  `tarifa_1` smallint(2) NOT NULL DEFAULT '0',
  `capacidad` smallint(2) NOT NULL,
  `tarifa_2` smallint(2) NOT NULL DEFAULT '0',
  `tarifa_3` smallint(2) NOT NULL DEFAULT '0',
  `tarifa_4` smallint(2) NOT NULL DEFAULT '0',
  `tarifa_5` smallint(2) NOT NULL DEFAULT '0',
  `tarifa_6` smallint(2) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_habitacion`
--

LOCK TABLES `hotel_habitacion` WRITE;
/*!40000 ALTER TABLE `hotel_habitacion` DISABLE KEYS */;
INSERT INTO `hotel_habitacion` VALUES (1,101,6,6,6,8,9,10,10),(2,102,4,6,4,5,7,8,8),(3,103,4,6,4,5,7,8,8),(4,104,4,6,4,5,7,8,8),(5,105,4,6,4,5,7,8,8),(6,106,4,6,4,5,7,8,8),(7,107,1,2,1,0,0,0,0),(8,108,2,3,2,3,0,0,0),(9,109,4,6,4,5,7,8,8),(10,201,6,6,6,8,9,10,10),(11,202,4,6,4,5,7,8,8),(12,203,4,6,4,5,7,8,8),(13,204,4,6,4,5,7,8,8),(14,205,4,6,4,5,7,8,8),(15,206,4,6,4,5,7,8,8),(16,207,4,6,4,5,7,8,8),(17,208,4,6,4,5,7,8,8),(18,209,2,4,2,3,4,0,0),(19,301,6,6,6,8,9,10,10),(20,302,4,6,4,5,7,8,8),(21,303,4,6,4,5,7,8,8),(22,304,4,6,4,5,7,8,8),(23,305,4,6,4,5,7,8,8),(24,306,4,6,4,5,7,8,8),(25,307,4,6,4,5,7,8,8),(26,308,4,6,4,5,7,8,8);
/*!40000 ALTER TABLE `hotel_habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_moneda`
--

DROP TABLE IF EXISTS `hotel_moneda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_moneda` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `cambio` decimal(19,2) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_moneda`
--

LOCK TABLES `hotel_moneda` WRITE;
/*!40000 ALTER TABLE `hotel_moneda` DISABLE KEYS */;
INSERT INTO `hotel_moneda` VALUES (1,'MX','1.00'),(2,'US','12.74');
/*!40000 ALTER TABLE `hotel_moneda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_ocupacion`
--

DROP TABLE IF EXISTS `hotel_ocupacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_ocupacion` (
  `id` smallint(1) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_ocupacion`
--

LOCK TABLES `hotel_ocupacion` WRITE;
/*!40000 ALTER TABLE `hotel_ocupacion` DISABLE KEYS */;
INSERT INTO `hotel_ocupacion` VALUES (1,'fisica'),(2,'programada'),(3,'reservada'),(4,'ninguna');
/*!40000 ALTER TABLE `hotel_ocupacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_pagado`
--

DROP TABLE IF EXISTS `hotel_pagado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_pagado` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_pagado`
--

LOCK TABLES `hotel_pagado` WRITE;
/*!40000 ALTER TABLE `hotel_pagado` DISABLE KEYS */;
INSERT INTO `hotel_pagado` VALUES (1,'efectivo'),(2,'credito'),(3,'debito'),(4,'reservado');
/*!40000 ALTER TABLE `hotel_pagado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_tarifa`
--

DROP TABLE IF EXISTS `hotel_tarifa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_tarifa` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `cantidad` decimal(19,2) NOT NULL,
  `moneda` smallint(1) NOT NULL DEFAULT '1',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_tarifa`
--

LOCK TABLES `hotel_tarifa` WRITE;
/*!40000 ALTER TABLE `hotel_tarifa` DISABLE KEYS */;
INSERT INTO `hotel_tarifa` VALUES (0,'Ninguno','0.00',1),(1,'Uno','500.00',1),(2,'Dos','730.00',1),(3,'Tres','830.00',1),(4,'Cuatro','950.00',1),(5,'Cinco','1050.00',1),(6,'Seis','1100.00',1),(7,'Siete','1130.00',1),(8,'Ocho','1200.00',1),(9,'Nueve','1280.00',1),(10,'Diez','1350.00',1),(11,'Bungalow semana','385.00',2),(12,'Bungalow mes','1185.00',2),(13,'Suite semana','440.00',2),(14,'Suite mes','1350.00',2);
/*!40000 ALTER TABLE `hotel_tarifa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_content`
--

DROP TABLE IF EXISTS `language_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `subtitulo` varchar(50) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `idioma` int(5) NOT NULL,
  `vinculo` int(11) NOT NULL,
  `contenido` text,
  `visible` smallint(1) NOT NULL DEFAULT '0',
  `secc_vincula` varchar(50) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_content`
--

LOCK TABLES `language_content` WRITE;
/*!40000 ALTER TABLE `language_content` DISABLE KEYS */;
INSERT INTO `language_content` VALUES (1,'Calappa','Sayulita · Villas','','',2,1,'<p>Es un conjunto de tres villas de lujo, ubicadas dentro del exclusivo condominio P&aacute;jaro de Fuego*, en Sayulita, Nayarit. Cada una de ellas est&aacute; equipada con aire acondicionado, televisi&oacute;n de pantalla plana en la sala de estar y en cada habitaci&oacute;n, lavavajillas, lavadora, calentador de agua, en fin. Habr&iacute;a que dar click a los botones correspondientes a las villas, para ver en lo particular qu&eacute; ofrece cada una.</p>\r\n<p>El condominio est&aacute; a menos de diez minutos de la playa, caminando; a veinte, en coche, del Aeropuerto Internacional de Puerto Vallarta; y muy pr&oacute;ximo a m&aacute;s de cinco campos de golf e innumerables restaurantes y boutiques. D&eacute; un paseo por las p&aacute;ginas de nuestro sitio, empiece ahora mismo a descubrir la Riviera Nayarit.</p>\r\n<p>&nbsp;</p>',1,''),(2,'','','En donde','fork',2,14,'',1,'gadgets_botones'),(3,'','','Pueblo','village',2,15,'',1,'gadgets_botones'),(4,'','','Servicios','wash',2,16,'',1,'gadgets_botones'),(5,'','','Me gusta','f',2,5,'',1,'gadgets_botones'),(6,'','','Danos un +','g+',2,6,'',1,'gadgets_botones'),(7,'','','Pinea algo','p',2,7,'',1,'gadgets_botones'),(8,'','','Inicio','',2,1,'',1,'gadgets_botones'),(9,'','','Villa BlueCrab','',2,2,'',1,'gadgets_botones'),(10,'','','Villa RedCrab','',2,3,'',1,'gadgets_botones'),(11,'','','Villa GreenCrab','',2,4,'',1,'gadgets_botones'),(12,'','','Disponibilidad','availability',2,11,'',1,'gadgets_botones'),(13,'','','Sayulita','palm',2,8,'',1,'gadgets_botones'),(14,'','','Alrededor','around',2,10,'',1,'gadgets_botones'),(15,'','','Campos de Golf','golf',2,17,'',1,'gadgets_botones'),(16,'','','Aeropuerto','plane',2,18,'',1,'gadgets_botones'),(17,'','','Actividades','dolphin',2,19,'',1,'gadgets_botones'),(18,'','','Contacto','contat',2,9,'',1,'gadgets_botones'),(19,'','','español','es',2,12,'',1,'gadgets_botones'),(20,'','','english','us',2,13,'',1,'gadgets_botones'),(21,'Acerca de Calappa','','','logo',2,5,'<p>Es una voz con que se distingue a un g&eacute;nero de cangrego, pertenecientes a la familia Calappidae, de donde deriva el Cangrejo Real. En la antig&uuml;edad se le relacionaba con la permanencia y la dureza, por asociaci&oacute;n con su caparaz&oacute;n. Puede ser un s&iacute;mbolo de evasi&oacute;n y contemplaci&oacute;n &mdash;locuci&oacute;n espa&ntilde;ola de: pensando en la inmortalidad del cangrejo&mdash;.</p>\r\n<p>En filosof&iacute;a, la inmortalidad del cangrejo se basa en que el cangrejo no tiene conciencia de s&iacute; mismo, y por lo tanto, tampoco tiene conciencia de que su existencia acabar&aacute;. Desde su punto de vista, y a todo efecto pr&aacute;ctico para &eacute;l mismo, el cangrejo es inmortal. Por ello, en la antig&uuml;edad, tanto al cangrejo como al escarabajo se les utiliz&oacute; para representar la inmortalidad.</p>\r\n<p>En ese sentido evasivo, hemos pensado en utilizar al cangrejo. Y concretamente a ese cangrejo rojo, que parece un ba&ntilde;ista saj&oacute;n que ha estado mucho tiempo expuesto al sol.<br />Un ba&ntilde;ista de ojos azules: un gringo. Y la idea es que, sin decirlo, el cliente se sienta invitado por alguien parecido a &eacute;l, que lo mira a los ojos sin parpadear.</p>\r\n<p>&nbsp;</p>',1,'corporativa_index'),(22,'','','Sesión','',2,20,'',1,'gadgets_botones'),(23,'','','Alojamiento','hosting',2,21,'',1,'gadgets_botones'),(24,'','','Testimonios','pen',2,22,'',1,'gadgets_botones'),(25,'','','Preguntas frecuentes','faq',2,23,'',1,'gadgets_botones');
/*!40000 ALTER TABLE `language_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_index`
--

DROP TABLE IF EXISTS `language_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_index` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_index`
--

LOCK TABLES `language_index` WRITE;
/*!40000 ALTER TABLE `language_index` DISABLE KEYS */;
INSERT INTO `language_index` VALUES (1,'english',''),(2,'español','');
/*!40000 ALTER TABLE `language_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligas_index`
--

DROP TABLE IF EXISTS `ligas_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ligas_index` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `ruta` varchar(150) NOT NULL DEFAULT '',
  `contenido` text NOT NULL,
  `localidad` int(2) NOT NULL DEFAULT '0',
  `imagen` varchar(30) DEFAULT NULL,
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `orden` smallint(2) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligas_index`
--

LOCK TABLES `ligas_index` WRITE;
/*!40000 ALTER TABLE `ligas_index` DISABLE KEYS */;
INSERT INTO `ligas_index` VALUES (1,'Partido Acción Nacional','http://www.pan.org.mx','<p>Ciudadanos que movemos a M&eacute;xico</p>',0,'pan.jpg',1,NULL),(2,'Partido Acción Nacional Jalisco','http://www.panjal.org.mx','<p>Con la fuerza de nuestros valores lo vamos a lograr</p>',0,'panjal.jpg',1,NULL),(3,'Diputados Federales del PAN','http://www.diputadospan.mx','<p>Grupo parlamentario del Partido Acci&oacute;n Nacional LXII legislatura</p>',0,'diputadosfederales.jpg',1,NULL),(4,'Senadores del PAN','http://pan.senadores.gob.mx','<p>Grupo Parlamentario del PAN en el Senado de la Rep&uacute;blica</p>',0,'senadores.jpg',1,NULL),(5,'Ley Vitrina','http://leyvitrina.org','<p>La cosa es clara</p>',0,'leyvitrina.jpg',1,NULL),(7,'Coche popular','http://www.vw.de','<p>Eso es lo que se dec&iacute;a, y vaya que no.</p>',0,'vw.jpg',1,NULL);
/*!40000 ALTER TABLE `ligas_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails_index`
--

DROP TABLE IF EXISTS `mails_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `dirigido` varchar(120) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '0',
  `titulo` varchar(255) NOT NULL DEFAULT '',
  `mensaje` text,
  `tiempo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `replies` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mensaje_id` (`replies`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_index`
--

LOCK TABLES `mails_index` WRITE;
/*!40000 ALTER TABLE `mails_index` DISABLE KEYS */;
INSERT INTO `mails_index` VALUES (8,'Alicia Normanda Lindà','normada.alicia@gmail.com','','::1','ESTO ES UNA PRUEBA','A ver si funciona, porque en la página no.','2012-11-29 18:29:04',0,1),(9,'Alicia Normanda Lindà','normada.alicia@gmail.com','','::1','ESTO ES UNA PRUEBA','A ver si funciona, porque en la página no.','2012-11-29 18:29:40',0,0),(10,'Alicia Normanda Lindà','normada.alicia@gmail.com','','::1','ESTO ES UNA PRUEBA','A ver si funciona, porque en la página no.','2012-11-29 18:29:52',0,0),(11,'Alicia Normanda Lindà','normada.alicia@gmail.com','','::1','ESTO ES UNA PRUEBA','A ver si funciona, porque en la página no.','2012-11-29 18:30:31',0,0),(12,'Alicia Normanda Lindà','normada.alicia@gmail.com','','::1','ESTO ES UNA PRUEBA','A ver si funciona, porque en la página no.','2012-11-29 18:30:47',0,0);
/*!40000 ALTER TABLE `mails_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails_massive_confirmacion`
--

DROP TABLE IF EXISTS `mails_massive_confirmacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_massive_confirmacion` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_massive_confirmacion`
--

LOCK TABLES `mails_massive_confirmacion` WRITE;
/*!40000 ALTER TABLE `mails_massive_confirmacion` DISABLE KEYS */;
INSERT INTO `mails_massive_confirmacion` VALUES (0,'sin confirmar'),(1,'confirmado'),(2,'no va');
/*!40000 ALTER TABLE `mails_massive_confirmacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails_massive_directorio`
--

DROP TABLE IF EXISTS `mails_massive_directorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_massive_directorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `grupo` smallint(1) NOT NULL DEFAULT '1',
  `telefono_celular` varchar(20) DEFAULT NULL,
  `telefono_particular` varchar(20) DEFAULT NULL,
  `telefono_trabajo` varchar(20) DEFAULT NULL,
  `invitacion` smallint(1) NOT NULL DEFAULT '1',
  `confirmacion` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_massive_directorio`
--

LOCK TABLES `mails_massive_directorio` WRITE;
/*!40000 ALTER TABLE `mails_massive_directorio` DISABLE KEYS */;
/*!40000 ALTER TABLE `mails_massive_directorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails_massive_directorio_invi`
--

DROP TABLE IF EXISTS `mails_massive_directorio_invi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_massive_directorio_invi` (
  `id` smallint(1) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_massive_directorio_invi`
--

LOCK TABLES `mails_massive_directorio_invi` WRITE;
/*!40000 ALTER TABLE `mails_massive_directorio_invi` DISABLE KEYS */;
INSERT INTO `mails_massive_directorio_invi` VALUES (1,'Sólo mail'),(2,'Con estac.'),(3,'Sin estac.');
/*!40000 ALTER TABLE `mails_massive_directorio_invi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails_massive_enviados`
--

DROP TABLE IF EXISTS `mails_massive_enviados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_massive_enviados` (
  `id` smallint(1) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(2) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_massive_enviados`
--

LOCK TABLES `mails_massive_enviados` WRITE;
/*!40000 ALTER TABLE `mails_massive_enviados` DISABLE KEYS */;
INSERT INTO `mails_massive_enviados` VALUES (0,'No'),(1,'Si');
/*!40000 ALTER TABLE `mails_massive_enviados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails_massive_grupo`
--

DROP TABLE IF EXISTS `mails_massive_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_massive_grupo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text,
  `imagen` varchar(50) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_massive_grupo`
--

LOCK TABLES `mails_massive_grupo` WRITE;
/*!40000 ALTER TABLE `mails_massive_grupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `mails_massive_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails_massive_mensajes`
--

DROP TABLE IF EXISTS `mails_massive_mensajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_massive_mensajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `mensaje` text,
  `grupo` smallint(2) NOT NULL DEFAULT '1',
  `enviado` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_massive_mensajes`
--

LOCK TABLES `mails_massive_mensajes` WRITE;
/*!40000 ALTER TABLE `mails_massive_mensajes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mails_massive_mensajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails_massive_phone`
--

DROP TABLE IF EXISTS `mails_massive_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_massive_phone` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `numero` varchar(20) NOT NULL,
  `vincula` int(11) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_massive_phone`
--

LOCK TABLES `mails_massive_phone` WRITE;
/*!40000 ALTER TABLE `mails_massive_phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `mails_massive_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails_massive_relacion`
--

DROP TABLE IF EXISTS `mails_massive_relacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_massive_relacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mensaje_id` int(11) NOT NULL,
  `directorio_id` int(11) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_massive_relacion`
--

LOCK TABLES `mails_massive_relacion` WRITE;
/*!40000 ALTER TABLE `mails_massive_relacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `mails_massive_relacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticias_index`
--

DROP TABLE IF EXISTS `noticias_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticias_index` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL DEFAULT '',
  `subtitulo` varchar(50) NOT NULL DEFAULT '',
  `contenido` text NOT NULL,
  `publicado` smallint(1) NOT NULL DEFAULT '0',
  `fecha` date DEFAULT NULL,
  `imagen` varchar(50) NOT NULL DEFAULT '',
  `orden` int(2) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias_index`
--

LOCK TABLES `noticias_index` WRITE;
/*!40000 ALTER TABLE `noticias_index` DISABLE KEYS */;
INSERT INTO `noticias_index` VALUES (1,'test 3','opop','',1,'2012-10-14','DSC00282.JPG',0),(2,'tes 45','','',1,'2011-11-30','2012-09-20 18.41.40.jpg',0),(3,'Ornamentos de la locura','','<p>After weeks of rumors, Facebook has just signed a ten-year lease to move its New York office into a new, nearly 100,000 sq ft space over two floors at 770 Broadway, Manhattan. The interior will be designed by famed architect Frank Gehry who is masterminding its Menlo Park Headquarters expansion. Facebook NY&acute;s engineering, design, marketing, sales, and comms teams will move there in early 2014.</p>\r\n<p>The upgrade comes from the 55,000 sq ft space at 335 Madison Ave it opened in 2008 for sales and marketing. Crain&acute;s New York originally leaked that Facebook was eying the 770 Broadway real estate but implied it would take over the whole building rather than just two floors. The space at the west edge of the East Village falls in the increasingly techie \"Silicon Alley\". It will house all of Facebook&acute;s New York operations and give it room to grow.</p>\r\n<p>&nbsp;</p>',1,'2013-04-29','Foto 2.jpg',0);
/*!40000 ALTER TABLE `noticias_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patrocinador_index`
--

DROP TABLE IF EXISTS `patrocinador_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patrocinador_index` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `ruta` varchar(150) NOT NULL DEFAULT '',
  `contenido` text NOT NULL,
  `localidad` int(2) NOT NULL DEFAULT '0',
  `imagen` varchar(30) DEFAULT NULL,
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `orden` smallint(2) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patrocinador_index`
--

LOCK TABLES `patrocinador_index` WRITE;
/*!40000 ALTER TABLE `patrocinador_index` DISABLE KEYS */;
INSERT INTO `patrocinador_index` VALUES (1,'Novartis','http://www.novartis.com.mx/10ybrand/NOVARTIS_WEB_2009/Soft_Templates/index.html','																		',0,'novartis.jpg',1,1),(2,'Probiomed','http://www.probiomed.com.mx/info.php?Lang=es','										',0,'probiomed.jpg',1,2),(3,'GENZYME','http://www.genzyme.com.mx/corp/mxgenz/gzla_p_ci_mx.asp','										',0,'genzyme.jpg',1,5),(4,'Boehringer','http://www.boehringer-ingelheim.com.mx/','										',0,'boehringer.jpg',1,4),(5,'UCB','http://www.ucb.com/worldwide/mexico','															',0,'ucb.jpg',1,3),(6,'Psicopharma','http://www.lokarri.com.mx/portfolio/laboratorios-psicopharma/','										',0,'psicopharma.jpg',1,7),(7,'Behring','http://www.cslbehring.com.mx/homepage','										',0,'behring.jpg',1,6),(8,'Merz Pharma','http://www.merz.com.mx/','										',0,'merz.jpg',0,NULL),(9,'ABBOTT','http://www.abbott.com/global/url/content/en_US/10.40.270:270/general_content/Global_Location_Profile_0055.htm','										',0,'abbott.jpg',1,8),(10,'Lundbeck','http://www.lundbeck.com/mx','															',0,'lundbeck.jpg',1,9),(11,'Comercializadora Electromed','http://www.annimss.org','					',0,'electromed.jpg',1,10),(12,'Cenarem','http://cenarem.com.mx/','					',0,'cenarem.jpg',1,11);
/*!40000 ALTER TABLE `patrocinador_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_asigna_boton`
--

DROP TABLE IF EXISTS `perfil_asigna_boton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_asigna_boton` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `diputado` int(3) NOT NULL,
  `boton_social` int(3) NOT NULL,
  `cuenta` varchar(50) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_asigna_boton`
--

LOCK TABLES `perfil_asigna_boton` WRITE;
/*!40000 ALTER TABLE `perfil_asigna_boton` DISABLE KEYS */;
INSERT INTO `perfil_asigna_boton` VALUES (1,1,2,'norma.cordero.399','https://www.facebook.com/norma.cordero.399'),(2,1,1,'@DipNormaCordero','https://twitter.com/DipNormaCordero'),(3,7,1,'@diputadoesquer','https://twitter.com/diputadoesquer'),(4,7,4,'','contacto.php?rubro='),(5,2,4,'','contacto.php?rubro='),(6,9,4,'','contacto.php?rubro='),(7,5,4,'','contacto.php?rubro='),(9,6,4,'','contacto.php?rubro='),(10,12,4,'','contacto.php?rubro='),(11,11,4,'','contacto.php?rubro='),(12,13,4,'','contacto.php?rubro='),(13,3,4,'','contacto.php?rubro='),(14,8,4,'','contacto.php?rubro='),(15,1,4,'','contacto.php?rubro='),(16,10,4,'','contacto.php?rubro='),(39,4,4,'','contacto.php?rubro='),(19,2,2,'dreliasiniguez','https://www.facebook.com/dreliasiniguez'),(18,7,2,'DipBetoEsquer','https://www.facebook.com/DipBetoEsquer'),(20,9,2,'dip.gabriela.andalonbecerra','https://www.facebook.com/dip.gabriela.andalonbecerra'),(21,4,2,'gildardo.guerrero2','https://www.facebook.com/gildardo.guerrero2'),(22,6,2,'HernanCortesBerumen','https://www.facebook.com/HernanCortesBerumen'),(23,12,2,'joseluis.munguiacardona','https://www.facebook.com/joseluis.munguiacardona'),(24,11,2,'juancarlos.marquez','https://www.facebook.com/juancarlos.marquez'),(25,13,2,'pericuevas','https://www.facebook.com/pericuevas'),(26,3,2,'MemoMartinezMora','https://www.facebook.com/MemoMartinezMora'),(27,8,2,'mariana.arambula.370','https://www.facebook.com/mariana.arambula.370'),(28,10,2,'victor.sanchezorozco.3','https://www.facebook.com/victor.sanchezorozco.3'),(29,2,1,'@DipEliass','https://twitter.com/DipEliass'),(30,9,1,'@gabrielandalonb','https://twitter.com/gabrielandalonb'),(31,5,1,'@jismaeldiaz','https://twitter.com/jismaeldiaz'),(32,4,1,'@GildardGuerrero','https://twitter.com/GildardGuerrero'),(33,6,1,'@HernanCortesB','https://twitter.com/HernanCortesB'),(34,12,1,'@JoseLuisMunguia','https://twitter.com/JoseLuisMunguia'),(35,11,1,'@jcmarquezdip','https://twitter.com/jcmarquezdip'),(36,13,1,'@pericuevas','https://twitter.com/pericuevas'),(37,3,1,'@gmartinezmora','https://twitter.com/gmartinezmora'),(38,10,1,'@victorsanoro','https://twitter.com/victorsanoro'),(40,8,1,'@marianarambula','https://twitter.com/marianarambula'),(41,5,2,'@jaime.i.brambila','https://www.facebook.com/jaime.i.brambila');
/*!40000 ALTER TABLE `perfil_asigna_boton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_asigna_comisiones`
--

DROP TABLE IF EXISTS `perfil_asigna_comisiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_asigna_comisiones` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `diputado` int(3) NOT NULL,
  `comision` int(3) NOT NULL,
  `preside` smallint(1) DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_asigna_comisiones`
--

LOCK TABLES `perfil_asigna_comisiones` WRITE;
/*!40000 ALTER TABLE `perfil_asigna_comisiones` DISABLE KEYS */;
INSERT INTO `perfil_asigna_comisiones` VALUES (1,1,1,0),(2,1,2,0),(3,1,3,0),(4,1,4,0),(5,1,5,0),(6,1,6,0),(7,1,7,0),(8,1,11,1),(9,2,5,1),(10,2,8,0),(11,2,9,0),(12,2,10,0),(13,2,11,0),(14,2,12,0),(15,2,13,0),(16,2,14,0),(17,3,4,1),(18,3,15,0),(19,3,1,0),(20,3,16,0),(21,3,10,0),(22,3,17,0),(23,3,20,0),(24,3,18,1),(25,3,19,0),(26,4,21,1),(27,4,22,1),(28,4,23,0),(29,4,24,0),(30,4,6,0),(31,4,7,0),(32,5,9,1),(33,5,16,0),(34,5,25,0),(35,5,4,0),(36,5,26,0),(37,5,27,0),(38,5,28,0),(39,6,6,1),(40,6,24,0),(41,6,29,1),(42,6,28,0),(43,7,2,1),(44,7,30,0),(45,7,3,0),(46,7,8,0),(47,7,6,0),(48,8,1,1),(49,8,31,0),(50,8,3,0),(51,8,4,0),(52,8,32,0),(53,9,33,1),(54,9,31,0),(55,9,9,0),(56,9,11,0),(57,9,34,0),(58,9,35,0),(59,9,7,0),(60,9,27,0),(61,10,36,1),(62,10,4,0),(63,10,34,0),(64,10,6,0),(65,10,7,0),(66,10,28,0),(67,11,7,1),(68,11,10,0),(69,11,24,0),(70,11,34,0),(71,11,6,0),(72,11,36,0),(73,11,27,0),(74,12,27,1),(75,12,25,0),(76,12,37,0),(77,12,11,0),(78,12,38,0),(79,12,7,0),(80,12,14,0),(81,13,16,1),(82,13,4,0),(83,13,5,0),(84,13,36,0),(85,13,14,0),(86,13,39,0);
/*!40000 ALTER TABLE `perfil_asigna_comisiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_asigna_iniciativa`
--

DROP TABLE IF EXISTS `perfil_asigna_iniciativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_asigna_iniciativa` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `diputado` int(3) NOT NULL,
  `iniciativa` int(5) NOT NULL,
  `suscribe` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_asigna_iniciativa`
--

LOCK TABLES `perfil_asigna_iniciativa` WRITE;
/*!40000 ALTER TABLE `perfil_asigna_iniciativa` DISABLE KEYS */;
INSERT INTO `perfil_asigna_iniciativa` VALUES (1,14,1,1),(2,14,3,1),(3,7,4,1),(4,7,5,1),(5,7,2,1),(6,2,6,1),(7,2,7,1),(8,2,8,1),(9,2,9,1),(10,9,10,1),(11,9,11,1),(12,9,1,1),(13,4,13,1),(14,4,14,1),(15,4,15,1),(16,4,16,1),(17,4,17,1),(18,4,18,1),(19,6,19,1),(20,6,20,1),(21,6,21,1),(22,6,22,1),(23,6,23,1),(24,6,24,1),(25,6,25,0),(26,13,26,1),(27,13,27,1),(28,13,28,1),(29,13,29,1),(30,13,30,1),(31,13,31,1),(32,13,32,1),(33,13,33,1),(34,13,34,1),(35,13,35,1),(36,13,36,1),(37,13,37,1),(38,13,38,1),(39,13,39,1),(40,13,40,1),(41,5,41,1),(42,5,42,1),(43,5,43,1),(44,5,44,1),(45,5,45,1),(46,5,46,1),(47,5,47,1),(48,5,48,1),(49,5,49,1),(50,5,50,1),(51,12,51,1),(52,12,52,0),(53,11,53,1),(54,11,54,1),(55,11,55,1),(56,11,56,1),(57,8,57,1),(58,8,58,1),(59,1,59,1),(60,1,60,1),(61,1,61,1),(62,10,62,1),(63,10,63,1),(64,10,64,1),(65,10,65,1),(66,10,66,1),(67,10,67,1),(68,10,68,1),(69,10,69,1),(70,10,70,1);
/*!40000 ALTER TABLE `perfil_asigna_iniciativa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_boton_social`
--

DROP TABLE IF EXISTS `perfil_boton_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_boton_social` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_boton_social`
--

LOCK TABLES `perfil_boton_social` WRITE;
/*!40000 ALTER TABLE `perfil_boton_social` DISABLE KEYS */;
INSERT INTO `perfil_boton_social` VALUES (1,'twitter'),(2,'facebook'),(3,'youtube'),(4,'email');
/*!40000 ALTER TABLE `perfil_boton_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_categoria`
--

DROP TABLE IF EXISTS `perfil_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_categoria` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `imagen` varchar(30) DEFAULT NULL,
  `belong` smallint(2) NOT NULL DEFAULT '0',
  `subelong` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_categoria`
--

LOCK TABLES `perfil_categoria` WRITE;
/*!40000 ALTER TABLE `perfil_categoria` DISABLE KEYS */;
INSERT INTO `perfil_categoria` VALUES (1,'Mayoría relativa','',0,0),(2,'Representación proporcional','',0,0);
/*!40000 ALTER TABLE `perfil_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_comisiones`
--

DROP TABLE IF EXISTS `perfil_comisiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_comisiones` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_comisiones`
--

LOCK TABLES `perfil_comisiones` WRITE;
/*!40000 ALTER TABLE `perfil_comisiones` DISABLE KEYS */;
INSERT INTO `perfil_comisiones` VALUES (0,'ninguna'),(1,'Ciencia y tecnología'),(2,'Desarrollo agrícola'),(3,'Desarrollo humano'),(4,'Educación'),(5,'Higiene y salud pública'),(6,'Puntos constitucionales, estudios legislativos y reglamentos'),(7,'Responsabilidades'),(8,'Asuntos electorales'),(9,'Desarrollo forestal'),(10,'Desarrollo urbano'),(11,'Ganadería'),(12,'Juventud y deporte'),(13,'Trabajo y previsión social'),(14,'Vigilancia'),(15,'Administración'),(16,'Desarrollo económico'),(17,'Planeación para el desarrollo'),(18,'Comisión especial para la revisión financiera y administrativa del Congreso'),(19,'Comité de adquisiciones'),(20,'Comité de planeación'),(21,'Comité de biblioteca, archivo y editorial'),(22,'Comité de proceso legislativo'),(23,'Asuntos metropolitanos'),(24,'Hacienda y presupuesto'),(25,'Desarrollo municipal'),(26,'Medio ambiente y desarrollo sustentable'),(27,'Seguridad pública y protección civil'),(28,'Vialidad, transporte y comunicaciones'),(29,'Comité de clasificación de información pública'),(30,'Asuntos migratorios'),(31,'Derechos humanos'),(32,'Turismo'),(33,'Comité de peticiones y atención ciudadana'),(34,'Justicia'),(35,'Participación ciudadana y acceso a la información pública'),(36,'Readaptación social'),(37,'Desarrollo regional'),(38,'Gobernación'),(39,'Comité de relaciones interparlamentarias y asuntos internacionales');
/*!40000 ALTER TABLE `perfil_comisiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_index`
--

DROP TABLE IF EXISTS `perfil_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_index` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `descripcion` text,
  `imagen` varchar(100) NOT NULL DEFAULT 'sin_titulo',
  `distrito` varchar(20) DEFAULT NULL,
  `categoria` int(3) NOT NULL DEFAULT '0',
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `ext` smallint(2) NOT NULL DEFAULT '0',
  `email` varchar(100) DEFAULT NULL,
  `sala` varchar(100) DEFAULT NULL,
  `telefonos` varchar(100) DEFAULT NULL,
  `enlace` text,
  `orden` smallint(2) DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_index`
--

LOCK TABLES `perfil_index` WRITE;
/*!40000 ALTER TABLE `perfil_index` DISABLE KEYS */;
INSERT INTO `perfil_index` VALUES (0,'ninguno',NULL,'sin_titulo',NULL,0,1,0,NULL,NULL,NULL,NULL,0),(1,'Dip. Norma Angélica Cordero Prado','','dip_norma_angelica_cordero_prado','II',1,1,1,'norma.cordero@congresojal.gob.mx','B2','33-36791510 ext. 1609, 1510','<p><strong>Domicilio:</strong> Constituyentes no. 439, Planta Alta, Col. Centro, Lagos de Moreno, Jalisco.<br /> <strong>Horario:</strong> de 9 a 3 y de 4 a 7, de lunes a viernes.<br /> <strong>Tel&eacute;fono:</strong> 474-7426070.</p>',12),(2,'Dip. Elías Octavio Íñiguez Mejía ','','dip_elias_octavio_iniguez_mejia','III',1,1,1,'dip.elías03@congresojal.gob.mx','F','33-38191010 ext. 1010, 1654','<p><strong>Domicilio: </strong>Calle Progreso no. 50 int. 331, esquina Porfirio D&iacute;az, Col. Centro, Tepatitl&aacute;n de Morelos; Jalisco.<br /> <strong>Tel&eacute;fono:</strong> 378-7153002</p>',2),(3,'Dip. Luis Guillermo Martínez Mora','','dip_luis_guillermo_martinez_mora','X',1,1,1,'guillermo.martinez@congresojal.gob.mx','C2','33-36791511 ext. 1511, 1608','<p><strong>Domicilio: </strong>Millet No. 81-A Col. La Estancia  Zapopan, Jalisco<br /> <strong>tel&eacute;fono: </strong>33-36677150</p>',10),(4,'Dip. José Gildardo Guerrero Torres','','dip_jose_gildardo_guerrero_torres','XII',1,1,1,'gildardo.guerrero@congresojal.gob.mx ','Coordinación del PAN','33-36791504, ext. 1503, 1504','',5),(5,'Dip. Jaime Ismael Díaz Brambila ','','dip_jaime_ismael_diaz_brambila','XVIII',1,1,1,'jaime.diaz@congresojal.gob.mx','W2','33-36791556, ext. 1556, 1656','<p><strong>Domicilio: </strong>Ju&aacute;rez Oriente no. 57-A col. Centro, Uni&oacute;n de Tula, Jalisco.<br /> <strong>horario: </strong>de 9 a 3, de lunes a viernes.<br /> <strong>Tel&eacute;fono: </strong>316-3711110</p>',4),(6,'Dip. José Hernán Cortés Berumen ','','dip_jose_hernan_cortes_berumen','',2,1,1,'hernancortes@congresojal.gob.mx','N2','33-36791531 ext. 1531, 1631','<p>Pr&oacute;xima apertura.</p>',6),(7,'Dip. Alberto Esquer Gutiérrez ','','dip_alberto_esquer_gutierrez','XIX',1,1,1,'alberto.esquer@congresojal.gob.mx','C1','33-36791512 ext. 1512, 1611','<p><strong>Domicilio:</strong> Col&oacute;n no. 153 Col. Centro, Ciudad Guzm&aacute;n, Jalisco.<br /> <strong>Horario:</strong> de 9 a 2 y de 4 a 6, de lunes a viernes.<br /> <strong>Tel&eacute;fono:</strong> 341-4123669</p>',1),(8,'Dip. Mariana Arámbula Meléndez ','','dip_mariana_arambula_melendez','',2,1,1,'mariana.arambula@congresojal.gob.mx','O2','33-36791533 ext. 1533, 1632','<p>Pr&oacute;xima apertura.</p>',11),(9,'Dip. Gabriela Andalón Becerra ','','dip_gabriela_andalon_becerra','',2,1,1,'gabriela.andalon@congresojal.gob.mx','CH','33-36791538 ext. 1538, 1638','<p><strong>Domicilio:</strong> Argentina no. 888, entre Washington y Espa&ntilde;a, Col. Moderna, Guadalajara, Jalisco.<br /> <strong>Tel&eacute;fono:</strong> 33-33336324</p>',3),(10,'Dip. Victor Manuel Sánchez Orozco ','','dip_victor_sanchez_orozco','VIII',2,1,1,'victor.sanchez@congresojal.gob.mx','W1','33-36791557 ext. 1557, 1661','<p><strong>Domicilio:</strong> Circunvalaci&oacute;n no.1643, frente al Parque Hundido  Guadalajara, Jal.<br /> <strong>Horario:</strong> de 9 a 7, de lunes a viernes; y de 9 a 3, s&aacute;bado.<br /> <strong>Tel&eacute;fono:</strong> 33-32801176</p>',13),(11,'Dip. Juan Carlos Márquez Rosas ','','dip_juan_carlos_marquez_rosas','IX',2,1,1,'juancarlos.marquez@congresojal.gob.mx','K','33-36791574 ext. 1574, 1561 ','<p>Pr&oacute;xima apertura.</p>',8),(12,'Dip. José Luis Munguía Cardona','','dip_jose_luis_munguia_cardona','',2,1,1,'joseluis.munguia@congresojal.gob.mx','B1','33-36791516 ext. 1516, 1689','<p>Pr&oacute;xima apertura.</p>',7),(13,'Dip. Juan José Cuevas García ','','dip_juan_jose_cuevas_garcia','VIII',2,1,1,'pericuevas@live.com','O1','33-36791575 ext. 1575, 1532','<p><strong>Domicilio:</strong> Av. Francisco Villa no. 453, esquina corregidora, Col. Versalles, Puerto Vallarta, Jalisco.<br /> <strong>Horario:</strong> de 9 a 2 y de 3 a 7, de lunes a viernes.<br /> <strong>Tel&eacute;fono:</strong> 322-2240501.</p>',9),(14,'Grupo Parlamentario','','','',1,1,0,'','','','',0);
/*!40000 ALTER TABLE `perfil_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_iniciativa`
--

DROP TABLE IF EXISTS `perfil_iniciativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_iniciativa` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `texto` text,
  `nombre` varchar(250) NOT NULL,
  `categoria` smallint(1) NOT NULL DEFAULT '0',
  `visible` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_iniciativa`
--

LOCK TABLES `perfil_iniciativa` WRITE;
/*!40000 ALTER TABLE `perfil_iniciativa` DISABLE KEYS */;
INSERT INTO `perfil_iniciativa` VALUES (61,'<p>&nbsp;</p>\r\n<p><strong>H. CONGRESO DEL ESTADO DE JALISCO</strong></p>\r\n<p><strong>P R E S E N T E:</strong></p>\r\n<p><strong></strong></p>\r\n<p>La que suscribe, <strong>Diputada Norma Ang&eacute;lica Cordero Prado</strong>, integrante de la Sexag&eacute;sima Legislatura del Estado de Jalisco, en uso de las facultades que me confieren los art&iacute;culos 28 (veintiocho) fracci&oacute;n primera y 35 (treinta y cinco) fracci&oacute;n primera de la Constituci&oacute;n Pol&iacute;tica; as&iacute; como de los numerales&nbsp; 22 (veintid&oacute;s) fracci&oacute;n primera del 147 (ciento cuarenta y siete fracci&oacute;n primera) y 148 (ciento cuarenta y ocho) de la Ley Org&aacute;nica del Poder Legislativo, ambos ordenamientos del Estado de Jalisco, someto a la consideraci&oacute;n de esta Asamblea, <strong>Iniciativa de Decreto, que autoriza el traslado del Recinto Oficial del Congreso del Estado, al municipio de Lagos de Moreno, Jalisco, y que declara el Teatro Jos&eacute; Rosas Moreno, como Recinto Oficial del Congreso del Estado, a efecto de celebrar Sesi&oacute;n Solemne el d&iacute;a 31 de marzo de 2013 a las 12:00 horas, para conmemorar el CDL Aniversario de la fundaci&oacute;n del Municipio de Lagos de Moreno, Jalisco</strong>, misma que se fundamenta en base a la siguiente:</p>\r\n<p>&nbsp;</p>\r\n<p><strong>EXPOSICI&Oacute;N DE MOTIVOS:</strong></p>\r\n<p><strong></strong></p>\r\n<p>La fundaci&oacute;n<strong> </strong>de Lagos de Moreno, se dio a ra&iacute;z de la necesidad de contar con una villa que sirviera de protecci&oacute;n a los viajeros y mercanc&iacute;as que circulaban en el camino de la plata M&eacute;xico-Guanajuato-Zacatecas, pues este camino era asediado por las tribus chichimecas que viv&iacute;an en esa zona.</p>\r\n<p>Es entonces que el d&iacute;a 31 de marzo de 1563, Don Hernando de Martel junto con 73 familias espa&ntilde;olas fundan la Villa de Santa Mar&iacute;a de los Lagos, y por decreto el 27 de marzo de 1824 se le concede el t&iacute;tulo de \"Ciudad\"; desde 1825 se convierte en cabecera del cant&oacute;n y departamento de Lagos, y fue hasta el nueve de abril de 1829, por decreto del Congreso del Estado, cuando la ciudad recibe el nombre de Lagos de Moreno, en honor a nuestro insurgente Don Pedro Moreno Gonz&aacute;lez.</p>\r\n<p><strong>2.</strong> La ciudad de Lagos de Moreno, por decreto del Honorable Congreso del Estado, se ha designado como Capital del Estado, en tres ocasiones: por primera vez en 1831 mediante Decreto No. 406, en el mes de diciembre; por segunda ocasi&oacute;n en 1915, el 16 de abril al 11 de junio y la tercera ocasi&oacute;n, con motivo de la celebraci&oacute;n del IV Centenario de la fundaci&oacute;n de la ciudad, el d&iacute;a 31 de marzo de 1963.<strong> </strong></p>\r\n<p>Cabe hacer menci&oacute;n que la Villa de Santa Mar&iacute;a de los Lagos fue la &uacute;nica poblaci&oacute;n en Jalisco, aparte de Guadalajara, en contar con un escudo de armas otorgado por los reyes de Espa&ntilde;a.</p>\r\n<p><strong>3. </strong>En los a&ntilde;os cuarenta, llega a Lagos de Moreno la perspectiva econ&oacute;mica regional que al poco tiempo mejor&oacute; la producci&oacute;n ganadera e influy&oacute; hasta en las transformaciones sociales de gran parte de Lagos; esto se gener&oacute; con el establecimiento de la empresa lechera Nestl&eacute;,<strong> </strong>y posteriormente vendr&iacute;an otras empresas procesadoras de leche y el ganado seguir&iacute;a mejorando hasta convertir a Lagos en una de las m&aacute;s&nbsp;importantes cuencas lecheras de nuestro Estado y del pa&iacute;s.&nbsp;&nbsp;</p>\r\n<p><strong>4.</strong> En el a&ntilde;o de 1963, Lagos de Moreno se ve inmerso en grandes cambios para el progreso de esta ciudad y de los ciudadanos, gracias a los apoyos obtenidos por parte de los&nbsp;Poderes Ejecutivos tanto Federal como del Estado, representados por el Lic. Adolfo L&oacute;pez Mateos y Profesor Juan Gil Preciado.&nbsp;</p>\r\n<p>En esta misma fecha se organiza un grupo de destacados laguenses, para conmemorar el IV centenario de la fundaci&oacute;n de la villa de Santa Mar&iacute;a de Los Lagos; con un programa de eventos culturales y sociales, as&iacute; mismo se realizaron varias obras para restaurar y conservar el patrimonio de arquitectura barroca, como fueron: reconstrucci&oacute;n del ex-convento de Capuchinas, construcci&oacute;n del Palacio Federal, restauraci&oacute;n de la escuela de Artes Miguel Leandro Guerra, construcci&oacute;n del Centro de Salud (Hospital Regional), construcci&oacute;n de la estaci&oacute;n de ferrocarril y la Plaza IV Centenario, habilitada en el predio que dejara el mercado Juan Pablo Anaya.&nbsp;&nbsp;</p>\r\n<p><strong>5.</strong> Es as&iacute; que en los &uacute;ltimos a&ntilde;os, se presentaron nuevos avances para Lagos de Moreno; con la coordinaci&oacute;n de los tres niveles de gobierno, grandes empresas siguen llegando a la regi&oacute;n; se construyen el libramiento carretero y el Boulevard Francisco Orozco y Jim&eacute;nez; se rehabilita el Paseo de la Rivera con la construcci&oacute;n del Paseo de la Solidaridad y el paso a desnivel bajo el Puente Grande; la construcci&oacute;n del Grupo Ferial incluyendo el Lienzo Charro Santa Mar&iacute;a, \"el m&aacute;s grande del mundo\"; la construcci&oacute;n de la explanada del Calvario; fundaci&oacute;n de la Casa de la Cultura en el ex-convento de Capuchinas; para el apoyo educativo, se crea la fundaci&oacute;n del Bachillerato Tecnol&oacute;gico Industrial y de Servicios 262, la instalaci&oacute;n del m&oacute;dulo a nivel profesional de la Universidad de Guadalajara,&nbsp; la Universidad del Valle de Atemajac y la Universidad UNIVER, y para el apoyo al deporte, en el a&ntilde;o 2011, se construy&oacute; el Estadio Panamericano de Beisbol para ser sede oficial en estos tan importantes juegos panamericanos realizados en nuestra entidad y que el mismo servir&aacute; para realizar competencias locales, nacionales e internacionales de este com&uacute;nmente llamado <strong>\"El Rey de los Deportes</strong>\".</p>\r\n<p><strong>6. &nbsp; </strong>Este municipio se destaca por tener el centro hist&oacute;rico m&aacute;s conservado de nuestro Estado, siendo el lugar ideal para conocer la riqueza y costumbres de la vida colonial.</p>\r\n<p>Alberga en sus partes centrales, los edificios civiles y religiosos m&aacute;s se&ntilde;oriales edificados en su mayor&iacute;a durante los siglos XVIII y XIX, y en los que destacan las arquitecturas barrocas y neocl&aacute;sicas agrupadas en 149 manzanas en los que se concentran alrededor de 356 inmuebles catalogados por el INAH.</p>\r\n<p><strong>7. &nbsp; </strong>En 1989 fue<strong> </strong>declarado<strong> </strong>Zona de Monumentos Hist&oacute;ricos por el Instituto Nacional de Antropolog&iacute;a e Historia (INAH).</p>\r\n<p>El 1 de agosto del 2010, fue nombrado dentro del camino real \"Tierra Adentro\", Patrimonio de la Humanidad por la UNESCO, y en marzo de 2012 fue develada la placa conmemorativa a este nombramiento en el Centro Hist&oacute;rico de la ciudad de Lagos de Moreno.</p>\r\n<p><strong>8. &nbsp; </strong>Actualmente y con el fin de consolidar&nbsp; el aspecto tur&iacute;stico y cultural de este municipio y con motivo de su CDL Aniversario de su fundaci&oacute;n, se est&aacute;n llevando a cabo las siguientes obras: Restauraci&oacute;n de las Parroquias de la Virgen de la Asunci&oacute;n, de la Virgen del Refugio, de la Virgen de la Luz y la del Calvario, as&iacute; como la rehabilitaci&oacute;n del Centro Cultural Insurgentes, del Sitio Hist&oacute;rico Fuerte del Sombrero, del Teatro Jos&eacute; Rosas Moreno, revitalizaci&oacute;n del Centro Hist&oacute;rico primera etapa, construcci&oacute;n de la Plaza Conmemorativa al 450 Aniversario de Lagos, Rescate y Se&ntilde;alizaci&oacute;n del Camino Real Tierra Adentro en su tramo que atraviesa este municipio l&aacute;guense, conclusi&oacute;n del Edificio de Justicia, saneamiento del R&iacute;o Lagos, Construcci&oacute;n de la V etapa del Centro de Valor Agregado, as&iacute; como la realizaci&oacute;n de los estudios para obtener la Declaratoria de Protecci&oacute;n Monumento Natural e Hist&oacute;rico La Mesa Redonda.</p>\r\n<p><strong>9. </strong>Es importante destacar que el pasado 16 de noviembre del a&ntilde;o en curso, Lagos de Moreno, pas&oacute; a ser el quinto municipio de la entidad y el 66 a nivel nacional que logra ser acreditado como <strong>\"Pueblo M&aacute;gico\" </strong>colocando a este municipio<strong> </strong>como un nuevo destino tur&iacute;stico.&nbsp;</p>\r\n<p>Por tal raz&oacute;n compa&ntilde;eros diputados propongo esta iniciativa para conmemorar los CDL a&ntilde;os de la fundaci&oacute;n del Municipio de Lagos de Moreno, recordando que esta tierra es un orgullo para todos los laguenses, que ha sido cuna de valiosos hombres y mujeres que han aportado grandes beneficios a nuestro pa&iacute;s, como son, pro m&aacute;rtires de la independencia, hombres ilustres,&nbsp; acad&eacute;micos reconocidos, escritores, novelistas, poetas, concertistas, artistas, historiadores, inventores, fot&oacute;grafos y periodistas, entre otros, que con trabajo, dedicaci&oacute;n, disciplina, honestidad y convicci&oacute;n han realizado obras cuyos frutos han trascendido las fronteras del tiempo para brindarse con generosidad a las nuevas generaciones de jaliscienses y de mexicanos.</p>\r\n<p>Por los razonamientos antes expuestos, se somete a consideraci&oacute;n de esta Soberan&iacute;a la siguiente Iniciativa de:</p>\r\n<p><strong></strong></p>\r\n<p><strong>DECRETO:</strong></p>\r\n<p><strong></strong></p>\r\n<p><strong>PRIMERO.-</strong> Se autoriza el traslado del Recinto Oficial del Congreso del Estado, al municipio de Lagos de Moreno, Jalisco, y se Declara el Teatro Jos&eacute; Rosas Moreno, ubicado en la calle Jos&eacute; Rosas Moreno n&uacute;mero 320, en la poblaci&oacute;n de Lagos de Moreno, Jalisco, como Recinto Oficial del Congreso del Estado, a efecto de celebrar Sesi&oacute;n Solemne el d&iacute;a 31 de marzo de 2013 a las 12:00 horas, para efectos de conmemorar el CDL Aniversario de la fundaci&oacute;n del Municipio de Lagos de Moreno, Jalisco.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>SEGUNDO.- </strong>Notif&iacute;quese el presente decreto al Honorable Ayuntamiento Constitucional de Lagos de Moreno, Jalisco, as&iacute; como a los titulares de los Poderes Ejecutivo y Judicial.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>TERCERO.-</strong>Instr&uacute;yase al Secretario General del Congreso del Estado para que realice los tr&aacute;mites correspondientes para el cumplimiento del presente decreto.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>TRANSITORIOS</strong></p>\r\n<p><strong>&Uacute;NICO. </strong>El presente Decreto entrar&aacute; en vigor al d&iacute;a siguiente de su publicaci&oacute;n en el Peri&oacute;dico Oficial \"El Estado de Jalisco.</p>\r\n<p>&nbsp;</p>\r\n<p><strong></strong></p>\r\n<p><strong>ATENTAMENTE</strong></p>\r\n<p>Recinto Legislativo</p>\r\n<p>Guadalajara, Jalisco, 17 de enero de 2013</p>\r\n<p><strong></strong></p>\r\n<p><strong>DIP. NORMA ANG&Eacute;LICA CORDERO PRADO</strong></p>\r\n<p><strong><br /></strong></p>\r\n<p>&nbsp;</p>','Iniciativa de Decreto Lagos',2,1),(62,'<p><strong>H. CONGRESO DEL ESTADO DE JALISCO</strong></p>\r\n<p><strong>PRESENTE</strong>.</p>\r\n<p>&nbsp;</p>\r\n<p>El suscrito, diputado V&iacute;ctor Manuel S&aacute;nchez Orozco,integrante de la LX Legislatura del H. Congreso del Estado de Jalisco, con fundamento en lo dispuesto por el art&iacute;culo 28 fracci&oacute;n I de la Constituci&oacute;n Pol&iacute;tica del Estado de Jalisco; as&iacute; como por los art&iacute;culos 22,numeral 1, fracci&oacute;n I; 147 numeral 1, fracci&oacute;n I, 148 y 154 de la Ley Org&aacute;nica del Poder Legislativo del Estado de Jalisco, someto a consideraci&oacute;n del pleno la siguiente iniciativa de Ley, que adiciona el T&iacute;tulo Und&eacute;cimo y los art&iacute;culos 114, 115, 116, 117, 118, 119,120, 121, 122, 123, 124, 125, 126 y 127 a la Ley de Fiscalizaci&oacute;n Superior y Auditor&iacute;a P&uacute;blica del Estado de Jaliscode acuerdo con la siguiente:</p>\r\n<p>&nbsp;</p>\r\n<p><strong>EXPOSICI&Oacute;N DE MOTIVOS</strong></p>\r\n<p>&nbsp;</p>\r\n<p>1.- Trabajar de manera conjunta con la Sociedad Organizada en el ejercicio de gobierno y en el manejo de los asuntos p&uacute;blicos, garantiza la transparencia, la legalidad, el control, la evaluaci&oacute;n y la fiscalizaci&oacute;n, como herramientas indispensables de la rendici&oacute;n de cuentas y la democracia participativa.</p>\r\n<p>2.-&nbsp; La participaci&oacute;n e inclusi&oacute;n ciudadana, en las tareas de gobierno posibilita el leg&iacute;timo derecho a la informaci&oacute;n y&nbsp; la corresponsabilidad social de una sociedad m&aacute;s interesada y comprometida en los asuntos p&uacute;blicos.</p>\r\n<p>3.- La legitimidad p&uacute;blica se obtiene con el respaldo social, para generar la confianza y la credibilidad que exigen los ciudadanos respecto al manejo de las finanzas y al actuar de los funcionarios, particularmente de la Auditor&iacute;a Superior del Estado; en consecuencia&nbsp; es necesario contar con la participaci&oacute;n ciudadana en la supervisi&oacute;n, control y evaluaci&oacute;ndel uso de los recursos p&uacute;blicos por parte de los poderes del Estado y de los entes p&uacute;blicos estatales.</p>\r\n<p>4.- La Constituci&oacute;n Pol&iacute;tica del Estado de Jalisco, en el art&iacute;culo 35, fracci&oacute;n XXV, establece:</p>\r\n<p><strong><em>Art&iacute;culo 35.-</em></strong><em> Son Facultades del Congreso:</em></p>\r\n<p><em>XXV. Verificar y realizar la fiscalizaci&oacute;n superior del desempe&ntilde;o y el cumplimiento de los objetivos contenidos en los planes y programas de los &oacute;rganos, dependencias y entidades p&uacute;blicas;</em></p>\r\n<p><strong><em>Vigilar el desempe&ntilde;o de las funciones de la Auditor&iacute;a Superior del Estado, en los t&eacute;rminos que disponga la ley.</em></strong></p>\r\n<p><em>Ser&aacute;n principios rectores de la fiscalizaci&oacute;n superior del Congreso del Estado la legalidad, certeza, transparencia, racionalidad, austeridad, eficacia, eficiencia, honestidad, disciplina presupuestal, responsabilidad, objetividad, imparcialidad, proporcionalidad, posterioridad, anualidad, imparcialidad y confiabilidad y la orientaci&oacute;n estrat&eacute;gica de los recursos p&uacute;blicos basada en la adecuada planeaci&oacute;n para el desarrollo.</em></p>\r\n<p>El mismo <strong>art&iacute;culo 35</strong>, estipula que:</p>\r\n<p><em>Adicionalmente, el Congreso del Estado en materia de fiscalizaci&oacute;n tendr&aacute; las siguientes atribuciones:</em></p>\r\n<p><em>a) Expedir la ley que regule la organizaci&oacute;n de la Auditor&iacute;a Superior del estado de Jalisco y las dem&aacute;s que normen la gesti&oacute;n, control y evaluaci&oacute;n de los poderes del Estado y de los entes p&uacute;blicos estatales;</em></p>\r\n<p>5.- La Ley de Fiscalizaci&oacute;n Superior y Auditor&iacute;a P&uacute;blica del estado de Jalisco, en su art&iacute;culo 19, establece:</p>\r\n<p><strong><em>La Auditor&iacute;a Superior es el &oacute;rgano t&eacute;cnico profesional y especializado de revisi&oacute;n y examen del Congreso del Estado</em></strong><em>, dotado de autonom&iacute;a t&eacute;cnica y gesti&oacute;n en el ejercicio de sus atribuciones, para decidir sobre su organizaci&oacute;n interna, funcionamiento y resoluciones, en los t&eacute;rminos que disponga esta ley.</em></p>\r\n<p>6.- La Ley Org&aacute;nica del Poder Legislativo, en el art&iacute;culo 52, numeral I, dispone:</p>\r\n<p><strong><em>La Auditoria Superior del Estado es el &oacute;rgano t&eacute;cnico del Congreso del Estado</em></strong><em> que bajo la vigilancia de la Comisi&oacute;n de Inspecci&oacute;n, auxilia al Congreso del Estado para la revisi&oacute;n, examen y fiscalizaci&oacute;n de las cuentas p&uacute;blicas de los Poderes del Estado, organismos p&uacute;blicos aut&oacute;nomos, descentralizados y desconcentrados; ayuntamientos, sus dependencias y entidades; as&iacute; como los entes p&uacute;blicos de &iacute;ndole estatal y municipal e instituciones p&uacute;blicas o privadas que administran fondos o valores p&uacute;blicos, incluyendo la aplicaci&oacute;n de recursos de origen federal cuando estos formen parte de la respectiva cuenta p&uacute;blica estatal o municipal; as&iacute; como el Tribunal de Arbitraje y Escalaf&oacute;n.</em></p>\r\n<p>La misma Ley Org&aacute;nica del Poder Legislativo, en el art&iacute;culo 53, numeral I, estipula:</p>\r\n<p><em>La funci&oacute;n fiscalizadora del Congreso del Estado, as&iacute; como </em><strong><em>la organizaci&oacute;n, obligaciones y atribuciones de la Auditoria Superior del Estado, se establecen en las leyes y reglamentos respectivos.</em></strong></p>\r\n<p>La Ley Org&aacute;nica del Poder Legislativo, en su art&iacute;culo 62 -K, numeral 1, establece:</p>\r\n<p><em>La Unidad es el &oacute;rgano t&eacute;cnico profesional e interdisciplinario en &aacute;reas de derecho, administraci&oacute;n, contabilidad, obra p&uacute;blica, evaluaci&oacute;n de proyectos, pol&iacute;tica y social del Congreso del Estado, que auxilia a la Comisi&oacute;n de Vigilancia en su tarea de fiscalizaci&oacute;n y revisi&oacute;n de informes finales de cuenta p&uacute;blica o estados financieros de los sujetos fiscalizables y auditables.</em></p>\r\n<p>Por su parte el art&iacute;culo 62 - L, se&ntilde;ala:</p>\r\n<p><em>La Unidad tendr&aacute; a su cargo las siguientes atribuciones:</em></p>\r\n<p><em>I. Auxiliar a la Comisi&oacute;n en la vigilancia para que los servidores p&uacute;blicos de la Auditor&iacute;a Superior se conduzcan en los t&eacute;rminos de esta ley y la de Responsabilidades para los Servidores P&uacute;blicos del Estado de Jalisco, y presentar las denuncias correspondientes al Auditor Superior; &nbsp;</em></p>\r\n<p><em>II. A petici&oacute;n de la Comisi&oacute;n, realizar auditor&iacute;as para verificar el desempe&ntilde;o, el cumplimiento de los objetivos y metas de los programas anuales de la Auditor&iacute;a Superior, as&iacute; como la debida aplicaci&oacute;n de los recursos a cargo de &eacute;sta;</em></p>\r\n<p>Asimismo, dicha Ley, en su Art&iacute;culo 103 bis, se&ntilde;ala:</p>\r\n<p><em>1. Corresponde a la Comisi&oacute;n de Vigilancia el estudio y dictamen o el conocimiento, respectivamente, de los asuntos&nbsp; relacionados con:</em></p>\r\n<p><em>I. La comunicaci&oacute;n entre el Congreso del Estado y la Auditor&iacute;a Superior;</em></p>\r\n<p><em>II. Proponer al Congreso del Estado, sin dictaminar, los informes finales de las auditor&iacute;as que aprueban las cuentas p&uacute;blicas y estados financieros de las entidades auditables;&nbsp;</em></p>\r\n<p><em>III. Conocer, revisar y dictaminar, fundada y motivadamente, los informes finales en los que se haya determinado en cantidad l&iacute;quida la constituci&oacute;n de cr&eacute;ditos fiscales por da&ntilde;os al erario o patrimonio p&uacute;blico;</em></p>\r\n<p><em>IV. Devolver con observaciones a la Auditor&iacute;a Superior, previa aprobaci&oacute;n del Pleno y por una sola vez, los informes finales de cuenta p&uacute;blica o estados financieros, cuando de la revisi&oacute;n y auditor&iacute;a p&uacute;blica se consideren aspectos materia de esta ley y que no fueron contemplados en el informe final;</em></p>\r\n<p><em>V. Proponer al Pleno del Congreso del Estado, los proyectos de dictamen de decreto que aprueban o rechazan una cuenta p&uacute;blica o los estados financieros de las entidades auditables y elevar a cr&eacute;dito fiscal las observaciones de la Auditor&iacute;a Superior que hayan ocasionado da&ntilde;o al erario o patrimonio p&uacute;blico;</em></p>\r\n<p><em>VI. Al dictaminar las cuentas p&uacute;blicas, ejercer las facultades de fiscalizaci&oacute;n a que se refiere esta ley, de tal manera que pueda ser calificado el desempe&ntilde;o de la gesti&oacute;n p&uacute;blica, con base a los indicadores de medici&oacute;n objetivos, que de manera fundada y motivada propicien una mejora gubernamental y un mayor impacto de los programas de gobierno en el beneficio colectivo;</em></p>\r\n<p><em>VII. Expedir certificaciones de los documentos que obren en su archivo, por conducto de su Presidente;</em></p>\r\n<p><em>VIII. Conocer el programa anual de actividades que para el debido cumplimiento de sus funciones, elabore la Auditor&iacute;a Superior, as&iacute; como sus modificaciones y evaluar su cumplimiento;</em></p>\r\n<p><em>IX. Citar al Auditor Superior para conocer en lo espec&iacute;fico de alg&uacute;n informe final de auditor&iacute;a de las cuentas p&uacute;blicas o de la opini&oacute;n t&eacute;cnica de los estados financieros;</em></p>\r\n<p><em>X. Conocer el proyecto de presupuesto anual de la Auditor&iacute;a Superior, as&iacute; como el informe anual de su ejercicio;</em></p>\r\n<p><em>XI. Proponer al Pleno del Congreso del Estado al titular de la Unidad, a sus servidores p&uacute;blicos y su reglamento interno;</em></p>\r\n<p><em>XII. Aprobar el programa de actividades de la Unidad y requerir toda la informaci&oacute;n relativa a sus funciones;</em></p>\r\n<p><em>XIII. Ordenar a la Unidad, la pr&aacute;ctica de auditor&iacute;a p&uacute;blica a la Auditor&iacute;a Superior;</em></p>\r\n<p><em>XIV. Planear, programar, ordena y efectuar auditor&iacute;as, inspecciones o visitas administrativas a las diversas unidades que integran la Auditor&iacute;a Superior, cumpliendo con las formalidades de esta ley;</em></p>\r\n<p><em>XV. Proveer lo necesario para garantizar el car&aacute;cter t&eacute;cnico y de gesti&oacute;n de la Auditor&iacute;a Superior;</em></p>\r\n<p><em>XVI. Presentar al Congreso del Estado, el dictamen relativo a la terna para designar al Auditor Superior;</em></p>\r\n<p><em>XVII. Dictaminar acerca de la solicitud de licencia o remoci&oacute;n del Auditor Superior;</em></p>\r\n<p><em>XVIII. Vigilar que los servidores p&uacute;blicos de la Auditor&iacute;a Superior se conduzcan en los t&eacute;rminos de esta ley y la de Responsabilidades para los Servidores P&uacute;blicos del Estado de Jalisco y presentar las denuncias correspondientes al Auditor Superior; y</em></p>\r\n<p><em>XIX. Las dem&aacute;s que establezca esta ley y otras disposiciones legales aplicables.</em></p>\r\n<p>7.- <strong><em>La Auditor&iacute;a Superior es un &oacute;rgano t&eacute;cnico m&aacute;s del Congreso del Estado</em></strong>, ciertamente dotado de autonom&iacute;a t&eacute;cnica y gesti&oacute;n en el ejercicio de sus atribuciones, para decidir sobre su organizaci&oacute;n interna, funcionamiento y resoluciones; lo cual no es impedimento para que el Congreso del Estado de Jalisco, en el ejercicio de sus facultades constitucionales vigile el desempe&ntilde;o de las funciones de la Auditor&iacute;a Superior del Estado e incluso legislar sobre su propia organizaci&oacute;n, tal como lo faculta la propia Constituci&oacute;n del Estado de Jalisco.&nbsp;</p>\r\n<p>8.- El Congreso del Estado de Jalisco para verificar y realizar la fiscalizaci&oacute;n superior del desempe&ntilde;o y el cumplimiento de los objetivos contenidos en los planes y programas de los &oacute;rganos, dependencias y entidades p&uacute;blicas, puede auxiliarse de mecanismos, &oacute;rganos, unidades, comisiones y cualquier otro tipo de instancias de vigilancia y fiscalizaci&oacute;n internaque al efecto disponga para tales efectos.</p>\r\n<p>9.- El d&iacute;a 03 de Diciembre del a&ntilde;o en curso, se celebr&oacute; el Foro Ciudadano de Observaci&oacute;n y Monitoreo al Congreso de Jalisco. &iquest;Qu&eacute;, c&oacute;mo y para qu&eacute;? &iexcl;Observemos al Poder Legislativo!</p>\r\n<p>En dicho Foro, participaron diversos organismos ciudadanos, quienes se pronunciaron por brindar mayor apertura a la sociedad civil, por transparentar los recursos p&uacute;blicos de que dispone el Congreso, rendir cuentas e involucrar a la ciudadan&iacute;a en la vigilancia del trabajo legislativo. As&iacute; como en la revisi&oacute;n y supervisi&oacute;n de los informes definitivos que genere la Auditor&iacute;a Superior del Estado de Jalisco.</p>\r\n<p>&Uacute;ltimamente se ha cuestionado la labor de la&nbsp; Auditor&iacute;a Superior (ASEJ)por los informes y los dict&aacute;menes&nbsp; que presenta respecto de las&nbsp; cuentas p&uacute;blicas de estados financierosde los entes fiscalizables pues a pesar de que muchas de ellas no est&aacute;n debidamente solventadas no presentan ninguna observaci&oacute;n de car&aacute;cter financiero y normativo, ya sea por inconsistencias, por omisiones o incluso por errores de procedimiento del propio Congreso del Estado;lo que genera suspicacias y desconfianza de sus autoridades. Quedando en entredicho el Profesionalismo, la Objetividad, la Imparcialidad, la Legalidad yla Certeza, que deben regir en su actuaci&oacute;n fiscalizadora.</p>\r\n<p>10.- En atenci&oacute;n a dichas demandas ciudadanas, es que surge la presente propuesta de crear un Consejo Ciudadano emanado de la Sociedad Civil, paraqueen colaboraci&oacute;n y coordinaci&oacute;n con el Congreso del Estado, vigile&nbsp; y transparente la funci&oacute;n y desempe&ntilde;o de sus representantes y el manejo de los recursos p&uacute;blicos, especialmente a la Auditor&iacute;a Superior del Estado.Con el prop&oacute;sito de contribuir al mejor funcionamiento de dicho &Oacute;rgano en la revisi&oacute;n de lascuentas p&uacute;blicas de municipios, organismos y entes p&uacute;blicos de la administraci&oacute;n p&uacute;blica estatal.</p>\r\n<p>Esto supondr&aacute;, entre otras acciones, que la funci&oacute;n p&uacute;blica, el ejercicio presupuestal y el gasto p&uacute;blico sean motivo de consulta con el organismo ciudadano para que &eacute;ste emita las opiniones, observaciones y/orecomendaciones pertinentes en forma oportuna con su estudio t&eacute;cnico previo.</p>\r\n<p>Por lo anteriormente expuesto y fundado, el suscrito Diputado someto a consideraci&oacute;n de esta H. Asamblea Legislativa, la siguiente:</p>\r\n<p><strong>INICIATIVA DE LEY:</strong></p>\r\n<p><strong>QUE&nbsp; REFORMA POR ADICIONDEL T&Iacute;TULO UND&Eacute;CIMO Y DELOS ART&Iacute;CULOS 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126 y 127 DE LA LEY DE FISCALIZACI&Oacute;N SUPERIOR Y AUDITOR&Iacute;A P&Uacute;BLICA DEL ESTADO DE JALISCO.</strong></p>\r\n<p><strong>&Uacute;NICO.</strong> Se reforman por adici&oacute;ndel t&iacute;tulo und&eacute;cimo y de los siguientes art&iacute;culos de la Ley de Fiscalizaci&oacute;n Superior y Auditor&iacute;a P&uacute;blica del Estado de Jalisco, para quedar como sigue:</p>\r\n<p>&nbsp;</p>\r\n<p><strong>TITULO UND&Eacute;CIMO</strong></p>\r\n<p><strong>DEL CONSEJO CIUDADANO</strong></p>\r\n<p><strong>CAP&Iacute;TULO &Uacute;NICO</strong></p>\r\n<p><strong>Art&iacute;culo 114.- </strong>El Consejo Ciudadano se constituye como un organismo plural y colegiado con car&aacute;cter consultivo, de an&aacute;lisis y opini&oacute;n en materia de fiscalizaci&oacute;n&nbsp; y rendici&oacute;n de cuentas para el Poder Legislativo del Estado de Jalisco.</p>\r\n<p><strong>Art&iacute;culo 115.</strong>- El Consejo Ciudadanocomo &oacute;rgano colegiado, se coordinar&aacute;con la Comisi&oacute;n de Vigilancia, para coadyuvar en la funci&oacute;n de fiscalizaci&oacute;n con el fin de transparentar y optimizar el adecuado empleo de los recursos p&uacute;blicos. Cuidando y supervisando el desempe&ntilde;o de las funciones de la Auditor&iacute;a Superior del Estado.</p>\r\n<p><strong>Art&iacute;culo 116.</strong>- El Consejo Ciudadano en el cumplimiento de sus objetivos y fines deber&aacute; observar los principios rectores de la fiscalizaci&oacute;n superior de legalidad, certeza, independencia, objetividad, imparcialidad, posterioridad, anualidad y profesionalismo.</p>\r\n<p><strong>Art&iacute;culo 117.</strong>-&nbsp; El Consejo Ciudadano y la Unidad de Vigilancia,&nbsp; &oacute;rgano t&eacute;cnico de la Comisi&oacute;n, trabajaran conjuntamente para la revisi&oacute;n y evaluaci&oacute;n del desempe&ntilde;o de la Auditor&iacute;a Superior y pr&aacute;ctica de su auditor&iacute;a de los estados financieros.</p>\r\n<p><strong>Art&iacute;culo 118.</strong>- El Consejo Ciudadano a fin de garantizar el control confiable y eficaz de las pol&iacute;ticas de fiscalizaci&oacute;n; implementara mecanismos de participaci&oacute;n, control y fiscalizaci&oacute;n ciudadana de la Auditoria Superior.</p>\r\n<p><strong>Art&iacute;culo 119.</strong>-&nbsp; El Consejo Ciudadano tendr&aacute; como funci&oacute;n el ejercicio de contralor&iacute;a social al revisar y evaluar acciones y procedimientos de la Auditoria Superior del Estado de Jalisco y la denuncia ciudadana ante cualquier irregularidad, abuso o mal desempe&ntilde;o de quienes trabajan en la Auditoria Superior del Estado de Jalisco. Para lo cual contar&aacute; con facultades resolutivas y vinculantes al coadyuvar con la Comisi&oacute;n de Vigilancia del Congreso del Estado de Jalisco, en las tareas de verificar el desempe&ntilde;o, el cumplimiento de los objetivos y metas de los programas anuales de la Auditor&iacute;a Superior, as&iacute; como la debida aplicaci&oacute;n de los recursos a cargo de &eacute;sta.</p>\r\n<p><strong>Art&iacute;culo 120.</strong>- El Consejo Ciudadano actuara como un&oacute;rgano externo supervisor de la Auditoria Superior,que podr&aacute; hacerobservaciones al&nbsp; Auditor Superior en el desempe&ntilde;o de su funci&oacute;n al frente de la Auditoria Superior. Buscando en todo momento el garantizar que la Auditoria Superior realice una gesti&oacute;n responsable, moderna, abierta, transparente y participativa y velando porque las autoridades y servidores p&uacute;blicos cumplan con la responsabilidad conferida en bien de la ciudadan&iacute;a. Verificando que las tareas de fiscalizaci&oacute;n de los entes p&uacute;blicos, se desarrollen con plena transparencia, objetividad y rendici&oacute;n de cuentas.</p>\r\n<p><strong>Art&iacute;culo 121.</strong>- El Consejo Ciudadano tiene como principales facultades y atribuciones, el examen, evaluaci&oacute;n y supervisi&oacute;n de las funciones de la Auditoria Superior, estableciendo los par&aacute;metros de eficiencia en eltrabajo realizado por dicho &oacute;rgano t&eacute;cnico. As&iacute; como la recomendaci&oacute;n y opini&oacute;n t&eacute;cnica&nbsp; de los nombramientos de los directores generales y la solicitud al Poder Legislativo del Estado del cese o la destituci&oacute;n de servidores p&uacute;blicos de la Auditoria Superior del Estado de Jalisco (ASEJ) que incurran en irregularidades, entre otros.&nbsp; As&iacute; como el proponer una terna de candidatos para presentar al Congreso del Estado y de evaluar a quien resulte electo como Titular de la Auditoria Superior, durante el tiempo que dure en el cargo.</p>\r\n<p><strong>Art&iacute;culo 122.</strong>- La participaci&oacute;n social del Consejo Ciudadano, permitir&aacute; que la Auditoria Superior, conozca, atienda y reciba opiniones, peticiones, quejas&nbsp; y denuncias sobre el funcionamiento y desempe&ntilde;o de la misma en la revisi&oacute;n de la Cuenta P&uacute;blica. Para lo cual losEntes P&uacute;blicos deber&aacute;n permitir el acceso a la informaci&oacute;n p&uacute;blica yproporcionar la documentaci&oacute;n que les sea requerida por el Consejo.</p>\r\n<p><strong>Art&iacute;culo 123.</strong>- Este Consejo Ciudadano estar&aacute; formado por ciudadanos con perfil profesional, no partidista; constituido por representantes de organismos no gubernamentales, instituciones educativas y universidades, as&iacute; como organismos empresariales y acad&eacute;micos especializados.</p>\r\n<p>Se integrar&iacute;a con cinco vocales: representantes de universidades e instituciones de educaci&oacute;n superior, colegios de contadores y auditores, colegios de abogados, c&aacute;maras empresariales y despachos profesionales de auditor&iacute;a.</p>\r\n<p>Su participaci&oacute;n no responder&aacute; a intereses pol&iacute;ticos, religiosos o econ&oacute;micos o cualquiera que resulteincompatible con los fines propios de su funci&oacute;n.</p>\r\n<p><strong>Art&iacute;culo 124.-</strong>No podr&aacute;n ser consejeros ciudadanos, los servidores p&uacute;blicos de la Federaci&oacute;n, del Estado o de los Municipios.</p>\r\n<p><strong>Art&iacute;culo 125.</strong>- La designaci&oacute;n de los Consejeros corresponder&aacute; a la Sociedad Organizada, la cual podr&aacute; tomar en consideraci&oacute;n la opini&oacute;n que le emitan las universidades, organismos sociales, colegios de profesionistas y en su caso, la ciudadan&iacute;a en general.</p>\r\n<p>Los Consejeros Ciudadanos no devengar&aacute;n emolumento alguno y su nombramiento ser&aacute; de car&aacute;cter honor&iacute;fico.</p>\r\n<p><strong>Art&iacute;culo 126.-</strong>ElConsejo deber&aacute; ser constituido bajo laintervenci&oacute;n de la Comisi&oacute;n de Vigilancia quien se avocar&aacute; a la convocatoria,organizaci&oacute;n, estructura y coordinaci&oacute;n de los trabajos del ConsejoCiudadano.</p>\r\n<p>Los integrantes del Consejo durar&aacute;n en el ejercicio de su cargo por el tiempo que hayan sido designados y estipulado en la convocatoria.</p>\r\n<p><strong>Art&iacute;culo 127.</strong>- Los miembros del Consejo trabajaran y sesionaran de manera abierta y p&uacute;blica en dos ocasiones al mes en el seno de la Auditoria Superior del Congreso del Estado de Jalisco, as&iacute; como mensualmente a trav&eacute;s de las comisiones tem&aacute;ticas de trabajo. Para lo cual las autoridades y funcionarios del Poder Legislativo, prestar&aacute;n el auxilio y el apoyo que les sea requerido para el logro de sus objetivos y funciones; procurando que el ejercicio de control y vigilancia ciudadana sea de manera informada, responsable, independiente e imparcial.</p>\r\n<p>El qu&oacute;rum para sesionar se formar&aacute; con la asistencia de la mitad m&aacute;s uno de sus miembros. Los acuerdos se tomar&aacute;n por mayor&iacute;a de votos de los integrantes presentes.</p>\r\n<p><strong>Art&iacute;culo 128.</strong>- El Consejo en su primera sesi&oacute;n, elegir&aacute; de entre sus miembros, a su Presidente quien tendr&aacute; voto de calidad en caso de empate.</p>\r\n<p>El Consejo contar&aacute; con una Secretar&iacute;a T&eacute;cnica, que ser&aacute; el titular de la Unidad de Vigilancia, quien podr&aacute; designar un suplente.</p>\r\n<p><strong></strong></p>\r\n<p><strong>TRANSITORIOS</strong></p>\r\n<p><strong></strong></p>\r\n<p><strong>PRIMERO.</strong> El presente decreto entrar&aacute; en vigor al d&iacute;a siguiente de su publicaci&oacute;n en el Peri&oacute;dico Oficial \"El Estado de Jalisco\".</p>\r\n<p><strong>SEGUNDO.</strong>La Auditor&iacute;a Superior del Estado deber&aacute; adecuar su Reglamento Interior a lo establecido en la presente Ley, en un plazo no mayor a noventa d&iacute;as h&aacute;biles contados a partir de la publicaci&oacute;n de la misma en el Peri&oacute;dico Oficial \"El Estado de Jalisco\".</p>\r\n<p><strong>TERCERO.</strong>Se derogan las disposiciones jur&iacute;dicas que contravengan lo dispuesto en la presente Ley.</p>\r\n<p><strong>CUARTO.</strong>Para el desempe&ntilde;o de las atribuciones del Consejo, la Secretar&iacute;a General, la Comisi&oacute;n de Vigilancia y la Unidad, le proveer&aacute;n del espacio, material y equipos que sean requeridos para cumplir su objeto.</p>\r\n<p><strong>QUINTO.</strong>El Consejo deber&aacute; quedar constituido a m&aacute;s tardar dentro de los treinta d&iacute;as h&aacute;biles posteriores a la entrada en vigor del presente Decreto.</p>\r\n<p><strong>SEXTO.</strong>El Poder Legislativo, en conjunto con la Auditor&iacute;a Superior del Estado de Jalisco llevar&aacute;n a cabo las acciones necesarias para el debido cumplimiento del presente decreto.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Atentamente</strong></p>\r\n<p><strong>Sal&oacute;n de Sesiones del Palacio Legislativo</strong></p>\r\n<p><strong>Guadalajara, Jalisco, a 06 de Diciembre de 2012.</strong></p>\r\n<p><em>&nbsp;\"2012,&nbsp; A&ntilde;o de la Equidad y la Igualdad de Trato y Oportunidades entre Mujeres y Hombres de Jalisco\".</em></p>\r\n<p>&nbsp;</p>\r\n<p>______________________________________</p>\r\n<p><strong>Diputado V&iacute;ctor Manuel S&aacute;nchez Orozco</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Se presenta iniciativa de reformas a la Ley de Fiscalizaci&oacute;n Superior, donde se incluye la integraci&oacute;n de un Consejo Ciudadano constituido como &oacute;rgano colegiado, de car&aacute;cter consultivo, coadyuvando con la Comisi&oacute;n de Vigilancia, cuyo fin sea transparentar y optimizar el adecuado empleo de los recursos p&uacute;blicos. Cuidando y supervisando el desempe&ntilde;o de las funciones de la Auditor&iacute;a Superior del Estado.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','CONSEJO CIUDADANO ASEJ',2,1),(63,'<p><strong>H. CONGRESO DEL ESTADO DE JALISCO</strong></p>\r\n<p><strong>PRESENTE.</strong></p>\r\n<p>&nbsp;</p>\r\n<p>El suscrito, diputado V&iacute;ctor Manuel S&aacute;nchez Orozco, integrante de la LX Legislatura del H. Congreso del Estado de Jalisco, con fundamento en lo dispuesto por los art&iacute;culos 22, primer p&aacute;rrafo, fracci&oacute;n I; 147, primer p&aacute;rrafo, fracci&oacute;n I; 150, 152, y 154 de la Ley Org&aacute;nica del Poder Legislativo del Estado de Jalisco, someto a consideraci&oacute;n del Pleno la siguiente iniciativa de acuerdo legislativo, de acuerdo con la siguiente:</p>\r\n<p><strong></strong></p>\r\n<p><strong>EXPOSICI&Oacute;N DE MOTIVOS</strong></p>\r\n<p><strong></strong></p>\r\n<p><strong>1.- </strong>El d&iacute;a 12 de Noviembre del a&ntilde;o en curso<strong>, </strong>los diputados integrantes de la Comisi&oacute;n Especial Temporal para el An&aacute;lisis, Revisi&oacute;n y Cotejo del Patrimonio del Congreso del Estado, revelaron que luego de la revisi&oacute;n de los expedientes de la pasada Legislatura, se detectaron una serie de irregularidades en el contrato que firmaron ex diputados con la empresa Consultores L&oacute;pez Castro y Compa&ntilde;&iacute;a, S.A. de C.V. y que se formalizo el 27 de marzo del 2009, por conducto del C. Alfredo Arg&uuml;elles Basave, en su car&aacute;cter de Secretario General del Congreso y el C. Sergio Ju&aacute;rez Rivera, como administrador general &uacute;nico de Consultores L&oacute;pez Castro; suscribieron, en relaci&oacute;n a las retenciones de Impuestos Sobre Productos del Trabajo durante los ejercicios 2006, 2007, 2008 y 2009.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>2.</strong>- El contrato de revisi&oacute;n de erogaciones que los diputados de la LVIII Legislatura firmaron con ese despacho se estipulo que los honorarios que se les pagar&iacute;a ser&iacute;an 40% de las devoluciones por concepto de impuestos ante Hacienda.</p>\r\n<p><strong>3.</strong>- La consultora L&oacute;pez Castro y Compa&ntilde;&iacute;a present&oacute; una demanda mercantil el 11 de mayo del 2010, para reclamar al Congreso del Estado, la cantidad de 42 millones 386,521.79 pesos. Adem&aacute;s, el <em>\"pago del inter&eacute;s moratorio, a raz&oacute;n de 5 por ciento mensual a partir del 26 de enero de 2006\".</em></p>\r\n<p>Seg&uacute;n la escritura p&uacute;blica 18634, registrada ante el notario 99 de Guadalajara, Jos&eacute; Mora Luna, los apoderados legales de dicha consultora son, adem&aacute;s de Gabriel Diez Mart&iacute;nez, los abogados Javier Cenobio Ruiz Bonilla, Ur&iacute;as Gonz&aacute;lez Esqueda y Filiberto Ruiz G&oacute;mez.&nbsp;</p>\r\n<p>El 14 de enero del 2010, Alfredo Arg&uuml;elles firm&oacute; un documento en el que se&ntilde;ala que entreg&oacute; a la empresa en octubre de 2009 un total de 575 mil pesos, <em>\"por lo cual s&oacute;lo se le adeuda y reconoce la cantidad de 42&acute;238,652.79 pesos\".</em> Trece d&iacute;as despu&eacute;s, el encargado del despacho de la Secretar&iacute;a General, Octavio P&eacute;rez Pozos, firm&oacute; un nuevo documento en el que afirma que <em>\"acepto y reconozco dicho pago en representaci&oacute;n del Congreso\",</em> aclarando que el t&eacute;rmino de la Legislatura <em>\"me imposibilita a pagar\".</em></p>\r\n<p><strong>4.</strong>- El objeto para el que fue celebrado el acuerdo de voluntades nunca se cumpli&oacute;, porque jam&aacute;s se obtuvieron devoluciones ni compensaciones de impuestos ISR/ISPT a favor del Congreso del Estado. No hay constancias de que ingresaron al Poder Legislativo los aproximadamente 100 millones de pesos que se comprometi&oacute; a recuperar dicha firmanteante la Secretar&iacute;a de Hacienda y Cr&eacute;dito P&uacute;blico (SHyCP).</p>\r\n<p>En su momento, el ex diputado Roberto Marrufo,declaro que:<em> \"dichos tramites,&nbsp; se encuentran en calidad de rechazados en el Servicio de Administraci&oacute;n Tributaria (SAT), a lo que las compensaciones que presentaron los quejosos en contra del Congreso no fueron admitidos por el SAT por no cumplir con la documentaci&oacute;n requerida, por lo que no est&aacute; avalado el documento\".</em></p>\r\n<p>Asimismo, Marrufo Torres explic&oacute; que: <em>\"la supuesta deuda a esa empresa Consultora no se justifica, ya que de forma oficial la SHyCP entreg&oacute; documentos a los Diputados que evidencian que nunca existi&oacute; la compensaci&oacute;n fiscal que se deb&iacute;a devolver al Poder Legislativo, e incluso la dependencia federal rechaz&oacute; todos los tr&aacute;mites de la empresa L&oacute;pez Castro, que se realizaron a trav&eacute;s de 22 Folios de los Avisos de Compensaciones realizados por el despacho\".</em></p>\r\n<p>El mes de Julio del 2012, el Coordinador de los Diputados del PRI, Roberto Antonio Marrufo Torres, afirm&oacute; en rueda de prensa que tienen pruebas que comprueban esa situaci&oacute;n. De hecho, adelant&oacute; que como Fracci&oacute;n, los Diputados del Revolucionario Institucional solicitar&iacute;an al Presidente de la Mesa Directiva del Legislativo, el Diputado Sergio Armando Ch&aacute;vez D&aacute;valos, que <em>\"instruya al Director Jur&iacute;dico para que presente las demandas y denuncias civiles y penales necesarias, para hacer frente a este acto inaudito, ventajoso y falaz, que ha ocasionado inseguridad a los trabajadores del Poder Legislativo, descalabro financiero a la instituci&oacute;n, gastos innecesarios y lo peor, nos pone frente a una situaci&oacute;n de aparente irregularidad, cuando queda demostrado que no hubo compensaciones, ni cumplimiento por parte de la empresa Consultores L&oacute;pez Castro y Asociados S.A. de C.V., y no porque lo diga un servidor, sino porque la misma Secretar&iacute;a de Hacienda y Cr&eacute;dito P&uacute;blico ya lo confirm&oacute; y quien en su momento tomar&aacute;, seguramente, tambi&eacute;n las acciones legales que correspondan\".</em></p>\r\n<p><strong>5.</strong>- Sin embargo, a la fecha se mantiene el proceso jur&iacute;dico que se sigue entre el Poder Legislativo y la empresa L&oacute;pez Castro y C&iacute;a. S.A. de C.V.; mismo que se ventila ante el Juzgado Quinto de Distrito en Materia Civil en el Estado de Jalisco, bajo el expediente n&uacute;mero 242/2010-2.</p>\r\n<p><strong>6.</strong>- Ante la serias irregularidades detectadas y el extra&ntilde;o manejo pol&iacute;tico que se le dio al expediente jur&iacute;dico L&oacute;pez Castro y C&iacute;a.,&nbsp; se exige una revisi&oacute;n y una investigaci&oacute;n del caso para saber qui&eacute;nes de los ex diputados y por qu&eacute; firmaron un acuerdo de reconocimiento de deuda con L&oacute;pez Castro. Puesto que no cumpli&oacute; con lo pactado, y s&iacute; exigi&oacute; el pago de sus honorarios, como si realmente hubiese conseguido algo para el Congreso. Adem&aacute;s de que no cumpli&oacute; con la prestaci&oacute;n, ocasion&oacute; que este Poder fuera omiso en el pago de los impuestos correspondientes de manera puntual, por la irresponsabilidad y enga&ntilde;o de la empresa contratada, quien asegur&oacute; que s&iacute; hubo tal compensaci&oacute;n.</p>\r\n<p><strong>7.</strong>- Adem&aacute;s existe el acuerdo legislativo 1540-LIX-12, aprobado el 10 de julio del 2012 que instruye a la Mesa Directiva para que solicite a la Secretar&iacute;a de Finanzas del Poder Ejecutivo del Gobierno del Estado de Jalisco, a fin de que d&eacute; cumplimiento en sus t&eacute;rminos al requerimiento del Juzgado Tercero de Distrito en Materia Civil en el Estado, en el juicio de amparo 1129/2011-1.</p>\r\n<p>Todo lo anterior derivo en una resoluci&oacute;n judicial federal misma que condena al H. Congreso del Estado, al pago de la cantidad de&nbsp; $ 58&acute; 066, 183.86 (CINCUENTA Y OCHO MILLONES SESENTA Y SEIS MIL CIENTO OCHENTA Y TRES PESOS 86/100 MONEDA NACIONAL), por lo que de realizarse el pago en los t&eacute;rminos ordenados por el Juez Tercero de Distrito en Materia Civil, significar&iacute;a dejar de cubrir rubros tan importantes como el pago de salarios, prestaciones a los trabajadores, pago de cuotas a las diversas Instituciones como el Instituto Mexicano del Seguro Social, Instituto de Pensiones del Estado de Jalisco, Servicio de Administraci&oacute;n Tributaria, as&iacute; como los ministrar los insumos indispensables para la operaci&oacute;n, funci&oacute;n y desempe&ntilde;o del H. Congreso del Estado de Jalisco.</p>\r\n<p>En suma, la firma L&oacute;pez Castro y C&iacute;a. S.A. de C.V., tiene en un pleito judicial al Congreso del Estado en el que exige una cantidad exorbitante e indebida, que pone en riesgo las ya d&eacute;biles finanzas del Poder Legislativo y lo involucra en una grave red de complicidades.</p>\r\n<p><strong>8.-</strong>La Ley de Responsabilidades de los Servidores P&uacute;blicos del Estado de Jalisco, en su <strong>art&iacute;culo 61</strong>, establece:</p>\r\n<p><strong><em>Art&iacute;culo 61.</em></strong><em> Todo servidor p&uacute;blico, para salvaguardar la legalidad, honradez, lealtad, imparcialidad y eficiencia que debe observar en el desempe&ntilde;o de su empleo, cargo o comisi&oacute;n, y sin perjuicio de sus derechos y obligaciones laborales, tendr&aacute; las siguientes obligaciones: I. Cumplir con la m&aacute;xima diligencia el servicio que le sea encomendado, y abstenerse de cualquier acto u omisi&oacute;n que cause la suspensi&oacute;n o deficiencia de dicho servicio o implique abuso o ejercicio indebido de su empleo, cargo o comisi&oacute;n;</em></p>\r\n<p><strong><em>XVI.</em></strong><em> Abstenerse de solicitar, aceptar, recibir u obtener por s&iacute; o por interp&oacute;sita persona, dinero o cualquier otra d&aacute;diva o servicio, para s&iacute; o para un tercero u ofrecer una promesa para hacer, dejar de hacer o promover algo legal o ilegal relacionado con sus funciones. Esta prevenci&oacute;n es aplicable hasta por un a&ntilde;o despu&eacute;s de que haya cumplido el ejercicio de sus funciones;</em></p>\r\n<p><em>XVIII.	Abstenerse de cualquier acto u omisi&oacute;n que implique incumplimiento de las disposiciones jur&iacute;dicas relacionadas con el servicio p&uacute;blico;</em></p>\r\n<p><strong>9.</strong>-&nbsp; Por su parte el C&oacute;digo Penal para el Estado de Jalisco, en los art&iacute;culos 120, 148, 151, 154, 250 y252 estipulan:</p>\r\n<p><strong> <em>Art&iacute;culo 120.</em></strong><em> Se impondr&aacute;n de uno a cuatro a&ntilde;os de prisi&oacute;n al que forme parte de una asociaci&oacute;n o banda de tres o m&aacute;s personas unidas con el prop&oacute;sito de delinquir, independientemente de la sanci&oacute;n que corresponda a los delitos que lleguen a cometerse.</em></p>\r\n<p><strong><em>Art&iacute;culo 148.</em></strong><em> Comete el delito de peculado todo servidor p&uacute;blico que, para usos propios o ajenos, distraiga de su objeto dinero, valores, fincas o cualquiera otra cosa perteneciente al Estado o municipio, organismo descentralizado o a un particular si, por raz&oacute;n de su cargo, los hubiese recibido en administraci&oacute;n, en dep&oacute;sito o por otra causa.</em></p>\r\n<p><strong><em>Art&iacute;culo 151.</em></strong><em> Se impondr&aacute;n de uno a cuatro a&ntilde;os de prisi&oacute;n a los servidores p&uacute;blicos que, indebidamente:</em></p>\r\n<p><em>I.	Substraigan, destruyan u oculten documentos, papeles u objetos que les hayan sido confiados, o a los que tengan acceso por raz&oacute;n de su cargo;</em></p>\r\n<p><em>Cuando se sustraigan, destruyan, alteren, oculten o se impida el acceso a la informaci&oacute;n financiera de las entidades fiscalizadas requerida por la Auditor&iacute;a Superior del estado de Jalisco para dictaminar las&nbsp; cuentas p&uacute;blicas, la pena se aumentar&aacute; en una mitad y, en este caso, no se tendr&aacute; beneficio de libertad provisional bajo cauci&oacute;n.</em></p>\r\n<p><strong><em>Art&iacute;culo 154.</em></strong><em> Se impondr&aacute;n de uno a cuatro a&ntilde;os de prisi&oacute;n y multa de veinte a cien d&iacute;as de salario m&iacute;nimo, a los servidores p&uacute;blicos que incurran en alguno de los siguientes casos:&nbsp;</em></p>\r\n<p><em>VII.	Ejecutar actos, o incurrir en omisiones, que produzcan un da&ntilde;o o concedan una ventaja indebida a los interesados en un negocio, o a cualquier otra persona;</em></p>\r\n<p><strong><em>Art&iacute;culo 250.</em></strong><em> Comete el delito de fraude, el que, enga&ntilde;ando a alguno o aprovech&aacute;ndose del error en que &eacute;ste se halle, se haga il&iacute;citamente de una cosa o alcance un lucro o beneficio indebido, para s&iacute; o para otro.&nbsp;</em></p>\r\n<p><em>VIII. Al que simulare un juicio, un contrato, un acto o escrito judicial, con perjuicio de otro para obtener cualquier beneficio indebido;</em></p>\r\n<p><strong><em>Art&iacute;culo 252. </em></strong><em>Las mismas penas se&ntilde;aladas en el art&iacute;culo anterior se impondr&aacute;n:</em></p>\r\n<p><em>VIII. Al que simulare un juicio, un contrato, un acto o escrito judicial, con perjuicio de otro para obtener cualquier beneficio indebido.</em></p>\r\n<p><em></em></p>\r\n<p><strong>10.</strong>- De los antecedentes transcritos, quien suscribe el presente acuerdo, considera necesario presentarlo a este Pleno con car&aacute;cter de urgente e instruir a la Mesa Directiva para que realice todas las acciones jur&iacute;dicas, administrativas y legales correspondientes para denunciar la comisi&oacute;n de delitos penales ante las instancias competentes a efectos de no incurrir en la misma situaci&oacute;n que nuestros antecesores, quienes por omisi&oacute;n violaron la ley al no haber presentado las denuncias penales correspondientes por el caso de la Consultora L&oacute;pez y Castro y que evidencia graves irregularidades que deber&aacute;n ser sancionadas.</p>\r\n<p>Por lo anteriormente expuesto y fundado, someto a la consideraci&oacute;n de esta Asamblea la siguiente Iniciativa de:</p>\r\n<p><strong>ACUERDO LEGISLATIVO</strong></p>\r\n<p><strong>POR EL QUE SE APRUEBA SUSCRIBIR Y PRESENTAR LA DENUNCIA PENAL QUE SE FORMULA EN CONTRA DE QUIEN O QUIENES RESULTEN RESPONSABLESY POR LOS DELITOS QUE PROCEDAN EN EL CASO DE LA EMPRESA CONSULTORA L&Oacute;PEZ CASTRO Y COMPA&Ntilde;&Iacute;A, S.A. DE C.V.</strong></p>\r\n<p><strong>ANEXANDO PARA TALES EFECTOS EL PROYECTO DE DENUNCIA PARA QUE SEA SUSCRITO POR LOS DIPUTADOS DE ESTA LEGISLATURA.</strong></p>\r\n<p><strong>&Uacute;NO. Se instruye:</strong></p>\r\n<ol>\r\n<li>A la Mesa Directiva, para que una vez suscrita la denuncia penal, se presente ante la Procuradur&iacute;a de Justicia del Estado de Jalisco a efecto de que se proceda al deslinde de responsabilidades, se haga el esclarecimiento de los hechos, se proceda contra quienes resulten responsables y se sancione en los t&eacute;rminos de la legislaci&oacute;n penal por la acci&oacute;n, comisi&oacute;n u omisi&oacute;n de il&iacute;citos en perjuicio del erario y patrimonio p&uacute;blico del Congreso del Estado de Jalisco.&nbsp;</li>\r\n<li>A la Secretar&iacute;a General y Direcci&oacute;n de Asuntos Jur&iacute;dicos, coadyuvar en el presente caso aportando a la Procuradur&iacute;a General de Justicia del Estado los nuevos indicios con que cuente y aquellos que en el futuro se tengan, a efecto de que pueda procesarse penalmente a todos aquellos servidores p&uacute;blicos y ex servidores p&uacute;blicos que hayan actuado ilegalmente, por actos u omisiones constitutivos de delitos, en los t&eacute;rminos de la legislaci&oacute;n penal jalisciense, y en su caso, exigir la reparaci&oacute;n del da&ntilde;o patrimonial ocasionado a este Poder Legislativo.</li>\r\n<li>A la Mesa Directiva y al mismo tiempo se ordena: a los titulares de la Secretar&iacute;a General y de la Direcci&oacute;n de Asuntos Jur&iacute;dicos y Dictamen Legislativo, procedan a la brevedad al estudio, an&aacute;lisis, revisi&oacute;n y en su caso la promoci&oacute;n e impulso de cualquier otra acci&oacute;n y/o recurso jur&iacute;dico que sirva como defensa legal del Congreso ante cualquier pr&aacute;ctica administrativa irregular y/o actos&nbsp; administrativos ilegales; ante posibles o eventuales situaciones irregulares.</li>\r\n</ol>\r\n<p><strong>DOS.</strong> Se aprueba que los Diputados a t&iacute;tulo personal o de manera colegiada, actuando responsablemente y aportando elementos de prueba, procedan a denunciar y/o coadyuvar ante la autoridad competente, las conductas il&iacute;citas cometidas en el caso L&oacute;pez Castro y Compa&ntilde;&iacute;a, S.A. de C.V., por las personas involucradas y/o servidores p&uacute;blicos de las legislaturas pasadas que hubiesen participado en actos u omisiones en contravenci&oacute;n de cualquier disposici&oacute;n legal relacionada con el cumplimiento de sus obligaciones.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Atentamente</strong></p>\r\n<p><strong>Sal&oacute;n de Sesiones del Palacio Legislativo</strong></p>\r\n<p><strong>Guadalajara, Jalisco, a 12 de Diciembre de 2012.</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>DIP.&nbsp; V&Iacute;CTOR MANUEL S&Aacute;NCHEZ OROZCO</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','CASO LOPEZ CASTRO',1,1),(64,'<p><strong>H. CONGRESO DEL ESTADO DE JALISCO</strong></p>\r\n<p><strong>PRESENTE</strong>.</p>\r\n<p>&nbsp;</p>\r\n<p>Los suscritos diputados V&iacute;ctor Manuel S&aacute;nchez Orozco, Guillermo Mart&iacute;nez Mora,integrantes de la LX Legislatura del H. Congreso del Estado de Jalisco, con fundamento en lo dispuesto por los art&iacute;culos 22,numeral 1, fracci&oacute;n I; 147, numeral 1, fracci&oacute;n I; 150, 152, y 154 de la Ley Org&aacute;nica del Poder Legislativo del Estado de Jalisco, someto a consideraci&oacute;n del pleno la siguiente iniciativa de:</p>\r\n<p><strong>Acuerdo Legislativo mediante el cual se hace un atento y respetuoso exhorto al titular del Poder Ejecutivo Estatal, L.C.P. Emilio Gonz&aacute;lez M&aacute;rquez, para que en apego a las disposiciones legales y constitucionales ordene a la brevedad la expedici&oacute;n y publicaci&oacute;n del Reglamento de la Ley para el Desarrollo Integral del Adulto Mayor del Estado de Jalisco en el Peri&oacute;dico Oficial \"El Estado de Jalisco\".</strong></p>\r\n<p><strong>Asimismo, se instruye a la Comisi&oacute;n de Hacienda y Presupuesto, para que en el Presupuesto de Egresos del Gobierno del Estado de Jalisco para el ejercicio fiscal 2013, se contemple que los recursos correspondientes a la partida \"4414, Aportaci&oacute;n para el Desarrollo Humano en el Estado\" con destino etiquetado \"Programa Adultos Mayores\" destinados a los adultos mayores de 70 a&ntilde;os, se incrementen a la cantidad de $500&acute;000,000.00 (Quinientos Millones de Pesos 00/100 M.N.); a efecto de garantizar la atenci&oacute;n integral que necesita este sector y el disfrute pleno de sus derechos reconocidos internacionalmente, mediante la elaboraci&oacute;n y ejecuci&oacute;n de pol&iacute;ticas p&uacute;blicas, programas sociales y servicios de atenci&oacute;n, estrategias y acciones para la protecci&oacute;n, promoci&oacute;n, inclusi&oacute;n y reconocimiento social de los adultos mayores.</strong></p>\r\n<p>Fund&oacute; el presente acuerdo con base en la siguiente:</p>\r\n<p>&nbsp;</p>\r\n<p><strong>EXPOSICI&Oacute;N DE MOTIVOS</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>1.-</strong>De acuerdo con un estudio del Consejo Estatal de Poblaci&oacute;n (Coepo), se espera que para 2030, en el conjunto de municipios que integran la Zona Metropolitana de Guadalajara (ZMG), el grupo de edad de 65 a&ntilde;os y m&aacute;s casi triplique su poblaci&oacute;n respecto a 2007, al pasar de 204 mil a 603 mil personas.</p>\r\n<p>Asimismo, de acuerdo a datos del Instituto Nacional de las Personas Adultas Mayores <em>\"tres millones de adultos mayores se hallan dentro de la poblaci&oacute;n econ&oacute;micamente activa, pero de &eacute;stos, cerca de dos millones trabajan en el sector informal, sin sueldo fijo, sin seguro ni prestaciones, y s&oacute;lo uno de cada cinco recibe una pensi&oacute;n\".</em></p>\r\n<p>Adem&aacute;s de este total, las cifras muestran que aproximadamente siete millones de adultos mayores se encuentran en condici&oacute;n de pobreza, aproximadamente un mill&oacute;n de esta poblaci&oacute;n se encuentra en condiciones de pobreza y marginaci&oacute;n extrema y poco m&aacute;s de mill&oacute;n y medio de este total, presenta alguna discapacidad que los excluye todav&iacute;a m&aacute;s.</p>\r\n<p>Alma Covarrubias Hern&aacute;ndez, secretaria t&eacute;cnica del Consejo Estatal de la Salud para la Atenci&oacute;n del Envejecimiento (COASEN), destac&oacute; que actualmente se necesitan pol&iacute;ticas claras y leyes acordes a las necesidades reales, ya que todo lo que aqueja a los adultos mayores repercute en la familia y en la sociedad.</p>\r\n<p><strong>2.-</strong>En suma, este incremento en el n&uacute;mero de adultos mayores en la ZMG obliga a que la ciudad se prepare para enfrentar este fen&oacute;meno, lo cual, seg&uacute;n un estudio del Consejo Estatal de Poblaci&oacute;n (Coepo), requiere la implementaci&oacute;n de medidas de todos los niveles de Gobierno, pero tambi&eacute;n de parte de la sociedad tapat&iacute;a.</p>\r\n<p>Todo con el prop&oacute;sito de preparar a la comunidad para enfrentar el inminente envejecimiento de la poblaci&oacute;n y todos los problemas que traer&aacute; consigo.</p>\r\n<p><strong>En Jalisco el principal problema de la poblaci&oacute;n mayor es que el 70% carecen de pensi&oacute;n o jubilaci&oacute;n</strong>, por lo que tienen que seguir trabajando o depender de alg&uacute;n familiar, adem&aacute;s de que existe una baja escolaridad, seg&uacute;n datos del Consejo Estatal de Poblaci&oacute;n.</p>\r\n<p><strong>3.-</strong>Perspectivas la Organizaci&oacute;n de las Naciones Unidas (ONU) establecen que <em>\"la fuerza de trabajo envejecer&aacute;\",</em> debido a que prev&eacute;n que los mayores de 50 a&ntilde;os constituir&aacute;n casi la tercera parte de la poblaci&oacute;n en edad laboral para 2050.</p>\r\n<p>De acuerdo con los criterios de la Organizaci&oacute;n de las Naciones Unidas, una poblaci&oacute;n se considera envejecida cuando la proporci&oacute;n de personas mayores de 60 y m&aacute;s a&ntilde;os alcanza m&aacute;s del 10% y en Jalisco este fen&oacute;meno ocurrir&aacute; en el 2015, por eso es importante trabajar en pol&iacute;ticas adecuadas para la atenci&oacute;n.</p>\r\n<p><strong>4.-</strong>En el Censo de Poblaci&oacute;n y Vivienda 2010, realizado por el INEGI, se contaron 112 millones 336 mil 538 habitantes en M&eacute;xico.</p>\r\n<p>En 2010 el Censo de Poblaci&oacute;n y Vivienda del Inegi registr&oacute; 10.1 millones de personas adultas de m&aacute;s de 60 a&ntilde;os, quienes corren el riesgo constante de sufrir las consecuencias negativas de percepciones prejuzgadas, cuyas consecuencias van del desempleo al abandono y la negaci&oacute;n de oportunidades y derechos fundamentales.</p>\r\n<p>El estado de M&eacute;xico, el Distrito Federal, Veracruz y Jalisco son los estados con mayor poblaci&oacute;n, juntos concentran un total de 39 020 818 personas, es decir, 34.7% de residentes en el pa&iacute;s</p>\r\n<p><strong>5.-</strong> La informaci&oacute;n estad&iacute;stica: Censo de Poblaci&oacute;n y Vivienda 2010 que proporciona el INEGI, refiere que: <em>\"en el 2010, en el Estado de Jalisco viven: 7,350, 682 habitantes (Mujeres - 3 750 041 / Hombres - 3 600 641).</em></p>\r\n<p><em>En el comparativo nacional Jalisco ocupa el lugar 4 a nivel nacional por su n&uacute;mero de habitantes\".</em></p>\r\n<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td valign=\"middle\">\r\n<p>&nbsp;</p>\r\n</td>\r\n<td valign=\"middle\">\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\" valign=\"middle\">\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://cuentame.inegi.org.mx/monografias/informacion/jal/poblacion/default.aspx?tema=me&amp;e=14\">http://cuentame.inegi.org.mx/monografias/informacion/jal/poblacion/default.aspx?tema=me&amp;e=14</a></p>\r\n<p><strong>6.-</strong>En Jalisco existen alrededor de 600 mil adultos mayores y el crecimiento de este grupo de poblaci&oacute;n en pa&iacute;ses en desarrollo para 2025 ser&aacute; de entre ocho y 12 por ciento, inform&oacute; la secretaria t&eacute;cnica del Consejo Estatal de la Salud para la Atenci&oacute;n del Envejecimiento (COESAEN), Alma Angelina Covarrubias Hern&aacute;ndez.</p>\r\n<p><strong>7.-</strong>De acuerdo con proyecciones del Instituto Nacional de la Personas Adultas Mayores (Inapam), en 2050 habr&aacute; cerca de 33 millones de adultos mayores, quienes no tienen garantizada una pensi&oacute;n ni una fuente de empleo para sobrevivir.</p>\r\n<p>En M&eacute;xico, diariamente 800 personas pasan a formar parte del sector de poblaci&oacute;n de mayores de 60 a&ntilde;os, de los cuales, s&oacute;lo 20 por ciento gozar&aacute; de una pensi&oacute;n.</p>\r\n<p><strong>8.-</strong>Manuel Ordorica, dem&oacute;grafo del Colegio de M&eacute;xico, indic&oacute; que al aumentar la esperanza de vida de los mexicanos a 75 a&ntilde;os, el tema de la poblaci&oacute;n envejecida debe convertirse en un asunto central para el Estado, porque <em>\"lo que dejemos de hacer hoy repercutir&aacute; en el futuro de varias generaciones\".</em></p>\r\n<p>El especialista asever&oacute; que<em> las jubilaciones son el tema de atenci&oacute;n del siglo 21 y de las d&eacute;cadas venideras, debido a que en los pr&oacute;ximos 40 a&ntilde;os la poblaci&oacute;n mayor de 60 a&ntilde;os se multiplicar&aacute; por cinco.</em></p>\r\n<p><strong>9.-</strong>En ese sentido, Luis Garc&iacute;a L&oacute;pez, primer visitador general de la Comisi&oacute;n Nacional de Derechos Humanos (CNDH), mencion&oacute; que es necesario que el gobierno federal tome <em>medidas preventivas en el &aacute;mbito jurisdiccional y econ&oacute;mico,\"pues en la actualidad son un grupo que ante la falta de apoyos econ&oacute;micos se someten a los apoyos que las familias les den\".</em></p>\r\n<p>Seg&uacute;n datos del Consejo Nacional de Poblaci&oacute;n (Conapo), 40 por ciento de los adultos mayores vive en pobreza extrema, sobreviviendo al d&iacute;a con menos de 22 pesos.</p>\r\n<p>Al respecto, Garc&iacute;a L&oacute;pez se&ntilde;al&oacute;: <em>\"El problema que enfrenta hoy la persona envejecida es grave, se enfrenta a pocas oportunidades de empleo y muchos de los pensionados viven con ingresos que van de los mil a los 3 mil pesos, la mayor&iacute;a con un salario m&iacute;nimo o dos\".</em></p>\r\n<p>Si a lo anterior, le sumamos el hecho de que la poblaci&oacute;n, adulta mayor en la entidad, padece de enfermedades cr&oacute;nico degenerativas, por lo que sus gastos tambi&eacute;n aumentan. Actualmente en M&eacute;xico, las personas de 80 a&ntilde;os constituyen el 14 por ciento de la poblaci&oacute;n de adultos mayores, por lo que el sistema de salud tiene ante s&iacute; el reto de hacer frente a una nueva forma de atenderlas. Lo que se convierte en un problema grave de salud p&uacute;blica.</p>\r\n<p><em>\"Por ello, tenemos que ver desde ahora c&oacute;mo se va a garantizar la vigencia de su derecho a la pensi&oacute;n y ver qu&eacute; vamos a hacer con las dos o tres generaciones que vienen en los pr&oacute;ximos 40 a&ntilde;os, porque si ahora no contamos con un sistema de pensiones fuerte y s&oacute;lido, en las futuras d&eacute;cadas el resultado ser&aacute; desastroso y vamos a tener muchos problemas\".</em></p>\r\n<p><a href=\"http://www.milenio.com/cdb/doc/impreso/9028711\"><em>http://www.milenio.com/cdb/doc/impreso/9028711</em></a></p>\r\n<p><strong>10.-</strong> En definitiva, el envejecimiento de la poblaci&oacute;n constituye un desaf&iacute;o para las pol&iacute;ticas y programas econ&oacute;micos sociales que deben ser implementados para mantener est&aacute;ndares aceptables de bienestar social y calidad de vida en la poblaci&oacute;n en general y en particular de las personas adultas mayores. El grupo de personas de 60 a&ntilde;os y m&aacute;s de edad est&aacute; creciendo a una velocidad mayor que los dem&aacute;s grupos en nuestra poblaci&oacute;n, lo que ocasionar&aacute; una alta tasa de dependencia, y la econom&iacute;a del pa&iacute;s no ha crecido a un ritmo que pueda subsanar la modificaci&oacute;n de la pir&aacute;mide poblacional. La expectativa de vida ha cambiado en forma importante en los &uacute;ltimos 60 a&ntilde;os (1950 era de 55 a&ntilde;os y en 2010 alcanz&oacute; 78 a&ntilde;os). Hoy una de cada nueve personas en el mundo tiene 60 a&ntilde;os o m&aacute;s. En 2050, seg&uacute;n las proyecciones de las Naciones Unidas, una persona de cada cinco ser&aacute; de 60 a&ntilde;os o m&aacute;s. M&eacute;xico no est&aacute; fuera de este contexto. Actualmente las personas de 80 a&ntilde;os constituyen el 14 por ciento de la poblaci&oacute;n de adultos mayores. Para 2050, el 20 por ciento de la poblaci&oacute;n mayor tendr&aacute; 80 a&ntilde;os o m&aacute;s. Las mujeres rebasan en n&uacute;mero y porcentaje a los hombres (H= 46.5 por ciento, M= 53.5 por ciento en Jalisco), puesto que las mujeres tienen mayor expectativa de vida.</p>\r\n<p><strong>11.-</strong> Afrontar el envejecimiento y que nuestros adultos mayores lleguen en mejores condiciones a esta etapa, son retos y desaf&iacute;osque no solo competen al sistema de salud, sino a toda la organizaci&oacute;n social de nuestro pa&iacute;s, desde la econom&iacute;a, pol&iacute;ticas p&uacute;blicas y programas espec&iacute;ficos, como la agricultura, la industria, el comercio, los medios de difusi&oacute;n, educaci&oacute;n y salud, entre otros aspectos, ya que mantener un estilo de vida saludable no es cuesti&oacute;n solo de la etapa de la vejez, sino un asunto de toda la vida.</p>\r\n<p><strong>12.-<em>Los Resultados sobre personas adultas mayores de la Encuesta Nacional&nbsp; de Discriminaci&oacute;n en M&eacute;xico (Enadis) 2010</em></strong> muestran los niveles de exclusi&oacute;n, de falta de reconocimiento y de obstaculizaci&oacute;n de derechos y oportunidades fundamentales para llevar a cabo una vida digna y satisfactoria independientemente de la edad.</p>\r\n<p><strong>13.-</strong>Las personas adultas mayores, como todas las personas en el territorio nacional, tienen reconocidos los derechos humanos previstos en la Constituci&oacute;n Pol&iacute;tica de los Estados Unidos Mexicanos y en los tratados internacionales firmados y ratificados por el Estado mexicano, de acuerdo con la reforma constitucional en materia de derechos humanos publicada el 10 de junio de 2011, espec&iacute;ficamente en el art&iacute;culo 1o.&nbsp;</p>\r\n<p>Algunos de esos tratados internacionales son la Declaraci&oacute;n Universal de los Derechos Humanos; el Pacto Internacional de Derechos Civiles y Pol&iacute;ticos; el Pacto Internacional de Derechos Econ&oacute;micos, Sociales y Culturales; la Convenci&oacute;n Americana sobre Derechos Humanos, y el Protocolo Adicional a la Convenci&oacute;n Americana sobre Derechos Humanos en materia de Derechos Econ&oacute;micos, Sociales y Culturales, conocido como Protocolo de San Salvador, entre otros.</p>\r\n<p><strong>14.-</strong>En lo que corresponde al &aacute;mbito estatal, la Constituci&oacute;n Pol&iacute;tica del Estado de Jalisco estipula en su art&iacute;culo 15, fracci&oacute;n II, que:&nbsp;</p>\r\n<p><em>Los &oacute;rganos del poder p&uacute;blico del Estado proveer&aacute;n&nbsp; las condiciones para el ejercicio pleno de la libertad&nbsp; de los individuos y grupos que integran la sociedad y propiciar&aacute;n su participaci&oacute;n en la vida social, econ&oacute;mica, pol&iacute;tica y cultural de la entidad... Para ello:</em></p>\r\n<p><em>II. Se establecer&aacute; un sistema que coordine las acciones de apoyo e integraci&oacute;n social de las personas de edad avanzada para facilitarles una vida digna, decorosa y creativa; y se promover&aacute; el tratamiento, rehabilitaci&oacute;n e integraci&oacute;n a la vida productiva de las personas con discapacidad...</em></p>\r\n<p><strong>15.-</strong>Con fecha 15 de Septiembre del a&ntilde;o 2011, se publicola Ley para el Desarrollo Integral del Adulto Mayor del Estado de Jalisco, misma que entro en&nbsp; vigor el 16 de Septiembre del a&ntilde;o 2011.</p>\r\n<p>De conformidad al <strong>art&iacute;culo 1ero.</strong>de dicho texto normativo, dicha Ley: \"...<em>tiene por objeto establecer las condiciones necesarias para lograr la protecci&oacute;n, atenci&oacute;n, bienestar y desarrollo de los hombres y mujeres a partir de los sesenta a&ntilde;os de edad, para lograr su plena integraci&oacute;n al desarrollo social, econ&oacute;mico, pol&iacute;tico y cultural\".</em></p>\r\n<p>El <strong>art&iacute;culo 3ero.,</strong> de la misma Ley, establece que:&nbsp;</p>\r\n<p><strong>Art&iacute;culo 3&ordm;.-</strong><em>La vigilancia y aplicaci&oacute;n de esta ley estar&aacute; a cargo de:</em></p>\r\n<ol>\r\n<li><em>El Poder Ejecutivo, por conducto de las secretar&iacute;as, organismos y dependencias de la administraci&oacute;n p&uacute;blica estatal en el &aacute;mbito de sus respectivas competencias y jurisdicciones; as&iacute; como los organismos p&uacute;blicos descentralizados y el Sistema Estatal para el Desarrollo Integral de la Familia del Estado de Jalisco;</em></li>\r\n<li><em>....</em></li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p><strong>16.-</strong>Como se puede apreciar, en ambas leyes se evidencia la importancia de que el Estado garantice que los adultos mayores tengan la oportunidad de integrarse a una vida digna, donde no se les nieguen oportunidades de ninguna clase. Se debe velar porque no sean marginados o segregados por los dem&aacute;s grupos sociales, a efecto de garantizar el pleno respeto a sus derechos humanos. El avance de la edad no debe significar cultural o socialmente la disminuci&oacute;n de las capacidades de los individuos y mucho menos la&nbsp; disminuci&oacute;n de los derechos de la persona humana.</p>\r\n<p><strong>17.-</strong>El art&iacute;culo transitorio segundo de la <strong>Ley para el Desarrollo Integral del Adulto Mayor del Estado de Jalisco</strong>, establece:</p>\r\n<p><strong>SEGUNDO.-</strong><em>El titular del Ejecutivo del Estado deber&aacute; expedir el reglamento de la presente ley, en los t&eacute;rminos de la fracci&oacute;n VIII del art&iacute;culo 50 de la Constituci&oacute;n Pol&iacute;tica del Estado de Jalisco.</em></p>\r\n<p><em></em></p>\r\n<p><strong>18.</strong>- La fracci&oacute;n VIII del art&iacute;culo 50 de la Constituci&oacute;n Pol&iacute;tica del Estado de Jalisco, se&ntilde;ala que:</p>\r\n<p><strong>Art&iacute;culo 50.-</strong> Son facultades y obligaciones del Gobernador del Estado:</p>\r\n<p><em>VIII. Expedir los reglamentos que resulten necesarios, a fin de proveer en la esfera administrativa, la exacta observancia de las leyes y para el buen despacho de la administraci&oacute;n p&uacute;blica.</em></p>\r\n<p><strong>19.-</strong> Para la debida, oportuna y exacta aplicaci&oacute;n de la Ley para el Desarrollo Integral del Adulto Mayor del Estado de Jalisco, se hace necesario contar con su propio reglamento, que le proporcione&nbsp; las reglas necesarias para la atenci&oacute;n, asistencia integral y el desarrollo humano de los adultos mayores.</p>\r\n<p><strong>20.</strong>- Con el fin de apoyar el desarrollo integral y humano de los adultos mayores, el Poder Ejecutivo del Estado, por conducto de la Secretar&iacute;a de DesarrolloHumano, implemento el Programa Estatal Estrategiapara la Atenci&oacute;n de Adultos Mayores \"Vive Grande\". Dicho programa incluye las siguientes modalidades: 1. Apoyoecon&oacute;mico, 2. Apoyo funerario, 3. Vinculaci&oacute;n a otros Programas Sociales, ya sea del Gobierno Federal,Estatal o Municipal, siempre y cuando por la naturaleza del tipo de apoyo no se est&eacute; generando duplicidad;todo de acuerdo a la disponibilidad presupuestal.</p>\r\n<p><strong>21.</strong>- La Ley para el Desarrollo Integral del Adulto Mayor del Estado de Jalisco, determina quela Secretar&iacute;a de Desarrollo Humano es la dependencia a la que corresponde coordinar e implementar lasacciones que se requieran para promover el desarrollo integral de los adultos mayores, as&iacute; como coordinary ejecutar las pol&iacute;ticas de asistencia social y atenci&oacute;n integral de los mismos; coordinar la promoci&oacute;n yseguimiento de los programas de atenci&oacute;n de los adultos mayores y propiciar la celebraci&oacute;n de conveniosde colaboraci&oacute;n con instituciones y organismos p&uacute;blicos, sociales y privados para realizar acciones deatenci&oacute;n dirigidas a los adultos mayores.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>22.-</strong>Con la finalidad de otorgar pensiones alimenticias a personas mayores de 70 a&ntilde;os que viven encondiciones de marginaci&oacute;n o desamparo, que les permitan ampliar sus alternativas de bienestar y mejorarsu calidad de vida, con fecha 11 once de mayo de 2007 dos mil siete, mediante Acuerdo Gubernamentaln&uacute;mero PF/AE/041-068/07, se cre&oacute; el Programa de Atenci&oacute;n a los Adultos Mayores.</p>\r\n<p><strong>23.</strong>- El art&iacute;culo Transitorio D&eacute;cimo Octavo del Presupuesto de Egresos del Gobierno del Estado de Jalisco,vigente para el ejercicio fiscal 2012 dos mil doce, establece que los recursos correspondientes a la partida\"4414, Aportaci&oacute;n para el Desarrollo Humano en el Estado\" con destino etiquetado \"Programa AdultosMayores\" ser&aacute;n destinados a los adultos mayores de 70 a&ntilde;os que no sean pensionados ni jubilados, quehabiten en localidades mayores a 30,000 treinta mil habitantes o en aquellas localidades en que no existacobertura por parte del Gobierno Federal; focalizando el apoyo a aquellos que se encuentren en situaci&oacute;necon&oacute;mica vulnerable, respecto a la distribuci&oacute;n del mismo, se llevar&aacute; a cabo de manera proporcional a lapoblaci&oacute;n y equitativa entre las respectivas regiones del Estado.</p>\r\n<p>Para el cumplimiento de tales prop&oacute;sitos el Poder Ejecutivo del Estado de Jalisco, con fecha 24 veinticuatro de Febrero del 2012 doce, expidi&oacute; las Reglas de Operaci&oacute;n del Programa Estrategia de Atenci&oacute;n a los Adultos Mayores \"VIVE GRANDE\", en el cual se establecen los mecanismoscon los que ha de operar durante la anualidad 2012 dos mil doce.</p>\r\n<p><strong>24.- </strong>El presupuesto estatal aprobado para la ejecuci&oacute;n del Programa asciende a la cantidad de $200&acute;000,000.00 (Doscientos Millones de Pesos 00/100 M.N.); estipulado en el en el Presupuesto de Egresos, vigente para el ejercicio fiscal 2012 dos mil doce.</p>\r\n<p><strong>25.- </strong>El art&iacute;culo transitorio tercero de dichasReglas de Operaci&oacute;n publicadas en el Peri&oacute;dico Oficial \"El Estado de Jalisco\", establece:</p>\r\n<p><strong>TERCERO</strong></p>\r\n<p><em>Las presentes Reglas de Operaci&oacute;n estar&aacute;n vigentes hasta el momento en el que sea publicado el Reglamento de la Ley para el Desarrollo Integral del Adulto Mayor del Estado de Jalisco.</em></p>\r\n<p><strong>25.-</strong>Por todo lo antes expuesto, nosotros como legisladores, debemos ser capaces de responder a estas importantes e imperantes necesidades, mediante leyes orientadas a atender a las personas mayores, garantizando la prestaci&oacute;n simult&aacute;nea de cuidados asistenciales y sociales; leyes que permitan que los adultos sean incorporados a la vida social, cultural y econ&oacute;mica; para evitar el abandono, el menosprecio, el abuso, la violencia y el olvido del cual son en muchos casos sujetos los adultos mayores, por considerar err&oacute;neamente que ya no son socialmente &uacute;tiles ni productivos.</p>\r\n<p><strong>21.</strong>- Si bien es cierto que existen leyes en el Estado de Jalisco y a nivel nacional que son enfocadas al adulto mayor, es necesario promover que se cumplan, as&iacute; como vigilar que exista la debida y adecuada reglamentaci&oacute;n en la materia, que posibiliten su observancia.</p>\r\n<p>Por lo anteriormente expuesto y motivado, con fundamento en el art&iacute;culo 152 p&aacute;rrafo 1, de la Ley Org&aacute;nica del Poder Legislativo del Estado de Jalisco y dem&aacute;s consideraciones legales antes se&ntilde;aladas, sometemos a consideraci&oacute;n de esta H. Asamblea Legislativa, el&nbsp; siguiente:</p>\r\n<p><strong>ACUERDO LEGISLATIVO:</strong></p>\r\n<p><strong>PRIMERO.SE ENV&Iacute;A ATENTO Y RESPETUOSO EXHORTO ALTITULAR DEL PODER EJECUTIVO ESTATAL, L.C.P. EMILIO GONZ&Aacute;LEZ M&Aacute;RQUEZ, PARA QUE EN APEGO A LAS DISPOSICIONES LEGALES Y CONSTITUCIONALES ORDENE A LA BREVEDAD LA EXPEDICI&Oacute;N Y PUBLICACI&Oacute;N DEL REGLAMENTO DE LA LEY PARA EL DESARROLLO INTEGRAL DEL ADULTO MAYOR DEL ESTADO DE JALISCO EN EL PERI&Oacute;DICO OFICIAL \"EL ESTADO DE JALISCO\".</strong></p>\r\n<p><strong>SEGUNDO. SE INSTRUYE A LA COMISI&Oacute;N DE HACIENDA Y PRESUPUESTO, PARA QUE EN EL PRESUPUESTO DE EGRESOS DEL GOBIERNO DEL ESTADO DE JALISCOPARA EL EJERCICIO FISCAL 2013, SE CONTEMPLE QUE LOS RECURSOS CORRESPONDIENTES A LA PARTIDA \"4414, APORTACI&Oacute;N PARA EL DESARROLLO HUMANO EN EL ESTADO\" CON DESTINO ETIQUETADO \"PROGRAMA ADULTOS MAYORES\" DESTINADOS A LOS ADULTOS MAYORES DE 70 A&Ntilde;OS, SE INCREMENTEN A LA CANTIDAD DE $500&acute;000,000.00 (QUINIENTOS MILLONES DE PESOS 00/100 M.N.); A EFECTO DE GARANTIZAR LA ATENCI&Oacute;N INTEGRAL QUE NECESITA ESTE SECTOR Y EL DISFRUTE PLENO DE SUS DERECHOS RECONOCIDOS INTERNACIONALMENTE, MEDIANTE LA ELABORACI&Oacute;N Y EJECUCI&Oacute;N DE POL&Iacute;TICAS P&Uacute;BLICAS, PROGRAMAS SOCIALES Y SERVICIOS DE ATENCI&Oacute;N, ESTRATEGIAS Y ACCIONES PARA LA PROTECCI&Oacute;N, PROMOCI&Oacute;N, INCLUSI&Oacute;N Y RECONOCIMIENTO SOCIAL DE LOS ADULTOS MAYORES.</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Atentamente</strong></p>\r\n<p><strong>Sal&oacute;n de Sesiones del Palacio Legislativo</strong></p>\r\n<p><strong>Guadalajara, Jalisco, a 12 de Diciembre de 2012.</strong></p>\r\n<p><em>\"2012,&nbsp; A&ntilde;o de la Equidad y la Igualdad de Trato y Oportunidades entre Mujeres y Hombres de Jalisco\".</em></p>\r\n<p>&nbsp;</p>\r\n<p>______________________________________</p>\r\n<p><strong>DIPUTADO V&Iacute;CTOR MANUEL S&Aacute;NCHEZ OROZCO</strong></p>\r\n<p><strong></strong></p>\r\n<p>______________________________________</p>\r\n<p><strong></strong></p>\r\n<p><strong>DIP. GUILLERMO MART&Iacute;NEZ MORA</strong></p>\r\n<p>&nbsp;</p>','Desarrollo adulto mayor',1,1),(65,'<p>&nbsp;</p>\r\n<p><strong>CIUDADANOS&nbsp; DIPUTADOS&nbsp;</strong></p>\r\n<p><strong>PRESENTES&nbsp;</strong></p>\r\n<p>&nbsp;</p>\r\n<p>El suscrito Diputado <strong>V&Iacute;CTOR MANUEL S&Aacute;NCHEZ OROZCO</strong>, en ejercicio de las facultades que me conceden los art&iacute;culos 28 fracci&oacute;n 1, de la Constituci&oacute;n Pol&iacute;tica y de los art&iacute;culos 22 numeral 1, fracci&oacute;n I, 150, 152 Y 154 de la Ley Org&aacute;nica del Poder Legislativo, ambos ordenamientos del Estado de Jalisco, someto a la elevada consideraci&oacute;n de esta Honorable Asamblea la siguiente Iniciativa de Acuerdo Legislativo para lo cual formulo ante ustedes la siguiente:</p>\r\n<p><strong></strong></p>\r\n<p><strong>EXPOSICION DE MOTIVOS</strong></p>\r\n<p>I. Garantizar el correcto ejercicio del derecho a la informaci&oacute;n debe ser un compromiso de toda autoridad y funcionario de gobierno.&nbsp; Este derecho fundamental que constituye una de las facetas que integran el derecho a la informaci&oacute;n que la Constituci&oacute;n Pol&iacute;tica de los Estados Unidos Mexicanos reconoce expresamente en su art&iacute;culo 6&ordm;, se encuentra estrechamente vinculada con el respeto de la verdad y la transparencia.</p>\r\n<p>II. Como derecho fundamental est&aacute; enmarcado en la Declaraci&oacute;n Universal de los Derechos Humanos adoptada por la Asamblea General de la Organizaci&oacute;n de las Naciones Unidas (ONU) en su art&iacute;culo 19: <em>\"Todo individuo tiene derecho a la libertad de opini&oacute;n y de expresi&oacute;n; este derecho incluye el de no ser molestado a causa de sus opiniones, el de investigar y recibir informaciones y opiniones, y el de difundirlas, sin limitaci&oacute;n de fronteras, por cualquier medio de expresi&oacute;n\".</em></p>\r\n<p>III. La Constituci&oacute;n Pol&iacute;tica del Estado de Jalisco establece en su art&iacute;culo 4&deg; que <em>\"El derecho a la informaci&oacute;n p&uacute;blica ser&aacute; garantizado por el Estado en los t&eacute;rminos de esta Constituci&oacute;n y la ley respectiva\".</em></p>\r\n<p>Asimismo, la Ley de Informaci&oacute;n P&uacute;blica del Estado de Jalisco y sus Municipios, garantiza a toda persona conocer el proceso y la toma decisiones p&uacute;blicas, as&iacute; como solicitar, acceder, consultar, recibir, difundir, reproducir y publicar informaci&oacute;n en posesi&oacute;n de instituciones p&uacute;blicas o privadas que administren o apliquen recursos p&uacute;blicos.</p>\r\n<p>IV. El Estado genera informaci&oacute;n, y est&aacute; obligado a darla a conocer dada la nueva pol&iacute;tica de transparencia. El ciudadano posee el derecho de recibirla, pero cuando &eacute;sta no es suficiente, es incompleta, imprecisa, poco clara, o negada se interrumpe la fase de la retroalimentaci&oacute;n, toda vez que, se impide que el ciudadano tome una correcta decisi&oacute;n, induci&eacute;ndolo al error y a la falsa apreciaci&oacute;n de la realidad de esos actos de gobierno.</p>\r\n<p>V. La obligaci&oacute;n de cumplir con las responsabilidades en materia de informaci&oacute;n p&uacute;blica es un requisito sine qua non para transparentar y rendir cuentas a la sociedad, la cual demanda el correcto actuar del Estado en sus tres esferas de gobierno. Entendiendo que La informaci&oacute;n debe ser veraz, completa, objetiva, oportuna y asequible por igual a todos.</p>\r\n<p>VI. La transparencia y la rendici&oacute;n de cuentas son caracter&iacute;sticas de un Estado democr&aacute;tico. La primera entendida como la condici&oacute;n absolutamente necesaria de apertura de la funci&oacute;n administrativa, que debe guardar en todo momento el Estado; compromiso que asume a partir de cualquiera de sus organismos y que consiste en dar a conocer toda la informaci&oacute;n que genere sobre los asuntos p&uacute;blicos que le sean solicitados. Teniendo adem&aacute;s impl&iacute;cita la obligaci&oacute;n de no entorpecer u obstaculizar el libre flujo de informaci&oacute;n. El segundo elemento surge del concepto extra&iacute;do de la palabra en ingl&eacute;s accountability, que traducido al espa&ntilde;ol puede entenderse como control o fiscalizaci&oacute;n, derecho unilateral a favor del gobernado consecuencia del primero consistente en vigilar las acciones de gobierno por medio de la informaci&oacute;n que este mismo le proporcione, cerrando as&iacute; un ciclo del proceso de la comunicaci&oacute;n sin alteraciones.</p>\r\n<p>VII. El publicar la informaci&oacute;n que todo sujeto obligado posee, como parte del ejercicio cotidiano de transparentar los actos de gobierno de la administraci&oacute;n p&uacute;blica y el disponer de un Comit&eacute; de Clasificaci&oacute;n de la Informaci&oacute;n P&uacute;blica; son&nbsp; algunos de los aspectos institucionales y legales que deben ser observados puntualmente y de manera inexcusable por parte de los tres poderes p&uacute;blicos y sus instituciones; pues as&iacute; se lo exige la Ley de Informaci&oacute;n P&uacute;blica del Estado de Jalisco y sus Municipios.</p>\r\n<p>En efecto, el art&iacute;culo 27 establece:&nbsp;</p>\r\n<p><em>1. El Comit&eacute; se integra por:</em></p>\r\n<p><em>I. El titular del sujeto obligado cuando sea unipersonal o el representante oficial del mismo cuando sea un &oacute;rgano colegiado, quien lo presidir&aacute;;</em></p>\r\n<p><em>II. El titular de la Unidad, que fungir&aacute; como Secretario; y</em></p>\r\n<p><em>III. El titular del &oacute;rgano con funciones de control interno del sujeto obligado cuando sea unipersonal o el representante oficial del mismo cuando sea un &oacute;rgano colegiado.</em></p>\r\n<p><em>2. Los sujetos obligados cuyo titular sea un &oacute;rgano colegiado, pueden delegar mediante su reglamento interno de informaci&oacute;n p&uacute;blica, la funci&oacute;n del Comit&eacute; en el titular del &oacute;rgano administrativo de mayor jerarqu&iacute;a que dependa de ellos.</em></p>\r\n<p><em>3. Las funciones del Comit&eacute;, correspondientes a varios sujetos obligados, pueden concentrarse en un solo &oacute;rgano, por acuerdo del superior jer&aacute;rquico com&uacute;n a ellos.</em></p>\r\n<p>Por su parte el Reglamento de la Ley de Informaci&oacute;n P&uacute;blica del Estado de Jalisco y sus Municipios, en su art&iacute;culo 12, dispone:</p>\r\n<p><em>Art&iacute;culo 12. El Comit&eacute; se integrar&aacute; de conformidad con lo que establece el art&iacute;culo 27 de la Ley.</em></p>\r\n<p><em>En caso de que el sujeto obligado no cuente con un &oacute;rgano con funciones de control interno tal y como lo establece el art&iacute;culo 27 fracci&oacute;n III de la Ley, podr&aacute; fungir como miembro del Comit&eacute; el titular del &aacute;rea jur&iacute;dica del sujeto obligado, y en caso de que &eacute;ste sea el titular de la Unidad de Transparencia o no exista &aacute;rea jur&iacute;dica, ser&aacute; el titular del &aacute;rea administrativa.</em></p>\r\n<p>Asimismo, el Reglamento Interno de Informaci&oacute;n P&uacute;blica del Poder Legislativo del Estado de Jalisco, en su art&iacute;culo 9, con respecto al Comit&eacute; de Clasificaci&oacute;n, se&ntilde;ala:</p>\r\n<p><em>Art&iacute;culo 9. Comit&eacute; - Encargados </em></p>\r\n<p><em>1. En el Poder Legislativo del Estado, fungir&aacute;n como Comit&eacute;s:&nbsp;</em></p>\r\n<p><em>I. El Auditor Superior del Estado, para el sujeto obligado Auditor&iacute;a Superior del Estado;</em></p>\r\n<p><em>II. El &oacute;rgano que designe cada fracci&oacute;n parlamentaria, para los sujetos obligados, fracciones y grupos parlamentarias, y para las oficinas y casas de enlace de los diputados;</em></p>\r\n<p><em>III. El Secretario, para los dem&aacute;s sujetos obligados en el Poder Legislativo del Estado.</em></p>\r\n<p><em>2. El Secretario podr&aacute; elegir al menos tres titulares de sus dependencias para que lo auxilien, pero nunca podr&aacute; delegar su funci&oacute;n, excepto en caso de ausencia temporal.</em></p>\r\n<p><em>3. Los Comit&eacute;s deber&aacute;n solicitar al Instituto la aprobaci&oacute;n de sus criterios generales y particulares de clasificaci&oacute;n de la informaci&oacute;n reservada y confidencial en t&eacute;rminos del Reglamento Estatal.</em></p>\r\n<p>El mismo Reglamento en su art&iacute;culo 12, con respecto a la Unidad de Transparencia, ordena que:</p>\r\n<p><em>Art&iacute;culo 12. Unidad - Encargados</em></p>\r\n<p><em>1. En el Poder Legislativo del Estado fungir&aacute;n como Unidades:</em></p>\r\n<p><em>I. En la Auditor&iacute;a Superior del Estado, la Direcci&oacute;n Jur&iacute;dica; y</em></p>\r\n<p><em>II. La Direcci&oacute;n de asuntos Jur&iacute;dicos y Dictamen Legislativo de la Secretar&iacute;a General del Congreso, para los dem&aacute;s sujetos obligados del Poder Legislativo del Estado.</em></p>\r\n<p>VIII. La informaci&oacute;n que se encuentra en poder del Estado es p&uacute;blica, atendiendo al principio de publicidad. El Estado puede no proporcionar o negar el acceso s&oacute;lo aquella informaci&oacute;n clasificada expresamente como reservada o confidencial.</p>\r\n<p>Al respecto, es atendible la siguiente tesis que hace referencia no solo al derecho de buscar, acceder y recibir informaci&oacute;n, sino tambi&eacute;n de difundirla:</p>\r\n<p><strong><em>TRANSPARENCIA Y ACCESO A LA INFORMACI&Oacute;N P&Uacute;BLICA. NO AFECTA EL INTER&Eacute;S JUR&Iacute;DICO DEL TITULAR DE LA INFORMACI&Oacute;N, LA RESOLUCI&Oacute;N DEL INSTITUTO FEDERAL DE ACCESO A LA INFORMACI&Oacute;N P&Uacute;BLICA GUBERNAMENTAL QUE OBLIGA AL DE PROTECCI&Oacute;N Y AHORRO BANCARIO A PROPORCIONAR INFORMACI&Oacute;N A UN GOBERNADO, PREVIA ELIMINACI&Oacute;N DE LOS DATOS RESERVADOS, CONFIDENCIALES O CLASIFICADOS.</em></strong><em> El art&iacute;culo 6o. de la Constituci&oacute;n Federal establece que el derecho a la informaci&oacute;n ser&aacute; garantizado por el Estado, sin que esto signifique un perjuicio para las entidades p&uacute;blicas o privadas porque el acceso a la informaci&oacute;n no s&oacute;lo obliga a proporcionarla o a exhibir la documentaci&oacute;n que soliciten los gobernados sino tambi&eacute;n a difundir la que no sea confidencial, reservada o clasificada, que es la orientaci&oacute;n y contenido de la Ley Federal de Transparencia y Acceso a la Informaci&oacute;n P&uacute;blica Gubernamental que reglamenta dicha disposici&oacute;n constitucional.</em></p>\r\n<p>Semanario Judicial de la Federaci&oacute;n y su Gaceta. Novena &Eacute;poca, Tribunales Colegiados de Circuito, Tomo XXII, septiembre de 2005, Tesis aislada, I.4&ordm;.A. 499, p. 1584.</p>\r\n<p>IX. Es necesario dar un nuevo impulso al derecho a la informaci&oacute;n, a partir de un nuevo esquema institucional en el que todas las &aacute;reas administrativas y legislativas responsables se involucren y comprometan a posibilitar el real acceso a la informaci&oacute;n, atendiendo los principios propios del derecho a la informaci&oacute;n.</p>\r\n<p>X. La informaci&oacute;n, objeto contenido del derecho, y por tanto tambi&eacute;n del deber, no puede ser otra que aquella cuya naturaleza y calidad sea adecuada para satisfacer los intereses jur&iacute;dicamente protegidos: la realizaci&oacute;n personal y social en la participaci&oacute;n de los ciudadanos en la vida p&uacute;blica.</p>\r\n<p>XI. Para ello es necesario que se lleve a cabo un proceso de revisi&oacute;n de facultades y determinaci&oacute;n de responsabilidades a las &aacute;reas legalmente facultadas en la materia para que cumplan con sus funciones y tareas encomendadas en la Ley de la materia. As&iacute; como verificar&nbsp; la correcta&nbsp; integraci&oacute;n del Comit&eacute; de Clasificaci&oacute;n de Informaci&oacute;n P&uacute;blica del Poder Legislativo,&nbsp; la&nbsp; designaci&oacute;n y&nbsp; asunci&oacute;n de las atribuciones, con las facultades y competencias que le son legalmente conferidas por la Ley de Informaci&oacute;n P&uacute;blica y su Reglamento, adem&aacute;s del propio reglamento interno en materia de transparencia.</p>\r\n<p>XII. Toda vez que la tarea de determinar su contenido y alcances no se ha concretado resulta un imperativo el atender y resolver de manera pronta y oportuna los pendientes que se tienen en esta asignatura para no incurrir en responsabilidades legales y cumplir con lo que establece la Constituci&oacute;n, leyes y dem&aacute;s ordenamientos jur&iacute;dicos aplicables al respecto.</p>\r\n<p>Por lo anteriormente expuesto, se propone a esta H. Asamblea Legislativa la siguiente iniciativa de&nbsp;</p>\r\n<p><strong></strong></p>\r\n<p><strong>ACUERDO LEGISLATIVO</strong></p>\r\n<p><strong>&Uacute;NICO.-</strong> Por el que se gira atento exhorto a la Mesa Directiva de la Quincuag&eacute;sima Sexta Legislatura para que se someta a consideraci&oacute;n&nbsp; y aprobaci&oacute;n del Pleno, la integraci&oacute;n del Comit&eacute; de Clasificaci&oacute;n de la Informaci&oacute;n P&uacute;blica,&nbsp; designaci&oacute;n y&nbsp; asunci&oacute;n de las atribuciones y en su caso la revisi&oacute;n de facultades y determinaci&oacute;n de responsabilidades a las &aacute;reas legalmente facultadas en la materia para que cumplan con sus funciones y tareas encomendadas en la Ley de Informaci&oacute;n P&uacute;blica del Estado. &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>ATENTAMENTE</p>\r\n<p>SALON DE SESIONES DEL CONGRESO DEL ESTADO</p>\r\n<p>GUADALAJARA, JALISCO A FEBRERO DE 2013</p>\r\n<p><strong></strong></p>\r\n<p><strong></strong></p>\r\n<p><strong>DIPUTADO V&Iacute;CTOR MANUEL S&Aacute;NCHEZ OROZCO.</strong></p>\r\n<p><strong>LX LEGISLATURA</strong></p>\r\n<p>&nbsp;</p>','INICIATIVA EXHORTO INFO PUBLICA',1,1),(66,'<p>&nbsp;</p>\r\n<p><strong></strong></p>\r\n<p>El suscrito <strong>DIPUTADO V&Iacute;CTOR MANUEL S&Aacute;NCHEZ OROZCO</strong> en ejercicio de las facultades que me conceden los art&iacute;culos 28 fracci&oacute;n I, de la Constituci&oacute;n Pol&iacute;tica; 22 fracci&oacute;n I, 145, 147 fra8cci&oacute;n I, 148, y 154 de la Ley Org&aacute;nica del Poder Legislativo; ambos ordenamientos del Estado de Jalisco, propongo a esta Honorable Asamblea, la presente Iniciativa de ley que tiene por objeto reformar el numeral 4 del art&iacute;culo 69, y derogar las fracciones I y II del numeral 1 del art&iacute;culo 78de la Ley de Informaci&oacute;n P&uacute;blica del Estado de Jalisco y sus Municipios, al efecto me permito hacer la siguiente:</p>\r\n<p><strong>EXPOSICI&Oacute;N DE MOTIVOS</strong></p>\r\n<p>El derecho a la informaci&oacute;n es uno de los sostenes del Estado de derecho; no puede haber vigencia del Estado de derecho sin derecho a la informaci&oacute;n, ya que &eacute;ste a su vez garantiza la libertad de pensamiento. En consecuencia, sin derecho a la informaci&oacute;n tampoco podr&iacute;a ejercerse el control ciudadano de la gesti&oacute;n p&uacute;blica.</p>\r\n<p>La informaci&oacute;n es un elemento imprescindible en el desarrollo del ser humano, ya que aporta elementos para que &eacute;ste pueda orientar su acci&oacute;n en la sociedad.</p>\r\n<p>El acceso a la informaci&oacute;n es una instancia necesaria para la participaci&oacute;n ciudadana y la protecci&oacute;n de los derechos civiles, dado que sin informaci&oacute;n adecuada, oportuna y veraz, la sociedad dif&iacute;cilmente se encuentre en condiciones &oacute;ptimas para participar en la toma de decisiones p&uacute;blicas.</p>\r\n<p>La existencia de leyes de transparencia implica un avance significativo en nuestro pa&iacute;s, a&uacute;n con todas las lagunas y quiz&aacute;s maniobras legislativas por no aprobar leyes que consideren verdaderos procedimientos f&aacute;ciles, expeditos y que garanticen la transparencia del quehacer gubernamental. Actualmente es un hecho que en los treinta y un Estados y el Distrito Federal que conforman la Rep&uacute;blica Mexicana existen leyes de transparencia y acceso a la informaci&oacute;n p&uacute;blica gubernamental.</p>\r\n<p>No podemos, ni debemos negar que los instrumentos jur&iacute;dicos, como cualquier acto humano siempre ser&aacute;n perfectibles, y que en algunas ocasiones ha habido notorias resistencias porque en esencia sus disposiciones recojan el &aacute;nimo y el esp&iacute;ritu de ser reales instrumentos que prioricen el principio de m&aacute;xima publicidad.</p>\r\n<p>El actuar del Estado como sujeto obligado del derecho a la informaci&oacute;n, debe&nbsp; entenderse desde dos &aacute;ngulos: el primero manteniendo una actitud pasiva absteni&eacute;ndose&nbsp; de cualquier acto de represi&oacute;n en contra del gobernado; y segundo garantizando el ejercicio de las libertades de acceder, investigar y recibir informaci&oacute;n que conforman&nbsp; este derecho, ya sea que el gobernado mantenga una actitud pasiva es decir se informe mediante la rendici&oacute;n de cuentas del Estado o manteniendo una actitud activa a trav&eacute;s de la petici&oacute;n de informaci&oacute;n dada la nueva pol&iacute;tica de transparencia.</p>\r\n<p>Investigar, acceder, recibir y difundir&nbsp; informaci&oacute;n, son la libertades que&nbsp; conforman el contenido del derecho a la informaci&oacute;n, por las cuales se logra su pleno&nbsp; ejercicio y todo individuo que viva en el territorio nacional sea persona f&iacute;sica o moral,&nbsp; es titular de &eacute;ste.</p>\r\n<p>El derecho a la informaci&oacute;n se convierte en una garant&iacute;a social cuando&nbsp; los ciudadanos o gobernados, en su conjunto, necesitan de cierta informaci&oacute;n en poder del Estado para la correcta toma de decisiones; se convierte en una garant&iacute;a individual,&nbsp; cuando en el ejercicio de este derecho un individuo en lo particular requiere informaci&oacute;n al Estado, pues le es necesaria para su propio beneficio, en el ejercicio de otro derecho.&nbsp;</p>\r\n<p>Independientemente de que el derecho a la informaci&oacute;n se considere una garant&iacute;a&nbsp; individual o una garant&iacute;a social, es indudable que estamos ante un derecho humano, y es a la luz de esta interpretaci&oacute;n en que ha de encontrarse mayor amplitud y satisfacci&oacute;n en su ejercicio.</p>\r\n<p>Los mecanismos internacionales y regionales de derechos humanos han asegurado el derecho del p&uacute;blico a ser informado y han solicitado a los gobiernos que adopten legislaciones sobre las siguientes l&iacute;neas: la legislaci&oacute;n debe estar guiada por el principio de m&aacute;xima revelaci&oacute;n; las instituciones p&uacute;blicas deber&aacute;n estar obligadas a publicar informaci&oacute;n clave; los &oacute;rganos p&uacute;blicos deber&aacute;n promover activamente el gobierno abierto; las excepciones deber&aacute;n ser establecidas de manera clara y acotada y deber&aacute;n estar sujetas a pruebas estrictas de \"da&ntilde;o\" e \"inter&eacute;s p&uacute;blico\"; los individuos deben tener el derecho a apelar una negativa de revelar informaci&oacute;n por parte de un cuerpo administrativo independiente, que opere de manera justa, puntual y econ&oacute;mica.</p>\r\n<p>El derecho a la informaci&oacute;n se incorpor&oacute; a nuestra Constituci&oacute;n a trav&eacute;s de una propuesta del Ejecutivo Federal quien, reconoci&eacute;ndolo como un derecho fundamental, y obediente a su tradici&oacute;n hist&oacute;rica, lo conceb&iacute;a como la libertad pol&iacute;tica&nbsp; de manifestaci&oacute;n de ideas. Y, a&uacute;n cuando no se reconociera como tal, en los art&iacute;culos&nbsp; sexto y s&eacute;ptimo se consagraban ya algunas de las libertades que integran a este derecho.&nbsp;</p>\r\n<p>Hay que reconocer que, el reconocimiento del derecho a la informaci&oacute;n, a pesar de su&nbsp; falta de precisi&oacute;n, di&oacute;, aunque de manera retardada y despu&eacute;s de m&uacute;ltiples discusiones&nbsp; sobre su naturaleza jur&iacute;dica, la oportunidad de interpretar de modo muy abierto sobre&nbsp; su contenido, d&aacute;ndole nuevos matices y alcances a partir del a&ntilde;o 2000. Principalmente,&nbsp; como consecuencia de la demanda ciudadana de conocer todo sobre el celebrado proceso&nbsp; electoral. M&aacute;s no as&iacute; en cuanto a sus principios, a&uacute;n a pesar de que, en la exposici&oacute;n de motivos de la iniciativa se reconoce que, en la redacci&oacute;n de la norma constitucional,&nbsp; \"solo le corresponde el enunciado y principios&nbsp; de las normas imperativas cuyas formas&nbsp; de operatividad ser&aacute;n objeto de la ley reglamentaria\".</p>\r\n<p>&nbsp;</p>\r\n<p>Desde este momento podemos advertir la facultad de acceso a la informaci&oacute;n p&uacute;blica&nbsp; gubernamental, m&aacute;s a&uacute;n al mencionarse de que ser&aacute; el Estado el garante de este derecho.&nbsp;</p>\r\n<p>Quien m&aacute;s puede serlo que el Estado, el cual es garante de los derechos de todos sus&nbsp; gobernados. &Eacute;sta redundancia solo se justifica, si la informaci&oacute;n a la que se refiere es la&nbsp; que se encuentra en su poder.</p>\r\n<p>1.- La Constituci&oacute;n Pol&iacute;tica de los Estados Unidos Mexicanos, en su art&iacute;culo 6to., establece el derecho a la informaci&oacute;n, disponiendo al efecto lo siguiente:</p>\r\n<p><strong>Articulo 6o.-</strong><em>La manifestaci&oacute;n de las ideas no ser&aacute; objeto de ninguna inquisici&oacute;n judicial o administrativa, sino en el caso de que ataque a la moral, los derechos de tercero, provoque alg&uacute;n delito, o perturbe el orden p&uacute;blico; el derecho de r&eacute;plica ser&aacute; ejercido en los t&eacute;rminos dispuestos por la ley. </em><strong><em>El derecho a la informaci&oacute;n ser&aacute; garantizado por el estado.</em></strong></p>\r\n<p><em>Para el ejercicio del derecho de acceso a la informaci&oacute;n, la federaci&oacute;n, los estados y el distrito federal, en el &aacute;mbito de sus respectivas competencias, se regir&aacute;n por los siguientes principios y bases:&nbsp;</em></p>\r\n<p><em>I. Toda la informaci&oacute;n en posesi&oacute;n de cualquier autoridad, entidad, &oacute;rgano y organismo federal, estatal y municipal, es p&uacute;blica y solo podr&aacute; ser reservada temporalmente por razones de inter&eacute;s publico en los t&eacute;rminos que fijen las leyes. en la interpretaci&oacute;n de este derecho deber&aacute; prevalecer el principio de m&aacute;xima publicidad.&nbsp;</em></p>\r\n<p><em>II. La informaci&oacute;n que se refiere a la vida privada y los datos personales ser&aacute; protegida en los t&eacute;rminos y con las excepciones que fijen las leyes.&nbsp;</em></p>\r\n<p><em>III. Toda persona, sin necesidad de acreditar inter&eacute;s alguno o justificar su utilizaci&oacute;n, tendr&aacute; acceso gratuito a la informaci&oacute;n p&uacute;blica, a sus datos personales o a la rectificaci&oacute;n de estos.&nbsp;</em></p>\r\n<p><em>IV. Se establecer&aacute;n mecanismos de acceso a la informaci&oacute;n y procedimientos de revisi&oacute;n expeditos. Estos procedimientos se sustanciaran ante &oacute;rganos u organismos especializados e imparciales, y con autonom&iacute;a operativa, de gesti&oacute;n y de decisi&oacute;n.&nbsp;</em></p>\r\n<p><em>V. Los sujetos obligados deber&aacute;n preservar sus documentos en archivos administrativos actualizados y publicaran a trav&eacute;s de los medios electr&oacute;nicos disponibles, la informaci&oacute;n completa y actualizada sobre sus indicadores de gesti&oacute;n y el ejercicio de los recursos p&uacute;blicos.&nbsp;</em></p>\r\n<p><em>VI. Las leyes determinaran la manera en que los sujetos obligados deber&aacute;n hacer p&uacute;blica la informaci&oacute;n relativa a los recursos p&uacute;blicos que entreguen a personas f&iacute;sicas o morales.&nbsp;</em></p>\r\n<p><em>VII. La inobservancia a las disposiciones en materia de acceso a la informaci&oacute;np&uacute;blicaser&aacute; sancionada en los t&eacute;rminos que dispongan las leyes.&nbsp;</em></p>\r\n<p>2.- La Constituci&oacute;n Pol&iacute;tica del Estado de Jalisco, en su art&iacute;culo 4, p&aacute;rrafo tercero, se&ntilde;ala:</p>\r\n<p><strong>Art&iacute;culo 4&ordm;.-&nbsp; ...</strong></p>\r\n<p><em>El derecho a la informaci&oacute;n p&uacute;blica ser&aacute; garantizado por el Estado en los t&eacute;rminos de esta Constituci&oacute;n y la ley respectiva.</em></p>\r\n<p>La misma Constituci&oacute;n Estatal en su art&iacute;culo 9, dispone:</p>\r\n<p><strong>Art&iacute;culo 9&ordm;.-</strong><em>El derecho a la informaci&oacute;n p&uacute;blica tendr&aacute; los siguientes fundamentos:</em></p>\r\n<p><em>I. La consolidaci&oacute;n del estado democr&aacute;tico y de derecho en Jalisco;</em></p>\r\n<p><em>II. La transparencia y la rendici&oacute;n de cuentas de las autoridades estatales y municipales, mediante la apertura de los &oacute;rganos p&uacute;blicos y el registro de los documentos en que constan las decisiones p&uacute;blicas y el proceso para la toma de &eacute;stas;</em></p>\r\n<p><em>III. La participaci&oacute;n ciudadana en la toma de decisiones p&uacute;blicas, mediante el ejercicio del derecho a la informaci&oacute;n;</em></p>\r\n<p><em>IV. La informaci&oacute;n p&uacute;blica veraz y oportuna;</em></p>\r\n<p><em>V. La protecci&oacute;n de la informaci&oacute;n confidencial de las personas; y</em></p>\r\n<p><em>VI. La promoci&oacute;n de la cultura de transparencia, la garant&iacute;a del derecho a la informaci&oacute;n y la resoluci&oacute;n de las controversias que se susciten por el ejercicio de este derecho a trav&eacute;s del Instituto de Transparencia e Informaci&oacute;n P&uacute;blica de Jalisco.</em></p>\r\n<p><em>El Instituto es un &oacute;rgano p&uacute;blico aut&oacute;nomo, con personalidad jur&iacute;dica y patrimonio propio.</em></p>\r\n<p><em>Contar&aacute; con un Consejo conformado por un Presidente y dos consejeros titulares, as&iacute; como por los suplentes respectivos; los miembros del Consejo ser&aacute;n nombrados mediante el voto de dos terceras partes de los integrantes del Congreso del Estado, o por insaculaci&oacute;n, conforme a los requisitos y procedimientos que establezca la ley.</em></p>\r\n<p><em>El Instituto tendr&aacute; las atribuciones espec&iacute;ficas que la ley le otorgue; sus resoluciones ser&aacute;n definitivas e inatacables, vinculantes y deber&aacute;n ser cumplidas por los Poderes, entidades y dependencias p&uacute;blicas del Estado, Ayuntamientos y por todo organismo, p&uacute;blico o privado, que reciba, administre o aplique recursos p&uacute;blicos estatales o municipales.</em></p>\r\n<p>3.- Por su parte la Ley de la materia, esto es la Ley de Informaci&oacute;n P&uacute;blica del Estado de Jalisco y sus Municipios, contiene toda una serie de dispositivos normativos que garantizan el derecho a la informaci&oacute;n p&uacute;blica, entre otros los siguientes:</p>\r\n<p><strong>Art&iacute;culo 1. -</strong><em>Esta ley es de orden e inter&eacute;s p&uacute;blico, y reglamentaria de los art&iacute;culos 6&ordm; de la Constituci&oacute;n Pol&iacute;tica de los Estados Unidos Mexicanos, y 4&ordm; p&aacute;rrafo tercero y 9&ordm; de la Constituci&oacute;n Pol&iacute;tica del Estado de Jalisco.</em></p>\r\n<p><strong>Art&iacute;culo 2.-</strong><em>Esta ley tiene por objeto regular:</em></p>\r\n<p><em>I...</em></p>\r\n<p><em>II...</em></p>\r\n<p><em>III. El acceso a la informaci&oacute;n p&uacute;blica del Estado de Jalisco y sus municipios; y</em></p>\r\n<p><em>IV...</em></p>\r\n<p><strong>Art&iacute;culo 3.-</strong></p>\r\n<p>1.<em>Informaci&oacute;n p&uacute;blica es toda informaci&oacute;n que generen, posean o administren los sujetos obligados, como consecuencia del ejercicio de sus facultades o atribuciones, o el cumplimiento de sus obligaciones, sin importar su origen, utilizaci&oacute;n o el medio en el que se contenga o almacene.</em></p>\r\n<p><em>2. La informaci&oacute;n p&uacute;blica se clasifica en:</em></p>\r\n<p><em>I. Informaci&oacute;n p&uacute;blica de libre acceso, que es la no considerada como protegida, cuyo acceso al p&uacute;blico es permanente, libre, f&aacute;cil, gratuito e inmediato, y se divide en:</em></p>\r\n<p><em>a) Informaci&oacute;n p&uacute;blica fundamental, que es la informaci&oacute;n p&uacute;blica de libre acceso que debe publicarse y difundirse de manera universal, permanente y actualizada, por ministerio de ley, sin que se requiera solicitud de parte interesada; y</em></p>\r\n<p><em>b) Informaci&oacute;n p&uacute;blica ordinaria, la informaci&oacute;n p&uacute;blica de libre acceso no considerada como fundamental; y</em></p>\r\n<p><em>II..</em></p>\r\n<p><em>a)...</em></p>\r\n<p><em>b)...</em></p>\r\n<p><em></em></p>\r\n<p><strong>Art&iacute;culo 5.-&nbsp;</strong></p>\r\n<p><em>1. </em><strong><em>Son principios rectores en la interpretaci&oacute;n y aplicaci&oacute;n de esta ley:</em></strong></p>\r\n<p><em>I. Gratuidad: la b&uacute;squeda y acceso a la informaci&oacute;n p&uacute;blica es gratuita;</em></p>\r\n<p><em>II. Inter&eacute;s general: el derecho a la informaci&oacute;n p&uacute;blica es de inter&eacute;s general, por lo que no es necesario acreditar ning&uacute;n inter&eacute;s jur&iacute;dico particular en el acceso a la informaci&oacute;n p&uacute;blica, con excepci&oacute;n de la clasificada como confidencial;</em></p>\r\n<p><em>III. Libre acceso: en principio toda informaci&oacute;n p&uacute;blica es considerada de libre acceso, salvo la clasificada expresamente como reservada o confidencial;</em></p>\r\n<p><em>IV. M&aacute;xima publicidad: en caso de duda sobre la justificaci&oacute;n de las razones de inter&eacute;s p&uacute;blico que motiven la reserva temporal de la informaci&oacute;n p&uacute;blica, prevalecer&aacute; la interpretaci&oacute;n que garantice la m&aacute;xima publicidad de dicha informaci&oacute;n;</em></p>\r\n<p><em>V. M&iacute;nima formalidad: en caso de duda sobre las formalidades que deben revestir los actos jur&iacute;dicos y acciones realizados con motivo de la aplicaci&oacute;n de esta Ley, prevalecer&aacute; la interpretaci&oacute;n que considere la menor formalidad de aquellos;</em></p>\r\n<p><em>VI. Sencillez y celeridad: en todo tr&aacute;mite o procedimiento relativo al acceso a la informaci&oacute;n p&uacute;blica, en caso de duda se optar&aacute; por lo m&aacute;s sencillo o expedito;</em></p>\r\n<p><em>VII. Suplencia de la deficiencia: no puede negarse informaci&oacute;n por deficiencias formales de las solicitudes, los sujetos obligados y el Instituto deben suplir cualquier deficiencia formal, as&iacute; como orientar y asesorar para corregir cualquier deficiencia sustancial, de las solicitudes de los particulares en materia de informaci&oacute;n p&uacute;blica; y</em></p>\r\n<p><em>VIII. Transparencia: se debe buscar la m&aacute;xima revelaci&oacute;n de informaci&oacute;n, mediante la ampliaci&oacute;n unilateral del cat&aacute;logo de informaci&oacute;n fundamental.</em></p>\r\n<p><em></em></p>\r\n<p>De lo anterior se colige que todo obst&aacute;culo a un derecho es evidentemente una violaci&oacute;n. El principio de calidad o&nbsp; fidelidad de la informaci&oacute;n o tambi&eacute;n dicho por otros de veracidad de la informaci&oacute;n,&nbsp; fue concebido en un principio como la obligaci&oacute;n impuesta a los profesionales de la&nbsp; informaci&oacute;n de comprobar la realidad de los hechos que hac&iacute;an noticia, esto que es&nbsp; aplicable en el derecho de la informaci&oacute;n, debe tambi&eacute;n ser atra&iacute;do por el derecho a lainformaci&oacute;n. Pero antes de seguir con la propuesta, veamos un criterio del Pleno de la&nbsp; Suprema Corte de Justicia de la Naci&oacute;n, que de sustento alo afirmado con antelaci&oacute;n:</p>\r\n<p><strong><em>GARANT&Iacute;AS INDIVIDUALES (DERECHO A LA INFORMACI&Oacute;N). LA&nbsp; CONFIGURA EL INTENTO DE LOGRAR LA IMPUNIDAD DE LAS&nbsp; AUTORIDADES QUE ACT&Uacute;AN DENTRO DE UNA CULTURA DEL&nbsp; ENGA&Ntilde;O, DE LA MAQUINACI&Oacute;N Y DEL OCULTAMIENTO, POR&nbsp; INFRINGIR EL ARTICULO 6o. TAMBI&Eacute;N CONSTITUCIONAL.</em></strong><em>&nbsp; El&nbsp; art&iacute;culo 6o. constitucional, in fine, establece que \"el derecho a la informaci&oacute;n&nbsp; ser&aacute; garantizado por el Estado\". Del an&aacute;lisis de los diversos elementos&nbsp; que concurrieron en su creaci&oacute;n se deduce que esa garant&iacute;a se encuentra&nbsp; estrechamente vinculada con el respeto de la verdad. Tal derecho es, por tanto,&nbsp; b&aacute;sico para el mejoramiento de una conciencia ciudadana que contribuir&aacute; a que&nbsp; &eacute;sta sea m&aacute;s enterada, lo cual es esencial para el progreso de nuestra sociedad. </em><em>Si las autoridades p&uacute;blicas, elegidas o designadas para servir y defender a la&nbsp; sociedad, asumen ante &eacute;sta actitudes que permitan atribuirles conductas faltas&nbsp; de &eacute;tica, al entregar a la comunidad una informaci&oacute;n manipulada, incompleta,&nbsp; condicionada a intereses de grupos o personas, que le vede la posibilidad&nbsp; de conocer la verdad para poder participar libremente en la formaci&oacute;n de la&nbsp; voluntad general, incurren en violaci&oacute;n grave a las garant&iacute;as individuales</em><em>,&nbsp; pues su proceder conlleva a considerar que existe en ellas la propensi&oacute;n de&nbsp; incorporar a nuestra vida pol&iacute;tica, lo que podr&iacute;amos llamar la cultura del&nbsp; enga&ntilde;o, de la maquinaci&oacute;n y de la ocultaci&oacute;n, en lugar de enfrentar la verdad y&nbsp; tomar acciones r&aacute;pidas y eficaces para llegar a &eacute;sta y hacerla del conocimiento&nbsp; de los gobernados.</em></p>\r\n<p>&nbsp;</p>\r\n<p>La informaci&oacute;n representa un bien humano, en cuanto a que de esta, depende la toma de nuestras decisiones. Contar con informaci&oacute;n manipulada, incompleta o falsa representa un menoscabo a ese bien humano y, por ende, una violaci&oacute;n al derecho a la informaci&oacute;n reconocido como un derecho fundamental. Teniendo en cuenta que &eacute;ste es un derecho de doble v&iacute;a, la desinformaci&oacute;n no s&oacute;lo representa la violaci&oacute;n de derechos al individuo a quien se le proporciona sino a todas aquellas personas que se encuentren en el lugar de receptora de &eacute;sta.</p>\r\n<p>4.- Qu&eacute; para hacer efectiva la cultura de la&nbsp; transparencia, as&iacute; como garantizar el derecho a la informaci&oacute;n p&uacute;blica de libre acceso, adem&aacute;s de las leyes, reglamentos, manuales y criterios que para tales efectos se contemplan; es necesario considerar la adopci&oacute;n de nuevas figuras jur&iacute;dicas que potencien los principios que rigen en materia de informaci&oacute;n p&uacute;blica, tales como el de oportunidad, m&aacute;xima publicidad, libre acceso, transparencia, sencillez y celeridad en todo tr&aacute;mite o procedimiento relativo al acceso a la informaci&oacute;n p&uacute;blica.</p>\r\n<p>5.- Actualmente en el art&iacute;culo 53 de la Ley Federal de Transparencia y Acceso a la Informaci&oacute;n P&uacute;blica Gubernamental, se establece:</p>\r\n<p><strong>Art&iacute;culo 53.-</strong><em>La falta de respuesta a una solicitud de acceso, en el plazo se&ntilde;alado en el Art&iacute;culo 44, se entender&aacute; resuelta en sentido positivo, por lo que la dependencia o entidad quedar&aacute; obligada a darle acceso a la informaci&oacute;n en un periodo de tiempo no mayor a los 10 d&iacute;as h&aacute;biles, cubriendo todos los costos generados por la reproducci&oacute;n del material informativo, salvo que el Instituto determine que los documentos en cuesti&oacute;n son reservados o confidenciales...</em></p>\r\n<p>Se dispone en este art&iacute;culo de la normatividad federal, la figura conocida como afirmativa o positiva ficta que se traduce en la omisi&oacute;n volitiva de la autoridad con consecuencias legales; es decir, hablamos doctrinariamente de una figura jur&iacute;dica constituida por el Silencio Administrativo, que por consecuencia vulnera en este caso nuestro derecho de acceso a la informaci&oacute;n, consagrado en el art&iacute;culo 6&ordm; de nuestra Carta Magna.</p>\r\n<p>6.- En la ley estatal de informaci&oacute;n p&uacute;blica vigente frente al silencio de la autoridad, sea por falta de respuesta a una solicitud de informaci&oacute;n p&uacute;blica o por no notificar la resoluci&oacute;n de una solicitud en el plazo que establece la ley, se establece en el art&iacute;culo 78&nbsp; la procedencia del recurso de revisi&oacute;n; mismo que si se examina con atenci&oacute;n el objeto de dicho recurso en el art&iacute;culo 77, se observar&aacute; que:</p>\r\n<p><strong>Art&iacute;culo 77.-</strong></p>\r\n<ol>\r\n<li><em></em><strong><em>El recurso de revisi&oacute;n tiene por objeto</em></strong><em>que el Instituto revise la resoluci&oacute;n del sujeto obligado sobre la procedencia de las solicitudes de informaci&oacute;n p&uacute;blica </em><em>y resuelva con plenitud de jurisdicci&oacute;n lo conducente.</em></li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>Es decir, que dicho recurso es s&oacute;lo para efectos de examinar la legalidad de la resoluci&oacute;n o respuesta emitida por el sujeto obligado a las solicitudes de informaci&oacute;n p&uacute;blica; pero no para los supuestos de una omisi&oacute;n del sujeto&nbsp; obligado ante la falta u ausencia de resoluci&oacute;n; que err&oacute;neamente el art&iacute;culo 78 pretende subsanar, al incluir dentro de la procedencia del recurso de revisi&oacute;n la falta de respuesta o notificaci&oacute;n de la resoluci&oacute;n por parte del sujeto obligado a solicitudes de informaci&oacute;n.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>7.- En raz&oacute;n de lo anterior, se hace necesaria la incorporaci&oacute;n de una figura jur&iacute;dica tan noble como la AFIRMATIVA O POSITIVA FICTA, en la Ley de Informaci&oacute;n P&uacute;blica del Estado de Jalisco y sus Municipios. Puesto, que se insiste, que en la tramitaci&oacute;n de solicitudes de informaci&oacute;n p&uacute;blica, se ha presentado el inconveniente y muchas veces la molestia para los usuarios solicitantes que al momento de ejercer su derecho de acceso a la informaci&oacute;n, como &uacute;nica respuesta a su leg&iacute;tima solicitud obtienen el \"silencio de la autoridad\", vi&eacute;ndose en la necesidad de recurrir&nbsp; a la tramitaci&oacute;n de recursos de revisi&oacute;n, situaci&oacute;n que por s&iacute; misma no garantiza la inmediatez en cuanto a la obtenci&oacute;n de la informaci&oacute;n, ni tampoco se garantiza el derecho de acceso a la informaci&oacute;n. Haciendo nugatorios los derechos consagrados en la Constituci&oacute;n Pol&iacute;tica Mexicana y la particular del Estado de Jalisco y la propia Leyen materia de informaci&oacute;n p&uacute;blica.</p>\r\n<p>8.- Tal inobservancia a las disposiciones en materia de acceso a la informaci&oacute;n p&uacute;blica, es a&uacute;n m&aacute;s censurable cuando la informaci&oacute;n que se requiere muchas veces es de la catalogada por Ley como fundamental y que los sujetos obligados deben publicar permanentemente en internet o en otros medios de f&aacute;cil acceso y comprensi&oacute;n para la poblaci&oacute;n. Misma que no deber&iacute;a ser requerida por el particular puesto que deber&iacute;a estar a disposici&oacute;n en todo momento y por los medios id&oacute;neos contemplados para tales efectos. De tal suerte que permita al p&uacute;blico el acceso permanente, libre, f&aacute;cil, gratuito e inmediato.</p>\r\n<p>9.- Uno de los grandes retos del derecho a la informaci&oacute;n, es el reconocimiento de la&nbsp; libertad de acceso como una de las modalidades de ejercerlo, m&aacute;s no as&iacute; como sin&oacute;nimo,&nbsp; toda vez que entenderlo de &eacute;sta manera ser&iacute;a limitarlo. Tampoco podemos limitarlo&nbsp; entendi&eacute;ndolo s&oacute;lo como la facultad de tener a la mano la informaci&oacute;n que se solicita&nbsp; para el mero estudio en las oficinas de informaci&oacute;n.&nbsp;</p>\r\n<p>El acceso es la acci&oacute;n encaminada a tener la informaci&oacute;n que fue el objeto de&nbsp; investigaci&oacute;n por parte del ciudadano, permite tenerla a la vista, estudiarla y en su caso&nbsp; decidir si quiere reproducirla y por tanto contar con la fuente que de sustento a sus&nbsp; opiniones e informaciones que desee difundir.&nbsp;</p>\r\n<p>El siguiente criterio del Tribunal Electoral del Poder Judicial de&nbsp; la Federaci&oacute;n, propone precisamente a la facilidad de acceso como un principio:</p>\r\n<p><em>Principio de facilidad de acceso:</em><em> Todos los &oacute;rganos p&uacute;blicos estar&aacute;n obligados a&nbsp; establecer sistemas internos abiertos y accesibles para garantizar el derecho del&nbsp; p&uacute;blico a recibir la informaci&oacute;n. En general, las dependencias deben designar a&nbsp; un individuo responsable de tramitar las solicitudes, subsanar deficiencias en la&nbsp; solicitud y, en general, garantizar el cumplimiento de la ley.</em></p>\r\n<p>&nbsp;</p>\r\n<p>10.- Qu&eacute; ante tales circunstancias y eventualidades ajenas a la voluntad de los interesados en ejercer su derecho a la informaci&oacute;n y para eficientar la respuesta de solicitudes de informaci&oacute;n p&uacute;blica sea esta de car&aacute;cter ordinaria, fundamental o de libre acceso, se propone incorporar la figura de afirmativa ficta a la Ley de Informaci&oacute;n P&uacute;blica del Estado de Jalisco y sus Municipios.</p>\r\n<p>11.- Del cuerpo de la presente iniciativa se desprenden las repercusiones jur&iacute;dicas y sociales que tendr&iacute;a a favor de los gobernados; en el aspecto econ&oacute;mico se ver&iacute;a reflejado en la reducci&oacute;n de la tramitolog&iacute;a a observar y la disminuci&oacute;n del fen&oacute;meno recursivo, ante la existencia de medidas m&aacute;s eficientes y eficaces que garanticen la cultura de la transparencia y el derecho al acceso a la informaci&oacute;n.</p>\r\n<p>Por lo anteriormente expuesto y de conformidad con los art&iacute;culos 148 y 154 de la Ley Org&aacute;nica del Poder Legislativo del Estado de Jalisco, tengo a bien presentar iniciativa de</p>\r\n<p><strong></strong></p>\r\n<p><strong>LEY</strong></p>\r\n<p><strong>QU&Eacute; MODIFICA EL NUMERAL 4 DEL ART&Iacute;CULO 69 Y DEROGA LAS FRACCIONES I Y II DEL ART&Iacute;CULO 78 DE LA LEY DE INFORMACI&Oacute;N P&Uacute;BLICA DEL ESTADO DE JALISCO Y SUS MUNICIPIOS.</strong></p>\r\n<p><strong>Art&iacute;culo Primero.- </strong>Se modifica elnumeral 4 del art&iacute;culo 69, y deroga las fracciones I y II del numeral 1 del art&iacute;culo 78 de la Ley de Informaci&oacute;n P&uacute;blica del Estado de Jalisco y sus Municipios, para quedar como sigue:</p>\r\n<p><strong></strong></p>\r\n<p><strong>Art&iacute;culo 69.- </strong>Solicitud de informaci&oacute;n - Resoluci&oacute;n</p>\r\n<p>...</p>\r\n<p>4-. <strong>La falta de respuesta a una solicitud de acceso o falta de notificaci&oacute;n de la resoluci&oacute;n al solicitante, en el plazo se&ntilde;alado, se entender&aacute; resuelta en sentido positivo, por lo que el sujeto obligado deber&aacute; darle acceso a la informaci&oacute;n en un periodo de tiempo no mayor a los 10 d&iacute;as h&aacute;biles, siempre que re&uacute;na los requisitos formales se&ntilde;alados en el art&iacute;culo 64 y cubriendo los costos generados por la reproducci&oacute;n del material informativo, salvo que el Instituto determine que los documentos en cuesti&oacute;n son reservados o confidenciales.</strong></p>\r\n<p><strong></strong></p>\r\n<p><strong>Art&iacute;culo 78.</strong>&nbsp; Recurso de revisi&oacute;n - Procedencia</p>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li><em>El recurso de revisi&oacute;n procede cuando con motivo de la presentaci&oacute;n de una solicitud de informaci&oacute;n p&uacute;blica, el sujeto obligado:</em></li>\r\n</ol>\r\n<p><em></em></p>\r\n<p><em>I. Niega total o parcialmente el acceso a informaci&oacute;n p&uacute;blica no clasificada como confidencial o reservada;</em></p>\r\n<p><em></em></p>\r\n<p><em>II. Niega total o parcialmente el acceso a informaci&oacute;n p&uacute;blica clasificada indebidamente como confidencial o reservada;</em></p>\r\n<p><em></em></p>\r\n<p><em>III. Niega total o parcialmente el acceso a informaci&oacute;n p&uacute;blica declarada indebidamente inexistente; y el solicitante anexe elementos indubitables de prueba de su existencia;</em></p>\r\n<p><em></em></p>\r\n<p><em>IV. Condiciona el acceso a informaci&oacute;n p&uacute;blica de libre acceso a situaciones contrarias o adicionales a las establecidas en la ley;&nbsp;</em></p>\r\n<p><em></em></p>\r\n<p><em>V. No permite el acceso completo o entrega de forma incompleta la informaci&oacute;n p&uacute;blica de libre acceso considerada en su resoluci&oacute;n; o</em></p>\r\n<p><em></em></p>\r\n<p><em>VI. Pretende un cobro adicional al establecido por la ley.</em></p>\r\n<p><em></em></p>\r\n<p><strong>TRANSITORIOS</strong></p>\r\n<p><strong>Primero.</strong>-&nbsp; Este decreto entrar&aacute; en vigor al d&iacute;a siguiente de su publicaci&oacute;n, en el Peri&oacute;dico Oficial \"El Estado de Jalisco\".</p>\r\n<p><strong>Segundo.</strong>- Se derogan todas las disposiciones que se opongan a lo establecido en el presente Decreto.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>ATENTAMENTE</strong></p>\r\n<p><strong>Guadalajara, Jalisco a Febrero de 2013</strong></p>\r\n<p><strong>SAL&Oacute;N DE SESIONES DEL CONGRESO DEL ESTADO</strong></p>\r\n<p><strong></strong></p>\r\n<p><strong>DIPUTADOV&Iacute;CTOR MANUEL S&Aacute;NCHEZ OROZCO</strong></p>\r\n<p><strong>LX LEGISLATURA</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','INICIATIVA TRANSPARENCIA 2013',2,1),(67,'<p><strong>H. CONGRESO DEL ESTADO DE JALISCO</strong></p>\r\n<p><strong>PRESENTE</strong>.</p>\r\n<p>&nbsp;</p>\r\n<p>El suscrito Diputado <strong>V&Iacute;CTOR MANUEL S&Aacute;NCHEZ OROZCO</strong>, integrante de la LX Legislatura del H. Congreso del Estado de Jalisco, con fundamento en lo dispuesto por los art&iacute;culos 22, numeral 1, fracci&oacute;n I; 147, numeral 1, fracci&oacute;n I; 150, 152, y 154 de la Ley Org&aacute;nica del Poder Legislativo del Estado de Jalisco, someto a su elevada consideraci&oacute;n la presente <strong>INICIATIVA DE ACUERDO LEGISLATIVO CON CAR&Aacute;CTER DE DICTAMEN</strong>, que propone al Pleno del Congreso:&nbsp;</p>\r\n<p>El ejercicio de una acci&oacute;n de Nulidad de Cosa Juzgada en contra de los actos derivados del Juicio Mercantil Ordinario 242/2010-II, del &iacute;ndice del Juzgado Quinto de Distrito en Materia Civil en el Estado, y particularmente del Convenio Judicial de fecha 22 de Marzo del a&ntilde;o 2011, acuerdo judicial que lo aprueba dictado el 30 de Mayo de 2011, asimismo contra las consecuencias y actos derivados, en el caso jur&iacute;dico de Consultores L&oacute;pez Castro y C&iacute;a. S.A. de C.V.</p>\r\n<p>Lo anterior,&nbsp; en base a la siguiente:</p>\r\n<p>&nbsp;</p>\r\n<p><strong>EXPOSICI&Oacute;N DE MOTIVOS</strong></p>\r\n<p><strong>1.-&nbsp; </strong>Qu&eacute; es el dominio p&uacute;blico que el H. Congreso del Estado, con fecha del mes de mayo del a&ntilde;o 2010, fue demandado por Consultores L&oacute;pez Castro y Compa&ntilde;&iacute;a, Sociedad An&oacute;nima de Capital Variable, por conducto de V&iacute;ctor Manuel Samaniego Mart&iacute;nez y otros.</p>\r\n<p><strong>2.</strong>- Qu&eacute; en el juicio promovido por&nbsp; V&iacute;ctor Manuel Samaniego Mart&iacute;nez y Javier Cenobio Ruiz Bonilla y Filiberto Ruiz G&oacute;mez, el primero en su car&aacute;cter de de Administrador General &Uacute;nico de Consultores L&oacute;pez Castro y C&iacute;a., Sociedad An&oacute;nima de Capital Variable, y lo segundos como apoderados de la citada empresa reclamaban al H. Congreso del Estado de Jalisco, el pago de honorarios por la cantidad hasta ese entonces que sumaba la cantidad de $ 42&acute;961,521.79 (CUARENTA Y DOS MILLONES NOVECIENTOS SESENTA Y UN MIL QUINIENTOS VEINTI&Uacute;N PESOS 79/100 MONEDA NACIONAL), por la revisi&oacute;n de erogaciones pagadas en exceso por concepto de impuesto sobre el producto del trabajo (ISPT). Dicha cantidad, seg&uacute;n la empresa, es el equivalente al 40% por ciento de las devoluciones o compensaciones que determinar&aacute; la Secretar&iacute;a de Hacienda y Cr&eacute;dito P&uacute;blico por concepto de ISR/ISPT retenidos en demas&iacute;a a los trabajadores del Congreso del Estado.</p>\r\n<p>Pagos que con posterioridad fueron exigidos mediante resoluci&oacute;n pronunciada con fecha 31 de Enero del a&ntilde;o en curso, misma que fuera confirmada por el Tercer Tribunal Colegiado en Materia Civil del Tercer Circuito de esta Entidad Federativa, con fecha&nbsp; 18 de Mayo del a&ntilde;o en curso, radicado bajo el toca de revisi&oacute;n principal n&uacute;mero 112/2012, y en el cual se condena al Congreso del Estado por el pago de <strong>$ 58&acute;066, 183.86 (CINCUENTA Y OCHO MILLONES SESENTA Y SEIS MIL CIENTO OCHENTA Y TRES PESOS 86/100 MONEDA NACIONAL).</strong></p>\r\n<p><strong>3.</strong>- Qu&eacute; a la fecha no est&aacute; acreditado por la actora del juicio mercantil que el Congreso del Estado hubiera recibido devoluciones de cantidades en exceso pagadas por impuesto sobre productos del trabajo correspondientes a los ejercicios fiscales 2006, 2007, 2008, 2009, lo cual constituye un requisito sine qua non para el pago de los honorarios, de conformidad con lo establecido en el acuerdo emitido por la Comisi&oacute;n de Administraci&oacute;n en fecha 2 de Marzo de 2009.</p>\r\n<p><strong>4.</strong>- Que en virtud de lo anterior, se presumen la comisi&oacute;n de actos ejecutados en contravenci&oacute;n de leyes prohibitivas o de inter&eacute;s p&uacute;blico, por lo que resultan nulos. Se advierte tambi&eacute;n la configuraci&oacute;n de conductas fraudulentas por el ilegal actuar de quienes acordaron, consintieron y convalidaron actos administrativos il&iacute;citos e irregulares mediante la suscripci&oacute;n de un convenio ilegal celebrado el d&iacute;a 22 de Marzo del a&ntilde;o 2011 dos mil once en esta ciudad de Guadalajara en perjuicio del patrimonio del propio Congreso del Estado y los derechos fiscales de sus trabajadores.</p>\r\n<p>Sin que el citado convenio representara un beneficio o soluci&oacute;n a la liberaci&oacute;n de la obligaci&oacute;n contractual, lo que a la postre gener&oacute; una resoluci&oacute;n judicial federal misma que condena al H. Congreso del Estado, al pago de la cantidad de&nbsp; $ 58&acute; 066, 183.86 (CINCUENTA Y OCHO MILLONES SESENTA Y SEIS MIL CIENTO OCHENTA Y TRES PESOS 86/100 MONEDA NACIONAL), <strong><em>por lo que de realizarse el pago en los t&eacute;rminos ordenados por el Juez Tercero de Distrito en Materia Civil, significar&iacute;a dejar de cubrir rubros tan importantes como el pago de salarios, prestaciones a los trabajadores, pago de cuotas a las diversas Instituciones como el Instituto Mexicano del Seguro Social, Instituto de Pensiones del Estado de Jalisco, Servicio de Administraci&oacute;n Tributaria, as&iacute; como ministrar los insumos indispensables para la operaci&oacute;n, funci&oacute;n y desempe&ntilde;o del H. Congreso del Estado de Jalisco.</em></strong></p>\r\n<p><strong>5.</strong>- Que con motivo del incumplimiento del convenio suscrito por los integrantes de la Comisi&oacute;n de Administraci&oacute;n y Mesa Directiva de la LIX Legislatura, los representantes y apoderados de Consultores L&oacute;pez Castro y Asociados promovieron en su momento juicio de amparo indirecto 1129/2011 ante el Juzgado Tercero de Distrito en Materia Civil en el Estado y derivado del mismo un incidente de inejecuci&oacute;n de sentencia contra actos que se reclamaron del Congreso del Estado y otros.</p>\r\n<p><strong>6.</strong>- Que con fecha 10 de diciembre del a&ntilde;o en curso, fue notificado el Poder Legislativo del Estado de Jalisco, de la promoci&oacute;n del incidente de inejecuci&oacute;n de sentencia 1/2012 derivado del juicio principal 1129/2011-III; y cuyo acuerdo del Tercer Tribunal Colegiado en Materia Civil del Tercer Circuito en el Estado de Jalisco, requiere al Congreso del Estado de Jalisco, acredite el cumplimiento de la sentencia de amparo, o rinda informe justificando las razones del por que no se ha dado cumplimiento al fallo protector con las sabidas consecuencias legales.</p>\r\n<p><strong>7.</strong>- Teniendo como consecuencia la existencia de una resoluci&oacute;n judicial derivado de un juicio ya concluido que afecta al Congreso del Estado de Jalisco; por lo que se estima pertinente el ejercicio de una acci&oacute;n de nulidad de cosa juzgada, para solicitar la suspensi&oacute;n contra los actos impugnados, considerando la violaci&oacute;n de leyes prohibitivas y afectaci&oacute;n al inter&eacute;s p&uacute;blico, que se est&aacute; cometiendo en dichos actos, por lo cual se justificar&iacute;a la promoci&oacute;n de la acci&oacute;n jur&iacute;dica planteada, y que resulta necesaria para evitar que los actos impugnados se consumen de modo irreparable en desistimiento del inter&eacute;s p&uacute;blico.</p>\r\n<p><strong>8.</strong>- La acci&oacute;n de nulidad de juicio concluido, se formular&iacute;a en contra del Convenio y del acuerdo judicial que lo aprueba, as&iacute; como de los actos derivados y consecuencias, buscando impedir los efectos legales de los actos il&iacute;citos ya descritos con antelaci&oacute;n.</p>\r\n<p>Por lo anteriormente expuesto y motivado, con fundamento en el art&iacute;culo 152 p&aacute;rrafo 1, de la Ley Org&aacute;nica del Poder Legislativo del Estado de Jalisco y dem&aacute;s consideraciones legales antes se&ntilde;aladas, someto a consideraci&oacute;n de esta H. Asamblea Legislativa, el&nbsp; siguiente:</p>\r\n<p><strong>ACUERDO LEGISLATIVO:</strong></p>\r\n<p><strong>PRIMERO.&nbsp; EL PLENO DEL H. CONGRESO DEL ESTADO DE JALISCO AUTORIZA EL&nbsp; EJERCICIO DE UNA ACCI&Oacute;N DE NULIDAD DE COSA JUZGADA EN CONTRA DE LOS ACTOS DERIVADOS DEL JUICIO MERCANTIL ORDINARIO 242/2010-II, DEL &Iacute;NDICE DEL JUZGADO QUINTO DE DISTRITO EN MATERIA CIVIL EN EL ESTADO, Y PARTICULARMENTE DEL CONVENIO JUDICIAL DE FECHA 22 DE MARZO DEL A&Ntilde;O 2011, ACUERDO JUDICIAL QUE LO APRUEBA DICTADO EL 30 DE MAYO DE 2011, ASIMISMO CONTRA LAS CONSECUENCIAS Y ACTOS DERIVADOS EN EL CASO JUR&Iacute;DICO DE CONSULTORES L&Oacute;PEZ CASTRO Y C&Iacute;A. S.A. DE C.V.</strong></p>\r\n<p><strong>SEGUNDO. SE INSTRUYE A LA MESA DIRECTIVA PARA QUE EN EL EJERCICIO DE SUS FACULTADES Y ATRIBUCIONES LEGALES Y EN REPRESENTACI&Oacute;N JUR&Iacute;DICA DEL PODER LEGISLATIVO PROCEDA A EJERCITAR TODAS LAS ACCIONES, DEFENSAS Y RECURSOS NECESARIOS EN EL CASO JUR&Iacute;DICO DE CONSULTORES L&Oacute;PEZ CASTRO Y C&Iacute;A. S.A. DE C.V.; A EFECTO DE IMPUGNAR LA NULIDAD DE ACTOS QUE SEAN CONTRARIOS A LEYES PROHIBITIVAS Y QUE AFECTEN EL INTER&Eacute;S P&Uacute;BLICO, AS&Iacute; COMO LOS DERECHOS E INTERESES DEL H. CONGRESO DEL ESTADO DE JALISCO.</strong></p>\r\n<p><strong>TERCERO. SE ORDENA A LA DIRECCI&Oacute;N DE ASUNTOS JUR&Iacute;DICOS Y DICTAMEN LEGISLATIVO EN COADYUVANCIA CON LA MESA DIRECTIVA, PLANEAR Y PROMOVER LAS V&Iacute;AS JUDICIALES ALTERNATIVAS PARA LA DEFENSA DE LOS DERECHOS E INTERESES DEL H. CONGRESO DEL ESTADO, EN LOS ASUNTOS LEGALES EN QUE &Eacute;STE PODER SE HA VISTO INVOLUCRADO.</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Atentamente</strong></p>\r\n<p><strong>Sal&oacute;n de Sesiones del Palacio Legislativo</strong></p>\r\n<p><strong>Guadalajara, Jalisco, a 19 de Diciembre de 2012.</strong></p>\r\n<p><em>\"2012,&nbsp; A&ntilde;o de la Equidad y la Igualdad de Trato y Oportunidades entre Mujeres y Hombres de Jalisco\".</em></p>\r\n<p>&nbsp;</p>\r\n<p>______________________________________</p>\r\n<p><strong>DIPUTADO V&Iacute;CTOR MANUEL S&Aacute;NCHEZ OROZCO</strong></p>\r\n<p><strong></strong></p>\r\n<p>&nbsp;</p>','ACUERDO LEGISLATIVO JUICIO NULIDAD',1,1),(68,'<p><strong>C. CIUDADANOS DIPUTADOS</strong></p>\r\n<p><strong>INTEGRANTES DE LA LX LEGISLATURA</strong></p>\r\n<p><strong>PRESENTES</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong></strong></p>\r\n<p>El suscrito <strong>DIPUTADO VICTOR MANUEL SANCHEZ OROZCO</strong>, en mi car&aacute;cter de integrante de la LX Legislatura de este H. Congreso del Estado, con fundamento en los art&iacute;culos 28, fracci&oacute;n I, 35 fracci&oacute;n I de la Constituci&oacute;n Pol&iacute;tica del Estado de Jalisco; as&iacute; como los art&iacute;culos 22, 147, 150 de la Ley Org&aacute;nica del Poder Legislativo del Estado y dem&aacute;s disposiciones relativas, me permito someter a su consideraci&oacute;n la siguiente <strong>Iniciativa de Acuerdo Legislativo&nbsp;</strong></p>\r\n<p><strong></strong></p>\r\n<p><strong>Donde se le exhorta al Sistema del Tren El&eacute;ctrico del Gobierno del Estado de Jalisco, para solicitar atentamente la ampliaci&oacute;n de atenci&oacute;n en sus m&oacute;dulos del Sistema Macrob&uacute;s para tramitar las tarjetas de descuento y que tambi&eacute;n cambie en sus estaciones Macrob&uacute;s las grabaciones al utilizar las tarjetas de descuento, para lo cual hago la siguiente:</strong></p>\r\n<p><strong></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>EXPOSICI&Oacute;N DE MOTIVOS</strong></p>\r\n<p><strong></strong></p>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>En el a&ntilde;o de 2009 se instala la fase 1 del Macrob&uacute;s por la Calzada Independencia en la Ciudad de Guadalajara, proyecto impulsado por el Gobierno del Estado de Jalisco.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>El Macrob&uacute;s cuenta con 27 estaciones a lo largo de 16 kil&oacute;metros de longitud.&nbsp; Actualmente con cifras del sistema Macrob&uacute;s manifiesta que se transportan aproximadamente 125 mil ciudadanos al d&iacute;a, de los cuales un importante n&uacute;mero refiere a personas con discapacidad o de la tercera edad as&iacute; como estudiantes.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>El Macrob&uacute;s dentro de sus pol&iacute;ticas de atenci&oacute;n y accesibilidad para todos, se obliga a cumplir con las pautas de accesibilidad que determinan que las nuevas l&iacute;neas de transporte masivo sean m&aacute;s incluyentes e igualitarias.&nbsp;</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>Cuenta con un manual de usuario donde se realizan las especificaciones sobre el sistema preferente para personas discapacitadas y su trato preferencial dentro del Sistema Macrob&uacute;s.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>El sistema Macrob&uacute;s cuenta con un sistema de prepago denominado LA TARJETA DE PREPAGO AZUL y LA TARJETA DE PREPAGO DE DESCUENTO O VERDE la primera se puede obtener en cualquiera de las 27 estaciones del Macrob&uacute;s y la segunda SOLO en los m&oacute;dulos Independencia, Ciencias de la Salud, San Juan de Dios, Fray Ang&eacute;lico y Mirador.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>Los ciudadanos usuarios del sistema Macrob&uacute;s que tienen derecho a tramitar y utilizar la TARJETA PERSONALIZADA DE DESCUENTO son: ni&ntilde;os de 6 a 11 a&ntilde;os, estudiantes de primarias, secundarias, preparatorias y universidades, maestros de instituciones p&uacute;blicas y privadas, discapacitados, pensionados y personas de la tercera edad, todos ellos gozaran con un 50% de descuento.&nbsp;</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>Muchos ciudadanos usuarios de estos beneficios han externado la dificultad que tienen al tramitar sus tarjetas, esto por los pocos m&oacute;dulos que prestan el servicio al ser solo 5 cinco en 27 estaciones del Sistema Macrob&uacute;s.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>Al ir a tramitar sus respectivas credenciales, debido a la fila, personas de la tercera edad as&iacute; como discapacitados han permanecido hasta 60 minutos de pie esperando los su turno, esto aunado al traslado que tiene que hacer para llegar a uno de los &uacute;nicos cinco m&oacute;dulos para tramitar el beneficio.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>En cada una de las estaciones al pasar por las maquinas de acceso o \"TORNIQUETES\" se tiene que acercar la tarjeta al lector de dicha m&aacute;quina para que se haga el respectivo 50% de descuento, esto independientemente del tipo de usuario, ya sea persona de la tercera edad, discapacitado, estudiante o maestro, entonces el torniquete mediante una grabaci&oacute;n reproduce el tipo de usuario que es, como: TERCERA EDAD, DISCAPACITADO O ESTUDIANTE.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>La Ley Federal para Prevenir y Eliminar la discriminaci&oacute;n en su art&iacute;culo 4 cuarto se&ntilde;ala: <strong><em>\"</em></strong><strong><em>Para los efectos de esta Ley se entender&aacute; por discriminaci&oacute;n toda distinci&oacute;n, exclusi&oacute;n o restricci&oacute;n que, basada en el origen &eacute;tnico o nacional, sexo, edad, discapacidad, condici&oacute;n social o econ&oacute;mica, condiciones de salud, embarazo, lengua, religi&oacute;n, opiniones, preferencias sexuales, estado civil</em></strong><strong><em> </em></strong><strong><em>o cualquier otra...\"</em></strong></li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>Por tanto consideramos que estas grabaciones incurre en actos de discriminaci&oacute;n y de molestia hacia los usuarios de tarjeta de descuento, y al no ser diferenciado este descuento es innecesario la distinci&oacute;n en la grabaci&oacute;n.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>Por lo anteriormente expuesto y fundado, con fundamento en el art&iacute;culo 152 p&aacute;rrafo 1 de la Ley Org&aacute;nica del Poder Legislativo del Estado de Jalisco, someto a consideraci&oacute;n de esta Honorable Asamblea el siguiente</p>\r\n<p><strong></strong></p>\r\n<p><strong>ACUERDO LEGISLATIVO</strong></p>\r\n<p><strong></strong></p>\r\n<p><strong>PRIMERO: </strong>Se exhorta de la manera m&aacute;s atenta al Titular del Sistema del Tren El&eacute;ctrico del Gobierno del Estado de Jalisco, para que, de contar con los recursos materiales y humanos, instale m&aacute;s m&oacute;dulos de atenci&oacute;n del Sistema Macrob&uacute;s para tramitar las tarjetas de descuento, que no sea solo en 5 cinco si no en las 27 estaciones del sistema Macrobus.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>SEGUNDO:</strong> Se le solicita al Titular del Sistema del Tren El&eacute;ctrico la implementaci&oacute;n de m&oacute;dulos temporales al inicio de cada ciclo escolar en las universidades para que los estudiantes puedan tramitar este beneficio.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>TERCERO: </strong>Que se sirva cambiar la grabaci&oacute;n de los m&oacute;dulos de acceso de cada estaci&oacute;n para que, ya que es el mismo beneficio del 50% de descuento en LA TARJETA DE PREPAGO DE DESCUENTO O VERDE, no es necesario que puntualice el tipo de usuario, proponiendo respetuosamente se utilice de texto en la grabaci&oacute;n solo: <strong>DESCUENTO ESPECIAL</strong>.</p>\r\n<p><strong></strong></p>\r\n<p><strong>ATENTAMENTE</strong></p>\r\n<p><strong>SAL&Oacute;N DE SESIONES DEL H. CONGRESO DEL ESTADO DE JALISCO</strong></p>\r\n<p><strong>Guadalajara, Jalisco, 12 de Diciembre de 2012</strong></p>\r\n<p><strong>\"2012, A&ntilde;o de la Equidad y la Igualdad de Oportunidades&nbsp;</strong></p>\r\n<p><strong>entre Mujeres y Hombres\"</strong></p>\r\n<p><strong><em></em></strong></p>\r\n<p><strong><em></em></strong></p>\r\n<p><strong></strong></p>\r\n<p><strong>DIP. VICTOR MANUEL SANCHEZ OROZCO</strong></p>\r\n<p>&nbsp;</p>','ACUERDO LEGISLATIVO MACROBUS',1,1),(69,'<p><strong>CIUDADANOS DIPUTADOS DEL H. CONGRESO</strong></p>\r\n<p><strong>DEL ESTADO DE JALISCO</strong></p>\r\n<p><strong>PRESENTE</strong></p>\r\n<p>&nbsp;</p>\r\n<p>El suscrito diputado <strong>V&Iacute;CTOR MANUEL S&Aacute;NCHEZ OROZCO</strong>, en ejercicio de las facultades que me conceden los art&iacute;culos 28 fracci&oacute;n I, y 35, fracci&oacute;n I, de la Constituci&oacute;n Pol&iacute;tica; 22 fracci&oacute;n I, 147, primer p&aacute;rrafo, fracci&oacute;n I, 149 y 154 de la Ley Org&aacute;nica del Poder Legislativo; ambos del Estado de Jalisco, propongo a esta Honorable Asamblea, la presente <strong>INICIATIVA DE DECRETO QUE ESTABLECE LAS BASES PARA LA COORDINACI&Oacute;N DEL&nbsp; MANDO POLICIAL CENTRALIZADO EN EL ESTADO DE JALISCO, </strong>al efecto nos permitimos hacer la siguiente:</p>\r\n<p>&nbsp;</p>\r\n<p><strong>EXPOSICI&Oacute;N DE MOTIVOS</strong></p>\r\n<p>&nbsp;</p>\r\n<p>1.- El Estado se ha visto rebasado por conductas delictivas en lo particular por la delincuencia organizada. La capacidad de reacci&oacute;n de la polic&iacute;a oblig&oacute; al Ejecutivo Federal a utilizar el apoyo de las fuerzas armadas permanentes (Ej&eacute;rcito y Armada de M&eacute;xico) en labores de seguridad p&uacute;blica, siendo esto fuente de amplias discusiones pol&iacute;ticas.</p>\r\n<p>&nbsp;</p>\r\n<p>Adem&aacute;s de las pol&iacute;ticas de combate a la delincuencia organizada que el Gobierno Federal ha llevado a cabo desde el 2006; est&aacute; pendiente el problema de los delitos de fuero com&uacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p>Por ello, el Grupo Parlamentario del Partido Acci&oacute;n Nacional (PAN) ha venido impulsando los temas que tienen que ver con la&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Justicia y la Seguridad P&uacute;blica como cuestiones de obvia y urgente resoluci&oacute;n y que forman parte de su agenda legislativa.</p>\r\n<p>&nbsp;</p>\r\n<p>Es innegable que las funciones de prevenci&oacute;n e investigaci&oacute;n de los elementos de seguridad p&uacute;blica requieren ser reestructuradas como parte de la estrategia de seguridad nacional, pues s&oacute;lo cuando el orden p&uacute;blico pueda considerarse dentro de niveles normales de delincuencia, podr&aacute;n combatirse efectivamente estructuras de delincuencia organizada, tr&aacute;fico o lavado de dinero.</p>\r\n<p>&nbsp;</p>\r\n<p>En palabras del entonces secretario t&eacute;cnico del Consejo de Seguridad Nacional (CSN), Alejandro Poir&eacute; Romero: \"<em>la Estrategia Nacional de Seguridad </em>debe ser<em> concebida e instrumentada como una pol&iacute;tica de Estado, que requiere de una participaci&oacute;n proactiva de los tres &oacute;rdenes de Gobierno, en el desmantelamiento de las redes criminales, en el fortalecimiento de las instituciones de seguridad y de justicia, as&iacute; como de la sociedad, para complementar las acciones que fortalezcan el tejido social de las comunidades\".</em><em><sup>1</sup></em></p>\r\n<p>&nbsp;</p>\r\n<p>2.- El debate de continuar con el modelo de polic&iacute;a municipal o cambiar al mando &uacute;nico es muy relevante en estos d&iacute;as. Tomando en cuenta que los homicidios relacionados con la delincuencia organizada no son los &uacute;nicos que han aumentado. Existen estad&iacute;sticas que muestran el comportamiento de los delitos del fuero com&uacute;n-como robo, secuestro, violaci&oacute;n, lesiones, delitos patrimoniales y otros-, que en los &uacute;ltimos 11 a&ntilde;os ha pasado de 1,400 a m&aacute;s de 1,500 por cada 100 mil habitantes.</p>\r\n<p><sup>1</sup><em>* Manrique Gandaria/ El Sol de M&eacute;xico. Organizaci&oacute;n Editorial Mexicana. 17 de noviembre de2010. Disponible en internet. Consultado el d&iacute;a 07 de noviembre de 2012.</em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>3.- Los delitos de fuero com&uacute;n tienen una explicaci&oacute;n sencilla: la polic&iacute;a no tiene el poder disuasivo necesario para que los delitos no se cometan. Por eso, es fundamental una reforma al sistema de reclutamiento, capacitaci&oacute;n y evaluaci&oacute;n de los miembros de la polic&iacute;a; pero tambi&eacute;n de la organizaci&oacute;n de la misma instituci&oacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p>En 2011 hab&iacute;a 511,275 polic&iacute;as en M&eacute;xico (federales, estatales y municipales) [1], eso significa 427 polic&iacute;as por cada 100 mil habitantes, de los cuales, aproximadamente 190 mil polic&iacute;as son municipales, casi 260 mil estatales y el resto federales.[2]</p>\r\n<p>&nbsp;</p>\r\n<p>Tener m&aacute;s de 460 mil elementos encargados de la prevenci&oacute;n y detenci&oacute;n de los responsables de los delitos del fuero com&uacute;n ser&iacute;a una buena idea si cumplieran con alguna de las funciones que les ha sido encomendada. Exigir esto es dif&iacute;cil si pensamos que 61% de los polic&iacute;as ganan menos de $4,000 pesos mensuales,[3]muchos carecen del equipo b&aacute;sico para garantizar su propia integridad f&iacute;sica, no est&aacute;n capacitados ni educados-el Gobierno Federal estima que 2% de polic&iacute;as municipales son analfabetas y m&aacute;s del 60% s&oacute;lo cuenta con educaci&oacute;n b&aacute;sica[4] - y algunos de ellos ven este empleo como su &uacute;ltima opci&oacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p>4.- Continuar con este modelo policiaco implica seguir subsidiando con m&aacute;s de 50 mil millones de pesos anuales a corporaciones que no est&aacute;n del todo seguras del n&uacute;mero de elementos que tienen, lo que hace imposible contar con una base de datos confiable para saber qui&eacute;n entra y qui&eacute;n sale de cada cuerpo policiaco; que no han sido capaces de evaluar las competencias de todos sus elementos, &nbsp; lo&nbsp; que&nbsp; deber&iacute;a &nbsp; de&nbsp; indignarnos&nbsp; como &nbsp; ciudadanos;&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>tampoco podemos esperar que estas corporaciones sean eficientes en la prevenci&oacute;n y protecci&oacute;n de la poblaci&oacute;n</p>\r\n<p>&nbsp;</p>\r\n<p>Se requiere un nuevo enfoque de la corrupci&oacute;n y las complicidades internas. Una estrategia de iniciativa; ni reactiva, ni a la expectativa.</p>\r\n<p>&nbsp;</p>\r\n<p>5.- La otra alternativa es cambiar la organizaci&oacute;n de las corporaciones a mandos &uacute;nicos estatales, como propuso el Presidente Felipe Calder&oacute;n el 6 de octubre de 2010. El Ejecutivo federal puso a consideraci&oacute;n del Congreso una propuesta de reforma a la Constituci&oacute;n, consistente en reformar el sistema de mando de todas las corporaciones de polic&iacute;a en el pa&iacute;s en el sentido de delegar en una sola persona la responsabilidad en su conducci&oacute;n, planeaci&oacute;n y operaci&oacute;n, coloquialmente identificado como el mando &uacute;nico de la polic&iacute;a.</p>\r\n<p>&nbsp;</p>\r\n<p>6.- El mando &uacute;nico de polic&iacute;a, no trata de crear la figura de un &uacute;nico jefe de polic&iacute;a o una sola polic&iacute;a estatal, sino de responsabilizar en primer t&eacute;rmino a los gobiernos locales y mejorar sustancialmente los niveles de coordinaci&oacute;n y la eficacia que el trabajo preventivo y de seguridad p&uacute;blica requiere. El mando &uacute;nico policial busca, abrir y mantener un canal de informaci&oacute;n eficiente que facilite las tareas de coordinaci&oacute;n y colaboraci&oacute;n entre todas las corporaciones de polic&iacute;a en el Estado de Jalisco, para conformar un frente &uacute;nico contra la delincuencia.</p>\r\n<p><em>NOTAS:</em></p>\r\n<p>[1]SESNSP, Estado de fuerza actualizado, 2012</p>\r\n<ol>\r\n<li>Presidencia de la Rep&uacute;blica, Iniciativa de mando &uacute;nico policial, disponible enhttp://www.secretariadoejecutivosnsp.gob.mx/es/SecretariadoEj ecutivo/Iniciativa_de_Mando_Unico_Policial_&nbsp;</li>\r\n<li>Presidencia, op. Cit. Presidencia, op. Cit</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>.</p>\r\n<p>Este nuevo modelo policial debe ser entendido como el conjunto ordenado de normas, &oacute;rganos, recursos humanos, materiales y de otro tipo y procedimientos de relaci&oacute;n entre todos ellos, que se articulan y act&uacute;an de forma coordinada, con la finalidad de contribuir a garantizar la seguridad de los ciudadanos.</p>\r\n<p>&nbsp;</p>\r\n<p>De este modo, las polic&iacute;as municipales que no cumplan con requisitos institucionales establecidos en la Ley General del Sistema Nacional de Seguridad P&uacute;blica, ceder&aacute;n sus recursos- humanos y econ&oacute;micos-a la polic&iacute;a estatal. La polic&iacute;a estatal, por su parte, estar&aacute; a cargo del gobernador quien puede designar un coordinador de la polic&iacute;a si lo considera necesario. Aquellas polic&iacute;as municipales que s&iacute; cumplan con los requisitos establecidos en la ley, podr&aacute;n mantener sus corporaciones, nuevamente, el coordinador ser&aacute; designado por el gobernador del Estado.</p>\r\n<p>&nbsp;</p>\r\n<p>7.- La transformaci&oacute;n de la sociedad hacia grandes concentraciones humanas implica mayores esfuerzos para mantener la tranquilidad, por eso se necesita crear cuerpos especializados que le ayuden a la administraci&oacute;n p&uacute;blica a conservar la paz.</p>\r\n<p>&nbsp;</p>\r\n<p>Los cuerpos de control social han existido en todo momento de la historia de las Naciones, debido a que son una necesidad; su implementaci&oacute;n ha dependido de la evoluci&oacute;n social, pues tienen que vigilar que se mantenga el orden p&uacute;blico establecido.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>8.- La corrupci&oacute;n y las actividades de la denominada delincuencia organizada con presencia en la mayor&iacute;a de la extensi&oacute;n del territorio nacional, colocan a la sociedad en un estado de vulnerabilidad, afectando su desarrollo arm&oacute;nico y produciendo una creciente degradaci&oacute;n del tejido social.</p>\r\n<p>&nbsp;</p>\r\n<p>9.- La seguridad p&uacute;blica es un mandamiento constitucional. El aumento y diversificaci&oacute;n de la llamada delincuencia organizada, da&ntilde;a directamente al tejido social, dando como resultado una carencia de presencia y respuesta de las fuerzas del orden federal, estatal y municipal. Esta din&aacute;mica provoca que la poblaci&oacute;n tenga una lectura negativa del actuar de los &oacute;rganos encargados de la seguridad p&uacute;blica; la percepci&oacute;n indica que el gobierno no tiene la capacidad policiaca operativa y de reacci&oacute;n necesaria para hacer frente al crimen en general.</p>\r\n<p>&nbsp;</p>\r\n<p>La seguridad p&uacute;blica es una funci&oacute;n de gobierno; su establecimiento, desarrollo y cuidado forman parte importante de las pol&iacute;ticas p&uacute;blicas y programas de administraci&oacute;n. En el terreno jur&iacute;dico, se tiene comprendida dentro del campo del derecho administrativo. -Un Estado de derecho genera las condiciones que permiten al individuo realizar sus actividades cotidianas con la confianza de que su vida, su patrimonio y otros bienes jur&iacute;dicos tutelados est&aacute;n exentos de todo peligro, da&ntilde;o o riesgo&#8214; (Gonz&aacute;lez Fern&aacute;ndez: 2002: p. 125)</p>\r\n<p>&nbsp;</p>\r\n<p>10.- La seguridad p&uacute;blica es un asunto de prioridad nacional, y con el prop&oacute;sito de hacerle frente al incremento de la violencia y la inseguridad p&uacute;blica y mantener el orden p&uacute;blico, es que se formula&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>la presente iniciativa.</p>\r\n<p>&nbsp;</p>\r\n<p>La CONSTITUCION POL&Iacute;ITICA DE LOS ESTADOS UNIDOS MEXICANOS, en su art&iacute;culo 21, p&aacute;rrafo noveno y d&eacute;cimo, establece que:</p>\r\n<p>&nbsp;</p>\r\n<p><strong><em>LA SEGURIDAD P&Uacute;BLICA ES UNA FUNCI&Oacute;N A CARGO DE LA FEDERACI&Oacute;N, EL DISTRITO FEDERAL, LOS ESTADOS Y LOS MUNICIPIOS</em></strong><em>, QUE COMPRENDE LA PREVENCI&Oacute;N DE LOS DELITOS; LA INVESTIGACI&Oacute;N Y PERSECUCI&Oacute;N PARA HACERLA EFECTIVA, AS&Iacute; COMO LA SANCI&Oacute;N DE LAS INFRACCIONES ADMINISTRATIVAS, EN LOS T&Eacute;RMINOS DE LA LEY, </em><strong><em>EN LAS RESPECTIVAS COMPETENCIAS QUE ESTA CONSTITUCI&Oacute;N SE&Ntilde;ALA. </em></strong><em>LA ACTUACI&Oacute;N DE LAS INSTITUCIONES DE SEGURIDAD P&Uacute;BLICA SE REGIR&Aacute; POR LOS PRINCIPIOS DE LEGALIDAD, OBJETIVIDAD, EFICIENCIA, PROFESIONALISMO, HONRADEZ Y RESPETO A LOS DERECHOS HUMANOS RECONOCIDOS EN ESTA CONSTITUCI&Oacute;N.</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>LAS INSTITUCIONES DE SEGURIDAD P&Uacute;BLICA SER&Aacute;N DE CARACTER CIVIL, DISCIPLINADO Y PROFESIONAL. EL MINISTERIO P&Uacute;BLICO Y </em><strong><em>LAS INSTITUCIONES POLICIALES DE LOS TRES &Oacute;RDENES DE GOBIERNO DEBER&Aacute;N COORDINARSE ENTRE SI PARA CUMPLIR LOS OBJETIVOS DE LA SEGURIDAD P&Uacute;BLICA </em></strong><em>Y CONFORMAR&Aacute;N ELSISTEMA NACIONAL DE SEGURIDAD P&Uacute;BLICA, QUE ESTAR&Aacute; SUJETO A LAS SIGUIENTES BASES M&Iacute;NIMAS:</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>A) LA REGULACI&Oacute;N DE LA SELECCI&Oacute;N, INGRESO, FORMACION, PERMANENCIA, EVALUACION, RECONOCIMIENTO Y CERTIFICACION DE LOS INTEGRANTES DE LAS INSTITUCIONES DE SEGURIDAD P&Uacute;BLICA. LA OPERACION Y DESARROLLO DE ESTAS ACCIONES SERA COMPETENCIA DE LA FEDERACION, EL DISTRITO FEDERAL, LOS ESTADOS Y LOS MUNICIPIOS EN EL AMBITO DE SUS RESPECTIVAS ATRIBUCIONES.</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>B) EL ESTABLECIMIENTO DE LAS BASES DE DATOS CRIMINALISTICOS &nbsp; &nbsp; &nbsp; Y &nbsp; &nbsp; &nbsp; DE&nbsp; &nbsp; &nbsp; PERSONAL&nbsp; &nbsp; &nbsp; PARA &nbsp; &nbsp; LAS&nbsp;</em></p>\r\n<p><em></em></p>\r\n<p><em></em></p>\r\n<p><em></em></p>\r\n<p><em>INSTITUCIONES DE SEGURIDAD P&Uacute;BLICA. NINGUNA PERSONA PODRA INGRESAR A LAS INSTITUCIONES DE SEGURIDAD&nbsp; PUBLICA&nbsp; SI&nbsp; NO&nbsp; HA&nbsp; SIDO&nbsp; DEBIDAMENTE&nbsp;</em></p>\r\n<p><em></em></p>\r\n<p><em></em></p>\r\n<p><em>CERTIFICADO Y REGISTRADO EN EL SISTEMA.</em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong><em>C) LA FORMULACION DE POLITICAS P&Uacute;BLICAS TENDIENTES A PREVENIR LA COMISION DE DELITOS.</em></strong></p>\r\n<p>&nbsp;</p>\r\n<p><em>D) SE DETERMINARA LA PARTICIPACION DE LA COMUNIDAD QUE COADYUVARA, ENTRE OTROS, EN LOS PROCESOS DE EVALUACION DE LAS POLITICAS DE PREVENCION DEL DELITO ASI COMO DE LAS INSTITUCIONES DE SEGURIDAD PUBLICA.</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>E) LOS FONDOS DE AYUDA FEDERAL PARA LA SEGURIDAD P&Uacute;BLICA, A NIVEL NACIONAL SERAN APORTADOS A LAS ENTIDADES FEDERATIVAS Y MUNICIPIOS PARA SER DESTINADOS EXCLUSIVAMENTE A ESTOS FINES.</em></p>\r\n<p>&nbsp;</p>\r\n<p>11.- Asimismo, la CONSTITUCION POLITICA DE LOS ESTADOS UNIDOS MEXICANOS, en su art&iacute;culo 115, dispone:</p>\r\n<p>&nbsp;</p>\r\n<p>Fracci&oacute;n III, inciso I), p&aacute;rrafo 2:</p>\r\n<p>&nbsp;</p>\r\n<p><strong><em>SIN PERJUICIO DE SU COMPETENCIA CONSTITUCIONAL, EN EL DESEMPE&Ntilde;O DE LAS FUNCIONES O LA PRESTACION DE LOS SERVICIOS A SU CARGO, LOS MUNICIPIOS OBSERVARAN LO DISPUESTO POR LAS LEYES FEDERALES Y ESTATALES</em></strong><em>.</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>En la fracci&oacute;n VII, estipula: </em><strong><em>LA POLICIA PREVENTIVA</em></strong><em> ESTARA AL MANDO DEL PRESIDENTE MUNICIPAL EN LOS TERMINOS DE LA LEY DE SEGURIDAD P&Uacute;BLICA DEL ESTADO. AQUELLA </em><strong><em>ACATARA LAS ORDENES QUE EL GOBERNADOR DEL ESTADO LE TRANSMITA EN AQUELLOS CASOS QUE ESTE JUZGUE COMO DE FUERZA MAYOR O ALTERACION GRAVE DEL ORDEN PUBLICO.</em></strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>12.- El compromiso de atender las necesidades de seguridad p&uacute;blica de la poblaci&oacute;n recae &uacute;nica y exclusivamente en los poderes ejecutivos de los tres&aacute;mbitos de la administraci&oacute;n: municipal, estatal y federal.En la actualidad, el mando de la polic&iacute;a te&oacute;ricamente recae en los funcionarios que detentan el Poder Ejecutivo en los tres niveles de gobierno, present&aacute;ndose entonces la existencia de tres tipos o categor&iacute;as de polic&iacute;a: la federal, la estatal y la municipal, con los consecuentes problemas de orden operativo y de coordinaci&oacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p>Establece la CONSTITUCI&Oacute;N POL&Iacute;TICA DEL ESTADO DE JALISCO, en el Art&iacute;culo 50 fracciones XII y XIII que <strong><em>son facultades y obligaciones del Gobernador del Estado</em></strong>:</p>\r\n<p>&nbsp;</p>\r\n<p>XII. <strong><em>Vigilar la conservaci&oacute;n del orden p&uacute;blico, disponiendo al efecto de las fuerzas armadas del Estado</em></strong><em>, pudiendo, con autorizaci&oacute;n del Congreso, celebrar convenios para descentralizar la organizaci&oacute;n y supervisi&oacute;n de las funciones de seguridad p&uacute;blica, con participaci&oacute;n de los municipios y colaboraci&oacute;n de los particulares, en su caso;</em></p>\r\n<p>&nbsp;</p>\r\n<p>XIII. <strong><em>Dar &oacute;rdenes a la polic&iacute;a preventiva municipal en aquellos casos que bajo su responsabilidad juzgue como de fuerza mayor o alteraci&oacute;n grave del orden p&uacute;blico</em></strong>.</p>\r\n<p>&nbsp;</p>\r\n<p>Por otra parte, el crimen aumenta las percepciones de inseguridad personal y reduce la legitimidad de las instituciones democr&aacute;ticas,&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>aminora la inversi&oacute;n directa y demanda el gasto de recursos para su combate y prevenci&oacute;n (Karstedt y Lafree, 2006; Karstedt, 2006; LaFree y Tseloni, 2006).</p>\r\n<p>&nbsp;</p>\r\n<p>Ante los retos que impone la realidad actual y los &uacute;ltimos acontecimientos ocurridos en el Estado provocados por la delincuencia organizada, ponen de manifiesto la urgente necesidad del combate a la delincuencia, mediante acciones estrat&eacute;gicas m&aacute;s contundentes y efectivas por parte de los cuerpos de seguridad p&uacute;blica. Y obliga a las autoridades a mejorar los esfuerzos en materia de prevenci&oacute;n del delito y poner en pr&aacute;ctica la unificaci&oacute;n del mando de la polic&iacute;a como medida para solucionar el problema de inseguridad p&uacute;blica.</p>\r\n<p>&nbsp;</p>\r\n<p>Es un hecho irrefutable que la planeaci&oacute;n de la prevenci&oacute;n de la delincuencia es eminentemente un trabajo coordinado entre las instituciones que tienen la funci&oacute;n de la seguridad p&uacute;blica. La seguridad p&uacute;blica es la capacidad que tienen las instituciones del Estado para crear y mantener un clima arm&oacute;nico en la convivencia de una comunidad determinada que se encuentra a su cargo, es decir, simplemente es preservar la integridad de las personas, un ambiente seguro y el respeto al Estado de Derecho en la jurisdicci&oacute;n que les corresponde, m&aacute;s la promoci&oacute;n de su cuidado entre los ciudadanos.</p>\r\n<p>&nbsp;</p>\r\n<p>13.- Al respecto, la LEY GENERAL DEL SISTEMA NACIONAL DE SEGURIDAD P&Uacute;BLICA, establece en el art&iacute;culo 2 lo siguiente:</p>\r\n<p>&nbsp;</p>\r\n<p><em>La &nbsp; seguridad &nbsp; p&uacute;blica &nbsp; es &nbsp; una &nbsp; funci&oacute;n &nbsp; a &nbsp; cargo&nbsp; de&nbsp; la&nbsp;</em></p>\r\n<p><em></em></p>\r\n<p><em></em></p>\r\n<p><em></em></p>\r\n<p><em></em></p>\r\n<p><em>Federaci&oacute;n, el Distrito Federal, los Estados y los Municipios, que tiene como fines salvaguardar la integridad y derechos de las personas, as&iacute; como preservar las libertades, el orden y la paz p&uacute;blicos y comprende la prevenci&oacute;n especial y general de los delitos, la investigaci&oacute;n para hacerla efectiva, la sanci&oacute;n de las infracciones administrativas, as&iacute; como la investigaci&oacute;n y la persecuci&oacute;n de los delitos y la reinserci&oacute;n social del individuo, en t&eacute;rminos de esta Ley, en las respectivas competencias establecidas en la Constituci&oacute;n Pol&iacute;tica de los Estados Unidos Mexicanos.</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>El Estado desarrollar&aacute; pol&iacute;ticas en materia de prevenci&oacute;n social del delito con car&aacute;cter integral, sobre las causas que generan la comisi&oacute;n de delitos y conductas antisociales, as&iacute; como programas y acciones para fomentar en la sociedad valores culturales y c&iacute;vicos, que induzcan el respeto a la legalidad y a la protecci&oacute;n de las v&iacute;ctimas.</em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>La&nbsp; misma&nbsp; Ley&nbsp; en&nbsp; el&nbsp; art&iacute;culo&nbsp; 3,&nbsp; se&ntilde;ala:&nbsp; <strong><em>La&nbsp; funci&oacute;n&nbsp; de&nbsp; Seguridad P&uacute;blica se realizar&aacute; en los diversos &aacute;mbitos de competencia </em></strong><em>por conducto de las Instituciones Policiales, del Ministerio P&uacute;blico, de las instancias encargadas de aplicar las infracciones administrativas, de los responsables de la prisi&oacute;n preventiva y ejecuci&oacute;n de penas, de las autoridades competentes en materia de justicia para adolescentes, </em><strong><em>as&iacute; como por las dem&aacute;s autoridades que en raz&oacute;n de sus atribuciones deban contribuir directa o indirectamente al objeto de esta Ley.</em></strong></p>\r\n<p>&nbsp;</p>\r\n<p>En su art&iacute;culo 4, precisa: <em>El Sistema Nacional de Seguridad P&uacute;blica contar&aacute; para su funcionamiento y operaci&oacute;n con las instancias, instrumentos, pol&iacute;ticas, acciones y servicios previstos en la presente Ley, tendientes a cumplir los fines de la Seguridad P&uacute;blica.</em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong><em>La coordinaci&oacute;n en un marco de respeto a las atribuciones entre las instancias de la Federaci&oacute;n, los Estados, el Distrito Federal y los Municipios, ser&aacute; el eje del Sistema Nacional de Seguridad P&uacute;blica.</em></strong></p>\r\n<p>&nbsp;</p>\r\n<p>Y en el art&iacute;culo 7, estipula que: <strong><em>Conforme a las bases que establece el art&iacute;culo 21 de la Constituci&oacute;n Pol&iacute;tica de los Estados Unidos Mexicanos, las Instituciones de Seguridad P&uacute;blica de la Federaci&oacute;n, el Distrito Federal, los Estados y los Municipios, en el &aacute;mbito de su competencia y en los t&eacute;rminos de esta Ley, deber&aacute;n coordinarse </em></strong><em>para:</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>I.&nbsp; Integrar&nbsp; el&nbsp; Sistema&nbsp; y&nbsp; cumplir&nbsp; con&nbsp; sus&nbsp; objetivos&nbsp; y fines;</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>II. Formular pol&iacute;ticas integrales, sistem&aacute;ticas, continuas y evaluables, as&iacute; como programas y estrategias, en materia de seguridad p&uacute;blica;</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>III. Ejecutar, dar seguimiento y evaluar las pol&iacute;ticas, estrategias y acciones, a trav&eacute;s de las instancias previstas en esta ley;</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>IV. Proponer, ejecutar y evaluar el Programa Nacional de Procuraci&oacute;n de Justicia, el Programa Nacional de Seguridad P&uacute;blica y dem&aacute;s instrumentos program&aacute;ticos en la materia previstos en la Ley de Planeaci&oacute;n;</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>V. Distribuir a los integrantes del Sistema, actividades espec&iacute;ficas para el cumplimiento de los fines de la Seguridad P&uacute;blica;</em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><em>VI. Regular los procedimientos de selecci&oacute;n, ingreso, formaci&oacute;n, actualizaci&oacute;n, capacitaci&oacute;n, permanencia, evaluaci&oacute;n,&nbsp; reconocimiento,&nbsp; certificaci&oacute;n y&nbsp; registro&nbsp; de&nbsp; los servidores p&uacute;blicos de las Instituciones de Seguridad P&uacute;blica;</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>VII. Regular los sistemas disciplinarios, as&iacute; como de reconocimientos, est&iacute;mulos y recompensas;</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>VIII. Determinar criterios uniformes para la organizaci&oacute;n, operaci&oacute;n y modernizaci&oacute;n tecnol&oacute;gica de las Instituciones de Seguridad P&uacute;blica;</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>IX. Establecer y controlar bases de datos criminal&iacute;sticos y de personal;</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>X. </em><strong><em>Realizar acciones y operativos conjuntos de las Instituciones de Seguridad P&uacute;blica</em></strong><em>;</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>XI. Participar en la protecci&oacute;n y vigilancia de las Instalaciones Estrat&eacute;gicas del pa&iacute;s en los t&eacute;rminos de esta ley y dem&aacute;s disposiciones aplicables;</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>XII. Garantizar que todos los centros de readaptaci&oacute;n social, establecimientos penitenciarios o centros de internamiento para menores, federales o de las entidades federativas, cualquiera que sea su denominaci&oacute;n, cuenten con equipos que permitan bloquear o anular de manera permanente las se&ntilde;ales de telefon&iacute;a celular, de radiocomunicaci&oacute;n, o de transmisi&oacute;n de datos o imagen dentro del per&iacute;metro de los mismos;</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>XIII. Determinar la participaci&oacute;n de la comunidad y de instituciones acad&eacute;micas en coadyuvancia de los procesos de evaluaci&oacute;n de las pol&iacute;ticas de prevenci&oacute;n del delito, as&iacute; como de las Instituciones de Seguridad P&uacute;blica, a trav&eacute;s de mecanismos eficaces;</em></p>\r\n<p><em></em></p>\r\n<p><em>XIV. Implementar mecanismos de evaluaci&oacute;n en la aplicaci&oacute;n de los fondos de ayuda federal para la seguridad p&uacute;blica;</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>XV. Fortalecer los sistemas de seguridad social de los servidores p&uacute;blicos, sus familias y dependientes, e instrumentar los complementarios a &eacute;stos, y</em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><em>XVI. </em><strong><em>Realizar las dem&aacute;s acciones que sean necesarias para incrementar la eficacia en el cumplimiento de los fines de la Seguridad P&uacute;blica.</em></strong></p>\r\n<p><strong><em></em></strong></p>\r\n<p><strong><em></em></strong></p>\r\n<p><strong><em></em></strong></p>\r\n<p>Por su parte la LEY DEL SISTEMA DE SEGURIDAD P&Uacute;BLICA PARA EL ESTADO DE JALISCO, establece las bases para regular la funci&oacute;n de seguridad p&uacute;blica en el estado y sus municipios, los lineamientos para el desarrollo y coordinaci&oacute;n de esta funci&oacute;n a cargo de las autoridades competentes, as&iacute; como las modalidades de los servicios de seguridad privada en el Estado de Jalisco.</p>\r\n<p>&nbsp;</p>\r\n<p>Establece en el art&iacute;culo 2, que: <strong><em>La seguridad p&uacute;blica es la funci&oacute;n gubernamental que prestan en forma institucional, exclusiva y en el &aacute;mbito de su competencia, el Estado y los municipios, </em></strong><em>la cual seregir&aacute; bajo los principios constitucionales de legalidad, objetividad, eficiencia, profesionalismo y honradez, respetando del gobernado sus derechos humanos consagrados en nuestra carta magna y la Constituci&oacute;n particular del Estado.</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>Teniendo la seguridad p&uacute;blica como fines:</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>Entre otros, seg&uacute;n lo contempla fracci&oacute;n V de dicho art&iacute;culo: Disponer la coordinaci&oacute;n entre las diversas autoridades para brindar el apoyo y auxilio a la poblaci&oacute;n, tanto respecto de la seguridad p&uacute;blica, como en casos de emergencias, accidentes, siniestros y desastres conforme a la ley de la materia;</em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Asimismo, se&ntilde;ala el art&iacute;culo 5, que: <em>Para el mejor cumplimiento de los objetivos de las instituciones policiales, &eacute;stas desarrollar&aacute;n cuando menos las siguientes unidades operativas:</em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><em></em></p>\r\n<p><em></em></p>\r\n<p><em>Fracci&oacute;n III. Reacci&oacute;n, que ser&aacute; la encargada de garantizar, mantener y restablecer la paz y el orden p&uacute;blicos.</em></p>\r\n<p>&nbsp;</p>\r\n<p>La&nbsp; misma&nbsp; Ley,&nbsp; en&nbsp; sus&nbsp; art&iacute;culos&nbsp; 10&nbsp; y&nbsp; 11, considera que:</p>\r\n<p>&nbsp;</p>\r\n<p><em>Art&iacute;culo 10.- El Sistema Estatal de Seguridad P&uacute;blica tiene por objeto desarrollar las bases de coordinaci&oacute;n entre la Federaci&oacute;n, el Estado y los municipios en materia de seguridad p&uacute;blica, as&iacute; como respecto de la prevenci&oacute;n social de la violencia y la delincuencia, en los t&eacute;rminos de la legislaci&oacute;n general correspondiente.</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>Art&iacute;culo 11. El Sistema Estatal de Seguridad P&uacute;blica se integra con las instancias, instrumentos, pol&iacute;ticas y acciones previstas en el presente t&iacute;tulo, tendientes a cumplir los objetivos y fines de la seguridad p&uacute;blica.</em></p>\r\n<p>&nbsp;</p>\r\n<p>Teniendo en consecuencia que el Art&iacute;culo 14, precisa que: <strong><em>Las autoridades competentes en materia de seguridad p&uacute;blica del Estado y de los municipios se coordinar&aacute;n para:</em></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong><em>I. Integrar el Sistema Estatal de Seguridad P&uacute;blica;</em></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong><em>II. Determinar las pol&iacute;ticas de seguridad p&uacute;blica, prevenci&oacute;n del delito, as&iacute; como ejecutar, dar seguimiento y evaluar sus acciones, a trav&eacute;s de las instancias previstas en esta ley;</em></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong><em>III. Desarrollar los lineamientos, mecanismos e instrumentos para la mejor organizaci&oacute;n y funcionamiento de las instituciones de seguridad p&uacute;blica, as&iacute; como para la formaci&oacute;n y la profesionalizaci&oacute;n de sus integrantes;</em></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong><em>IV. Establecer, &nbsp; supervisar,&nbsp; utilizar&nbsp; y&nbsp; mantener&nbsp; actualizados&nbsp;</em></strong></p>\r\n<p><strong><em>todos los instrumentos de informaci&oacute;n del Sistema de Informaci&oacute;n y del Registro, as&iacute; como integrar la estad&iacute;stica de la incidencia de delitos con los mismos criterios en toda la entidad y los mecanismos para facultar su difusi&oacute;n permanente;</em></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong><em></em></strong></p>\r\n<p><strong><em></em></strong></p>\r\n<p><strong><em></em></strong></p>\r\n<p><strong><em></em></strong></p>\r\n<p><strong><em>V. Formular propuestas para el Programa Estatal de Seguridad P&uacute;blica, as&iacute; como para llevarlo a cabo y evaluar su desarrollo;</em></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong><em>VI. Tomar medidas y realizar acciones y operativos conjuntos; y</em></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong><em>VII. En los municipios del estado se podr&aacute;n formalizar los convenios de colaboraci&oacute;n respectivos para brindar los servicios de seguridad p&uacute;blica que se estimen pertinentes, bajo la coordinaci&oacute;n del titular del Poder Ejecutivo del Estado;</em></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong><em>Las instituciones de seguridad p&uacute;blica tanto del Estado como de los municipios deber&aacute;n coordinarse para cumplir los objetivos de la seguridad p&uacute;blica.</em></strong></p>\r\n<p>&nbsp;</p>\r\n<p>14.- Buscando lograr mejores niveles de coordinaci&oacute;n y cooperaci&oacute;n entre corporaciones policiacas, a trav&eacute;s de la concentraci&oacute;n de responsabilidades y toma de decisiones operativas y de planeaci&oacute;n en mandos unipersonales con la necesaria utilidad de hacer m&aacute;s eficientes las labores de seguridad p&uacute;blica.</p>\r\n<p>&nbsp;</p>\r\n<p>15.- En teor&iacute;a, este esquema de operaci&oacute;n facilitar&iacute;a la coordinaci&oacute;n de las diferentes corporaciones polic&iacute;acas bajo esquemas generales de pol&iacute;tica y la implementaci&oacute;n de pol&iacute;ticas locales acordes a las problem&aacute;ticas del Estado, as&iacute; como el control administrativo-multas o quejas de servicios-por medio de los bandos de polic&iacute;a y gobierno.</p>\r\n<p>&nbsp;</p>\r\n<p>16.- El tutelar la vigilancia dentro de una sociedad es una obligaci&oacute;n&nbsp; a &nbsp; cargo &nbsp; del&nbsp; Estado, &nbsp; pues &nbsp; &eacute;ste&nbsp; tiene&nbsp; la capacidad&nbsp;</p>\r\n<p>operativa y administrativa-jurisdiccional legal y leg&iacute;timamente constituida para aplicar la ley con la fuerza en caso necesario.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>17.- El objetivo primordial del Mando Policial Centralizado es crear un sistema estatal de coordinaci&oacute;n policiaca, basado en una cadena de mando que parte del Ejecutivo del Estado, estableciendo la condici&oacute;n de una profesionalizaci&oacute;n y certificaci&oacute;n de las personas que se dediquen a las labores de seguridad p&uacute;blica. Responsabilizando en primer t&eacute;rmino a los gobiernos locales con la intenci&oacute;n de mejorar sustancialmente los niveles y calidad de la coordinaci&oacute;n, que el trabajo preventivo y de seguridad p&uacute;blica requiere.</p>\r\n<p>&nbsp;</p>\r\n<p>18.- En conclusi&oacute;n la presente iniciativa propone la creaci&oacute;n del Mando Policial Centralizado de los cuerpos y fuerzas de seguridad a cargo del Gobernador del Estado, mediante el cual asumir&iacute;a las funciones y responsabilidades originarias de los gobiernos municipales, de polic&iacute;a y seguridad p&uacute;blica; cuya facultad est&aacute; contemplada en la Constituci&oacute;n Pol&iacute;tica de los Estados Unidos Mexicanos y la Constituci&oacute;n Pol&iacute;tica del Estado de Jalisco, con el objeto de garantizar la seguridad de los ciudadanos, mantener el orden p&uacute;blico y preservar la paz social. Buscando al mismo tiempo: a) fortalecer las instituciones de seguridad p&uacute;blica; b) la prevenci&oacute;n social de la violencia y el delito; c) la corresponsabilidad de los distintos &oacute;rdenes de gobierno y entre los distintos poderes p&uacute;blicos y d) seguimiento, evaluaci&oacute;n y control de los programas de seguridad p&uacute;blica a cargo de la ciudadan&iacute;a.</p>\r\n<p>&nbsp;</p>\r\n<p>Todas estas razones justifican plenamente la presente <strong>INICIATIVA DE DECRETO QUE ESTABLECE LAS BASES PARA LA COORDINACI&Oacute;N DEL&nbsp; MANDO POLICIAL CENTRALIZADO EN EL ESTADO DE JALISCO.</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>19.- Las repercusiones en caso de llegar a aprobarse la presente Iniciativa, en el &aacute;mbito jur&iacute;dico, econ&oacute;mico, social o presupuestal, son del todo positivas:</p>\r\n<p>&nbsp;</p>\r\n<p>a) En lo jur&iacute;dico, en nada atenta con el orden de convivencia, por el contrario, al impulsar la creaci&oacute;n de un mando policial centralizado para efectos de tomar el control provisional de polic&iacute;as municipales en momentos o casos de emergencia o fuerza grave que considere el gobernador del estado, dar&iacute;a paso a una corporaci&oacute;n de seguridad p&uacute;blica mejor organizada y unificada que permita realizar acciones m&aacute;s articuladas y efectivas, tendientes a salvaguardar la integridad, los derechos, las libertades y el patrimonio de las personas, as&iacute; como preservar el orden y la paz p&uacute;blicos y, en su caso, restablecerlo; realizar funciones de prevenci&oacute;n de la violencia y de los delitos, reaccionando de manera inmediata en contra de los mismos.</p>\r\n<p>&nbsp;</p>\r\n<p>b) En el aspecto econ&oacute;mico y presupuestal, en nada impacta a las finanzas p&uacute;blicas, en virtud de que la iniciativa se circunscribe al &aacute;mbito estrictamente administrativo, operacional y de reingenier&iacute;a organizacional provisional, y por lo tanto la instituci&oacute;n y&nbsp; autoridades&nbsp; encargadas de&nbsp; ello&nbsp;</p>\r\n<p>ya est&aacute;n contempladas en los presupuestos actuales. En el Presupuesto de Egresos de la Federaci&oacute;n 2012 se autoriz&oacute; el Subsidio para el otorgamiento de programas de apoyo a las entidades federativas en materia de seguridad p&uacute;blica (PROASP). Adem&aacute;s&nbsp; se&nbsp; cuenta&nbsp; con&nbsp; el&nbsp; <em>Presupuesto &nbsp; para&nbsp;</em></p>\r\n<p><em><br /> </em></p>\r\n<p><em>Seguridad Nacional</em>, mismo que otorga la asignaci&oacute;n de financiamiento en materia de seguridad para los Estados y los municipios; asimismo existen recursos federales como lo son el <em>Fondo de Aportaci&oacute;n a la Seguridad P&uacute;blica, el FASP </em>y el<em> Subsidio para la Seguridad P&uacute;blica de los Municipios (Subsemun), </em>para tales prop&oacute;sitos.</p>\r\n<p>&nbsp;</p>\r\n<p>c) En lo social, la nueva disposici&oacute;n en el caso de aprobarse la presente propuesta beneficiara a los miembros de los cuerpos de seguridad p&uacute;blica y a la ciudadan&iacute;a en general: la modernizaci&oacute;n, la constante capacitaci&oacute;n &eacute;tica y civil, el adiestramiento, la ense&ntilde;anza de valores y una adecuada infraestructura fortalecer&iacute;an a la polic&iacute;a municipal, pudiendo enfrentar con mayor eficiencia el delito y la delincuencia organizada. Aunado a esto, el esquema de Mando Policial Centralizado ser&aacute; el factor que habr&aacute; de recuperar para la entidad la tranquilidad y la prevalencia plena del Estado de Derecho, por lo que su instauraci&oacute;n ser&aacute; un acierto que consolide las inversiones y garantice la paz social. Adem&aacute;s de constituirse como una de las herramientas m&aacute;s eficaces contra la criminalidad, para la adecuada salvaguarda de los jaliscienses, sus familias y su patrimonio. Por &uacute;ltimo, el modelo de Policial Centralizado atiende&nbsp; la&nbsp; exigencia&nbsp; social&nbsp; de&nbsp; hacer&nbsp; v&aacute;lido&nbsp; su derecho a&nbsp;</p>\r\n<p>vivir y trabajar en paz. Tambi&eacute;n se constituye como fundamento primordial de garant&iacute;a, certeza jur&iacute;dica y equidad para todos. Lo cual generar&aacute; las condiciones y el ambiente propicio de armon&iacute;a y paz social y recuperara la confianza ciudadana en las instituciones encargadas de brindar la seguridad p&uacute;blica.</p>\r\n<p>&nbsp;</p>\r\n<p>Por lo expuesto y fundado, someto a la consideraci&oacute;n de esta Honorable Asamblea, la siguiente iniciativa:</p>\r\n<p>&nbsp;</p>\r\n<p><strong>INICIATIVA DE DECRETO QUE ESTABLECE LAS BASES PARA LA COORDINACI&Oacute;N DEL&nbsp; MANDO POLICIAL CENTRALIZADO EN EL ESTADO DE JALISCO.</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>DECRETO:</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&Uacute;NICO: <strong>SE ESTABLECEN LAS BASES PARA LA COORDINACI&Oacute;N DEL&nbsp; MANDO POLICIAL CENTRALIZADO EN EL ESTADO DE JALISCO, para quedar como sigue:</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Art&iacute;culo 1.- </strong>El presente decreto tiene por objeto establecer las bases para la coordinaci&oacute;n del Mando Policial Centralizado;&nbsp; en atenci&oacute;n a la facultad que al Ejecutivo del Estado le confiere el art&iacute;culo 50, fracciones XII y XIII de la Constituci&oacute;n Pol&iacute;tica del Estado de Jalisco, en concordancia con el art&iacute;culo 115, fracci&oacute;n VII, p&aacute;rrafo primero, de la Constituci&oacute;n Pol&iacute;tica de los Estados Unidos Mexicanos.</p>\r\n<p><strong></strong></p>\r\n<p><strong>Art&iacute;culo 2.- </strong>El Ejecutivo Estatal para mantener el orden y la tranquilidad p&uacute;blica en el Estado podr&aacute; ordenar la concentraci&oacute;n de los cuerpos de seguridad p&uacute;blica bajo la conducci&oacute;n y coordinaci&oacute;n de un mando &uacute;nico estatal, en situaciones que a su juicio considere pongan en riesgo el orden p&uacute;blico y/o la paz social o que comprometan la seguridad y el bienestar de la poblaci&oacute;n. Debiendo emprender todas las acciones y estrategias necesarias enfocadas a&nbsp; resolver&nbsp; los&nbsp; conflictos&nbsp; sean&nbsp; de &iacute;ndole&nbsp; criminal o de&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>cualquier otra naturaleza, disponiendo al efecto de las fuerzas armadas del Estado y municipales en su caso, de manera provisional y en tanto se restablezca el orden social y la paz p&uacute;blica.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Art&iacute;culo 3.- </strong>Todas las instituciones de seguridad p&uacute;blica del Estado, deber&aacute;n sumarse al mandato del Ejecutivo en las tareas de auxilio, rescate, prevenci&oacute;n, combate y atenci&oacute;n de la poblaci&oacute;n en situaci&oacute;n de riesgo. Teniendo la obligaci&oacute;n de acatar las &oacute;rdenes que de manera directa o por&nbsp; facultad delegada al Secretario de Seguridad P&uacute;blica, transmita el Ejecutivo Estatal en los t&eacute;rminos de este decreto. Las autoridades respectivas en sus distintos &aacute;mbitos de competencia facilitaran la colaboraci&oacute;n inter e intragubernamental.</p>\r\n<p>&nbsp;</p>\r\n<p>Dicha obligaci&oacute;n permanecer&aacute; vigente en los t&eacute;rminos y condiciones establecido en el Acuerdo que para tal efecto emita y publique&nbsp; el gobernador del Estado.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Art&iacute;culo 4.- </strong>La declaratoria de concentraci&oacute;n del Mando Policial Centralizado por conducto del Ejecutivo,&nbsp; s&oacute;lo&nbsp; ser&aacute;&nbsp; con el objetivo&nbsp;</p>\r\n<p>primordial de garantizar, mantener y restablecer el orden y la paz p&uacute;blicos que se hayan visto comprometidos por la delincuencia o contingencias provocadas por la naturaleza.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Art&iacute;culo 5.- </strong>El Ejecutivo Estatal con previo conocimiento y justificadas las causas que exijan operar el Sistema de Mando Policial Centralizado proceder&aacute; de manera inmediata a la emisi&oacute;n del &nbsp; Acuerdo&nbsp; correspondiente,&nbsp; &nbsp; asumiendo&nbsp; de &nbsp; manera &nbsp; pronta,&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>oportuna y transitoria el Mando &Uacute;nico Estatal de las polic&iacute;as, ejerciendo la facultad constitucional de transmitir &oacute;rdenes a los cuerpos de seguridad p&uacute;blica, disponer de los mismos, sumando todas las fuerzas policiales de manera coordinada y bajo un sistema institucional donde la libertad y los derechos humanos ser&aacute;n cuestiones privilegiadas, lo cual exigir&aacute; de la cooperaci&oacute;n concurrente entre diferentes &oacute;rdenes de gobierno y dependencias competentes respectivas.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Art&iacute;culo 6.- </strong>En el cumplimiento de sus funciones, tales como preservar el Estado de Derecho, el Estado por conducto del Ejecutivo implementar&aacute; las pol&iacute;ticas p&uacute;blicas en materia de seguridad ciudadana para combatir la delincuencia empleando sistemas de inteligencia y contrainteligencia que brinden al Estado los elementos suficientes para una adecuada procuraci&oacute;n de justicia, fortaleciendo el ejercicio de la acci&oacute;n policial y la creaci&oacute;n de oportunidades para el desarrollo econ&oacute;mico y social. Lo que obliga a formalizar alianzas entre las autoridades respectivas y suscribir acuerdos y convenios de coordinaci&oacute;n en materia de seguridad p&uacute;blica.</p>\r\n<p><strong></strong></p>\r\n<p><strong>Art&iacute;culo 7.- </strong>La seguridad p&uacute;blica es competencia exclusiva del Estado en sus tres niveles de la administraci&oacute;n p&uacute;blica, por lo que participar&aacute;n&nbsp; de manera coordinada en el mantenimiento de la seguridad p&uacute;blica en los t&eacute;rminos que establezcan los respectivos convenios; mismo que se ejercer&aacute; a trav&eacute;s de las Fuerzas y Cuerpos de Seguridad de sus respectivos &aacute;mbitos de gobierno.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Reconociendo a la Seguridad P&uacute;blica como un Derecho Humano con todas las implicaciones que esto conlleva.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Art&iacute;culo 8.- </strong>Las fuerzas y cuerpos de seguridad bajo el mando del Ejecutivo, deber&aacute;n observar en todo momento el cumplimiento de las Leyes y disposiciones generales, ejecutando las &oacute;rdenes que reciban de las autoridades competentes, en el &aacute;mbito de sus respectivas competencias.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Art&iacute;culo 9.-</strong>La concentraci&oacute;n y coordinaci&oacute;n implica adem&aacute;s de la seguridad p&uacute;blica, tareas de auxilio y protecci&oacute;n a las personas y asegurar la conservaci&oacute;n y custodia de los bienes que se encuentren en situaci&oacute;n de peligro por cualquier causa.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Art&iacute;culo 10.- </strong>La autoridad en la materia establecer&aacute; los instrumentos, mecanismos, m&eacute;todos y t&eacute;cnicas de coordinaci&oacute;n para la homologaci&oacute;n de procedimientos de operaci&oacute;n y actuaci&oacute;n polic&iacute;aca en situaciones de emergencia, para salvaguardar la vida, la integridad, los bienes y el pleno ejercicio de los derechos y libertades de la poblaci&oacute;n. Debiendo priorizar las estrategias correspondientes para fortalecer las funciones de operaci&oacute;n y control de la seguridad p&uacute;blica.</p>\r\n<p><strong></strong></p>\r\n<p><strong>Art&iacute;culo 11.- </strong>El titular del Ejecutivo y de los ayuntamientos del Estado, se organizar&aacute;n para mejorar la funci&oacute;n de la seguridad p&uacute;blica mediante la celebraci&oacute;n de convenios de coordinaci&oacute;n y colaboraci&oacute;n intermunicipal, interregional o de cualquier otra naturaleza que se requiera. Los ayuntamientos a trav&eacute;s de la vinculaci&oacute;n, &nbsp; &nbsp; podr&aacute;n&nbsp; &nbsp; proponer&nbsp; &nbsp; las&nbsp; &nbsp; acciones &nbsp; &nbsp; sociales, &nbsp; de&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>infraestructura y de servicios requeridas para la reconstrucci&oacute;n del tejido social.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Art&iacute;culo 12.-</strong>El sistema de coordinaci&oacute;n que al efecto se implemente para organizarse intermunicipal o regionalmente tendr&aacute; como objetivo primordial estudiar, planificar, ejecutar, controlar y evaluar pol&iacute;ticas, proyectos, programas y acciones en esta materia para mantener y restablecer, en su caso, el orden y la seguridad ciudadana. El gobernador puede designar un coordinador de la polic&iacute;a si lo considera necesario.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Art&iacute;culo 13.- </strong>El ejecutivo podr&aacute; autorizar a los cuerpos de seguridad p&uacute;blica concentrados en un Mando Policial Centralizado, el acceso a la informaci&oacute;n de las instituciones de seguridad p&uacute;blica. As&iacute; como captar, recibir y analizar cuantos datos tengan inter&eacute;s para el orden y la seguridad p&uacute;blica y sean &uacute;tiles en las tareas de prevenci&oacute;n e investigaci&oacute;n de los delitos.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Art&iacute;culo 14.-</strong> El Sistema institucional que se implemente por parte del Ejecutivo en coordinaci&oacute;n con las autoridades competentes para operar el Mando Policial Centralizado de la administraci&oacute;n p&uacute;blica&nbsp; en&nbsp; su&nbsp; conjunto,&nbsp; se&nbsp; orientar&aacute;&nbsp; al&nbsp; dise&ntilde;o&nbsp; y&nbsp; desarrollo&nbsp; de&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>sistemas en los que se promuevan modelos policiales acordes con la participaci&oacute;n de la poblaci&oacute;n y la ciudadan&iacute;a. Adem&aacute;s, &eacute;sta no se limitar&aacute; solamente a la lucha contra la delincuencia, sino que buscar&aacute; crear un ambiente propicio y adecuado para la convivencia pac&iacute;fica de todas las personas, donde tengan plena vigencia los derechos econ&oacute;micos y sociales.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>TRANSITORIOS</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>PRIMERO: </strong>El presente decreto entrar&aacute; en vigor al d&iacute;a siguiente de su publicaci&oacute;n en el peri&oacute;dico oficial El Estado de Jalisco.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>SEGUNDO: </strong>En un plazo de sesenta d&iacute;as contados a partir de la entrada en vigor del presente decreto, El Estado y los municipios por conducto de sus ayuntamientos, deber&aacute;n realizar las adecuaciones necesarias a las disposiciones aplicables en la materia de conformidad con lo dispuesto en el presente decreto.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; A T E N T A M E N T E.</strong></p>\r\n<p><strong>\"2012, A&Ntilde;O DE LA EQUIDAD ENTRE MUJERES Y HOMBRES\".</strong></p>\r\n<p>Sal&oacute;n de Sesiones, Guadalajara, Jalisco a&nbsp; 29&nbsp; de Noviembre de 2012</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>DIP. V&Iacute;CTOR MANUEL S&Aacute;NCHEZ OROZCO</strong></p>\r\n<p><strong></strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','MANDO POLICIAL CENTRALIZADO',2,1),(70,'<p><strong>H. CONGRESO DEL ESTADO DE JALISCO:</strong></p>\r\n<p><strong>PRESENTE.</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Los suscritos <strong>DIPUTADOS INTEGRANTES DE LA FRACCI&Oacute;N PARLAMENTARIA DEL PARTIDO ACCI&Oacute;N NACIONAL </strong>en la LX Legislatura del congreso del Estado de Jalisco,<strong> </strong>en ejercicio de las facultades que nos otorgan los art&iacute;culos 28, fracci&oacute;n I de la Constituci&oacute;n Pol&iacute;tica del Estado de Jalisco, y conforme a los art&iacute;culos 147, p&aacute;rrafo 1, fracci&oacute;n I y 149&nbsp; de la Ley Org&aacute;nica del Poder Legislativo del Estado de Jalisco, me permito poner a consideraci&oacute;n de esta Honorable Asamblea Legislativa, la siguiente <strong>INICIATIVA DE DECRETO POR LA QUE SE DEROGA LA FRACCI&Oacute;N II DEL ART&Iacute;CULO 147; Y SE ADICIONAN EL P&Aacute;RRAFO SEGUNDO, AL ART&Iacute;CULO 148, DE LA LEY DE LOS SERVICIOS DE VIALIDAD, TR&Aacute;NSITO Y TRANSPORTE DEL ESTADO DE JALISCO</strong> de conformidad con la siguiente:</p>\r\n<p>&nbsp;</p>\r\n<p><strong>EXPOSICI&Oacute;N DE MOTIVOS</strong></p>\r\n<p><strong></strong></p>\r\n<p><strong></strong></p>\r\n<p>El Partido Acci&oacute;n Nacional, siempre ha perseguido el bien com&uacute;n y el bienestar de la sociedad en general, conscientes de que hay sectores que requieren de un especial apoyo como los j&oacute;venes y otros grupos en situaciones vulnerables quienes requieren de acciones de gobierno y leyes que garanticen la inclusi&oacute;n de todos los ciudadanos en la vida social y econ&oacute;mica en nuestro pa&iacute;s.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>La presente iniciativa propone reformar art&iacute;culos de la Ley de los Servicios de Vialidad, Tr&aacute;nsito y Transporte del Estado de Jalisco, el fin es exentar del pago de cualquier tarifa relativa al transporte p&uacute;blico a todos los estudiantes sin distinci&oacute;n alguna, y as&iacute; contribuir con la econom&iacute;a y calidad de vida en general de los mismos y su familia.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Para muchos padres de familia del Estado de Jalisco, es dif&iacute;cil lograr que sus hijos puedan acceder a alguna escuela p&uacute;blica para llevar a cabo sus estudios, y m&aacute;s dif&iacute;cil a&uacute;n, que lo puedan hacer en una escuela privada. Los costos correspondientes a inscripci&oacute;n, colegiaturas, &uacute;tiles escolares, uniformes, transporte p&uacute;blico y dem&aacute;s gastos que tienen que ver exclusivamente con la educaci&oacute;n de los hijos, hacen que la cuenta del gasto familiar se incremente considerablemente.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>De igual forma, los j&oacute;venes que est&aacute;n en edad de cursar un bachillerato, carrera t&eacute;cnica, licenciatura o posgrado se enfrentan a esta realidad a la que d&iacute;a a d&iacute;a nos enfrentamos en la que, muchas veces, por falta de apoyos o incentivos para la permanencia en el estudio, se ven obligados a claudicar su aspiraci&oacute;n acad&eacute;mica. Sobre todo, porque en muchas ocasiones ya no cuentan con el apoyo de sus padres para seguir estudiando y pagando los gastos de la educaci&oacute;n, por lo que se ven obligados a entrar a trabajar a un empleo a temprana edad que muchos casos no es suficiente para fomentar el regreso a las aulas. Incluso, es m&aacute;s preocupante a&uacute;n tener casos de j&oacute;venes que adquieren alguna adicci&oacute;n o ingresan a las filas del crimen organizado.</p>\r\n<p>&nbsp;</p>\r\n<p>En la actualidad, el costo por d&iacute;a del transporte p&uacute;blico en Jalisco es elevado, sobre todo, considerando que en muchas ocasiones el trayecto para llegar al centro de estudios, requiere de tomar varias rutas. Y tomando en cuenta el nivel de ingresos al que puede acceder una familia o un joven con las condiciones actuales de la econom&iacute;a en nuestro estado, se puede inferir que se vuelve necesario un subsidio al transporte p&uacute;blico para los estudiantes como incentivo para que puedan seguir avanzando de nivel y grado acad&eacute;mico.</p>\r\n<p>&nbsp;</p>\r\n<p>Consid&eacute;rese adem&aacute;s el hecho de que la mayor&iacute;a de los ciudadanos que no usan el transporte p&uacute;blico consideran que el precio es una de las razones importantes para no hacerlo.</p>\r\n<p>&nbsp;</p>\r\n<p>Cabe se&ntilde;alar, que como parte de la propuesta que el Gobernador Constitucional del Estado de Jalisco formul&oacute; en la contienda electoral, se habl&oacute; particularmente de este tema; particularmente de la dificultad que tienen los j&oacute;venes y los padres de familia para mandar a sus hijos a la escuela por el alto costo del transporte p&uacute;blico y se consolid&oacute; la idea de ser <em>\"el primer gobierno del pa&iacute;s que pague el transporte p&uacute;blico a todos los estudiantes\".</em> Recientemente el Gobernador ha confirmado su intenci&oacute;n de llevar a cabo su propuesta de campa&ntilde;a y ha se&ntilde;alado en medios de comunicaci&oacute;n que dentro de los primeros 100 d&iacute;as de su gobierno, se podr&aacute; ver materializado este gran apoyo para los estudiantes. Dicha medida <br /> cuyo costo para beneficiar a 200,000 estudiantes ser&aacute; de 230 millones de pesos, recursos que (inform&oacute; en entrevista el Gobernador electo Arist&oacute;teles Sandoval D&iacute;az), est&aacute;n contemplados en el Presupuesto de Egresos 2013, dentro de la partida 4414 \"Aportaci&oacute;n para el Desarrollo Humano en el Estado\". Cuya partida est&aacute; catalogada como de ampliaci&oacute;n autom&aacute;tica, esto es, se puede ajustar durante el ejercicio del presupuesto si se necesita m&aacute;s recurso.</p>\r\n<p>&nbsp;</p>\r\n<p>Sandoval D&iacute;az present&oacute; desde la campa&ntilde;a la propuesta de transporte p&uacute;blico gratuito para estudiantes, donde mencion&oacute; cifras semejantes a las que hoy se esgrimen. Sin embargo, en el spot de televisi&oacute;n que circul&oacute; profusamente durante su campa&ntilde;a, se adujo que el transporte p&uacute;blico ser&iacute;a gratuito para \"todos\" los estudiantes de Jalisco. De esta manera la inversi&oacute;n que se realizar&aacute; cada a&ntilde;o en este programa ser&aacute; 200 y 230 millones de pesos.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>En total existen en la entidad 869 mil 577 estudiantes entre secundaria, preparatoria y licenciatura, sectores a los cuales se comprometi&oacute; Arist&oacute;teles a ofrecer transporte p&uacute;blico gratuito.</p>\r\n<p>&nbsp;</p>\r\n<p>Recordemos que en materia de pol&iacute;tica social este tipo de acciones no son nuevas, de hecho el nuevo programa de transporte gratuito se equipara al programa Llega, implementado por la Administraci&oacute;n del entonces Gobernador Emilio Gonz&aacute;lez M&aacute;rquez.</p>\r\n<p>&nbsp;</p>\r\n<p>Las reglas de operaci&oacute;n de dicho programa establecen que los apoyos se entregaban en efectivo, cheque o tarjeta bancaria de forma trimestral. S&oacute;lo inclu&iacute;a estudiantes de educaci&oacute;n media y superior de instituciones p&uacute;blicas con montos de mil 600 pesos trimestrales, si viv&iacute;an en el interior del Estado, y 600 pesos trimestrales si habitaban la zona metropolitana de Guadalajara.</p>\r\n<p>&nbsp;</p>\r\n<p>En 2012 el programa Llega cont&oacute; con 107 millones de pesos del Presupuesto estatal, pero adem&aacute;s de atender a la poblaci&oacute;n estudiantil, ofrec&iacute;a apoyos de transporte a personas con capacidades diferentes y de la tercera edad.</p>\r\n<p>&nbsp;</p>\r\n<p>Tambi&eacute;n existen antecedentes de transporte gratuito estudiantil en el Estado de Sonora, que gracias a los compromisos celebrados entre las autoridades y concesionarios ofrecen a los estudiantes transporte gratis mediante el servicio Bus Sonora, lo que representa un subsidio del 100 por ciento en el transporte para estudiantes, sin sacrificar la seguridad, calidad y servicio.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Con la actual situaci&oacute;n de crisis econ&oacute;mica, acciones de este tipo que representan beneficios econ&oacute;micos a un segmento de la poblaci&oacute;n dedicada a estudiar y que en su mayor&iacute;a no trabaja ni cuenta con un ingreso estable que le permita satisfacer sus necesidades personales y cubrir adem&aacute;s los actuales costos de las tarifas del transporte p&uacute;blico; los legisladores no podemos permanecer pasivos ni indiferentes ante una oferta que de llevarse a la pr&aacute;ctica representar&iacute;a un importante apoyo a la econom&iacute;a de la poblaci&oacute;n estudiantil, cuesti&oacute;n que consideramos loable y que requiere de nuestro actuar y compromiso para establecer dicha disposici&oacute;n en la Ley de la materia como un derecho para todos los estudiantes y de esta manera garantizar el transporte p&uacute;blico gratuito en el Estado de Jalisco, mirando en todo momento por su bienestar.</p>\r\n<p>&nbsp;</p>\r\n<p>De esta manera, todos los estudiantes ser&iacute;an directamente beneficiados por qu&eacute;&nbsp; har&iacute;a posible su movilidad sin la restricci&oacute;n econ&oacute;mica que muchas veces los limita. Adem&aacute;s con dicha iniciativa se apuesta al uso de medios colectivos de transporte y un intento de reducir la densidad de tr&aacute;fico y la contaminaci&oacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p>Nuestra obligaci&oacute;n como aut&eacute;nticos representantes populares radica en proteger los derechos e intereses de la sociedad, en este caso espec&iacute;fico, los de un grupo vulnerable como lo son los estudiantes de Jalisco.</p>\r\n<p>&nbsp;</p>\r\n<p>De poco servir&aacute; que las propuestas de exenci&oacute;n de pago o descuentos que est&eacute;n contenidas en la ley de la materia, si no van aparejadas de una medida que procure su puntual cumplimiento y esto s&oacute;lo ser&aacute; posible en tanto exista una regulaci&oacute;n adecuada contenida en la normatividad y que facilite mediante el uso y disfrute del derecho al transporte p&uacute;blico gratuito la concurrencia a clases de la totalidad de los estudiantes que concurren a los centros de ense&ntilde;anza p&uacute;blica, m&aacute;s all&aacute; de las condiciones econ&oacute;micas familiares. Al mismo tiempo dichos beneficios se convertir&aacute;n en un apoyo para revertir algunos &iacute;ndices como la deserci&oacute;n escolar ocasionados por la imposibilidad de poder sufragar el costo del trasporte.</p>\r\n<p>&nbsp;</p>\r\n<p>Hay que tener presente que muchos problemas vienen por decisiones pol&iacute;ticas que no se toman o se toman a destiempo, cuando la situaci&oacute;n ya es insostenible. Para incentivar el transporte p&uacute;blico es necesario racionalizar los criterios, regular los incrementos, optimizar los recursos y elaborar pol&iacute;ticas p&uacute;blicas que est&eacute;n debidamente sustentadas en el Derecho y permitidas por Ley.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>No podemos dejar al arbitrio de cada Administraci&oacute;n en turno la decisi&oacute;n de cu&aacute;nto aportar o qu&eacute; tarifas se deben aplicar en cada momento, porque eso genera mucha inestabilidad. Necesitamos de criterios objetivos y comunes, regulados en el marco normativo que den seguridad y certeza jur&iacute;dica a los usuarios del transporte y que hoy son los futuros destinatarios de la presente medida.</p>\r\n<p>&nbsp;</p>\r\n<p>Por lo anteriormente expuesto y de conformidad con los art&iacute;culos 149 y 154 de la Ley Org&aacute;nica del Poder Legislativo del Estado de Jalisco, tengo a bien presentar la siguiente&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>INICIATIVA DE DECRETO</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>UNICO: SE DEROGA LA FRACCI&Oacute;N II DEL ART&Iacute;CULO 147; Y SE ADICIONAN EL P&Aacute;RRAFO SEGUNDO, AL ART&Iacute;CULO 148, DE LA LEY DE LOS SERVICIOS DE VIALIDAD, TR&Aacute;NSITO Y TRANSPORTE DEL ESTADO DE JALISCO.</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Para quedar como sigue:</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Art&iacute;culo 147.-</strong> La reducci&oacute;n de tarifas en un cincuenta por ciento de la cuota ordinaria, solamente ser&aacute; obligatoria:</p>\r\n<p>&nbsp;</p>\r\n<p>I. En los casos de calamidad p&uacute;blica;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>II. <em>(se deroga);</em></strong></p>\r\n<p>&nbsp;</p>\r\n<p>...</p>\r\n<p>&nbsp;</p>\r\n<p>...</p>\r\n<p><strong></strong></p>\r\n<p><strong>Art&iacute;culo 148</strong>.- El pasaje obligatoriamente ser&aacute; gratuito para:</p>\r\n<p>&nbsp;</p>\r\n<p>Los miembros de la polic&iacute;a preventiva y autoridades de vialidad y tr&aacute;nsito, debidamente identificados y en el cumplimiento de sus funciones. Se presumir&aacute; que est&aacute;n en cumplimiento de sus funciones, cuando est&eacute;n uniformados.</p>\r\n<p>&nbsp;</p>\r\n<p><strong><em>A todos los estudiantes de escuelas privadas o p&uacute;blicas debidamente identificados. Para tales efectos, demostraran su calidad de estudiante quienes as&iacute; lo acrediten con la identificaci&oacute;n o credencial expedida por plantel escolar o instituci&oacute;n educativa en el que cursa sus estudios.</em></strong></p>\r\n<p><strong></strong></p>\r\n<p><strong><em>Esta disposici&oacute;n tendr&aacute; validez en cualquier ruta o servicio que preste de forma directa, subrogada o concesionada, cualquiera de los organismos p&uacute;blicos descentralizados que presten servicios de transporte p&uacute;blico colectivo o masivo de pasajeros en el Estado de Jalisco.</em></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>TRANSITORIOS:</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>ART&Iacute;CULO PRIMERO.-</strong> El presente Decreto entrar&aacute; en vigor al d&iacute;a siguiente de su publicaci&oacute;n en el Peri&oacute;dico Oficial \"El Estado de Jalisco\".</p>\r\n<p>&nbsp;</p>\r\n<p><strong>ART&Iacute;CULO SEGUNDO.-</strong> El Ejecutivo Estatal por medio de la dependencia encargada en materia de Vialidad, Tr&aacute;nsito y Transporte, deber&aacute; de adecuar el Reglamento de la Ley de los Servicios de Vialidad, Tr&aacute;nsito y Transporte del Estado de Jalisco.</p>\r\n<p><strong></strong></p>\r\n<p><strong>ART&Iacute;CULO TERCERO.-</strong>El Ejecutivo Estatal deber&aacute; de instar a los organismos p&uacute;blicos descentralizados en materia de transporte p&uacute;blico, a que desde la entrada en vigor del presente decreto, se realicen las acciones tendientes a que el acceso al Sistema del Transporte Colectivo de la Zona Metropolitana de Guadalajara; Servicios y Transportes; el Sistema de Tren El&eacute;ctrico Urbano y Macrobus sea totalmente gratuito para los estudiantes, dando puntual cumplimiento de las disposiciones contenidas en el presente.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>ART&Iacute;CULO CUARTO.-</strong> El Ejecutivo del Estado adoptara las medidas necesarias para que el programa del transporte p&uacute;blico gratuito para estudiantes, las reglas de operaci&oacute;n del mismo que al efecto labore y los recursos, gastos y costes que se generen con motivo de su implementaci&oacute;n y operatividad del pasaje gratuito estudiantil sean absorbidos dentro de la partida 4414 \"Aportaci&oacute;n para el Desarrollo Humano en el Estado\", prevista en el Presupuesto de Egresos respectivo.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>ATENTAMENTE&nbsp;</p>\r\n<p>SAL&Oacute;N DE SESIONES DEL H. CONGRESO DEL ESTADO</p>\r\n<p>GUADALAJARA, JALISCO A MARZO DE 2013</p>\r\n<p>\"2013. A&Ntilde;O DE BELISARIO DOM&Iacute;NGUEZ Y 190 ANIVERSARIO DEL NACIMIENTO DEL ESTADO LIBRE Y SOBERANO DE JALISCO\"</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>DIP. JOS&Eacute; GILDARDO GUERRERO TORRES</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>DIP.<strong> </strong>V&Iacute;CTOR MANUEL S&Aacute;NCHEZ OROZCO</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>DIP. JUAN JOS&Eacute; CUEVAS GARC&Iacute;A</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>DIP. JOS&Eacute; LUIS MUNG&Iacute;A CARDONA</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>DIP. NORMA ANG&Eacute;LICA CORDERO PRADO</p>\r\n<p>&nbsp;</p>\r\n<p>DIP. ALBERTO ESQUER GUTI&Eacute;RREZ</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>DIP. LUIS GUILLERMO MART&Iacute;NEZ MORA</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>DIP. GABRIELA ANDAL&Oacute;N BECERRA</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>DIP. EL&Iacute;AS OCTAVIO I&Ntilde;OGUEZ MEJ&Iacute;A</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>DIP. JUAN CARLOS M&Aacute;RQUEZ ROSAS</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>DIP. JOS&Eacute; HERN&Aacute;N CORT&Eacute;S BERUMEN</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>DIP. JAIME ISMAEL D&Iacute;AZ BRAMBILA</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>DIP. MARIANA AR&Aacute;MBULA MEL&Eacute;NEZ</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','nueva pasaje gratuito obligatorio',2,1),(71,'<p>&nbsp;</p>\r\n<p>H. CONGRESO DEL ESTADO DE JALISCO&nbsp;</p>\r\n<p>PRESENTE</p>\r\n<p>&nbsp;</p>\r\n<p>El que suscribe Diputado <strong>Alberto Esquer Guti&eacute;rrez, </strong>con fundamento en el art&iacute;culo 28 fracci&oacute;n I de la Constituci&oacute;n Pol&iacute;tica, as&iacute; como los art&iacute;culos 22, fracci&oacute;n I, 147 numeral 1, fracci&oacute;n I, 150, 152 y 154 de la Ley Org&aacute;nica del Poder Legislativo, ambos ordenamientos del Estado de Jalisco, someto a su consideraci&oacute;n la siguiente INICIATIVA DE ACUERDO LEGISLATIVO que <strong>Se exhorta al Pleno del Congreso del Estado de Jalisco, a que a la brevedad posible apruebe los dict&aacute;menes al voto de la reforma de los art&iacute;culos 24 y 40 de la Constituci&oacute;n Pol&iacute;tica de los Estados Unidos Mexicanos, en calidad de integrante del Constituyente Permanente,</strong> lo que se hace con base en la siguiente:&nbsp; &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>EXPOSICI&Oacute;N DE MOTIVOS&nbsp;</strong></p>\r\n<p><br /> Todas las autoridades deber&aacute;n promover, respetar, proteger y garantizar los derechos humanos de conformidad con los principios de universalidad, interdependencia, indivisibilidad y progresividad, por lo que es de suma importancia atender las necesidades que demandan los ciudadanos con relaci&oacute;n a la participaci&oacute;n religiosa. En atenci&oacute;n a estas necesidades, el Congreso de la Uni&oacute;n realizaron muy importantes modificaciones a los art&iacute;culos 24 y 40 de la Constituci&oacute;n Pol&iacute;tica de los Estados Unidos Mexicanos, mismas que fueron remitidas a los congresos de los Estados para su an&aacute;lisis y aprobaci&oacute;n, por tratarse del proceso especial de reforma Constitucional, en el que se incluye a los integrantes de la Federaci&oacute;n para que emitan un voto aprobatorio o reprobatorio en la reforma y respetando as&iacute; el pacto federal.</p>\r\n<p>Cabe destacar&nbsp; que los Estados de Puebla, Baja California Sur, Campeche, Chiapas, Chihuahua, Coahuila, Durango, Quer&eacute;taro, Estado de M&eacute;xico, Hidalgo, Nayarit, Nuevo le&oacute;n, Tlaxcala y Sonora, han avalado dichas reformas con lo que se completan catorce votos favorables, faltando &uacute;nicamente dos votos favorables, para considerar que estas propuestas son parte de la Constituci&oacute;n Federal. En los mismos t&eacute;rminos es de se&ntilde;alar que seis Congresos se han manifestado en contra de la reforma, trat&aacute;ndose de los Congresos de los estados de Zacatecas, Baja California, Michoac&aacute;n, Morelos, Oaxaca y Quintana Roo.</p>\r\n<p>La C&aacute;mara de Senadores envi&oacute; al Congreso del Estado de Jalisco, los oficios DGPL-2P3A.-5337.13., y DGPL-2P3A.-5336.13., respectivamente, con los que remite las minutas de reforma a los art&iacute;culos 24 y 40 de la Constituci&oacute;n Federal, estos documentos fueron recibidos el 29 de marzo de 2012 en la Oficial&iacute;a de Partes de &eacute;ste Congreso del Estado de Jalisco y entraron en el apartado de Comunicados de la sesi&oacute;n de Pleno de fecha 27 de Abril de 2012, siendo esta la fecha en que se turn&oacute; dicho comunicado a la Comisi&oacute;n de Puntos Constitucionales, Estudios Legislativos y Reglamentos, sin que a la fecha se hubiere emitido el voto a favor o en contra de la&acute; reforma, raz&oacute;n por la que se estima procedente el presente Acuerdo Legislativo.</p>\r\n<p>Considero adecuada se&ntilde;alar que si bien es cierto que en la Comisi&oacute;n citada se est&aacute;n atendiendo este y otros asuntos rezagados de la anterior legislatura, resulta valido se&ntilde;alar que el proceso de reforma de la Constituci&oacute;n Federal es especial por su propia naturaleza, justificando as&iacute; la urgencia, pero adem&aacute;s debemos se&ntilde;alar que el proceso legislativo a la fecha a agotado todos los plazos que se&ntilde;ala nuestra ley org&aacute;nica para su dictaminaci&oacute;n siendo adem&aacute;s obligatorio por Ley atender el asunto en los t&eacute;rminos aqu&iacute; se&ntilde;alados.</p>\r\n<p>Por &uacute;ltimo es de agregar que en el presente punto de Acuerdo, no he se&ntilde;alado las bondades o caracter&iacute;sticas especiales de la reformas a la Constituci&oacute;n Federal, pues ellas habr&aacute;n de observarse en el procedimiento de dictaminaci&oacute;n respectivo, de tal manera que en el presente nos hemos limitado &uacute;nicamente a se&ntilde;alar la necesidad de la urgente dictaminaci&oacute;n.&nbsp;</p>\r\n<p>Por lo antes expuesto, fundado y motivado, se somete a la consideraci&oacute;n del Pleno del Congreso del Estado de Jalisco, la siguiente</p>\r\n<p>&nbsp;</p>\r\n<p><strong>INICIATIVA DE ACUERDO LEGISLATIVO</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>&Uacute;nico:</strong><strong>Se exhorta al Pleno del Congreso del Estado de Jalisco, a que a la brevedad posible apruebe los dict&aacute;menes al voto de la reforma de los art&iacute;culos 24 y 40 de la Constituci&oacute;n Pol&iacute;tica de los Estados Unidos Mexicanos, en calidad de integrante del Constituyente Permanente.</strong></p>\r\n<p><strong></strong></p>\r\n<p><strong></strong></p>\r\n<p><strong>Atentamente</strong></p>\r\n<p><strong>Sal&oacute;n de sesiones del Congreso del Estado de Jalisco&nbsp;</strong></p>\r\n<p><strong></strong></p>\r\n<p><strong></strong></p>\r\n<p><strong></strong></p>\r\n<p><strong>Diputado Alberto Esquer Guti&eacute;rrez</strong></p>\r\n<p>&nbsp;</p>','RPEUBA',2,1);
/*!40000 ALTER TABLE `perfil_iniciativa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_iniciativa_cat`
--

DROP TABLE IF EXISTS `perfil_iniciativa_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_iniciativa_cat` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `imagen` varchar(30) DEFAULT NULL,
  `belong` smallint(2) NOT NULL DEFAULT '0',
  `subelong` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_iniciativa_cat`
--

LOCK TABLES `perfil_iniciativa_cat` WRITE;
/*!40000 ALTER TABLE `perfil_iniciativa_cat` DISABLE KEYS */;
INSERT INTO `perfil_iniciativa_cat` VALUES (0,'Ninguno',NULL,0,0),(1,'De acuerdo legislativo',NULL,0,0),(2,'Decreto o ley',NULL,0,0),(3,'Iniciativas de grupo parlamentario',NULL,0,0);
/*!40000 ALTER TABLE `perfil_iniciativa_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_index`
--

DROP TABLE IF EXISTS `personal_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_index` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `cargo` varchar(50) NOT NULL DEFAULT '',
  `contacto` varchar(50) NOT NULL DEFAULT '',
  `contenido` text NOT NULL,
  `imagen` varchar(10) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_index`
--

LOCK TABLES `personal_index` WRITE;
/*!40000 ALTER TABLE `personal_index` DISABLE KEYS */;
INSERT INTO `personal_index` VALUES (1,'Dr. David Chung Arceo','Director General','direccion@ortobiologicos.org','','david'),(2,'Dr. Agnet Adeim To','Responsable Sanitario','agnet@otobiologicos.org','',''),(3,'Agnet Adeim Ot','responsable de Calidad','agnet@otobiologicos.org','',''),(4,'Agnet Adeim Ot','Subdirector MÃ©dico','agnet@otobiologicos.org','',''),(5,'Agnet Adeim Ot','Director de Operaciones','agnet@otobiologicos.org','',''),(6,'Agnet Adeim Ot','Equipo de procuraciÃ³n','agnet@otobiologicos.org','',''),(7,'Agnet Adeim Ot','Proceso','agnet@otobiologicos.org','',''),(8,'Agnet Adeim Ot','Acondicionamiento','agnet@otobiologicos.org','',''),(9,'Juan Pedro','Vendedor de Pitayas','pitaya@ortobiologicos.org','','');
/*!40000 ALTER TABLE `personal_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posicion_banner`
--

DROP TABLE IF EXISTS `posicion_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posicion_banner` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posicion_banner`
--

LOCK TABLES `posicion_banner` WRITE;
/*!40000 ALTER TABLE `posicion_banner` DISABLE KEYS */;
INSERT INTO `posicion_banner` VALUES (1,'cabezal'),(2,'bann1'),(3,'bann2'),(4,'bann3'),(5,'bann4'),(6,'footer'),(7,'pestana');
/*!40000 ALTER TABLE `posicion_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectos_index`
--

DROP TABLE IF EXISTS `proyectos_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyectos_index` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL DEFAULT '',
  `contenido` text,
  `cliente` varchar(50) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `proyecto` varchar(50) DEFAULT NULL,
  `publicado` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectos_index`
--

LOCK TABLES `proyectos_index` WRITE;
/*!40000 ALTER TABLE `proyectos_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyectos_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicaciones_index`
--

DROP TABLE IF EXISTS `publicaciones_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicaciones_index` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL DEFAULT '',
  `genero` varchar(50) NOT NULL DEFAULT '',
  `editor` varchar(250) NOT NULL DEFAULT '',
  `ext` varchar(50) NOT NULL DEFAULT '',
  `year` int(4) NOT NULL DEFAULT '0',
  `imagen` varchar(20) DEFAULT NULL,
  `contenido` text,
  `publicado` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicaciones_index`
--

LOCK TABLES `publicaciones_index` WRITE;
/*!40000 ALTER TABLE `publicaciones_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `publicaciones_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submenu`
--

DROP TABLE IF EXISTS `submenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submenu` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `vin` int(3) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submenu`
--

LOCK TABLES `submenu` WRITE;
/*!40000 ALTER TABLE `submenu` DISABLE KEYS */;
/*!40000 ALTER TABLE `submenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_general`
--

DROP TABLE IF EXISTS `template_general`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_general` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `subtitulo` varchar(50) DEFAULT NULL,
  `correo1` varchar(20) DEFAULT NULL,
  `correo2` varchar(20) DEFAULT NULL,
  `correo3` varchar(20) DEFAULT NULL,
  `metatags` text,
  `dia` time DEFAULT NULL,
  `noche` time DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_general`
--

LOCK TABLES `template_general` WRITE;
/*!40000 ALTER TABLE `template_general` DISABLE KEYS */;
INSERT INTO `template_general` VALUES (1,'Diputados de Jalisco del PAN','Grupo Parlamentario','ramses@ferbere.com','','','','07:00:00','18:00:00');
/*!40000 ALTER TABLE `template_general` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_index`
--

DROP TABLE IF EXISTS `template_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_index` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `css` varchar(50) NOT NULL,
  `title` varchar(150) NOT NULL DEFAULT '',
  `header` varchar(150) NOT NULL DEFAULT '',
  `navbar` varchar(150) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `tit_maincontent` varchar(150) DEFAULT NULL,
  `maincontent` varchar(150) DEFAULT NULL,
  `main_object` varchar(150) DEFAULT NULL,
  `detail` varchar(150) DEFAULT NULL,
  `footer` varchar(150) NOT NULL DEFAULT '',
  `pagina` varchar(20) NOT NULL DEFAULT 'default',
  `bann1` varchar(150) DEFAULT NULL,
  `bann2` varchar(150) DEFAULT NULL,
  `bann3` varchar(150) DEFAULT NULL,
  `bann4` varchar(150) DEFAULT NULL,
  `bann0` varchar(150) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_index`
--

LOCK TABLES `template_index` WRITE;
/*!40000 ALTER TABLE `template_index` DISABLE KEYS */;
INSERT INTO `template_index` VALUES (1,'style_index.css','Diputados de Jalisco del PAN','style/header_index.php','style/navbar.php','style/diputados.php','','','','','','index','main_nivel1.php','main_nivel2.php','main_nivel3.php','',''),(5,'style_contacto.css','Contacto','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_contacto.php','','','contacto','','','','',''),(8,'style_genealogia.css','Panel de control','style/header.php','style/botones_admin.php','','panel_de_control','contained.php','','style/botones_aux.php','style/footer.php','default','','','','',''),(9,'style_admin.css','Panel de control','style/header.php','style/botones_admin.php','','panel_de_control','panel.php','','style/botones_aux.php','style/footer.php','default','','','','',''),(10,'style_sesion.css','Sesión','','style/navbar.php','','','sesion/contained.php','','banners/detail.php','','sesion','style/navbar2.php','','','',''),(11,'style_index.css','HomeoPop, control de consulta y pacientes','style/header_index.php','style/navbar.php','','','control/contained.php','','style/navbar2.php','','control','','','','',''),(12,'style_diputado.css','style/titulo_diputado.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_diputado.php','','','diputado','','','','',''),(3,'style_ligas.css','ligas de interés','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_ligas.php','','','ligas','','','','',''),(2,'style_corporativa.css','style/titulo_index.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_corporativa.php','','','corporativa','','','','',''),(15,'style_opinion.css','style/titulo_opinion.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_opinion.php','','','opinion','','','','',''),(16,'style_agenda.css','Agenda Legislativa','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_agenda_legislativa.php','','','agenda_legislativa','','','','',''),(17,'','','','','','','','','','','nivel1','style/navbar.php','banners/bann00_banner.php','banners/bann00_tema.php','',''),(18,'','','','','','','','','','','nivel2','try/try.php','','','',''),(26,'style_noticias.css','style/titulo_noticias.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_noticias.php','','','noticias','','','','',''),(19,'','','','','','','','','','','nivel3','banners/bann00_videos.php','banners/bann00_videos_demas.php','banners/bann00_boletines.php','banners/bann00_try_galeria.php',''),(20,'style_videos.css','style/titulo_videos.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_videos_demas.php','','','videos','','','','',''),(21,'style_boletines.css','style/titulo_boletines.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_boletines.php','','','boletines','','','','',''),(22,'style_fotos.css','Galería de fotos','style/header_index.php','style/navbar.php','style/diputados.php','','','try/scroll.php','','','fotos','','','','',''),(24,'style_iniciativas.css','style/titulo_iniciativas.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_iniciativas_diputado.php','','','iniciativas_diputado','','','','',''),(25,'style_iniciativas.css','style/titulo_iniciativas.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_iniciativas.php','','','iniciativas','','','','','');
/*!40000 ALTER TABLE `template_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonios_index`
--

DROP TABLE IF EXISTS `testimonios_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonios_index` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL DEFAULT '',
  `contenido` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orden` int(2) NOT NULL DEFAULT '0',
  `imagen` varchar(50) DEFAULT NULL,
  `visible` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonios_index`
--

LOCK TABLES `testimonios_index` WRITE;
/*!40000 ALTER TABLE `testimonios_index` DISABLE KEYS */;
INSERT INTO `testimonios_index` VALUES (1,'Fornido González de la O','<p>Se denomina Testimonio flaviano (en lat&iacute;n Testimonium flavianum) a los p&aacute;rrafos 63 y 64 del cap&iacute;tulo XVIII del libro Antig&uuml;edades jud&iacute;as (Antiquitates Iudaicae) escrito por el historiador jud&iacute;o Flavio Josefo, en los que se menciona a Jes&uacute;s de Nazaret. Las Antig&uuml;edades jud&iacute;as son una cr&oacute;nica escrita hacia el a&ntilde;o 93 d.C., que narra la historia del pueblo jud&iacute;o de una manera razonablemente completa. Los intereses de Flavio Josefo &mdash;entre ellos ganar la simpat&iacute;a de Roma hacia los jud&iacute;os&mdash; lo llevan, sin embargo, a minimizar las noticias que pudieran resultar conflictivas. Josefo no menciona a los l&iacute;deres del peque&ntilde;o grupo de cristianos (Pedro y Pablo) ni a Mar&iacute;a (la madre de Jes&uacute;s).&nbsp;</p>','2011-05-28 03:12:21',0,'nelson',1),(2,'Una maravilla de producto','<p>Cada vez que lo uso, me dan ganas de comprar unos veinte m&aacute;s. &iexcl;Qu&eacute; maravilla! Siiiiiiii</p>','2011-05-30 18:34:19',0,'phil',0),(3,'Señora Josefina','<p>Del verbo testimoniar: (conjugar) testimonio es: 1&ordf; persona singular (yo) presente indicativo testimoni&oacute; es: 3&ordf; persona singular (&eacute;l/ella/usted) pret&eacute;rito indicativo  Diccionario de la lengua espa&ntilde;ola &copy; 2005 Espasa-Calpe: testimonio  m. Declaraci&oacute;n en que se afirma o asegura alguna cosa: el testimonio de la acusada no convenci&oacute; al jurado. Prueba, justificaci&oacute;n y comprobaci&oacute;n de la certeza o existencia de una cosa: con este libro quiere dar testimonio de la presencia de Dios en su vida. Documento autorizado por notario en que se da fe de un hecho.  Diccionario de la lengua espa&ntilde;ola &copy; 2005 Espasa-Calpe: testimoniar conjugar &rArr;  tr. Servir</p>','2012-07-07 16:28:18',0,'josefina',1);
/*!40000 ALTER TABLE `testimonios_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_index`
--

DROP TABLE IF EXISTS `usuario_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(128) NOT NULL DEFAULT '',
  `passwd` varchar(128) DEFAULT NULL,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `imagen` varchar(10) NOT NULL DEFAULT '',
  `nombramiento` varchar(50) NOT NULL DEFAULT '',
  `perfil` text NOT NULL,
  `maill` varchar(35) NOT NULL DEFAULT '',
  `telefono` varchar(30) NOT NULL DEFAULT '',
  `celular` varchar(30) NOT NULL DEFAULT '',
  `domicilio` varchar(250) NOT NULL DEFAULT '',
  `poblacion` varchar(150) NOT NULL DEFAULT '',
  `colaborador` smallint(2) NOT NULL DEFAULT '0',
  `privilegios` smallint(2) NOT NULL DEFAULT '5',
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` timestamp NULL DEFAULT NULL,
  `cp` int(8) DEFAULT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `rfc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_index`
--

LOCK TABLES `usuario_index` WRITE;
/*!40000 ALTER TABLE `usuario_index` DISABLE KEYS */;
INSERT INTO `usuario_index` VALUES (1,'ferbere','b66a5c2600e9f61e6163bb1051457946','RamsesFigueroa','HellboGDL','webmaster','','ramses@ferbere.com','10·86·2136','11·32·3773','Revolución casi 200','Santa Anita, jalisco',0,1,NULL,NULL,NULL,NULL,NULL),(4,'joseluis','e9209b9f31468079ce1599ad91fa2c44','José Luis','','','','','','','','',0,2,'2013-06-03 05:37:13',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `usuario_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_privilegios`
--

DROP TABLE IF EXISTS `usuario_privilegios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_privilegios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_privilegios`
--

LOCK TABLES `usuario_privilegios` WRITE;
/*!40000 ALTER TABLE `usuario_privilegios` DISABLE KEYS */;
INSERT INTO `usuario_privilegios` VALUES (1,'ferbere'),(2,'admin'),(3,'directivo'),(4,'funcionario'),(5,'asociado');
/*!40000 ALTER TABLE `usuario_privilegios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_index`
--

DROP TABLE IF EXISTS `video_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  `fecha` varchar(150) DEFAULT NULL,
  `liga` varchar(250) DEFAULT NULL,
  `descripcion` text,
  `visible` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_index`
--

LOCK TABLES `video_index` WRITE;
/*!40000 ALTER TABLE `video_index` DISABLE KEYS */;
INSERT INTO `video_index` VALUES (1,'Niños con TDAH (Padres y Profesores)','Lunes 18 de junio, 2012','http://www.youtube.com/embed/cdlG2VNgTCk','',1),(2,'Enfermedad neurológica por alteración de neurotransmisores','Lunes 18 de junio, 2012','http://www.youtube.com/embed/bICj4qfDAaA','',0),(3,'Enfermedad con importancia en su diagnóstico precoz','Lunes 18 de junio, 2012','http://www.youtube.com/embed/5FQ9GZnZB64','',1),(4,'Enfermedad neurologica subdiagnosticada','Lunes 18 de junio, 2012','http://www.youtube.com/embed/wz3vrdlrLOg','',1);
/*!40000 ALTER TABLE `video_index` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-06-05 20:37:02