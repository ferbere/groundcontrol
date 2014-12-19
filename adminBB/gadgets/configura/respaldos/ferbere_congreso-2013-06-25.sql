-- MySQL dump 10.13  Distrib 5.1.44, for apple-darwin8.11.1 (i386)
--
-- Host: mysql912.ixwebhosting.com    Database: ferbere_congreso
-- ------------------------------------------------------
-- Server version	5.1.68-community-log

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
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
  `titulo` varchar(250) NOT NULL,
  `subtitulo` varchar(50) NOT NULL DEFAULT '',
  `edicion` int(5) NOT NULL DEFAULT '0',
  `contenido` text NOT NULL,
  `publicado` smallint(1) NOT NULL DEFAULT '0',
  `autor` int(5) NOT NULL DEFAULT '0',
  `fecha` date DEFAULT NULL,
  `imagen` varchar(20) NOT NULL DEFAULT '',
  KEY `id` (`id`),
  FULLTEXT KEY `titulo` (`titulo`,`subtitulo`,`contenido`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos_index`
--

LOCK TABLES `articulos_index` WRITE;
/*!40000 ALTER TABLE `articulos_index` DISABLE KEYS */;
INSERT INTO `articulos_index` VALUES (1,1,'Una discusión de 80 años','',1,'<p>Dice el dicho que no es lo largo del camino sino lo bachoso lo que hace el trayecto m&aacute;s dif&iacute;cil. En el caso de la presa en el R&iacute;o Verde, hoy llamada <strong>Zapotillo</strong>, el camino ha sido largo y bachoso; 80 a&ntilde;os de discusi&oacute;n no han sido suficientes para ponernos de acuerdo, lo cual podr&iacute;amos leer como un presagio de que no nos pondremos de acuerdo.</p>\r\n<p>En este largo camino hemos visto todo tipo de argumentos e incluso a algunos actores cambiar de bando seg&uacute;n soplan los vientos, pero sobre todo hemos visto argumentos ir y venir sin que &eacute;stos hayan hecho jam&aacute;s mella en la contraparte. Esto es, lejos de haber tenido 80 a&ntilde;os de un enriquecedor di&aacute;logo en torno a las ventajas y desventajas de construir presas en el lecho del R&iacute;o Verde, primero para generar electricidad y despu&eacute;s para dotar de agua a la ciudad de Guadalajara, lo que hemos tenido son largos y vehementes mon&oacute;logos entre actores que no se escuchan los unos a los otros.</p>\r\n<p>Un apresurado y poco meditado compromiso de campa&ntilde;a tiene hoy al gobernador metido en un problema del que no tiene forma de salir bien librado. Est&aacute; haciendo un gran esfuerzo pol&iacute;tico para escapar de un callej&oacute;n en el que se meti&oacute; de gratis, pero del que ya a estas alturas dif&iacute;cilmente saldr&aacute; sin golpes en la carrocer&iacute;a.</p>\r\n<p>La presa, conforme el programa de obra de la Comisi&oacute;n Nacional del Agua, deber&aacute; estar terminada antes del temporal de 2014, lo cual significa que el Gobierno del Estado tendr&aacute; dos momentos complicados para sortear pol&iacute;ticamente de aqu&iacute; a entonces. El primero, cuando la altura de la presa llegue a los 86 metros. En el &uacute;ltimo reporte que se hizo p&uacute;blico, a principios de a&ntilde;o, la constructora manifestaba un avance de 45 metros en la altura de la cortina. Si, como hasta ahora est&aacute; previsto, la presa deber&aacute; estar terminada dentro de un a&ntilde;o, en mayo de&nbsp; 2014, la constructora alcanzar&aacute; los 86 metros, el punto de no retorno, hacia finales de este a&ntilde;o. En la pr&aacute;ctica el Gobierno de Arist&oacute;teles Sandoval tiene unas 20 semanas para tomar y operar las decisiones que tenga que tomar.</p>\r\n<p>El segundo momento, quiz&aacute; el m&aacute;s cr&iacute;tico, vendr&aacute; cuando sea necesario desalojar el poblado de Temacapul&iacute;n, y eso deber&aacute; de ser antes de agosto o septiembre del pr&oacute;ximo a&ntilde;o para evitar cualquier riesgo.</p>\r\n<p>Despu&eacute;s de 80 a&ntilde;os de discusiones est&eacute;riles, al Gobierno actual le quedan en realidad s&oacute;lo algunos meses para tomar y operar decisiones.</p>\r\n<p>&nbsp;</p>',1,4,'2013-03-22','mano_con_agua'),(28,2,'ACUERDAN DIPUTADOS PUNTOS IMPORTANTES EN MATERIA DE READAPTACION SOCIAL','',1,'<p align=\"right\">Guadalajara, Jalisco. 07 05 2013</p>\r\n<p align=\"right\">CMP0513-25</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>ACUERDAN DIPUTADOS PUNTOS IMPORTANTES EN MATERIA DE READAPTACION SOCIAL</strong></p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><em>Temas abordados en la Comisi&oacute;n presidida por el diputado del GPPAN, V&iacute;ctor Manuel S&aacute;nchez Orozco.</em></p>\r\n<p>&nbsp;</p>\r\n<p><a name=\"_GoBack\"></a><strong>Foro para la unificaci&oacute;n del C&oacute;digo Procesal y Penal: 21 Y 22 de mayo</strong></p>\r\n<p>El diputado Presidente de la Comisi&oacute;n de Readaptaci&oacute;n Social, V&iacute;ctor Manuel S&aacute;nchez   Orozco organiza el Primer foro para la unificaci&oacute;n del C&oacute;digo Procesal y Penal en el que se debatir&aacute;n propuestas y proyectos encaminados a lograr avances en el sistema penal acusatorio, juicios orales y &nbsp;justicia alternativa, temas importantes &nbsp;que actualmente son analizados a nivel nacional.</p>\r\n<p>Dicho foro se llevar&aacute; a cabo los pr&oacute;ximos 21 y 22 de mayo en el Congreso del Estado. El legislador panista record&oacute; que para transitar a un C&oacute;digo Penal &Uacute;nico en Jalisco es un requisito ineludible iniciar un proceso de discusi&oacute;n y reflexi&oacute;n ideol&oacute;gica en el que debe ser incluida la sociedad civil a fin de lograr construir un nuevo sistema penal m&aacute;s justo, racional y respetuoso del ser humano.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Campa&ntilde;a para donar libros a la Biblioteca de Puente Grande</strong></p>\r\n<p>Durante los trabajos de la Comisi&oacute;n de Readaptaci&oacute;n Social que se efectu&oacute; el d&iacute;a de hoy,&nbsp; se aprob&oacute; la propuesta originada a partir de la visita que efectuaron los legisladores el pasado 24 de abril al complejo penitenciario de Puente Grande, en el que se percataron de la necesidad de aumentar la calidad del acervo bibliogr&aacute;fico de la biblioteca del Reclusorio de &nbsp;dicho centro penitenciario, el cual posee pocos libros de consulta para los reos.</p>\r\n<p>El diputado del Partido Acci&oacute;n Nacional, Juan  Carlos M&aacute;rquez Rosas, vocal de dicha comisi&oacute;n legislativa pidi&oacute; que la campa&ntilde;a de recolecci&oacute;n de libros que iniciar&aacute; en este mes y terminar&aacute; a finales del mes de junio, sea dirigida a los poderes Ejecutivo y Judicial; &nbsp;universidades, instituciones y organismos p&uacute;blicos y privados, incluyendo las diferentes casas editoriales de Jalisco. El Congreso donar&iacute;a un acervo completo de leyes.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Buscar mecanismos para la despresurizaci&oacute;n de las c&aacute;rceles: Juicios orales, una soluci&oacute;n.</strong></p>\r\n<p>Por su parte el diputado panista Juan Jos&eacute; Cuevas Garc&iacute;a propuso buscar los mecanismos para la despresurizaci&oacute;n&nbsp; de las c&aacute;rceles, debido a que m&aacute;s del 60 por ciento de los presos en Puente Grande cometieron delitos por robos menores a los cinco mil pesos. Se busca que sean reinsertados a la sociedad; sobre todo abocarse en delitos cometidos por primodelincuentes y que podr&iacute;an salir bajo fianza.</p>\r\n<p>Sobre dicho tema, el diputado Presidente de la Comisi&oacute;n de Readaptaci&oacute;n Social, V&iacute;ctor S&aacute;nchez Orozco indic&oacute; que se debe dar impulso a la implementaci&oacute;n de los juicios orales que vendr&iacute;a a despresurizar las \'prisiones trayendo soluci&oacute;n a ese tipo de delitos. Propuso que en el mes de junio se lleve a cabo un foro para tratar dicho tema en particular.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Informe de la primera visita a centros penitenciarios: hacinamiento, el principal problema.</strong></p>\r\n<p>Sobresale en dicho informe de la Comisi&oacute;n de Readaptaci&oacute;n Social la sobrepoblaci&oacute;n de m&aacute;s de 100 por ciento del Complejo Penitenciario de Puente Grande ya que alberga a 7 mil 184 internos mientras que fue &nbsp;creado para tres mil internos. El promedio de ingreso diario es de 35 internos. Aproximadamente el 60 por ciento de los internos est&aacute;n recluidos por delitos no graves o de bajo impacto.</p>\r\n<p>Respecto a la visita que efectuaron los legisladores ese mismo 24 de abril al Centro Preventivo y de Readaptaci&oacute;n femenil destaca que cuenta con una poblaci&oacute;n de 490 mujeres lo que significa tambi&eacute;n un problema de sobrepoblaci&oacute;n ya que duermen en cada dormitorio de 9 a 10 reclusas.</p>\r\n<p>Se requiere rehabilitar espacios para la atenci&oacute;n m&eacute;dica y psicol&oacute;gica de las presas ya que falta mobiliario y &aacute;reas destinadas a las enfermas mentales.</p>\r\n<p>El diputado V&iacute;ctor Manuel S&aacute;nchez propuso ayudar a formar un gimnasio m&aacute;s completo para el uso de las internas.</p>\r\n<p>En el centro de Readaptaci&oacute;n Social en donde se encuentran reos que ya han sido sentenciados existe una poblaci&oacute;n de 5 mil 915 internos cuando fue creado para albergar a tres mil personas.</p>\r\n<p>El diputado V&iacute;ctor   Manuel S&aacute;nchez Orozco indic&oacute; que en los tres centros visitados existen reclusos que est&aacute;n siendo procesados o ya se encuentran sentenciados por delitos del orden federal (aproximadamente 445) los cuales deber&iacute;an ser atendidos por los centros federales de readaptaci&oacute;n social y que a&uacute;n no son trasladados a esos lugares.</p>\r\n<p><strong>Visita a c&aacute;rcel de&nbsp; Ocotl&aacute;n</strong></p>\r\n<p>Para el d&iacute;a de ma&ntilde;ana 8 de mayo, la Comisi&oacute;n de Readaptaci&oacute;n Social visitar&aacute; la c&aacute;rcel municipal de Ocotl&aacute;n as&iacute; como el Ceinjure que qued&oacute; inconcluso desde hace casi 10 a&ntilde;os. Cabe destacar que la Comisi&oacute;n de Readaptaci&oacute;n Social ha hecho extensiva la invitaci&oacute;n a otras comisiones legislativas que puedan estar interesadas e involucradas en el tema.</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-07',''),(32,2,'PAGO DE FAVORES, LA INTEGRACIÓN DEL DIPUTADO RICARDO RODRíGUEZ A COMISIONES LEGISLATIVAS','',1,'<p align=\"right\">Guadalajara, Jalisco. 09 05 2013</p>\r\n<p align=\"right\">CMP0513-29</p>\r\n<p align=\"right\">&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>PAGO DE FAVORES, LA INTEGRACI&Oacute;N DEL DIPUTADO RICARDO RODR&iacute;GUEZ A COMISIONES LEGISLATIVAS</strong></p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p>Durante la reuni&oacute;n de la Junta de Coordinaci&oacute;n Pol&iacute;tica, el diputado panista Gildardo Guerrero Torres se pronunci&oacute; en contra de las propuestas en cambios a la integraci&oacute;n de comisiones legislativas en las cuales participar&aacute; el legislador Rodr&iacute;guez Jim&eacute;nez.</p>\r\n<p>&nbsp;</p>\r\n<p>La votaci&oacute;n a &nbsp;favor de dichas modificaciones se dio por parte de los diputados del PRI, PRD y PVEM, mientras que los coordinadores del PAN y PMC votaron en contra de dichos cambios. &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Se&ntilde;al&oacute; el coordinador de la Fracci&oacute;n del PAN su total rechazo a dicha propuesta aprobada el d&iacute;a de hoy, ya que evidencia de una manera muy clara, que PRI trata de vulnerar la soberan&iacute;a del poder legislativo con la compra de voluntades.</p>\r\n<p>&nbsp;</p>\r\n<p>Guerrero Torres precis&oacute; que con dicha acci&oacute;n se muestra el pago de favores pasados o futuros a este diputado, el cual lleg&oacute; al Congreso por una diputaci&oacute;n plurinominal del Partido Acci&oacute;n Nacional y que por motivos o intereses muy personales se separ&oacute;.</p>\r\n<p>&nbsp;</p>\r\n<p>Los cambios aprobados por la Junta de Coordinaci&oacute;n Pol&iacute;tica integran a Ricardo Rodr&iacute;guez, como vocal de las comisiones priistas de&nbsp; Desarrollo Econ&oacute;mico, Ciencia y Tecnolog&iacute;a, as&iacute; como en la presidencia del Comit&eacute; de Relaciones Interparlamentarias y Asuntos internacionales, que tambi&eacute;n era de la fracci&oacute;n tricolor.</p>\r\n<p>&nbsp;</p>\r\n<p>Para finalizar, el legislador&nbsp; expres&oacute;: \"No es sano que un partido pol&iacute;tico como el PRI, intente ganar mayor&iacute;as que la sociedad no le otorg&oacute;, hoy no pierde el PAN, pierde la pol&iacute;tica en Jalisco, y lo m&aacute;s congruente ser&iacute;a que el diputado independiente renunciara a la diputaci&oacute;n que gan&oacute; gracias a Acci&oacute;n Nacional\".&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-09',''),(33,2,'GPPAN propone reconocer trabajo periodístico de Alejandra Xanic','',1,'<p align=\"right\">Guadalajara, Jalisco. 12-05-2013</p>\r\n<p align=\"right\">&nbsp;<a name=\"_GoBack\"></a>CMP0513-30</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>GPPAN propone reconocer trabajo period&iacute;stico de Alejandra Xanic</strong></p>\r\n<p>En sesi&oacute;n ordinaria y a nombre de la fracci&oacute;n parlamentaria del Partido Acci&oacute;n Nacional el diputado Gildardo Guerrero Torres presento la Iniciativa de Acuerdo Legislativo en el que se propone otorgar un reconocimiento de la LX  Legislatura del Estado de Jalisco a la Mtra. Alejandra Xanic von Bertrab por su destacada trayectoria period&iacute;stica y su aportaci&oacute;n para elevar el nombre de Jalisco a nivel internacional</p>\r\n<p>Manifest&oacute; que el ejercicio del periodismo constituye una actividad indispensable para el desarrollo de cualquier sociedad democr&aacute;tica. Los periodistas son a la vez testigos y profetas de la historia</p>\r\n<p>\"El PAN entiende la labor period&iacute;stica como la voz de cr&iacute;tica del pueblo, declarando como deber del Estado el fomento y protecci&oacute;n de quien ejerce el verdadero periodismo; aquel que no entiende de mordazas ni se deja subyugar por intereses mezquinos que crean desesperanza en la sociedad y atentan contra el Bien Com&uacute;n\" coment&oacute;.</p>\r\n<p>Alejandra Xanic von Bertrab en pr&oacute;ximos d&iacute;as recibir&aacute; el Premio Pulitzer en la categor&iacute;a de reportaje de Investigaci&oacute;n por su trabajo de investigaci&oacute;n publicado en dos partes por el New York Times a finales del 2012 donde denuncia serios casos de corrupci&oacute;n de una empresa extranjera en nuestro pa&iacute;s.</p>\r\n<p>La tapat&iacute;a Alejandra Xanic von Bertrab, estudi&oacute; Ciencias de la Comunicaci&oacute;n en el Instituto Tecnol&oacute;gico y de Estudios Superiores de Occidente (ITESO), comenz&oacute; a ejercer en el desaparecido diario Siglo XXI.</p>\r\n<p>En abril de 1992 a acudir al Sector Reforma de Guadalajara cuando los vecinos comenzaron a reportar olor a combustible que proven&iacute;a del drenaje y a burlar los cercos de seguridad posteriores a las explosiones para estar en condiciones de reportar lo que realmente estaba sucediendo. Todo esto la hizo merecedora del Premio Nacional de Periodismo de ese a&ntilde;o</p>\r\n<p>El reconocimiento consiste en un pergamino en piel, signado por los 39 diputados integrantes de esta LX Legislatura, el cual se otorgar&iacute;a en una sesi&oacute;n del Pleno a la&nbsp; Maestra Alejandra Xanic von Bertrab por su destacada trayectoria como periodista de investigaci&oacute;n y su aportaci&oacute;n para elevar el nombre de Jalisco a nivel internacional.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-12',''),(29,2,'Formalizan acuerdo para solicitar 450 millones de pesos en apoyo a 12,000 productores de leche de Jalisco','',1,'<p align=\"right\">Guadalajara, Jalisco. 07-05-2013</p>\r\n<p align=\"right\"><a name=\"_GoBack\"></a>CMP0513-26</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>Formalizan acuerdo para solicitar 450 millones de pesos en apoyo a 12,000 productores de leche de Jalisco</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><em>La presidenta de la Comisi&oacute;n de Ganader&iacute;a en el Congreso del Estado, Norma Ang&eacute;lica Cordero, as&iacute; como lecheros de los Altos de Jalisco, se reunieron este lunes para pedir formalmente, a trav&eacute;s de un escrito, el incremento de 1 peso por litro a la leche que venden productores a Liconsa.</em></p>\r\n<p>&nbsp;</p>\r\n<p>L&iacute;deres de la principal franja lechera, pertenecientes a las regiones altos Sur, altos Norte y Ci&eacute;nega de Jalisco, que representan a unos 12 mil productores de leche, junto con la presidenta de la comisi&oacute;n de Ganader&iacute;a en el Congreso del estado, la diputada del PAN Norma Ang&eacute;lica Cordero Prado, formalizaron la solicitud de apoyo para que autoridades federales de Sagarpa y Sedesol, destraben 450 millones de pesos en beneficio de lecheros de Jalisco.</p>\r\n<p>&nbsp;</p>\r\n<p>En una reuni&oacute;n que sostuvieron este lunes en el municipio de Encarnaci&oacute;n de D&iacute;az, la diputada Norma Ang&eacute;lica Cordero Prado, con l&iacute;deres de la Uni&oacute;n  Ganadera Regional de Jalisco, autoridades de la Confederaci&oacute;n  Nacional Ganadera y algunos presidentes municipales, analizaron la problem&aacute;tica del sector y ante ello, acordaron enviar un escrito formal al titular de la Sagarpa, Lic. Enrique Mart&iacute;nez y Mart&iacute;nez para que este otorgue lo equivalente a un aumento de 60 centavos por litro a la leche que venden a Liconsa.</p>\r\n<p>&nbsp;</p>\r\n<p>De la misma forma, solicitan a la Secretaria de Desarrollo Social, Rosario Robles Berlanga, para que esta dependencia otorgue 40 centavos m&aacute;s por litro, y as&iacute; llegar a un aumento general de 1 peso por litro para evitar el desplome del sector lechero.</p>\r\n<p>&nbsp;</p>\r\n<p>El acuerdo tomado ayer, refuerza el punto legislativo que suscribi&oacute; la  diputada Norma Ang&eacute;lica Cordero Prado el pasado 25 e abril, cuando en el pleno del congreso exhort&oacute; al presidente de M&eacute;xico, Enrique Pe&ntilde;a Nieto, para que la Secretar&iacute;a de Agricultura, Ganader&iacute;a, Desarrollo Rural, Pesca y Alimentaci&oacute;n (Sagarpa), otorgue un subsidio de 450 millones de pesos a Liconsa, y con este recurso, la empresa pueda subir a 1 peso, el costo por cada litro de leche que paga a los productores.</p>\r\n<p>&nbsp;</p>\r\n<p>Este martes l&iacute;deres de la Uni&oacute;n Regional Ganadera de Jalisco, se entrevistar&aacute;n con el gobernador de Jalisco, Jorge Arist&oacute;teles Sandoval D&iacute;az, para solicitarle su intervenci&oacute;n ante las autoridades federales y el propio presidente de M&eacute;xico, para que ese apoyo de 450 millones de pesos llegue de manera urgente a los productores.</p>\r\n<p>&nbsp;</p>\r\n<p>La  diputada Cordero Prado, insiste en que la Cruzada Nacional contra el Hambre implementada por la Presidencia de la Rep&uacute;blica, tiene que apoyar a los productores locales con la compra de sus productos y no beneficiar a empresas lecheras y de carne del extranjero. De no apoyar los ganaderos locales, contribuir&iacute;a al hambre de estos productores.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-07',''),(30,2,'El Diputado del PAN Alberto Esquer, propone la creación de la Comisión Especial para el Campo','',1,'<p align=\"right\">Guadalajara, Jalisco. 08-05-2013<strong></strong></p>\r\n<p align=\"right\">CMP0513-27<strong></strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p align=\"center\"><strong>El Diputado del PAN Alberto Esquer, propone la creaci&oacute;n de la Comisi&oacute;n Especial para el Campo</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>La Comisi&oacute;n de Desarrollo Agr&iacute;cola que preside el diputado panista Alberto Esquer Guti&eacute;rrez, aprob&oacute; enviar a la Junta de Coordinaci&oacute;n Pol&iacute;tica la propuesta de Decreto para la creaci&oacute;n de las Comisi&oacute;n Especial para el Campo, la cual estar&iacute;a integrada por las comisiones de Ganader&iacute;a, Desarrollo Agr&iacute;cola y Desarrollo Forestal.</p>\r\n<p>&nbsp;</p>\r\n<p>Dicha comisi&oacute;n que&nbsp; ser&aacute; de car&aacute;cter temporal,&nbsp; tendr&aacute; entre sus competencias organizar foros, exposiciones y ferias; vinculaci&oacute;n permanente con las autoridades competentes,&nbsp; mantener un di&aacute;logo con productores, ganaderos y el sector acad&eacute;mico, bas&aacute;ndose en una agenda tem&aacute;tica con competencia tripartita que logr&eacute; dar m&aacute;s celeridad a la resoluci&oacute;n de los problemas que enfrenta el sector rural.</p>\r\n<p>&nbsp;</p>\r\n<p>La Comisi&oacute;n aprob&oacute; sesionar de manera oficial en la  Expo Agr&iacute;cola Jalisco 2013,&nbsp; el d&iacute;a viernes 17 de mayo a las doce del d&iacute;a. Estar&aacute;n presentes autoridades de la Sagarpa y de la Secretar&iacute;a de Desarrollo Rural. Ser&aacute; una sesi&oacute;n en la que tambi&eacute;n participar&aacute;n las comisiones de Desarrollo Forestal, Recursos Hidr&aacute;ulicos y Pesca as&iacute; como la de Ganader&iacute;a con la finalidad de que cada &oacute;rgano legislativo hablen del tema m&aacute;s relevante que enfrentan.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-08',''),(31,2,'ENTREGAN 26 ORGANISMOS DE LA SOCIEDAD CIVIL  PROPUESTA PARA INTEGRAR EL COMITÉ EVALUADOR  DE CANDIDATOS AL IEPC','',1,'<p align=\"right\">Guadalajara, Jalisco. 08-05-2013</p>\r\n<p align=\"right\">CMP0513-28</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>ENTREGAN 26 ORGANISMOS DE LA SOCIEDAD CIVIL&nbsp; PROPUESTA PARA INTEGRAR EL COMIT&Eacute; EVALUADOR&nbsp; DE CANDIDATOS AL IEPC</strong></p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p>&nbsp;</p>\r\n<p>El d&iacute;a de hoy recibi&oacute; el diputado panista Alberto Esquer Guti&eacute;rrez una primera propuesta para la integraci&oacute;n del Comit&eacute;&nbsp; Evaluador que ser&iacute;a responsable de dise&ntilde;ar y aplicar los mecanismos de seleccionar a los candidatos a consejero presidente y consejeros Electorales.</p>\r\n<p>&nbsp;</p>\r\n<p>En el comunicado firmado por 26 organismos ciudadanos se brinda un total respaldo a la propuesta del diputado Alberto Esquer para la creaci&oacute;n de dicho Comit&eacute;. Proponen que se integre por tres representantes de organismos empresariales, tres miembros de&nbsp; las principales instituciones acad&eacute;micas, tres representantes de los medios de comunicaci&oacute;n y tres integrantes de la sociedad civil.</p>\r\n<p>&nbsp;</p>\r\n<p>Oscar Benavides de la Coparmex, Luis del Valle del Cesjal y Juan Alonso Ni&ntilde;o Cota del CCIJ integrar&iacute;an a los organismos empresariales;&nbsp; los investigadores Jes&uacute;s Ibarra del Iteso y Teresa Gonz&aacute;lez Luna&nbsp; de la U de G representar&iacute;an a las instituciones acad&eacute;micas de educaci&oacute;n Superior, adem&aacute;s de un investigador del Tecnol&oacute;gico de Monterrey.</p>\r\n<p>&nbsp;</p>\r\n<p>Como representantes de medios de comunicaci&oacute;n se proponen a Pablo Lemus, Diego Petersen y Sergio Rene de Dios. De los organismos de la sociedad civil est&aacute;n incluidos Francisco Medina del CEPAD (Centro de Justicia para la Paz y el Desarrollo) Margarita Sierra del Congreso Ciudadano de Jalisco A.C. y Tom&aacute;s L&oacute;pez Miranda de Guadalajara 2020.</p>\r\n<p>&nbsp;</p>\r\n<p>El documento fue enviado por 26 organismos ciudadanos:&nbsp; Academia Jalisciense por la Transparencia, Acci&oacute;n Ciudadana YA, AMEDI; Asociaci&oacute;n de graduados en el extranjero, Brigadas Ciudadanas, CEPAD,&nbsp; CIMTRA, CITA; Ciudad para Todos, Colectivo ecologista Jalisco, A.C, Congreso Ciudadano de Jalisco, COPARMEX, C&oacute;mo Voto, Guadalajara 2020, Guadalajara Interactiva, Haz que Suceda, Iluminemos M&eacute;xico- Jalisco, IMDEC, Jalisco 2050, Tejiendo Redes, Las otras Caras de la Ciudad A.C., M&eacute;xico Proyecta, Observatorio Legislativo, Pensar en M&eacute;xico, Plan V y Red Guadalajara de todos.</p>\r\n<p>&nbsp;</p>\r\n<p>Las asociaciones civiles demandan a los integrantes de la LX Legislatura que escuchen la voz de sus representados y demuestren su compromiso con el cumplimiento de la ley para elegir a las y los ciudadanos id&oacute;neos para integrar un nuevo IEPC.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-08',''),(21,0,'','',0,'',0,0,'2013-06-06',''),(27,2,'Se aprueba en comisión convocatoria para consejeros del IEPC','',1,'<p align=\"right\">Guadalajara, Jalisco. 06-05-2013</p>\r\n<p align=\"right\">&nbsp;<a name=\"_GoBack\"></a>CMP0513-24</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>Se aprueba en comisi&oacute;n convocatoria para consejeros del IEPC</strong></p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><em>El Diputado del PAN Alberto Esquer, propuso la creaci&oacute;n de un comit&eacute; evaluador externo con el fin de garantizar un proceso claro y ciudadano.</em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>En comisi&oacute;n de Asuntos Electorales y con la propuesta del Dip. Alberto Esquer Guti&eacute;rrez, integrante del GPPAN, se aprob&oacute; la conformaci&oacute;n de un Comit&eacute; Evaluador integrado por Universidades, Organismos Empresariales y Ciudadan&iacute;a, mismo que&nbsp;&nbsp; deber&aacute; estar conformado el lunes 13 de mayo.</p>\r\n<p>&nbsp;</p>\r\n<p>Dicho comit&eacute; presentar&aacute; una propuesta de evaluaci&oacute;n a los aspirantes a consejeros del Instituto Electoral y de Participaci&oacute;n Ciudadana de Jalisco, la cual deber&aacute; incluir una entrevista para cada uno de ellos. Esta propuesta de evaluaci&oacute;n deber&aacute; ser aprobada por la comisi&oacute;n de Asuntos Electorales.</p>\r\n<p>&nbsp;</p>\r\n<p>Con la integraci&oacute;n de este comit&eacute;, se garantizar&aacute; que sean especialistas quienes sugieran qu&eacute; tipo de evaluaci&oacute;n y qu&eacute; es lo que se debe evaluar de todos los aspirantes a convertirse en consejeros electorales. La intenci&oacute;n es que especialistas en materia electoral, de las diferentes instituciones tanto educativas, empresariales as&iacute; como de la sociedad civil, se involucren y apoyen, con su experiencia, en lo que ser&aacute; el proceso de selecci&oacute;n y nombramiento de los pr&oacute;ximos consejeros electorales de Jalisco.</p>\r\n<p>&nbsp;</p>\r\n<p>La convocatoria para aspirantes a consejeros del IEPC ser&aacute; presentada en la pr&oacute;xima sesi&oacute;n del pleno para su aprobaci&oacute;n y publicaci&oacute;n.&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-06',''),(34,2,'GPPAN aprueba la reforma al artículo 24 constitucional','',1,'<p align=\"right\">Guadalajara, Jalisco. 10-05-2013</p>\r\n<p align=\"right\">&nbsp;<a name=\"_GoBack\"></a>CMP0513-31</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>GPPAN aprueba la reforma al art&iacute;culo 24 constitucional</strong></p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><em>Con ello el PAN consagra la libertad y los derechos humanos de los mexicanos. Cada ciudadano ser&aacute; libre de decidir que religi&oacute;n profesar y su forma de manifestarla.</em></p>\r\n<p>&nbsp;</p>\r\n<p>En sesi&oacute;n ordinaria y con unanimidad de la fracci&oacute;n parlamentaria del PAN, se logr&oacute; la aprobaci&oacute;n de la reforma al art&iacute;culo 24 constitucional. Dicho art&iacute;culo ten&iacute;a dos a&ntilde;os esperando la aprobaci&oacute;n de 17 estados del pa&iacute;s, los cuales constitu&iacute;an la mitad m&aacute;s uno para lograr dicha aprobaci&oacute;n &nbsp;a la reforma.</p>\r\n<p>&nbsp;</p>\r\n<p>La propuesta contaba con 16 estados a favor y seis en contra, con el voto un&aacute;nime de la fracci&oacute;n del PAN, Jalisco se convierte en el estado que marca la aprobaci&oacute;n necesaria para que se eleve a rango constitucional.</p>\r\n<p>&nbsp;</p>\r\n<p>El l&iacute;der de la bancada panista, Jos&eacute; Gildardo Guerrero Torres, afirm&oacute; que en ning&uacute;n momento la&nbsp;reforma&nbsp;permite la invasi&oacute;n de lo religioso en la educaci&oacute;n p&uacute;blica, \"Lo que permite el nuevo&nbsp;art&iacute;culo&nbsp;24&nbsp;es la libertad de ejercicio religioso y da total libertad para que se pueda hacer lo que &eacute;ticamente quieras respecto a las creencias internas\", dijo.</p>\r\n<p>&nbsp;</p>\r\n<p>Por su parte el Dip. Panista Alberto Esquer G. se&ntilde;al&oacute; que: \"No es una garant&iacute;a que tutela alguna religi&oacute;n, sino la libertad religiosa de todas las organizaciones, de todas la asociaciones civiles y religiosas que puedan participar, tambi&eacute;n es falso que con esto se va a poder entrar a las escuelas p&uacute;blicas con temas religiosos, es simplemente darle al ciudadano la libertad de culto y de religi&oacute;n\".</p>\r\n<p>&nbsp;</p>\r\n<p>Cabe se&ntilde;alar que el nuevo texto del Art&iacute;culo 24 tras la reforma reciente se&ntilde;ala: \"Toda persona tiene derecho a convicciones &eacute;ticas, de conciencia y de religi&oacute;n, y a tener o adoptar en su caso la de su agrado. Esta libertad incluye el derecho de participar, individual o colectivamente, tanto en p&uacute;blico como en privado en las ceremonias, devociones o actos del culto respectivo, siempre que no constituyan un delito o falta penados por la&nbsp; ley. Nadie podr&aacute; utilizar los actos p&uacute;blicos de expresi&oacute;n de esta libertad con fines pol&iacute;ticos, de proselitismo o propaganda pol&iacute;tica&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Con dicha reforma se ampl&iacute;a considerablemente el &aacute;mbito de las libertades existentes, restringido en la actualidad a la de escoger, entre las religiones, la \"que m&aacute;s agrade\" a las personas. De esta manera se fortalece la trayectoria progresiva en materia de laicidad iniciada con la  Constituci&oacute;n mexicana de 1857, y se adoptan los est&aacute;ndares constitucionales contempor&aacute;neos.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-10',''),(35,2,'Propone protección a la infancia Jalisciense desde las guarderías,  Dip. Norma Cordero','',1,'<p align=\"right\">Guadalajara, Jalisco. 10-05-2013</p>\r\n<p align=\"right\">CMP0513-32</p>\r\n<p align=\"right\"><a name=\"_GoBack\"></a>&nbsp;</p>\r\n<p align=\"center\"><strong>Propone protecci&oacute;n a la infancia Jalisciense desde las guarder&iacute;as, &nbsp;Dip. Norma Cordero</strong></p>\r\n<p align=\"center\"><em>Esta propuesta busca unificar leyes y reglamentos existentes, as&iacute; como crear nuevas normas que protejan la integridad f&iacute;sica y psicol&oacute;gica de los menores</em></p>\r\n<p>&nbsp;</p>\r\n<p>La Diputada del PAN Norma  Ang&eacute;lica Cordero prado, propuso la iniciativa de Ley para regular y vigilar la Prestaci&oacute;n de Servicios para la Atenci&oacute;n, Cuidado y Desarrollo Integral Infantil en el Estado de Jalisco.&nbsp; Con dicha ley se pretende que los Centros de Atenci&oacute;n Infantil garanticen los derechos de las ni&ntilde;as y ni&ntilde;os a la vida, a la integridad personal, a su dignidad, alimentaci&oacute;n, salud, educaci&oacute;n, sano esparcimiento y a su pleno desarrollo, bajo la estricta supervisi&oacute;n de las autoridades</p>\r\n<p>&nbsp;</p>\r\n<p>Se&ntilde;al&oacute; que cerca de 40 mil ni&ntilde;os y ni&ntilde;as son atendidos diariamente tan s&oacute;lo en las estancias infantiles del IMSS, ISSSTE, Sedesol y Centros de Desarrollo Infantil del estado de Jalisco, sin contar el n&uacute;mero de menores recibidos en el servicio privado.</p>\r\n<p>&nbsp;</p>\r\n<p>La prestaci&oacute;n de los servicios de cuidado infantil por particulares, a trav&eacute;s de la figura de la subrogaci&oacute;n; as&iacute; como la atenci&oacute;n a menores en el servicio p&uacute;blico, que van de los 45 d&iacute;as de nacidos a los 5 a&ntilde;os y 11 meses de edad, por su propia naturaleza, debe ser extremadamente cuidadosa.</p>\r\n<p>&nbsp;</p>\r\n<p>Como parte de las propuestas en esta ley se encuentran:</p>\r\n<p>-Reforzar medidas de seguridad y el programa interno de protecci&oacute;n civil para minimizar riesgos de contingencias en centros de atenci&oacute;n infantil.</p>\r\n<p>-Que se garantice que dichos centros cuenten con personal calificado</p>\r\n<p>-Atenci&oacute;n m&eacute;dica en caso de urgencia</p>\r\n<p>-Creaci&oacute;n del Cnsejo Estatal de Prestaci&oacute;n de Servicios para la Atenci&oacute;n, Cuidado y desarrollo Integral Infantil.</p>\r\n<p>-Creaci&oacute;n del Registro estatal de los Centros para la Atenci&oacute;n, Cuidado y Desarrollo Integral Infantil</p>\r\n<p>-Que las autoridades responsables realizar&aacute;n una estricta inspecci&oacute;n y vigilancia a fin de constatar el cumplimiento de los requisitos se&ntilde;alados en la ley</p>\r\n<p>&nbsp;</p>\r\n<p>En la propuesta de ley se establece sanciones que van desde la multa administrativa de 100 a 1000 d&iacute;as de salario m&iacute;nimo general vigente, as&iacute; como la suspensi&oacute;n temporal y la revocaci&oacute;n de la autorizaci&oacute;n y la cancelaci&oacute;n del registro de los Centros de Atenci&oacute;n Infantil que incumplan con las disposiciones de esta Ley.</p>\r\n<p>&nbsp;</p>\r\n<p>La diputada Cordero  Prado se&ntilde;al&oacute; que es urgente establecer una ley que coadyuve a fortalecer las garant&iacute;as en el cuidado y protecci&oacute;n a la ni&ntilde;ez de Jalisco.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-10',''),(36,2,'DIPUTADO PANISTA JUAN JOSÉ CUEVAS PROPONE QUE SE IMPARTA EN ESCUELAS DE MANERA OBLIGATORIA EL IDIOMA INGLÉS','',1,'<p align=\"right\">Guadalajara, Jalisco. 09-05-2013</p>\r\n<p align=\"right\">CMP0513-33</p>\r\n<p>&nbsp;</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p align=\"center\"><strong>DIPUTADO PANISTA JUAN JOS&Eacute; CUEVAS PROPONE QUE SE IMPARTA EN ESCUELAS DE MANERA OBLIGATORIA EL IDIOMA INGL&Eacute;S </strong></p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\">&nbsp;</p>\r\n<p align=\"center\"><em>En todo &aacute;mbito, los idiomas se han convertido en una herramienta muy importante para aprender&nbsp; y el idioma ingl&eacute;s es el que obtiene la preferencia de la mayor&iacute;a, por lo que los estudiantes no pueden estar ajenos a esta realidad.</em></p>\r\n<p>&nbsp;</p>\r\n<p>La propuesta del diputado panista Juan Jos&eacute; Cuevas pretende modificar el art&iacute;culo 7&deg; de la Ley de Educaci&oacute;n del Estado de Jalisco para que en la fracci&oacute;n 4&ordf; que a la letra dice: \"<span style=\"text-decoration: underline;\">Ense&ntilde;ar el espa&ntilde;ol como lengua nacional com&uacute;n de los Mexicanos, sin menoscabo de la preservaci&oacute;n de la ense&ntilde;anza de las lenguas de los grupos ind&iacute;genas que existen en el estado; as&iacute; como impartir el idioma ingl&eacute;s cuya ense&ntilde;anza ser&aacute; obligatoria en la educaci&oacute;n b&aacute;sica, nivel medio superior y superior\".</span></p>\r\n<p><span style=\"text-decoration: underline;\">&nbsp;</span></p>\r\n<p>Actualmente dicha ley establece promover en educaci&oacute;n b&aacute;sica el estudio de una lengua extranjera, preferentemente el ingl&eacute;s, cuya ense&ntilde;anza ser&aacute; obligatoria en el nivel medio superior y superior.</p>\r\n<p>&nbsp;</p>\r\n<p>La reforma a la Ley de Educaci&oacute;n tambi&eacute;n presentar&iacute;a una modificaci&oacute;n en&nbsp; el art&iacute;culo 30 que se&ntilde;ala: \"El personal docente encargado de este nivel educativo deber&aacute; contar con t&iacute;tulo acad&eacute;mico que le acredite como profesor o licenciado en educaci&oacute;n preescolar\". Se pide en la iniciativa a&ntilde;adirle: \"<strong>las instituciones de este nivel educativo deber&aacute;n asegurar que se imparta la asignatura del idioma ingl&eacute;s, deber&aacute; acreditar su dominio de este idioma cuya certificaci&oacute;n y valuaci&oacute;n se har&aacute; en los t&eacute;rminos que establezca la propia secretaria de educaci&oacute;n o las instituciones dentro de sus respectivas competencias, as&iacute; como las autoridades educativas estatales, mediante los instrumentos de coordinaci&oacute;n y cooperaci&oacute;n que sean necesarios establezcan los mecanismos para que con pleno respeto de los derechos laborales, los docentes adquieran las competencias ling&uuml;&iacute;sticas exigidas por la ley.</strong>\"</p>\r\n<p>&nbsp;</p>\r\n<p>En la exposici&oacute;n de motivos de dicha iniciativa se hace referencia a las teor&iacute;as pedag&oacute;gicas, las cuales se&ntilde;alan que al estar los infantes desde una edad temprana expuestos a una segunda lengua, se logra mayor dominio de ella, sobre todo en la comprensi&oacute;n auditiva y de pronunciaci&oacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Se reconoce la necesidad de incorporar la asignatura de ingl&eacute;s a los planes y programas de estudio en la educaci&oacute;n preescolar y &nbsp;primaria, as&iacute; como realizar los ajustes pertinentes en los de ingl&eacute;s para secundaria a fin de que cuando el alumno concluya la educaci&oacute;n b&aacute;sica haya desarrollado la competencia pluriling&uuml;e. &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Se propone que de 9 horas semanales m&iacute;nimas de espa&ntilde;ol, se contemplen 2.5 horas de ingl&eacute;s en el nivel de primaria y que a nivel se de secundaria sean 3 horas semanales.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-09',''),(37,2,'DIPUTADO PANISTA PEDIRÁ AL EJECUTIVO ATENCIÓN INTEGRAL EN 23 CENTROS CARCELARIOS.','',1,'<p align=\"right\">Guadalajara, Jalisco. 13-05-2013</p>\r\n<p align=\"right\">CMP0513-34</p>\r\n<p align=\"right\">&nbsp;</p>\r\n<p align=\"right\">&nbsp;</p>\r\n<p align=\"center\"><strong>DIPUTADO PANISTA PEDIR&Aacute; AL EJECUTIVO ATENCI&Oacute;N INTEGRAL EN 23 CENTROS CARCELARIOS.</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><em>Propone el legislador Jaime D&iacute;az Brambila que de manera gradual el gobierno del estado se haga cargo de la operaci&oacute;n y el funcionamiento de las c&aacute;rceles que est&aacute;n bajo la responsabilidad de gobiernos municipales.</em></p>\r\n<p align=\"center\">&nbsp;</p>\r\n<p align=\"center\"><em>Mientras esto sucede, se exhortar&aacute; a 23 municipios para que suscriban convenios de coordinaci&oacute;n con el Ejecutivo a fin de que se les considere con apoyos para su debido funcionamiento.</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p>El diputado del Partido Acci&oacute;n Nacional Jaime Ismael D&iacute;az Brambila, present&oacute; un Punto de Acuerdo que exhorta al Gobernador para que apoye con recursos econ&oacute;micos y t&eacute;cnicos a 23 c&aacute;rceles municipales que presentan problemas graves de inseguridad, lo que se traduce en un riesgo latente para la sociedad, ya que dichas condiciones pueden derivar &nbsp;en motines o fugas de reos que&nbsp; atentar&iacute;an contra el derecho humano a la seguridad p&uacute;blica.</p>\r\n<p><em>&nbsp;</em></p>\r\n<p>Enfatiz&oacute; D&iacute;az Brambila que con la creaci&oacute;n de la Fiscal&iacute;a  General, existe un&nbsp; &aacute;rea encargada de la readaptaci&oacute;n social. La Ley de Ejecuci&oacute;n de Penas en su art&iacute;culo 37 considera como una obligatoriedad la suscripci&oacute;n de convenios o acuerdos entre el Ejecutivo estatal y los municipios para el mejor funcionamiento de las c&aacute;rceles y su sistema penitenciario, lo que incluye capacitaci&oacute;n a los elementos polic&iacute;acos.</p>\r\n<p>&nbsp;</p>\r\n<p>Entre los problemas que enfrentan las c&aacute;rceles municipales est&aacute; la ubicaci&oacute;n inadecuada, ya que se localizan dentro del primer cuadro del centro o incluso en los edificios de las presidencias municipales; adem&aacute;s la infraestructura que obliga el hacinamiento entre hombres, mujeres, j&oacute;venes y personas enfermas; mala higiene, alimentos insuficientes y programas ineficientes de readaptaci&oacute;n social.</p>\r\n<p>&nbsp;</p>\r\n<p>Los 23 municipios que&nbsp; enfrentan dichas condiciones son: Ahualulco del Mercado, Arandas, Atotonilco el Alto, Cihuatl&aacute;n, Cocula, Colotl&aacute;n, Encarnaci&oacute;n de D&iacute;az, Jalostotitl&aacute;n, La Barca, Mascota, Mazamitla. Ocotl&aacute;n, San Gabriel, San Juan de los Lagos, Sayula, Tala, Tamazula de Gordiano, Teocaltiche, Tlajomulco de Z&uacute;&ntilde;iga, Uni&oacute;n de Tula, Yahualica de Gonz&aacute;lez Gallo, Zacoalco de Torres y Zapotlanejo.</p>\r\n<p>&nbsp;</p>\r\n<p>Se&ntilde;al&oacute; el legislador panista que ning&uacute;n municipio anteriormente citado, tiene firmado dicho convenio con el Gobierno del estado, lo que significa costos para el mantenimiento de dichos centros por los mismos municipios, representando &nbsp;una carga econ&oacute;mica que puede llegar a los 50 mil pesos mensuales. Por tal motivo, se trabajar&aacute; en exhortar a los ayuntamientos para que suscriban convenios de coordinaci&oacute;n con el Ejecutivo a fin de que se les considere con apoyos econ&oacute;micos y t&eacute;cnicos.</p>\r\n<p>&nbsp;</p>\r\n<p>El ex presidente municipal de Uni&oacute;n de Tula y hoy diputado se&ntilde;al&oacute; que se dan quejas recurrentes de presidentes municipales por la grave inseguridad en las condiciones carcelarias. Existen municipios que &nbsp;reciben observaciones y recomendaciones por parte de la  Comisi&oacute;n Estatal de Derechos Humanos lo cual pone en evidencia las deficiencias. Puso como ejemplo la c&aacute;rcel de Ocotl&aacute;n en la que s&oacute;lo cuatro elementos &nbsp;custodian a 100 encarcelados.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Extracto de El Informe de la CEDH sobre la supervisi&oacute;n de c&aacute;rceles municipales en las que se incluye las 23 c&aacute;rceles municipales.</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Las 23 c&aacute;rceles en las cabeceras del mismo n&uacute;mero de partidos judiciales del Estado, las cuales son utilizadas para el internamiento de personas sujetas a proceso penal, o incluso sentenciadas, pero no cumplen con los m&iacute;nimos requisitos de un centro de reclusi&oacute;n ni con los objetivos de la pena privativa de la libertad establecidos en el art&iacute;culo 18 de la Constituci&oacute;n, puesto que en su mayor&iacute;a fueron dise&ntilde;ados para internar personas detenidas por faltas administrativas.</p>\r\n<p><em>&nbsp;</em></p>\r\n<p>De las supervisiones realizadas por este organismo se concluye que los principales problemas de estos centros de detenci&oacute;n son el hacinamiento, la infraestructura inadecuada, la deficiente atenci&oacute;n m&eacute;dica, malas condiciones materiales y de higiene, y en algunos casos la insuficiencia de alimentos y los maltratos, entre otras irregularidades, lo cual motiv&oacute; el dictado de diversas medidas cautelares y la emisi&oacute;n de las Recomendaciones 2/2012 y 16/2012, la primera dirigida al presidente municipal de Ocotl&aacute;n, el 26 de enero de 2012; y la segunda, al presidente Municipal de Zacoalco de Torres, el 31 de mayo del mismo a&ntilde;o.</p>\r\n<p><em>&nbsp;</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p><strong>Supervisi&oacute;n de espacios para custodia de adolescentes y adultos j&oacute;venes</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Los espacios destinados para la retenci&oacute;n de los adolescentes en el interior del estado contin&uacute;an sin mejoras considerables; sus condiciones son las mismas que prevalec&iacute;an en 2010 y 2011; es decir, carecen de instalaciones adecuadas y no tienen personal capacitado para el tratamiento de los menores de edad privados de su libertad. Es importante mencionar que los que se localizan en Ocotl&aacute;n, Lagos de Moreno y Ciudad Guzm&aacute;n son de paso, porque los menores de edad permanecen ah&iacute; s&oacute;lo unos d&iacute;as, en tanto se resuelve su situaci&oacute;n jur&iacute;dica; en caso de que el juez determine su vinculaci&oacute;n a procedimiento, son remitidos al Centro de Observaci&oacute;n, Clasificaci&oacute;n y Diagn&oacute;stico. &Uacute;nicamente en Puerto Vallarta llegan a permanecer hasta que el juez dicta sentencia; sin embargo, el centro para menores infractores de dicho puerto no cuenta con suficientes instalaciones para su alojamiento, ni con personal capacitado para su custodia, ya que s&oacute;lo hay dos elementos de la polic&iacute;a municipal para su vigilancia, la cual ha sido deficiente, a tal grado de que se han suscitado agresiones sexuales entre los mismos adolescentes internos, lo que motiv&oacute; la emisi&oacute;n de la Recomendaci&oacute;n 34/2012.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-13',''),(38,2,'Se cristaliza la propuesta del PAN para la conformación de un comité evaluador','',1,'<p>&nbsp;</p>\r\n<p align=\"right\">Guadalajara, Jalisco. 13-mayo-2013</p>\r\n<p align=\"right\">CMP0513-35</p>\r\n<p align=\"right\">&nbsp;<a name=\"_GoBack\"></a></p>\r\n<p align=\"center\"><strong>Se cristaliza la propuesta del PAN para la conformaci&oacute;n de un comit&eacute; evaluador </strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>El Grupo Parlamentario del Partido Acci&oacute;n Nacional en Jalisco se congratula de que se haya aprobado la conformaci&oacute;n del Comit&eacute; Evaluador, que se encargar&aacute; de analizar los perfiles de los aspirantes que buscan un espacio en el Consejo del Instituto Electoral y de Participaci&oacute;n Ciudadana.</p>\r\n<p>&nbsp;</p>\r\n<p>La creaci&oacute;n de este comit&eacute;, fue realizada por la fracci&oacute;n parlamentaria del Partido Acci&oacute;n Nacional y representada al interior de la comisi&oacute;n de Asuntos Electorales por los diputados Alberto Esquer Guti&eacute;rrez  y El&iacute;as I&ntilde;iguez Mej&iacute;a.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Los organismos que la integran son:</p>\r\n<p>Universidad de Guadalajara</p>\r\n<p>ITESO</p>\r\n<p>Instituto Tecnol&oacute;gico de Monterrey</p>\r\n<p>Instituto Federal Electoral</p>\r\n<p>TRIFE</p>\r\n<p>Coparmex</p>\r\n<p>C&aacute;mara Nacional de Comercio de Guadalajara</p>\r\n<p>Radio Difusoras de Occidente</p>\r\n<p>Fondo de Trabajadores de la Comunicaci&oacute;n (Extra)</p>\r\n<h3><a href=\"https://www.google.com.mx/url?sa=t&amp;rct=j&amp;q=&amp;esrc=s&amp;source=web&amp;cd=1&amp;cad=rja&amp;ved=0CDAQFjAA&amp;url=http%3A%2F%2Fwww.cesjal.org%2F&amp;ei=Z1WRUZ61K5TfqAHz6IGQBw&amp;usg=AFQjCNH0LTfHrjMBH_fhi3lNgFAi3CuTww&amp;sig2=EZcOmqouOgbqMJr0u_p9cA&amp;bvm=bv.46340616,d.aWM\">Consejo Econ&oacute;mico y Social de Jalisco</a></h3>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Dicho comit&eacute;, iniciar&aacute; a la brevedad los trabajos necesarios de cara a la pr&oacute;xima elecci&oacute;n de consejeros los cuales ser&aacute;n aprobados por los diputados de Jalisco.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-13',''),(39,2,'EL DIPUTADO JUAN JOSÉ CUEVAS  BUSCARÁ  PRESUPUESTO CON MAYOR EQUILIBRIO PARA LA SECRETARÍA DE DESARROLLO ECONÓMICO','',1,'<p align=\"right\">Guadalajara, Jalisco. 14-05-2013</p>\r\n<p align=\"right\">CMP0513-36<strong></strong></p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p align=\"center\"><strong>EL DIPUTADO JUAN JOS&Eacute; CUEVAS &nbsp;BUSCAR&Aacute; &nbsp;PRESUPUESTO CON MAYOR EQUILIBRIO PARA LA SECRETAR&Iacute;A DE DESARROLLO ECON&Oacute;MICO </strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><em>El legislador lament&oacute; la baja presupuestal a dicha dependencia encargada del desarrollo de Jalisco; por tal motivo, trabajar&aacute; para que en el 2014 se tengan los recursos suficientes&nbsp; que subsanen el fortalecimiento de Jalisco. </em></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p>Acudi&oacute; el Secretario de Promoci&oacute;n econ&oacute;mica, Jos&eacute; Palacios Jim&eacute;nez a la invitaci&oacute;n por parte de Comisi&oacute;n del mismo ramo que preside el diputado panista Juan Jos&eacute; Cuevas  Garc&iacute;a, con la &nbsp;finalidad de brindar informaci&oacute;n a los diputados respecto a los programas y proyectos en los que se trabaja para el desarrollo e inversi&oacute;n del estado.</p>\r\n<p>&nbsp;</p>\r\n<p>El legislador Cuevas se comprometi&oacute; a buscar un mayor&nbsp; presupuesto para el siguiente a&ntilde;o ya que la baja presupuestal que sufri&oacute; dicha Secretar&iacute;a en &eacute;ste a&ntilde;o, impacta en &nbsp;las inversiones para la micro, peque&ntilde;a y mediana empresa.</p>\r\n<p>&nbsp;</p>\r\n<p>Cabe recordar que el presupuesto para Promoci&oacute;n Econ&oacute;mica en este a&ntilde;o fue de 484. 9 millones de pesos, mientras que en el 2012 fueron aprobados 665 mdp, lo que representa una reducci&oacute;n de un 27 por ciento que afectan &aacute;reas esenciales como lo son la promoci&oacute;n, fortalecimiento, fomento e impulso a las inversiones para las empresas en el estado.</p>\r\n<p>El legislador panista se&ntilde;al&oacute; que m&aacute;s del 95 por ciento de los negocios en el estado corresponden a la micro empresa, las cual necesita respaldo urgente.</p>\r\n<p>El legislador Juan Jos&eacute; Cuevas expres&oacute; su aceptaci&oacute;n por la s&oacute;lida integraci&oacute;n de dicha Secretar&iacute;a e invit&oacute; a trabajar en conjunto Ejecutivo y legislativo para fortalecer dicha &aacute;rea.</p>\r\n<p>Recalc&oacute; que&nbsp; el proyecto de promoci&oacute;n econ&oacute;mica que pretende&nbsp; llevar empresas a los 125 municipios es muy importante ya que se les pide a los municipios disponer de un terreno para que el gobierno estatal, de acuerdo al vocacionamiento del municipio, lleve empresas que&nbsp; beneficien a los habitantes de la zona. &nbsp;Otro de los proyectos de dicha Secretar&iacute;a que fue bien visto por el legislador es&nbsp; la construcci&oacute;n de un parque tecnol&oacute;gico en Puerto Vallarta.</p>\r\n<p>Entre los temas expuestos por el Secretario de Promoci&oacute;n econ&oacute;mica se habl&oacute; de los planes de trabajos de las diferentes &aacute;reas encargadas de la promoci&oacute;n, capacitaci&oacute;n, fortalecimiento, innovaci&oacute;n, fomento e impulso para lograr el crecimiento econ&oacute;mico tanto en el interior como en el exterior.</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-14',''),(40,2,'DIPUTADO VÍCTOR MANUEL SÁNCHEZ ORGANIZA  EL  1ER FORO PARA LA UNIFICACIÓN DEL CÓDIGO PROCESAL Y PENAL DE JALISCO','',1,'<p align=\"right\">Guadalajara, Jalisco. 14-05-2013</p>\r\n<p align=\"right\">CMP0513-37</p>\r\n<p align=\"right\">&nbsp;</p>\r\n<p align=\"center\"><strong>DIPUTADO V&Iacute;CTOR MANUEL S&Aacute;NCHEZ ORGANIZA&nbsp;&nbsp;EL&nbsp;&nbsp;1ER FORO PARA LA UNIFICACI&Oacute;N DEL C&Oacute;DIGO PROCESAL Y PENAL DE JALISCO </strong></p>\r\n<p>EL Diputados&nbsp;V&iacute;ctor  Manuel S&aacute;nchez Orozco, integrante&nbsp;del Grupo Parlamentario del Partido Acci&oacute;n Nacional.&nbsp;En conjunto con el Instituto de Formaci&oacute;n e Investigaciones Jur&iacute;dicas de Michoac&aacute;n (IFIJUM.), el Instituto de Estudios Jur&iacute;dicos (IDEJ), Acered Soluci&oacute;n de Conflictos, Doctores Juristas; Colegio de Jalisco y el Colegio de Abogados en Pro de la Excelencia de Jalisco,&nbsp;el Primer Foro de An&aacute;lisis del Sistema Penal Acusatorio, Juicios Orales y Justicia Alternativa encaminado a lograr Unificar el C&oacute;digo Procesal y Penal en Jalisco.</p>\r\n<p>&nbsp;</p>\r\n<p>En rueda de prensa, el legislador se&ntilde;al&oacute; que dicho Foro se llevar&aacute; a cabo los d&iacute;as 21 y 22 de mayo en el Patio Central del Congreso del Congreso Del Estado De Jalisco y contar&aacute; con la presencia de especialistas en la materia.</p>\r\n<p>&nbsp;</p>\r\n<p>La intenci&oacute;n de dicho foro, es generar propuestas para la creaci&oacute;n del Modelo de Justicia Penal de Corte Acusatorio Adversarial en el Estado de Jalisco. En dicho acto V&iacute;ctor S&aacute;nchez Orozco se&ntilde;alo que Jalisco es de las entidades que mas atraso presenta en el Nuevo Sistema de Justicia Penal, por lo que es urgente avanzar no s&oacute;lo en el tema de juicios orales sino en varias reformas relacionadas en materia de justicia.</p>\r\n<p>&nbsp;</p>\r\n<p>El Maestro Francisco Javier Reynoso menciona la imperiosa necesidad de modernizar el sistema de procuraci&oacute;n de justicia, ya que se tiene como fecha l&iacute;mite hasta junio del 2016 para promulgar un C&oacute;digo de Procedimientos P&eacute;nales que contemple los juicios orales.</p>\r\n<p>&nbsp;</p>\r\n<p>Por su parte, el Doctor Dante Jaime Haro Reyes se&ntilde;al&oacute; la conveniencia de un an&aacute;lisis propositivo ya que Jalisco tiene que avanzar en los cambios que se deben realizar al actual sistema penal y a los juicios orales, protegiendo siempre los derechos humanos.</p>\r\n<p>&nbsp;</p>\r\n<p>El Maestro Ignacio Roque Parra, especialista en temas de Juicios Orales y Justicia Alternativa, comento la importancia de difundir los medios alternos de soluci&oacute;n de conflictos, adem&aacute;s&nbsp;&nbsp;expres&oacute; que &eacute;stos permiten que los ciudadanos solucionen sus propios conflictos generando un menor tiempo en su proceso, costo m&aacute;s econ&oacute;mico pero principalmente trabajando en conjunto todos los involucrados en la resoluci&oacute;n de sus problemas.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>&nbsp;</strong><strong>&nbsp;</strong></p>\r\n<p align=\"center\"><strong>CONFERENCISTAS Y PANELISTAS INVITADOS AL FORO:</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Los conferencistas invitados para el 21 de mayo son: Dra. Mar&iacute;a de los &Aacute;ngeles Fromow Rangel, titular de la Secretar&iacute;a T&eacute;cnica del Consejo de Coordinaci&oacute;n para la Implementaci&oacute;n del Sistema de Justicia Penal; Dra. Joahana del R&iacute;o Rebolledo, Directora de Capacitaci&oacute;n del Instituto Mexicano de Juicios Orales; Dr. Rafael Luviano Gonz&aacute;lez, Director del Instituto de formaci&oacute;n e Investigaciones Jur&iacute;dicas de Michoac&aacute;n as&iacute; como el Dr. H&eacute;ctor Hern&aacute;ndez Tirado, Magistrado del Tribunal Superior de Justicia del Estado de M&eacute;xico.</p>\r\n<p>&nbsp;</p>\r\n<p>Para el 22 de mayo, el ciclo de conferencias estar&aacute; a cargo del Maestro H&eacute;ctor Javier Talamantes Abe, Juez Oral del Sistema Penal en Chihuahua; Maestro Juan Antonio Rubio Guti&eacute;rrez, del Consejo de la Judicatura del Estado de Jalisco y el Doctor Guillermo Zepeda Lecuona, Profesor e investigador del ITESO.</p>\r\n<p>&nbsp;</p>\r\n<p>El foro contar&aacute; con mesas de trabajo encargadas de analizar las reformas constitucionales de junio de 2008 y 2011; el nuevo sistema de Justicia penal en M&eacute;xico; los juicios orales; los delitos y penas; modelos de C&oacute;digo Penal; soberan&iacute;a de los estados y c&oacute;digo penal &uacute;nico; armonizaci&oacute;n de la legislaci&oacute;n estatal con los instrumentos internacionales suscritos y ratificados por M&eacute;xico, entre otros.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-14',''),(41,2,'Diputada Mariana Arambula Inaugura casa de enlace para ofrecer atención a ciudadanía','',1,'<p align=\"right\">Guadalajara, Jalisco. 15-05-2013</p>\r\n<p align=\"right\">&nbsp;<a name=\"_GoBack\"></a>CMP0513-38</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>Diputada Mariana Arambula Inaugura casa de enlace para ofrecer atenci&oacute;n a ciudadan&iacute;a</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Con el objetivo de brindar atenci&oacute;n directa a los ciudadanos, asesor&iacute;a y crear un espacio de apoyo ciudadano, la diputada de PAN Mariana Arambula Mel&eacute;ndez inaugur&oacute; su casa de enlace legislativo. Acompa&ntilde;ada por el Presidente del PAN en Jalisco Miguel  Monraz Ibarra el Coordinador del GPPAN diputado Gildardo Guerrero Torres y los diputados Juan  Jos&eacute; Cuevas Garc&iacute;a, Jaime Ismael D&iacute;az Brambila, Bertha Yolanda Rodr&iacute;guez R., Roberto Mendoza C&aacute;rdenas, as&iacute; como por el Regidor del PAN en Guadalajara Alberto C&aacute;rdenas Jim&eacute;nez y los secretarios adjuntos del Comit&eacute; Estatal del PAN, Gustavo Mac&iacute;as Z. e Ignacio T&eacute;llez Glez.</p>\r\n<p>Como parte de los servicios que ofrecer&aacute; este espacio de atenci&oacute;n ciudadana destaca:</p>\r\n<p>&nbsp;</p>\r\n<ul type=\"disc\">\r\n<li>Gestiones ante las Instituciones estatales y      municipales </li>\r\n<li>Informaci&oacute;n sobre los trabajos legislativos </li>\r\n<li>Asesor&iacute;as sociales, jur&iacute;dicas y de salud </li>\r\n<li>Capacitaci&oacute;n para el trabajo y servicios t&eacute;cnicos </li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>La Casa de Enlace Legislativo se encuentra ubicada en Av. Enrique D&iacute;az de Le&oacute;n no. 2155, Col. Jardines del Country, en Guadalajara. El tel&eacute;fono de oficina es el: 33-33304571 y el horario de servicio es de lunes a viernes de 9 a 5 de la tarde.</p>\r\n<p>&nbsp;</p>\r\n<p>La diputada Arambula se mostr&oacute; satisfecha y agradecida con los acompa&ntilde;antes, a los cuales les reiter&oacute; su compromiso para lograr acciones por el bien de Jalisco y los jaliscienses. Manifest&oacute; su invitaci&oacute;n a la ciudadan&iacute;a para acercarse, conocer y utilizar los servicios que este nuevo espacio ofrece a la poblaci&oacute;n en general.&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-15',''),(42,2,'ESCUCHARÁ EL DIPUTADO IÑÍGUEZ MEJÍA PROPUESTAS DE LOS JÓVENES PARA EVITAR ACCIDENTES POR  CONSUMIR ALCOHOL.','',1,'<p align=\"right\">Guadalajara, Jalisco. 15-05-13</p>\r\n<p align=\"right\">CMP0513-39</p>\r\n<p align=\"right\">&nbsp;</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p align=\"center\"><strong>ESCUCHAR&Aacute; EL DIPUTADO I&Ntilde;&Iacute;GUEZ MEJ&Iacute;A PROPUESTAS DE LOS J&Oacute;VENES PARA EVITAR ACCIDENTES POR&nbsp; CONSUMIR ALCOHOL.</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p>El legislador panista El&iacute;as Octavio I&ntilde;&iacute;guez Mej&iacute;a, Presidente de la Comisi&oacute;n de Higiene y Salud P&uacute;blica inform&oacute; que seguir&aacute; con los trabajos&nbsp; encaminados a recabar propuestas que logren mejorar los distintos ordenamientos en el estado para lograr disminuir los accidentes automovil&iacute;sticos causados por el consumo del alcohol.</p>\r\n<p>&nbsp;</p>\r\n<p>Por lo anterior, el legislador panista visitar&aacute; escuelas preparatorias y universidades de distintas regiones del Estado para escuchar la voz de los j&oacute;venes. El lunes pr&oacute;ximo tiene contemplado un acercamiento con estudiantes del Centro Universitario de los Altos del municipio de Tepatitl&aacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p>Entre las propuestas que se&nbsp; han recabado por medio de la participaci&oacute;n de distintos interesados en el tema est&aacute;n: regulaci&oacute;n de bebidas en los antros, impuesto a la venta y consumo del alcohol (similar al impuesto del tabaco), brigada de prevenci&oacute;n de accidentes, infraestructura y planeaci&oacute;n vial, mejorar en el sistema de salud las urgencias m&eacute;dicas, aplicaci&oacute;n del alcohol&iacute;metro como existe en el DF.</p>\r\n<p>&nbsp;</p>\r\n<p>Otras propuestas se&ntilde;alan la necesidad de una verdadera coordinaci&oacute;n entre las dependencias involucradas en el tema, como lo son las Secretar&iacute;as de Educaci&oacute;n, Movilidad y la de Salud.</p>\r\n<p>&nbsp;</p>\r\n<p>En otro tema, la Comisi&oacute;n de Higiene y Salud aprob&oacute; dict&aacute;menes relacionados con el combate a la diabetes Mellitus, as&iacute; como a t&eacute;rminos en la Ley de Salud referentes a la discapacidad y la rehabilitaci&oacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p>El dictamen de decreto propuesto por la Fracci&oacute;n del PAN propone declarar el 14 de noviembre \"D&iacute;a Estatal de la Prevenci&oacute;n y Combate de la Diabetes\" con el objetivo de generar conciencia en la salud y frenar el crecimiento de dicha enfermedad que cobra la vida de miles de jaliscienses cada a&ntilde;o.</p>\r\n<p>&nbsp;</p>\r\n<p>El dictamen de decreto que reforma art&iacute;culos 3, fracci&oacute;n XV, 26 Fracci&oacute;n III, 61 fracci&oacute;n 1 de la Ley Estatal de Salud, pretende actualizar las disposiciones legales en Jalisco, en los t&eacute;rminos relacionados con la discapacidad y rehabilitaci&oacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-15',''),(43,0,'','',0,'',0,0,'0000-00-00',''),(44,2,'INICIAN TRABAJOS PARA MODERNIZAR EL SISTEMA PENAL EN JALISCO','',1,'<p align=\"right\">Guadalajara, Jalisco. 21-05-2013</p>\r\n<p align=\"right\">CMP0513-40</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>INICIAN TRABAJOS PARA MODERNIZAR EL SISTEMA PENAL EN JALISCO</strong></p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p><strong><em>El Secretario de Gobierno, Arturo Zamora Jim&eacute;nez reconoce la urgencia de lograr los avances jur&iacute;dicos en Jalisco. Diputado V&iacute;ctor Manuel S&aacute;nchez realiza foro para un nuevo sistema penal que transite hacia una nueva cultura m&aacute;s eficiente, justa y transparente. </em></strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Con la presencia de los tres poderes del Estado, se inaugur&oacute; en el patio central del Congreso los trabajos del foro que pretende analizar el sistema penal acusatorio, los juicios orales y la justicia alternativa, trabajos coordinados por el diputado panista V&iacute;ctor Manuel S&aacute;nchez Orozco, Presidente de la Comisi&oacute;n de Readaptaci&oacute;n Social del Congreso de Jalisco.</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>En su intervenci&oacute;n,&nbsp; el Secretario de Gobierno Arturo Zamora Jim&eacute;nez indic&oacute; que el nuevo sistema acusatorio de justicia penal tiene que empezar a funcionar en Jalisco, por lo que reconoci&oacute; el serio impulso que el diputado del PAN V&iacute;ctor S&aacute;nchez logra con dicho foro, ya que representa las bases o cimientos para un verdadero avance que llevar&aacute;n a la implementaci&oacute;n de los juicios orales, entre otros logros importantes.</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>El legislador S&aacute;nchez Orozco record&oacute; que esta ambiciosa reforma a nivel nacional se impuls&oacute; desde el 18 de junio del 2008, cuando se aprobaron cambios constitucionales al sistema de justicia penal en M&eacute;xico para transitar del modelo inquisitorio al de tipo acusatorio.</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Se estableci&oacute; en la reforma un periodo de ocho a&ntilde;os para que hicieran los cambios necesarios a nivel federal como estatal. Entidades como Chihuahua, Nuevo Le&oacute;n, Baja California, Durango, Estado de M&eacute;xico, Zacatecas, Morelos, Yucat&aacute;n, Oaxaca y Veracruz ya han adecuado su constituci&oacute;n local y varias de sus leyes y c&oacute;digos, por lo que Jalisco debe avanzar en este a&ntilde;o ya que es uno de los estados que m&aacute;s atraso tiene en dichas adecuaciones, por lo que urge trabajar en dicho tema. </strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Indic&oacute; el legislador panista que lo m&aacute;s interesante es que mientras los estados trabajan en dichos cambios, se vio la conveniencia de que los c&oacute;digos penales y de procedimientos puedas ser &uacute;nicos en el pa&iacute;s, por lo que los esfuerzos se dirigen a la unificaci&oacute;n de un C&oacute;digo Procesal y Penal&nbsp; con las aportaciones de todas las entidades. </strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>El sistema acusatorio se basa en el principio de autoridad en el cual el juez investiga y enjuicia. En el sistema que se pretende transitar en el pa&iacute;s, se basa en el m&eacute;todo contradictorio adversarial basado en la oralidad, transparencia, accesibilidad, eficiencia e imparcialidad. &nbsp;Mientras que el sistema inquisitivo se basa en el principio de autoridad en el cual el juez investiga y enjuicia, pudiendo dar pauta a que existan en el procedimiento corrupci&oacute;n y abusos que atentan contra los derechos humanos. La tortura en el pa&iacute;s sigue presentando un problema grave, as&iacute; como el arraigo, las intromisiones a domicilios sin orden de cateo o aprehensi&oacute;n.</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Por tal motivo, la oralidad es el m&eacute;todo adecuado y eficaz para que funcione el nuevo sistema ya que est&aacute; presidido por el debate, la apertura en el proceso, la contradicci&oacute;n y la controversia, lo que se sintetiza en una apertura total en los procesos. &nbsp;</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Indicadores y cifras relevantes:</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>80% de los detenidos nunca habl&oacute; con el juez que lo conden&oacute;.</strong></p>\r\n<p><strong>54% de los detenidos por un delito son puestos a disposici&oacute;n de un juez.</strong></p>\r\n<p><strong>50% de los m&aacute;s de 70 mil robos procesados anualmente en el Pa&iacute;s son de menos de mil pesos</strong></p>\r\n<p><strong>85% v&iacute;ctimas no acuden a denunciar los delitos.</strong></p>\r\n<p><strong>98%&nbsp; de los delincuentes no terminan condenados.</strong></p>\r\n<p><strong>92 % de las audiencias en los procesos penales se desarrollan sin la presencia del juez.</strong></p>\r\n<p><strong>80% de las &oacute;rdenes de aprehensi&oacute;n no se cumplen.</strong></p>\r\n<p><strong>40% de los presos no han recibido sentencia condenatoria que los declare culpables de delito.&nbsp; &nbsp;</strong></p>\r\n<p>&nbsp;</p>',1,0,'2013-05-21',''),(45,2,'SANCIÓN PENAL A QUIEN MALVERSE FONDOS DE TRABAJADORES','',1,'<p align=\"right\">Guadalajara, Jalisco. 21-05-2013</p>\r\n<p align=\"right\">CMP0513-41</p>\r\n<p align=\"right\">&nbsp;</p>\r\n<p align=\"right\">&nbsp;</p>\r\n<p align=\"center\"><strong>SANCI&Oacute;N PENAL A QUIEN MALVERSE FONDOS DE TRABAJADORES</strong></p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p><strong><em>Las sanciones recaer&iacute;an en aquellos servidores que est&aacute;n encargados de&nbsp; retener dichos recursos. La Ley de Servidores P&uacute;blicos se&ntilde;ala quienes son los responsables. En el caso del Congreso corresponde a la Comisi&oacute;n de Administraci&oacute;n</em></strong><em>.</em></p>\r\n<p align=\"right\">&nbsp;</p>\r\n<p>La Comisi&oacute;n de Puntos Constitucionales que preside el diputado Hern&aacute;n Cort&eacute;s Berumen aprob&oacute; el dict&aacute;men de decreto que contiene reformas impulsadas por el diputado panista Gildardo Guerrero Torres, qui&eacute;n busca elevar al Congreso de la Uni&oacute;n una propuesta de reforma al delito de DEFRAUDACI&Oacute;N FISCAL; y otra para reformar el Delito de Peculado en el C&oacute;digo Penal para el Estado Libre y soberano de Jalisco.</p>\r\n<p>&nbsp;</p>\r\n<p>Se trata de castigar a los servidores p&uacute;blicos y representantes populares que cometan el delito de peculado; que retengan y no enteren los impuestos y las contribuciones realizadas por los trabajadores.</p>\r\n<p>&nbsp;</p>\r\n<p>En la exposici&oacute;n de motivos de la iniciativa, el diputado panista Gildardo Guerrero se&ntilde;ala que lo que busca atacar dicha iniciativa es un problema \"cercano, actual y de dominio p&uacute;blico y no es otro que el propio Congreso del Estado, todos sabemos que se dej&oacute; de enterar por mucho tiempo el impuesto retenido a los trabajadores, incluso adem&aacute;s de no enterarse el impuesto, se retuvo del sueldo de estos trabajadores cantidades relacionadas con prestamos a pensiones que deb&iacute;an descontarse del sueldo y enterarse a Pensiones del Estado, as&iacute; como otras prestaciones y que este ejemplo se extendi&oacute; a municipios del estado como Vallarta, Guadalajara y Tonal&aacute; o a otro Poderes como el Poder Judicial.\"</p>\r\n<p>Respecto a los cambios propuestos en el C&oacute;digo Fiscal de la Federaci&oacute;n debe precisarse la redacci&oacute;n del Delito de Defraudaci&oacute;n Fiscal, especificando el caso de la comisi&oacute;n por Servidores P&uacute;blicos y ampliando la capacidad de presentaci&oacute;n de denuncia para aqu&eacute;llas personas a quienes se les retuvo esas cantidades.</p>\r\n<p>\"Pero adem&aacute;s de ello, hemos de se&ntilde;alar que a nivel local debemos reforzar tambi&eacute;n el delito de peculado integrando de manera expresa esta conducta, cuando se retengan cantidades adicionales a&nbsp; los impuestos, como es el caso de las retenciones para el pago de prestamos de pensiones, seguros o cualquier otra obligaci&oacute;n a que se obligue la autoridad en funciones patr&oacute;n.\" Se&ntilde;ala la iniciativa.</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-21',''),(46,2,'TRABAJA DIPUTADA MARIANA ARÁMBULA EN FORTALECER LA CIENCIA Y TECNOLOGÍA EN JALISCO','',1,'<p align=\"right\">Guadalajara, Jalisco. 27-05-2013</p>\r\n<p align=\"right\">CMP0513-42</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>TRABAJA DIPUTADA MARIANA AR&Aacute;MBULA EN FORTALECER LA CIENCIA Y TECNOLOG&Iacute;A EN JALISCO</strong></p>\r\n<p align=\"center\">&nbsp;</p>\r\n<p align=\"center\"><em>La Comisi&oacute;n legislativa que preside la legisladora, se abocar&aacute; en tres ejes fundamentales que incluyen la innovaci&oacute;n tecnol&oacute;gica y el impulso a proyectos cient&iacute;ficos.</em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>La diputada panista Mariana Ar&aacute;mbula, Presidenta de la Comisi&oacute;n de Ciencia y Tecnolog&iacute;a, inform&oacute; que trabaja en&nbsp; coordinaci&oacute;n con la Secretar&iacute;a de Innovaci&oacute;n del Gobierno presidida por el secretario Jaime Reyes Robles para darle impulso a las reformas necesarias a la Ley de Fomento a la Ciencia y Tecnolog&iacute;a.</p>\r\n<p>&nbsp;</p>\r\n<p>La legisladora explic&oacute; que para poder fortalecer y darle operatividad al COETCYTJAL, es necesario la creaci&oacute;n, promoci&oacute;n y vinculaci&oacute;n con los sectores industriales, acad&eacute;micos y sociales. Por tal motivo se llevar&aacute;n a cabo&nbsp; mesas de trabajo que generen una propuesta de ley que ser&aacute; presentada ante el Pleno del Congreso.</p>\r\n<p>&nbsp;</p>\r\n<p>Para dar inicio a &eacute;stos trabajos se&nbsp; contar&aacute; con la presencia del Secretario Estatal de Innovaci&oacute;n, Ciencia y Tecnolog&iacute;a en sesi&oacute;n de comisi&oacute;n que se llevar&aacute; a cabo la primera semana del mes de junio. El funcionario Reyes Robles, expondr&aacute; a los integrantes de la comisi&oacute;n, las funciones, necesidades y ambiciones que pretender lograr en el sexenio.</p>\r\n<p>&nbsp;</p>\r\n<p>Entre las acciones que ha llevado a cabo la comisi&oacute;n para impulsar proyectos cient&iacute;ficos, la diputada panista Ar&aacute;mbula Mel&eacute;ndez se&ntilde;al&oacute; que se logr&oacute; gestionar recursos para apoyar a cinco menores de secundaria, los cuales representan a Jalisco en el evento internacional RoboCub 2013,&nbsp; que tendr&aacute; lugar en Holanda, el mes pr&oacute;ximo.</p>\r\n<p>&nbsp;</p>\r\n<p>El equipo se denomina NeticaBots-5 con n&uacute;mero de registro RCJ-SL2-04. Los j&oacute;venes obtuvieron&nbsp; segundo lugar en la categor&iacute;a  RoboCubjunior Soccer Light Weight Secondary, por lo que calificaron para representar a M&eacute;xico en dicho evento internacional.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><em>&nbsp;</em></p>\r\n<p>&nbsp;</p>',1,0,'2013-05-27',''),(47,2,'PIDE LEGISLADORA NORMA ANGELICA NO DISMINUIR BENEFICIARIOS DE LECHE EN JALISCO','',1,'<p align=\"right\">Guadalajara, Jalisco. 27-05-2013</p>\r\n<p align=\"right\">CMP0513-43</p>\r\n<p align=\"right\">&nbsp;</p>\r\n<p align=\"right\">&nbsp;</p>\r\n<p align=\"right\">&nbsp;</p>\r\n<p align=\"center\"><strong>PIDE LEGISLADORA NORMA ANGELICA NO DISMINUIR BENEFICIARIOS DE LECHE EN JALISCO</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>La diputada panista Norma Ang&eacute;lica Cordero Prado, vocal de la Comisi&oacute;n de Desarrollo Humano y Familia pidi&oacute;&nbsp; que los productores ganaderos sean contemplados como proveedores &nbsp;dentro de la Cruzada Nacional contra el Hambre y que no sean disminuidos el n&uacute;mero de beneficiarios &nbsp;de leche en el Estado.</p>\r\n<p>&nbsp;</p>\r\n<p>Por lo anterior, la  legisladora Cordero Prado pidi&oacute; que en la exposici&oacute;n de motivos del Acuerdo Nacional se incluya lo siguiente:</p>\r\n<p>&nbsp;</p>\r\n<p>\"Nuestro Estado cuenta con un padr&oacute;n de 316 mil 326 beneficiarios que reciben leche subsidiada por Liconsa y que a ra&iacute;z de la Cruzada Nacional  Contra el Hambre, en el transcurso de este a&ntilde;o se pretenden dejar fuera a 60 mil beneficiarios, lo que representa una disminuci&oacute;n de 18.9% de las personas que se ven beneficiadas con este programa.</p>\r\n<p>&nbsp;</p>\r\n<p>De lo anterior, se pretende que la reducci&oacute;n de beneficiarios del padr&oacute;n sea de manera paulatina, afectando de manera especial a los beneficiarios del interior del Estado, para que de esta manera Liconsa reoriente los apoyos de leche a otros beneficiarios en los municipios de Guadalajara, Zapop&aacute;n, Tonal&aacute;, Tlaquepaque, Tlajomulco de Z&uacute;&ntilde;iga y Mezquitic, que se tienen contemplados como prioritarios en la Cruzada Nacional  Contra el Hambre.</p>\r\n<p>&nbsp;</p>\r\n<p>Con esta medida se pone en riesgo el acceso a una sana alimentaci&oacute;n, ya que si bien es cierto en nuestro Estado el 45.1% de los menores de 17 <a href=\"http://www.informador.com.mx/jalisco/2013/450813/6/uno-de-cada-dos-menores-en-pobreza.htm\">a&ntilde;os</a> padecen pobreza. Esto significa que 1.1 millones de ni&ntilde;os y adolescentes viven en esta situaci&oacute;n vulnerable, y 352 mil personas viven en pobreza extrema.</p>\r\n<p>Para que en el Estado de Jalisco no se disminuya el padr&oacute;n de beneficiarios del Programa de Abasto Social de leche, Liconsa, lo anterior con el &aacute;nimo de velar por los jaliscienses que son beneficiarios de este apoyo alimentario.<strong></strong></p>\r\n<p>&nbsp;</p>',1,0,'2013-05-27',''),(48,2,'LA ENTREGA DE APOYOS PARA TRANSPORTE A LOS ESTUDIANTES DE JALISCO ES EXCLUYENTE: DIPUTADO JUAN JOSÉ CUEVAS','',1,'<p align=\"right\">Guadalajara, Jalisco. 28-05-2013</p>\r\n<p align=\"right\">CMP0513-44</p>\r\n<p align=\"center\">&nbsp;</p>\r\n<p align=\"center\">LA ENTREGA DE APOYOS PARA TRANSPORTE A LOS ESTUDIANTES DE JALISCO ES EXCLUYENTE: DIPUTADO JUAN JOS&Eacute; CUEVAS</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; La entrega de apoyos para transporte a los estudiantes de Jalisco es excluyente, afirma el diputado pansita Juan Jos&eacute; Cuevas Garc&iacute;a, ya que se concentrar&aacute; casi en su totalidad a la zona metropolitana, dejando fuera a m&aacute;s de la mitad de estudiantes de todo el estado.</p>\r\n<p>&nbsp;El legislador pidi&oacute; que el Secretario de Desarrollo Humano, Salvador Rizo explique cu&aacute;les ser&aacute;n los criterios que se tomaran para otorgar dicho apoyo.</p>\r\n<p>&nbsp;A&ntilde;adi&oacute; que este programa pretende dar \"gato por liebre\" a los estudiantes de Jalisco ya que la iniciativa lanzada por el gobernador Arist&oacute;teles Sandoval para dotar de transporte gratuito a los estudiantes de Jalisco; no va a cubrir al 100 por ciento de los estudiantes, \"si acaso llegar&aacute; a uno de cada ocho, es una tomada de pelo, a los estudiantes les quieren dar gato por liebre\".</p>\r\n<p>&nbsp;&nbsp;Juan Jos&eacute; Cuevas enfatiz&oacute; que el programa \"Bienevales\" est&aacute; proyectado con insuficiencias graves \"en Jalisco hay cerca de 640 mil estudiantes de secundaria, preparatoria y profesional, y el Gobernador anuncia que el beneficio ser&aacute; s&oacute;lo para 150 mil estudiantes. Nosotros nos preguntamos qu&eacute; va a pasar con el resto\".</p>\r\n<p>&nbsp;Juan Jos&eacute; Cuevas Garc&iacute;a se&ntilde;al&oacute; que solicitar&aacute; la comparecencia del Secretario de Desarrollo Humano \"para que nos explique c&oacute;mo se va a decidir qui&eacute;nes s&iacute; tienen derecho a transporte gratuito y quienes no\".</p>\r\n<p>&nbsp;El legislador panista, pidi&oacute; \"que el gobierno estatal explique c&oacute;mo se les va a decir a m&aacute;s de medio mill&oacute;n de estudiantes de todo el estado que no van a tener derecho al programa; que nos diga el Gobernador o el Secretario de Desarrollo Humano porqu&eacute; unos s&iacute; y otros no\". Demand&oacute; la universalidad del programa \"a todos los estudiantes de Jalisco, porque no tenemos estudiantes de primera y de segunda, todos deben de recibir el beneficio parejo\".</p>\r\n<p>&nbsp;De acuerdo a sus n&uacute;meros, el recurso destinado al programa alcanzar&aacute; para entregar dos boletos a s&oacute;lo unos&nbsp; 100 mil estudiantes&nbsp; \"esto es, 400 boletos en promedio al a&ntilde;o, para que se usen en 200 d&iacute;as. Yo me pregunto qu&eacute; van a hacer los estudiantes que deban gastar m&aacute;s de dos boletos al d&iacute;a, pero m&aacute;s all&aacute;, que van a hacer m&aacute;s de medio mill&oacute;n de estudiantes que se van a quedar sin el beneficio\".</p>\r\n<p>&nbsp;Calific&oacute; el programa de \"bienevales\" como \"discriminatorio en su esencia, porque se va a beneficiar especialmente a los estudiantes de la Zona Metropolitana, sin considerar que los estudiantes con m&aacute;s problemas econ&oacute;micos se encuentran fuera de la zona urbana. No se vale, lo que quieren hacer es incumplir una promesa de campa&ntilde;a a la que ya no saben c&oacute;mo hacerle frente\".</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-28',''),(49,2,'POSICIONAMIENTO DEL GPPAN SOBRE NUEVO IEPC','',1,'<p align=\"right\">Guadalajara, Jalisco. 31-05-2013</p>\r\n<p align=\"right\">CMP0513-45</p>\r\n<p align=\"right\">&nbsp;<a name=\"_GoBack\"></a></p>\r\n<p align=\"center\"><strong>POSICIONAMIENTO DEL GPPAN SOBRE NUEVO IEPC</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Acci&oacute;n Nacional es un partido que -en la construcci&oacute;n de un M&eacute;xico m&aacute;s ordenado, de una sociedad m&aacute;s participativa, de un gobierno m&aacute;s justo y de una Naci&oacute;n m&aacute;s democr&aacute;tica - siempre mirar&aacute; hacia delante.</p>\r\n<p>&nbsp;</p>\r\n<p>Por que eso es lo que hacen los verdaderos dem&oacute;cratas: siempre est&aacute;n inconformes ante la realidad, pues saben que todo puede mejorar.</p>\r\n<p>&nbsp;</p>\r\n<p>Los dem&oacute;cratas -como dir&iacute;a Carlos Castillo Peraza- no administran recuerdos, antes bien, crean esperanzas.</p>\r\n<p>&nbsp;</p>\r\n<p>Un verdadero dem&oacute;crata sabe que es a trav&eacute;s de las instituciones fieles a sus fines, como se logra construir la justicia electoral, y de ah&iacute;, la justicia social, econ&oacute;mica y jur&iacute;dica.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Quienes nos afirmamos dem&oacute;cratas -como hacemos en el Grupo Parlamentario del PAN- estamos convencidos que la democracia no se agota con las campa&ntilde;as electorales, ni en los procesos de conformaci&oacute;n de los organismos encargados de garantizar elecciones limpias y justas.</p>\r\n<p>&nbsp;</p>\r\n<p>La realidad de las demandas sociales va en una v&iacute;a distinta y no podemos falsificar la  historia. Y sabemos que todo puede mejorar, por eso:</p>\r\n<p>&nbsp;</p>\r\n<p>1) Propusimos&nbsp; la creaci&oacute;n de un comit&eacute; ciudadano que evaluara las propuestas de candidatas y candidatos al Instituto electoral y de participaci&oacute;n ciudadana,&nbsp; lo logramos, pero no como hubi&eacute;semos querido, falt&oacute; m&aacute;s sociedad civil, pero avanzamos.</p>\r\n<p>&nbsp;</p>\r\n<p>2) Analizamos y propusimos mecanismos novedosos de evaluaci&oacute;n, que fueran&nbsp; transparentes, lo logramos, mas no con los &oacute;ptimos resultados que solicitamos pero si con la fuerza impulsora que nos dan nuestros mejores aliados, los jaliscienses.</p>\r\n<p>&nbsp;</p>\r\n<p>3) Creemos firmemente en la equidad y no como cuota de poder, sino como valuarte de la mujer activa en las oportunidades igualitarias y como siempre nos dan muestra, nuestras mujeres, de ser no s&oacute;lo el pilar de las familias, sino tambi&eacute;n pilar del fortalecimiento institucional, del Estado,&nbsp; en todos sus &aacute;mbitos.</p>\r\n<p>&nbsp;</p>\r\n<p>Nos resulta adecuado este paso, m&aacute;s no suficiente. En el PAN estamos conscientes que a&uacute;n falta m&aacute;s para fortalecer este sistema de vida. Todo puede mejorar!</p>\r\n<p>&nbsp;</p>\r\n<p>Necesitamos heredar un nuevo proyecto democr&aacute;tico, realizar juntos, instituto y congreso del estado una nueva historia, en v&iacute;as&nbsp; de una urgente una reforma pol&iacute;tica, de una nueva reforma electoral, que los mecanismos de participaci&oacute;n ciudadana, como la consulta popular, el refer&eacute;ndum, el plebiscito, se fortalezca con este nuevo IEPC, y que la sociedad impulse y se comprometa m&aacute;s con los cambios democr&aacute;ticos del estado.</p>\r\n<p>&nbsp;</p>\r\n<p>Confiamos transitar juntos con la ciudadan&iacute;a,&nbsp; y generar de nuevo confianza en los jalisciense, fortaleza institucional y estar de nuevo a&nbsp; la vanguardia a nivel nacional, generar los cambios legales pertinentes, dar certeza en los procesos y reformar lo que se necesite para el bien com&uacute;n de Jalisco.</p>\r\n<p>&nbsp;</p>\r\n<p>El Grupo Parlamentario de Acci&oacute;n Nacional hoy en t&eacute;rminos generales, se congratula de la nueva integraci&oacute;n del&nbsp; Instituto Electoral y de Participaci&oacute;n Ciudadana del Estado de Jalisco y el proceso en que se dio tal conformaci&oacute;n; nuestra actitud, fue en todo momento con &aacute;nimo constructivo y proactivo:</p>\r\n<p>&nbsp;</p>\r\n<p>Falta m&aacute;s, todo puede mejorar, sabemos nuestra realidad y sabemos ver hacia adelante.</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-05-31',''),(50,2,'ENTREGARÁ DIPUTADO JUAN CARLOS MÁRQUEZ INFORMACIÓN SOBRE IRREGULARIDADES DETECTADAS EN EL CAPECE','',1,'<p align=\"right\">Guadalajara, Jalisco. 03-06-2013</p>\r\n<p align=\"right\">CMP0613-47</p>\r\n<p align=\"right\">&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>ENTREGAR&Aacute; DIPUTADO JUAN CARLOS M&Aacute;RQUEZ INFORMACI&Oacute;N SOBRE IRREGULARIDADES DETECTADAS EN EL CAPECE</strong></p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><em>Investigaciones realizadas detectaron grandes irregularidades en la administraci&oacute;n pasada del CAPECE, que van desde actos de corrupci&oacute;n en licitaciones y adjudicaciones a sobreprecio hasta el enriquecimiento inexplicable por parte del ex director Salvador Uribe Av&iacute;n.</em></p>\r\n<p align=\"center\"><em>&nbsp;</em></p>\r\n<p align=\"center\"><em>Pide diputado panista M&aacute;rquez Rosas la disposici&oacute;n del Contralor Ba&ntilde;uelos Guardado&nbsp; para que se haga un compromiso de la Contralor&iacute;a en seguir con las investigaciones y&nbsp; castigar dichos&nbsp; actos.</em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>En rueda de prensa, el diputado panista&nbsp; Juan Carlos M&aacute;rquez Rosas, Presidente de la Comisi&oacute;n de Responsabilidades, dio a conocer una serie de irregularidades detectadas en el Comit&eacute; Administrador del Programa Estatal de Construcci&oacute;n de Escuelas (CAPECE) durante la administraci&oacute;n de Salvador Uribe Av&iacute;n, ex director de dicho &nbsp;organismo durante el sexenio pasado.</p>\r\n<p>&nbsp;</p>\r\n<p>Expres&oacute; el legislador panista M&aacute;rquez Rosas que con los resultados de las investigaciones y el an&aacute;lisis realizado a dicha dependencia, ya &nbsp;se cuentan con elementos que sustentan irregularidades cometidas en dicho organismo, por lo que esta semana har&aacute; llegar la documentaci&oacute;n probatoria al Contralor del Estado, Juan Jos&eacute; Ba&ntilde;uelos Guardado.</p>\r\n<p>&nbsp;</p>\r\n<p>Las irregularidades detectadas no solo&nbsp; abarcan al organismo CAPECE, sino tambi&eacute;n al enriquecimiento del ex funcionario. Entre los se&ntilde;alamientos que ser&aacute;n dados a conocer al Contralor del Estado est&aacute;n los siguientes:</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Empresa Lanzacreto</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Se cre&oacute; el 18 de diciembre del 2007 la empresa \"Lanzacreto\" &nbsp;con un capital de s&oacute;lo 50 mil pesos en la cual aparecen como titulares Salvador Uribe Av&iacute;n y su hijo Juan Pablo Uribe Aldana. Dicha empresa se crea para asesor&iacute;a, dise&ntilde;o y ejecuci&oacute;n de proyectos de ingenier&iacute;a y comercializaci&oacute;n en todas sus modalidades. A mediados del 2010, dos a&ntilde;os y medio despu&eacute;s de creada la empresa, pasa de tener un capital de 50 mil pesos a&nbsp; 7 millones &nbsp;de capital contable.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Empresa comercializadora o Promotora Dubai.-</strong> &nbsp;El titular de la empresa es el &nbsp;hijo de Manuel Uribe Aldana. Entre los comercios que maneja est&aacute;n:</p>\r\n<p>En el registro p&uacute;blico de la propiedad aparece Salvador Uribe Av&iacute;n como due&ntilde;o de 32 locales comerciales de la Plaza Conchitas, la cual tiene 39 locales comerciales; adem&aacute;s es due&ntilde;o de 65 locales comerciales en la Plaza Santiago, cerca de Tonal&aacute;, lo que representa la totalidad de dicho lugar; en la Plaza Hacienda Real del fraccionamiento Hacienda Real y de la &nbsp;Plaza del Valle, la cual queda&nbsp; por Tesist&aacute;n, tambi&eacute;n es propiedad de ellos.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Actos de corrupci&oacute;n en obras y adjudicaciones en Capece</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Arreglos por debajo de la mesa y relaci&oacute;n sospechosa y delictuosa del ex titular del CAPECE &nbsp;con proveedores. Ejemplo de esto es la Adjudicaci&oacute;n directa con la empresa  Lan Wang, Asesoria SA de CV la cual recibi&oacute; la compra o adjudicaci&oacute;n de computadoras a 6 millones&nbsp; de pesos,&nbsp; a sobreprecio.</p>\r\n<p>&nbsp;</p>\r\n<p>En adjudicaciones directas por un total de 30 millones de pesos de equipo de c&oacute;mputo &nbsp;para maestros y alumnos. Las de maestros se cotizaron en &nbsp;9 mil 917 pesos y la de los alumnos en 5 mil 519. &nbsp;Un proveedor inconforme con la licitaci&oacute;n manifest&oacute; inquietudes en dicha adjudicaci&oacute;n ya que las computadoras debieron haber costado 4 mil 900 pesos pero adem&aacute;s, si la compra era de m&aacute;s de &nbsp;50 &nbsp;computadoras el precio se bajaba a menos de cuatro mil pesos.</p>\r\n<p>&nbsp;</p>\r\n<p>Otra adjudicaci&oacute;n irregular es en la compra de CPU especiales (Workstation) con un&nbsp; precio de 24 mil 898 pesos y 96 laptops para dise&ntilde;o la cual se vendi&oacute; al gobierno a 17 mil 022 pesos cada una. Con la cotizaci&oacute;n que exist&iacute;a, la laptop debi&oacute; haber costado 9,815 pesos, precio unitario a menudeo. El workstation&nbsp; debi&oacute; haberse comprado a 20, 913 pesos precio unitario, pero el precio a mayoreo a 13 mil 457 pesos.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>17 mil campanas para escuelas</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p>Se adjudican a tres empresas distintas con el mismo representante llamado H&eacute;ctor Guillermo Orozco Aguilera, despu&eacute;s de haber declarado desierto dos licitaciones en el cual participaron 18 y 22 empresas en cada una de ellas.</p>\r\n<p>&nbsp;</p>\r\n<p>El diputado M&aacute;rquez recalc&oacute; que de dichos actos irregulares,&nbsp; se desprenden varios tipos de responsabilidades que van &nbsp;desde el&nbsp; tipo penal y administrativo hasta de &nbsp;&iacute;ndole pol&iacute;tico que recaer&iacute;a en juicio pol&iacute;tico.</p>\r\n<p>&nbsp;</p>',1,0,'2013-06-03',''),(51,2,'NECESARIO SEGUIR CONSTRUYENDO AVANCES PARA UN NUEVO SISTEMA PENAL EN JALISCO','',1,'<p align=\"right\">Guadalajara, Jalisco. 04 06 2013</p>\r\n<p align=\"right\">CMP0613-48</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>NECESARIO SEGUIR CONSTRUYENDO AVANCES PARA UN NUEVO SISTEMA PENAL EN JALISCO</strong></p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p>En rueda de prensa, el diputado V&iacute;ctor Manuel S&aacute;nchez Orozco, Presidente de la Comisi&oacute;n de Readaptaci&oacute;n Social dio a conocer las conclusiones del primer Foro del Sistema Penal Acusatorio, Juicios Orales y Justicia Alternativa llevado a cabo en las instalaciones del Congreso los d&iacute;as &nbsp;21 y 22 de mayo.</p>\r\n<p>&nbsp;</p>\r\n<p>En dicho foro integrado por acad&eacute;micos, especialistas, organismos civiles, empresariales as&iacute; como&nbsp; funcionarios de los tres poderes y niveles de gobierno, se logr&oacute; analizar las diferentes modificaciones legales que se deben emprender en Jalisco para transitar a un sistema de Justicia Acusatorio adversarial.</p>\r\n<p>&nbsp;</p>\r\n<p>La necesidad de dichas modificaciones en el estado se &nbsp;derivan de las &nbsp;reformas constitucionales que se aprobaron en junio de 2008 a nivel federal en materia de seguridad y Justicia, que obligan a&nbsp; las entidades federativas a implementar un nuevo sistema penal.</p>\r\n<p>&nbsp;</p>\r\n<p>Entre las conclusiones, sobresale el poco avance que tiene Jalisco en la implementaci&oacute;n del nuevo sistema, por lo que es importante tomar en cuenta la experiencia nacional e internacional a fin de aprender de las experiencias exitosas y de los errores o tropiezos que otras entidades y pa&iacute;ses han tenido.</p>\r\n<p>&nbsp;</p>\r\n<p>Se&ntilde;alo el diputado panista V&iacute;ctor Manuel que es tarea de los tres poderes lograr avances en la implementaci&oacute;n de un nuevo sistema de justicia penal. Por lo pronto, al poder legislativo le corresponde adecuar las normas para implementar el sistema penal acusatorio adversarial; apoyar la unificaci&oacute;n del c&oacute;digo procesal y penal &uacute;nicos en el pa&iacute;s; dar seguimiento con mesas de trabajo para seguir avanzando en la implementaci&oacute;n de los juicios orales; unificar criterios que permitan debatir y evitar castigos desiguales; realizar un diagnostico del sistema de justicia penal en el estado para identificar debilidades y fortalezas.</p>\r\n<p>&nbsp;</p>\r\n<p>Estad&iacute;sticas de algunas entidades federativas indican que el empleo de juicio de amparo ha disminuido significativamente, en la mayor&iacute;a de los casos se declaran improcedentes o solo se concede para efectos; se est&aacute; cumpliendo con el principio de inmediaci&oacute;n y defensa adecuada. El 90% de los imputados prefiere al defensor p&uacute;blico; se est&aacute; reduciendo el tiempo de enjuiciamiento ya que el promedio de d&iacute;as en el sistema mixto es de 170, mientras que en Chihuahua es de 78.</p>\r\n<p>&nbsp;</p>\r\n<p>Las tareas pendientes que se lograron identificar durante los trabajos del foro van desde la necesidad de evaluar las pol&iacute;ticas criminol&oacute;gicas, el an&aacute;lisis de la impartici&oacute;n de justicia de manera integral y la violaci&oacute;n de los derechos fundamentales con el actual sistema inquisitivo.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-06-04',''),(52,2,'CONTINUARÁ DIPUTADO PANISTA CON TRABAJOS PARA EL NUEVO SISTEMA PENAL EN JALISCO','',1,'<p align=\"right\">Guadalajara, Jalisco. 04-06-2013</p>\r\n<p align=\"right\">CMP0613-49</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>CONTINUAR&Aacute; DIPUTADO PANISTA CON TRABAJOS PARA EL NUEVO SISTEMA PENAL EN JALISCO</strong></p>\r\n<p>&nbsp;</p>\r\n<p><em>El d&iacute;a de hoy se instal&oacute; el Comit&eacute; Consultivo para la  Reforma Penal, el cual estar&aacute; integrado por cinco mesas de an&aacute;lisis que dar&aacute;n seguimiento a los trabajos del foro del Sistema Penal Acusatorio, Juicios Orales y Justicia Alternativa.</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p><em>Buscar&aacute; diputado V&iacute;ctor S&aacute;nchez la creaci&oacute;n en el Congreso de una Comisi&oacute;n Especial para la reforma penal, la cual elimine el &nbsp;atraso que presenta Jalisco en el tema.</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p>Inform&oacute; el diputado panista Victor Manuel S&aacute;nchez Orozco la conveniencia de crear un comit&eacute; consultivo que de seguimiento a la unificaci&oacute;n del c&oacute;digo procesal y penal en Jalisco, el cual trabajar&aacute; en cinco ejes tem&aacute;ticos pertenecientes a la justicia penal y seguridad p&uacute;blica.</p>\r\n<p>&nbsp;</p>\r\n<p>El objetivo de instalar el comit&eacute; es elaborar propuestas para fijar las medidas de implementaci&oacute;n del Sistema Penal Acusatorio. Los cinco ejes ser&aacute;n trabajados en igual n&uacute;mero de mesas tem&aacute;ticas de an&aacute;lisis y reflexi&oacute;n, las cuales ser&aacute;n: Justicia alternativa a cargo del Maestro Ignacio Roque Parra, director General de Acered Soluci&oacute;n de Conflictos; C&oacute;digo de Procedimientos Penales con el Maestro Francisco Jim&eacute;nez Reynoso; C&oacute;digo Penal coordinado por el Doctor Daniel Espinoza Licon; C&oacute;digo Penitenciario (Reinserci&oacute;n Social y Seguridad P&uacute;blica) por el Doctor Dante Haro Reyes y la mesa de Justicia Para adolescentes con el Magistrado Antonio Fierros Ram&iacute;rez como responsable.</p>\r\n<p>&nbsp;</p>\r\n<p>Entre las l&iacute;neas de acci&oacute;n que se trabajaran esta la necesidad de identificar los niveles de responsabilidad de todos los niveles del gobierno, autoridades as&iacute; como identificar&nbsp; como se deben dar los canales de coordinaci&oacute;n entre los tres poderes.</p>\r\n<p>&nbsp;</p>\r\n<p>Se&ntilde;al&oacute; el legislador panista que el comit&eacute; sesionar&iacute;a una vez a la semana en las instalaciones del Congreso por un lapso aproximado de dos meses. Adem&aacute;s buscar&aacute; que exista en el congreso una comisi&oacute;n legislativa que logre aterrizar los trabajos encaminados a una justicia m&aacute;s pronta y justa para los jaliscienses.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-06-04',''),(53,2,'SEÑALAN DIPUTADOS DEL PAN IRREGULARIDADES DE EX SECRETARIOS  DEL CONGRESO.','',1,'<p align=\"right\">Guadalajara, Jalisco. 05 06 2013</p>\r\n<p align=\"right\">CMP0613-50</p>\r\n<p align=\"right\">&nbsp;</p>\r\n<p align=\"center\"><strong>SE&Ntilde;ALAN DIPUTADOS DEL PAN IRREGULARIDADES DE EX SECRETARIOS &nbsp;DEL CONGRESO</strong>.</p>\r\n<p align=\"center\">&nbsp;</p>\r\n<p align=\"center\"><em>Se har&aacute;n las diligencias necesarias para que las autoridades correspondientes finquen las responsabilidades correspondientes, las cuales pueden derivarse&nbsp; en delitos como&nbsp; fraude, peculado y otros del orden penal.</em></p>\r\n<p align=\"center\">&nbsp;</p>\r\n<p align=\"center\"><em>Piden acci&oacute;n penal por el desfalco financiero de la anterior legislatura y que se castigue a los responsable de sumir al Congreso en la crisis financiera que vive.</em></p>\r\n<p>&nbsp;</p>\r\n<p>En rueda de prensa, los diputados panistas Gildardo Guerrero Torres, Mariana Ar&aacute;mbula Mel&eacute;ndez, V&iacute;ctor Manuel S&aacute;nchez Orozco y Juan Jos&eacute; Cuevas Garc&iacute;a informan de actos&nbsp; llevados a cabo por los es secretarios de la pasada legislatura, Carlos Corona Mart&iacute;n del Campo y Jos&eacute; Manuel Correa Cese&ntilde;a, en la firma y pago de multimillonario contrato a supuesta empresa de asesoramiento.</p>\r\n<p>&nbsp;</p>\r\n<p>El diputado Gildardo Guerrero Torres se&ntilde;al&oacute; que en agosto del a&ntilde;o 2010, Carlos Corona Mart&iacute;n del Campo en su funci&oacute;n de Secretario General del Congreso contrat&oacute; a empresa del Distrito Federal&nbsp; llamada&nbsp; SAE Sistemas Administrativos Empresariales SA de CV a la que se le solicit&oacute; la realizaci&oacute;n de las distintas diligencias, estudios y an&aacute;lisis de informaci&oacute;n necesarias para que el Poder Legislativo se adhiriera al decreto por el que se otorgan diversos beneficios fiscales en materia de impuesto sobre la renta, de derechos y de aprovechamientos de fecha 3 de diciembre de 2008, suscrito por el Poder Ejecutivo Federal y publicado en el diario oficial de la Federaci&oacute;n...</p>\r\n<p>&nbsp;</p>\r\n<p>Los diputados presentaron contrato y documentos firmados por los&nbsp; ex funcionarios citados anteriormente, en los cuales se hacen pagos por un total de casi 31 millones de pesos a supuesta empresa que asesor&oacute; en regulaci&oacute;n de impuestos de los trabajadores.</p>\r\n<p>&nbsp;</p>\r\n<p>Los casi 31 millones de pesos se realizaron en tres pagos. El 50 por ciento del pago se realiz&oacute;&nbsp; el 16 de marzo del a&ntilde;o 2011, por un total de 14 millones en el a&ntilde;o 2011; el 24 de abril del mismo a&ntilde;o se hizo el siguiente pago de 8 millones 120 mil pesos y el &uacute;ltimo de &eacute;stos fue el 16 de mayo por un total de 8 millones 571 mil 995 pesos, lo que da un total de casi 31 millones de pesos.</p>\r\n<p>&nbsp;</p>\r\n<p>El legislador panista Gildardo Guerrero indic&oacute; que lo m&aacute;s indignante es que el trabajo por el que supuestamente se le pago a dicha empresa, pudo haber sido realizado por estudiantes de las carreras de derecho o contabilidad.</p>\r\n<p>&nbsp;</p>\r\n<p>El Coordinador Gildardo Guerrero llam&oacute; al contrato firmado por el secretario Carlos Corona como oscuro, ventajoso y escueto ya que el mismo tiene cl&aacute;usulas de confidencialidad, que proh&iacute;ben dar a conocer montos y detalles.&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-06-05',''),(54,2,'Apoyan  fracciones parlamentarias el esclarecimiento de la  denuncia pública del PAN sobre contrato irregular por 31 millones de pesos realizado en la pasada legislatura.','',1,'<p align=\"right\">Guadalajara, Jalisco. 06-06-2013</p>\r\n<p align=\"right\">CMP0613-51</p>\r\n<p align=\"right\">&nbsp;</p>\r\n<p align=\"center\"><strong>Apoyan&nbsp; fracciones parlamentarias el esclarecimiento de la&nbsp; denuncia p&uacute;blica del PAN sobre contrato irregular por 31 millones de pesos realizado en la pasada legislatura.</strong></p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><em>Se aprob&oacute; en la Junta de Coordinaci&oacute;n Pol&iacute;tica&nbsp; pedir a la Direcci&oacute;n Jur&iacute;dica del Congreso que en un plazo de no m&aacute;s de cinco d&iacute;as h&aacute;biles&nbsp; presente documentos y pruebas para fincar las responsabilidades correspondientes.</em></p>\r\n<p>&nbsp;</p>\r\n<p>Por considerar que la denuncia p&uacute;blica realizada el d&iacute;a de ayer por el coordinador de la Fracci&oacute;n Parlamentaria de Acci&oacute;n Nacional, Gildardo  Guerrero Torres, requiere acciones en conjunto de las dem&aacute;s fuerzas pol&iacute;ticas del Congreso, durante la reuni&oacute;n de la Junta de Coordinaci&oacute;n Pol&iacute;tica los partidos Revolucionario Institucional, Movimiento Ciudadano, de la Revoluci&oacute;n Democr&aacute;tica y del Verde Ecologista dieron su postura a favor&nbsp; de continuar con el esclarecimiento de la irregularidades cometidas en la pasada legislatura por los entonces Secretarios del Congreso&nbsp; Carlos Corona Mart&iacute;n del Campo y Jos&eacute; Manuel Correa Cese&ntilde;a.</p>\r\n<p>&nbsp;</p>\r\n<p>Los coordinadores coincidieron en que quienes hoy integran el Congresos debe conducirse con responsabilidad y no repetir la historia de otras legislaturas, en el sentido de no responder por hechos irregulares por parte de servidores p&uacute;blicos que han da&ntilde;ado la imagen y las finanzas del Poder Legislativo.</p>\r\n<p>&nbsp;</p>\r\n<p>Propusieron que una vez que la  Direcci&oacute;n Jur&iacute;dica entregue los documentos correspondientes, la Junta de Coordinaci&oacute;n Pol&iacute;tica pueda presentar a la Mesa Directiva del Congreso las denuncias correspondientes para los funcionarios p&uacute;blicos involucrados en las irregularidades.</p>\r\n<p>&nbsp;</p>\r\n<p>El d&iacute;a de ayer, el diputado Gildardo Guerrero acompa&ntilde;ado de diputados de su fracci&oacute;n present&oacute; documentos que prueban el pago que hizo la pasada legislatura a un supuesto servicio que prest&oacute; la empresa &nbsp;Sistemas Administrativos Empresariales y por el cual cobr&oacute; una cantidad cercana a los 31 millones de pesos.</p>\r\n<p>&nbsp;</p>\r\n<p>El servicio que nunca se vio reflejado, era para asesorar al Congreso y evitar el pago de impuestos; fue contratado por el ex Secretario del Congreso Carlos Corona y pagado en tres cheques por el despu&eacute;s secretario Jos&eacute; Manuel Correa Cese&ntilde;a.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\">&nbsp;</p>\r\n<p align=\"center\">&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-06-06',''),(55,2,'El GPPAN lamenta el fallecimiento del siempre humanista Gildardo Gómez Verónica','',1,'<p align=\"right\">Guadalajara, Jalisco. 06-06-2013</p>\r\n<p align=\"right\">CMP0613-52</p>\r\n<p><a name=\"_GoBack\"></a>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>El GPPAN lamenta el fallecimiento del siempre humanista Gildardo G&oacute;mez Ver&oacute;nica</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>El GPPAN de la LX Legislatura de Jalisco, lamenta el sensible fallecimiento del humanista, ex legislador y senador por Jalisco, panista, gran ser humano y amigo: Don Gildardo G&oacute;mez Ver&oacute;nica, quien nos dej&oacute; gran ense&ntilde;anza con su ejemplo y entrega a las causas sociales y en bien de los Jaliscienses.</p>\r\n<p>&nbsp;</p>\r\n<p>Gran humanista, maestro, luchador social y amigo, atento siempre a las causas justas, hombre de palabra clara y concisa, gran orador y congruente con sus actos.</p>\r\n<p>&nbsp;</p>\r\n<p>Reconocemos su labor como senador de la rep&uacute;blica, diputado local y federal y su entrega como militante del PAN en Jalisco en trabajos de fortalecimiento institucional y pol&iacute;tico, los cuales supo conducir con entrega y dedicaci&oacute;n, respetando siempre la doctrina institucional, integrante del Comit&eacute; Directivo Estatal y Consejero vitalicio.</p>\r\n<p>&nbsp;</p>\r\n<p>Todos los panistas aprendimos de &eacute;l, sus conversaciones amenas y cordiales siempre nos dejaron un claro ejemplo de educaci&oacute;n y sabidur&iacute;a, de lealtad y b&uacute;squeda de la unidad y la congruencia doctrinaria.</p>\r\n<p>&nbsp;</p>\r\n<p>Hoy nos deja un gran vac&iacute;o, pero sobre todo, un ejemplo de servicio incondicional por lograr el bien com&uacute;n y la justicia en la sociedad.</p>\r\n<p>&nbsp;</p>\r\n<p>El GPPAN externa con profunda pena nuestro m&aacute;s sincero apoyo a su familia y les reiteramos nuestras condolencias.</p>\r\n<p>&nbsp;</p>\r\n<p>Descanse en paz el siempre humanista Don Gildardo G&oacute;mez Ver&oacute;nica.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-06-06',''),(56,2,'Urge diputado Cuevas transporte gratuito universal a estudiantes','',1,'<p align=\"right\">Guadalajara, Jalisco. 06-06-2013</p>\r\n<p align=\"right\">&nbsp;<a name=\"_GoBack\"></a>CMP0613-53</p>\r\n<p align=\"right\">&nbsp;</p>\r\n<p align=\"center\"><strong>Urge diputado Cuevas transporte gratuito universal a estudiantes</strong></p>\r\n<p align=\"center\"><em>&nbsp;</em></p>\r\n<p align=\"center\"><em>*El programa \"bienevale\", es solo \"para unos cu&aacute;ntos\"</em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>El Dip. Panista Juan Jos&eacute; Cuevas demand&oacute; este jueves desde la tribuna del Congreso del Estado la inclusi&oacute;n de todos los estudiantes de Jalisco en el programa \"Bienevale\", que beneficiar&aacute; a una minor&iacute;a de estudiantes con transporte gratuito, y que excluir&aacute; a la mayor&iacute;a, \"todo por hacer promesas desproporcionadas durante campa&ntilde;a\".</p>\r\n<p>&nbsp;</p>\r\n<p>En la campa&ntilde;a a Gobernador, el actual mandatario prometi&oacute; transporte p&uacute;blico para los estudiantes del estado de Jalisco. No dijo \"algunos\" precis&oacute; Cuevas Garc&iacute;a y \"tampoco mencion&oacute; que fuera a ser para unos cuantos privilegiados. Mencion&oacute; la palabra \"todos\" y hoy, todos los estudiantes demandan cumplimento a esa promesa\".</p>\r\n<p>&nbsp;</p>\r\n<p>Cuevas Garc&iacute;a reconoci&oacute; que \"no es s&oacute;lo una responsabilidad del titular del poder ejecutivo hacer realidad esa promesa. Nos corresponde tambi&eacute;n a los diputados hacer una parte de este trabajo para que se cumpla con la expectativa de los ciudadanos\", sin embargo ataj&oacute; diciendo que brindar el transporte gratuito Universal a los estudiantes jaliscienses costar&iacute;a al erario m&aacute;s de 5 mil millones de pesos.</p>\r\n<p>&nbsp;</p>\r\n<p>Record&oacute; el diputado vallartense que el programa Bienestar Jalisco que proporcionar&aacute; los llamados \"Bienevales\" le da continuidad a las pol&iacute;ticas p&uacute;blicas establecidas por el gobierno anterior, que hab&iacute;a implementado el programa \"Llega\" que justamente entregaba apoyo para el pago de transporte a estudiantes de escasos recursos.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Hoy sin embargo, hay un compromiso p&uacute;blico por hacer este un programa universal. El gobernador habl&oacute; de todos los estudiantes para este beneficio. Hoy una minor&iacute;a tendr&aacute; acceso a este esfuerzo. Una minor&iacute;a ser&aacute; la beneficiada. No hay por tanto una promesa cumplida, hay en todo caso un programa medianamente ampliado que ya exist&iacute;a\".</p>\r\n<p>&nbsp;</p>\r\n<p>De acuerdo a las cifras oficiales unos 150 mil estudiantes de secundaria, preparatoria y profesional recibir&aacute;n el beneficio. \"Tristemente estos selectos beneficiarios pueden acceder al programa solo mediante el uso de las tecnolog&iacute;as de la informaci&oacute;n\", ya que al programa deben inscribirse los estudiantes por medio de una cuenta de Facebook. \"Este candado limita el acceso a estudiantes que, por las razones que sean, no tienen una computadora, no tienen una cuenta de correo electr&oacute;nico o un perfil en <em>Face</em>\".</p>\r\n<p>&nbsp;</p>\r\n<p>El diputado de PAN Juan Jos&eacute; Cuevas pregunt&oacute; al pleno: \"&iquest;Qu&eacute; le decimos a los cientos de miles de ni&ntilde;os y j&oacute;venes que ver&aacute;n que el beneficio no llegar&aacute; y que se limitar&aacute; para unos cuantos estudiantes que tengan la suerte geogr&aacute;fica de vivir en la zona metropolitana?</p>\r\n<p>&nbsp;</p>\r\n<p>&iquest;Qu&eacute; explicaci&oacute;n le damos a los estudiantes de Guzm&aacute;n o Vallarta? &iquest;Les decimos que el gobierno del estado los ve como estudiantes de segunda?\"</p>\r\n<p>&nbsp;</p>\r\n<p>Explic&oacute; que en Vallarta por ejemplo, existen varias decenas de miles de estudiantes que todos los d&iacute;as acuden a escuelas dentro del municipio. Hay varias universidades p&uacute;blicas y privadas; hay varias preparatorias y bachilleratos; decenas de secundarias, primarias y preescolares. Hay m&aacute;s de 300 colonias, unos mil 500 camiones urbanos; decenas y decenas de rutas de transporte. \"Y a pesar de esto ni un solo estudiante vallartense tendr&aacute; transporte gratuito. Ni uno s&oacute;lo. &iquest;Qu&eacute; explicaci&oacute;n les doy?\"</p>\r\n<p>&nbsp;</p>\r\n<p>Cuevas Garc&iacute;a urgi&oacute; replantear el programa. \"Urge clarificarlo, transparentarlo. Urge que el programa afine sus reglas de operaci&oacute;n para que llegue a los estudiantes en general, y que, en todo caso abarque a la mayor&iacute;a dominante, y no a la minor&iacute;a privilegiada\", concluy&oacute;.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-06-06',''),(57,2,'Aprueba pleno del Congreso del Estado a la diputada Norma Angélica Cordero Prado como representante del PAN ante la Comisión Especial de seguimiento a la Presa El Zapotillo','',1,'<p align=\"right\">Guadalajara, Jalisco. 06-06-2013</p>\r\n<p align=\"right\">CMP0613-54</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;<a name=\"_GoBack\"></a></p>\r\n<p align=\"center\"><strong>Aprueba pleno del Congreso del Estado a la diputada Norma Ang&eacute;lica Cordero Prado como representante del PAN ante la Comisi&oacute;n Especial de seguimiento a la  Presa El Zapotillo</strong></p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><em>Ser&aacute; como vocal de la comisi&oacute;n legislativa de Recursos Hidr&aacute;ulicos y Pesca, junto con otros tres diputados, quienes tratar&aacute;n asuntos relacionados con este proyecto</em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>La diputada panista Norma  Ang&eacute;lica Cordero Prado, fue nombrada como representante del PAN, dentro del grupo de diputados de diferentes partidos que analizar&aacute;n y dar&aacute;n seguimiento al proyecto de la construcci&oacute;n de la presa El Zapotillo.</p>\r\n<p>&nbsp;</p>\r\n<p>El pleno del Congreso del Estado, aprob&oacute; este jueves a petici&oacute;n de la Junta de Coordinaci&oacute;n Pol&iacute;tica, la ampliaci&oacute;n de vocal&iacute;as y propuso la integraci&oacute;n de cuatro diputados m&aacute;s a la  Comisi&oacute;n Legislativa de Recursos Hidr&aacute;ulicos y Pesca.</p>\r\n<p>&nbsp;</p>\r\n<p>Ello, con el fin de analizar s&oacute;lo temas relacionados con este caso, \"los diputados que se integran en los t&eacute;rminos de este acuerdo, lo ser&aacute;n para efectos, &uacute;nica y exclusivamente, de los asuntos relacionados con el proyecto de la presa El Zapotillo\", se&ntilde;al&oacute; la legisladora.</p>\r\n<p>&nbsp;</p>\r\n<p>Como representante del distrito 2 con cabecera en Lagos de Moreno, zona por donde pasar&iacute;a parte de esta obra, Cordero Prado, manifest&oacute; que El Zapotillo es un gran tema que se tiene que analizar con detenimiento y anteponer el bienestar de la ciudadan&iacute;a, a cualquier asunto pol&iacute;tico.</p>\r\n<p>&nbsp;</p>\r\n<p>Antes de forjar una opini&oacute;n, se pronunci&oacute; a favor de analizar los pros y los contras y de ah&iacute; tomar acciones concretas dentro del &aacute;mbito de su competencia como legislativo.</p>\r\n<p>&nbsp;</p>\r\n<p>Los otros diputados que estar&aacute;n en este grupo de an&aacute;lisis son: Joaqu&iacute;n Antonio Portilla Wolff del PRI, Salvador Zamora Zamora de Movimiento Ciudadano, Celia Fausto Lizaola del PRD y Norma Ang&eacute;lica Cordero Prado del PAN.</p>\r\n<p>&nbsp;</p>\r\n<p>Como se recordar&aacute;, el pasado 07 de mayo de este a&ntilde;o, diputados de todas las fracciones visitaron las obras de construcci&oacute;n de la presa El Zapotillo, as&iacute; como la poblaci&oacute;n de Temacapul&iacute;n, de donde surgi&oacute; la propuesta de crear una comisi&oacute;n especial de seguimiento, que ahora se cristaliza con la adhesi&oacute;n de estos diputados a la Comisi&oacute;n de Recursos Hidr&aacute;ulicos y Pesca.</p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-06-06',''),(58,2,'URGENTE ATENDER PROBLEMÁTICA EN LAS JUNTAS: HERNÁN CORTÉS','',1,'<p align=\"right\">Guadalajara, Jalisco. 07-06-2013</p>\r\n<p align=\"right\">&nbsp;<a name=\"_GoBack\"></a>CMP0613-55</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>URGENTE ATENDER PROBLEM&Aacute;TICA EN LAS JUNTAS: HERN&Aacute;N CORT&Eacute;S</strong></p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p align=\"center\"><strong><em>Dirige exhorto a SCT Jalisco y Comisi&oacute;n Estatal de Derechos Humanos</em></strong></p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p>Como urgente calific&oacute; el Diputado de Acci&oacute;n Nacional Hern&aacute;n Cort&eacute;s Berumen, la necesidad de que la centro Jalisco de la Secretar&iacute;a de Comunicaciones y Transportes (SCT) revise la obra que realiza FERROMEX, actualmente en los cruces de las v&iacute;as a Manzanillo en el municipio de Tlaquepaque.</p>\r\n<p>&nbsp;</p>\r\n<p>Durante la sesi&oacute;n ordinaria, el diputado panista Hern&aacute;n Cort&eacute;s hizo un llamado al Pleno del Congreso del estado de Jalisco, para aprobar un exhorto a la SCT y&nbsp; &eacute;sta revise las afectaciones que tendr&aacute;n los vecinos con las obras que se han emprendido. Lo anterior, luego de que un grupo de vecinos de la Delegaci&oacute;n Las Juntas externar&aacute;n al legislador la problem&aacute;tica que viven actualmente.</p>\r\n<p>&nbsp;</p>\r\n<p>Los vecinos de la zona manifestaron que FERROMEX pretende enmallar las v&iacute;as del tren, evitando con esto el cruce de los vecinos de lado a lado. Sin embargo, lo anterior significar&iacute;a un verdadero problema para las colonias circundantes, pues las escuelas, centros de salud, comercios, trabajos y actividades en general, se encuentran en ambos lados de las v&iacute;as.</p>\r\n<p>&nbsp;</p>\r\n<p>Con la medida que se ha comenzado a construir para aislar las v&iacute;as del tren, se afectar&iacute;a el tr&aacute;nsito de los pobladores, quienes en su gran mayor&iacute;a son estudiantes y amas de casa a los que se har&aacute; dar la vuelta a m&aacute;s de tres kil&oacute;metros para poder llegar al otro lado de las v&iacute;as.</p>\r\n<p>&nbsp;</p>\r\n<p>Hern&aacute;n Cort&eacute;s Berumen, exhort&oacute; tambi&eacute;n a la Comisi&oacute;n Estatal de Derechos Humanos para que investigue sobre posibles violaciones a los mismos y pidi&oacute; a las Instituciones se privilegie la seguridad, el libre tr&aacute;nsito y el derecho a la convivencia de los ciudadanos.</p>\r\n<p>&nbsp;</p>\r\n<p>Algunas de las colonias afectadas con las obras realizadas en Tlaquepaque son Las Juntas, Artesanos, El Vergel I y El Vergel II, L&oacute;pez Cotilla, Guadalupe Ejidal, entre otras.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-06-07',''),(59,2,'Busca diputada panista Mariana  Arámbula poner un alto a los casos de menores violentados en Jalisco','',1,'<p><strong>&nbsp;</strong><strong>&nbsp;</strong></p>\r\n<p align=\"right\"><strong>Guadalajara, Jalisco 7 de junio de 2013</strong></p>\r\n<p align=\"right\">CMP0613-56<strong></strong></p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>Busca diputada panista Mariana&nbsp; Ar&aacute;mbula poner un alto a los casos de menores violentados en Jalisco</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p align=\"center\"><em>Es la primera iniciativa en su contenido, que se presenta en la actual legislatura. Se suman todos los diputados, de las diferentes fracciones a apoyarla. </em></p>\r\n<p align=\"center\"><em>&nbsp;</em></p>\r\n<p align=\"center\"><em>Es lamentable &nbsp;que Jalisco figure a nivel nacional en el quinto lugar de maltrato a los menores, refiri&oacute; la legisladora.</em></p>\r\n<p align=\"center\">&nbsp;</p>\r\n<p>En el marco de la conmemoraci&oacute;n del \"D&iacute;a Internacional del Ni&ntilde;o, V&iacute;ctimas de Agresi&oacute;n\", la diputada panista Mariana Ar&aacute;mbula Mel&eacute;ndez present&oacute; al Pleno del Congreso, la &nbsp;iniciativa de ley que propone tipificar el delito de maltrato infantil en el estado de Jalisco, as&iacute; como la adici&oacute;n y modificaci&oacute;n de diversos art&iacute;culos los cuales buscan garantizar&nbsp; el libre&nbsp; y sano desarrollo de los infantes.</p>\r\n<p>&nbsp;</p>\r\n<p>Se&ntilde;al&oacute; la diputada que Jalisco figura a nivel nacional en el quinto lugar de maltrato a los menores, problema social que se ha multiplicado en el pa&iacute;s, ya que M&eacute;xico vergonzosamente figura en el primer lugar en violencia f&iacute;sica, abuso sexual y homicidios en menores de 14 a&ntilde;os entre los pa&iacute;ses miembros de la Organizaci&oacute;n para la Cooperaci&oacute;n y el Desarrollo Econ&oacute;mico (OCDE).</p>\r\n<p>&nbsp;</p>\r\n<p>En la exposici&oacute;n de motivos de la iniciativa, la legisladora se&ntilde;ala que el maltrato infantil por ser un asunto \"privado\" &nbsp;generalmente se da puertas adentro, en la secrec&iacute;a del hogar, por lo que resulta sumamente dif&iacute;cil identificarlo, registrarlo y peor a&uacute;n la intervenci&oacute;n temprana para estos ni&ntilde;os que en muchos de los casos las consecuencias que sufren son mortales.</p>\r\n<p>&nbsp;</p>\r\n<p>Entre los principales agresores que infringen directa o indirectamente el maltrato son las personas cercanas a los infantes, como los padres, parientes o cuidadores, sin embargo tambi&eacute;n existen otros &aacute;mbitos en el que los ni&ntilde;os sufren constantemente de vejaciones tanto f&iacute;sicas como psicol&oacute;gicas, ya sea por acci&oacute;n u omisi&oacute;n, as&iacute; pues entonces podemos mencionar tanto estancias infantiles como el &aacute;mbito escolar, instituciones p&uacute;blicas o la misma comunidad.</p>\r\n<p>&nbsp;</p>\r\n<p>Recalc&oacute; la legisladora en su intervenci&oacute;n, que el Maltrato Infantil, lastima hasta lo m&aacute;s profundo al menor, no solo f&iacute;sicamente, si no emocional, moral y psicol&oacute;gicamente, caus&aacute;ndoles un da&ntilde;o permanente que definitivamente mutila su inocencia, personalidad, lo lastima, humilla y hiere<strong>,</strong> menoscaba la percepci&oacute;n de s&iacute; mismo minimizando su personalidad al grado de pensar \"que se lo merece\" o que el \"tuvo la culpa\".</p>\r\n<p>La iniciativa crea el cap&iacute;tulo VIII del t&iacute;tulo quinto bis, denominado maltrato infantil, recorriendo al cap&iacute;tulo IX, las&nbsp; agravantes comunes a los delitos contra el desarrollo de la personalidad, adiciona el articulo 142-n recorriendo el actual 142-n al 142-&ntilde;, modifica el capitulo i del t&iacute;tulo d&eacute;cimo sexto y deroga el art&iacute;culo 205-bis del c&oacute;digo penal del estado de jalisco; adiciona el art&iacute;culo 342 del c&oacute;digo de procedimientos penales; adiciona los art&iacute;culos 567 y 580 del c&oacute;digo civil del estado de jalisco; adiciona la fracci&oacute;n XV al art&iacute;culo 5, modifica la fracci&oacute;n VI y adiciona la fracci&oacute;n VII del&nbsp; art&iacute;culo 35 de la ley de los derechos de las ni&ntilde;as, los ni&ntilde;os y adolescentes, todos del estado de Jalisco<strong>&nbsp; .&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></p>\r\n<p>Cabe resaltar que su iniciativa de Ley se encuentra apegada a investigaciones de derecho comparado, acuerdos signados por el estado mexicano, que sustentan, ratifican y piden que cada estado se apegue a los tratados internacionales de los cuales M&eacute;xico en su gran mayor&iacute;a ha firmado, para que se tipifique el maltrato infantil como delito adem&aacute;s de calificarlo como grave y eliminar por completo la necesidad de la querella por parte del ofendido.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Algunas cifras sobre el incremento de violencia a los menores</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p>El Dr. Javier &Aacute;lvaro Barriga Mar&iacute;n, Jefe del Servicio de Urgencias Pedi&aacute;tricas y Coordinador del Grupo Multidisciplinario a ni&ntilde;os v&iacute;ctimas de Maltrato del Hospital Civil de Guadalajara, \"Dr. Juan I. Menchaca\" comparti&oacute; con la diputada Mariana  Ar&aacute;mbula el reporte que muestra informaci&oacute;n anual, el cual evidencia claramente el incremento alarmante de casos de Maltrato Infantil en el Estado ya que indic&oacute; que se ha incrementado en un 359% m&aacute;s del 2007 a la fecha.</p>\r\n<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></p>\r\n<p>Del total de casos nuevos en el 2011, hubo 42 reportes de maltrato f&iacute;sico, 225 casos de maltrato fetal, &nbsp;56 menores presentaron maltrato psicol&oacute;gico, 234 casos de negligencia u omisi&oacute;n de cuidados, &nbsp;66 &nbsp;de abuso sexual, un ni&ntilde;o con s&iacute;ndrome del zarandeo o del \"ni&ntilde;o zarandeado\", 38 casos por violencia intrafamiliar y 147 casos de maltrato combinado (agresi&oacute;n f&iacute;sica y alguna otra manifestaci&oacute;n de violencia).</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-06-07',''),(60,2,'Firman diputados panistas convenio de colaboración para apoyar el cuidado  de la niñez en Jalisco','',1,'<p>&nbsp;</p>\r\n<p align=\"right\">Guadalajara, Jalisco 7 de junio de 2013</p>\r\n<p align=\"right\">CMP0613-58</p>\r\n<p align=\"right\">&nbsp;</p>\r\n<p align=\"center\"><strong>Firman diputados panistas convenio de colaboraci&oacute;n para apoyar el cuidado&nbsp; de la ni&ntilde;ez en Jalisco</strong></p>\r\n<p align=\"right\">&nbsp;</p>\r\n<p>Durante la firma del Convenio de Colaboraci&oacute;n entre el Gobierno del Estado y la Asociaci&oacute;n Civil \"Alcanzando Ni&ntilde;os en las Fronteras\" que se llev&oacute; a cabo en Palacio de Gobierno, los diputados panistas Mariana Ar&aacute;mbula Mel&eacute;ndez y El&iacute;as Octavio I&ntilde;&iacute;guez Mej&iacute;a se congratularon porque en Jalisco se trabaja por la ni&ntilde;ez vulnerable.</p>\r\n<p>&nbsp;</p>\r\n<p>El diputado El&iacute;as I&ntilde;&iacute;guez expres&oacute; su complacencia por &nbsp;formar parte del proyecto por el cual Jalisco da un paso importante en la implementaci&oacute;n de acciones en la protecci&oacute;n de los ni&ntilde;os v&iacute;ctimas de abuso sexual infantil, maltrato infantil y en circunstancias dif&iacute;ciles. Indic&oacute; &nbsp;que con la renovaci&oacute;n&nbsp; de dicho convenio de colaboraci&oacute;n se trabajar&aacute; por los ni&ntilde;os v&iacute;ctimas quienes tendr&aacute;n la oportunidad de acceder a programas novedosos de prevenci&oacute;n y rehabilitaci&oacute;n que les aseguran un futuro prometedor.</p>\r\n<p>&nbsp;</p>\r\n<p>El legislador panista se comprometi&oacute; a trabajar desde el Poder Legislativo en conjunto con el Gobierno del Estado para adecuar marcos jur&iacute;dicos,&nbsp; programas y pol&iacute;ticas que garanticen el pleno y sano desarrollo de la infancia.</p>\r\n<p>&nbsp;</p>\r\n<p>Por su parte la diputada Mariana  Ar&aacute;mbula se&ntilde;al&oacute; que desgraciadamente son cada d&iacute;a m&aacute;s frecuentes las conductas que atentan contra los derechos de la ni&ntilde;ez, lo cual causa&nbsp; da&ntilde;o irreparable a las v&iacute;ctimas, sus familiares y la sociedad en general, ya que al vivir en comunidad, lo que afecta a un miembro afecta a todos.</p>\r\n<p>&nbsp;</p>\r\n<p>Record&oacute; que ella desde su car&aacute;cter de legisladora ha impulsado varias iniciativas como la que reforma a la Ley de Educaci&oacute;n a favor de prevenir los delitos en contra de los ni&ntilde;os. En el contenido de la iniciativa se propone &nbsp;capacitar a los maestros para detectar casos en que un menor es objeto de abuso.</p>\r\n<p>&nbsp;</p>\r\n<p>La legisladora panista inform&oacute; tambi&eacute;n de la iniciativa que promueve la ense&ntilde;anza de los ni&ntilde;os a utilizar correctamente las redes sociales y el Internet, a fin de proteger sus datos personales.</p>\r\n<p>&nbsp;</p>\r\n<p>Hizo menci&oacute;n a su iniciativa presentada el d&iacute;a de ayer para castigar el maltrato infantil, el cual cuenta con el apoyo de las dem&aacute;s fracciones parlamentarias, lo que asegura grandes avances para el desarrollo sano de la ni&ntilde;ez jalisciense.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-06-07',''),(61,2,'Presenta diputado Juan Carlos Márquez Rosas  iniciativa para elevar sanciones a los omisos patrimoniales','',1,'<p align=\"right\">Guadalajara, Jalisco. 10-06-2013</p>\r\n<p align=\"right\">CMP0613-59</p>\r\n<p><em>&nbsp;</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p align=\"center\"><strong>Presenta diputado Juan Carlos  M&aacute;rquez Rosas&nbsp; iniciativa para elevar sanciones a los omisos patrimoniales </strong></p>\r\n<p><em>&nbsp;</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p align=\"center\"><em>La medida de sancionar pecuniariamente a los omisos, generar&iacute;a &nbsp;un fondo que puede ser utilizado en el desarrollo y crecimiento del sistema de control de declaraciones patrimoniales.</em></p>\r\n<p align=\"center\"><em>&nbsp;</em></p>\r\n<p align=\"center\"><em>Coadyuvar&iacute;a a frenar los casos de servidores p&uacute;blicos que amasan fortunas a partir del ejercicio de un cargo p&uacute;blico, lo que ofende la &eacute;tica del servicio, la instituci&oacute;n y al ciudadano, destinatario &uacute;ltimo de la funci&oacute;n p&uacute;blica.</em></p>\r\n<p>&nbsp;</p>\r\n<p>El diputado del PAN Juan Carlos  M&aacute;rquez Rosas present&oacute; en sesi&oacute;n del Pleno iniciativa que propone la reforma de los art&iacute;culos 75, 76, 76 bis, 97 y 98 de la Ley de Responsabilidades de los Servidores P&uacute;blicos para establecer la sanci&oacute;n pecuniaria a los servidores que omitan presentar la declaraci&oacute;n de situaci&oacute;n patrimonial en forma y tiempo.</p>\r\n<p>&nbsp;</p>\r\n<p>La iniciativa explica que el objetivo es evitar la omisi&oacute;n de los servidores p&uacute;blicos en el cumplimiento de la presentaci&oacute;n de su declaraci&oacute;n de situaci&oacute;n patrimonial y con ello la generaci&oacute;n de impunidad.</p>\r\n<p>&nbsp;</p>\r\n<p>Se busca una sanci&oacute;n que parta desde&nbsp; ocho hasta ochenta veces el salario m&iacute;nimo para la Zona  Metropolitana de Guadalajara. Las sanciones por el incumplimiento se constituir&aacute;n a favor del erario p&uacute;blico estatal y ser&aacute;n pagadas ante las oficinas recaudadoras de la Secretar&iacute;a de Administraci&oacute;n, Planeaci&oacute;n y Finanzas del Estado de Jalisco.</p>\r\n<p>&nbsp;</p>\r\n<p>De las cantidades que ingresen por &eacute;ste concepto al erario p&uacute;blico, se entregar&aacute; el 50 por ciento al Congreso del Estado de Jalisco, para la implementaci&oacute;n de un fondo que permita la creaci&oacute;n y sostenimiento de un sistema de control y seguimiento a la presentaci&oacute;n de las declaraciones patrimoniales ya que las reformas que se han realizado, aumentaron dr&aacute;sticamente el n&uacute;mero de sujetos obligados, al incluir&nbsp; a todos los elementos operativos de las polic&iacute;as estatales y municipales.</p>\r\n<p>&nbsp;</p>\r\n<p>La iniciativa considera insuficientes las sanciones que actualmente contempla la ley para evitar el incumplimiento a esta obligaci&oacute;n, por lo que con las reformas planteadas se busca que el servidor p&uacute;blico omiso tenga que soportar una sanci&oacute;n que le obligue a cumplir con la presentaci&oacute;n en forma y tiempo de su declaraci&oacute;n de situaci&oacute;n patrimonial, lo que a la vez &nbsp;implica una herramienta de control y prevenci&oacute;n en seguridad p&uacute;blica.</p>\r\n<p>&nbsp;</p>\r\n<p align=\"right\">&nbsp;</p>\r\n<p>El Congreso del Estado, a trav&eacute;s del &Oacute;rgano T&eacute;cnico de Responsabilidades, determinar&iacute;a el monto de la sanci&oacute;n seg&uacute;n el nivel y las percepciones del servidor p&uacute;blico omiso.</p>\r\n<p>&nbsp;</p>',1,0,'2013-06-10',''),(62,2,'Apoya legislador Munguía Cardona petición de habitantes de Chapala','',1,'<p align=\"right\">Guadalajara, Jalisco 11 de junio de 2013</p>\r\n<p align=\"right\">CMP0613-60</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>Apoya legislador Mungu&iacute;a Cardona petici&oacute;n de habitantes de Chapala</strong></p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p><em>Apoyar&aacute; con asesor&iacute;a en el aspecto jur&iacute;dico y con un pronunciamiento en el Pleno.</em></p>\r\n<p>&nbsp;</p>\r\n<p>Se solidariza el diputado panista Jos&eacute; Luis Mungu&iacute;a Cardona&nbsp; con habitantes de Chapala inconformes con la instalaci&oacute;n irregular de parqu&iacute;metros instalados en la administraci&oacute;n pasada, ya que afecta a los habitantes y a la vocaci&oacute;n tur&iacute;stica del pueblo ribere&ntilde;o.</p>\r\n<p>&nbsp;</p>\r\n<p>Autoridades de Chapala, comerciantes y ciudadanos acudieron este mediod&iacute;a al Congreso del Estado a platicar con el diputado Mungu&iacute;a Cardona, diputado del Distrito XVII, qui&eacute;n escuch&oacute; a la comitiva ciudadana, quienes le expresaron su inconformidad por parqu&iacute;metros o estacion&oacute;metros instalados hace dos a&ntilde;os, en la pasada administraci&oacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p>El diputado panista Jos&eacute; Luis Mungu&iacute;a Cardona escuch&oacute; del presidente Municipal de Chapala Joaqu&iacute;n Huerta Barrios, la problem&aacute;tica que representa para el municipio de Chapala el convenio firmado en la administraci&oacute;n pasada con la empresa MK Ideas Tech S.A de C.V y Comers S.A de C.V cuyo represente legal es el se&ntilde;or francisco Jos&eacute; Espinoza de los Monteros.</p>\r\n<p>&nbsp;</p>\r\n<p>Se comprometi&oacute; el diputado panista a dar seguimiento a la demanda que interpondr&aacute;n las autoridades de Chapala en el TAE, as&iacute; como analizar si hubo irregularidad en la aprobaci&oacute;n de la concesi&oacute;n por parte de la administraci&oacute;n pasada, ya que la empresa se queda con el 80 por ciento de lo recaudado y al municipio le da 20 por ciento. El convenio habla de la instalaci&oacute;n de 40 aparatos, con tarifa de 6 pesos la hora, de nueve de la ma&ntilde;ana a nueve de la noche todos los d&iacute;as.</p>\r\n<p>&nbsp;</p>\r\n<p>El gobierno de Chapala no pretende recibir m&aacute;s dinero sino que se retiren los parqu&iacute;metros, ya que la vocaci&oacute;n del turismo se ve mermada por el cobro de ese servicio.</p>\r\n<p>&nbsp;</p>\r\n<p>El diputado Mungu&iacute;a expres&oacute; que el pronunciamiento de los inconformes es v&aacute;lido, por lo que apoyar&aacute; las acciones que inicien las autoridades municipales en el TAE. Analizar&aacute; detenidamente si hubo dolo en el convenio, ya que ata de mano a cinco administraciones del municipio, incluyendo a la actual.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-06-11',''),(63,2,'Se compromete diputada Mariana Arámbula  impulsar iniciativas para detonar la ciencia y tecnología en Jalisco','',1,'<p align=\"right\">Guadalajara, Jalisco 12 de junio de 2013</p>\r\n<p align=\"right\">CMP0613-61</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>Se compromete diputada Mariana Ar&aacute;mbula &nbsp;impulsar iniciativas para detonar la ciencia y tecnolog&iacute;a en Jalisco</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>La Comisi&oacute;n de Ciencia y Tecnolog&iacute;a recibi&oacute; el d&iacute;a de hoy al Maestro Jaime Reyes Robles, Secretario de Innovaci&oacute;n, Ciencia&nbsp; y Tecnolog&iacute;a quien expuso los trabajos y logras alcanzados durante los primeros 100 d&iacute;as de haber sido creada la Secretar&iacute;a a su cargo.</p>\r\n<p>&nbsp;</p>\r\n<p>El Secretario Reyes Robles se&ntilde;al&oacute; que existe todo el inter&eacute;s de parte del Gobernador Jorge Arist&oacute;teles para trabajar en coordinaci&oacute;n con los diputados de la Comisi&oacute;n de Ciencia y Tecnolog&iacute;a, a fin de lograr impulsar iniciativas como la Ley de Acceso a la Econom&iacute;a del Conocimiento, entregada ya al Congreso por parte del Ejecutivo.</p>\r\n<p>&nbsp;</p>\r\n<p>La diputada Mariana, quien preside la Comisi&oacute;n de Ciencia y Tecnolog&iacute;a, &nbsp;record&oacute; que para construir una sociedad sustentable y equitativa se requiere hacer m&aacute;s accesible las herramientas tecnol&oacute;gicas, por lo que se comprometi&oacute; a trabajar con la Secretar&iacute;a de Innovaci&oacute;n, en el impulso a las reformas neecsarios, como a la Ley de Fomento a la Ciencia, la Tecnolog&iacute;a e Innovaci&oacute;n del Estado de Jalisco.</p>\r\n<p>&nbsp;</p>\r\n<p>Tambi&eacute;n se&ntilde;al&oacute; que trabajar&aacute;n en el presupuesto 2014 para que se pueda llevar a cabo todos los proyectos planteados por la Secretar&iacute;a encaminados a combatir la desigualdad social, la pobreza y los grandes problemas del estado.</p>\r\n<p>&nbsp;</p>\r\n<p>La legisladora panista expres&oacute; el gran inter&eacute;s que existe en el Congreso por estrechar v&iacute;nculos con el Ejecutivo y dem&aacute;s entes involucrados en el tema. Prueba de lo anterior, es la visita que realiz&oacute; el pasado 3 de junio a la empresa Oracle M&eacute;xico Center, la cual ha incorporado talentos mexicanos, egresados de las principales universidades del pa&iacute;s, quienes ahora son encargados de crear e innovar aplicaciones empresariales&nbsp; a nivel mundial.</p>\r\n<p>&nbsp;</p>\r\n<p>Los logros obtenidos con la empresa instalada en Jalisco desde el a&ntilde;o 2010 fue el compromiso de trabajar en conjunto en programas y proyectos que sirvan a la sociedad de Jalisco, apunt&oacute; la legisladora.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-06-12',''),(64,2,'Trabaja el diputado panista Elías Iñíguez  en varios temas de Salud','',1,'<p align=\"right\">Guadalajara, Jalisco 12 de junio de 2013</p>\r\n<p align=\"right\">CMP0613-62</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>Trabaja el diputado panista El&iacute;as I&ntilde;&iacute;guez </strong></p>\r\n<p align=\"center\"><strong>en varios temas de Salud</strong></p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p align=\"center\"><em>En otro tema, corresponde al diputado panista Juan Jos&eacute; Cuevas dictaminar la iniciativa de la diputada Norma  Cordero sobre la regulaci&oacute;n de estancias infantiles</em></p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p>La Comisi&oacute;n de Higiene y Salud P&uacute;blica entreg&oacute; al diputado panista Juan Jos&eacute; Cuevas Garc&iacute;a, la iniciativa de Ley de Prestaci&oacute;n de Servicios para la Atenci&oacute;n, Cuidado y Desarrollo Integral Infantil, cuya autor&iacute;a corresponde a la diputada panista Norma Ang&eacute;lica Cordero Prado.</p>\r\n<p>&nbsp;</p>\r\n<p>El diputado Presidente El&iacute;as Octavio I&ntilde;&iacute;guez Mej&iacute;a, reconoci&oacute; la importancia que tiene la iniciativa anteriormente mencionada ya que viene a llenar&nbsp; un &aacute;rea descuidada por las leyes estatales. Por su parte la legisladora Norma  Ang&eacute;lica indic&oacute; que su propuesta de ley viene a regular los centros de cuidado infantil, tema urgente en el que debe avanzar el estado, ya que Jalisco est&aacute; retrasado en dicho tema desde octubre del a&ntilde;o pasado seg&uacute;n pide la Norma Oficial de Salud.</p>\r\n<p>&nbsp;</p>\r\n<p>El diputado I&ntilde;&iacute;guez habl&oacute; de las gestiones y actividades que ha realizado en distintos temas de salud. Respecto al dengue anunci&oacute; que ya acord&oacute; con el Secretario de Salud realizar programas de prevenci&oacute;n&nbsp; con la participaci&oacute;n activa de los infantes, principales portadores de la conciencia en las acciones en contra de la enfermedad que pueda convertirse en pandemia.</p>\r\n<p>&nbsp;</p>\r\n<p>Se&ntilde;al&oacute; que lamentablemente la principal problem&aacute;tica que enfrentan los presidentes municipales es la falta de dinero para hacer campa&ntilde;as con toda la poblaci&oacute;n y llevar a cabo las fumigaciones, sobre todo en las regiones costeras, por lo que se trabaja en etiquetar dinero espec&iacute;ficamente para la prevenci&oacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p>Respecto al tema de las enfermedades cardiovasculares, principal causa de muerte en los adultos mayores, se&ntilde;al&oacute; que se trabaja para que Jalisco se convierta en el primer estado cardio protegido. Indic&oacute; que ya habl&oacute; con el Secretario de Salud para que por medio del programa&nbsp; Municipio Saludable se logre bajar m&aacute;s recursos estatales a fin de que los municipios cuenten con 4 millones de pesos para las acciones preventivas.</p>\r\n<p>&nbsp;</p>\r\n<p>Respecto al reglamento de la Ley Antitabaco, el diputado panista inform&oacute; que sostuvo pl&aacute;tica con el Secretario de Gobierno, Arturo Zamora respecto a la necesidad de su revisi&oacute;n, aprobaci&oacute;n y publicaci&oacute;n. El Secretario se comprometi&oacute; a revisarla lo m&aacute;s pronto posible para que&nbsp; pueda publicarse. Pidi&oacute; I&ntilde;&iacute;guez a los compa&ntilde;eros legisladores que revisen el borrador del reglamento para incluir las modificaciones que consideren pertinentes.</p>\r\n<p>&nbsp;</p>\r\n<p>Sobre el tema del suicidio, problema que va en aumento en Jalisco, se&ntilde;al&oacute; el diputado panista la necesidad de revisar en los distritos del estado cuales de los Centros llamados Nueva Vida no funcionan correctamente, a fin de hacer las gestiones correspondientes para solucionar el problema.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-06-12',''),(65,2,'Ampliar al 100 por ciento el programa de Bienevales, pide el legislador Juan José Cuevas','',1,'<p align=\"right\">Guadalajara, Jalisco 17 de junio de 2013</p>\r\n<p align=\"right\">CMP0613-63</p>\r\n<p align=\"right\">&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>Ampliar al 100 por ciento el programa de Bienevales, pide el legislador Juan Jos&eacute; Cuevas</strong></p>\r\n<p><em>&nbsp;</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p align=\"center\"><em>Programa universal, no limitado a los nueve municipios de la zona metropolitana.</em></p>\r\n<p align=\"center\"><em>Que el registro de estudiantes para recibir dicho beneficio se ampl&iacute;e hasta septiembre y que sea por medio de las listas autorizadas en las escuelas.</em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; En rueda de prensa, el diputado panista Juan Jos&eacute; Cuevas Garc&iacute;a propone al gobierno del estado, ampliar el programa de Bienevales para todos los estudiantes del estado desde la educaci&oacute;n secundaria a la universidad.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Acompa&ntilde;ado por los legisladores de su partido, V&iacute;ctor Manuel S&aacute;nchez Orozco y Guillermo Mart&iacute;nez Mora, el legislador Cuevas hizo un an&aacute;lisis del programa de subsidio al transporte anunciado por el gobernador, al cual, consider&oacute; muy distante de lo que se ofreci&oacute; durante&nbsp; la oferta electoral de su campa&ntilde;a: \"...ya que por lo anunciado recientemente, s&oacute;lo ser&iacute;a una ampliaci&oacute;n del Programa Llega, el cual se implement&oacute; desde la pasada administraci&oacute;n\".</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Se&ntilde;al&oacute; que con los 125 millones de pesos anuales, apenas alcanzar&aacute; para cubrir el transporte de 155 mil estudiantes &nbsp;(s&oacute;lo el 15 por ciento) y no la totalidad en el estado, la cual representa a 2 millones 100 mil ni&ntilde;os y j&oacute;venes desde primarias, secundarias, preparatorias y universidades, lo que significar&iacute;a financieramente por lo menos dos mil&nbsp; quinientos millones de pesos&nbsp; anuales.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Por tal motivo, el legislador propuso que sean considerados a estudiantes que utilizan transporte p&uacute;blico a&uacute;n dentro de los l&iacute;mites de su municipio, llegando de esa manera a todas las regiones del estado. Adem&aacute;s que para garantizar la universalidad del programa, el registro de estudiantes sea mediante las listas autorizadas en las escuelas p&uacute;blicas del estado de Jalisco ya que e sistema actual de registro es un filtro que deja fuera a muchos estudiantes.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cabe se&ntilde;alar que el diputado Juan Jos&eacute; Cuevas, vocal de la Comisi&oacute;n de Educaci&oacute;n&nbsp; ha pedido en reiteradas ocasiones, la visita del Secretario de Educaci&oacute;n a fin de que dialogue con los legisladores. El d&iacute;a de hoy, el legislador pidi&oacute; que tambi&eacute;n se extienda la invitaci&oacute;n a la&nbsp; Secretar&iacute;a de Desarrollo e Integraci&oacute;n Social.</p>\r\n<p><em>&nbsp;</em></p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Por su parte el diputado V&iacute;ctor S&aacute;nchez, indic&oacute; que se present&oacute; aproximadamente hace dos meses atr&aacute;s una iniciativa por parte de los partidos del PAN y MC que busca reformas en&nbsp; la Ley de Vialidad&nbsp; para que con el simple hecho de que los estudiantes al subir al cami&oacute;n presenten su credencial de estudiantes, puedan viajar de manera gratuita.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Record&oacute; que dentro de los municipios existen rancher&iacute;as y poblaciones peque&ntilde;as en las cuales viven j&oacute;venes y ni&ntilde;os que deben viajar distancias de tres hasta 10 kil&oacute;metros para ir a la escuela, por lo que no deben quedar rezagados en su preparaci&oacute;n&nbsp; acad&eacute;mica por parte de &nbsp;los est&iacute;mulos o apoyos del gobierno.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-06-17',''),(66,2,'Inician los trabajos en Jalisco para emigrar a un sistema de Justicia Penal más justo y equitativo.','',1,'<p align=\"right\">Guadalajara, Jalisco 18 de junio de 2013</p>\r\n<p align=\"right\">CMP0613-64</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\"><strong>Inician los trabajos en Jalisco para emigrar a un sistema de Justicia Penal m&aacute;s justo y equitativo.</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><em>Se requiere que todos los involucrados y operadores del&nbsp; nuevo sistema de impartici&oacute;n de justicia tengan una mayor &nbsp;preparaci&oacute;n jur&iacute;dica para &nbsp;comprender la transformaci&oacute;n y mejoramiento que propone el nuevo modelo de justicia penal en el Pa&iacute;s.</em></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p>Con la instalaci&oacute;n del Comit&eacute; Consultivo para la  Reforma Penal en Jalisco, coordinado por el diputado panista V&iacute;ctor Manuel S&aacute;nchez Orozco, qued&oacute; formalmente inaugurado el d&iacute;a de hoy los trabajos para avanzar hacia un nuevo sistema de justicia, lo cual representa el inicio de una discusi&oacute;n hacia la construcci&oacute;n de un derecho penal liberal, democr&aacute;tico, garantista y moderno.</p>\r\n<p>&nbsp;</p>\r\n<p>Uno de los ejes fundamentales del nuevo sistema de justicia son los Medios Alternos de Soluci&oacute;n de Conflictos y que m&aacute;s del 80 por ciento de los casos planteados ante las autoridades penales, deben resolverse a trav&eacute;s de este tipo de medios.</p>\r\n<p>&nbsp;</p>\r\n<p>Al inaugurar el evento, el diputado S&aacute;nchez Orozco record&oacute; el rezago que existe en el estado en el tema de la justicia penal, por lo que urgi&oacute; a sentar las bases para que Jalisco cuente con temas b&aacute;sicos para impartir justicia, como lo son: la defensa adecuada, los derechos humanos de las v&iacute;ctimas y de los procesados; las garant&iacute;as de un juicio justo; las reglas del debido proceso; eficiencia y apego a la legalidad, entre otros m&aacute;s.</p>\r\n<p>&nbsp;</p>\r\n<p>Recalc&oacute; que con&nbsp; un Nuevo Modelo de Sistema de Justicia Penal Acusatorio, todos los &oacute;rganos jurisdiccionales deben aprender a modificar las pr&aacute;cticas antiguas que prevalec&iacute;an en el sistema anterior mixto-inquisitorio, ya que con las reformas del 2011 en materia de derechos, se sentaron las bases&nbsp; del derecho fundamental del imputado para un debido proceso y la presunci&oacute;n de inocencia, tanto del homicida como de la v&iacute;ctima.</p>\r\n<p>&nbsp;</p>\r\n<p>Por tal motivo, los operadores del nuevo sistema de justicia acusatorio oral deben acostumbrase a respetar el Estado de derecho; es decir, la impartici&oacute;n de justicia no debe estar sujeta a sensibilidades, presi&oacute;n pol&iacute;tica o social, sino a una justicia cre&iacute;ble, equitativa y racional que no cree distinciones en cuanto al respeto de los derechos humanos.</p>\r\n<p>&nbsp;</p>\r\n<p>Record&oacute; el legislador S&aacute;nchez Orozco, que emigrar hacia un nuevo sistema requiere la suma de todos los talentos, voluntades, capacidades y conocimientos de quienes est&aacute;n interesados y comprometidos con un verdadero cambio de actitudes, formas de concebir y entender la justicia y el derecho.</p>\r\n<p>&nbsp;</p>\r\n<p>Las cinco mesas de trabajo presididas por expertos en la materia trabajar&aacute;n una vez a la semana durante aproximadamente dos meses, tiempo en el que se estima tener el an&aacute;lisis o ruta cr&iacute;tica de lo que se requiere en Jalisco. En los c&iacute;rculos de trabajo de dichas mesas podr&aacute; participar&aacute;n acad&eacute;micos, funcionarios, maestros, estudiantes en derecho y toda la sociedad en general, interesada en el tema.</p>\r\n<p>&nbsp;</p>\r\n<p>Los responsables de los cinco &oacute;rganos consultivos son: Magistrado Antonio Fierros Ram&iacute;rez, en representaci&oacute;n del Poder Judicial, se encargar&aacute; de la Mesa de Justicia para Adolescentes; el Maestro Ignacio Roque Parra y Oscar Magallanes de la Rosa coordinar&aacute;n Justicia Alternativa; el Doctor Dante Haro estar&aacute; al frente del C&oacute;digo Penitenciario (Reinserci&oacute;n Social y Seguridad P&uacute;blica); Daniel Espinosa Licon del C&oacute;digo Penal y por &uacute;ltimo Francisco Jim&eacute;nez &nbsp;Reynoso, la mesa del &nbsp;C&oacute;digo de Procedimientos Penales.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,0,'2013-06-18',''),(67,2,'Colocar a Jalisco como el primer estado certificado en productos de leche y así evitar riesgos para la salud pública: propuesta de la diputada Norma Cordero Prado','',1,'<p align=\"right\">Guadalajara, Jalisco 19 de junio de 2013</p>\r\n<p align=\"right\">CMP0613-64</p>\r\n<p align=\"right\">&nbsp;</p>\r\n<p align=\"center\"><strong>Colocar a Jalisco como el primer estado certificado en productos de leche y as&iacute; evitar riesgos para la salud p&uacute;blica: propuesta de la  diputada Norma Cordero Prado</strong></p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p align=\"center\"><strong><em>Con ello, se evitar&aacute; la importaci&oacute;n de productos l&aacute;cteos de dudosa calidad y se fortalecer&aacute; el sector lechero de Jalisco, integrado por 16 mil ganaderos que producen 3.5 millones de litros al d&iacute;a</em></strong></p>\r\n<p>&nbsp;</p>\r\n<p>Lograr que Jalisco sea el primer estado del pa&iacute;s que certifique la calidad de la leche y sus derivados que consumen sus habitantes, y con ello evitar la importaci&oacute;n de productos de dudosa calidad que ponen en riesgo la salud de los jaliscienses con enfermedades como brucelosis y tuberculosis, es la propuesta de la diputada presidenta de la Comisi&oacute;n de Ganader&iacute;a en el Congreso del Estado, Norma Ang&eacute;lica Cordero Prado.</p>\r\n<p>&nbsp;</p>\r\n<p>En el marco de la reuni&oacute;n de la Comisi&oacute;n de Ganader&iacute;a, a donde acudieron expertos del Consejo para el Fomento de la Calidad de la Leche y sus Derivados, Cofocalec, A.C a explicar el proceso de certificaci&oacute;n, la legisladora propuso convocar a las comisiones de Higiene y Salud P&uacute;blica, as&iacute; como de Promoci&oacute;n Econ&oacute;mica, a que se unan a esta propuesta y con ello lograr que el estado l&iacute;der en producci&oacute;n lechera (16 mil ganaderos que producen 3.5 millones de litros al d&iacute;a) sea un \"modelo nacional\".</p>\r\n<p>&nbsp;</p>\r\n<p>\"A pesar de ser Jalisco el primer productor, lo he dicho y lo reiterar&eacute; con suma preocupaci&oacute;n, el sector lechero del estado se encuentra al borde de la quiebra, entre otros aspectos, por la sequ&iacute;a, los bajos precios que pagan a productores, el abigeato, aumento de insumos y por la desmedida importaci&oacute;n de productos l&aacute;cteos de baja calidad que llegan a significar una competencia desleal y en algunos casos, un riesgo para la salud de los jaliscienses\".</p>\r\n<p>&nbsp;</p>\r\n<p>A trav&eacute;s de exhortos o las gestiones que sean necesarias, la comisi&oacute;n impulsar&aacute; el que todos los productos l&aacute;cteos que entren a Jalisco cumplan con la Norma Oficial Mexicana 155, donde su certificaci&oacute;n sea obligatoria y no voluntaria como hasta ahora, lo que ocasiona la importaci&oacute;n desleal de seudo-productos supuestamente l&aacute;cteos.</p>\r\n<p>&nbsp;</p>\r\n<p>El Cofocalec juega un papel importante, ya que debe existir la regularizaci&oacute;n de normas que observe desde las pruebas, hasta la inspecci&oacute;n y certificaci&oacute;n de los productos l&aacute;cteos para con ello garantizar al consumidor, un producto pleno y libre de cualquier perjuicio que pueda ir en contra de su salud y bienestar.</p>\r\n<p>&nbsp;</p>\r\n<p>Luis Manuel del Valle L&oacute;pez, presidente del Consejo para el Fomento de la Calidad de la Leche y sus Derivados, Cofocalec, A.C; la Dra. Mar&iacute;a del Refugio Torres Vitela, presidente del Comit&eacute; T&eacute;cnico de Certificaci&oacute;n del Producto de Cofocalec y el Dr. Sergio Soltero Gardea, director de Cofocalec, hablaron de la importancia de la certificaci&oacute;n y sus beneficios tanto al consumidor como al productor.</p>\r\n<p>&nbsp;</p>\r\n<p>La  diputada Cordero Prado reiter&oacute; que se busca que Jalisco sea el primer estado del pa&iacute;s que logre que los productos l&aacute;cteos que se consumen, sean certificados y realmente se garanticen 100 por ciento elaborados leche de vaca.</p>\r\n<p align=\"center\"><strong>&nbsp;</strong></p>\r\n<p>&nbsp;</p>',1,0,'2013-06-19','');
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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporativa_index`
--

LOCK TABLES `corporativa_index` WRITE;
/*!40000 ALTER TABLE `corporativa_index` DISABLE KEYS */;
INSERT INTO `corporativa_index` VALUES (1,'Nain','','',0,1,1,0,'0000-00-00 00:00:00','',1),(2,'Perfil','','<p>Inició sus estudios literarios en la Sociedad General de escritores de México (Sogem) y ha participado en diferentes talleres con los escritores: Fernando de León, Rosa María Aura y Marco Aurelio Larios.</p>\r\n<p>Tiene cuentos publicados dentro de la serie de libros titulados: Caleidoscopio, que edita la Sogem y la obra de teatro: El gallo se mata la primera noche, editado por la misma sociedad de escritores. Así como cuentos en diferentes periódicos literarios.</p>\r\n<p>Recuerdos Circulares es su primera novela.</p>',0,1,0,0,'2012-08-30 15:27:00','',0),(3,'Su mensaje...','','<p>Su mensaje se ha enviado exitosamente.<br /><br /> En breve nos pondremos en contacto con usted.</p>\r\n<p>Muchas gracias</p>',0,1,1,0,'2010-12-08 00:12:27','',0),(5,'About nain','','',0,1,0,0,'2012-10-30 02:15:35','logo',0),(6,'Account created','','<p>Your account has been created. Please check your email, You should have recieved a notification for activate it. If not, please take a look at spam folder, it may be there.</p>',0,1,0,0,'2012-11-08 17:01:19','',0),(7,'Bank account information','','<p>Banamex</p>\r\n<p>Sucursal: 15151515</p>\r\n<p>Cuenta 151515151</p>\r\n<p>A nombre de: Un nombre Aleatorio</p>',0,1,0,0,'2012-11-12 05:03:43','',0),(9,'¿Quiénes somos?','','',0,1,0,0,'2013-05-06 15:03:38','',0),(10,'Agenda Legislativa GPPAN ','Primer año de trabajo ','<p>&nbsp;</p>\r\n<p>Eje 1</p>\r\n<p>Pol&iacute;tica y Gobierno</p>\r\n<ol type=\"1\">\r\n<li>Organismo      colegiado para la rendici&oacute;n de cuentas gubernamentales.</li>\r\n<li>Reforma      del legislativo; secretario general fuera de lo pol&iacute;tico.</li>\r\n<li>Responsabilidad      patrimonial, administrativa y penal a los servidores p&uacute;blicos que      incumplan las obligaciones en materia de transparencia.</li>\r\n<li>Mediante      examen de oposici&oacute;n despartidizar la designaci&oacute;n de los funcionarios del      ITEI, IEPC, CEDH.</li>\r\n<li>Controles      espec&iacute;ficos en el endeudamiento p&uacute;blico y sanciones por su violaci&oacute;n</li>\r\n<li>Incluir      en las nulidades de la elecci&oacute;n, los gastos excesivos de campa&ntilde;a y uso de      recursos p&uacute;blicos.</li>\r\n<li>Pruebas      de control de confianza a candidatos de elecci&oacute;n y funcionarios que      manejan el patrimonio p&uacute;blico.</li>\r\n</ol>\r\n<p>Eje 2</p>\r\n<p>Seguridad y Justicia</p>\r\n<ol type=\"1\">\r\n<li>&nbsp;Establecimiento y consolidaci&oacute;n del      sistema de Juicios Orales.</li>\r\n<li>Mando      &uacute;nico policial en el Estado.</li>\r\n<li>Fortalecer      la prevenci&oacute;n y la participaci&oacute;n ciudadana en la seguridad, obligar a los      municipios a establecer y operar consejos consultivos de seguridad ciudadana.</li>\r\n<li>Promover      espacios p&uacute;blicos; esparcimiento, cultura y deporte.</li>\r\n</ol>\r\n<p>Eje 3</p>\r\n<p>Bienestar Social y Educaci&oacute;n</p>\r\n<ol type=\"1\">\r\n<li>&nbsp;Exigiremos el cumplimiento de la      eliminaci&oacute;n legal de loas cuotas escolares y transporte escolar gratuito.</li>\r\n<li>Regulaci&oacute;n      y promoci&oacute;n de escuelas con horario ampliado y tiempo completo.</li>\r\n<li>Procuradur&iacute;a      contra la discriminaci&oacute;n laboral.</li>\r\n<li>Promoveremos      los est&iacute;mulos para la titulaci&oacute;n y certificaci&oacute;n de profesionistas.</li>\r\n<li>Enfoque      del gasto en salud debe ser preventivo.</li>\r\n</ol>\r\n<p>Eje 4</p>\r\n<p>Econom&iacute;a y Desarrollo Sustentable</p>\r\n<ol type=\"1\">\r\n<li>Garantizar la participaci&oacute;n ciudadana en      la aprobaci&oacute;n de planes parciales y usos de suelo.</li>\r\n<li>Fideicomiso      verde para pr&aacute;cticas ecol&oacute;gicas.</li>\r\n<li>Est&iacute;mulos      fiscales para el uso de energ&iacute;as alternativas.</li>\r\n<li>Nueva      ley sobre movilidad integral.</li>\r\n<li>Asignaci&oacute;n      de obra p&uacute;blica con la participaci&oacute;n de la ciudadan&iacute;a.</li>\r\n</ol>\r\n<p>&nbsp;</p>',0,1,0,0,'2013-06-03 19:33:25','',0);
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos_categoria`
--

LOCK TABLES `fotos_categoria` WRITE;
/*!40000 ALTER TABLE `fotos_categoria` DISABLE KEYS */;
INSERT INTO `fotos_categoria` VALUES (1,'En Tribuna','',0,0,''),(2,'En Comisión','',0,0,''),(3,'Rueda de Prensa','',0,0,''),(4,'Foros','',0,0,'');
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
  `ext` smallint(2) NOT NULL DEFAULT '0',
  `bolean` smallint(1) NOT NULL DEFAULT '0',
  `orden` int(3) NOT NULL DEFAULT '0',
  `fecha` date DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos_index`
--

LOCK TABLES `fotos_index` WRITE;
/*!40000 ALTER TABLE `fotos_index` DISABLE KEYS */;
INSERT INTO `fotos_index` VALUES (17,'Dip. Hernán Cortés y Jaime Díaz','<p>Los diputados Hern&aacute;n Cort&eacute;s Berumen y Jaime D&iacute;az Bambrila, conscientes de la importancia de una Reforma Estructural en materia de Movilidad escuchan a MOVIDEMO, un colectivo de ciudadanos cuyo objetivo es el de trabajar en conjunto entre legisladores, gobiernos municipales y gobierno del estado.</p>\r\n<p>&nbsp;</p>','001.jpg','',2,1,0,0,0,'2013-04-08'),(21,'Dip. Jaime Díaz Brambila','<p>El diputado Jaime D&iacute;az Brambila, en reuni&oacute;n de trabajo con el colectivo ciudadano MOVIDEMO.</p>\r\n<p>&nbsp;</p>','005.jpg','',2,1,0,0,0,'2013-04-12'),(20,'Dip. Hernán Cortés y Victor Sánchez','<p>Los diputados Hern&aacute;n Cort&eacute;s Berumen y Victor S&aacute;nchez Orozco, en reuni&oacute;n de trabajo con el colectivo ciudadano MOVIDEMO.</p>\r\n<p>&nbsp;</p>','004.jpg','',2,1,0,0,0,'2013-04-12'),(18,'Dip. Guillermo Martínez Mora','<p>En Rueda de Prensa dip Guillermo Mart&iacute;nez Mora<strong>,</strong> anunci&oacute; Foro para recibir propuestas sobre la Ley Reglamentaria de Educaci&oacute;n.</p>\r\n<p>&nbsp;</p>','002.jpg','',3,1,0,0,0,'2013-04-10'),(19,'Dip. Gildardo Guerrero Torres','<p>En sesi&oacute;n de la Junta de Coordinaci&oacute;n Pol&iacute;tica, Diputado Gildardo Guerrero Torres.</p>\r\n<p>&nbsp;</p>','003.jpg','',2,1,0,0,0,'2013-04-11'),(22,'Dip. Mariana Arámbula y Alberto Esquer','<p>Diputada Mariana Ar&aacute;mbula Mel&eacute;ndez y<strong> </strong>Alberto Esquer Guti&eacute;rrez en el Foro de Consulta P&uacute;blica, Normativa en materia de Desarrollo Humano y Familia. Auditorio \"Adolfo Aguilar Zinder\". Cd. Guzm&aacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','006.jpg','',1,1,0,0,0,'2013-04-12'),(23,'Dip. Gildardo Guerrero Torres','<p>Con el compromiso de lograr mejoras en la movilidad de la ciudad el Dip. Gildardo Guerrero Torres acude en bicicleta a la reuni&oacute;n de Asuntos metropolitanos, misma que se realizar&aacute; en el parque Metropolitano.</p>\r\n<p>&nbsp;</p>','007.jpg','',2,1,0,0,0,'2013-04-15'),(24,'Dip. Alberto Esquer Gutiérrez','<p>El Diputado Alberto Esquer Guti&eacute;rrez del GPPAN present&oacute; iniciativa para un Nuevo Instituto Electoral y Participaci&oacute;n Ciudadana, donde se contempla una reducci&oacute;n de siente a cinco Consejeros y la Presidencia del Instituto sea rotativa y elegida por los mismos Consejeros.&nbsp;</p>\r\n<p>As&iacute; mismo una Iniciativa donde contempla se realice Examen de Control de Confianza a todos los Secretarios de Estado del Gobierno de Jalisco.</p>\r\n<p>&nbsp;</p>','008.jpg','',1,1,0,0,0,'2013-04-18'),(25,'Dip. Juan Carlos Márquez Rosas','<p>Diputado del GPPAN, Juan Carlos M&aacute;rquez Rosas, present&oacute; Iniciativa para regular el uso de la fuerza p&uacute;blica de las corporaciones de seguridad, donde es necesaria la capacitaci&oacute;n de los elementos de c&oacute;mo actuar en momentos de crisis y as&iacute; poder ejercer su funci&oacute;n sin temor a sanciones injustas.</p>\r\n<p>&nbsp;</p>','009.jpg','',1,1,0,0,0,'2013-04-18'),(26,'Dip. Juan José Cuevas García','<p>Juan Jos&eacute; Cuevas Garc&iacute;a, Diputado del GPPAN, exhort&oacute; al Gobierno del Estado a la Secretar&iacute;a de Educaci&oacute;n Federal y la Universidad de Guadalajara, expida credencial a sus estudiantes en un plazo de 10 d&iacute;as del inicio del ciclo escolar, en pro de los credencializados puedan acceder a sus beneficios tales como los trasvales.</p>\r\n<p>&nbsp;</p>','010.jpg','',1,1,0,0,0,'2013-04-18'),(27,'Dip. Victor Sánchez Orozco','<p>Diputado Victor Manuel S&aacute;nchez Orozco, del GPPAN, present&oacute; un exhorto al Gobierno del Estado para sancionar al Coordinador de Asesores del Ejecutivo, H&eacute;ctor Vielma Ord&oacute;&ntilde;ez, por encontrarse en el maraton de Boston en d&iacute;a h&aacute;bil.</p>\r\n<p>&nbsp;</p>','011.jpg','',1,1,0,0,0,'2013-04-18'),(28,'Dip. Victor Sánchez Orozco','<p>Victor Manuel S&aacute;nchez Orozco, diputado del GPPAN, realiz&oacute; un exhorto al Gobernador del Estado a buscar los mecanismos adecuados para que el Transporte P&uacute;blico sea Gratuito para todos los Estudiantes en Jalisco.</p>\r\n<p>&nbsp;</p>','012.jpg','',1,1,0,0,0,'2013-04-18'),(29,'Dip. Gildardo Guerrero Torres','<p>Diputado Gildardo Guerrero Torres, exhort&oacute; al Presidente Municipal de Guadalajara, Ramiro Hern&aacute;ndez Garc&iacute;a a trabajar para mejorar la Seguridad en el municipio.</p>\r\n<p>&nbsp;</p>','013.jpg','',1,1,0,0,0,'2013-04-18'),(30,'Dip. Gildardo Guerrero Torres','<p>El Diputado Gildardo Guerrero Torres, del GPPAN, present&oacute; Iniciativa en donde donde propone eliminar el Fuero a todos los Funcionarios P&uacute;blicos del Estado de Jalisco.</p>\r\n<p>&nbsp;</p>','014.jpg','',1,1,0,0,0,'2013-04-18'),(31,'Dip. Mariana Arámbula Meléndez','<p>La Diputada Mariana Ar&aacute;mbula Mel&eacute;ndez, del GPPAN, present&oacute; iniciativa en pro de personas con discapacidad, para generar programa de difusi&oacute;n de beneficios que corresponde por Ley.</p>\r\n<p>&nbsp;</p>','015.jpg','',1,1,0,0,0,'2013-04-18'),(32,'Dip. Mariana Arámbula Meléndez','<p>Dip. del GPPANJAL Mariana Ar&aacute;mbula Mel&eacute;ndez, present&oacute; una iniciativa para proteger a los menores en las escuelas para detectar casos sujetos de abusos.</p>\r\n<p>&nbsp;</p>','016.jpg','',1,1,0,0,0,'2013-04-18'),(33,'Dip. Jaime Díaz Brambila','<p class=\"MsoNoSpacing\" style=\"text-align: justify;\"><span style=\"font-size: 10pt; font-family: \'Century Gothic\', sans-serif; color: #333333; background-position: initial initial; background-repeat: initial initial;\">Diputado Jaime Ismael D&iacute;az Brambila, present&oacute; iniciativa que Reforma y Adiciona diversos art&iacute;culos de la Ley Org&aacute;nica del Poder Judicial del Estado de Jalisco.; Decreto que reforma diversos art&iacute;culos de la Ley de Desarollo Forestal Sustentable para el Estado de Jalisco; realiz&oacute; un exhorto al Secretario General del Congreso del Estado de Jalisco y a la Comisi&oacute;n de Administraci&oacute;n, respecto a los nombramientos otorgados por la LIX Legislatura.</span></p>','017.jpg','',1,1,0,0,0,'2013-04-18'),(34,'Dip. Guillermo Martínez Mora','<p>En el inicio del Foro \"Reforma Educativa: Co-responsabilidad del Estado, Maestros, Padres de Familia y Alumnos\" del diputado del Grupo Parlamentario de Acci&oacute;n Nacional, Guillermo Mart&iacute;nez Mora</p>','018.jpg','',4,1,0,0,0,'2013-04-19'),(35,'Dip. Mariana Arámbula, Norma Cordero, Gildardo Guerrero y Juan José Cuevas','<p>Diputados de Acci&oacute;n Nacional, Mariana Ar&aacute;mbula Mel&eacute;ndez, Norma Ang&eacute;lica Cordero Prado, Gildardo Guerrero Torres, y Juan Jos&eacute; Cuevas Garc&iacute;a, presentes en el Foro, Reforma Educativa.</p>\r\n<p>&nbsp;</p>','019.jpg','',4,1,0,0,0,'2013-04-19'),(37,'Dip. Gildardo Guerrero y Victor Sánchez','<p>Los Diputados de Acci&oacute;n Nacional, Gildardo Guerrero Torres y Victor S&aacute;nchez Orozco, acompa&ntilde;an al Grupo Edilicio del PAN en el Ayuntamiento de Guadalajara, coordinado por el Regidor, Alberto C&aacute;rdenas Jim&eacute;nez a denunciar el mal manejo de recursos del Municipio.</p>','021.jpg','',3,1,0,0,0,'2013-04-22'),(36,'Dip. José Luis Munguía Cardona','<p>El Diputado del PAN, Jos&eacute; Luis Mung&iacute;a Cardona, Presidente de la Comisi&oacute;n de Seguridad P&uacute;blica en el Congreso del Estado, en la segunda reuni&oacute;n extraordinaria \"Red de Prevenci&oacute;n del Delito\" con diversas dependencias de Gobierno e Instituciones.</p>\r\n<p>&nbsp;</p>','020.jpg','',2,1,0,0,0,'2013-04-22'),(41,'Dip. Juan José Cuevas García','<p>En la Comisi&oacute;n de Salud que preside el diputado del GPPANJAL El&iacute;as Octavio &Iacute;&ntilde;iguez Mej&iacute;a y vocal Juan Jos&eacute; Cuevas Garc&iacute;a, con la presencia de diversas instancias de salud en el estado.</p>\r\n<p>&nbsp;</p>','025.jpg','',2,1,0,0,0,'2013-04-25'),(39,'Dip. Gildardo Guerrero y Victor Sánchez','<p>En Rueda de Prensa el Presidente de Comit&eacute; Directivo Estatal del PAN, Miguel Monr&aacute;z Ibarra, y los diputados panistas, Gildardo Guerrero Torres y Victor S&aacute;nchez Orozco, exigen al Gobernador del Estado cumpla #Transpublicogratis a todos los estudiantes de Jalisco.</p>','023.jpg','',1,1,0,0,0,'2013-04-23'),(38,'Dip. Gildardo Guerrero Torres','<p>El diputado del PAN, Gildardo Guerero Torres, se&ntilde;ala que los delitos en Guadalajara, son por falta de recursos a polic&iacute;as. #GDLInsegura</p>','022.jpg','',3,1,0,0,0,'2013-04-22'),(40,'Dip. Elías Íñiguez y Norma Cordero','<p>En la Comisi&oacute;n de Salud que preside el diputado del PAN, El&iacute;as Octavio &Iacute;&ntilde;iguez Mej&iacute;a y vocal Norma Ang&eacute;lica Cordero Prado, con la presencia de diversas instancias de salud en el estado.</p>\r\n<p>&nbsp;</p>','024.jpg','',2,1,0,0,0,'2013-04-24'),(42,'Dip. Mariana Arámbula Meléndez','<p>En la Comisi&oacute;n de Derechos Humanos del Congreso del Estado, participando como vocal, la diputada panista, Mariana Ar&aacute;mbula Mel&eacute;ndez, con la presencia de Fiscal de Derechos Humanos, Mtra Lizzeth Hern&aacute;ndez.</p>\r\n<p>&nbsp;</p>','026.jpg','',2,1,0,0,0,'2013-04-24'),(43,'Dip. Gabriela Andalón Becerra','<p>En la Comisi&oacute;n de Derechos Humanos del Congreso del Estado, participando como vocal, la diputada del GPPANJAL, Gabriela Andal&oacute;n Becerra, con la presencia de Fiscal de Derechos Humanos, Mtra Lizzeth Hern&aacute;ndez.</p>\r\n<p>&nbsp;</p>','027.jpg','',2,1,0,0,0,'2013-04-24'),(44,'Dip. Gabriela Andalón Becerra','<p>La diputada de Acci&oacute;n Nacional, Gabriela Andal&oacute;n Becerra, participando en la Comisi&oacute;n Especial para la Reforma y Reingenier&iacute;a del Poder Legislativo</p>\r\n<p>&nbsp;</p>','028.jpg','',2,1,0,0,0,'2013-04-24'),(45,'Dip. Jaime Díaz Brambila','<p>Participando como vocal el diputado del PAN Jaime Ismael D&iacute;az Brambila, de la Comisi&oacute;n de Medio Ambiente y Desarrollo Sustentable.</p>','029.jpg','',2,1,0,0,0,'2013-04-24'),(46,'Dip. Guillermo Martínez Mora','<p>En la Comisi&oacute;n de Educaci&oacute;n presidida por el diputado del GPPANJAL, Guillermo Mart&iacute;nez Mora, se dio a conocer el An&aacute;lisis Preliminar del Foro \"Reforma Educativa: Cooresponsabilidad del Estado, Maestros, Padres de Familia y Alumnos\"</p>\r\n<p>&nbsp;</p>','030.jpg','',2,1,0,0,0,'2013-04-24'),(47,'Dip. Mariana Arámbula, Norma Cordero, Juan José Cuevas','<p>Asistieron a la Comisi&oacute;n de Educaci&oacute;n los diputados del PAN, Norma Ang&eacute;lica Cordero Prado, Mariana Ar&aacute;mbula Mel&eacute;ndez y Juan Jos&eacute; Cuevas Garc&iacute;a.</p>\r\n<p>&nbsp;</p>','031.jpg','',1,1,0,0,0,'2013-04-24');
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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gadgets_botones`
--

LOCK TABLES `gadgets_botones` WRITE;
/*!40000 ALTER TABLE `gadgets_botones` DISABLE KEYS */;
INSERT INTO `gadgets_botones` VALUES (1,'Inicio',2,'','index.php',2,0),(2,'Quiénes somos',0,'','corporativa.php?rubro=9',0,0),(3,'Agenda legislativa',2,'','corporativa.php?rubro=10',0,0),(4,'Contacto',2,'','contacto.php',0,0),(5,'twitter',4,'twitter','http://www.twitter.com/gppanjal',2,0),(6,'You Tube',4,'youtube','http://www.youtube.com/gppanjalisco',2,0),(8,'facebook',4,'facebook','http://www.facebook.com/gppanjal',2,0),(11,'Ligas de interés',2,'','ligas.php',0,0),(12,'Iniciativas',2,'','iniciativas.php',0,0),(13,'Tema del día',2,'','noticias_previas.php',0,0),(14,'Opinión',2,'','opiniones_previas.php',0,0),(15,'Boletines de prensa',2,'','boletines_previos.php',0,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gadgets_botones_admin`
--

LOCK TABLES `gadgets_botones_admin` WRITE;
/*!40000 ALTER TABLE `gadgets_botones_admin` DISABLE KEYS */;
INSERT INTO `gadgets_botones_admin` VALUES (1,'Art&iacute;culo nuevo','new','png','if_articulos.php',2,2,1),(2,'Editar art&iacute;culo','edit','png','bus_articulos.php',2,2,1),(3,'Categor&iacute;a nueva','new','png','if_categoria.php',2,2,1),(4,'Agregar gadget','gadget','png','if_gadgets.php',1,2,1),(5,'Editar gadget','edit','png','bus_gadgets.php',1,2,1),(6,'Nueva informaci&oacute;n','new','png','if_corporativa.php',4,2,1),(7,'Editar informaci&oacute;n','edit','png','bus_corporativa.php',4,2,1),(8,'Agregar foto','camara','png','if_fotos.php',5,2,1),(9,'Administrar fotos','photo','png','bus_fotos.php',5,2,1),(10,'Editar categor&iacute;a','edit','png','bus_categoria.php',2,2,1),(11,'Agregar botón Admin','work','png','if_botones_admin.php',1,2,1),(12,'Agregar a cat&aacute;logo','new','png','if_catalogo.php',8,2,1),(13,'Editar cat&aacute;logo','edit','png','bus_catalogo.php',8,2,1),(14,'Nueva categoría','new','png','if_categoria.php',8,2,1),(15,'Editar categoría','edit','png','bus_categoria.php',8,2,1),(16,'Editar Botón Admin','edit','png','bus_botones_admin.php',1,2,1),(17,'Agregar submn&uacute;','new','png','if_submenu.php',1,2,1),(18,'Editar submn&uacute;','edit','png','bus_submenu.php',1,2,1),(19,'Agregar banner','new','png','if_banner.php',9,2,1),(20,'Editar banner','edit','png','bus_banner.php',9,2,1),(21,'Nuevo','new','png','if_proyectos.php',10,2,1),(22,'Editar proyecto','edit','png','bus_proyectos.php',10,2,1),(23,'Agregar usuario','new','png','if_autor.php',3,2,1),(24,'Modificar usuario','edit','png','bus_user.php',3,5,1),(25,'Revisar mensajes','camara','png','bus_mensajes.php',6,2,1),(26,'Revisar visitantes','camara','png','contador.php',7,2,1),(27,'Agregar Resaque','resaque','png','if_resaque.php',2,2,0),(28,'chas','none','png','if_corporativa_a.php',4,2,1),(29,'chas2','none','png','ip_corporativa_a.php',4,2,1),(31,'Agregar bot&oacute;n men&uacute;','boton','png','if_botones.php',1,2,1),(32,'Modifica articulo','none','png','if_articulos_a.php',2,2,1),(33,'Modifica categoria','none','png','if_categoria_a.php',2,2,1),(34,'Editar resaque','edit','png','bus_resaque.php',2,2,0),(35,'Editar resaque2','none','png','if_resaque_a.php',2,2,0),(36,'Editar user','none','png','if_autor_a.php',3,2,1),(37,'Editar foto','none','png','if_fotos_a.php',5,2,1),(38,'Revisar mensajes2','none','png','mensaje.php',6,2,1),(39,'borra articulo','none','png','borra.php',2,2,1),(40,'Modifica categoria catalogo','none','png','if_categoria_a.php',8,2,1),(41,'Modifica catalogo','none','png','if_catalogo_a.php',8,2,1),(42,'modificar banner','none','png','if_banner_a.php',9,2,1),(43,'Maqueta','new','png','if_maqueta.php',9,2,1),(44,'Editar maqueta','edit','png','bus_maqueta.php',9,2,1),(45,'Modificar maqueta','none','png','if_maqueta_a.php',9,2,1),(46,'Modificar proyectos','none','png','if_proyectos_a.php',10,2,1),(47,'Agregar publicación','new','png','if_publicaciones.php',11,2,1),(48,'Editar publicaciones','edit','png','bus_publicaciones.php',11,2,1),(49,'Modificar publicaciones','none','png','if_publicaciones_a.php',11,2,1),(50,'Noticia nueva','new','png','if_noticias.php',12,2,1),(51,'Editar noticia','edit','png','bus_noticias.php',12,2,1),(52,'Modificar noticia','none','png','if_noticias_a.php',12,2,1),(53,'Agregar testimonio','new','png','if_testimonios.php',13,2,1),(54,'Editar testimonio','edit','png','bus_testimonios.php',13,2,1),(55,'Modificar testimonio','none','png','if_testimonios_a.php',13,2,1),(56,'configuracion','new','png','if_configura_a.php',14,2,1),(57,'Crear hoja de estilo','new','png','if_templates.php',14,2,1),(58,'templates INVI','none','png','if_templates_a.php',14,2,1),(59,'Editar hoja de estilo','edit','png','bus_templates.php',14,2,1),(60,'Modificar bot&oacute;n men&uacute;','edit','png','bus_botones.php',1,2,1),(61,'botones admin INV','none','png','if_botones_admin_a.php',1,2,1),(62,'Agregar evento','new','png','if_evento.php',15,2,1),(63,'Editar evento','edit','png','bus_evento.php',15,2,1),(64,'evento INVI','none','png','if_evento_a.php',15,2,1),(65,'Agregar ponente','new','png','if_imparte.php',15,2,1),(66,'Editar ponente','edit','png','bus_imparte.php',15,2,1),(67,'ponente INVI','none','png','if_imparte_a.php',15,2,1),(68,'Agregar documento','new','png','if_descargar.php',16,2,1),(69,'Editar descarga','edit','png','bus_descargar.php',16,2,1),(70,'descarga INVI','none','png','if_descargar_a.php',16,2,1),(71,'Agregar video','new','png','if_video.php',17,2,1),(72,'Editar video','edit','png','bus_video.php',17,2,1),(73,'Editar video INVI','none','png','if_video_a.php',17,2,1),(74,'Editar boton INVI','none','png','if_botones_a.php',1,2,1),(75,'editar gadget INVI','none','png','if_gadgets_a.php',1,2,1),(76,'Agregar liga','new','png','if_ligas.php',18,2,1),(77,'Editar ligas','edit','png','bus_ligas.php',18,2,1),(78,'Editar ligas INVI','none','png','if_ligas_a.php',18,2,1),(79,'Agrega patrocinador','new','png','if_patrocinador.php',19,2,1),(80,'Editar Patrocinador','edit','png','bus_patrocinador.php',19,2,1),(81,'Editar Patrocinador INVI','none','png','if_patrocinador_a.php',19,2,1),(83,'Agregar/ editar coordinador','edit','png','bus_coordina.php',15,2,1),(84,'Editar coordina INVI','none','png','if_coordina.php',15,2,1),(85,'Agrega día','new','png','if_dia.php',15,2,1),(86,'Edita día','edit','png','bus_dia.php',15,2,1),(87,'Edita día INVI','none','png','if_dia_a.php',15,2,1),(88,'Agregar ruta','new','png','if_ruta.php',4,2,1),(89,'Editar ruta','edit','png','bus_ruta.php',4,2,1),(90,'Editar ruta INVI','none','png','if_ruta_a.php',4,2,1),(91,'Agregar resaque','new','png','if_resaque.php',4,2,1),(92,'Editar resaque','edit','png','bus_resaque.php',4,2,1),(93,'Editar resaque INVI','none','png','if_resaque_a.php',4,2,1),(94,'Movimientos','new','png','registro.php',20,3,1),(128,'Edita FAQ','edit','png','bus_faq.php',22,1,1),(127,'Agrega FAQ','new','png','if_faq.php',22,1,1),(97,'Respaldo DB','new','png','exe_respaldo.php',14,1,1),(123,'Agrega categoria','new','png','if_categoria.php',5,2,1),(99,'Agregar edición','new','png','if_ediciones.php',2,2,0),(100,'Editar edición','edit','png','bus_ediciones.php',2,2,0),(101,'Edta ediciones INVI','none','png','if_ediciones_a.php',2,2,0),(102,'Agrega foto edición','new','png','if_fotoedicion.php',2,2,0),(103,'Edita fotoedicion','edit','png','bus_fotoedicion.php',2,2,0),(104,'Edita fotoedicion INVI','none','png','if_fotoedicion_a.php',2,2,0),(105,'Redactar mail masivo','edit','png','if_massive_mail.php',6,2,1),(106,'Edita mail masivo','edit','png','bus_massive_mail.php',6,2,1),(107,'Crea grupo envío','new','png','if_massive_grupo.php',6,2,1),(108,'Edita grupo envío','edit','png','bus_massive_grupo.php',6,2,1),(109,'Edita grupo envío INVI','none','png','if_massive_grupo_a.php',6,2,1),(110,'Editar mail masivo INVI','none','png','if_massive_mail_a.php',6,2,1),(111,'enviado','none','png','enviado.php',6,2,1),(112,'EXE mail INVI','none','png','exe_massive_mail.php',6,2,1),(113,'Agrega contacto','new','png','if_massive_directorio.php',6,2,1),(114,'Editar contacto','edit','png','bus_massive_directorio.php',6,2,1),(115,'Editar contacto INVI','none','png','if_massive_directorio_a.php',6,2,1),(116,'PDF','new','png','pdf.php',6,2,1),(117,'Agrega contenido idioma','new','png','if_content.php',21,1,1),(118,'Editar contenido idioma','edit','png','bus_content.php',21,1,1),(119,'Editar idioma INVI','none','png','if_content_a.php',21,1,1),(120,'Agregar idioma','new','png','if_language.php',21,1,1),(121,'Editar idioma','edit','png','bus_language.php',21,1,1),(122,'Editar idioma INVI','none','png','if_language_a.php',21,1,1),(124,'Edita categoria','edit','png','bus_categoria.php',5,2,1),(125,'Edita catetgoria INVI','none','png','if_categoria_a.php',5,2,1),(126,'Médicos registrados','boton','png','bus_directorio.php',24,3,1),(129,'Edita FAQ INVI','none','png','if_faq_a.php',22,1,1),(130,'TEST','boton','png','ip_registro_a.php',19,1,1),(131,'Agrega categoria','new','png','if_categoria.php',22,1,1),(132,'Edita categoria','edit','png','bus_categoria.php',22,1,1),(133,'Edita categoria INVI','none','png','if_categoria_a.php',22,1,1),(134,'Medicos registrados INVO','none','png','if_directorio_a.php',24,1,1),(135,'Agrega temporada','new','png','if_temporadas.php',8,1,1),(136,'Edita temporadas','edit','png','bus_temporadas.php',8,1,1),(137,'Edita temproada INVI','none','png','if_temporadas_a.php',8,1,1),(138,'Agregar movimiento','new','png','if_registro.php',20,3,1),(139,'Edita registro INVI','none','png','if_registro_a.php',20,2,1),(140,'Agrega moneda','new','png','if_moneda.php',23,3,1),(141,'Edita moneda','edit','png','bus_moneda.php',23,3,1),(142,'Edita moneda','none','png','if_moneda_a.php',23,3,1),(143,'Agrega tarifa','new','png','if_tarifa.php',23,3,1),(144,'Edita tarifa','edit','png','bus_tarifa.php',23,3,1),(145,'Edita tarifa INVI','none','png','if_tarifa_a.php',23,3,1),(146,'Agrega habitación','new','png','if_habitacion.php',23,3,1),(147,'Edita habitación','edit','png','bus_habitacion.php',23,3,1),(148,'Edita habitación INVI','none','png','if_habitacion_a.php',23,3,1),(149,'Agrega medicamento','new','png','if_medicamento.php',24,3,1),(150,'Edita medicamento','edit','png','bus_medicamento.php',24,3,1),(151,'Edita medicamento INVI','none','png','if_medicamento_a.php',24,3,1),(152,'Agrega potencia','new','png','if_potencia.php',24,3,1),(153,'Edita potencia','edit','png','bus_potencia.php',24,3,1),(154,'Edita potencia INVi','none','png','if_potencia_a.php',24,3,1),(155,'Agrega registro','new','png','if_registro.php',25,1,1),(156,'Edita registro','edit','png','bus_registro.php',25,1,1),(157,'Edita registro INVI','none','png','if_registro_a.php',25,1,1),(158,'Busca padre INVI','none','png','bus_fili.php',25,1,1),(159,'Agrega cónyuge','none','png','bus_conyuge.php',25,1,1),(160,'Agrega hijos','none','png','bus_pater.php',25,1,1),(161,'Agrega perfil','new','png','if_perfil.php',26,2,0),(162,'Edita perfil','edit','png','bus_perfil.php',26,2,1),(163,'Edita perfil INVI','none','png','if_perfil_a.php',26,2,1),(164,'Agrega categoria','new','png','if_categoria.php',26,2,0),(165,'Edita categoria','edit','png','bus_categoria.php',26,2,0),(166,'Edita categoria INVI','none','png','if_categoria_a.php',26,2,0),(167,'Asigna comisión','new','png','if_asigna.php',26,2,1),(168,'Edita asigna comisión','edit','png','bus_asigna.php',26,2,1),(169,'Edita asigna comisión INVI','none','png','if_asigna_a.php',1,1,1),(170,'Agrega comisión','new','png','if_comisiones.php',26,2,1),(171,'Edita comisión','edit','png','bus_comisiones.php',26,2,1),(172,'Edita comisión INVI','none','png','if_comisiones_a.php',26,2,1),(173,'Agg Botón social','new','png','if_boton.php',26,2,0),(174,'Ed botón social','edit','png','bus_boton.php',26,2,0),(175,'Ed botón social INVI','none','png','if_boton_a.php',26,2,0),(176,'Asigna botón','new','png','if_asigna_boton.php',26,2,1),(177,'Edita asigna botón','edit','png','bus_asigna_boton.php',26,2,1),(178,'Edita asigna botón INVI','none','png','if_asigna_boton_a.php',26,2,1),(179,'Ag iniciativa','new','png','if_iniciativa.php',26,2,1),(180,'Edita iniciativa','edit','png','bus_iniciativa.php',26,2,1),(181,'Edita iniciativa INVI','none','png','if_iniciativa_a.php',26,2,1),(182,'Asigna iniciativa','new','png','if_asigna_iniciativa.php',26,1,0),(183,'Ed asigna iniciativa','edit','png','bus_asigna_iniciativa.php',26,1,0),(184,'Ed asigna iniciativa INVI','none','png','if_asigna_iniciativa_a.php',26,1,0),(185,'Agrega cita','new','png','if_citas.php',27,2,1),(186,'Edita cita','edit','png','bus_citas.php',27,2,1),(187,'Edita cita INVI','none','png','if_citas_a.php',27,2,1),(188,'Agrega evento','new','png','if_evento.php',28,2,1),(189,'Edita evento','edit','png','bus_evento.php',28,2,1),(190,'Edita evento INVI','none','png','if_evento_a.php',28,2,1),(191,'Agrega foto evento','new','png','if_evento_foto.php',28,2,0),(192,'Edita evento foto','edit','png','bus_evento_foto.php',28,2,0),(193,'Edita evento foto INVI','none','png','if_evento_foto_a.php',28,2,0),(194,'Agrega categoria','new','png','if_categoria.php',12,2,1),(195,'Edita categoría','edit','png','bus_categoria.php',12,2,1),(196,'Edita categoría INVI','none','png','if_categoria_a.php',12,2,1);
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
INSERT INTO `gadgets_index` VALUES (1,'gadgets','if_gadgets.php',1,1),(2,'articulos','if_articulos.php',1,2),(3,'usuario','if_autor.php',1,5),(4,'corporativa','if_corporativa.php',1,2),(5,'fotos','if_fotos.php',1,2),(6,'mensajes','bus_mensajes.php',1,2),(7,'contador','contador.php',1,2),(8,'catalogo','if_catalogo.php',0,2),(9,'banners','if_banner.php',1,2),(10,'proyectos','if_proyectos.php',0,2),(11,'publicaciones','if_publicaciones.php',0,2),(12,'noticias','if_noticias.php',1,2),(13,'testimonios','if_testimonios.php',0,2),(14,'configura','if_configura_a.php',1,2),(15,'congreso','if_evento.php',0,2),(16,'descargar','if_descargar.php',1,2),(17,'video','if_video.php',1,2),(18,'ligas','if_ligas.php',1,2),(19,'patrocinador','if_patrocinador.php',0,2),(20,'comprar','registro.php',0,2),(21,'language','if_language.php',0,1),(22,'faq','if_faq.php',0,1),(23,'hotel','if_habitacion.php',0,1),(24,'homeopop','if_medicamento.php',0,3),(25,'genealogia','if_registro.php',0,1),(26,'perfil','if_perfil.php',1,2),(27,'citas','if_citas.php',1,2),(28,'eventos','if_evento.php',1,2);
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligas_index`
--

LOCK TABLES `ligas_index` WRITE;
/*!40000 ALTER TABLE `ligas_index` DISABLE KEYS */;
INSERT INTO `ligas_index` VALUES (1,'Partido Acción Nacional','http://www.pan.org.mx','<p>Ciudadanos que movemos a M&eacute;xico</p>',0,'pan.jpg',1,NULL),(2,'Partido Acción Nacional Jalisco','http://www.panjal.org.mx','<p>Con la fuerza de nuestros valores lo vamos a lograr</p>',0,'panjal.jpg',1,NULL),(3,'Diputados Federales del PAN','http://www.diputadospan.mx','<p>Grupo parlamentario del Partido Acci&oacute;n Nacional LXII legislatura</p>',0,'diputadosfederales.jpg',1,NULL),(4,'Senadores del PAN','http://pan.senadores.gob.mx','<p>Grupo Parlamentario del PAN en el Senado de la Rep&uacute;blica</p>',0,'senadores.jpg',1,NULL),(5,'Ley Vitrina','http://leyvitrina.org','<p>La cosa es clara</p>',0,'leyvitrina.jpg',1,NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_index`
--

LOCK TABLES `mails_index` WRITE;
/*!40000 ALTER TABLE `mails_index` DISABLE KEYS */;
INSERT INTO `mails_index` VALUES (16,'Ramsés Figueroa','ramses@ferbere.com','Grupo Parlamentario','187.246.88.19','Prueba cinco de correo','A ver','2013-06-07 19:39:50',0,0),(15,'Alicia Normanda Lindá','normanda.alicia@gmail.com','Grupo Parlamentario','187.246.88.19','3ra prueba del servidor','En realidad es la cuarta.','2013-06-07 19:10:35',0,0),(13,'Lic. Ramsés Figueroa Cayetano','ramses@ferbere.com','Grupo Parlamentario','187.247.144.174','Correo de prueba3','Esta es una prueba','2013-06-06 15:05:29',0,1),(14,'Ramsés Figueroa','ramses@ferbere.com','Grupo Parlamentario','187.246.88.19','2da prueba del servidor de correo','En realidad es la tercera.','2013-06-07 19:04:50',0,1);
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
-- Table structure for table `noticias_categoria`
--

DROP TABLE IF EXISTS `noticias_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticias_categoria` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `imagen` varchar(10) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias_categoria`
--

LOCK TABLES `noticias_categoria` WRITE;
/*!40000 ALTER TABLE `noticias_categoria` DISABLE KEYS */;
INSERT INTO `noticias_categoria` VALUES (1,'Nota del día',''),(2,'Diputados en acción','');
/*!40000 ALTER TABLE `noticias_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticias_index`
--

DROP TABLE IF EXISTS `noticias_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticias_index` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` varchar(50) NOT NULL DEFAULT '',
  `contenido` text NOT NULL,
  `publicado` smallint(1) NOT NULL DEFAULT '0',
  `fecha` date DEFAULT NULL,
  `imagen` varchar(50) NOT NULL DEFAULT '',
  `orden` int(2) NOT NULL DEFAULT '0',
  `categoria` int(3) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias_index`
--

LOCK TABLES `noticias_index` WRITE;
/*!40000 ALTER TABLE `noticias_index` DISABLE KEYS */;
INSERT INTO `noticias_index` VALUES (11,'Señalan diputados del PAN irregularidades de ex secretarios del Congreso','','<p>&nbsp;</p>\r\n<p><em>Se har&aacute;n las diligencias necesarias para que las autoridades correspondientes finquen las responsabilidades correspondientes, las cuales pueden derivarse&nbsp; en delitos como&nbsp; fraude, peculado y otros del orden penal.</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>Piden acci&oacute;n penal por el desfalco financiero de la anterior legislatura y que se castigue a los responsable de sumir al Congreso en la crisis financiera que vive.</em></p>\r\n<p>&nbsp;</p>\r\n<p>En rueda de prensa, los diputados panistas Gildardo Guerrero Torres, Mariana Ar&aacute;mbula Mel&eacute;ndez, V&iacute;ctor Manuel S&aacute;nchez Orozco y Juan Jos&eacute; Cuevas Garc&iacute;a informan de actos&nbsp; llevados a cabo por los es secretarios de la pasada legislatura, Carlos Corona Mart&iacute;n del Campo y Jos&eacute; Manuel Correa Cese&ntilde;a, en la firma y pago de multimillonario contrato a supuesta empresa de asesoramiento.</p>\r\n<p>&nbsp;</p>\r\n<p>El diputado Gildardo Guerrero Torres se&ntilde;al&oacute; que en agosto del a&ntilde;o 2010, Carlos Corona Mart&iacute;n del Campo en su funci&oacute;n de Secretario General del Congreso contrat&oacute; a empresa del Distrito Federal&nbsp; llamada&nbsp; SAE Sistemas Administrativos Empresariales SA de CV a la que se le solicit&oacute; la realizaci&oacute;n de las distintas diligencias, estudios y an&aacute;lisis de informaci&oacute;n necesarias para que el Poder Legislativo se adhiriera al decreto por el que se otorgan diversos beneficios fiscales en materia de impuesto sobre la renta, de derechos y de aprovechamientos de fecha 3 de diciembre de 2008, suscrito por el Poder Ejecutivo Federal y publicado en el diario oficial de la Federaci&oacute;n...&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Los diputados presentaron contrato y documentos firmados por los&nbsp; ex funcionarios citados anteriormente, en los cuales se hacen pagos por un total de casi 31 millones de pesos a supuesta empresa que asesor&oacute; en regulaci&oacute;n de impuestos de los trabajadores.</p>\r\n<p>&nbsp;</p>\r\n<p>Los casi 31 millones de pesos se realizaron en tres pagos. El 50 por ciento del pago se realiz&oacute;&nbsp; el 16 de marzo del a&ntilde;o 2011, por un total de 14 millones en el a&ntilde;o 2011; el 24 de abril del mismo a&ntilde;o se hizo el siguiente pago de 8 millones 120 mil pesos y el &uacute;ltimo de &eacute;stos fue el 16 de mayo por un total de 8 millones 571 mil 995 pesos, lo que da un total de casi 31 millones de pesos.</p>\r\n<p>&nbsp;</p>\r\n<p>El legislador panista Gildardo Guerrero indic&oacute; que lo m&aacute;s indignante es que el trabajo por el que supuestamente se le pago a dicha empresa, pudo haber sido realizado por estudiantes de las carreras de derecho o contabilidad.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>El Coordinador Gildardo Guerrero llam&oacute; al contrato firmado por el secretario Carlos Corona como oscuro, ventajoso y escueto ya que el mismo tiene cl&aacute;usulas de confidencialidad, que proh&iacute;ben dar a conocer montos y detalles.&nbsp;</p>\r\n<div><br /></div>\r\n<p>&nbsp;</p>',1,'2013-06-06','denuncia_pan_irregularidades.jpg',1,1),(12,'aprueban reforma artículo 24 ','09 de mayo de 2013','<p><strong>9 de mayo.-</strong> En sesi&oacute;n ordinaria y con unanimidad de la fracci&oacute;n parlamentaria del PAN, se&nbsp; aprob&oacute; la reforma al art&iacute;culo 24 Constitucional, referente a la libertad de culto. Con ello el PAN consagra la libertad y los derechos humanos de los mexicanos. Cada ciudadano ser&aacute; libre de decidir que religi&oacute;n profesar y su forma de manifestarla</p>',1,'2013-05-09','',0,2),(17,'','','<p><strong>9 de mayo.-</strong> En el Pleno del Congreso, la&nbsp; diputada panista Norma Ang&eacute;lica Cordero presenta&nbsp; iniciativa para proteger a la infancia jalisciense que acude a&nbsp; guarder&iacute;as a fin de que se&nbsp; proteja la&nbsp; integridad f&iacute;sica y psicol&oacute;gica de los menores. Se pretende que los Centros de Atenci&oacute;n Infantil garanticen los derechos de las ni&ntilde;as y ni&ntilde;os a la vida, a la integridad personal, a su dignidad, alimentaci&oacute;n, salud, educaci&oacute;n, sano esparcimiento y a su pleno desarrollo, bajo la estricta&nbsp;supervisi&oacute;n&nbsp;de las autoridades.</p>',1,'2013-05-09','',0,2),(18,'','','<p><strong>9 de mayo.-</strong> El grupo parlamentario de Acci&oacute;n Nacional presenta en el Pleno, la iniciativa para que el Congreso&nbsp; reconozca a la reportera tapat&iacute;a Alejandra Xanic Von Bertrab, ganadora del premio Pullitzer, uno de los galardones m&aacute;s prestigiados a nivel mundial en el mundo del periodismo. El diputado Gildardo Guerrero Torres se&ntilde;al&oacute; que el Partido Acci&oacute;n Nacional entiende la labor period&iacute;stica como la voz de cr&iacute;tica del pueblo, declarando como deber del Estado el fomento y protecci&oacute;n de quien ejerce el verdadero periodismo.</p>',1,'2013-05-09','',0,2),(13,'','','<p><strong>9 de mayo</strong>.- El l&iacute;der de la bancada panista, Jos&eacute; Gildardo Guerrero Torres, afirm&oacute; que lo que permite el nuevo&nbsp;art&iacute;culo&nbsp;24&nbsp;es la libertad de ejercicio religioso y da total libertad para que se pueda hacer lo que &eacute;ticamente quieras respecto a las creencias internas. Por su parte el legislador panista&nbsp; Alberto Esquer se&ntilde;al&oacute; que es falso que con esto se va a poder entrar a las escuelas p&uacute;blicas con temas religiosos, es simplemente darle al ciudadano la libertad de culto y de religi&oacute;n\".</p>',1,'2013-05-09','',0,2),(14,'','','<p><strong>9 de mayo.-</strong> En el Pleno, se aprobaron las minutas de proyecto de decreto que reforman diversos art&iacute;culos en lo relativo a la competitividad y telecomunicaciones,&nbsp;El diputado panista Juan Jos&eacute; Cuevas Garc&iacute;a  se pronuncia a favor de la reforma federal porque estima que los j&oacute;venes ser&aacute;n tambi&eacute;n beneficiados, adem&aacute;s de que propuso una modificaci&oacute;n para contribuir a fortalecer m&aacute;s el tema de la competitividad.</p>',1,'2013-05-09','',0,2),(15,'','','<p><strong>9 de mayo.-</strong> En el Pleno se aprueba el Acuerdo que suscriben&nbsp; los diputados panistas Norma Ang&eacute;lica Cordero Prado, Jos&eacute; Hern&aacute;n Cort&eacute;s Berumen, Jaime D&iacute;az Brambila, El&iacute;as I&ntilde;iguez Mej&iacute;a y otros legisladores, en el cual se exhorta al Gobierno del Estado para que la leche requerida para el consumo de los programas del DIF, escuelas p&uacute;blicas, hospitales y reclusorios bajo la administraci&oacute;n estatal, sea adquirida a productores radicados en Jalisco, y que en todos los casos se trate &uacute;nicamente de leche fluida.</p>',1,'2013-05-09','',0,2),(16,'','','<p><strong>9 de mayo.-</strong> Presenta el diputado panista Juan Jos&eacute; Cuevas iniciativa para que se imparta de manera obligatoria el idioma ingl&eacute;s en la educaci&oacute;n b&aacute;sica, media superior y superior.</p>',1,'2013-05-09','',0,2),(8,'gira cárcel municipal de Ocotlán ','mayo de 2013 ','<p><strong>8 de mayo.-</strong>&nbsp; A fin de buscar mejores condiciones carcelarias, el diputado panista V&iacute;ctor Manuel S&aacute;nchez Orozco, Presidente de la Comisi&oacute;n de Readaptaci&oacute;n Social encabeza gira de trabajo a la c&aacute;rcel municipal de Ocotl&aacute;n</p>',1,'2013-05-08','',0,2),(9,'apoyo al campo jalisciense ','mayo de 2013 ','<p><strong>8 de mayo.-</strong> El diputado panista&nbsp; Alberto Esquer Guti&eacute;rrez, Presidente de la Comisi&oacute;n de Desarrollo Agr&iacute;cola&nbsp; propone la creaci&oacute;n de una comisi&oacute;n tripartita con el fin de acelerar trabajos y acciones para apoyar el campo jalisciense. Estar&iacute;a integrada por las comisiones legislativas de ganader&iacute;a, &nbsp;desarrollo forestal y desarrollo agr&iacute;cola.</p>',1,'2013-05-08','',0,2),(10,'comité evaluador de aspirantes al IEPC','mayo de 2013','<p>&nbsp;</p>\r\n<p><strong>8 de mayo.-</strong> <strong>&nbsp;</strong>Recibe el diputado panista Alberto Esquer Guti&eacute;rrez, comunicado firmado por 26 organismos ciudadanos en el que se brinda un total respaldo a la propuesta de &eacute;l y del diputado El&iacute;as Octavio I&ntilde;&iacute;guez, para la creaci&oacute;n de un Comit&eacute; Evaluador que se responsabilizar&iacute;a de de dise&ntilde;ar y aplicar los mecanismos de selecci&oacute;n de&nbsp; candidatos del IEPC.</p>\r\n<p>&nbsp;</p>',1,'2013-05-08','',0,2),(7,'Presa el Zapotillo ','mayo de 2013 ','<p><strong>7 de mayo</strong>.-&nbsp; Presa el Zapotillo. Los diputados pansitas Norma Ang&eacute;lica Cordero Prado, El&iacute;as Octavio I&ntilde;iguez y Jaime Ismael D&iacute;az Brambila, acuden a la visita que realizaron legisladores locales para escuchar a los habitantes de Temacapul&iacute;n</p>',1,'2013-05-07','',0,2),(19,'','','<p><strong>13 de mayo.-</strong> Aprob&oacute; la Comisi&oacute;n de Asuntos Electorales la conformaci&oacute;n del Comit&eacute; Evaluador, que se encargar&aacute; de analizar los perfiles de los aspirantes que buscan un espacio en el Consejo del Instituto Electoral y de Participaci&oacute;n Ciudadana. La propuesta de este comit&eacute;, fue realizada por la fracci&oacute;n del PAN y representada al interior de la comisi&oacute;n de Asuntos Electorales por los diputados panistas Alberto Esquer Guti&eacute;rrez  y El&iacute;as I&ntilde;iguez Mej&iacute;a.</p>',1,'2013-05-13','',0,2),(20,'','','<p><strong>14 de mayo.-</strong>&nbsp; Durante los trabajos de la Comisi&oacute;n de Desarrollo Econ&oacute;mico, presididos por el diputado panista Juan Jos&eacute; Cuevas Garc&iacute;a  se cont&oacute; con la presencia del Secretario del ramo. El diputado expres&oacute; la conveniencia de buscar m&aacute;s apoyos en el presupuesto del siguiente a&ntilde;o para mejorar la competitividad y productividad en Jalisco.</p>',1,'2013-05-14','',0,2),(21,'','','<p><strong>14 de mayo.-</strong> En rueda de Prensa, el diputado pansita V&iacute;ctor Manuel da a conocer la realizaci&oacute;n del foro que pretende unificar el C&oacute;digo Penal ya que&nbsp; Jalisco es de las entidades que m&aacute;s atraso presenta en el Nuevo Sistema de Justicia Penal. Se&ntilde;ala que es urgente avanzar no s&oacute;lo en el tema de juicios orales sino en varias reformas relacionadas en materia de justicia.</p>',1,'2013-05-14','',0,2),(22,'','','<p><strong>15 de mayo.-</strong> Se aprueba en la Comisi&oacute;n de Salud, la iniciativa del diputado panista El&iacute;as Octavio I&ntilde;&iacute;guez la cual propone declarar el 14 de noviembre como el D&iacute;a Estatal de la Prevenci&oacute;n y Combate a la Diabetes, a fin de hacer m&aacute;s conciencia sobre dicha enfermedad.</p>',1,'2013-05-15','',0,2),(23,'','','<p><strong>15 de mayo.-</strong> Inaugura Casa de Enlace la diputada panista Mariana Ar&aacute;mbula Mel&eacute;ndez. La Casa de Enlace Legislativa se encuentra ubicada en Av. Enrique D&iacute;az de Le&oacute;n no. 2155, Col. Jardines del Country, en Guadalajara. El tel&eacute;fono de oficina es el: 33-33304571 y el horario de servicio es de lunes a viernes de 9 a 5 de la tarde. Algunos de los servicios que ofrecer&aacute; este espacio de atenci&oacute;n ciudadana destaca: gestiones ante las Instituciones estatales y municipales.</p>',1,'2013-05-15','',0,2),(24,'','','<p><strong>21 y 22 de mayo.-</strong> Foro para Unificar el C&oacute;digo Procesal y Penal de Jalisco. El diputado panista V&iacute;ctor Manuel S&aacute;nchez Orozco, presidente de la Comisi&oacute;n de Readaptaci&oacute;n Social organiz&oacute; el foro en el que se convoc&oacute; a especialistas, acad&eacute;micos y poderes del estado para analizar los trabajos que deben realizarse a fin de transitar de un sistema penal inquisitorio al uno que utilice la justicia alternativa.</p>',1,'2013-05-21','',0,2),(25,'','','<p><strong>21 de mayo.-</strong> En la comisi&oacute;n de Puntos Constitucionales, estudios Legislativos y Reglamentos que preside el diputado panista Hern&aacute;n Cort&eacute;s Berumen, se aprueba el dictamen de decreto que contiene reformas impulsadas por el diputado panista Gildardo Guerrero Torres, qui&eacute;n busca elevar al Congreso de la Uni&oacute;n una propuesta de reforma al delito de defraudaci&oacute;n fiscal y otra para reformar el Delito de Peculado en el C&oacute;digo Penal. Se trata de castigar a los servidores p&uacute;blicos y representantes populares que retengan y no enteren los impuestos y las contribuciones realizadas por los trabajadores.</p>',1,'2013-05-21','',0,2),(26,'','','<p><strong>24 de mayo.-</strong> La diputada panista Mariana Ar&aacute;mbula, Presidenta de la Comisi&oacute;n de Ciencia y Tecnolog&iacute;a, inform&oacute; que trabaja en&nbsp; coordinaci&oacute;n con la Secretar&iacute;a de Innovaci&oacute;n del Gobierno&nbsp; para darle impulso a las reformas necesarias a la Ley de Fomento a la Ciencia y Tecnolog&iacute;a. Entre las acciones que ha llevado a cabo la comisi&oacute;n,&nbsp; la diputada se&ntilde;al&oacute; que ha logrado gestionar recursos para apoyar a cinco menores de secundaria, los cuales representan a Jalisco en el evento internacional RoboCub 2013,&nbsp; que tendr&aacute; lugar en Holanda, el mes pr&oacute;ximo.</p>',1,'2013-05-24','',0,2),(27,'','','<p><strong>27 de mayo.-</strong> La diputada panista pansita Norma Ang&eacute;lica Cordero Prado, vocal de la Comisi&oacute;n de Desarrollo Humano y Familia pidi&oacute; que los productores ganaderos sean contemplados como proveedores dentro de la Cruzada Nacional contra el Hambre y que no sean disminuidos el n&uacute;mero de beneficiarios de leche en el Estado.</p>',1,'2013-05-27','',0,2),(28,'','','<p><strong>27 de mayo.-</strong> Acudi&oacute; el diputado panista Juan Jos&eacute; Cuevas a los trabajos de la Comisi&oacute;n de Desarrollo Humano y Familia en donde estuvieron presentes integrantes de la Asociaci&oacute;n 22 de abril de Guadalajara. Despu&eacute;s de escuchar los planteamientos, el legislador panista pidi&oacute; valorar la posibilidad de integrar una Comisi&oacute;n dentro del Congreso que este al pendiente de que se cumpla al 100 por ciento los acuerdos y pendientes que quedan por resolver en el gobierno.</p>',1,'2013-05-27','',0,2),(29,'','','<p><strong>28 de mayo.- </strong>Aprueba el Comit&eacute; de Peticiones y Atenci&oacute;n Ciudadana presidido por la legisladora panista Gabriela Andal&oacute;n Becerra  el programa \"Atenci&oacute;n y Orientaci&oacute;n Ciudadana\" cuyo objetivo es darle al ciudadano un servicio eficaz y humano con la implementaci&oacute;n de un m&oacute;dulo que se encargue de canalizar las peticiones de las personas que acuden al Congreso.</p>',1,'2013-05-28','',0,2),(30,'','','<p><strong>31 de mayo.-</strong> En la sesi&oacute;n extraordinaria en la cual se eligieron a los nuevos integrantes del&nbsp; IEPC, el legislador panista El&iacute;as I&ntilde;iguez Mej&iacute;a, expuso que uno de los retos importantes para el nuevo organismo, es el impulsar herramientas de participaci&oacute;n social como la consulta popular y el refer&eacute;ndum.</p>',1,'2013-05-31','',0,2),(31,'','','<p><strong>31 de mayo.-</strong> El PAN por la equidad de g&eacute;nero. La fracci&oacute;n del Partido Acci&oacute;n Nacional en el Congreso del Estado impuls&oacute; a tres aspirantes en la renovaci&oacute;n del Instituto Electoral, dos de&nbsp; los cuales son mujeres, lo cual representa un logro que contribuir&aacute; a un mejor desempe&ntilde;o en la nueva conformaci&oacute;n del&nbsp; IEPC.</p>',1,'2013-05-31','',0,2),(32,'','','<p><strong>8 de abril.-</strong> Los diputados Hern&aacute;n Cort&eacute;s Berumen, Jaime D&iacute;az Brambila y V&iacute;ctor Manuel S&aacute;nchez   Orozco acuden a&nbsp; reuni&oacute;n con integrantes de Movidemo, organizaci&oacute;n que busca aportar propuestas para mejorar la din&aacute;mica urbana en la Zona metropolitana.</p>',1,'2013-04-08','',0,2),(33,'','','<p><strong>9 de abril.-</strong>&nbsp; El Grupo Parlamentario de Acci&oacute;n Nacional afina agenda legislativa en su primera sesi&oacute;n ordinaria convocada en Puerto Vallarta. El diputado Coordinador Gildardo Guerrero indica que el trabajo de los diputados del PAN se encaminar&aacute; en lograr ser una oposici&oacute;n responsable, propositiva y constructiva. La agenda delinea varias acciones entre las que sobresale el trabajo para generar un organismo colegiado que&nbsp; revise la rendici&oacute;n de cuentas y vigile las finanzas del Estado; trabajar en propuesta del \"Mando &Uacute;nico\",&nbsp; propuesta que&nbsp; ya hab&iacute;a sido impulsada por el anterior gobierno panista; apoyo a la propuesta del transporte escolar gratuito, sin maquillajes, que sea totalmente gratuito; generar una movilidad integral no solo en la capital del estado sino tambi&eacute;n para las ciudades medias del interior; as&iacute; como lograr que la asignaci&oacute;n de obra p&uacute;blica sea participativa de manera ciudadana.</p>',1,'2013-04-09','',0,2),(34,'','','<p><strong>10 de abril.-</strong> En rueda de prensa, el diputado panista Guillermo Mart&iacute;nez Mora da a conocer la realizaci&oacute;n&nbsp; del foro para la reforma educativa.</p>',1,'2013-04-10','',0,2),(35,'','','<p><strong>15 de abril.-</strong> El diputado panista Gildardo Guerrero Torres, vocal de la Comisi&oacute;n de Asuntos Metropolitanos propone enriquecer&nbsp; los trabajos de la reforma integral de movilidad sustentable con las&nbsp; propuestas de la sociedad civil.</p>\r\n<p>&nbsp;</p>',1,'2013-04-15','',0,2),(36,'','','<p><strong>17 de abril.-</strong> La diputada panista Mariana Ar&aacute;mbula&nbsp; presenta ante&nbsp; los medios de comunicaci&oacute;n, su propuesta para contribuir a la erradicaci&oacute;n del maltrato infantil, incorporando al C&oacute;digo Penal la tipificaci&oacute;n de \"maltrato infantil\" como delito grave, lo cual garantizar&iacute;a una protecci&oacute;n&nbsp; m&aacute;s justa para los menores.</p>',1,'2013-04-17','',0,2),(37,'','','<p><strong>17 de abril.</strong>- La diputada panista Norma Ang&eacute;lica Cordero, Presidenta de la Comisi&oacute;n de Ganader&iacute;a informa que mantiene estrecha vinculaci&oacute;n con la Secretar&iacute;a de Desarrollo Rural y la Asociaci&oacute;n Ganadera de Jalisco para avanzar en proyectos como el de la secadora de leche ubicada en el municipio de Lagos de Moreno.</p>',1,'2013-04-17','',0,2),(38,'','','<p><strong>17 de abril.-</strong> El diputado panista El&iacute;as Octavio I&ntilde;&iacute;guez Mej&iacute;a, vocal de la Comisi&oacute;n de Trabajo y Previsi&oacute;n Social pide al Secretario del Trabajo&nbsp; Eduardo Almaguer Ram&iacute;rez el nombre de las personas que interpusieron juicio laboral contra el SIAPA y obtuvieron sentencia favorable a sus juicios laborales. Consider&oacute; el legislador una situaci&oacute;n injusta y no v&aacute;lida para los jaliscienses dicha resoluci&oacute;n.</p>',1,'2013-04-17','',0,2),(39,'','','<p><strong>18 de abril.-</strong> La diputada Gabriela Andal&oacute;n Becerra presenta en sesi&oacute;n de Pleno propuesta para modificar el marco jur&iacute;dico electoral a fin de establecer que por lo menos el 40 por ciento de los candidatos a diputados locales sean de distinto g&eacute;nero, adem&aacute;s de que los suplentes a diputados sean del mismo sexo para evitar los llamados casos de \"juanitas\" en el cual se pide licencia para dejarle el cargo a un hombre.</p>',1,'2013-04-18','',0,2),(40,'','','<p><strong>18 de abril.-</strong> El Pleno se aprueba la petici&oacute;n del diputado panista Alberto Esquer Guti&eacute;rrez  para exhortar al Poder Ejecutivo a fin de que otorguen apoyos econ&oacute;micos a los productores de ma&iacute;z blanco.</p>',1,'2013-04-18','',0,2),(41,'','','<p><strong>18 de abril.-</strong> En rueda de prensa, el diputado El&iacute;as Octavio I&ntilde;&iacute;guez, Presidente de la Comisi&oacute;n de Salud&nbsp; informa que se reunir&aacute;n&nbsp; legisladores de su comisi&oacute;n con el titular de salud Jaime Agust&iacute;n con al finalidad de elaborar una agenda com&uacute;n de trabajo en las que se incluir&aacute; los problemas que enfrentan varios centros de salud de algunos municipios, los cuales no brindan atenci&oacute;n m&eacute;dica los fines de semana.</p>\r\n<p>&nbsp;</p>',1,'2013-04-18','',0,2),(42,'','','<p><strong>19 de abril.-</strong> Se celebra el&nbsp; Foro para la  Reforma Educativa convocado por el diputado Guillermo Mart&iacute;nez Mora a fin de escuchar los distintos planteamientos de la sociedad y de los encargados de la educaci&oacute;n para avanzar en dicho tema.</p>',1,'2013-04-19','',0,2),(43,'','','<p><strong>23 de abril.-</strong> En los trabajos de la Comisi&oacute;n de Desarrollo Econ&oacute;mico presididos por el diputado Juan Jos&eacute; Cuevas Garc&iacute;a, se acord&oacute; citar al titular de la secretaria del ramo Jos&eacute; Palacios Jim&eacute;nez a fin de conocer los programas que detonar&aacute;n el desarrollo en Jalisco as&iacute; como los alcances del proyecto denominado Instituto Jalisciense del Emprendedor.</p>\r\n<p>&nbsp;</p>',1,'2013-04-23','',0,2),(44,'','','<p><strong>23 de abril.-</strong> Aprueba la Comisi&oacute;n de Desarrollo Humano y Familia la iniciativa de la diputada vocal Mariana Ar&aacute;mbula Mel&eacute;ndez que pretende apoyar a los migrantes que transitan en Jalisco, brindando asesor&iacute;a y alimentaci&oacute;n. Tambi&eacute;n se aprob&oacute; otra de sus iniciativas que declara el 19 de noviembre \"D&iacute;a Estatal de la Prevenci&oacute;n y atenci&oacute;n al Abuso sexual Infantil\".</p>',1,'2013-04-23','',0,2),(45,'','','<p><strong>24 de abril.-</strong> En el marco de los festejos del D&iacute;a del Ni&ntilde;o, la diputada Mariana Ar&aacute;mbula Mel&eacute;ndez en su calidad de Presidenta de la Comisi&oacute;n de Ciencia y Tecnolog&iacute;a otorga reconocimiento a los ni&ntilde;os Fernando y Camilo Guzm&aacute;n Arias por haber obtenido el primer lugar a nivel Latinoam&eacute;rica en divulgaci&oacute;n y vinculaci&oacute;n cient&iacute;fica. Los ni&ntilde;os de nueve a&ntilde;os presentaron en Quito, Ecuador un proyecto para concientizar a menores sobre la elecci&oacute;n y cuidado de las mascotas.</p>',1,'2013-04-24','',0,2),(46,'','','<p><strong>24 de abril.-</strong> Visita a Reclusorio de Puente Grande.- Comitiva de diputados integrantes de la Comisi&oacute;n de Readaptaci&oacute;n Social, Presidida por el diputado V&iacute;ctor Manuel S&aacute;nchez   Orozco quien busca alternativas para canalizar mayores recursos financieros para subsanar carencias en dichas c&aacute;rceles&nbsp; y as&iacute;&nbsp; cumplir con la tarea de reinserci&oacute;n social de los internos.</p>',1,'2013-04-24','',0,2),(47,'','','<p><strong>24 de abril.-</strong> El diputado El&iacute;as Octavio I&ntilde;&iacute;guez Mej&iacute;a, Presidente de la Comisi&oacute;n de Salud invita a reuni&oacute;n de trabajo a especialistas que hablaron de prevenci&oacute;n y acciones para disminuir accidentes automovil&iacute;sticos generados por el consumo del alcohol. Se pronuncia porque el gobierno del Estado contemple el tema en su agenda de trabajo y se logre disminuir&nbsp; la expedici&oacute;n de licencias municipales para la venta y consumo de embriagantes, entre otras acciones.</p>',1,'2013-04-24','',0,2),(48,'','','<p><strong>24 de abril.</strong>- &nbsp;Durante los trabajos de la Comisi&oacute;n de Educaci&oacute;n, los diputados panistas Guillermo Mart&iacute;nez Mora en su car&aacute;cter de presidente de dicha comisi&oacute;n legislativa y el vocal Alberto   Esquer Guti&eacute;rrez &nbsp;se muestran interesados en conocer el mecanismo que utilizar&aacute; el gobierno para dotar de transporte gratuito.</p>',1,'2013-04-24','',0,2),(49,'','','<p><strong>26 de abril.-</strong> Presenta el diputado panista Jaime D&iacute;az Brambila ante el Pleno del Congreso, iniciativa que exhorta a la Secretar&iacute;a de Salud de Jalisco implementar programas para&nbsp; prevenir riesgos en la salud por el consumo excesivo de sal en los alimentos.</p>',1,'2013-04-26','',0,2),(50,'','','<p><strong>29 de abril.-</strong> En&nbsp; rueda de prensa, la diputada panista Norma Ang&eacute;lica Cordero Prado da a conocer la iniciativa para regular las estancias infantiles. Se pretende que los Centros de Atenci&oacute;n Infantil garanticen los derechos de las ni&ntilde;as y ni&ntilde;os a la vida, a la integridad personal, a su dignidad, alimentaci&oacute;n, salud, educaci&oacute;n, sano esparcimiento y a su pleno desarrollo, bajo la estricta supervisi&oacute;n de las autoridades.</p>\r\n<p>&nbsp;</p>',1,'2013-04-29','',0,2),(51,'','','<p>&nbsp;<strong>18 de abril.-</strong> Se aprueba iniciativa del diputado Jaime Ismael D&iacute;az Brambila que exhorta a los delegados de la Semarnat, Profepa, PGR y Semadet, as&iacute; como a los presidentes municipales de Ocotl&aacute;n, La Barca, Atotonilco el Alto, a efecto de evitar la deforestaci&oacute;n y alteraci&oacute;n del medio ambiente.</p>',1,'2013-04-18','',0,2),(52,'','','<p><strong>4 de marzo.-</strong> El diputado coordinador del PAN, Gildardo Guerrero Torres integrante de la Junta de Coordinaci&oacute;n Pol&iacute;tica, da su voto a favor para que dicho &oacute;rgano parlamentario ofrezca m&aacute;s transparencia.</p>',1,'2013-03-04','',0,2),(53,'','','<p><strong>5 de marzo.-</strong>Reuni&oacute;n de diputados con el titular del Poder Ejecutivo. Gildardo  Guerrero Torres, diputado Coordinador de la Fracci&oacute;n del PAN se&ntilde;ala que el contrapeso arm&oacute;nico entre poderes es un elemento fundamental para el correcto ejercicio de gobierno, por lo que el Ejecutivo y Legislativo deben trabajar de la mano para lograr el bien com&uacute;n de los jaliscienses.</p>',1,'2013-03-05','',0,2),(54,'','','<p><strong>8 de marzo.-</strong> En el marco del D&iacute;a Internacional de la Mujer, la diputada panista Gabriela Andal&oacute;n Becerra  presenta en rueda de prensa dos iniciativas para fortalecer la participaci&oacute;n de las mujeres en Jalisco. Propone homologar el C&oacute;digo Electoral con la legislaci&oacute;n federal para aumentar la cuota de g&eacute;nero en las candidaturas de elecci&oacute;n popular, as&iacute; como otra iniciativa para que las diputadas presidan a lo menos dos veces en cada legislatura la Mesa Directiva del Congreso.</p>',1,'2013-03-08','',0,2),(55,'','','<p><strong>8 de marzo.-</strong> El Pleno aprueba iniciativa de la legisladora panista Norma  Ang&eacute;lica Cordero Prado, la cual solicita al Fiscal Central del Estado, Rafael Castellanos, que instruya al personal especializado&nbsp; en el delito de abigeato para que al recibir denuncia sobre el robo de animales, se avoquen a integrar averiguaci&oacute;n previa de manera pronta e imparcial.</p>',1,'2013-03-08','',0,2),(56,'','','<p><strong>8 de marzo.-</strong> El Pleno aprueba iniciativa del diputado panista Jaime D&iacute;az Brambila para reciclar papel en las labores del Congreso, esto con el fin de contribuir a la preservaci&oacute;n de los recursos naturales. Recuerda que por cada tonelada de papel reciclado, se salvan 17 &aacute;rboles y se ahorran 21 mil litros de agua.</p>',1,'2013-03-08','',0,2),(57,'','','<p><strong>12 de marzo.-</strong> Contempla la legisladora panista Gabriela Andal&oacute;n Becerra, Presidenta del Comit&eacute; de Peticiones y atenci&oacute;n ciudadana, la posibilidad de instalar en el Congreso un modulo de atenci&oacute;n ciudadana que de un servicio a los visitantes m&aacute;s digno y especializado.</p>',1,'2013-03-12','',0,2),(58,'','','<p><strong>13 de marzo.-</strong> en los trabajos de la Comisi&oacute;n de Asuntos Metropolitanos, el diputado panista Gildardo Guerrero plantea la conveniencia de ir en bicicleta a la reuni&oacute;n a realizar en el Parque Metropolitano para atender inquietudes de la sociedad civil sobre movilidad no motorizada.</p>',1,'2013-03-13','',0,2),(59,'','','<p><strong>14 de marzo.-</strong> El diputado pansita El&iacute;as Octavio I&ntilde;&iacute;guez Mej&iacute;a, vocal de la&nbsp; Comisi&oacute;n de Asuntos Electorales,&nbsp; se pronuncia a favor de la equidad de g&eacute;nero para que mujeres asuman posiciones importantes ya que tienen los mismos derechos para integrar el IEPC. Sin embargo, dice no estar de acuerdo en que se fije una cuota de g&eacute;nero, sino dar&nbsp; impulso a gente capaz y con experiencia&nbsp; para integrar al nuevo organismo.</p>\r\n<p>&nbsp;</p>',1,'2013-03-14','',0,2),(60,'','','<p><strong>14 de marzo.-</strong> El diputado pansita El&iacute;as Octavio I&ntilde;&iacute;guez Mej&iacute;a, vocal de la&nbsp; Comisi&oacute;n de Asuntos Electorales,&nbsp; se pronuncia a favor de la equidad de g&eacute;nero para que mujeres asuman posiciones importantes ya que tienen los mismos derechos para integrar el IEPC. Sin embargo, dice no estar de acuerdo en que se fije una cuota de g&eacute;nero, sino dar&nbsp; impulso a gente capaz y con experiencia&nbsp; para integrar al nuevo organismo.</p>\r\n<p>&nbsp;</p>',1,'2013-03-14','',0,2),(61,'','','<p><strong>19 de marzo.-</strong>&nbsp; En los trabajos de la Comisi&oacute;n de Trabajo y Previsi&oacute;n Social, el diputado pansita El&iacute;as I&ntilde;&iacute;guez Mej&iacute;a pide invitar al Secretario del ramo, Eduardo Almaguer para estrechar esfuerzos a fin de sacar adelante pendientes de la dependencia, a fin de encontrar soluciones, como en el caso de los rezagos de juicios laborales.</p>',1,'2013-03-19','',0,2),(62,'','','<p><strong>19 de marzo.-</strong> El diputado pansita Jaime Ismael D&iacute;az Brambila, vocal de la Comisi&oacute;n de Medio Ambiente y Desarrollo Sustentable se adhiere a la iniciativa dictaminada por la Comisi&oacute;n de Desarrollo Forestal para que sea contemplado en la Ley de Desarrollo Forestal Sustentable&nbsp; incentivar a las personas a crear en sus domicilios las llamadas Azoteas Verdes con apoyos del impuesto predial.</p>',1,'2013-03-19','',0,2),(63,'','','<p><strong>22 de marzo.-</strong> La Comisi&oacute;n de Ganader&iacute;a, presidida por la diputada panista Norma Ang&eacute;lica Cordero Prado se compromete a sumar esfuerzos con la Seder y la  Uni&oacute;n Ganadera para impulsar la producci&oacute;n pecuaria en al entidad. Manifest&oacute; la represente social la necesidad de valorar m&aacute;s el trabajo y el esfuerzo de los ganaderos de Jalisco.</p>',1,'2013-03-22','',0,2),(64,'','','<p><strong>31 de Marzo.-</strong> Sesi&oacute;n Solemne en Lagos de Moreno por el 450 aniversario de su fundaci&oacute;n. La diputada panista Norma Ang&eacute;lica Cordero, oriunda de dicha ciudad expresa durante la sesi&oacute;n solemne que&nbsp; Lagos, patrimonio cultural de la humanidad, reclama m&aacute;s impulso, m&aacute;s recursos y m&aacute;s equidad. Pide al gobernador Arist&oacute;teles mayores oportunidades de estudio y trabajo para los j&oacute;venes, potencializar la vocaci&oacute;n lechera de la regi&oacute;n, la construcci&oacute;n de una zona industrial que pueda competir con Aguascalientes y Guanajuato as&iacute; como mejores redes de comunicaci&oacute;n.</p>',1,'2013-03-31','',0,2),(65,'','','<p><strong>1 de febrero.-</strong> El legislador panista Victor Manuel S&aacute;nchez Orozco exhorta al gobernador electo Jorge Arist&oacute;teles para que reconsidere y haga una revisi&oacute;n a fondo del proyecto de la Presa El Zapotillo, ya que hay elementos t&eacute;cnicos que no se han puesto en consideraci&oacute;n y se podr&iacute;an afectar el suministro de agua a la zona metropolitana de Guadalajara.</p>',1,'2013-02-01','',0,2),(66,'','','<p><strong>5 de febrero.-</strong> En rueda de prensa, la diputada panista Mariana Arambula, integrante de la Comisi&oacute;n de Derechos Humanos,&nbsp; inform&oacute; de su iniciativa de ley que contempla reformas al C&oacute;digo de Asistencia Social para que el DIF Jalisco, instale centros de atenci&oacute;n a apoyo a los migrantes.</p>',1,'2013-02-05','',0,2),(67,'','','<p><strong>6 de febrero.-</strong> El diputado panista Gildardo Guerrero informa que se han promovido acciones legales para castigar a los responsables de las anteriores legislaturas que sumieron al Congreso en crisis financiera.</p>',1,'2013-02-06','',0,2),(68,'','','<p><strong>6 de febrero.-</strong> La Comisi&oacute;n de Puntos Constitucionales, Estudios Legislativos y Reglamentos, que preside el diputado pansita Hern&aacute;n Cort&eacute;s Berumen aprueba reglamentaciones para contratar personal del Congreso, ordenar el manejo de formas valoradas y comprobar plenamente el dinero para las casas de enlace de los diputados.</p>',1,'2013-02-06','',0,2),(69,'','','<p><strong>6 de febrero.-</strong> En rueda de prensa, el Diputado panista V&iacute;ctor   Manuel S&aacute;nchez Orozco &nbsp;denuncia de falta de Transparencia por parte de la ASEJ por no publicar la informaci&oacute;n fundamental a que est&aacute; obligado por ley.</p>\r\n<p>&nbsp;</p>',1,'2013-02-06','',0,2),(70,'','','<p><strong>12 de febrero.-</strong> Con el prop&oacute;sito de abonar a los trabajos de gobierno para la erradicaci&oacute;n del VIH en Latinoam&eacute;rica y el Caribe, se realiza el foro \"Declaraci&oacute;n Ministerial en Jalisco: Prevenir con Educaci&oacute;n\" convocado por el legislador del PAN El&iacute;as Octavio I&ntilde;&iacute;guez en su calidad de Presidente de la Comisi&oacute;n de Salud.&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-02-12','',0,2),(71,'','','<p><strong>18 de febrero.-</strong> Con la finalidad de reconstruir la confianza ciudadana hacia sus gobernantes, el diputado del PAN Juan Jos&eacute; Cuevas Garc&iacute;a, informa en rueda de prensa que presentar&aacute; una iniciativa para combatir la impunidad de los funcionarios p&uacute;blicos y evitar que &eacute;stos sean \"juez y parte\" en la fiscalizaci&oacute;n de las cuentas p&uacute;blicas.</p>',1,'2013-02-18','',0,2),(72,'','','<p><strong>19 de febrero.-</strong> El diputado del PAN Hern&aacute;n Cort&eacute;s presenta la  denominada Ley Vitrina, que&nbsp;&nbsp; pretende modificar a la ley de Transparencia de Jalisco. La propuesta de ley tiene como objetivo transparentar la toma de decisiones y la vida p&uacute;blica.</p>',1,'2013-02-19','',0,2),(73,'','','<p><strong>19 de febrero.-</strong> El Coordinador &nbsp;del Grupo Parlamentario del Partido Acci&oacute;n Nacional Gildardo Guerrero Torres,&nbsp; pide que el coordinador del equipo de transici&oacute;n del gobernador electo, Ricardo Villanueva Lomel&iacute;, comparezca ante la Comisi&oacute;n de Puntos Constitucionales con el objetivo de aclarar dudas y poder hacer observaciones a la reforma del ejecutivo.</p>',1,'2013-02-19','',0,2),(74,'','','<p><strong>20 de febrero.-</strong> El diputado del PAN El&iacute;as Octavio I&ntilde;iguez Mej&iacute;a, vocal de la Comisi&oacute;n de Trabajo y Previsi&oacute;n Social propone que en los primeros d&iacute;as de marzo se haga una invitaci&oacute;n a quien se designe como nuevo Secretario de Trabajo y Previsi&oacute;n Social, a fin de externarle la urgencia de utilizar los 40 millones de pesos etiquetados en el Presupuesto 2013 destinados a operaci&oacute;n de Juntas de Conciliaci&oacute;n y Arbitraje.</p>',1,'2013-02-20','',0,2),(76,'','','<p><strong>20 de febrero.-</strong> La Comisi&oacute;n de Puntos Constitucionales, Estudios Legislativos&nbsp; y Reglamentos aprob&oacute; el acuerdo interno propuesto por el diputado panista Gildardo  Guerrero Torres para&nbsp; invitar al coordinador del equipo de transici&oacute;n, Ricardo Villanueva Lomel&iacute; a fin de resolver dudas de la&nbsp; propuesta de iniciativa enviada al legislativo.</p>\r\n<p>El legislador panista Alberto Esquer Guti&eacute;rrez  pidi&oacute; seriedad y responsabilidad para resolver el tema. Igualmente se expres&oacute; el panista Juan Carlos M&aacute;rquez Rosas, quien se&ntilde;al&oacute; que esta iniciativa es compleja y muy importante para la vida de Jalisco, por lo que no se dar&aacute; la aprobaci&oacute;n del PAN si no existe el sustento suficiente.</p>\r\n<p>&nbsp;</p>',1,'2013-02-20','',0,2),(77,'','','<p><strong>20 de febrero.-</strong> Comparece en la Comisi&oacute;n de Readaptaci&oacute;n Social presidida por el diputado panista Juan Jos&eacute; Cuevas Garc&iacute;a,&nbsp; el Comisario General de Prevenci&oacute;n y Reinserci&oacute;n Social del Estado de Jalisco, quien dio un panorama general de la situaci&oacute;n que viven los reclusorios en el estado. El legislador Cuevas se pronuncio por atender&nbsp; la problem&aacute;tica de la sobrepoblaci&oacute;n, principalmente por el riesgo que representa tener reos de alta peligrosidad en c&aacute;rceles municipales, buscar mecanismos para alentar la justicia alternativa y presentar iniciativas que ayuden a despresurizar el n&uacute;mero de reos que son candidatos a la preliberaci&oacute;n.</p>',1,'2013-02-20','',0,2),(78,'','','<p><strong>21 febrero.-</strong> El diputado panista V&iacute;ctor Manuel S&aacute;nchez compareci&oacute; ante el ITEI para la audiencia del recurso de transparencia que solicit&oacute; para resolver los puntos de omisi&oacute;n de informaci&oacute;n en la p&aacute;gina de internet de la ASEJ.</p>',1,'2013-02-21','',0,2),(79,'','','<p><strong>26 de febrero.-</strong> El diputado panista Hern&aacute;n Cort&eacute;s rinde informe de los trabajos realizados durante los cuatro meses que estuvo a&nbsp; cargo de la Presidencia del Congreso del Estado. Se&ntilde;ala que con la reforma constitucional que da lugar a la Fiscal&iacute;a General; los diputados muestran clara disposici&oacute;n para que colabore con el gobernador electo, Arist&oacute;teles Sandoval D&iacute;az para buscar juntos la construcci&oacute;n de un mejor Jalisco\".<br /> Tambi&eacute;n expuso que durante su gesti&oacute;n como representante del Legislativo no utiliz&oacute; recursos financieros o gastos de representaci&oacute;n, esto, como muestra de la pol&iacute;tica de austeridad que debe practicarse en el Congreso de Jalisco.</p>',1,'2013-02-26','',0,2),(80,'','','<p><strong>26 de febrero.-</strong> Se realiza en el Congreso&nbsp; el Curso sobre la Legislaci&oacute;n en Materia de Trata de Personas convocado por el diputado panista Juan Jos&eacute; Cuevas Garc&iacute;a, presidente de la Comisi&oacute;n de Readaptaci&oacute;n Social en el Congreso del Estado.</p>',1,'2013-02-26','',0,2),(81,'','','<p><strong>27 de febrero.-</strong> La diputada del PAN Gabriela   Andal&oacute;n Becerra asume la presidencia del Comit&eacute; de Peticiones y Atenci&oacute;n Ciudadana en sustituci&oacute;n del diputado panista V&iacute;ctor Manuel S&aacute;nchez Orozco. La legisladora se compromete a lograr una mujer vinculaci&oacute;n de los diputados con la sociedad.</p>',1,'2013-02-27','',0,2),(82,'','','<p><strong>27 de febrero.-</strong> El diputado panista Gildardo Guerrero Torres, Presidente del Comit&eacute; de Proceso Legislativo present&oacute; propuesta para ordenar y eficientar el trabajo de las comisiones del congreso.</p>',1,'2013-02-27','',0,2),(83,'','','<p><strong>28 de febrero.-</strong> Rinde protesta de ley el legislador del PAN V&iacute;ctor Manuel S&aacute;nchez   Orozco como Presidente de la Comisi&oacute;n de Readaptaci&oacute;n Social. Sustituye al diputado panista Juan Jos&eacute; Cuevas quien propone realizar visitas a los centros penitenciarios para conocer sus necesidades.</p>',1,'2013-02-28','',0,2),(130,'','','',0,'0000-00-00','',0,0),(131,'','','',0,'0000-00-00','',0,0),(132,'Ampliar al 100 por ciento el programa de Bienevales, pide el legislador Juan José Cuevas','','<p class=\"MsoNormal\" style=\"text-align: right;\" align=\"right\">Guadalajara, Jalisco 17 de junio de 2013</p>\r\n<p class=\"MsoNormal\" style=\"text-align: right;\" align=\"right\">CMP0613-63</p>\r\n<p class=\"MsoNormal\" style=\"text-align: right;\" align=\"right\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><strong><span style=\"font-size: 14.0pt;\">Ampliar al 100 por ciento el programa de Bienevales, pide el legislador Juan Jos&eacute; Cuevas</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><em>&nbsp;</em></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><em>&nbsp;</em></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><em>Programa universal, no limitado a los nueve municipios de la zona metropolitana.</em></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><em>Que el registro de estudiantes para recibir dicho beneficio se ampl&iacute;e hasta septiembre y que sea por medio de las listas autorizadas en las escuelas.</em></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; En rueda de prensa, el diputado panista Juan Jos&eacute; Cuevas Garc&iacute;a propone al gobierno del estado, ampliar el programa de Bienevales para todos los estudiantes del estado desde la educaci&oacute;n secundaria a la universidad.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Acompa&ntilde;ado por los legisladores de su partido, V&iacute;ctor Manuel S&aacute;nchez Orozco y Guillermo Mart&iacute;nez Mora, el legislador Cuevas hizo un an&aacute;lisis del programa de subsidio al transporte anunciado por el gobernador, al cual, consider&oacute; muy distante de lo que se ofreci&oacute; durante&nbsp; la oferta electoral de su campa&ntilde;a: &ldquo;&hellip;ya que por lo anunciado recientemente, s&oacute;lo ser&iacute;a una ampliaci&oacute;n del Programa Llega, el cual se implement&oacute; desde la pasada administraci&oacute;n&rdquo;.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Se&ntilde;al&oacute; que con los 125 millones de pesos anuales, apenas alcanzar&aacute; para cubrir el transporte de 155 mil estudiantes &nbsp;(s&oacute;lo el 15 por ciento) y no la totalidad en el estado, la cual representa a 2 millones 100 mil ni&ntilde;os y j&oacute;venes desde primarias, secundarias, preparatorias y universidades, lo que significar&iacute;a financieramente por lo menos dos mil&nbsp; quinientos millones de pesos&nbsp; anuales.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Por tal motivo, el legislador propuso que sean considerados a estudiantes que utilizan transporte p&uacute;blico a&uacute;n dentro de los l&iacute;mites de su municipio, llegando de esa manera a todas las regiones del estado. Adem&aacute;s propuso que para garantizar la universalidad del programa, el registro de estudiantes sea mediante las listas autorizadas en las escuelas p&uacute;blicas del estado de Jalisco ya que e sistema actual de registro es un filtro que deja fuera a muchos estudiantes.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cabe se&ntilde;alar que el diputado Juan Jos&eacute; Cuevas, vocal de la Comisi&oacute;n de Educaci&oacute;n&nbsp; ha pedido en reiteradas ocasiones, la visita del Secretario de Educaci&oacute;n a fin de que dialogue con los legisladores. El d&iacute;a de hoy, el legislador pidi&oacute; que tambi&eacute;n se extienda la invitaci&oacute;n a la&nbsp; Secretar&iacute;a de Desarrollo e Integraci&oacute;n Social.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><em>&nbsp;</em></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Por su parte el diputado V&iacute;ctor S&aacute;nchez, indic&oacute; que se present&oacute; aproximadamente hace dos meses atr&aacute;s una iniciativa por parte del PAN que busca reformas en&nbsp; la Ley de Vialidad&nbsp; para que con el simple hecho de que los estudiantes al subir al cami&oacute;n presenten su credencial de estudiantes, puedan viajar de manera gratuita.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Record&oacute; que dentro de los municipios existen rancher&iacute;as y poblaciones peque&ntilde;as en las cuales viven j&oacute;venes y ni&ntilde;os que deben viajar distancias de tres hasta 10 kil&oacute;metros para ir a la escuela, por lo que no deben quedar rezagados en su preparaci&oacute;n&nbsp; acad&eacute;mica por parte de &nbsp;los est&iacute;mulos o apoyos del gobierno.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-06-17','IMG4240_cortada.jpg',0,1),(85,'','','<p><strong>10 de enero.-</strong> Se re&uacute;ne el diputado panista, Guillermo Mart&iacute;nez Mora, Presidente de la Comisi&oacute;n de Educaci&oacute;n con l&iacute;deres magisteriales del SNTE. El objetivo del encuentro se dio para &nbsp;presentar &nbsp;un punto de acuerdo ante el Pleno del Congreso para la discusi&oacute;n y aprobaci&oacute;n de la iniciativa de Reforma Educativa propuesta por el Presidente de la Rep&uacute;blica</p>\r\n<p>&nbsp;</p>',1,'2013-01-10','',0,2),(86,'','','<p><strong>14 de Enero.-</strong> Se inaugura en el Patio Central del Palacio Legislativo, la Exposici&oacute;n Terapia del Arte, dibujos hechos por 300 ni&ntilde;os que presentan alg&uacute;n tipo de discapacidad del Centro de Integraci&oacute;n de Tapalpa, Jalisco.&nbsp;La diputada panista Mariana Ar&aacute;mbula Mel&eacute;ndez destac&oacute; que esta exposici&oacute;n es el resultado de la rehabilitaci&oacute;n de estos ni&ntilde;os a trav&eacute;s de terapia art&iacute;stica que difunden &nbsp;diversos programas destinados a rehabilitaci&oacute;n de menores en circunstancias dif&iacute;ciles.</p>',1,'2013-01-14','',0,2),(87,'','','<p><strong>16 de enero.-</strong> Aprueba la Comisi&oacute;n de Puntos Constitucionales, Estudios Legislativos y Reglamentos las disposiciones en materia de educaci&oacute;n contempladas en la reciente reforma Constitucional en la cual se busca fortalecer la autonom&iacute;a de las escuelas. El diputado panista Juan Carlos M&aacute;rquez expres&oacute; que la autonom&iacute;a de los centros escolares debe verse como un generador de participaci&oacute;n de otros entes de la sociedad, como por ejemplo, empresas que quieren aportar apoyos a centros escolares para su mejoramiento.</p>',1,'2013-01-16','',0,2),(88,'','','<p><strong>16 de enero.-</strong> A fin de resolver los problemas que vive el campo de Jalisco, el diputado panista Alberto Esquer Guti&eacute;rrez, Presidente de la Comisi&oacute;n de Desarrollo Agr&iacute;cola trabaja para crear &nbsp;una comisi&oacute;n unida para el campo, la cual se integrar&iacute;a por las comisiones legislativas de Ganader&iacute;a, Desarrollo Agr&iacute;cola &nbsp;y Desarrollo Forestal. La diputada panista Norma Ang&eacute;lica Cordero Prado, Presidenta de la Comisi&oacute;n de Ganader&iacute;a apoya la urgente necesidad de sumar esfuerzos y poder gestionar m&aacute;s recursos para el sector pecuario que representa una de las principales actividades econ&oacute;micas de Jalisco que lo colocan como el principal productor de leche, carne de aves y ma&iacute;z de la naci&oacute;n.</p>\r\n<p>&nbsp;</p>',1,'2013-01-16','',0,2),(89,'','','<p><strong>17 enero.-</strong> En el Pleno del Congreso los diputados panistas Guillermo Mart&iacute;nez Mora y Juan Jos&eacute; Cuevas Garc&iacute;a, fijaron sus posicionamientos respecto a la reforma educativa a nivel federal. Plantearon adecuaciones para que las cuotas que se cobran a los padres de familia para mejorar los planteles educativos, no sean obligatorias ni representen una contraprestaci&oacute;n, sino que el Estado otorgue &nbsp;recursos suficientes para ese fin.</p>',1,'2013-01-17','',0,2),(90,'','','<p><strong>17 de enero.-</strong>&nbsp; Con el objetivo de implementar una pol&iacute;tica austera, transparente y un correcto ejercicio de gobierno, los diputados aprueban en sesi&oacute;n de Pleno, la Comisi&oacute;n Especial para la  Revisi&oacute;n Administrativa y Financiera del Congreso del Estado la cual ser&aacute; presidida por el diputado panista Guillermo Mart&iacute;nez Mora.</p>',1,'2013-01-17','',0,2),(91,'','','<p><strong>17 de enero.-</strong> En sesi&oacute;n de Pleno, el diputado panista V&iacute;ctor Manuel S&aacute;nchez Orozco, expone iniciativa que exhorta al Gobernador del Estado a expedir y publicar el reglamento de la Ley para el Desarrollo Integral del Adulto Mayor as&iacute; como solicitar al Titular del Sistema Tren El&eacute;ctrico, a que se instalen m&aacute;s m&oacute;dulos de atenci&oacute;n del sistema macrob&uacute;s para tramitar las tarjetas de descuento.</p>',1,'2013-01-17','',0,2),(92,'','','<p><strong>17 de enero.-</strong> Los integrantes de la Comisi&oacute;n de Educaci&oacute;n, encabezados por el diputado panista Luis Guillermo  Mart&iacute;nez Mora, presentaron en el Pleno del Congreso&nbsp; iniciativa de decreto donde plantean que se solicite a la C&aacute;mara de Diputados cambios al Art&iacute;culo 3ro. y 73 de la Constituci&oacute;n Pol&iacute;tica de los Estados Unidos Mexicanos, lo que vendr&iacute;a a complementar la reforma integral en materia de educaci&oacute;n que reci&eacute;n se consum&oacute; a nivel nacional. Mart&iacute;nez Mora enfatiz&oacute; la importancia de completar dicha reforma al habilitar la Norma Oficial Mexicana sobre la calidad de la educaci&oacute;n p&uacute;blica y privada, misma que debiera incluir cuatro &aacute;reas principales: materiales y m&eacute;todos educativos, la organizaci&oacute;n escolar, infraestructura deportiva y la idoneidad de los docentes y directivos.</p>\r\n<p>&nbsp;</p>',1,'2013-01-17','',0,2),(93,'','','<p><strong>17 de enero.-&nbsp; </strong>Como medida de prevenci&oacute;n a problemas de salud p&uacute;blica, el diputado panista El&iacute;as I&ntilde;iguez Mej&iacute;a, present&oacute; en sesi&oacute;n de Pleno un acuerdo legislativo donde se propone enviar respetuoso exhorto a los presidentes municipales para que realicen constantemente inspecciones sanitarias a establecimientos donde se sacrifiquen, comercialicen y trasformen productos de origen animal, con el fin de cuidar en todo momento la legal procedencia y la inocuidad de los mismos.</p>',1,'2013-01-17','',0,2),(94,'','','<p><strong>18 de enero.-</strong> El diputado Alberto Esquer Rodr&iacute;guez presenta&nbsp; iniciativa de acuerdo legislativo donde se solicita al Pleno del Congreso del Estado que a la brevedad posible apruebe los dict&aacute;menes al voto de la reforma de los art&iacute;culos 24 y 40 de la  Constituci&oacute;n Pol&iacute;tica de los Estados Unidos Mexicanos, en calidad de integrante del Constituyente Permanente.</p>',1,'2013-01-18','',0,2),(95,'','','<p><strong>24 enero.-</strong> La Comisi&oacute;n de Administraci&oacute;n aprob&oacute; el Tabulador de Sueldos del Congreso. El diputado panista Jos&eacute; Gildardo Guerrero Torres, vocal de &eacute;sta Comisi&oacute;n manifest&oacute; que este paso es una respuesta a la sociedad para cumplir con los compromisos y objetivos de austeridad, orden y transparencia en la administraci&oacute;n del Congreso.</p>\r\n<p>&nbsp;</p>',1,'2013-01-24','',0,2),(96,'','','<p><strong>18 de enero.-&nbsp; </strong>Con el objetivo de explotar a su m&aacute;ximo las riquezas naturales, culturales, deportivas, hist&oacute;ricas y sociales de Jalisco, la diputada Mariana Ar&aacute;mbula Mel&eacute;ndez, present&oacute; en el Pleno del Congreso, iniciativa que reforma la Ley de Turismo del Estado de Jalisco; la cual sugiere incorporar dos nuevas clasificaciones de turismo: turismo rural y turismo deportivo.</p>\r\n<p>&nbsp;</p>',1,'2013-01-18','',0,2),(97,'','','<p><strong>24 de enero.-</strong> El diputado panista El&iacute;as Octavio I&ntilde;iguez Mej&iacute;a, vocal de la Comisi&oacute;n de Juventud y Deporte expone su inquietud para que se capacite a las mujeres&nbsp; de los 125&nbsp; municipios que se interesen en desarrollar un negocio. Esto durante la visita de Margarita S&aacute;nchez S&aacute;inz y Karime Ramos Presidente y Directora General, respectivamente, de la Asociaci&oacute;n  Mexicana de Mujeres Empresarias. Propuso el legislador organizar un plan de trabajo el cual desarrolle &nbsp;talleres de capacitaci&oacute;n en las cabeceras distritales.&nbsp;</p>',1,'2013-01-24','',0,2),(98,'','','<p><strong>28 de enero.-</strong> Con el prop&oacute;sito de trabajar en todo lo relativo a la clasificaci&oacute;n de informaci&oacute;n en sus diferentes categor&iacute;as, como la p&uacute;blica o reservada, se instala el Comit&eacute; de Clasificaci&oacute;n de Informaci&oacute;n en materia de transparencia del Congreso del Estado, presidido por el legislador panista Hern&aacute;n Cort&eacute;s Berumen.</p>',1,'2013-01-28','',0,2),(99,'','','<p><strong>29 de enero.-</strong> La Comisi&oacute;n de Ciencia y Tecnolog&iacute;a presidida por la legisladora panista Mariana Ar&aacute;mbula Mel&eacute;ndez&nbsp; valid&oacute; el Plan Anual de Trabajo para este a&ntilde;o 2013, que se basa en legislar para promover la implementaci&oacute;n de acceso gratuito e Internet en centros educativos y espacios p&uacute;blicos, as&iacute; como para que la Zona Metropolitana de Guadalajara se consolide como una ciudad de conocimiento. Adem&aacute;s se pretende adecuar el marco legal para impulsar centros especializados en innovaci&oacute;n e investigaci&oacute;n cient&iacute;fica y tecnol&oacute;gica, con el prop&oacute;sito de posicionar a Jalisco como l&iacute;der en esta materia.</p>',1,'2013-01-29','',0,2),(100,'','','<p><strong>30 de enero.- </strong>En reconocimiento a su esfuerzo, el diputado Alberto   Esquer Guti&eacute;rrez acompa&ntilde;ado de sus compa&ntilde;eros de fracci&oacute;n, diputados Hern&aacute;n Cort&eacute;s Berumen, Ricardo Rodr&iacute;guez Jim&eacute;nez y El&iacute;as I&ntilde;iguez Mej&iacute;a entregaron reconocimientos a empresas del Sur de Jalisco:&nbsp;Chocolate Rey Amargo S. A de C. V.; Agro Gonz&aacute;lez S.P.R. de R.L.; Agua Purificada Nevado S.A. de C.V.; Industrializadora de productos l&aacute;cteos y derivados Los Cuates as&iacute; como &nbsp;Industrias Maga&ntilde;a S. A. de C. V.&nbsp;</p>\r\n<p><strong></strong></p>\r\n<p>&nbsp;</p>',1,'2013-01-30','',0,2),(101,'','','<p><strong>31 de enero.-</strong> A fin de conocer la situaci&oacute;n que enfrentan las c&aacute;rceles en Jalisco, acuerda el diputado panista Juan Jos&eacute; Cuevas, Presidente de la Comisi&oacute;n de Readaptaci&oacute;n Social invitar a Jos&eacute; Gonz&aacute;lez Jim&eacute;nez, Comisario General de Prevenci&oacute;n y Reinserci&oacute;n Social para dialogar sobre las condiciones que enfrentan los reclusorios en Jalisco.</p>',1,'2013-01-31','',0,2),(102,'','','<p><strong>3 de junio.-</strong> En rueda de prensa, el diputado panista Juan Carlos M&aacute;rquez Rosas, Presidente de la Comisi&oacute;n de Responsabilidades, da a conocer una serie de irregularidades detectadas en el Comit&eacute; Administrador del Programa Estatal de Construcci&oacute;n de Escuelas (CAPECE) durante la administraci&oacute;n de Salvador Uribe Av&iacute;n, ex director de dicho organismo durante el sexenio pasado.</p>',1,'2013-06-03','',0,2),(103,'','','<p><strong>4 de junio.-</strong> En rueda de prensa, el diputado V&iacute;ctor Manuel S&aacute;nchez Orozco, Presidente de la Comisi&oacute;n de Readaptaci&oacute;n Social dio a conocer las conclusiones del primer Foro del Sistema Penal Acusatorio, Juicios Orales y Justicia Alternativa llevado a cabo en las instalaciones del Congreso los d&iacute;as&nbsp; 21 y 22 de mayo.&nbsp;&nbsp; Habl&oacute; de la necesidad de seguir construyendo avances para implementar un nuevo sistema penal en Jalisco</p>',1,'2013-06-04','',0,2),(104,'','','<p><strong>5 de junio.- </strong>En rueda de prensa,&nbsp; diputados del PAN se&ntilde;alan irregularidades detectadas en la pasada legislatura. Gildardo Guerrero Torres indica que se har&aacute;n las diligencias necesarias para que se finquen las responsabilidades a los actos&nbsp; llevados a cabo por los ex secretarios de la pasada legislatura, Carlos Corona Mart&iacute;n del Campo y Jos&eacute; Manuel Correa Cese&ntilde;a, en la firma y pago de multimillonario contrato a supuesta empresa de asesoramiento.</p>',1,'2013-06-05','',0,2),(105,'','','<p><strong>6 de junio.-</strong> El diputado panista Jaime D&iacute;az Brambila presenta exhorto a la Unidad de Protecci&oacute;n Civil del Estado, para que en funci&oacute;n de sus atribuciones identifique los canales de aguas pluviales en la Zona Metropolitana de Guadalajara que se encuentran sin protecci&oacute;n ni se&ntilde;alamientos adecuados, as&iacute; como lograr coordinaci&oacute;n con los Ayuntamientos correspondientes a efecto de garantizar la seguridad e integridad f&iacute;sica de los transe&uacute;ntes.</p>',1,'2013-06-06','',0,2),(110,'','','<p><strong>6 de junio.-</strong> Presenta el diputado panista Juan Carlos M&aacute;rquez Rosas  iniciativa para elevar las sanciones a los omisos patrimoniales.<strong> </strong>La medida generar&iacute;a&nbsp; un fondo que puede ser utilizado en el desarrollo y crecimiento del sistema de control de declaraciones patrimoniales.<strong> </strong>Adem&aacute;s coadyuvar&iacute;a a frenar los casos de servidores p&uacute;blicos que amasan fortunas a partir del ejercicio de un cargo p&uacute;blico, lo que ofende la &eacute;tica del servicio, la instituci&oacute;n y al ciudadano.</p>',1,'2013-06-06','',0,2),(107,'','','<p><strong>6 de junio.-</strong> Ante el Pleno del Congreso, el diputado panista Juan Jos&eacute; Cuevas demand&oacute; al gobierno estatal transporte gratuito para todos los estudiantes, incluyendo todo el universo de j&oacute;venes del estado de Jalisco, como los estudiantes de Puerto Vallarta. Urgi&oacute; al gobierno para que se replante el programa llamado Bienevale ya que de deben trasparentar las reglas de operaci&oacute;n.</p>',1,'2013-06-06','',0,2),(108,'','','<p><strong>6 de junio.-</strong> Aprueba&nbsp; el Pleno del Congreso que la diputada panista Norma Ang&eacute;lica Cordero Prado represente al PAN ante la Comisi&oacute;n Especial legislativa que da seguimiento a la presa El Zapotillo. La diputada Cordero  Prado es la representante del distrito 2 con cabecera en Lagos de Moreno, zona por donde pasar&iacute;a parte de esta obra hidr&aacute;ulica.</p>',1,'2013-06-06','',0,2),(109,'','','<p><strong>6 de junio.-</strong> Ante el Pleno del Congreso, el diputado panista Juan Jos&eacute; Cuevas demand&oacute; al gobierno estatal transporte gratuito para todos los estudiantes, incluyendo todo el universo de j&oacute;venes del estado de Jalisco, como los estudiantes de Puerto Vallarta. Urgi&oacute; al gobierno para que se replante el programa llamado Bienevale ya que de deben trasparentar las reglas de operaci&oacute;n.</p>',1,'2013-06-06','',0,2),(111,'','','<p><strong>6 de junio.-</strong> Se lleva a cabo la &nbsp;Firma del Convenio de Colaboraci&oacute;n entre el Gobierno del Estado y la Asociaci&oacute;n Civil \"Alcanzando Ni&ntilde;os en las Fronteras\". Los diputados panistas Mariana Ar&aacute;mbula Mel&eacute;ndez y El&iacute;as Octavio I&ntilde;&iacute;guez Mej&iacute;a se congratularon porque en Jalisco se trabaja en acciones que protegen a &nbsp;ni&ntilde;os v&iacute;ctimas de abuso sexual infantil, maltrato infantil y en circunstancias dif&iacute;ciles. Se comprometieron a seguir trabajando desde el Poder Legislativo para adecuar marcos jur&iacute;dicos,&nbsp; programas y pol&iacute;ticas que garanticen el pleno y sano desarrollo de la infancia.</p>',1,'2013-06-06','',0,2),(112,'','','<p><strong>6 de junio.-</strong> En el marco de la conmemoraci&oacute;n del \"D&iacute;a Internacional del Ni&ntilde;o, V&iacute;ctimas de Agresi&oacute;n\", la diputada panista Mariana Ar&aacute;mbula Mel&eacute;ndez present&oacute; al Pleno del Congreso, la&nbsp; iniciativa de Ley que propone tipificar el delito de maltrato infantil en &nbsp;Jalisco, as&iacute; como la adici&oacute;n y modificaci&oacute;n de diversos art&iacute;culos para buscan garantizar&nbsp; el libre&nbsp; y sano desarrollo de los infantes.</p>',1,'2013-06-06','',0,2),(113,'','','<p><strong>6 de junio.-</strong> Aprob&oacute; el Pleno del Congreso elevar iniciativa al Congreso de la Uni&oacute;n para reformar el art&iacute;culo 109 del C&oacute;digo Fiscal de la Federaci&oacute;n, con el prop&oacute;sito de hacer m&aacute;s severas las sanciones a quien cometa el delito de defraudaci&oacute;n fiscal. El diputado del PAN Gildardo  Guerrero Torres se&ntilde;al&oacute; que situaciones de esta naturaleza han generado el desfalco de las finanzas p&uacute;blicas. Se propone que cuando el autor del delito sea el titular o responsable de una entidad p&uacute;blica y se cometa en el ejercicio de sus funciones, las penas podr&aacute;n duplicarse y el servidor p&uacute;blico responsable ser&aacute; inhabilitado hasta por seis a&ntilde;os para ejercer cualquier cargo p&uacute;blico.</p>',1,'2013-06-06','',0,2),(114,'','','<p><strong>6 de junio.-</strong> En sesi&oacute;n del Pleno, los diputados del PAN Gabriela Andal&oacute;n Becerra, Juan Jos&eacute; Cuevas Garc&iacute;a, Jos&eacute; Hern&aacute;n Cort&eacute;s Berumen, Jaime Ismael D&iacute;az Brambila, Jos&eacute; Gildardo  Guerrero Torres, El&iacute;as Octavio I&ntilde;&iacute;guez Mej&iacute;a y Juan Carlos M&aacute;rquez Rosas, presentan jen conjunto con otros diputados, exhorto al Ejecutivo de Jalisco para que &nbsp;considere la problem&aacute;tica que viven &nbsp;c&aacute;rceles municipales. Piden que se les &nbsp;apoye econ&oacute;micamente para que el sistema penitenciario sea efectivo.</p>',1,'2013-06-06','',0,2),(115,'','','<p><strong>6 de junio.-</strong> Al inicio de la sesi&oacute;n de Pleno, pide el diputado panista Gildardo  Guerrero Torres guardar un minuto de silencio por el fallecimiento del se&ntilde;or Gildardo G&oacute;mez Ver&oacute;nica, pol&iacute;tico con destacada trayectoria&nbsp; dentro del PAN Jalisco.</p>',1,'2013-06-06','',0,2),(116,'','','<p><strong>6 de junio.-</strong> Presenta el diputado panista Gildardo Guerrero Torres, una iniciativa para &nbsp;salvaguardar el bienestar de los animales, elevando al rango constitucional la obligaci&oacute;n del Estado y de los municipios de su cuidado.</p>',1,'2013-06-06','',0,2),(117,'','','<p><strong>6 de junio.-</strong> Con el prop&oacute;sito de garantizar certidumbre en el proceso de elecci&oacute;n de consejeros electorales, el diputado panista Juan   Jos&eacute; Cuevas Garc&iacute;a present&oacute; una iniciativa de ley que pretende entre otras cosas, establecer como obligaci&oacute;n para ser consejero electoral aprobar con un m&iacute;nimo de 80 puntos el examen te&oacute;rico,&nbsp;que para los cargos de consejeros exista la posibilidad de ampliaci&oacute;n del cargo y que se establezca como requisito de elegibilidad que los aspirantes a consejeros tengan m&aacute;s de 35 a&ntilde;os de edad y cuenten con un titulo de licenciatura con antig&uuml;edad de al menos 10 a&ntilde;os.</p>',1,'2013-06-06','',0,2),(118,'','','<p><strong>6 de junio.-</strong> El diputado panista Hern&aacute;n Cort&eacute;s Berumen plante&oacute; un Acuerdo Legislativo que propone girar exhorto al Ejecutivo Federal para que a trav&eacute;s de la Secretar&iacute;a de Comunicaciones y Transportes supervise &nbsp;obras que Ferromex realiza en diversas colonias de Guadalajara as&iacute; como su impacto al medio ambiente. A su vez env&iacute;a exhorto a la CEDHJ para investigar las posibles violaciones de los derechos de los vecinos del &aacute;rea debido a que fueron instaladas mallas de protecci&oacute;n alrededor de las colonias dej&aacute;ndolas incomunicadas entre si.</p>',1,'2013-06-06','',0,2),(119,'','','<p><strong>11 de junio.-</strong> Acuden al Congreso autoridades y habitantes del municipio de Chapala, inconformes con parqu&iacute;metros instalados desde la pasada administraci&oacute;n. El diputado panista Jos&eacute; Luis Mungu&iacute;a Cardona se compromete a brindarles asesor&iacute;a jur&iacute;dica en las demandas que interpondr&aacute;n ante el TAE, adem&aacute;s de hacer un pronunciamiento en el Pleno del Congreso.</p>\r\n<p>&nbsp;</p>',1,'2013-06-11','',0,2),(120,'','','<p><strong>11 de junio.- </strong>La diputada panista Norma Ang&eacute;lica Cordero Prado gestion&oacute; con &nbsp;autoridades de la Inmobiliaria y Promotora de Vivienda de Jalisco (Iprovipe), y con funcionarios del ayuntamiento de Lagos de Moreno en beneficio de alrededor de 600 familias de las colonias Cristeros I y Cristeros II, quienes desde hace tiempo cuentan con problemas de carteras vencidas y solicitud de escrituras. Pidi&oacute; la legisladora &nbsp;revisar caso por caso los adeudos, para que exista conformidad y beneficio tanto para la instituci&oacute;n como para&nbsp; las familias tenga seguridad jur&iacute;dica sobre su vivienda.</p>',1,'2013-06-11','',0,2),(121,'','','<p><strong>12 de junio.-</strong> La legisladora panista Mariana Ar&aacute;mbula, Presidente de la Comisi&oacute;n de Ciencia y Tecnolog&iacute;a expres&oacute; el gran inter&eacute;s que existe en el Congreso por estrechar v&iacute;nculos con el Ejecutivo y dem&aacute;s entes involucrados en el tema.<strong> </strong>Acudi&oacute; a la reuni&oacute;n de la<strong> </strong>comisi&oacute;n el Maestro Jaime Reyes Robles, Secretario de Innovaci&oacute;n quien expuso los trabajos y logras alcanzados durante los primeros 100 d&iacute;as de actividades.</p>',1,'2013-06-12','',0,2),(122,'','','<p><strong>12 de junio.-</strong> &nbsp;Trabaja la Comisi&oacute;n de Salud presidida por el diputado panista El&iacute;as Octavio I&ntilde;&iacute;guez en distintos temas de salud. El legislador ha pedido al Secretario de Salud, Jaime Agust&iacute;n&nbsp; Gonz&aacute;lez &Aacute;lvarez activar programas de prevenci&oacute;n&nbsp; contra el dengue, con la participaci&oacute;n de los infantes; de igual manera crear conciencia de las enfermedades cardiovasculares a fin de que Jalisco se convierta en el primer estado cardio protegido.</p>',1,'2013-06-12','',0,2),(123,'','','<p><strong>13 de junio.-</strong> Los diputados panistas Gildardo  Guerrero Torres y Alberto Esquer Guti&eacute;rrez  expresaron su apoyo a los migrantes para que desde el Congreso estatal avancen reformas que permitan el voto y la participaci&oacute;n de los mexicanos residentes en Estados Unidos. Diputados de la Junta de Coordinaci&oacute;n Pol&iacute;tica y de la Comisi&oacute;n de Asuntos Migratorios, escucharon las peticiones de los representantes de federaciones de los Estados Unidos, liderados por Sergio Su&aacute;rez, Presidente de la Confedejal.</p>',1,'2013-06-13','',0,2),(124,'','','<p><strong>13 de junio</strong>. En sesi&oacute;n extraordinaria del Pleno, se eligi&oacute; la Mesa  Directiva para el periodo 1 de julio al 31 de octubre de &eacute;ste a&ntilde;o. Los diputados panistas Gabriela Andal&oacute;n Becerra  y Juan Jos&eacute; Cuevas Garc&iacute;a  ocupar&aacute;n los cargos de Secretario y Prosecretario respectivamente.&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-06-13','',0,2),(125,'','','<p><strong>15 de junio.- </strong>&nbsp;Un total de 34 j&oacute;venes entre los 18 y 26 a&ntilde;os, formaron parte del IV Parlamento Juvenil \"Alonso Lujambio\" (1962-2012), evento&nbsp; convocado por la Secretar&iacute;a de Acci&oacute;n Juvenil del PAN Jalisco y apadrinado por el diputado Gildardo Guerrero Torres, Coordinador de los diputados panistas en el Congreso del Estado.</p>\r\n<p>En su mensaje, el diputado Guerrero Torres, expres&oacute; a los futuros representantes pol&iacute;ticos provenientes de varios municipios, la necesidad de ejercer con congruencia la pol&iacute;tica, la cual requiere de sensibilidad para ejercer las bases que la sustentan: tolerancia, paciencia y bondad, valores humanistas que los fundadores del PAN enaltecieron y&nbsp; los distinguieron de otros partidos.&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-06-15','',0,2),(126,'','','<p><strong>17 de junio. </strong>&nbsp;En rueda de prensa, el diputado panista Juan Jos&eacute; Cuevas Garc&iacute;a  propone al gobierno del estado, ampliar el programa de Bienevales para todos los estudiantes del estado desde la educaci&oacute;n secundaria hasta la universidad. Se&ntilde;al&oacute; que deben ser considerados &nbsp;los estudiantes que utilizan transporte p&uacute;blico a&uacute;n dentro de los l&iacute;mites de su municipio, llegando de esa manera a todas las regiones del estado. Adem&aacute;s, pide&nbsp; &nbsp;garantizar la universalidad del programa con un&nbsp; registro basado en las listas autorizadas en las escuelas p&uacute;blicas del estado de Jalisco ya que el sistema actual de registro deja fuera a muchos estudiantes.</p>\r\n<p>&nbsp;</p>',1,'2013-06-17','',0,2),(127,'','','<p><strong>17 de junio</strong>. Aprueba la Comisi&oacute;n de Educaci&oacute;n presidida por el diputado panista Guillermo Mart&iacute;nez Mora, la iniciativa de la diputada panista Mariana Ar&aacute;mbula Mel&eacute;ndez, en la cual se reforma el art&iacute;culo 7 de la Ley de Educaci&oacute;n del Estado para promover el conocimiento responsable y seguro al utilizar las nuevas tecnolog&iacute;as de la informaci&oacute;n, ponderando y difundiendo en conjunto con los padres de familia los alcances del derecho a la protecci&oacute;n de los datos personales.</p>\r\n<p>&nbsp;</p>',1,'2013-06-17','',0,2),(133,'','','<p><strong>18 de junio.-</strong> Se&nbsp; instala el Comit&eacute; Consultivo para la Reforma Penal en Jalisco, coordinado por el diputado panista V&iacute;ctor Manuel S&aacute;nchez Orozco. Las cinco mesas de trabajo presididas por expertos en la materia trabajar&aacute;n una vez a la semana durante aproximadamente dos meses, tiempo en el que se estima tener el an&aacute;lisis o ruta cr&iacute;tica de lo que se requiere en Jalisco. En los c&iacute;rculos de trabajo de dichas mesas podr&aacute; participar&aacute;n acad&eacute;micos, funcionarios, maestros, estudiantes en derecho y toda la sociedad en general, interesada en el tema.&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-06-18','',0,2),(134,'','','<p><strong>18 de junio</strong>. Para aclarar dudas de los diputados sobre la iniciativa de Ley de Movilidad del Ejecutivo, compareci&oacute; el Secretario Mauricio Gudi&ntilde;o al Congreso de Jalisco. El diputado panista Gildardo Guerrero Torres indic&oacute; que la iniciativa deja 50 por ciento intacta la actual Ley de Movilidad. \"Est&aacute;n presumiendo un nuevo modelo de transporte que en esencia, es lo mismo. Por su parte los diputados de Acci&oacute;n Nacional Alberto Esquer Guti&eacute;rrez  y Hern&aacute;n Cortes Berumen se&ntilde;alaron que la iniciativa tiene errores de forma, como los nombres de algunas Secretar&iacute;as, lo que podr&iacute;a crear problemas al momento de su aplicaci&oacute;n.</p>\r\n<p>&nbsp;</p>',1,'2013-06-18','',0,2);
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
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_asigna_iniciativa`
--

LOCK TABLES `perfil_asigna_iniciativa` WRITE;
/*!40000 ALTER TABLE `perfil_asigna_iniciativa` DISABLE KEYS */;
INSERT INTO `perfil_asigna_iniciativa` VALUES (83,14,5,1),(2,7,3,1),(3,7,4,1),(82,14,1,1),(5,7,2,1),(6,2,6,1),(7,2,7,1),(8,2,8,1),(103,14,25,1),(10,9,10,1),(11,9,11,1),(84,3,81,1),(13,4,13,1),(14,4,14,1),(15,14,15,1),(16,4,16,1),(17,4,17,1),(18,4,18,1),(19,6,19,1),(20,6,20,1),(21,6,21,1),(22,6,22,1),(23,6,23,1),(24,6,24,1),(104,11,94,1),(26,13,26,1),(27,13,27,1),(28,13,28,1),(29,13,29,1),(30,13,30,1),(31,13,31,1),(32,13,32,1),(33,13,33,1),(34,13,34,1),(35,13,35,1),(36,13,36,1),(37,13,37,1),(38,13,38,1),(39,13,39,1),(40,13,40,1),(41,5,41,1),(42,5,42,1),(43,5,43,1),(44,5,44,1),(45,5,45,1),(46,5,46,1),(47,5,47,1),(48,5,48,1),(49,5,49,1),(50,5,50,1),(51,12,51,1),(52,12,52,0),(53,11,53,1),(54,11,54,1),(55,11,55,1),(56,11,56,1),(57,8,57,1),(58,8,58,1),(59,1,59,1),(60,1,60,1),(61,1,61,1),(62,10,62,1),(63,10,63,1),(64,10,64,1),(65,10,65,1),(66,10,66,1),(67,10,67,1),(68,10,68,1),(69,10,69,1),(70,10,70,1),(71,3,71,1),(72,8,72,1),(73,8,73,1),(74,8,74,1),(75,8,75,1),(76,1,76,1),(77,8,77,1),(78,8,78,1),(79,4,78,1),(80,8,79,1),(81,8,80,1),(85,3,82,1),(86,3,83,1),(87,3,84,1),(88,3,85,1),(89,3,86,1),(90,3,87,1),(91,3,88,1),(92,3,89,1),(93,3,90,1),(94,3,91,1),(95,3,92,1),(96,8,76,1),(97,9,76,1),(98,7,76,1),(99,4,76,1),(100,12,76,1),(101,13,76,1),(102,14,9,1),(105,11,95,1),(107,6,96,1),(109,4,97,1),(110,8,98,1),(111,8,99,1),(112,7,99,0),(113,4,99,0),(114,10,99,0),(115,12,99,0),(116,2,99,0);
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
INSERT INTO `perfil_index` VALUES (0,'ninguno',NULL,'sin_titulo',NULL,0,1,0,NULL,NULL,NULL,NULL,0),(1,'Dip. Norma Angélica Cordero Prado','','dip_norma_angelica_cordero_prado','2',1,1,1,'norma.cordero@congresojal.gob.mx','B2','33-36791510 ext. 1609, 1510','<p><strong>Domicilio:</strong> Constituyentes no. 439, Planta Alta, Col. Centro, Lagos de Moreno, Jalisco.<br /> <strong>Horario:</strong> de 9 a 3 y de 4 a 7, de lunes a viernes.<br /> <strong>Tel&eacute;fono:</strong> 474-7426070.</p>',12),(2,'Dip. Elías Octavio Íñiguez Mejía ','','dip_elias_octavio_iniguez_mejia','3',1,1,1,'dip.elías03@congresojal.gob.mx','F','33-38191010 ext. 1010, 1654','<p><strong>Domicilio: </strong>Calle Progreso no. 50 int. 331, esquina Porfirio D&iacute;az, Col. Centro, Tepatitl&aacute;n de Morelos; Jalisco.<br /> <strong>Tel&eacute;fono:</strong> 378-7153002</p>',2),(3,'Dip. Luis Guillermo Martínez Mora','','dip_luis_guillermo_martinez_mora','10',1,1,1,'guillermo.martinez@congresojal.gob.mx','C2','33-36791511 ext. 1511, 1608','<p><strong>Domicilio: </strong>Millet No. 81-A Col. La Estancia  Zapopan, Jalisco<br /> <strong>tel&eacute;fono:&nbsp;</strong><strong>33-16152500</strong></p>',10),(4,'Dip. J. Gildardo Guerrero Torres','','dip_jose_gildardo_guerrero_torres','12',1,1,1,'gildardo.guerrero@congresojal.gob.mx ','Coordinación del PAN','33-36791504, ext. 1503, 1504','',5),(5,'Dip. Jaime Ismael Díaz Brambila ','','dip_jaime_ismael_diaz_brambila','18',1,1,1,'jaime.diaz@congresojal.gob.mx','W2','33-36791556, ext. 1556, 1656','<p><strong>Domicilio: </strong>Ju&aacute;rez Oriente no. 57-A col. Centro, Uni&oacute;n de Tula, Jalisco.<br /> <strong>horario: </strong>de 9 a 3, de lunes a viernes.<br /> <strong>Tel&eacute;fono: </strong>316-3711110</p>',4),(6,'Dip. José Hernán Cortés Berumen ','','dip_jose_hernan_cortes_berumen','',2,1,1,'hernancortes@congresojal.gob.mx','N2','33-36791531 ext. 1531, 1631','<p>Pr&oacute;xima apertura.</p>',6),(7,'Dip. Alberto Esquer Gutiérrez ','','dip_alberto_esquer_gutierrez','19',1,1,1,'alberto.esquer@congresojal.gob.mx','C1','33-36791512 ext. 1512, 1611','<p><strong>Domicilio:</strong> Col&oacute;n no. 153 Col. Centro, Ciudad Guzm&aacute;n, Jalisco.<br /> <strong>Horario:</strong> de 9 a 2 y de 4 a 6, de lunes a viernes.<br /> <strong>Tel&eacute;fono:</strong> 341-4123669</p>',1),(8,'Dip. Mariana Arámbula Meléndez ','','dip_mariana_arambula_melendez','',2,1,1,'mariana.arambula@congresojal.gob.mx','O2','33-36791533 ext. 1533, 1632','<p>Pr&oacute;xima apertura.</p>',11),(9,'Dip. Gabriela Andalón Becerra ','','dip_gabriela_andalon_becerra','',2,1,1,'gabriela.andalon@congresojal.gob.mx','CH','33-36791538 ext. 1538, 1638','<p><strong>Domicilio:</strong> Argentina no. 888, entre Washington y Espa&ntilde;a, Col. Moderna, Guadalajara, Jalisco.<br /> <strong>Tel&eacute;fono:</strong> 33-33336324</p>',3),(10,'Dip. Victor Manuel Sánchez Orozco ','','dip_victor_sanchez_orozco','8',2,1,1,'victor.sanchez@congresojal.gob.mx','W1','33-36791557 ext. 1557, 1661','<p><strong>Domicilio:</strong> Circunvalaci&oacute;n no.1643, frente al Parque Hundido  Guadalajara, Jal.<br /> <strong>Horario:</strong> de 9 a 7, de lunes a viernes; y de 9 a 3, s&aacute;bado.<br /> <strong>Tel&eacute;fono:</strong> 33-32801176</p>',13),(11,'Dip. Juan Carlos Márquez Rosas ','','dip_juan_carlos_marquez_rosas','9',2,1,1,'juancarlos.marquez@congresojal.gob.mx','K','33-36791574 ext. 1574, 1561 ','<p>Pr&oacute;xima apertura.</p>',8),(12,'Dip. José Luis Munguía Cardona','','dip_jose_luis_munguia_cardona','',2,1,1,'joseluis.munguia@congresojal.gob.mx','B1','33-36791516 ext. 1516, 1689','<p>Pr&oacute;xima apertura.</p>',7),(13,'Dip. Juan José Cuevas García ','','dip_juan_jose_cuevas_garcia','8',2,1,1,'pericuevas@live.com','O1','33-36791575 ext. 1575, 1532','<p><strong>Domicilio:</strong> Av. Francisco Villa no. 453, esquina corregidora, Col. Versalles, Puerto Vallarta, Jalisco.<br /> <strong>Horario:</strong> de 9 a 2 y de 3 a 7, de lunes a viernes.<br /> <strong>Tel&eacute;fono:</strong> 322-2240501.</p>',9),(14,'Grupo Parlamentario','','','',1,1,0,'saargo@gmail.com','','','',0);
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
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_iniciativa`
--

LOCK TABLES `perfil_iniciativa` WRITE;
/*!40000 ALTER TABLE `perfil_iniciativa` DISABLE KEYS */;
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
INSERT INTO `perfil_iniciativa_cat` VALUES (0,'Ninguno',NULL,0,0),(1,'De acuerdo legislativo',NULL,0,0),(2,'Decreto o ley',NULL,0,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_index`
--

LOCK TABLES `template_index` WRITE;
/*!40000 ALTER TABLE `template_index` DISABLE KEYS */;
INSERT INTO `template_index` VALUES (1,'style_index.css','Diputados de Jalisco del PAN','style/header_index.php','style/navbar.php','style/diputados.php','','','','','','index','main_nivel1.php','main_nivel2.php','main_nivel3.php','main_nivel4.php',''),(5,'style_contacto.css','Contacto','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_contacto.php','','','contacto','','','','',''),(8,'style_genealogia.css','Panel de control','style/header.php','style/botones_admin.php','','panel_de_control','contained.php','','style/botones_aux.php','style/footer.php','default','','','','',''),(9,'style_admin.css','Panel de control','style/header.php','style/botones_admin.php','','panel_de_control','panel.php','','style/botones_aux.php','style/footer.php','default','','','','',''),(10,'style_sesion.css','Sesión','','style/navbar.php','','','sesion/contained.php','','banners/detail.php','','sesion','style/navbar2.php','','','',''),(11,'style_index.css','HomeoPop, control de consulta y pacientes','style/header_index.php','style/navbar.php','','','control/contained.php','','style/navbar2.php','','control','','','','',''),(12,'style_diputado.css','style/titulo_diputado.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_diputado.php','','','diputado','','','','',''),(3,'style_ligas.css','ligas de interés','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_ligas.php','','','ligas','','','','',''),(2,'style_corporativa.css','style/titulo_index.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_corporativa.php','','','corporativa','','','','',''),(15,'style_opinion.css','style/titulo_opinion.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_opinion.php','','','opinion','','','','',''),(16,'style_agenda.css','Agenda Legislativa','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_agenda_legislativa.php','','','agenda_legislativa','','','','',''),(17,'','','','','','','','','','','nivel1','style/navbar.php','banners/bann00_banner.php','banners/bann00_tema.php','',''),(18,'','','','','','','','','','','nivel2','try/try.php','','','',''),(19,'','','','','','','','','','','nivel3','banners/bann00_videos.php','banners/bann00_videos_demas.php','banners/bann00_boletines.php','banners/bann00_try_galeria.php',''),(20,'style_videos.css','style/titulo_videos.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_videos_demas.php','','','videos','','','','',''),(21,'style_boletines.css','style/titulo_boletines.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_boletines.php','','','boletines','','','','',''),(22,'style_fotos.css','Galería de fotos','style/header_index.php','style/navbar.php','style/diputados.php','','','try/scroll.php','','','fotos','','','','',''),(24,'style_iniciativas.css','style/titulo_iniciativas.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_iniciativas_diputado.php','','','iniciativas_diputado','','','','',''),(25,'style_iniciativas.css','style/titulo_iniciativas.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_iniciativas.php','','','iniciativas','','','','',''),(26,'style_noticias.css','style/titulo_noticias.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_noticias.php','','','noticias','','','','',''),(27,'style_noticias.css','style/titulo_noticias.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_noticias_previas.php','','','noticias_previas','','','','',''),(28,'style_opinion.css','style/titulo_opinion.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_opiniones_previas.php','','','opiniones_previas','','','','',''),(29,'style_boletines.css','style/titulo_boletines.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_boletines_previos.php','','','boletines_previos','','','','',''),(30,'','','','','','','','','','','nivel4','banners/bann00_diputadosenaccion.php','banners/bann00_twitter_widget.php','banners/bann00_opinion.php','',''),(31,'style_diputadosenaccion.css','Diputados en Acción','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_diputadosenaccion.php','','','diputadosenaccion','','','','','');
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_index`
--

LOCK TABLES `usuario_index` WRITE;
/*!40000 ALTER TABLE `usuario_index` DISABLE KEYS */;
INSERT INTO `usuario_index` VALUES (1,'ferbere','b66a5c2600e9f61e6163bb1051457946','RamsesFigueroa','HellboGDL','webmaster','','ramses@ferbere.com','10·86·2136','11·32·3773','Revolución casi 200','Santa Anita, jalisco',0,1,NULL,NULL,NULL,NULL,NULL),(4,'joseluis','e9209b9f31468079ce1599ad91fa2c44','José Luis','','','','','','','','',0,2,'2013-06-03 05:37:13',NULL,NULL,NULL,NULL),(5,'hector','d3fbd6c997db3997024bdac283c2b44e','Héctor Martínez de Anda','','','','hector.martinez@yahoo.com.mx','','','','',0,2,'2013-06-06 18:49:21',NULL,NULL,NULL,NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_index`
--

LOCK TABLES `video_index` WRITE;
/*!40000 ALTER TABLE `video_index` DISABLE KEYS */;
INSERT INTO `video_index` VALUES (1,'Dip. J.C. Márquez denuncia irregularidades en CAPECE, parte I','3 de junio de 2013','http://www.youtube.com/embed/TeyMIPwpXFI','<p>El Dip. Juan Carlos M&aacute;rquez denuncia irregularidades en CAPECE.</p>',1),(2,'Dip. J.C. Márquez denuncia irregularidades en CAPECE, parte II','2013-06-03','http://www.youtube.com/embed/lzXGvzGl7R8','<p>El Dip. Juan Carlos M&aacute;rquez denuncia irregularidades en CAPECE.</p>',1);
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

-- Dump completed on 2013-06-25  0:46:45