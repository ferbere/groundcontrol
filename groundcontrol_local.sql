-- MySQL dump 10.13  Distrib 5.1.44, for apple-darwin8.11.1 (i386)
--
-- Host: localhost    Database: groundcontrol
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos_index`
--

LOCK TABLES `articulos_index` WRITE;
/*!40000 ALTER TABLE `articulos_index` DISABLE KEYS */;
INSERT INTO `articulos_index` VALUES (1,1,'Napolitano, Guerini: ','',1,'<p>Ancora una volta il Presidente Napolitano ha indicato con saggezza, lucidita e lungimiranza la strada che l Italia &egrave; chiamata a percorrere per uscire da questi anni di crisi e tornare ad essere protagonista in Europa.<br />Lo ha dichiarato Lorenzo Guerini, Vicesegretario del Pd.</p>\r\n<p>Il Partito democratico accoglie le sue parole con tutta la responsabilit&agrave; che investe chi &egrave; chiamato a governare il Paese.<br />Spero -conclude Guerini- che tutti ascoltino il messaggio che il Presidente ha inviato alle forze politiche e sociali e lo tengano in considerazione per le sfide e gli impegni che ci attendono, a partire dalle prossime settimane.</p>\r\n<p>&nbsp;</p>',1,4,'2013-09-23','parola.jpg'),(2,1,'Tom Major al premier: «Chiedi lealtà? Senti chi parla!»','Da che pulpito viene la predica',0,'<p>&laquo;Da che pulpito viene la predica&raquo;. Dopo aver disertato l assemblea del Pd per un mal di schiena, Pierluigi Bersani risponde a distanza di un giorno alle richieste di lealt&agrave; del premier nei confronti della minoranza interna. Lo fa arrivando alla facolt&agrave; di Ingegneria di Roma per la presentazione di un libro. &laquo;In un partito come il Pd, plurale e senza padroni - dice l ex segretario dem - la lealt&agrave; &egrave; la materia prima senza la quale non si va da nessuna parte.  Sento in questi giorni e leggo sui giornali di appelli, prediche sulla lealt&agrave;. Ma non da tutti i pulpitisi possono accettare prediche&raquo;, &laquo;A Renzi auguro di avere molti Bersani in giro&raquo; dice ai giornalisti che gli suggeriscono di dare un consiglio al presidente del Consiglio per evitare i franchi tiratori per il nuovo Colle. &laquo;Mi sono dimesso perch&egrave; hanno fatto fuori Prodi&raquo; aggiunge per rendere pi&ugrave; chiaro il riferimento ai 101 franchi tiratori che affossarono la candidatura del professore. Bersani non lesina critiche al premier: &laquo;Renzi si sbaglia quando parla di opposizione interna nel Pd. Io ho fatto il segretario e so cosa vuol dire minoranza, so cosa vuol dire opposizione&raquo;. E rispetto alle parole di Renzi secondo cui con il progetto lanciato da lui si sono persi vent anni, risponde secco: &laquo;Il Pd &egrave; figlio dell Ulivo e non una fusione tra modernizzatori e cavernicoli&raquo;.</p>\r\n<p>Prima di entrare in sala, Bersani ha ancora qualche parola rivolta all asse con il Cavaliere: &laquo;Berlusconi penso conosca il patto del Nazareno, ma lui non sempre &egrave; sincero. Io i contenuti di quel patto non li conosco, ma penso occorra parlar con tutti. Il patto, poi, &egrave; una parola troppo stretta, forte e non mi piace&raquo;. Intanto, dopo la sfuriata contro il segretario all assemblea nazionale del Pd, Stefano Fassina, ribadisce al Fatto la divisione sostanziale delle minoranze antirenziane dentro il partito: &laquo;Adesso continuiamo a fare opposizione dall  interno nel merito, in Parlamento. La scissione non &egrave; nei miei progetti. Il mio impegno &egrave; nel Pd&raquo;. L arrembaggio alla diligenza della segreteria non c &egrave; stato, e gli interventi dei critici, come Cuperlo e D Attorre, sono stati talmente pacati che a dare notizia &egrave; finita per essere la richiesta di rispetto dell ex responsabile economia dei dem, cui Renzi ha risposto con molto meno enfasi: &laquo;nessuna caricatura della minominoranza ma chiedo lealt&agrave;&raquo;.</p>\r\n<p>Il vicesegretario, Debora Serracchiani, renziana di ferro, si &egrave; affrettata a smontare le implicazioni politiche dell attacco di Fassina alla linea di Renzi: &laquo;Mi &egrave; parso abbia espresso soprattutto una sofferenza personale. Mi sembra isolato anche rispetto alla gran parte della minoranza dem. Le posizioni di Cuperlo e di Speranza che avevano espresso con chiarezza il loro dissenso nelle settimane scorse sulle riforme, sono state pi&ugrave; in linea con la richiesta di Renzi di creare le condizioni perch&eacute; tutto il Pd si impegni in un piano di riforme cos&igrave; importante come quello che abbiamo impostato&raquo;, ha dichiarato a Repubblica. I renziani percepiscono un riallontanamento dei vari pezzi del fronte di sinistra e cercano di metterli uno contro l altro. Strategia quasi obbligata per il premier in un passaggio delicato come quello attuale, in da una parte incombe il rischio di un commissariamento dell Ue, prima che l iter delle riforme promesse dall esecutivo sia giunto al termine, e dall altra continua la discesa in termini di consensi dell ex sindaco di Firenze e del partito.</p>\r\n<p>Secondo gli ultimi dati raccolti dall istituto Ix&eacute; per la trasmissione Agor&agrave;, continua il calo per i dem, che perdono lo 0,3% in una settimana, attestandosi al 38,1%, ma quello che preoccupa &egrave; la perdita del 10% di popolarit&agrave; del premier in meno di due mesi. Anche per questo, &egrave; probabile che il premier tenga duro e eviti di andare alle elezioni in un quadro cos&igrave; incerto, a meno di non riuscire a portare a termine una legge elettorale a lui favorevole. A confermare la tenuta del governo, Debora Serracchiani, dice che Renzi alle elezioni &laquo;non ci vuole assolutamente andare. Far&agrave; il segretario del Pd fino al 2017 e il premier fino al 2018 perch&eacute; non si sente la necessit&agrave; n&eacute; di nuove elezioni n&eacute;, come qualcuno vorrebbe, di un altro presidente del Consiglio&raquo;.</p>\r\n<p>&nbsp;</p>',1,4,NULL,'tom-major10.jpg');
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
  `orientacion` smallint(2) NOT NULL DEFAULT '1',
  `visible` smallint(1) NOT NULL DEFAULT '0',
  `nombre` varchar(250) NOT NULL,
  `contenido` text,
  `orden` int(2) NOT NULL DEFAULT '0',
  `banner` smallint(2) NOT NULL DEFAULT '6',
  `liga` varchar(250) NOT NULL,
  `count` int(11) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners_index`
--

LOCK TABLES `banners_index` WRITE;
/*!40000 ALTER TABLE `banners_index` DISABLE KEYS */;
INSERT INTO `banners_index` VALUES (1,'bandiere1.jpg',1,1,'Pleno vacío','',1,7,'',0),(2,'bandiere2.jpg',1,1,'Protección a la infancia','',2,7,'',0),(3,'major_tom1.jpg',1,1,'Imagen de Major Tom','',3,0,'',0),(4,'incumplimetro.jpg',1,1,'Unidos hacemos más','',0,2,'',0),(5,'jalisco_libre.jpg',1,0,'Encuesta','',0,0,'',0);
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
) ENGINE=MyISAM AUTO_INCREMENT=489 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contador`
--

LOCK TABLES `contador` WRITE;
/*!40000 ALTER TABLE `contador` DISABLE KEYS */;
INSERT INTO `contador` VALUES (1,'187.246.150.83','12:52:07','Thu 18 Jul 2013','1374166327'),(2,'187.237.233.5','12:54:51','Thu 18 Jul 2013','1374166491'),(3,'187.140.10.87','01:00:26','Thu 18 Jul 2013','1374166826'),(4,'187.140.52.47','01:55:27','Thu 18 Jul 2013','1374170127'),(5,'187.140.10.87','03:19:43','Thu 18 Jul 2013','1374175183'),(6,'187.144.59.252','03:20:45','Thu 18 Jul 2013','1374175245'),(7,'187.191.7.126','03:34:42','Thu 18 Jul 2013','1374176082'),(8,'187.245.114.138','04:45:01','Thu 18 Jul 2013','1374180301'),(9,'187.237.233.5','04:51:49','Thu 18 Jul 2013','1374180709'),(10,'187.245.157.79','07:02:07','Thu 18 Jul 2013','1374188527'),(11,'187.245.157.79','08:07:09','Thu 18 Jul 2013','1374192429'),(12,'187.245.157.79','09:25:04','Thu 18 Jul 2013','1374197104'),(13,'187.246.150.83','10:18:58','Thu 18 Jul 2013','1374200338'),(14,'187.246.150.83','11:45:31','Thu 18 Jul 2013','1374205531'),(15,'71.191.228.11','11:46:04','Thu 18 Jul 2013','1374205564'),(16,'189.165.231.64','12:14:30','Fri 19 Jul 2013','1374207270'),(17,'66.249.74.126','04:40:08','Fri 19 Jul 2013','1374223208'),(18,'187.140.10.87','10:18:43','Fri 19 Jul 2013','1374243523'),(19,'187.237.233.5','10:29:22','Fri 19 Jul 2013','1374244162'),(20,'201.141.137.174','11:19:10','Fri 19 Jul 2013','1374247150'),(21,'187.237.233.5','11:47:18','Fri 19 Jul 2013','1374248838'),(22,'66.249.73.174','11:48:40','Fri 19 Jul 2013','1374248920'),(23,'187.247.99.63','12:22:56','Fri 19 Jul 2013','1374250976'),(24,'187.244.252.43','12:47:27','Fri 19 Jul 2013','1374252447'),(25,'187.237.233.5','01:09:50','Fri 19 Jul 2013','1374253790'),(26,'187.247.99.63','01:31:34','Fri 19 Jul 2013','1374255094'),(27,'187.175.225.160','02:20:37','Fri 19 Jul 2013','1374258037'),(28,'66.249.73.174','02:47:11','Fri 19 Jul 2013','1374259631'),(29,'189.204.7.43','03:22:13','Fri 19 Jul 2013','1374261733'),(30,'148.223.105.185','03:26:46','Fri 19 Jul 2013','1374262006'),(31,'187.245.157.79','04:15:15','Fri 19 Jul 2013','1374264915'),(32,'187.237.233.5','04:26:57','Fri 19 Jul 2013','1374265617'),(33,'148.223.105.185','04:30:01','Fri 19 Jul 2013','1374265801'),(34,'187.140.10.87','05:21:38','Fri 19 Jul 2013','1374268898'),(35,'187.245.157.79','06:19:10','Fri 19 Jul 2013','1374272350'),(36,'187.237.233.5','07:30:09','Fri 19 Jul 2013','1374276609'),(37,'187.237.233.5','08:50:18','Fri 19 Jul 2013','1374281418'),(38,'187.245.157.79','10:28:32','Fri 19 Jul 2013','1374287312'),(39,'187.237.233.5','10:47:11','Fri 19 Jul 2013','1374288431'),(40,'187.247.160.65','11:41:54','Fri 19 Jul 2013','1374291714'),(41,'66.249.75.40','07:45:13','Sat 20 Jul 2013','1374320713'),(42,'180.76.5.10','12:40:03','Sat 20 Jul 2013','1374338403'),(43,'180.76.5.164','12:41:49','Sat 20 Jul 2013','1374338509'),(44,'187.244.41.196','07:51:29','Sat 20 Jul 2013','1374364289'),(45,'75.98.9.254','07:52:46','Sat 20 Jul 2013','1374364366'),(46,'189.164.167.36','09:29:08','Sat 20 Jul 2013','1374370148'),(47,'66.249.75.40','05:45:23','Sun 21 Jul 2013','1374399923'),(48,'64.246.165.180','11:29:45','Sun 21 Jul 2013','1374420585'),(49,'66.249.75.113','12:00:42','Mon 22 Jul 2013','1374465642'),(50,'100.43.83.137','03:38:53','Mon 22 Jul 2013','1374478733'),(51,'201.167.237.139','05:38:22','Mon 22 Jul 2013','1374485902'),(52,'66.249.73.174','06:05:54','Mon 22 Jul 2013','1374487554'),(53,'100.43.83.137','06:32:46','Mon 22 Jul 2013','1374489166'),(54,'189.254.205.150','07:48:51','Mon 22 Jul 2013','1374493731'),(55,'65.55.213.69','08:05:33','Mon 22 Jul 2013','1374494733'),(56,'187.237.233.5','10:45:18','Mon 22 Jul 2013','1374504318'),(57,'187.140.10.87','10:52:01','Mon 22 Jul 2013','1374504721'),(58,'189.249.34.206','11:01:41','Mon 22 Jul 2013','1374505301'),(59,'189.203.219.106','11:26:19','Mon 22 Jul 2013','1374506779'),(60,'187.163.31.75','11:31:32','Mon 22 Jul 2013','1374507092'),(61,'66.249.73.174','11:32:54','Mon 22 Jul 2013','1374507174'),(62,'187.237.233.5','12:18:16','Mon 22 Jul 2013','1374509896'),(63,'65.55.213.69','01:03:26','Mon 22 Jul 2013','1374512606'),(64,'187.139.149.229','01:21:40','Mon 22 Jul 2013','1374513700'),(65,'157.55.32.49','02:17:41','Mon 22 Jul 2013','1374517061'),(66,'187.246.150.83','03:17:19','Mon 22 Jul 2013','1374520639'),(67,'66.249.73.174','03:38:01','Mon 22 Jul 2013','1374521881'),(68,'180.76.5.168','04:47:45','Mon 22 Jul 2013','1374526065'),(69,'187.245.157.79','06:03:10','Mon 22 Jul 2013','1374530590'),(70,'177.226.44.152','06:14:18','Mon 22 Jul 2013','1374531258'),(71,'157.55.32.49','08:11:12','Mon 22 Jul 2013','1374538272'),(72,'187.244.77.38','09:23:16','Mon 22 Jul 2013','1374542596'),(73,'187.245.157.79','10:14:40','Mon 22 Jul 2013','1374545680'),(74,'180.76.5.10','04:44:14','Tue 23 Jul 2013','1374569054'),(75,'66.249.73.239','05:04:32','Tue 23 Jul 2013','1374570272'),(76,'66.249.73.39','05:05:17','Tue 23 Jul 2013','1374570317'),(77,'65.55.213.66','08:47:18','Tue 23 Jul 2013','1374583638'),(78,'187.237.233.5','10:10:05','Tue 23 Jul 2013','1374588605'),(79,'187.133.19.85','10:23:50','Tue 23 Jul 2013','1374589430'),(80,'148.223.80.186','10:29:48','Tue 23 Jul 2013','1374589788'),(81,'187.140.10.87','11:16:04','Tue 23 Jul 2013','1374592564'),(82,'187.237.233.5','11:16:27','Tue 23 Jul 2013','1374592587'),(83,'65.55.213.69','12:08:16','Tue 23 Jul 2013','1374595696'),(84,'187.140.10.87','12:25:29','Tue 23 Jul 2013','1374596729'),(85,'187.237.233.5','12:35:30','Tue 23 Jul 2013','1374597330'),(86,'187.175.253.186','12:43:33','Tue 23 Jul 2013','1374597813'),(87,'187.237.233.5','01:44:00','Tue 23 Jul 2013','1374601440'),(88,'66.249.72.40','01:52:23','Tue 23 Jul 2013','1374601943'),(89,'187.139.149.229','02:00:39','Tue 23 Jul 2013','1374602439'),(90,'201.144.40.187','02:45:31','Tue 23 Jul 2013','1374605131'),(91,'187.237.233.5','03:11:02','Tue 23 Jul 2013','1374606662'),(92,'187.175.253.186','03:25:35','Tue 23 Jul 2013','1374607535'),(93,'189.220.239.73','04:13:30','Tue 23 Jul 2013','1374610410'),(94,'100.43.83.137','04:46:15','Tue 23 Jul 2013','1374612375'),(95,'201.153.38.149','06:09:27','Tue 23 Jul 2013','1374617367'),(96,'187.237.233.5','07:43:24','Tue 23 Jul 2013','1374623004'),(97,'157.55.32.49','07:47:09','Tue 23 Jul 2013','1374623229'),(98,'189.254.205.148','10:23:11','Tue 23 Jul 2013','1374632591'),(99,'187.175.226.89','11:34:17','Tue 23 Jul 2013','1374636857'),(100,'66.249.72.113','12:06:03','Wed 24 Jul 2013','1374638763'),(101,'189.161.5.68','01:06:18','Wed 24 Jul 2013','1374642378'),(102,'66.249.75.101','09:31:22','Wed 24 Jul 2013','1374672682'),(103,'187.237.233.5','10:05:53','Wed 24 Jul 2013','1374674753'),(104,'187.204.71.89','11:04:03','Wed 24 Jul 2013','1374678243'),(105,'187.237.233.5','11:17:53','Wed 24 Jul 2013','1374679073'),(106,'187.246.150.83','11:18:02','Wed 24 Jul 2013','1374679082'),(107,'187.138.88.112','12:06:11','Wed 24 Jul 2013','1374681971'),(108,'66.249.75.40','12:08:36','Wed 24 Jul 2013','1374682116'),(109,'187.175.136.179','12:50:10','Wed 24 Jul 2013','1374684610'),(110,'187.237.233.5','01:42:05','Wed 24 Jul 2013','1374687725'),(111,'187.237.233.5','02:59:26','Wed 24 Jul 2013','1374692366'),(112,'66.249.75.40','03:02:34','Wed 24 Jul 2013','1374692554'),(113,'201.144.51.114','04:43:29','Wed 24 Jul 2013','1374698609'),(114,'180.76.5.54','06:06:53','Wed 24 Jul 2013','1374703613'),(115,'187.245.157.79','08:30:09','Wed 24 Jul 2013','1374712209'),(116,'201.141.135.111','08:40:37','Wed 24 Jul 2013','1374712837'),(117,'187.246.150.83','11:16:58','Wed 24 Jul 2013','1374722218'),(118,'65.55.213.69','09:28:12','Thu 25 Jul 2013','1374758892'),(119,'186.78.156.233','10:38:01','Thu 25 Jul 2013','1374763081'),(120,'187.237.233.5','12:25:36','Thu 25 Jul 2013','1374769536'),(121,'131.253.24.29','01:14:15','Thu 25 Jul 2013','1374772455'),(122,'157.55.32.143','01:26:40','Thu 25 Jul 2013','1374773200'),(123,'187.237.233.5','02:33:41','Thu 25 Jul 2013','1374777221'),(124,'189.165.215.75','02:48:52','Thu 25 Jul 2013','1374778132'),(125,'65.55.213.69','02:56:31','Thu 25 Jul 2013','1374778591'),(126,'100.43.83.137','04:26:51','Thu 25 Jul 2013','1374784011'),(127,'187.245.157.79','04:54:45','Thu 25 Jul 2013','1374785685'),(128,'187.140.80.201','04:57:25','Thu 25 Jul 2013','1374785845'),(129,'65.55.213.69','08:29:57','Fri 26 Jul 2013','1374841797'),(130,'187.237.233.5','09:58:57','Fri 26 Jul 2013','1374847137'),(131,'187.237.233.5','11:09:06','Fri 26 Jul 2013','1374851346'),(132,'187.140.10.87','12:31:34','Fri 26 Jul 2013','1374856294'),(133,'65.55.213.69','12:31:51','Fri 26 Jul 2013','1374856311'),(134,'189.137.190.151','01:18:22','Fri 26 Jul 2013','1374859102'),(135,'187.140.10.87','01:43:30','Fri 26 Jul 2013','1374860610'),(136,'187.140.129.144','02:19:03','Fri 26 Jul 2013','1374862743'),(137,'189.203.219.86','04:39:52','Fri 26 Jul 2013','1374871192'),(138,'187.237.233.5','04:49:19','Fri 26 Jul 2013','1374871759'),(139,'200.95.171.147','04:51:57','Fri 26 Jul 2013','1374871917'),(140,'187.146.248.58','05:06:07','Fri 26 Jul 2013','1374872767'),(141,'180.76.5.196','06:39:14','Fri 26 Jul 2013','1374878354'),(142,'66.249.73.39','09:44:10','Fri 26 Jul 2013','1374889450'),(143,'187.133.238.122','10:25:04','Fri 26 Jul 2013','1374891904'),(144,'187.245.157.79','10:32:34','Fri 26 Jul 2013','1374892354'),(145,'66.249.73.174','02:16:23','Sat 27 Jul 2013','1374905783'),(146,'180.76.5.155','02:31:38','Sat 27 Jul 2013','1374906698'),(147,'189.169.45.161','03:15:50','Sat 27 Jul 2013','1374909350'),(148,'66.249.73.174','05:08:37','Sat 27 Jul 2013','1374916117'),(149,'208.115.113.92','08:14:02','Sat 27 Jul 2013','1374927242'),(150,'66.249.75.40','12:14:41','Sat 27 Jul 2013','1374941681'),(151,'65.55.213.69','02:47:50','Sat 27 Jul 2013','1374950870'),(152,'187.139.155.202','04:01:14','Sat 27 Jul 2013','1374955274'),(153,'157.55.34.24','10:28:41','Sat 27 Jul 2013','1374978521'),(154,'100.43.83.137','02:47:04','Sun 28 Jul 2013','1374994024'),(155,'66.249.75.101','05:14:11','Sun 28 Jul 2013','1375002851'),(156,'157.55.34.24','07:32:11','Sun 28 Jul 2013','1375011131'),(157,'180.76.5.60','12:37:14','Sun 28 Jul 2013','1375029434'),(158,'187.140.50.225','12:51:09','Sun 28 Jul 2013','1375030269'),(159,'189.179.80.70','01:45:25','Sun 28 Jul 2013','1375033525'),(160,'65.55.213.69','05:26:15','Sun 28 Jul 2013','1375046775'),(161,'66.249.75.40','01:41:56','Mon 29 Jul 2013','1375076516'),(162,'187.194.170.190','02:05:28','Mon 29 Jul 2013','1375077928'),(163,'187.246.52.17','02:32:47','Mon 29 Jul 2013','1375079567'),(164,'66.249.75.113','08:01:00','Mon 29 Jul 2013','1375099260'),(165,'187.170.49.52','08:59:56','Mon 29 Jul 2013','1375102796'),(166,'65.55.213.69','09:23:06','Mon 29 Jul 2013','1375104186'),(167,'187.237.233.5','10:07:23','Mon 29 Jul 2013','1375106843'),(168,'176.195.255.156','10:20:32','Mon 29 Jul 2013','1375107632'),(169,'66.249.75.40','10:25:31','Mon 29 Jul 2013','1375107931'),(170,'180.76.5.27','10:39:56','Mon 29 Jul 2013','1375108796'),(171,'187.133.190.137','10:52:49','Mon 29 Jul 2013','1375109569'),(172,'189.166.5.64','11:03:55','Mon 29 Jul 2013','1375110235'),(173,'187.237.233.5','11:20:30','Mon 29 Jul 2013','1375111230'),(174,'66.249.75.101','12:56:38','Mon 29 Jul 2013','1375116998'),(175,'187.237.233.5','01:35:44','Mon 29 Jul 2013','1375119344'),(176,'187.237.233.5','02:48:07','Mon 29 Jul 2013','1375123687'),(177,'180.76.5.172','03:18:01','Mon 29 Jul 2013','1375125481'),(178,'187.234.177.189','03:53:44','Mon 29 Jul 2013','1375127624'),(179,'187.133.179.116','06:45:41','Mon 29 Jul 2013','1375137941'),(180,'200.78.246.106','09:02:26','Mon 29 Jul 2013','1375146146'),(181,'65.55.213.69','09:17:07','Mon 29 Jul 2013','1375147027'),(182,'187.167.6.231','09:45:50','Mon 29 Jul 2013','1375148750'),(183,'187.245.157.79','10:04:02','Mon 29 Jul 2013','1375149842'),(184,'176.195.66.61','10:51:37','Mon 29 Jul 2013','1375152697'),(185,'189.169.162.84','12:25:55','Tue 30 Jul 2013','1375158355'),(186,'100.43.83.137','01:49:33','Tue 30 Jul 2013','1375163373'),(187,'157.55.34.24','03:26:41','Tue 30 Jul 2013','1375169201'),(188,'180.76.5.25','04:14:15','Tue 30 Jul 2013','1375172055'),(189,'180.76.5.182','04:14:16','Tue 30 Jul 2013','1375172056'),(190,'187.237.233.5','10:22:20','Tue 30 Jul 2013','1375194140'),(191,'187.133.243.200','11:32:32','Tue 30 Jul 2013','1375198352'),(192,'66.249.74.126','11:39:48','Tue 30 Jul 2013','1375198788'),(193,'187.237.233.5','12:42:53','Tue 30 Jul 2013','1375202573'),(194,'187.133.243.200','12:51:27','Tue 30 Jul 2013','1375203087'),(195,'180.76.6.26','02:09:48','Tue 30 Jul 2013','1375207788'),(196,'148.245.26.240','02:55:52','Tue 30 Jul 2013','1375210552'),(197,'189.164.192.237','03:29:57','Tue 30 Jul 2013','1375212597'),(198,'187.237.233.5','03:46:51','Tue 30 Jul 2013','1375213611'),(199,'88.24.146.3','03:47:27','Tue 30 Jul 2013','1375213647'),(200,'200.76.37.35','04:23:37','Tue 30 Jul 2013','1375215817'),(201,'187.140.10.87','04:25:30','Tue 30 Jul 2013','1375215930'),(202,'187.245.157.79','04:31:13','Tue 30 Jul 2013','1375216273'),(203,'187.245.157.79','05:33:27','Tue 30 Jul 2013','1375220007'),(204,'187.245.157.79','06:53:51','Tue 30 Jul 2013','1375224831'),(205,'173.208.165.90','06:58:17','Tue 30 Jul 2013','1375225097'),(206,'187.245.157.79','08:40:49','Tue 30 Jul 2013','1375231249'),(207,'157.55.32.143','10:49:47','Tue 30 Jul 2013','1375238987'),(208,'66.249.74.140','12:21:34','Wed 31 Jul 2013','1375244494'),(209,'66.249.74.126','01:10:00','Wed 31 Jul 2013','1375247400'),(210,'180.76.5.147','04:48:58','Wed 31 Jul 2013','1375260538'),(211,'178.3.159.201','05:15:11','Wed 31 Jul 2013','1375262111'),(212,'65.55.213.69','06:43:13','Wed 31 Jul 2013','1375267393'),(213,'176.195.71.226','09:43:25','Wed 31 Jul 2013','1375278205'),(214,'187.237.233.5','11:06:42','Wed 31 Jul 2013','1375283202'),(215,'65.55.213.69','11:22:16','Wed 31 Jul 2013','1375284136'),(216,'187.237.233.5','12:26:34','Wed 31 Jul 2013','1375287994'),(217,'187.246.150.83','12:31:32','Wed 31 Jul 2013','1375288292'),(218,'187.237.233.5','01:28:28','Wed 31 Jul 2013','1375291708'),(219,'189.164.20.27','02:39:56','Wed 31 Jul 2013','1375295996'),(220,'201.138.133.166','02:46:34','Wed 31 Jul 2013','1375296394'),(221,'148.245.48.168','02:58:17','Wed 31 Jul 2013','1375297097'),(222,'201.159.133.10','03:08:39','Wed 31 Jul 2013','1375297719'),(223,'148.243.5.203','03:27:58','Wed 31 Jul 2013','1375298878'),(224,'189.182.72.103','03:58:30','Wed 31 Jul 2013','1375300710'),(225,'187.237.233.5','03:58:39','Wed 31 Jul 2013','1375300719'),(226,'189.162.1.53','04:18:03','Wed 31 Jul 2013','1375301883'),(227,'180.76.5.151','05:07:20','Wed 31 Jul 2013','1375304840'),(228,'100.43.83.137','07:00:34','Wed 31 Jul 2013','1375311634'),(229,'187.245.157.79','07:52:49','Wed 31 Jul 2013','1375314769'),(230,'187.237.233.5','08:09:03','Wed 31 Jul 2013','1375315743'),(231,'66.249.73.174','12:36:08','Thu 01 Aug 2013','1375331768'),(232,'189.169.162.84','01:03:50','Thu 01 Aug 2013','1375333430'),(233,'157.55.34.24','01:41:40','Thu 01 Aug 2013','1375335700'),(234,'180.76.5.51','05:47:42','Thu 01 Aug 2013','1375350462'),(235,'180.76.5.162','05:47:43','Thu 01 Aug 2013','1375350463'),(236,'187.237.233.5','10:03:35','Thu 01 Aug 2013','1375365815'),(237,'189.214.36.183','11:05:25','Thu 01 Aug 2013','1375369525'),(238,'187.237.233.5','11:10:23','Thu 01 Aug 2013','1375369823'),(239,'187.194.170.190','11:49:56','Thu 01 Aug 2013','1375372196'),(240,'187.237.233.5','12:12:44','Thu 01 Aug 2013','1375373564'),(241,'187.237.233.5','02:09:27','Thu 01 Aug 2013','1375380567'),(242,'187.237.233.5','04:25:38','Thu 01 Aug 2013','1375388738'),(243,'189.165.238.184','06:07:14','Thu 01 Aug 2013','1375394834'),(244,'189.165.102.211','07:12:47','Thu 01 Aug 2013','1375398767'),(245,'189.169.162.84','09:19:00','Thu 01 Aug 2013','1375406340'),(246,'187.245.157.79','10:42:55','Thu 01 Aug 2013','1375411375'),(247,'187.204.71.99','10:45:31','Thu 01 Aug 2013','1375411531'),(248,'189.169.162.84','02:03:19','Fri 02 Aug 2013','1375423399'),(249,'66.249.73.174','03:06:13','Fri 02 Aug 2013','1375427173'),(250,'65.55.213.69','04:15:11','Fri 02 Aug 2013','1375431311'),(251,'180.76.5.176','05:49:08','Fri 02 Aug 2013','1375436948'),(252,'65.55.213.69','08:41:55','Fri 02 Aug 2013','1375447315'),(253,'187.237.233.5','09:30:51','Fri 02 Aug 2013','1375450251'),(254,'187.237.233.5','11:24:30','Fri 02 Aug 2013','1375457070'),(255,'66.249.73.174','12:26:09','Fri 02 Aug 2013','1375460769'),(256,'187.237.233.5','02:20:32','Fri 02 Aug 2013','1375467632'),(257,'157.55.34.24','03:21:10','Fri 02 Aug 2013','1375471270'),(258,'187.237.233.5','03:36:13','Fri 02 Aug 2013','1375472173'),(259,'187.163.8.45','03:38:29','Fri 02 Aug 2013','1375472309'),(260,'201.159.133.10','04:03:29','Fri 02 Aug 2013','1375473809'),(261,'201.130.205.138','04:14:38','Fri 02 Aug 2013','1375474478'),(262,'189.164.35.24','05:39:07','Fri 02 Aug 2013','1375479547'),(263,'66.249.73.174','06:18:39','Fri 02 Aug 2013','1375481919'),(264,'64.246.165.180','07:10:30','Fri 02 Aug 2013','1375485030'),(265,'187.245.157.79','09:07:28','Fri 02 Aug 2013','1375492048'),(266,'172.1.39.5','10:13:46','Fri 02 Aug 2013','1375496026'),(267,'66.249.73.174','10:32:58','Fri 02 Aug 2013','1375497178'),(268,'187.194.178.76','10:39:22','Fri 02 Aug 2013','1375497562'),(269,'180.76.5.107','02:15:25','Sat 03 Aug 2013','1375510525'),(270,'66.249.73.39','05:50:26','Sat 03 Aug 2013','1375523426'),(271,'100.43.83.137','06:51:40','Sat 03 Aug 2013','1375527100'),(272,'66.249.73.174','09:39:57','Sat 03 Aug 2013','1375537197'),(273,'100.43.83.137','11:14:41','Sat 03 Aug 2013','1375542881'),(274,'187.142.154.221','12:19:55','Sat 03 Aug 2013','1375546795'),(275,'157.55.32.143','02:52:33','Sat 03 Aug 2013','1375555953'),(276,'157.55.34.24','02:53:11','Sat 03 Aug 2013','1375555991'),(277,'189.165.237.109','11:11:21','Sat 03 Aug 2013','1375585881'),(278,'66.249.73.174','01:09:35','Sun 04 Aug 2013','1375592975'),(279,'66.249.73.174','03:37:57','Sun 04 Aug 2013','1375601877'),(280,'180.76.5.175','12:40:16','Sun 04 Aug 2013','1375634416'),(281,'189.169.143.36','03:49:48','Sun 04 Aug 2013','1375645788'),(282,'187.204.112.148','04:09:25','Sun 04 Aug 2013','1375646965'),(283,'200.78.183.253','05:12:55','Sun 04 Aug 2013','1375650775'),(284,'66.249.72.40','05:47:05','Sun 04 Aug 2013','1375652825'),(285,'187.139.93.180','08:25:04','Sun 04 Aug 2013','1375662304'),(286,'189.254.205.150','09:10:00','Sun 04 Aug 2013','1375665000'),(287,'66.249.72.40','10:33:14','Sun 04 Aug 2013','1375669994'),(288,'66.249.72.40','11:45:14','Sun 04 Aug 2013','1375674314'),(289,'66.249.72.113','12:34:14','Mon 05 Aug 2013','1375677254'),(290,'180.76.6.233','08:33:35','Mon 05 Aug 2013','1375706015'),(291,'65.55.213.69','09:21:05','Mon 05 Aug 2013','1375708865'),(292,'187.237.233.5','09:55:57','Mon 05 Aug 2013','1375710957'),(293,'157.55.32.143','10:23:34','Mon 05 Aug 2013','1375712614'),(294,'189.164.63.122','10:50:01','Mon 05 Aug 2013','1375714201'),(295,'187.237.233.5','11:00:26','Mon 05 Aug 2013','1375714826'),(296,'69.171.243.244','11:02:26','Mon 05 Aug 2013','1375714946'),(297,'173.252.103.3','11:02:26','Mon 05 Aug 2013','1375714946'),(298,'148.243.5.18','11:42:51','Mon 05 Aug 2013','1375717371'),(299,'187.237.233.5','12:01:40','Mon 05 Aug 2013','1375718500'),(300,'201.130.192.175','12:57:15','Mon 05 Aug 2013','1375721835'),(301,'200.56.208.175','01:00:31','Mon 05 Aug 2013','1375722031'),(302,'65.55.213.69','01:02:26','Mon 05 Aug 2013','1375722146'),(303,'187.237.233.5','01:11:08','Mon 05 Aug 2013','1375722668'),(304,'189.203.219.86','01:51:40','Mon 05 Aug 2013','1375725100'),(305,'187.140.10.87','01:56:39','Mon 05 Aug 2013','1375725399'),(306,'187.237.233.5','02:29:50','Mon 05 Aug 2013','1375727390'),(307,'54.244.172.159','03:29:42','Mon 05 Aug 2013','1375730982'),(308,'201.151.150.66','03:51:53','Mon 05 Aug 2013','1375732313'),(309,'187.237.233.5','03:54:24','Mon 05 Aug 2013','1375732464'),(310,'201.161.9.108','07:22:29','Mon 05 Aug 2013','1375744949'),(311,'200.95.171.136','10:32:34','Mon 05 Aug 2013','1375756354'),(312,'66.249.72.40','08:45:48','Tue 06 Aug 2013','1375793148'),(313,'187.237.233.5','09:28:01','Tue 06 Aug 2013','1375795681'),(314,'66.249.72.113','10:07:43','Tue 06 Aug 2013','1375798063'),(315,'187.237.233.5','11:06:30','Tue 06 Aug 2013','1375801590'),(316,'201.138.164.0','11:40:54','Tue 06 Aug 2013','1375803654'),(317,'180.76.5.136','12:32:28','Tue 06 Aug 2013','1375806748'),(318,'187.133.19.85','02:01:02','Tue 06 Aug 2013','1375812062'),(319,'187.139.42.33','02:59:23','Tue 06 Aug 2013','1375815563'),(320,'187.191.7.71','03:35:00','Tue 06 Aug 2013','1375817700'),(321,'189.194.63.110','03:57:07','Tue 06 Aug 2013','1375819027'),(322,'200.77.36.198','04:37:44','Tue 06 Aug 2013','1375821464'),(323,'187.133.192.67','05:17:31','Tue 06 Aug 2013','1375823851'),(324,'148.243.5.32','05:19:14','Tue 06 Aug 2013','1375823954'),(325,'65.55.213.69','07:10:07','Tue 06 Aug 2013','1375830607'),(326,'187.138.179.23','08:30:08','Tue 06 Aug 2013','1375835408'),(327,'66.249.72.40','11:09:04','Tue 06 Aug 2013','1375844944'),(328,'66.119.41.34','05:23:22','Wed 07 Aug 2013','1375867402'),(329,'66.249.72.40','09:42:39','Wed 07 Aug 2013','1375882959'),(330,'66.249.72.101','09:47:57','Wed 07 Aug 2013','1375883277'),(331,'187.237.233.5','10:15:23','Wed 07 Aug 2013','1375884923'),(332,'66.249.72.113','10:21:33','Wed 07 Aug 2013','1375885293'),(333,'148.243.5.203','10:28:51','Wed 07 Aug 2013','1375885731'),(334,'65.55.213.69','10:29:28','Wed 07 Aug 2013','1375885768'),(335,'189.180.21.14','10:32:33','Wed 07 Aug 2013','1375885953'),(336,'180.76.5.156','11:01:24','Wed 07 Aug 2013','1375887684'),(337,'189.214.36.183','11:02:49','Wed 07 Aug 2013','1375887769'),(338,'201.144.40.187','11:03:05','Wed 07 Aug 2013','1375887785'),(339,'189.197.164.222','11:22:54','Wed 07 Aug 2013','1375888974'),(340,'187.237.233.5','11:33:12','Wed 07 Aug 2013','1375889592'),(341,'201.151.150.66','12:30:49','Wed 07 Aug 2013','1375893049'),(342,'187.237.233.5','01:23:25','Wed 07 Aug 2013','1375896205'),(343,'200.95.171.17','01:40:15','Wed 07 Aug 2013','1375897215'),(344,'187.237.233.5','02:41:47','Wed 07 Aug 2013','1375900907'),(345,'187.246.9.170','03:02:33','Wed 07 Aug 2013','1375902153'),(346,'189.162.18.61','03:47:10','Wed 07 Aug 2013','1375904830'),(347,'187.146.198.45','04:03:26','Wed 07 Aug 2013','1375905806'),(348,'187.237.233.5','04:14:39','Wed 07 Aug 2013','1375906479'),(349,'100.43.83.137','05:54:27','Wed 07 Aug 2013','1375912467'),(350,'65.55.213.69','07:10:28','Wed 07 Aug 2013','1375917028'),(351,'157.55.34.24','08:13:43','Wed 07 Aug 2013','1375920823'),(352,'65.55.213.69','10:34:45','Wed 07 Aug 2013','1375929285'),(353,'187.246.9.170','12:49:18','Thu 08 Aug 2013','1375937358'),(354,'65.55.213.69','08:02:15','Thu 08 Aug 2013','1375963335'),(355,'66.249.72.40','08:52:42','Thu 08 Aug 2013','1375966362'),(356,'200.56.205.217','09:46:42','Thu 08 Aug 2013','1375969602'),(357,'187.237.233.5','10:09:04','Thu 08 Aug 2013','1375970944'),(358,'187.237.233.5','11:09:30','Thu 08 Aug 2013','1375974570'),(359,'65.55.213.69','11:16:39','Thu 08 Aug 2013','1375974999'),(360,'187.237.233.5','12:22:42','Thu 08 Aug 2013','1375978962'),(361,'180.76.5.164','12:38:31','Thu 08 Aug 2013','1375979911'),(362,'187.204.86.30','01:06:46','Thu 08 Aug 2013','1375981606'),(363,'::1','05:11:15','Thu 08 Aug 2013','1375981875'),(364,'::1','07:09:35','Thu 08 Aug 2013','1375988975'),(365,'::1','02:55:57','Fri 09 Aug 2013','1376060157'),(366,'fe80::1','03:03:18','Fri 09 Aug 2013','1376060598'),(367,'::1','01:12:30','Sat 10 Aug 2013','1376097150'),(368,'::1','02:38:13','Sat 10 Aug 2013','1376102293'),(369,'::1','06:02:52','Sat 17 Aug 2013','1376762572'),(370,'::1','03:29:12','Mon 19 Aug 2013','1376926152'),(371,'::1','05:36:03','Mon 19 Aug 2013','1376933763'),(372,'::1','06:51:18','Mon 19 Aug 2013','1376938278'),(373,'::1','09:00:09','Mon 19 Aug 2013','1376946009'),(374,'127.0.0.1','09:44:17','Mon 19 Aug 2013','1376948657'),(375,'192.168.0.105','10:08:05','Mon 19 Aug 2013','1376950085'),(376,'192.168.0.107','10:09:39','Mon 19 Aug 2013','1376950179'),(377,'::1','10:10:56','Mon 19 Aug 2013','1376950256'),(378,'::1','11:40:02','Mon 19 Aug 2013','1376955602'),(379,'::1','12:58:13','Thu 22 Aug 2013','1377133093'),(380,'::1','02:06:26','Sat 24 Aug 2013','1377309986'),(381,'::1','03:02:37','Mon 02 Sep 2013','1378090957'),(382,'192.168.0.103','03:04:46','Mon 02 Sep 2013','1378091086'),(383,'::1','04:03:31','Mon 02 Sep 2013','1378094611'),(384,'192.168.0.103','04:05:33','Mon 02 Sep 2013','1378094733'),(385,'::1','02:54:34','Mon 02 Sep 2013','1378133674'),(386,'::1','07:54:21','Mon 02 Sep 2013','1378151661'),(387,'::1','03:20:45','Tue 03 Sep 2013','1378221645'),(388,'fe80::1','03:20:49','Tue 03 Sep 2013','1378221649'),(389,'::1','10:48:24','Mon 09 Sep 2013','1378766904'),(390,'::1','02:33:50','Tue 24 Sep 2013','1379990030'),(391,'::1','07:12:03','Tue 01 Oct 2013','1380654723'),(392,'fe80::1','07:39:33','Tue 01 Oct 2013','1380656373'),(393,'::1','03:28:39','Thu 31 Oct 2013','1383233319'),(394,'fe80::1','03:30:24','Thu 31 Oct 2013','1383233424'),(395,'::1','03:42:39','Tue 05 Nov 2013','1383666159'),(396,'::1','04:08:09','Mon 02 Dec 2013','1386000489'),(397,'127.0.0.1','04:10:53','Mon 02 Dec 2013','1386000653'),(398,'fe80::1','04:12:28','Mon 02 Dec 2013','1386000748'),(399,'fe80::1','08:22:52','Wed 04 Dec 2013','1386188572'),(400,'::1','08:24:55','Wed 04 Dec 2013','1386188695'),(401,'::1','11:26:39','Mon 27 Jan 2014','1390865199'),(402,'::1','06:25:26','Wed 12 Feb 2014','1392229526'),(403,'::1','06:10:49','Sun 16 Feb 2014','1392574249'),(404,'::1','07:02:33','Mon 17 Feb 2014','1392663753'),(405,'127.0.0.1','07:06:13','Mon 17 Feb 2014','1392663973'),(406,'127.0.0.1','03:24:45','Tue 18 Feb 2014','1392737085'),(407,'::1','12:48:18','Fri 21 Feb 2014','1392943698'),(408,'::1','05:57:07','Fri 21 Feb 2014','1392962227'),(409,'::1','04:34:47','Mon 03 Mar 2014','1393821287'),(410,'::1','08:06:20','Thu 20 Mar 2014','1395345980'),(411,'::1','05:00:31','Tue 08 Apr 2014','1396976431'),(412,'::1','05:25:15','Mon 05 May 2014','1399310715'),(413,'::1','04:30:58','Sat 31 May 2014','1401553858'),(414,'::1','03:24:48','Wed 11 Jun 2014','1402457088'),(415,'::1','07:14:44','Fri 13 Jun 2014','1402686884'),(416,'::1','05:04:09','Thu 19 Jun 2014','1403197449'),(417,'::1','03:52:19','Mon 23 Jun 2014','1403495539'),(418,'::1','05:07:19','Mon 23 Jun 2014','1403500039'),(419,'::1','06:07:23','Mon 23 Jun 2014','1403503643'),(420,'::1','07:09:46','Mon 23 Jun 2014','1403507386'),(421,'::1','04:07:47','Mon 23 Jun 2014','1403539667'),(422,'::1','05:34:27','Mon 23 Jun 2014','1403544867'),(423,'::1','06:42:48','Mon 23 Jun 2014','1403548968'),(424,'::1','12:47:45','Tue 24 Jun 2014','1403570865'),(425,'::1','01:48:47','Tue 24 Jun 2014','1403574527'),(426,'::1','03:17:51','Tue 24 Jun 2014','1403579871'),(427,'::1','04:19:40','Tue 24 Jun 2014','1403583580'),(428,'::1','05:22:33','Tue 24 Jun 2014','1403587353'),(429,'::1','04:09:09','Tue 24 Jun 2014','1403626149'),(430,'::1','06:43:11','Tue 24 Jun 2014','1403635391'),(431,'::1','08:12:39','Tue 24 Jun 2014','1403640759'),(432,'::1','02:02:38','Wed 25 Jun 2014','1403661758'),(433,'::1','07:14:27','Wed 25 Jun 2014','1403680467'),(434,'::1','10:34:11','Wed 25 Jun 2014','1403735651'),(435,'::1','05:49:32','Thu 26 Jun 2014','1403761772'),(436,'::1','07:12:01','Thu 26 Jun 2014','1403766721'),(437,'::1','08:41:28','Thu 26 Jun 2014','1403772088'),(438,'::1','02:34:01','Thu 26 Jun 2014','1403793241'),(439,'127.0.0.1','02:35:30','Thu 26 Jun 2014','1403793330'),(440,'fe80::1','02:35:43','Thu 26 Jun 2014','1403793343'),(441,'::1','03:53:44','Thu 26 Jun 2014','1403798024'),(442,'::1','08:25:27','Thu 26 Jun 2014','1403814327'),(443,'::1','01:49:22','Fri 27 Jun 2014','1403833762'),(444,'::1','03:46:29','Fri 27 Jun 2014','1403840789'),(445,'::1','04:51:43','Fri 27 Jun 2014','1403844703'),(446,'::1','05:08:03','Fri 27 Jun 2014','1403888883'),(447,'::1','06:29:17','Fri 27 Jun 2014','1403893757'),(448,'::1','06:22:51','Wed 30 Jul 2014','1406744571'),(449,'::1','12:04:10','Fri 15 Aug 2014','1408061050'),(450,'::1','01:06:03','Fri 15 Aug 2014','1408064763'),(451,'::1','03:30:35','Fri 15 Aug 2014','1408073435'),(452,'::1','04:30:46','Fri 15 Aug 2014','1408077046'),(453,'::1','05:32:08','Fri 15 Aug 2014','1408080728'),(454,'::1','03:00:58','Fri 15 Aug 2014','1408114858'),(455,'::1','04:55:08','Fri 15 Aug 2014','1408121708'),(456,'::1','06:05:55','Fri 15 Aug 2014','1408125955'),(457,'::1','07:06:02','Fri 15 Aug 2014','1408129562'),(458,'::1','08:07:48','Fri 15 Aug 2014','1408133268'),(459,'::1','02:58:19','Sat 16 Aug 2014','1408157899'),(460,'::1','04:25:48','Sat 16 Aug 2014','1408163148'),(461,'::1','05:26:00','Sat 16 Aug 2014','1408166760'),(462,'::1','12:35:26','Sat 16 Aug 2014','1408192526'),(463,'::1','04:55:34','Mon 18 Aug 2014','1408380934'),(464,'::1','04:37:26','Tue 19 Aug 2014','1408423046'),(465,'::1','09:17:53','Tue 19 Aug 2014','1408439873'),(466,'::1','12:37:42','Tue 19 Aug 2014','1408451862'),(467,'::1','02:16:37','Wed 20 Aug 2014','1408544197'),(468,'::1','06:08:11','Thu 21 Aug 2014','1408644491'),(469,'::1','12:45:01','Tue 26 Aug 2014','1409013901'),(470,'::1','02:59:42','Mon 15 Sep 2014','1410793182'),(471,'::1','08:54:25','Tue 16 Sep 2014','1410900865'),(472,'::1','02:59:18','Wed 17 Sep 2014','1410922758'),(473,'::1','04:00:33','Wed 17 Sep 2014','1410926433'),(474,'::1','11:48:51','Tue 16 Dec 2014','1418773731'),(475,'::1','12:58:58','Wed 17 Dec 2014','1418777938'),(476,'::1','01:59:21','Wed 17 Dec 2014','1418781561'),(477,'::1','03:09:12','Wed 17 Dec 2014','1418785752'),(478,'::1','04:11:07','Wed 17 Dec 2014','1418789467'),(479,'::1','05:11:14','Wed 17 Dec 2014','1418793074'),(480,'::1','06:11:49','Wed 17 Dec 2014','1418796709'),(481,'::1','07:23:47','Wed 17 Dec 2014','1418801027'),(482,'::1','08:23:48','Wed 17 Dec 2014','1418804628'),(483,'::1','02:54:51','Wed 17 Dec 2014','1418828091'),(484,'192.168.0.104','04:06:32','Wed 17 Dec 2014','1418832392'),(485,'::1','04:23:05','Wed 17 Dec 2014','1418833385'),(486,'::1','06:55:49','Wed 17 Dec 2014','1418842549'),(487,'192.168.2.10','07:07:25','Wed 17 Dec 2014','1418843245'),(488,'::1','07:56:32','Wed 17 Dec 2014','1418846192');
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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporativa_index`
--

LOCK TABLES `corporativa_index` WRITE;
/*!40000 ALTER TABLE `corporativa_index` DISABLE KEYS */;
INSERT INTO `corporativa_index` VALUES (1,'Domicilio','¡Tú puedes ayudarnos a cambiar esta historia!','<h2>Acude a:</h2>\r\n<p>Rizzoli 8, 20132 Milano, Italia</p>',0,1,1,0,'0000-00-00 00:00:00','',0),(2,'Perfil','','<p>Inició sus estudios literarios en la Sociedad General de escritores de México (Sogem) y ha participado en diferentes talleres con los escritores: Fernando de León, Rosa María Aura y Marco Aurelio Larios.</p>\r\n<p>Tiene cuentos publicados dentro de la serie de libros titulados: Caleidoscopio, que edita la Sogem y la obra de teatro: El gallo se mata la primera noche, editado por la misma sociedad de escritores. Así como cuentos en diferentes periódicos literarios.</p>\r\n<p>Recuerdos Circulares es su primera novela.</p>',0,1,0,0,'2012-08-30 15:27:00','',0),(3,'Su mensaje...','','<p>Su mensaje se ha enviado exitosamente.<br /><br /> En breve nos pondremos en contacto con usted.</p>\r\n<p>Muchas gracias</p>',0,1,1,0,'2010-12-08 00:12:27','',0),(5,'About nain','','',0,1,0,0,'2012-10-30 02:15:35','logo',0),(6,'Account created','','<p>Your account has been created. Please check your email, You should have recieved a notification for activate it. If not, please take a look at spam folder, it may be there.</p>',0,1,0,0,'2012-11-08 17:01:19','',0),(7,'Bank account information','','<p>Banamex</p>\r\n<p>Sucursal: 15151515</p>\r\n<p>Cuenta 151515151</p>\r\n<p>A nombre de: Un nombre Aleatorio</p>',0,1,0,0,'2012-11-12 05:03:43','',0),(9,'Error 404','','<p>La p&aacute;gina solicitada no existe.</p>',0,1,0,0,'2013-05-06 15:03:38','',0);
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
INSERT INTO `fotos_categoria` VALUES (1,'Gira de trabajo','',0,0,''),(2,'Gente','',0,0,''),(3,'De estudio','',0,0,''),(4,'En medios','',0,0,'');
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
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos_index`
--

LOCK TABLES `fotos_index` WRITE;
/*!40000 ALTER TABLE `fotos_index` DISABLE KEYS */;
INSERT INTO `fotos_index` VALUES (56,'Mitin 1','','bandiere2.jpg','',1,1,0,0,0,'0000-00-00'),(57,'Creando consensos','','consenso2.jpg','',2,1,0,0,0,'0000-00-00');
/*!40000 ALTER TABLE `fotos_index` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=212 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gadgets_botones_admin`
--

LOCK TABLES `gadgets_botones_admin` WRITE;
/*!40000 ALTER TABLE `gadgets_botones_admin` DISABLE KEYS */;
INSERT INTO `gadgets_botones_admin` VALUES (1,'Art&iacute;culo nuevo','new','png','if_articulos.php',2,2,1),(2,'Editar art&iacute;culo','edit','png','bus_articulos.php',2,2,1),(3,'Categor&iacute;a nueva','new','png','if_categoria.php',2,2,1),(4,'Agregar gadget','gadget','png','if_gadgets.php',1,2,1),(5,'Editar gadget','edit','png','bus_gadgets.php',1,2,1),(6,'Nueva informaci&oacute;n','new','png','if_corporativa.php',4,2,1),(7,'Editar informaci&oacute;n','edit','png','bus_corporativa.php',4,2,1),(8,'Agregar foto','camara','png','if_fotos.php',5,2,1),(9,'Administrar fotos','photo','png','bus_fotos.php',5,2,1),(10,'Editar categor&iacute;a','edit','png','bus_categoria.php',2,2,1),(11,'Agregar botón Admin','work','png','if_botones_admin.php',1,2,1),(12,'Agregar a cat&aacute;logo','new','png','if_catalogo.php',8,2,1),(13,'Editar cat&aacute;logo','edit','png','bus_catalogo.php',8,2,1),(14,'Nueva categoría','new','png','if_categoria.php',8,2,1),(15,'Editar categoría','edit','png','bus_categoria.php',8,2,1),(16,'Editar Botón Admin','edit','png','bus_botones_admin.php',1,2,1),(17,'Agregar submnú','new','png','if_submenu.php',1,2,1),(18,'Editar submn&uacute;','edit','png','bus_submenu.php',1,2,1),(19,'Agregar banner','new','png','if_banner.php',9,2,1),(20,'Editar banner','edit','png','bus_banner.php',9,2,1),(21,'Nuevo','new','png','if_proyectos.php',10,2,1),(22,'Editar proyecto','edit','png','bus_proyectos.php',10,2,1),(23,'Agregar usuario','new','png','if_autor.php',3,2,1),(24,'Modificar usuario','edit','png','bus_user.php',3,5,1),(25,'Revisar mensajes','camara','png','bus_mensajes.php',6,2,1),(26,'Revisar visitantes','camara','png','contador.php',7,2,1),(27,'Agregar Resaque','resaque','png','if_resaque.php',2,2,0),(28,'chas','none','png','if_corporativa_a.php',4,2,1),(29,'chas2','none','png','ip_corporativa_a.php',4,2,1),(31,'Agregar botón menú','boton','png','if_botones.php',29,2,1),(32,'Modifica articulo','none','png','if_articulos_a.php',2,2,1),(33,'Modifica categoria','none','png','if_categoria_a.php',2,2,1),(34,'Editar resaque','edit','png','bus_resaque.php',2,2,0),(35,'Editar resaque2','none','png','if_resaque_a.php',2,2,0),(36,'Editar user','none','png','if_autor_a.php',3,2,1),(37,'Editar foto','none','png','if_fotos_a.php',5,2,1),(38,'Revisar mensajes2','none','png','mensaje.php',6,2,1),(39,'borra articulo','none','png','borra.php',2,2,1),(40,'Modifica categoria catalogo','none','png','if_categoria_a.php',8,2,1),(41,'Modifica catalogo','none','png','if_catalogo_a.php',8,2,1),(42,'modificar banner','none','png','if_banner_a.php',9,2,1),(43,'Maqueta','new','png','if_maqueta.php',9,2,1),(44,'Editar maqueta','edit','png','bus_maqueta.php',9,2,1),(45,'Modificar maqueta','none','png','if_maqueta_a.php',9,2,1),(46,'Modificar proyectos','none','png','if_proyectos_a.php',10,2,1),(47,'Agregar publicación','new','png','if_publicaciones.php',11,2,1),(48,'Editar publicaciones','edit','png','bus_publicaciones.php',11,2,1),(49,'Modificar publicaciones','none','png','if_publicaciones_a.php',11,2,1),(50,'Noticia nueva','new','png','if_noticias.php',12,2,1),(51,'Editar noticia','edit','png','bus_noticias.php',12,2,1),(52,'Modificar noticia','none','png','if_noticias_a.php',12,2,1),(53,'Agregar testimonio','new','png','if_testimonios.php',13,2,1),(54,'Editar testimonio','edit','png','bus_testimonios.php',13,2,1),(55,'Modificar testimonio','none','png','if_testimonios_a.php',13,2,1),(56,'configuracion','new','png','if_configura_a.php',14,2,1),(57,'Crear hoja de estilo','new','png','if_templates.php',14,2,1),(58,'templates INVI','none','png','if_templates_a.php',14,2,1),(59,'Editar hoja de estilo','edit','png','bus_templates.php',14,2,1),(60,'Modificar botón menú','edit','png','bus_botones.php',29,2,1),(61,'botones admin INV','none','png','if_botones_admin_a.php',1,2,1),(62,'Agregar evento','new','png','if_evento.php',15,2,1),(63,'Editar evento','edit','png','bus_evento.php',15,2,1),(64,'evento INVI','none','png','if_evento_a.php',15,2,1),(65,'Agregar ponente','new','png','if_imparte.php',15,2,1),(66,'Editar ponente','edit','png','bus_imparte.php',15,2,1),(67,'ponente INVI','none','png','if_imparte_a.php',15,2,1),(68,'Agregar documento','new','png','if_descargar.php',16,2,1),(69,'Editar descarga','edit','png','bus_descargar.php',16,2,1),(70,'descarga INVI','none','png','if_descargar_a.php',16,2,1),(71,'Agregar video','new','png','if_video.php',17,2,1),(72,'Editar video','edit','png','bus_video.php',17,2,1),(73,'Editar video INVI','none','png','if_video_a.php',17,2,1),(74,'Editar boton INVI','none','png','if_botones_a.php',29,2,1),(75,'editar gadget INVI','none','png','if_gadgets_a.php',1,2,1),(76,'Agregar liga','new','png','if_ligas.php',18,2,1),(77,'Editar ligas','edit','png','bus_ligas.php',18,2,1),(78,'Editar ligas INVI','none','png','if_ligas_a.php',18,2,1),(79,'Agrega patrocinador','new','png','if_patrocinador.php',19,2,1),(80,'Editar Patrocinador','edit','png','bus_patrocinador.php',19,2,1),(81,'Editar Patrocinador INVI','none','png','if_patrocinador_a.php',19,2,1),(83,'Agregar/ editar coordinador','edit','png','bus_coordina.php',15,2,1),(84,'Editar coordina INVI','none','png','if_coordina.php',15,2,1),(85,'Agrega día','new','png','if_dia.php',15,2,1),(86,'Edita día','edit','png','bus_dia.php',15,2,1),(87,'Edita día INVI','none','png','if_dia_a.php',15,2,1),(88,'Agregar ruta','new','png','if_ruta.php',4,2,1),(89,'Editar ruta','edit','png','bus_ruta.php',4,2,1),(90,'Editar ruta INVI','none','png','if_ruta_a.php',4,2,1),(91,'Agregar resaque','new','png','if_resaque.php',4,2,1),(92,'Editar resaque','edit','png','bus_resaque.php',4,2,1),(93,'Editar resaque INVI','none','png','if_resaque_a.php',4,2,1),(94,'Movimientos','new','png','registro.php',20,3,1),(128,'Edita FAQ','edit','png','bus_faq.php',22,1,1),(127,'Agrega FAQ','new','png','if_faq.php',22,1,1),(97,'Hacer respaldo','fa-plus-square-o','png','exe_respaldo.php',31,2,1),(123,'Agrega categoria','new','png','if_categoria.php',5,2,1),(99,'Agregar edición','new','png','if_ediciones.php',2,2,0),(100,'Editar edición','edit','png','bus_ediciones.php',2,2,0),(101,'Edta ediciones INVI','none','png','if_ediciones_a.php',2,2,0),(102,'Agrega foto edición','new','png','if_fotoedicion.php',2,2,0),(103,'Edita fotoedicion','edit','png','bus_fotoedicion.php',2,2,0),(104,'Edita fotoedicion INVI','none','png','if_fotoedicion_a.php',2,2,0),(105,'Redactar mail masivo','edit','png','if_massive_mail.php',6,1,0),(106,'Edita mail masivo','edit','png','bus_massive_mail.php',6,1,0),(107,'Crea grupo envío','new','png','if_massive_grupo.php',6,2,0),(108,'Edita grupo envío','edit','png','bus_massive_grupo.php',6,2,0),(109,'Edita grupo envío INVI','none','png','if_massive_grupo_a.php',6,2,0),(110,'Editar mail masivo INVI','none','png','if_massive_mail_a.php',6,2,0),(111,'enviado','none','png','enviado.php',6,2,0),(112,'EXE mail INVI','none','png','exe_massive_mail.php',6,2,0),(113,'Agrega contacto','new','png','if_massive_directorio.php',6,2,0),(114,'Editar contacto','edit','png','bus_massive_directorio.php',6,2,0),(115,'Editar contacto INVI','none','png','if_massive_directorio_a.php',6,2,0),(116,'PDF','new','png','pdf.php',6,2,0),(117,'Agrega contenido idioma','new','png','if_content.php',21,1,1),(118,'Editar contenido idioma','edit','png','bus_content.php',21,1,1),(119,'Editar idioma INVI','none','png','if_content_a.php',21,1,1),(120,'Agregar idioma','new','png','if_language.php',21,1,1),(121,'Editar idioma','edit','png','bus_language.php',21,1,1),(122,'Editar idioma INVI','none','png','if_language_a.php',21,1,1),(124,'Edita categoria','edit','png','bus_categoria.php',5,2,1),(125,'Edita catetgoria INVI','none','png','if_categoria_a.php',5,2,1),(126,'Médicos registrados','boton','png','bus_directorio.php',24,3,1),(129,'Edita FAQ INVI','none','png','if_faq_a.php',22,1,1),(130,'TEST','boton','png','ip_registro_a.php',19,1,1),(131,'Agrega categoria','new','png','if_categoria.php',22,1,1),(132,'Edita categoria','edit','png','bus_categoria.php',22,1,1),(133,'Edita categoria INVI','none','png','if_categoria_a.php',22,1,1),(134,'Medicos registrados INVO','none','png','if_directorio_a.php',24,1,1),(135,'Agrega temporada','new','png','if_temporadas.php',8,1,1),(136,'Edita temporadas','edit','png','bus_temporadas.php',8,1,1),(137,'Edita temproada INVI','none','png','if_temporadas_a.php',8,1,1),(138,'Agregar movimiento','new','png','if_registro.php',20,3,1),(139,'Edita registro INVI','none','png','if_registro_a.php',20,2,1),(140,'Agrega moneda','new','png','if_moneda.php',23,3,1),(141,'Edita moneda','edit','png','bus_moneda.php',23,3,1),(142,'Edita moneda','none','png','if_moneda_a.php',23,3,1),(143,'Agrega tarifa','new','png','if_tarifa.php',23,3,1),(144,'Edita tarifa','edit','png','bus_tarifa.php',23,3,1),(145,'Edita tarifa INVI','none','png','if_tarifa_a.php',23,3,1),(146,'Agrega habitación','new','png','if_habitacion.php',23,3,1),(147,'Edita habitación','edit','png','bus_habitacion.php',23,3,1),(148,'Edita habitación INVI','none','png','if_habitacion_a.php',23,3,1),(149,'Agrega medicamento','new','png','if_medicamento.php',24,3,1),(150,'Edita medicamento','edit','png','bus_medicamento.php',24,3,1),(151,'Edita medicamento INVI','none','png','if_medicamento_a.php',24,3,1),(152,'Agrega potencia','new','png','if_potencia.php',24,3,1),(153,'Edita potencia','edit','png','bus_potencia.php',24,3,1),(154,'Edita potencia INVi','none','png','if_potencia_a.php',24,3,1),(155,'Agrega registro','new','png','if_registro.php',25,1,1),(156,'Edita registro','edit','png','bus_registro.php',25,1,1),(157,'Edita registro INVI','none','png','if_registro_a.php',25,1,1),(158,'Busca padre INVI','none','png','bus_fili.php',25,1,1),(159,'Agrega cónyuge','none','png','bus_conyuge.php',25,1,1),(160,'Agrega hijos','none','png','bus_pater.php',25,1,1),(161,'Agrega perfil','new','png','if_perfil.php',26,2,0),(162,'Edita perfil','edit','png','bus_perfil.php',26,2,1),(163,'Edita perfil INVI','none','png','if_perfil_a.php',26,2,1),(164,'Agrega categoria','new','png','if_categoria.php',26,2,1),(165,'Edita categoria','edit','png','bus_categoria.php',26,2,1),(166,'Edita categoria INVI','none','png','if_categoria_a.php',26,2,1),(167,'Asigna comisión','new','png','if_asigna.php',26,2,0),(168,'Edita asigna comisión','edit','png','bus_asigna.php',26,2,0),(169,'Edita asigna comisión INVI','none','png','if_asigna_a.php',1,1,0),(170,'Agrega comisión','new','png','if_comisiones.php',26,2,0),(171,'Edita comisión','edit','png','bus_comisiones.php',26,2,0),(172,'Edita comisión INVI','none','png','if_comisiones_a.php',26,2,0),(173,'Agg Botón social','new','png','if_boton.php',26,2,0),(174,'Ed botón social','edit','png','bus_boton.php',26,2,0),(175,'Ed botón social INVI','none','png','if_boton_a.php',26,2,0),(176,'Asigna botón','new','png','if_asigna_boton.php',26,2,1),(177,'Edita asigna botón','edit','png','bus_asigna_boton.php',26,2,1),(178,'Edita asigna botón INVI','none','png','if_asigna_boton_a.php',26,2,1),(179,'Ag propuesta','new','png','if_iniciativa.php',35,2,1),(180,'Edita propuesta','edit','png','bus_iniciativa.php',35,2,1),(181,'Edita propuesta INVI','none','png','if_iniciativa_a.php',35,2,1),(182,'Asigna propuesta','new','png','if_asigna_iniciativa.php',35,1,0),(183,'Ed asigna propuesta','edit','png','bus_asigna_iniciativa.php',35,1,0),(184,'Ed asigna propuesta INVI','none','png','if_asigna_iniciativa_a.php',35,1,0),(185,'Agrega cita','new','png','if_citas.php',27,2,1),(186,'Edita cita','edit','png','bus_citas.php',27,2,1),(187,'Edita cita INVI','none','png','if_citas_a.php',27,2,1),(188,'Agrega evento','new','png','if_evento.php',28,2,1),(189,'Edita evento','edit','png','bus_evento.php',28,2,1),(190,'Edita evento INVI','none','png','if_evento_a.php',28,2,1),(191,'Agrega foto evento','new','png','if_evento_foto.php',28,2,0),(192,'Edita evento foto','edit','png','bus_evento_foto.php',28,2,0),(193,'Edita evento foto INVI','none','png','if_evento_foto_a.php',28,2,0),(194,'Agrega categoria','new','png','if_categoria.php',12,2,1),(195,'Edita categoría','edit','png','bus_categoria.php',12,2,1),(196,'Edita categoría INVI','none','png','if_categoria_a.php',12,2,1),(197,'Respaldos en sistema','fa-pencil-square-o','png','bus_respaldo.php',31,2,1),(198,'Agrega código','new','png','if_qr.php',32,2,1),(199,'Edita código','edit','png','bus_qr.php',32,2,1),(200,'Edita código INVI','none','png','if_qr_a.php',32,2,1),(201,'Agrega quiz','new','png','if_quiz.php',33,1,1),(202,'Editar quiz','edit','png','bus_quiz.php',33,1,1),(203,'Editar quiz INVI','none','png','if_quiz_a.php',33,1,1),(204,'Agregar pregunta','new','png','if_ques.php',33,1,1),(205,'Editar pregunta','edit','png','bus_ques.php',33,1,1),(206,'Editar pregunta INVI','none','png','if_ques_a.php',33,1,1),(207,'Agregar respuesta','new','png','if_answ.php',33,1,1),(208,'Editar respuesta','edit','png','bus_answ.php',33,1,1),(209,'Editar respuesta INVI','none','png','if_answ_a.php',33,1,1),(210,'resultados INVI','none','png','resultados.php',33,2,1),(211,'resultados','resaque','png','pre_resultados.php',33,2,1);
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
  `alias` varchar(50) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gadgets_index`
--

LOCK TABLES `gadgets_index` WRITE;
/*!40000 ALTER TABLE `gadgets_index` DISABLE KEYS */;
INSERT INTO `gadgets_index` VALUES (1,'gadgets','if_gadgets.php',1,1,'gadgets'),(2,'articulos','if_articulos.php',1,2,'blog'),(3,'usuario','if_autor.php',1,5,'usuario'),(4,'corporativa','if_corporativa.php',1,2,'corporativa'),(5,'fotos','if_fotos.php',1,2,'fotografia'),(6,'mensajes','bus_mensajes.php',1,5,'mensajes'),(7,'contador','contador.php',1,2,'contador'),(8,'catalogo','if_catalogo.php',1,2,'catalogo'),(9,'banners','if_banner.php',1,2,'banners'),(10,'proyectos','if_proyectos.php',0,2,'proyectos'),(11,'publicaciones','if_publicaciones.php',0,2,'publicaciones'),(12,'noticias','if_noticias.php',1,2,'noticias'),(13,'testimonios','if_testimonios.php',1,2,'testimonios'),(14,'configura','if_configura_a.php',1,1,'plantillas'),(15,'congreso','if_evento.php',0,2,'congreso'),(16,'descargar','if_descargar.php',1,2,'descargas'),(17,'video','if_video.php',1,2,'videos'),(18,'ligas','if_ligas.php',1,2,'ligas'),(19,'patrocinador','if_patrocinador.php',0,2,'patrocinadores'),(20,'comprar','registro.php',0,5,'comprar'),(21,'language','if_language.php',0,1,'idioma'),(22,'faq','if_faq.php',1,1,'faq'),(23,'hotel','if_habitacion.php',0,1,'hotel'),(24,'homeopop','if_medicamento.php',0,1,'homeopop'),(25,'genealogia','if_registro.php',0,1,'genealogia'),(26,'perfil','if_perfil.php',1,1,'perfil'),(27,'citas','if_citas.php',1,1,'citas'),(28,'consulta','if_consulta.php',0,1,'consulta'),(29,'menus','if_botones.php',1,1,'menus'),(30,'eventos','if_eventos.php',0,1,'eventos'),(31,'respaldo','bus_respaldo.php',1,2,'respaldar'),(32,'qr','if_qr.php',1,2,'qr'),(33,'quiz','if_quiz.php',1,1,'encuestas'),(34,'social','bus_contenidos.php',0,1,'social'),(35,'propuestas','if_iniciativa.php',1,1,'propuestas'),(36,'activismo','if_activista.php',1,1,'activistas digitales'),(37,'escucho','if_escucho.php',1,1,'te escucho'),(38,'carga','if_carga.php',1,1,'carga de archivos'),(39,'agenda','if_evento.php',1,1,'agenda');
/*!40000 ALTER TABLE `gadgets_index` ENABLE KEYS */;
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
-- Table structure for table `general_orientacion`
--

DROP TABLE IF EXISTS `general_orientacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_orientacion` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_orientacion`
--

LOCK TABLES `general_orientacion` WRITE;
/*!40000 ALTER TABLE `general_orientacion` DISABLE KEYS */;
INSERT INTO `general_orientacion` VALUES (1,'horizontal'),(2,'vertical');
/*!40000 ALTER TABLE `general_orientacion` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_index`
--

LOCK TABLES `mails_index` WRITE;
/*!40000 ALTER TABLE `mails_index` DISABLE KEYS */;
INSERT INTO `mails_index` VALUES (17,'Ma. Lae j d jesus cervantes gallardo','jdjcg_ocojal@hotmail.com','Grupo Parlamentario','189.164.49.27','FELICIDADES',' Felicidades don guillermo por luchar en recobrar la moral y la ideologia perdida lo que origino la humillante derrota electoral,en horabuena no esta solo y las derrotas no son para siempre, ni los que afectaron al partido son eternos.se puede recomponer el rumbo.','2013-07-02 14:54:42',0,1),(19,'','','Grupo Parlamentario','189.165.238.184','DIP. VICTOR','Estimado compañero, lei tu reporte en notisistema de que el congreso es muy caro, mi pregunta para ti es, que haz hecho tu y la fraccion parsa resolver este problema , por que al unico Dip. que se escucha trabajar es a Guillermo Martinez.','2013-08-01 22:23:58',0,0),(18,' Ma y Lae J d jesus cervantes gallardo','jdjcg_ocojal@hotmail.com','Grupo Parlamentario','189.164.49.27','FELICIDADES','De usted depende la buena conduccion de iniciativas y defensas que sirvan a la sociedad jalicience de recobrar la moral la ideologia partidista para transformarlo en futuros triufos electorales y que nuestra partido regrese a la senda de la confianza ciudadana atravez de su liderazgo en su gestion legislativa.','2013-07-02 15:03:15',0,1),(20,'hans','gali@gmail.com','','127.0.0.1','gain','eoeoeoe','2014-02-17 19:48:05',0,1),(21,'','','','127.0.0.1','','','2014-02-17 19:51:30',0,1),(22,'hans','gali@gmail.com','','127.0.0.1','gain','EMMMMMMAAA','2014-02-17 19:55:13',0,1),(23,'Ramsés','saargo@gmail.com','','::1','A ver','A ver','2014-12-19 19:01:52',0,1),(24,'Ramsés','saargo@gmail.com','','::1','A ver','A ver','2014-12-19 19:01:52',0,0),(25,'Ramsés','saargo@gmail.com','','::1','Otra cosa','Otra prueba','2014-12-19 19:02:23',0,1),(26,'Ramsés','saargo@gmail.com','','::1','Otra cosa','Otra prueba','2014-12-19 19:02:23',0,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_massive_directorio`
--

LOCK TABLES `mails_massive_directorio` WRITE;
/*!40000 ALTER TABLE `mails_massive_directorio` DISABLE KEYS */;
INSERT INTO `mails_massive_directorio` VALUES (1,'Ramsés Figueroa','ramses@ferbere.com',1,'3311323773','','10 86 2136',1,0),(109,'Alicia Normanda Lindá','normanda.alicia@gmail.com',1,'','','',1,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_massive_grupo`
--

LOCK TABLES `mails_massive_grupo` WRITE;
/*!40000 ALTER TABLE `mails_massive_grupo` DISABLE KEYS */;
INSERT INTO `mails_massive_grupo` VALUES (1,'Medios','',''),(2,'Monitoreo medios','',''),(3,'Todos','','');
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_massive_mensajes`
--

LOCK TABLES `mails_massive_mensajes` WRITE;
/*!40000 ALTER TABLE `mails_massive_mensajes` DISABLE KEYS */;
INSERT INTO `mails_massive_mensajes` VALUES (2,'Completamente diferente','<p>En lo m&aacute;s rec&oacute;ndito de las Monta&ntilde;as Rocosas, un grupo de avezadas madres desaf&iacute;an al mal tiempo, la lluvia infernal y los vientos huracanados para llegar a la base secreta de la C.I.A (Centro de Inteligencia por el Amamantamiento)... Ha sido un largo periplo, pero se sienten orgullosas de si mismas porque han sido seleccionadas entre las madres m&aacute;s poseedoras de la verdad absoluta sobre la maternidad y la lactancia y por sus capacidades para \"educar\" y \"aleccionar\" a otras mujeres.</p>\r\n<p>En la base de la C.I.A. participar&aacute;n en una formaci&oacute;n experimental, el programa Ahora Sabr&aacute;s Explicar la Superioridad Omnipotente de la Realidad del Amamantamiento Supremo (m&aacute;s conocida por sus siglas ASESORAS), un entrenamiento de &eacute;lite para convertirse en la punta de lanza del nuevo programa ultrasecreto para la destrucci&oacute;n del orden mundial.</p>\r\n<p>Son apenas 15 o 20 madres, pero su misi&oacute;n ser&aacute; esparcirse y multiplicarse por el mundo, trabajando en c&eacute;lulas independientes, para implementar el programa Leche Amigable y Cooperativa para Tratar de Aleccionar y Normativizar Comportamientos Inteligentes Anteriores (LACTANCIA).</p>\r\n<p><br />El NO dejar&aacute; el mundo a nuestra<br />merced, &iexcl;&iexcl;&iexcl;Mua, ja, ja, ja!!!!<br />El objetivo final, por el que est&aacute;s mujeres llegar&iacute;an a entregar su vida, es promover la cultura de la lactancia, atrayendo madres al lado oscuro de la maternidad, haci&eacute;ndolas olvidar sus carreras profesionales y sus metas pre-maternales para convertirlas en indolentes zombies dominados por las bajas pasiones y los instintos m&aacute;s primitivos.</p>\r\n<p>&nbsp;</p>\r\n<p>Una vez conseguida la meta final y alcanzado el lavado de cerebro masivo, este ej&eacute;rcito de mujeres con la teta colgando formar&aacute;n una armada invencible que dominar&aacute; al resto de f&eacute;minas del mundo, con un mordisco brutal que trasnmitir&aacute; la infecci&oacute;n y permitir&aacute; el establecimiento de la cultura patriarcal m&aacute;s absoluta, subyugadora y asfixiante... Tambi&eacute;n denominada en clave secreta el Imperio o el Reverso Tenebroso.</p>\r\n<p>En la sesi&oacute;n de entrenamiento sobre Fingimiento de Inocencia Altruista (FIA) se puede escuchar la siguiente conversaci&oacute;n:<br />- Entrenador: &iquest;C&oacute;mo convencer&eacute;is a las mujeres para ponerse de vuestro lado?<br />- Amina: Yo les contar&iacute;a que los consejos que damos sobre lactancia est&aacute;n basados en la evidencia cient&iacute;fica.<br />- Entrenador (furioso): Eso no es suficiente, la evidencia cient&iacute;fica no llega a la parte m&aacute;s profunda del cerebro y se queda en lo superficial.<br />- Cristina: Pondr&iacute;a de relieve que no solo hablo por mi experiencia como madre, sino que me he formado sobre lactancia materna.<br />- Entrenador: &iexcl;&iexcl;&iexcl;No vale!!! Si quisieran formaci&oacute;n y t&iacute;tulo se ir&iacute;an a ver a sus pediatras y enfermeras.<br />- Cleo: Argumentar&iacute;a que cada madre tiene que seguir sus propios objetivos y adecuar su lactancia y maternidad a lo que ella realmente quiere y no a lo que imponen los dem&aacute;s.<br />- Entrenador: &iexcl;&iexcl;&iexcl;Ni se te ocurra!!! Nada m&aacute;s lejos de nuestro plan secreto que empoderar a las mujeres, queremos educarlas y aleccionarlas para que no se planteen nada y solo sigan nuestra verdad absoluta.<br />- Elo&iacute;sa: Yo har&iacute;a una competici&oacute;n para descubrir que madre tiene m&aacute;s Teta-Puntos y para poner de relieve lo mal que lo hacen las dem&aacute;s y lo que les queda por mejorar para descubrir la aut&eacute;ntica verdad.<br />- Entrenador: &iexcl;&iexcl;&iexcl;&iexcl;&iexcl;Ouuuuuu Yeaaaaa!!! Eso es. No queremos mujeres empoderadas, no queremos convencer por la evidencia, no queremos que las madres conf&iacute;en en su propio criterio a la hora de criar a sus hijos. &iexcl;&iexcl;&iexcl;Queremos esclavas que nos sigan ciegamente en la batalla final por la conquista del Nuevo Orden (NO)!!!! &iexcl;&iexcl;&iexcl;&iexcl;Mua, ja, ja, ja, ja!!!!!</p>\r\n<p>En la sesi&oacute;n de Planificaci&oacute;n Estrat&eacute;gica del Calendario de Hostilidades Ocultas (asignatura tambi&eacute;n conocida como PECHO), las nuevas guerreras aprenden estrategias de hostigamiento para que ninguna mujer escape de sus redes:</p>\r\n<p>- Entrenador: Ya hemos hablado de la tapadera (y la agenda real &iexcl;&iexcl;&iexcl;&iexcl;Mua, ja, ja, ja, ja!!!!!) de los grupos de lactancia y grupos de madres, ahora debatiremos sobre otras herramientas a nuestro alcance para preparar el terreno al NO.<br />- Fran&ccedil;oise: &iquest;Al No? Mi no comprendo.<br />- Entrenador: Ayyy, que llevamos aqu&iacute; un mes y no te enter&aacute;s... para preparar el terreno al Nuevo Orden, el &iexcl;&iexcl;&iexcl;NO!!! &iexcl;&iexcl;&iexcl;&iexcl;Mua, ja, ja, ja, ja!!!!!<br />- Fabiana: &iquest;Podemos colaborar con los centros de salud y hospitales cercanos para que nos deriven a las madres con problemas?<br />- Entrenador: A priori ese tipo de t&aacute;cticas podr&iacute;an funcionar, pero la verdadera fuerza de nuestras c&eacute;lulas de ASESORAS de LACTANCIA consiste en ese look de \"outsiders\" y luchadoras contra el sistema. Suele funcionar mucho mejor poner verdes a pediatras, ginec&oacute;logos y matronas y seleccionar a unos pocos profesionales de referencia a los que enviar a las mujeres sabiendo que ya est&aacute;n de nuestro lado &iexcl;&iexcl;&iexcl;&iexcl;Mua, ja, ja, ja, ja!!!!!<br />- Susana: &iquest;Y si nos abrimos un blog?<br />- Entrenador: Esa es una Acci&oacute;n Estrat&eacute;gica del PECHO de m&aacute;xima prioridad. Un blog ofrece una tribuna desde la que arengar a las masas y ofrecerles nuestras p&iacute;ldoras de verdad absoluta que se habr&aacute;n de tragar sin ning&uacute;n tipo de criterio y consideraci&oacute;n. Os convertir&eacute;is en gur&uacute;s y en madres blogueras iluminadas, impartiendo sabidur&iacute;a y conminando a las madres a hacer tribu, lo que las acercar&aacute; m&aacute;s todav&iacute;a a nuestras filas. &iexcl;&iexcl;&iexcl;&iexcl;Mua, ja, ja, ja, ja!!!!!<br />- Anna: &iquest;Tambi&eacute;n tenemos que imitar la risa mal&eacute;fica cuando hablemos con otras madres?<br />- Entrenador: &iexcl;&iexcl;&iexcl;Otra que no se entera ni del NODO!!! Ainssssss.</p>\r\n<p>&nbsp;</p>',1,0);
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
-- Table structure for table `mails_status`
--

DROP TABLE IF EXISTS `mails_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_status` (
  `id` smallint(1) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_status`
--

LOCK TABLES `mails_status` WRITE;
/*!40000 ALTER TABLE `mails_status` DISABLE KEYS */;
INSERT INTO `mails_status` VALUES (0,'nuevo'),(1,'le&iacute;do');
/*!40000 ALTER TABLE `mails_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_botones`
--

DROP TABLE IF EXISTS `menus_botones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus_botones` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `posicion` int(1) NOT NULL DEFAULT '0',
  `imagen` varchar(20) NOT NULL DEFAULT '',
  `ruta` text NOT NULL,
  `privilegios` smallint(1) NOT NULL DEFAULT '2',
  `submenu` smallint(1) NOT NULL DEFAULT '0',
  `visible` smallint(1) NOT NULL DEFAULT '1',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus_botones`
--

LOCK TABLES `menus_botones` WRITE;
/*!40000 ALTER TABLE `menus_botones` DISABLE KEYS */;
INSERT INTO `menus_botones` VALUES (1,'inicio',7,'','index.php',1,1,1),(3,'contacto',7,'','contacto.php',1,1,1),(2,'trayectoria',7,'','perfil.php',1,1,1);
/*!40000 ALTER TABLE `menus_botones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_posicion`
--

DROP TABLE IF EXISTS `menus_posicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus_posicion` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `imagen` varchar(10) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus_posicion`
--

LOCK TABLES `menus_posicion` WRITE;
/*!40000 ALTER TABLE `menus_posicion` DISABLE KEYS */;
INSERT INTO `menus_posicion` VALUES (1,'Ninguno',''),(1,'Central',''),(2,'Izq. Superior',''),(3,'Der. Superior',''),(4,'Izq. Inferior',''),(5,'Der. Inferior',''),(6,'Inferior',''),(7,'Superior','');
/*!40000 ALTER TABLE `menus_posicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_submenu`
--

DROP TABLE IF EXISTS `menus_submenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus_submenu` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `vin` int(3) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus_submenu`
--

LOCK TABLES `menus_submenu` WRITE;
/*!40000 ALTER TABLE `menus_submenu` DISABLE KEYS */;
INSERT INTO `menus_submenu` VALUES (1,'Ninguno',0);
/*!40000 ALTER TABLE `menus_submenu` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias_index`
--

LOCK TABLES `noticias_index` WRITE;
/*!40000 ALTER TABLE `noticias_index` DISABLE KEYS */;
INSERT INTO `noticias_index` VALUES (12,'aprueban reforma artículo 24 ','09 de mayo de 2013','<p><strong>9 de mayo.-</strong> En sesi&oacute;n ordinaria y con unanimidad de la fracci&oacute;n parlamentaria del PAN, se&nbsp; aprob&oacute; la reforma al art&iacute;culo 24 Constitucional, referente a la libertad de culto. Con ello el PAN consagra la libertad y los derechos humanos de los mexicanos. Cada ciudadano ser&aacute; libre de decidir que religi&oacute;n profesar y su forma de manifestarla</p>',1,'2013-05-09','',0,2),(17,'','','<p><strong>9 de mayo.-</strong> En el Pleno del Congreso, la&nbsp; diputada panista Norma Ang&eacute;lica Cordero presenta&nbsp; iniciativa para proteger a la infancia jalisciense que acude a&nbsp; guarder&iacute;as a fin de que se&nbsp; proteja la&nbsp; integridad f&iacute;sica y psicol&oacute;gica de los menores. Se pretende que los Centros de Atenci&oacute;n Infantil garanticen los derechos de las ni&ntilde;as y ni&ntilde;os a la vida, a la integridad personal, a su dignidad, alimentaci&oacute;n, salud, educaci&oacute;n, sano esparcimiento y a su pleno desarrollo, bajo la estricta&nbsp;supervisi&oacute;n&nbsp;de las autoridades.</p>',1,'2013-05-09','',0,2),(18,'','','<p><strong>9 de mayo.-</strong> El grupo parlamentario de Acci&oacute;n Nacional presenta en el Pleno, la iniciativa para que el Congreso&nbsp; reconozca a la reportera tapat&iacute;a Alejandra Xanic Von Bertrab, ganadora del premio Pullitzer, uno de los galardones m&aacute;s prestigiados a nivel mundial en el mundo del periodismo. El diputado Gildardo Guerrero Torres se&ntilde;al&oacute; que el Partido Acci&oacute;n Nacional entiende la labor period&iacute;stica como la voz de cr&iacute;tica del pueblo, declarando como deber del Estado el fomento y protecci&oacute;n de quien ejerce el verdadero periodismo.</p>',1,'2013-05-09','',0,2),(13,'','','<p><strong>9 de mayo</strong>.- El l&iacute;der de la bancada panista, Jos&eacute; Gildardo Guerrero Torres, afirm&oacute; que lo que permite el nuevo&nbsp;art&iacute;culo&nbsp;24&nbsp;es la libertad de ejercicio religioso y da total libertad para que se pueda hacer lo que &eacute;ticamente quieras respecto a las creencias internas. Por su parte el legislador panista&nbsp; Alberto Esquer se&ntilde;al&oacute; que es falso que con esto se va a poder entrar a las escuelas p&uacute;blicas con temas religiosos, es simplemente darle al ciudadano la libertad de culto y de religi&oacute;n\".</p>',1,'2013-05-09','',0,2),(14,'','','<p><strong>9 de mayo.-</strong> En el Pleno, se aprobaron las minutas de proyecto de decreto que reforman diversos art&iacute;culos en lo relativo a la competitividad y telecomunicaciones,&nbsp;El diputado panista Juan Jos&eacute; Cuevas Garc&iacute;a  se pronuncia a favor de la reforma federal porque estima que los j&oacute;venes ser&aacute;n tambi&eacute;n beneficiados, adem&aacute;s de que propuso una modificaci&oacute;n para contribuir a fortalecer m&aacute;s el tema de la competitividad.</p>',1,'2013-05-09','',0,2),(15,'','','<p><strong>9 de mayo.-</strong> En el Pleno se aprueba el Acuerdo que suscriben&nbsp; los diputados panistas Norma Ang&eacute;lica Cordero Prado, Jos&eacute; Hern&aacute;n Cort&eacute;s Berumen, Jaime D&iacute;az Brambila, El&iacute;as I&ntilde;iguez Mej&iacute;a y otros legisladores, en el cual se exhorta al Gobierno del Estado para que la leche requerida para el consumo de los programas del DIF, escuelas p&uacute;blicas, hospitales y reclusorios bajo la administraci&oacute;n estatal, sea adquirida a productores radicados en Jalisco, y que en todos los casos se trate &uacute;nicamente de leche fluida.</p>',1,'2013-05-09','',0,2),(16,'','','<p><strong>9 de mayo.-</strong> Presenta el diputado panista Juan Jos&eacute; Cuevas iniciativa para que se imparta de manera obligatoria el idioma ingl&eacute;s en la educaci&oacute;n b&aacute;sica, media superior y superior.</p>',1,'2013-05-09','',0,2),(8,'gira cárcel municipal de Ocotlán ','mayo de 2013 ','<p><strong>8 de mayo.-</strong>&nbsp; A fin de buscar mejores condiciones carcelarias, el diputado panista V&iacute;ctor Manuel S&aacute;nchez Orozco, Presidente de la Comisi&oacute;n de Readaptaci&oacute;n Social encabeza gira de trabajo a la c&aacute;rcel municipal de Ocotl&aacute;n</p>',1,'2013-05-08','',0,2),(9,'apoyo al campo jalisciense ','mayo de 2013 ','<p><strong>8 de mayo.-</strong> El diputado panista&nbsp; Alberto Esquer Guti&eacute;rrez, Presidente de la Comisi&oacute;n de Desarrollo Agr&iacute;cola&nbsp; propone la creaci&oacute;n de una comisi&oacute;n tripartita con el fin de acelerar trabajos y acciones para apoyar el campo jalisciense. Estar&iacute;a integrada por las comisiones legislativas de ganader&iacute;a, &nbsp;desarrollo forestal y desarrollo agr&iacute;cola.</p>',1,'2013-05-08','',0,2),(10,'comité evaluador de aspirantes al IEPC','mayo de 2013','<p>&nbsp;</p>\r\n<p><strong>8 de mayo.-</strong> <strong>&nbsp;</strong>Recibe el diputado panista Alberto Esquer Guti&eacute;rrez, comunicado firmado por 26 organismos ciudadanos en el que se brinda un total respaldo a la propuesta de &eacute;l y del diputado El&iacute;as Octavio I&ntilde;&iacute;guez, para la creaci&oacute;n de un Comit&eacute; Evaluador que se responsabilizar&iacute;a de de dise&ntilde;ar y aplicar los mecanismos de selecci&oacute;n de&nbsp; candidatos del IEPC.</p>\r\n<p>&nbsp;</p>',1,'2013-05-08','',0,2),(7,'Presa el Zapotillo ','mayo de 2013 ','<p><strong>7 de mayo</strong>.-&nbsp; Presa el Zapotillo. Los diputados pansitas Norma Ang&eacute;lica Cordero Prado, El&iacute;as Octavio I&ntilde;iguez y Jaime Ismael D&iacute;az Brambila, acuden a la visita que realizaron legisladores locales para escuchar a los habitantes de Temacapul&iacute;n</p>',1,'2013-05-07','',0,2),(19,'','','<p><strong>13 de mayo.-</strong> Aprob&oacute; la Comisi&oacute;n de Asuntos Electorales la conformaci&oacute;n del Comit&eacute; Evaluador, que se encargar&aacute; de analizar los perfiles de los aspirantes que buscan un espacio en el Consejo del Instituto Electoral y de Participaci&oacute;n Ciudadana. La propuesta de este comit&eacute;, fue realizada por la fracci&oacute;n del PAN y representada al interior de la comisi&oacute;n de Asuntos Electorales por los diputados panistas Alberto Esquer Guti&eacute;rrez  y El&iacute;as I&ntilde;iguez Mej&iacute;a.</p>',1,'2013-05-13','',0,2),(20,'','','<p><strong>14 de mayo.-</strong>&nbsp; Durante los trabajos de la Comisi&oacute;n de Desarrollo Econ&oacute;mico, presididos por el diputado panista Juan Jos&eacute; Cuevas Garc&iacute;a  se cont&oacute; con la presencia del Secretario del ramo. El diputado expres&oacute; la conveniencia de buscar m&aacute;s apoyos en el presupuesto del siguiente a&ntilde;o para mejorar la competitividad y productividad en Jalisco.</p>',1,'2013-05-14','',0,2),(21,'','','<p><strong>14 de mayo.-</strong> En rueda de Prensa, el diputado panista V&iacute;ctor Manuel da a conocer la realizaci&oacute;n del foro que pretende unificar el C&oacute;digo Penal ya que&nbsp; Jalisco es de las entidades que m&aacute;s atraso presenta en el Nuevo Sistema de Justicia Penal. Se&ntilde;ala que es urgente avanzar no s&oacute;lo en el tema de juicios orales sino en varias reformas relacionadas en materia de justicia.</p>',1,'2013-05-14','',0,2),(22,'','','<p><strong>15 de mayo.-</strong> Se aprueba en la Comisi&oacute;n de Salud, la iniciativa del diputado panista El&iacute;as Octavio I&ntilde;&iacute;guez la cual propone declarar el 14 de noviembre como el D&iacute;a Estatal de la Prevenci&oacute;n y Combate a la Diabetes, a fin de hacer m&aacute;s conciencia sobre dicha enfermedad.</p>',1,'2013-05-15','',0,2),(23,'','','<p><strong>15 de mayo.-</strong> Inaugura Casa de Enlace la diputada panista Mariana Ar&aacute;mbula Mel&eacute;ndez. La Casa de Enlace Legislativa se encuentra ubicada en Av. Enrique D&iacute;az de Le&oacute;n no. 2155, Col. Jardines del Country, en Guadalajara. El tel&eacute;fono de oficina es el: 33-33304571 y el horario de servicio es de lunes a viernes de 9 a 5 de la tarde. Algunos de los servicios que ofrecer&aacute; este espacio de atenci&oacute;n ciudadana destaca: gestiones ante las Instituciones estatales y municipales.</p>',1,'2013-05-15','',0,2),(24,'','','<p><strong>21 y 22 de mayo.-</strong> Foro para Unificar el C&oacute;digo Procesal y Penal de Jalisco. El diputado panista V&iacute;ctor Manuel S&aacute;nchez Orozco, presidente de la Comisi&oacute;n de Readaptaci&oacute;n Social organiz&oacute; el foro en el que se convoc&oacute; a especialistas, acad&eacute;micos y poderes del estado para analizar los trabajos que deben realizarse a fin de transitar de un sistema penal inquisitorio al uno que utilice la justicia alternativa.</p>',1,'2013-05-21','',0,2),(25,'','','<p><strong>21 de mayo.-</strong> En la comisi&oacute;n de Puntos Constitucionales, estudios Legislativos y Reglamentos que preside el diputado panista Hern&aacute;n Cort&eacute;s Berumen, se aprueba el dictamen de decreto que contiene reformas impulsadas por el diputado panista Gildardo Guerrero Torres, qui&eacute;n busca elevar al Congreso de la Uni&oacute;n una propuesta de reforma al delito de defraudaci&oacute;n fiscal y otra para reformar el Delito de Peculado en el C&oacute;digo Penal. Se trata de castigar a los servidores p&uacute;blicos y representantes populares que retengan y no enteren los impuestos y las contribuciones realizadas por los trabajadores.</p>',1,'2013-05-21','',0,2),(26,'','','<p><strong>24 de mayo.-</strong> La diputada panista Mariana Ar&aacute;mbula, Presidenta de la Comisi&oacute;n de Ciencia y Tecnolog&iacute;a, inform&oacute; que trabaja en&nbsp; coordinaci&oacute;n con la Secretar&iacute;a de Innovaci&oacute;n del Gobierno&nbsp; para darle impulso a las reformas necesarias a la Ley de Fomento a la Ciencia y Tecnolog&iacute;a. Entre las acciones que ha llevado a cabo la comisi&oacute;n,&nbsp; la diputada se&ntilde;al&oacute; que ha logrado gestionar recursos para apoyar a cinco menores de secundaria, los cuales representan a Jalisco en el evento internacional RoboCub 2013,&nbsp; que tendr&aacute; lugar en Holanda, el mes pr&oacute;ximo.</p>',1,'2013-05-24','',0,2),(27,'','','<p><strong>27 de mayo.-</strong> La diputada panista pansita Norma Ang&eacute;lica Cordero Prado, vocal de la Comisi&oacute;n de Desarrollo Humano y Familia pidi&oacute; que los productores ganaderos sean contemplados como proveedores dentro de la Cruzada Nacional contra el Hambre y que no sean disminuidos el n&uacute;mero de beneficiarios de leche en el Estado.</p>',1,'2013-05-27','',0,2),(28,'','','<p><strong>27 de mayo.-</strong> Acudi&oacute; el diputado panista Juan Jos&eacute; Cuevas a los trabajos de la Comisi&oacute;n de Desarrollo Humano y Familia en donde estuvieron presentes integrantes de la Asociaci&oacute;n 22 de abril de Guadalajara. Despu&eacute;s de escuchar los planteamientos, el legislador panista pidi&oacute; valorar la posibilidad de integrar una Comisi&oacute;n dentro del Congreso que este al pendiente de que se cumpla al 100 por ciento los acuerdos y pendientes que quedan por resolver en el gobierno.</p>',1,'2013-05-27','',0,2),(29,'','','<p><strong>28 de mayo.- </strong>Aprueba el Comit&eacute; de Peticiones y Atenci&oacute;n Ciudadana presidido por la legisladora panista Gabriela Andal&oacute;n Becerra  el programa \"Atenci&oacute;n y Orientaci&oacute;n Ciudadana\" cuyo objetivo es darle al ciudadano un servicio eficaz y humano con la implementaci&oacute;n de un m&oacute;dulo que se encargue de canalizar las peticiones de las personas que acuden al Congreso.</p>',1,'2013-05-28','',0,2),(30,'','','<p><strong>31 de mayo.-</strong> En la sesi&oacute;n extraordinaria en la cual se eligieron a los nuevos integrantes del&nbsp; IEPC, el legislador panista El&iacute;as I&ntilde;iguez Mej&iacute;a, expuso que uno de los retos importantes para el nuevo organismo, es el impulsar herramientas de participaci&oacute;n social como la consulta popular y el refer&eacute;ndum.</p>',1,'2013-05-31','',0,2),(31,'','','<p><strong>31 de mayo.-</strong> El PAN por la equidad de g&eacute;nero. La fracci&oacute;n del Partido Acci&oacute;n Nacional en el Congreso del Estado impuls&oacute; a tres aspirantes en la renovaci&oacute;n del Instituto Electoral, dos de&nbsp; los cuales son mujeres, lo cual representa un logro que contribuir&aacute; a un mejor desempe&ntilde;o en la nueva conformaci&oacute;n del&nbsp; IEPC.</p>',1,'2013-05-31','',0,2),(32,'','','<p><strong>8 de abril.-</strong> Los diputados Hern&aacute;n Cort&eacute;s Berumen, Jaime D&iacute;az Brambila y V&iacute;ctor Manuel S&aacute;nchez   Orozco acuden a&nbsp; reuni&oacute;n con integrantes de Movidemo, organizaci&oacute;n que busca aportar propuestas para mejorar la din&aacute;mica urbana en la Zona metropolitana.</p>',1,'2013-04-08','',0,2),(33,'','','<p><strong>9 de abril.-</strong>&nbsp; El Grupo Parlamentario de Acci&oacute;n Nacional afina agenda legislativa en su primera sesi&oacute;n ordinaria convocada en Puerto Vallarta. El diputado Coordinador Gildardo Guerrero indica que el trabajo de los diputados del PAN se encaminar&aacute; en lograr ser una oposici&oacute;n responsable, propositiva y constructiva. La agenda delinea varias acciones entre las que sobresale el trabajo para generar un organismo colegiado que&nbsp; revise la rendici&oacute;n de cuentas y vigile las finanzas del Estado; trabajar en propuesta del \"Mando &Uacute;nico\",&nbsp; propuesta que&nbsp; ya hab&iacute;a sido impulsada por el anterior gobierno panista; apoyo a la propuesta del transporte escolar gratuito, sin maquillajes, que sea totalmente gratuito; generar una movilidad integral no solo en la capital del estado sino tambi&eacute;n para las ciudades medias del interior; as&iacute; como lograr que la asignaci&oacute;n de obra p&uacute;blica sea participativa de manera ciudadana.</p>',1,'2013-04-09','',0,2),(34,'','','<p><strong>10 de abril.-</strong> En rueda de prensa, el diputado panista Guillermo Mart&iacute;nez Mora da a conocer la realizaci&oacute;n&nbsp; del foro para la reforma educativa.</p>',1,'2013-04-10','',0,2),(35,'','','<p><strong>15 de abril.-</strong> El diputado panista Gildardo Guerrero Torres, vocal de la Comisi&oacute;n de Asuntos Metropolitanos propone enriquecer&nbsp; los trabajos de la reforma integral de movilidad sustentable con las&nbsp; propuestas de la sociedad civil.</p>\r\n<p>&nbsp;</p>',1,'2013-04-15','',0,2),(36,'','','<p><strong>17 de abril.-</strong> La diputada panista Mariana Ar&aacute;mbula&nbsp; presenta ante&nbsp; los medios de comunicaci&oacute;n, su propuesta para contribuir a la erradicaci&oacute;n del maltrato infantil, incorporando al C&oacute;digo Penal la tipificaci&oacute;n de \"maltrato infantil\" como delito grave, lo cual garantizar&iacute;a una protecci&oacute;n&nbsp; m&aacute;s justa para los menores.</p>',1,'2013-04-17','',0,2),(37,'','','<p><strong>17 de abril.</strong>- La diputada panista Norma Ang&eacute;lica Cordero, Presidenta de la Comisi&oacute;n de Ganader&iacute;a informa que mantiene estrecha vinculaci&oacute;n con la Secretar&iacute;a de Desarrollo Rural y la Asociaci&oacute;n Ganadera de Jalisco para avanzar en proyectos como el de la secadora de leche ubicada en el municipio de Lagos de Moreno.</p>',1,'2013-04-17','',0,2),(38,'','','<p><strong>17 de abril.-</strong> El diputado panista El&iacute;as Octavio I&ntilde;&iacute;guez Mej&iacute;a, vocal de la Comisi&oacute;n de Trabajo y Previsi&oacute;n Social pide al Secretario del Trabajo&nbsp; Eduardo Almaguer Ram&iacute;rez el nombre de las personas que interpusieron juicio laboral contra el SIAPA y obtuvieron sentencia favorable a sus juicios laborales. Consider&oacute; el legislador una situaci&oacute;n injusta y no v&aacute;lida para los jaliscienses dicha resoluci&oacute;n.</p>',1,'2013-04-17','',0,2),(39,'','','<p><strong>18 de abril.-</strong> La diputada Gabriela Andal&oacute;n Becerra presenta en sesi&oacute;n de Pleno propuesta para modificar el marco jur&iacute;dico electoral a fin de establecer que por lo menos el 40 por ciento de los candidatos a diputados locales sean de distinto g&eacute;nero, adem&aacute;s de que los suplentes a diputados sean del mismo sexo para evitar los llamados casos de \"juanitas\" en el cual se pide licencia para dejarle el cargo a un hombre.</p>',1,'2013-04-18','',0,2),(40,'','','<p><strong>18 de abril.-</strong> El Pleno se aprueba la petici&oacute;n del diputado panista Alberto Esquer Guti&eacute;rrez  para exhortar al Poder Ejecutivo a fin de que otorguen apoyos econ&oacute;micos a los productores de ma&iacute;z blanco.</p>',1,'2013-04-18','',0,2),(41,'','','<p><strong>18 de abril.-</strong> En rueda de prensa, el diputado El&iacute;as Octavio I&ntilde;&iacute;guez, Presidente de la Comisi&oacute;n de Salud&nbsp; informa que se reunir&aacute;n&nbsp; legisladores de su comisi&oacute;n con el titular de salud Jaime Agust&iacute;n con al finalidad de elaborar una agenda com&uacute;n de trabajo en las que se incluir&aacute; los problemas que enfrentan varios centros de salud de algunos municipios, los cuales no brindan atenci&oacute;n m&eacute;dica los fines de semana.</p>\r\n<p>&nbsp;</p>',1,'2013-04-18','',0,2),(42,'','','<p><strong>19 de abril.-</strong> Se celebra el&nbsp; Foro para la  Reforma Educativa convocado por el diputado Guillermo Mart&iacute;nez Mora a fin de escuchar los distintos planteamientos de la sociedad y de los encargados de la educaci&oacute;n para avanzar en dicho tema.</p>',1,'2013-04-19','',0,2),(43,'','','<p><strong>23 de abril.-</strong> En los trabajos de la Comisi&oacute;n de Desarrollo Econ&oacute;mico presididos por el diputado Juan Jos&eacute; Cuevas Garc&iacute;a, se acord&oacute; citar al titular de la secretaria del ramo Jos&eacute; Palacios Jim&eacute;nez a fin de conocer los programas que detonar&aacute;n el desarrollo en Jalisco as&iacute; como los alcances del proyecto denominado Instituto Jalisciense del Emprendedor.</p>\r\n<p>&nbsp;</p>',1,'2013-04-23','',0,2),(44,'','','<p><strong>23 de abril.-</strong> Aprueba la Comisi&oacute;n de Desarrollo Humano y Familia la iniciativa de la diputada vocal Mariana Ar&aacute;mbula Mel&eacute;ndez que pretende apoyar a los migrantes que transitan en Jalisco, brindando asesor&iacute;a y alimentaci&oacute;n. Tambi&eacute;n se aprob&oacute; otra de sus iniciativas que declara el 19 de noviembre \"D&iacute;a Estatal de la Prevenci&oacute;n y atenci&oacute;n al Abuso sexual Infantil\".</p>',1,'2013-04-23','',0,2),(45,'','','<p><strong>24 de abril.-</strong> En el marco de los festejos del D&iacute;a del Ni&ntilde;o, la diputada Mariana Ar&aacute;mbula Mel&eacute;ndez en su calidad de Presidenta de la Comisi&oacute;n de Ciencia y Tecnolog&iacute;a otorga reconocimiento a los ni&ntilde;os Fernando y Camilo Guzm&aacute;n Arias por haber obtenido el primer lugar a nivel Latinoam&eacute;rica en divulgaci&oacute;n y vinculaci&oacute;n cient&iacute;fica. Los ni&ntilde;os de nueve a&ntilde;os presentaron en Quito, Ecuador un proyecto para concientizar a menores sobre la elecci&oacute;n y cuidado de las mascotas.</p>',1,'2013-04-24','',0,2),(46,'','','<p><strong>24 de abril.-</strong> Visita a Reclusorio de Puente Grande.- Comitiva de diputados integrantes de la Comisi&oacute;n de Readaptaci&oacute;n Social, Presidida por el diputado V&iacute;ctor Manuel S&aacute;nchez   Orozco quien busca alternativas para canalizar mayores recursos financieros para subsanar carencias en dichas c&aacute;rceles&nbsp; y as&iacute;&nbsp; cumplir con la tarea de reinserci&oacute;n social de los internos.</p>',1,'2013-04-24','',0,2),(47,'','','<p><strong>24 de abril.-</strong> El diputado El&iacute;as Octavio I&ntilde;&iacute;guez Mej&iacute;a, Presidente de la Comisi&oacute;n de Salud invita a reuni&oacute;n de trabajo a especialistas que hablaron de prevenci&oacute;n y acciones para disminuir accidentes automovil&iacute;sticos generados por el consumo del alcohol. Se pronuncia porque el gobierno del Estado contemple el tema en su agenda de trabajo y se logre disminuir&nbsp; la expedici&oacute;n de licencias municipales para la venta y consumo de embriagantes, entre otras acciones.</p>',1,'2013-04-24','',0,2),(48,'','','<p><strong>24 de abril.</strong>- &nbsp;Durante los trabajos de la Comisi&oacute;n de Educaci&oacute;n, los diputados panistas Guillermo Mart&iacute;nez Mora en su car&aacute;cter de presidente de dicha comisi&oacute;n legislativa y el vocal Alberto   Esquer Guti&eacute;rrez &nbsp;se muestran interesados en conocer el mecanismo que utilizar&aacute; el gobierno para dotar de transporte gratuito.</p>',1,'2013-04-24','',0,2),(49,'','','<p><strong>26 de abril.-</strong> Presenta el diputado panista Jaime D&iacute;az Brambila ante el Pleno del Congreso, iniciativa que exhorta a la Secretar&iacute;a de Salud de Jalisco implementar programas para&nbsp; prevenir riesgos en la salud por el consumo excesivo de sal en los alimentos.</p>',1,'2013-04-26','',0,2),(50,'','','<p><strong>29 de abril.-</strong> En&nbsp; rueda de prensa, la diputada panista Norma Ang&eacute;lica Cordero Prado da a conocer la iniciativa para regular las estancias infantiles. Se pretende que los Centros de Atenci&oacute;n Infantil garanticen los derechos de las ni&ntilde;as y ni&ntilde;os a la vida, a la integridad personal, a su dignidad, alimentaci&oacute;n, salud, educaci&oacute;n, sano esparcimiento y a su pleno desarrollo, bajo la estricta supervisi&oacute;n de las autoridades.</p>\r\n<p>&nbsp;</p>',1,'2013-04-29','',0,2),(51,'','','<p>&nbsp;<strong>18 de abril.-</strong> Se aprueba iniciativa del diputado Jaime Ismael D&iacute;az Brambila que exhorta a los delegados de la Semarnat, Profepa, PGR y Semadet, as&iacute; como a los presidentes municipales de Ocotl&aacute;n, La Barca, Atotonilco el Alto, a efecto de evitar la deforestaci&oacute;n y alteraci&oacute;n del medio ambiente.</p>',1,'2013-04-18','',0,2),(52,'','','<p><strong>4 de marzo.-</strong> El diputado coordinador del PAN, Gildardo Guerrero Torres integrante de la Junta de Coordinaci&oacute;n Pol&iacute;tica, da su voto a favor para que dicho &oacute;rgano parlamentario ofrezca m&aacute;s transparencia.</p>',1,'2013-03-04','',0,2),(53,'','','<p><strong>5 de marzo.-</strong>Reuni&oacute;n de diputados con el titular del Poder Ejecutivo. Gildardo  Guerrero Torres, diputado Coordinador de la Fracci&oacute;n del PAN se&ntilde;ala que el contrapeso arm&oacute;nico entre poderes es un elemento fundamental para el correcto ejercicio de gobierno, por lo que el Ejecutivo y Legislativo deben trabajar de la mano para lograr el bien com&uacute;n de los jaliscienses.</p>',1,'2013-03-05','',0,2),(54,'','','<p><strong>8 de marzo.-</strong> En el marco del D&iacute;a Internacional de la Mujer, la diputada panista Gabriela Andal&oacute;n Becerra  presenta en rueda de prensa dos iniciativas para fortalecer la participaci&oacute;n de las mujeres en Jalisco. Propone homologar el C&oacute;digo Electoral con la legislaci&oacute;n federal para aumentar la cuota de g&eacute;nero en las candidaturas de elecci&oacute;n popular, as&iacute; como otra iniciativa para que las diputadas presidan a lo menos dos veces en cada legislatura la Mesa Directiva del Congreso.</p>',1,'2013-03-08','',0,2),(55,'','','<p><strong>8 de marzo.-</strong> El Pleno aprueba iniciativa de la legisladora panista Norma  Ang&eacute;lica Cordero Prado, la cual solicita al Fiscal Central del Estado, Rafael Castellanos, que instruya al personal especializado&nbsp; en el delito de abigeato para que al recibir denuncia sobre el robo de animales, se avoquen a integrar averiguaci&oacute;n previa de manera pronta e imparcial.</p>',1,'2013-03-08','',0,2),(56,'','','<p><strong>8 de marzo.-</strong> El Pleno aprueba iniciativa del diputado panista Jaime D&iacute;az Brambila para reciclar papel en las labores del Congreso, esto con el fin de contribuir a la preservaci&oacute;n de los recursos naturales. Recuerda que por cada tonelada de papel reciclado, se salvan 17 &aacute;rboles y se ahorran 21 mil litros de agua.</p>',1,'2013-03-08','',0,2),(57,'','','<p><strong>12 de marzo.-</strong> Contempla la legisladora panista Gabriela Andal&oacute;n Becerra, Presidenta del Comit&eacute; de Peticiones y atenci&oacute;n ciudadana, la posibilidad de instalar en el Congreso un modulo de atenci&oacute;n ciudadana que de un servicio a los visitantes m&aacute;s digno y especializado.</p>',1,'2013-03-12','',0,2),(58,'','','<p><strong>13 de marzo.-</strong> en los trabajos de la Comisi&oacute;n de Asuntos Metropolitanos, el diputado panista Gildardo Guerrero plantea la conveniencia de ir en bicicleta a la reuni&oacute;n a realizar en el Parque Metropolitano para atender inquietudes de la sociedad civil sobre movilidad no motorizada.</p>',1,'2013-03-13','',0,2),(59,'','','<p><strong>14 de marzo.-</strong> El diputado pansita El&iacute;as Octavio I&ntilde;&iacute;guez Mej&iacute;a, vocal de la&nbsp; Comisi&oacute;n de Asuntos Electorales,&nbsp; se pronuncia a favor de la equidad de g&eacute;nero para que mujeres asuman posiciones importantes ya que tienen los mismos derechos para integrar el IEPC. Sin embargo, dice no estar de acuerdo en que se fije una cuota de g&eacute;nero, sino dar&nbsp; impulso a gente capaz y con experiencia&nbsp; para integrar al nuevo organismo.</p>\r\n<p>&nbsp;</p>',1,'2013-03-14','',0,2),(60,'','','<p><strong>14 de marzo.-</strong> El diputado pansita El&iacute;as Octavio I&ntilde;&iacute;guez Mej&iacute;a, vocal de la&nbsp; Comisi&oacute;n de Asuntos Electorales,&nbsp; se pronuncia a favor de la equidad de g&eacute;nero para que mujeres asuman posiciones importantes ya que tienen los mismos derechos para integrar el IEPC. Sin embargo, dice no estar de acuerdo en que se fije una cuota de g&eacute;nero, sino dar&nbsp; impulso a gente capaz y con experiencia&nbsp; para integrar al nuevo organismo.</p>\r\n<p>&nbsp;</p>',1,'2013-03-14','',0,2),(61,'','','<p><strong>19 de marzo.-</strong>&nbsp; En los trabajos de la Comisi&oacute;n de Trabajo y Previsi&oacute;n Social, el diputado pansita El&iacute;as I&ntilde;&iacute;guez Mej&iacute;a pide invitar al Secretario del ramo, Eduardo Almaguer para estrechar esfuerzos a fin de sacar adelante pendientes de la dependencia, a fin de encontrar soluciones, como en el caso de los rezagos de juicios laborales.</p>',1,'2013-03-19','',0,2),(62,'','','<p><strong>19 de marzo.-</strong> El diputado pansita Jaime Ismael D&iacute;az Brambila, vocal de la Comisi&oacute;n de Medio Ambiente y Desarrollo Sustentable se adhiere a la iniciativa dictaminada por la Comisi&oacute;n de Desarrollo Forestal para que sea contemplado en la Ley de Desarrollo Forestal Sustentable&nbsp; incentivar a las personas a crear en sus domicilios las llamadas Azoteas Verdes con apoyos del impuesto predial.</p>',1,'2013-03-19','',0,2),(63,'','','<p><strong>22 de marzo.-</strong> La Comisi&oacute;n de Ganader&iacute;a, presidida por la diputada panista Norma Ang&eacute;lica Cordero Prado se compromete a sumar esfuerzos con la Seder y la  Uni&oacute;n Ganadera para impulsar la producci&oacute;n pecuaria en al entidad. Manifest&oacute; la represente social la necesidad de valorar m&aacute;s el trabajo y el esfuerzo de los ganaderos de Jalisco.</p>',1,'2013-03-22','',0,2),(64,'','','<p><strong>31 de Marzo.-</strong> Sesi&oacute;n Solemne en Lagos de Moreno por el 450 aniversario de su fundaci&oacute;n. La diputada panista Norma Ang&eacute;lica Cordero, oriunda de dicha ciudad expresa durante la sesi&oacute;n solemne que&nbsp; Lagos, patrimonio cultural de la humanidad, reclama m&aacute;s impulso, m&aacute;s recursos y m&aacute;s equidad. Pide al gobernador Arist&oacute;teles mayores oportunidades de estudio y trabajo para los j&oacute;venes, potencializar la vocaci&oacute;n lechera de la regi&oacute;n, la construcci&oacute;n de una zona industrial que pueda competir con Aguascalientes y Guanajuato as&iacute; como mejores redes de comunicaci&oacute;n.</p>',1,'2013-03-31','',0,2),(65,'','','<p><strong>1 de febrero.-</strong> El legislador panista Victor Manuel S&aacute;nchez Orozco exhorta al gobernador electo Jorge Arist&oacute;teles para que reconsidere y haga una revisi&oacute;n a fondo del proyecto de la Presa El Zapotillo, ya que hay elementos t&eacute;cnicos que no se han puesto en consideraci&oacute;n y se podr&iacute;an afectar el suministro de agua a la zona metropolitana de Guadalajara.</p>',1,'2013-02-01','',0,2),(66,'','','<p><strong>5 de febrero.-</strong> En rueda de prensa, la diputada panista Mariana Arambula, integrante de la Comisi&oacute;n de Derechos Humanos,&nbsp; inform&oacute; de su iniciativa de ley que contempla reformas al C&oacute;digo de Asistencia Social para que el DIF Jalisco, instale centros de atenci&oacute;n a apoyo a los migrantes.</p>',1,'2013-02-05','',0,2),(67,'','','<p><strong>6 de febrero.-</strong> El diputado panista Gildardo Guerrero informa que se han promovido acciones legales para castigar a los responsables de las anteriores legislaturas que sumieron al Congreso en crisis financiera.</p>',1,'2013-02-06','',0,2),(68,'','','<p><strong>6 de febrero.-</strong> La Comisi&oacute;n de Puntos Constitucionales, Estudios Legislativos y Reglamentos, que preside el diputado pansita Hern&aacute;n Cort&eacute;s Berumen aprueba reglamentaciones para contratar personal del Congreso, ordenar el manejo de formas valoradas y comprobar plenamente el dinero para las casas de enlace de los diputados.</p>',1,'2013-02-06','',0,2),(69,'','','<p><strong>6 de febrero.-</strong> En rueda de prensa, el Diputado panista V&iacute;ctor   Manuel S&aacute;nchez Orozco &nbsp;denuncia de falta de Transparencia por parte de la ASEJ por no publicar la informaci&oacute;n fundamental a que est&aacute; obligado por ley.</p>\r\n<p>&nbsp;</p>',1,'2013-02-06','',0,2),(70,'','','<p><strong>12 de febrero.-</strong> Con el prop&oacute;sito de abonar a los trabajos de gobierno para la erradicaci&oacute;n del VIH en Latinoam&eacute;rica y el Caribe, se realiza el foro \"Declaraci&oacute;n Ministerial en Jalisco: Prevenir con Educaci&oacute;n\" convocado por el legislador del PAN El&iacute;as Octavio I&ntilde;&iacute;guez en su calidad de Presidente de la Comisi&oacute;n de Salud.&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-02-12','',0,2),(71,'','','<p><strong>18 de febrero.-</strong> Con la finalidad de reconstruir la confianza ciudadana hacia sus gobernantes, el diputado del PAN Juan Jos&eacute; Cuevas Garc&iacute;a, informa en rueda de prensa que presentar&aacute; una iniciativa para combatir la impunidad de los funcionarios p&uacute;blicos y evitar que &eacute;stos sean \"juez y parte\" en la fiscalizaci&oacute;n de las cuentas p&uacute;blicas.</p>',1,'2013-02-18','',0,2),(72,'','','<p><strong>19 de febrero.-</strong> El diputado del PAN Hern&aacute;n Cort&eacute;s presenta la  denominada Ley Vitrina, que&nbsp;&nbsp; pretende modificar a la ley de Transparencia de Jalisco. La propuesta de ley tiene como objetivo transparentar la toma de decisiones y la vida p&uacute;blica.</p>',1,'2013-02-19','',0,2),(73,'','','<p><strong>19 de febrero.-</strong> El Coordinador &nbsp;del Grupo Parlamentario del Partido Acci&oacute;n Nacional Gildardo Guerrero Torres,&nbsp; pide que el coordinador del equipo de transici&oacute;n del gobernador electo, Ricardo Villanueva Lomel&iacute;, comparezca ante la Comisi&oacute;n de Puntos Constitucionales con el objetivo de aclarar dudas y poder hacer observaciones a la reforma del ejecutivo.</p>',1,'2013-02-19','',0,2),(74,'','','<p><strong>20 de febrero.-</strong> El diputado del PAN El&iacute;as Octavio I&ntilde;iguez Mej&iacute;a, vocal de la Comisi&oacute;n de Trabajo y Previsi&oacute;n Social propone que en los primeros d&iacute;as de marzo se haga una invitaci&oacute;n a quien se designe como nuevo Secretario de Trabajo y Previsi&oacute;n Social, a fin de externarle la urgencia de utilizar los 40 millones de pesos etiquetados en el Presupuesto 2013 destinados a operaci&oacute;n de Juntas de Conciliaci&oacute;n y Arbitraje.</p>',1,'2013-02-20','',0,2),(76,'','','<p><strong>20 de febrero.-</strong> La Comisi&oacute;n de Puntos Constitucionales, Estudios Legislativos&nbsp; y Reglamentos aprob&oacute; el acuerdo interno propuesto por el diputado panista Gildardo  Guerrero Torres para&nbsp; invitar al coordinador del equipo de transici&oacute;n, Ricardo Villanueva Lomel&iacute; a fin de resolver dudas de la&nbsp; propuesta de iniciativa enviada al legislativo.</p>\r\n<p>El legislador panista Alberto Esquer Guti&eacute;rrez  pidi&oacute; seriedad y responsabilidad para resolver el tema. Igualmente se expres&oacute; el panista Juan Carlos M&aacute;rquez Rosas, quien se&ntilde;al&oacute; que esta iniciativa es compleja y muy importante para la vida de Jalisco, por lo que no se dar&aacute; la aprobaci&oacute;n del PAN si no existe el sustento suficiente.</p>\r\n<p>&nbsp;</p>',1,'2013-02-20','',0,2),(77,'','','<p><strong>20 de febrero.-</strong> Comparece en la Comisi&oacute;n de Readaptaci&oacute;n Social presidida por el diputado panista Juan Jos&eacute; Cuevas Garc&iacute;a,&nbsp; el Comisario General de Prevenci&oacute;n y Reinserci&oacute;n Social del Estado de Jalisco, quien dio un panorama general de la situaci&oacute;n que viven los reclusorios en el estado. El legislador Cuevas se pronuncio por atender&nbsp; la problem&aacute;tica de la sobrepoblaci&oacute;n, principalmente por el riesgo que representa tener reos de alta peligrosidad en c&aacute;rceles municipales, buscar mecanismos para alentar la justicia alternativa y presentar iniciativas que ayuden a despresurizar el n&uacute;mero de reos que son candidatos a la preliberaci&oacute;n.</p>',1,'2013-02-20','',0,2),(78,'','','<p><strong>21 febrero.-</strong> El diputado panista V&iacute;ctor Manuel S&aacute;nchez compareci&oacute; ante el ITEI para la audiencia del recurso de transparencia que solicit&oacute; para resolver los puntos de omisi&oacute;n de informaci&oacute;n en la p&aacute;gina de internet de la ASEJ.</p>',1,'2013-02-21','',0,2),(79,'','','<p><strong>26 de febrero.-</strong> El diputado panista Hern&aacute;n Cort&eacute;s rinde informe de los trabajos realizados durante los cuatro meses que estuvo a&nbsp; cargo de la Presidencia del Congreso del Estado. Se&ntilde;ala que con la reforma constitucional que da lugar a la Fiscal&iacute;a General; los diputados muestran clara disposici&oacute;n para que colabore con el gobernador electo, Arist&oacute;teles Sandoval D&iacute;az para buscar juntos la construcci&oacute;n de un mejor Jalisco\".<br /> Tambi&eacute;n expuso que durante su gesti&oacute;n como representante del Legislativo no utiliz&oacute; recursos financieros o gastos de representaci&oacute;n, esto, como muestra de la pol&iacute;tica de austeridad que debe practicarse en el Congreso de Jalisco.</p>',1,'2013-02-26','',0,2),(80,'','','<p><strong>26 de febrero.-</strong> Se realiza en el Congreso&nbsp; el Curso sobre la Legislaci&oacute;n en Materia de Trata de Personas convocado por el diputado panista Juan Jos&eacute; Cuevas Garc&iacute;a, presidente de la Comisi&oacute;n de Readaptaci&oacute;n Social en el Congreso del Estado.</p>',1,'2013-02-26','',0,2),(81,'','','<p><strong>27 de febrero.-</strong> La diputada del PAN Gabriela   Andal&oacute;n Becerra asume la presidencia del Comit&eacute; de Peticiones y Atenci&oacute;n Ciudadana en sustituci&oacute;n del diputado panista V&iacute;ctor Manuel S&aacute;nchez Orozco. La legisladora se compromete a lograr una mujer vinculaci&oacute;n de los diputados con la sociedad.</p>',1,'2013-02-27','',0,2),(82,'','','<p><strong>27 de febrero.-</strong> El diputado panista Gildardo Guerrero Torres, Presidente del Comit&eacute; de Proceso Legislativo present&oacute; propuesta para ordenar y eficientar el trabajo de las comisiones del congreso.</p>',1,'2013-02-27','',0,2),(83,'','','<p><strong>28 de febrero.-</strong> Rinde protesta de ley el legislador del PAN V&iacute;ctor Manuel S&aacute;nchez   Orozco como Presidente de la Comisi&oacute;n de Readaptaci&oacute;n Social. Sustituye al diputado panista Juan Jos&eacute; Cuevas quien propone realizar visitas a los centros penitenciarios para conocer sus necesidades.</p>',1,'2013-02-28','',0,2),(130,'','','',0,'0000-00-00','',0,0),(131,'','','',0,'0000-00-00','',0,0),(132,'Ampliar al 100 por ciento el programa de Bienevales, pide el legislador Juan José Cuevas','','<p class=\"MsoNormal\" style=\"text-align: right;\" align=\"right\">Guadalajara, Jalisco 17 de junio de 2013</p>\r\n<p class=\"MsoNormal\" style=\"text-align: right;\" align=\"right\">CMP0613-63</p>\r\n<p class=\"MsoNormal\" style=\"text-align: right;\" align=\"right\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><strong><span style=\"font-size: 14.0pt;\">Ampliar al 100 por ciento el programa de Bienevales, pide el legislador Juan Jos&eacute; Cuevas</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><em>&nbsp;</em></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><em>&nbsp;</em></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><em>Programa universal, no limitado a los nueve municipios de la zona metropolitana.</em></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><em>Que el registro de estudiantes para recibir dicho beneficio se ampl&iacute;e hasta septiembre y que sea por medio de las listas autorizadas en las escuelas.</em></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; En rueda de prensa, el diputado panista Juan Jos&eacute; Cuevas Garc&iacute;a propone al gobierno del estado, ampliar el programa de Bienevales para todos los estudiantes del estado desde la educaci&oacute;n secundaria a la universidad.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Acompa&ntilde;ado por los legisladores de su partido, V&iacute;ctor Manuel S&aacute;nchez Orozco y Guillermo Mart&iacute;nez Mora, el legislador Cuevas hizo un an&aacute;lisis del programa de subsidio al transporte anunciado por el gobernador, al cual, consider&oacute; muy distante de lo que se ofreci&oacute; durante&nbsp; la oferta electoral de su campa&ntilde;a: &ldquo;&hellip;ya que por lo anunciado recientemente, s&oacute;lo ser&iacute;a una ampliaci&oacute;n del Programa Llega, el cual se implement&oacute; desde la pasada administraci&oacute;n&rdquo;.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Se&ntilde;al&oacute; que con los 125 millones de pesos anuales, apenas alcanzar&aacute; para cubrir el transporte de 155 mil estudiantes &nbsp;(s&oacute;lo el 15 por ciento) y no la totalidad en el estado, la cual representa a 2 millones 100 mil ni&ntilde;os y j&oacute;venes desde primarias, secundarias, preparatorias y universidades, lo que significar&iacute;a financieramente por lo menos dos mil&nbsp; quinientos millones de pesos&nbsp; anuales.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Por tal motivo, el legislador propuso que sean considerados a estudiantes que utilizan transporte p&uacute;blico a&uacute;n dentro de los l&iacute;mites de su municipio, llegando de esa manera a todas las regiones del estado. Adem&aacute;s propuso que para garantizar la universalidad del programa, el registro de estudiantes sea mediante las listas autorizadas en las escuelas p&uacute;blicas del estado de Jalisco ya que e sistema actual de registro es un filtro que deja fuera a muchos estudiantes.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cabe se&ntilde;alar que el diputado Juan Jos&eacute; Cuevas, vocal de la Comisi&oacute;n de Educaci&oacute;n&nbsp; ha pedido en reiteradas ocasiones, la visita del Secretario de Educaci&oacute;n a fin de que dialogue con los legisladores. El d&iacute;a de hoy, el legislador pidi&oacute; que tambi&eacute;n se extienda la invitaci&oacute;n a la&nbsp; Secretar&iacute;a de Desarrollo e Integraci&oacute;n Social.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><em>&nbsp;</em></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Por su parte el diputado V&iacute;ctor S&aacute;nchez, indic&oacute; que se present&oacute; aproximadamente hace dos meses atr&aacute;s una iniciativa por parte del PAN que busca reformas en&nbsp; la Ley de Vialidad&nbsp; para que con el simple hecho de que los estudiantes al subir al cami&oacute;n presenten su credencial de estudiantes, puedan viajar de manera gratuita.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Record&oacute; que dentro de los municipios existen rancher&iacute;as y poblaciones peque&ntilde;as en las cuales viven j&oacute;venes y ni&ntilde;os que deben viajar distancias de tres hasta 10 kil&oacute;metros para ir a la escuela, por lo que no deben quedar rezagados en su preparaci&oacute;n&nbsp; acad&eacute;mica por parte de &nbsp;los est&iacute;mulos o apoyos del gobierno.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-06-17','IMG4240_cortada.jpg',0,1),(85,'','','<p><strong>10 de enero.-</strong> Se re&uacute;ne el diputado panista, Guillermo Mart&iacute;nez Mora, Presidente de la Comisi&oacute;n de Educaci&oacute;n con l&iacute;deres magisteriales del SNTE. El objetivo del encuentro se dio para &nbsp;presentar &nbsp;un punto de acuerdo ante el Pleno del Congreso para la discusi&oacute;n y aprobaci&oacute;n de la iniciativa de Reforma Educativa propuesta por el Presidente de la Rep&uacute;blica</p>\r\n<p>&nbsp;</p>',1,'2013-01-10','',0,2),(86,'','','<p><strong>14 de Enero.-</strong> Se inaugura en el Patio Central del Palacio Legislativo, la Exposici&oacute;n Terapia del Arte, dibujos hechos por 300 ni&ntilde;os que presentan alg&uacute;n tipo de discapacidad del Centro de Integraci&oacute;n de Tapalpa, Jalisco.&nbsp;La diputada panista Mariana Ar&aacute;mbula Mel&eacute;ndez destac&oacute; que esta exposici&oacute;n es el resultado de la rehabilitaci&oacute;n de estos ni&ntilde;os a trav&eacute;s de terapia art&iacute;stica que difunden &nbsp;diversos programas destinados a rehabilitaci&oacute;n de menores en circunstancias dif&iacute;ciles.</p>',1,'2013-01-14','',0,2),(87,'','','<p><strong>16 de enero.-</strong> Aprueba la Comisi&oacute;n de Puntos Constitucionales, Estudios Legislativos y Reglamentos las disposiciones en materia de educaci&oacute;n contempladas en la reciente reforma Constitucional en la cual se busca fortalecer la autonom&iacute;a de las escuelas. El diputado panista Juan Carlos M&aacute;rquez expres&oacute; que la autonom&iacute;a de los centros escolares debe verse como un generador de participaci&oacute;n de otros entes de la sociedad, como por ejemplo, empresas que quieren aportar apoyos a centros escolares para su mejoramiento.</p>',1,'2013-01-16','',0,2),(88,'','','<p><strong>16 de enero.-</strong> A fin de resolver los problemas que vive el campo de Jalisco, el diputado panista Alberto Esquer Guti&eacute;rrez, Presidente de la Comisi&oacute;n de Desarrollo Agr&iacute;cola trabaja para crear &nbsp;una comisi&oacute;n unida para el campo, la cual se integrar&iacute;a por las comisiones legislativas de Ganader&iacute;a, Desarrollo Agr&iacute;cola &nbsp;y Desarrollo Forestal. La diputada panista Norma Ang&eacute;lica Cordero Prado, Presidenta de la Comisi&oacute;n de Ganader&iacute;a apoya la urgente necesidad de sumar esfuerzos y poder gestionar m&aacute;s recursos para el sector pecuario que representa una de las principales actividades econ&oacute;micas de Jalisco que lo colocan como el principal productor de leche, carne de aves y ma&iacute;z de la naci&oacute;n.</p>\r\n<p>&nbsp;</p>',1,'2013-01-16','',0,2),(89,'','','<p><strong>17 enero.-</strong> En el Pleno del Congreso los diputados panistas Guillermo Mart&iacute;nez Mora y Juan Jos&eacute; Cuevas Garc&iacute;a, fijaron sus posicionamientos respecto a la reforma educativa a nivel federal. Plantearon adecuaciones para que las cuotas que se cobran a los padres de familia para mejorar los planteles educativos, no sean obligatorias ni representen una contraprestaci&oacute;n, sino que el Estado otorgue &nbsp;recursos suficientes para ese fin.</p>',1,'2013-01-17','',0,2),(90,'','','<p><strong>17 de enero.-</strong>&nbsp; Con el objetivo de implementar una pol&iacute;tica austera, transparente y un correcto ejercicio de gobierno, los diputados aprueban en sesi&oacute;n de Pleno, la Comisi&oacute;n Especial para la  Revisi&oacute;n Administrativa y Financiera del Congreso del Estado la cual ser&aacute; presidida por el diputado panista Guillermo Mart&iacute;nez Mora.</p>',1,'2013-01-17','',0,2),(91,'','','<p><strong>17 de enero.-</strong> En sesi&oacute;n de Pleno, el diputado panista V&iacute;ctor Manuel S&aacute;nchez Orozco, expone iniciativa que exhorta al Gobernador del Estado a expedir y publicar el reglamento de la Ley para el Desarrollo Integral del Adulto Mayor as&iacute; como solicitar al Titular del Sistema Tren El&eacute;ctrico, a que se instalen m&aacute;s m&oacute;dulos de atenci&oacute;n del sistema macrob&uacute;s para tramitar las tarjetas de descuento.</p>',1,'2013-01-17','',0,2),(92,'','','<p><strong>17 de enero.-</strong> Los integrantes de la Comisi&oacute;n de Educaci&oacute;n, encabezados por el diputado panista Luis Guillermo  Mart&iacute;nez Mora, presentaron en el Pleno del Congreso&nbsp; iniciativa de decreto donde plantean que se solicite a la C&aacute;mara de Diputados cambios al Art&iacute;culo 3ro. y 73 de la Constituci&oacute;n Pol&iacute;tica de los Estados Unidos Mexicanos, lo que vendr&iacute;a a complementar la reforma integral en materia de educaci&oacute;n que reci&eacute;n se consum&oacute; a nivel nacional. Mart&iacute;nez Mora enfatiz&oacute; la importancia de completar dicha reforma al habilitar la Norma Oficial Mexicana sobre la calidad de la educaci&oacute;n p&uacute;blica y privada, misma que debiera incluir cuatro &aacute;reas principales: materiales y m&eacute;todos educativos, la organizaci&oacute;n escolar, infraestructura deportiva y la idoneidad de los docentes y directivos.</p>\r\n<p>&nbsp;</p>',1,'2013-01-17','',0,2),(93,'','','<p><strong>17 de enero.-&nbsp; </strong>Como medida de prevenci&oacute;n a problemas de salud p&uacute;blica, el diputado panista El&iacute;as I&ntilde;iguez Mej&iacute;a, present&oacute; en sesi&oacute;n de Pleno un acuerdo legislativo donde se propone enviar respetuoso exhorto a los presidentes municipales para que realicen constantemente inspecciones sanitarias a establecimientos donde se sacrifiquen, comercialicen y trasformen productos de origen animal, con el fin de cuidar en todo momento la legal procedencia y la inocuidad de los mismos.</p>',1,'2013-01-17','',0,2),(94,'','','<p><strong>18 de enero.-</strong> El diputado Alberto Esquer Rodr&iacute;guez presenta&nbsp; iniciativa de acuerdo legislativo donde se solicita al Pleno del Congreso del Estado que a la brevedad posible apruebe los dict&aacute;menes al voto de la reforma de los art&iacute;culos 24 y 40 de la  Constituci&oacute;n Pol&iacute;tica de los Estados Unidos Mexicanos, en calidad de integrante del Constituyente Permanente.</p>',1,'2013-01-18','',0,2),(95,'','','<p><strong>24 enero.-</strong> La Comisi&oacute;n de Administraci&oacute;n aprob&oacute; el Tabulador de Sueldos del Congreso. El diputado panista Jos&eacute; Gildardo Guerrero Torres, vocal de &eacute;sta Comisi&oacute;n manifest&oacute; que este paso es una respuesta a la sociedad para cumplir con los compromisos y objetivos de austeridad, orden y transparencia en la administraci&oacute;n del Congreso.</p>\r\n<p>&nbsp;</p>',1,'2013-01-24','',0,2),(96,'','','<p><strong>18 de enero.-&nbsp; </strong>Con el objetivo de explotar a su m&aacute;ximo las riquezas naturales, culturales, deportivas, hist&oacute;ricas y sociales de Jalisco, la diputada Mariana Ar&aacute;mbula Mel&eacute;ndez, present&oacute; en el Pleno del Congreso, iniciativa que reforma la Ley de Turismo del Estado de Jalisco; la cual sugiere incorporar dos nuevas clasificaciones de turismo: turismo rural y turismo deportivo.</p>\r\n<p>&nbsp;</p>',1,'2013-01-18','',0,2),(97,'','','<p><strong>24 de enero.-</strong> El diputado panista El&iacute;as Octavio I&ntilde;iguez Mej&iacute;a, vocal de la Comisi&oacute;n de Juventud y Deporte expone su inquietud para que se capacite a las mujeres&nbsp; de los 125&nbsp; municipios que se interesen en desarrollar un negocio. Esto durante la visita de Margarita S&aacute;nchez S&aacute;inz y Karime Ramos Presidente y Directora General, respectivamente, de la Asociaci&oacute;n  Mexicana de Mujeres Empresarias. Propuso el legislador organizar un plan de trabajo el cual desarrolle &nbsp;talleres de capacitaci&oacute;n en las cabeceras distritales.&nbsp;</p>',1,'2013-01-24','',0,2),(98,'','','<p><strong>28 de enero.-</strong> Con el prop&oacute;sito de trabajar en todo lo relativo a la clasificaci&oacute;n de informaci&oacute;n en sus diferentes categor&iacute;as, como la p&uacute;blica o reservada, se instala el Comit&eacute; de Clasificaci&oacute;n de Informaci&oacute;n en materia de transparencia del Congreso del Estado, presidido por el legislador panista Hern&aacute;n Cort&eacute;s Berumen.</p>',1,'2013-01-28','',0,2),(99,'','','<p><strong>29 de enero.-</strong> La Comisi&oacute;n de Ciencia y Tecnolog&iacute;a presidida por la legisladora panista Mariana Ar&aacute;mbula Mel&eacute;ndez&nbsp; valid&oacute; el Plan Anual de Trabajo para este a&ntilde;o 2013, que se basa en legislar para promover la implementaci&oacute;n de acceso gratuito e Internet en centros educativos y espacios p&uacute;blicos, as&iacute; como para que la Zona Metropolitana de Guadalajara se consolide como una ciudad de conocimiento. Adem&aacute;s se pretende adecuar el marco legal para impulsar centros especializados en innovaci&oacute;n e investigaci&oacute;n cient&iacute;fica y tecnol&oacute;gica, con el prop&oacute;sito de posicionar a Jalisco como l&iacute;der en esta materia.</p>',1,'2013-01-29','',0,2),(100,'','','<p><strong>30 de enero.- </strong>En reconocimiento a su esfuerzo, el diputado Alberto   Esquer Guti&eacute;rrez acompa&ntilde;ado de sus compa&ntilde;eros de fracci&oacute;n, diputados Hern&aacute;n Cort&eacute;s Berumen, Ricardo Rodr&iacute;guez Jim&eacute;nez y El&iacute;as I&ntilde;iguez Mej&iacute;a entregaron reconocimientos a empresas del Sur de Jalisco:&nbsp;Chocolate Rey Amargo S. A de C. V.; Agro Gonz&aacute;lez S.P.R. de R.L.; Agua Purificada Nevado S.A. de C.V.; Industrializadora de productos l&aacute;cteos y derivados Los Cuates as&iacute; como &nbsp;Industrias Maga&ntilde;a S. A. de C. V.&nbsp;</p>\r\n<p><strong></strong></p>\r\n<p>&nbsp;</p>',1,'2013-01-30','',0,2),(101,'','','<p><strong>31 de enero.-</strong> A fin de conocer la situaci&oacute;n que enfrentan las c&aacute;rceles en Jalisco, acuerda el diputado panista Juan Jos&eacute; Cuevas, Presidente de la Comisi&oacute;n de Readaptaci&oacute;n Social invitar a Jos&eacute; Gonz&aacute;lez Jim&eacute;nez, Comisario General de Prevenci&oacute;n y Reinserci&oacute;n Social para dialogar sobre las condiciones que enfrentan los reclusorios en Jalisco.</p>',1,'2013-01-31','',0,2),(102,'','','<p><strong>3 de junio.-</strong> En rueda de prensa, el diputado panista Juan Carlos M&aacute;rquez Rosas, Presidente de la Comisi&oacute;n de Responsabilidades, da a conocer una serie de irregularidades detectadas en el Comit&eacute; Administrador del Programa Estatal de Construcci&oacute;n de Escuelas (CAPECE) durante la administraci&oacute;n de Salvador Uribe Av&iacute;n, ex director de dicho organismo durante el sexenio pasado.</p>',1,'2013-06-03','',0,2),(103,'','','<p><strong>4 de junio.-</strong> En rueda de prensa, el diputado V&iacute;ctor Manuel S&aacute;nchez Orozco, Presidente de la Comisi&oacute;n de Readaptaci&oacute;n Social dio a conocer las conclusiones del primer Foro del Sistema Penal Acusatorio, Juicios Orales y Justicia Alternativa llevado a cabo en las instalaciones del Congreso los d&iacute;as&nbsp; 21 y 22 de mayo.&nbsp;&nbsp; Habl&oacute; de la necesidad de seguir construyendo avances para implementar un nuevo sistema penal en Jalisco</p>',1,'2013-06-04','',0,2),(104,'','','<p><strong>5 de junio.- </strong>En rueda de prensa,&nbsp; diputados del PAN se&ntilde;alan irregularidades detectadas en la pasada legislatura. Gildardo Guerrero Torres indica que se har&aacute;n las diligencias necesarias para que se finquen las responsabilidades a los actos&nbsp; llevados a cabo por los ex secretarios de la pasada legislatura, Carlos Corona Mart&iacute;n del Campo y Jos&eacute; Manuel Correa Cese&ntilde;a, en la firma y pago de multimillonario contrato a supuesta empresa de asesoramiento.</p>',1,'2013-06-05','',0,2),(105,'','','<p><strong>6 de junio.-</strong> El diputado panista Jaime D&iacute;az Brambila presenta exhorto a la Unidad de Protecci&oacute;n Civil del Estado, para que en funci&oacute;n de sus atribuciones identifique los canales de aguas pluviales en la Zona Metropolitana de Guadalajara que se encuentran sin protecci&oacute;n ni se&ntilde;alamientos adecuados, as&iacute; como lograr coordinaci&oacute;n con los Ayuntamientos correspondientes a efecto de garantizar la seguridad e integridad f&iacute;sica de los transe&uacute;ntes.</p>',1,'2013-06-06','',0,2),(110,'','','<p><strong>6 de junio.-</strong> Presenta el diputado panista Juan Carlos M&aacute;rquez Rosas  iniciativa para elevar las sanciones a los omisos patrimoniales.<strong> </strong>La medida generar&iacute;a&nbsp; un fondo que puede ser utilizado en el desarrollo y crecimiento del sistema de control de declaraciones patrimoniales.<strong> </strong>Adem&aacute;s coadyuvar&iacute;a a frenar los casos de servidores p&uacute;blicos que amasan fortunas a partir del ejercicio de un cargo p&uacute;blico, lo que ofende la &eacute;tica del servicio, la instituci&oacute;n y al ciudadano.</p>',1,'2013-06-06','',0,2),(107,'','','<p><strong>6 de junio.-</strong> Ante el Pleno del Congreso, el diputado panista Juan Jos&eacute; Cuevas demand&oacute; al gobierno estatal transporte gratuito para todos los estudiantes, incluyendo todo el universo de j&oacute;venes del estado de Jalisco, como los estudiantes de Puerto Vallarta. Urgi&oacute; al gobierno para que se replante el programa llamado Bienevale ya que de deben trasparentar las reglas de operaci&oacute;n.</p>',1,'2013-06-06','',0,2),(108,'','','<p><strong>6 de junio.-</strong> Aprueba&nbsp; el Pleno del Congreso que la diputada panista Norma Ang&eacute;lica Cordero Prado represente al PAN ante la Comisi&oacute;n Especial legislativa que da seguimiento a la presa El Zapotillo. La diputada Cordero  Prado es la representante del distrito 2 con cabecera en Lagos de Moreno, zona por donde pasar&iacute;a parte de esta obra hidr&aacute;ulica.</p>',1,'2013-06-06','',0,2),(109,'','','<p><strong>6 de junio.-</strong> Ante el Pleno del Congreso, el diputado panista Juan Jos&eacute; Cuevas demand&oacute; al gobierno estatal transporte gratuito para todos los estudiantes, incluyendo todo el universo de j&oacute;venes del estado de Jalisco, como los estudiantes de Puerto Vallarta. Urgi&oacute; al gobierno para que se replante el programa llamado Bienevale ya que de deben trasparentar las reglas de operaci&oacute;n.</p>',1,'2013-06-06','',0,2),(111,'','','<p><strong>6 de junio.-</strong> Se lleva a cabo la &nbsp;Firma del Convenio de Colaboraci&oacute;n entre el Gobierno del Estado y la Asociaci&oacute;n Civil \"Alcanzando Ni&ntilde;os en las Fronteras\". Los diputados panistas Mariana Ar&aacute;mbula Mel&eacute;ndez y El&iacute;as Octavio I&ntilde;&iacute;guez Mej&iacute;a se congratularon porque en Jalisco se trabaja en acciones que protegen a &nbsp;ni&ntilde;os v&iacute;ctimas de abuso sexual infantil, maltrato infantil y en circunstancias dif&iacute;ciles. Se comprometieron a seguir trabajando desde el Poder Legislativo para adecuar marcos jur&iacute;dicos,&nbsp; programas y pol&iacute;ticas que garanticen el pleno y sano desarrollo de la infancia.</p>',1,'2013-06-06','',0,2),(112,'','','<p><strong>6 de junio.-</strong> En el marco de la conmemoraci&oacute;n del \"D&iacute;a Internacional del Ni&ntilde;o, V&iacute;ctimas de Agresi&oacute;n\", la diputada panista Mariana Ar&aacute;mbula Mel&eacute;ndez present&oacute; al Pleno del Congreso, la&nbsp; iniciativa de Ley que propone tipificar el delito de maltrato infantil en &nbsp;Jalisco, as&iacute; como la adici&oacute;n y modificaci&oacute;n de diversos art&iacute;culos para buscan garantizar&nbsp; el libre&nbsp; y sano desarrollo de los infantes.</p>',1,'2013-06-06','',0,2),(113,'','','<p><strong>6 de junio.-</strong> Aprob&oacute; el Pleno del Congreso elevar iniciativa al Congreso de la Uni&oacute;n para reformar el art&iacute;culo 109 del C&oacute;digo Fiscal de la Federaci&oacute;n, con el prop&oacute;sito de hacer m&aacute;s severas las sanciones a quien cometa el delito de defraudaci&oacute;n fiscal. El diputado del PAN Gildardo  Guerrero Torres se&ntilde;al&oacute; que situaciones de esta naturaleza han generado el desfalco de las finanzas p&uacute;blicas. Se propone que cuando el autor del delito sea el titular o responsable de una entidad p&uacute;blica y se cometa en el ejercicio de sus funciones, las penas podr&aacute;n duplicarse y el servidor p&uacute;blico responsable ser&aacute; inhabilitado hasta por seis a&ntilde;os para ejercer cualquier cargo p&uacute;blico.</p>',1,'2013-06-06','',0,2),(114,'','','<p><strong>6 de junio.-</strong> En sesi&oacute;n del Pleno, los diputados del PAN Gabriela Andal&oacute;n Becerra, Juan Jos&eacute; Cuevas Garc&iacute;a, Jos&eacute; Hern&aacute;n Cort&eacute;s Berumen, Jaime Ismael D&iacute;az Brambila, Jos&eacute; Gildardo  Guerrero Torres, El&iacute;as Octavio I&ntilde;&iacute;guez Mej&iacute;a y Juan Carlos M&aacute;rquez Rosas, presentan jen conjunto con otros diputados, exhorto al Ejecutivo de Jalisco para que &nbsp;considere la problem&aacute;tica que viven &nbsp;c&aacute;rceles municipales. Piden que se les &nbsp;apoye econ&oacute;micamente para que el sistema penitenciario sea efectivo.</p>',1,'2013-06-06','',0,2),(115,'','','<p><strong>6 de junio.-</strong> Al inicio de la sesi&oacute;n de Pleno, pide el diputado panista Gildardo  Guerrero Torres guardar un minuto de silencio por el fallecimiento del se&ntilde;or Gildardo G&oacute;mez Ver&oacute;nica, pol&iacute;tico con destacada trayectoria&nbsp; dentro del PAN Jalisco.</p>',1,'2013-06-06','',0,2),(116,'','','<p><strong>6 de junio.-</strong> Presenta el diputado panista Gildardo Guerrero Torres, una iniciativa para &nbsp;salvaguardar el bienestar de los animales, elevando al rango constitucional la obligaci&oacute;n del Estado y de los municipios de su cuidado.</p>',1,'2013-06-06','',0,2),(117,'','','<p><strong>6 de junio.-</strong> Con el prop&oacute;sito de garantizar certidumbre en el proceso de elecci&oacute;n de consejeros electorales, el diputado panista Juan   Jos&eacute; Cuevas Garc&iacute;a present&oacute; una iniciativa de ley que pretende entre otras cosas, establecer como obligaci&oacute;n para ser consejero electoral aprobar con un m&iacute;nimo de 80 puntos el examen te&oacute;rico,&nbsp;que para los cargos de consejeros exista la posibilidad de ampliaci&oacute;n del cargo y que se establezca como requisito de elegibilidad que los aspirantes a consejeros tengan m&aacute;s de 35 a&ntilde;os de edad y cuenten con un titulo de licenciatura con antig&uuml;edad de al menos 10 a&ntilde;os.</p>',1,'2013-06-06','',0,2),(118,'','','<p><strong>6 de junio.-</strong> El diputado panista Hern&aacute;n Cort&eacute;s Berumen plante&oacute; un Acuerdo Legislativo que propone girar exhorto al Ejecutivo Federal para que a trav&eacute;s de la Secretar&iacute;a de Comunicaciones y Transportes supervise &nbsp;obras que Ferromex realiza en diversas colonias de Guadalajara as&iacute; como su impacto al medio ambiente. A su vez env&iacute;a exhorto a la CEDHJ para investigar las posibles violaciones de los derechos de los vecinos del &aacute;rea debido a que fueron instaladas mallas de protecci&oacute;n alrededor de las colonias dej&aacute;ndolas incomunicadas entre si.</p>',1,'2013-06-06','',0,2),(119,'','','<p><strong>11 de junio.-</strong> Acuden al Congreso autoridades y habitantes del municipio de Chapala, inconformes con parqu&iacute;metros instalados desde la pasada administraci&oacute;n. El diputado panista Jos&eacute; Luis Mungu&iacute;a Cardona se compromete a brindarles asesor&iacute;a jur&iacute;dica en las demandas que interpondr&aacute;n ante el TAE, adem&aacute;s de hacer un pronunciamiento en el Pleno del Congreso.</p>\r\n<p>&nbsp;</p>',1,'2013-06-11','',0,2),(120,'','','<p><strong>11 de junio.- </strong>La diputada panista Norma Ang&eacute;lica Cordero Prado gestion&oacute; con &nbsp;autoridades de la Inmobiliaria y Promotora de Vivienda de Jalisco (Iprovipe), y con funcionarios del ayuntamiento de Lagos de Moreno en beneficio de alrededor de 600 familias de las colonias Cristeros I y Cristeros II, quienes desde hace tiempo cuentan con problemas de carteras vencidas y solicitud de escrituras. Pidi&oacute; la legisladora &nbsp;revisar caso por caso los adeudos, para que exista conformidad y beneficio tanto para la instituci&oacute;n como para&nbsp; las familias tenga seguridad jur&iacute;dica sobre su vivienda.</p>',1,'2013-06-11','',0,2),(121,'','','<p><strong>12 de junio.-</strong> La legisladora panista Mariana Ar&aacute;mbula, Presidente de la Comisi&oacute;n de Ciencia y Tecnolog&iacute;a expres&oacute; el gran inter&eacute;s que existe en el Congreso por estrechar v&iacute;nculos con el Ejecutivo y dem&aacute;s entes involucrados en el tema.<strong> </strong>Acudi&oacute; a la reuni&oacute;n de la<strong> </strong>comisi&oacute;n el Maestro Jaime Reyes Robles, Secretario de Innovaci&oacute;n quien expuso los trabajos y logras alcanzados durante los primeros 100 d&iacute;as de actividades.</p>',1,'2013-06-12','',0,2),(122,'','','<p><strong>12 de junio.-</strong> &nbsp;Trabaja la Comisi&oacute;n de Salud presidida por el diputado panista El&iacute;as Octavio I&ntilde;&iacute;guez en distintos temas de salud. El legislador ha pedido al Secretario de Salud, Jaime Agust&iacute;n&nbsp; Gonz&aacute;lez &Aacute;lvarez activar programas de prevenci&oacute;n&nbsp; contra el dengue, con la participaci&oacute;n de los infantes; de igual manera crear conciencia de las enfermedades cardiovasculares a fin de que Jalisco se convierta en el primer estado cardio protegido.</p>',1,'2013-06-12','',0,2),(123,'','','<p><strong>13 de junio.-</strong> Los diputados panistas Gildardo  Guerrero Torres y Alberto Esquer Guti&eacute;rrez  expresaron su apoyo a los migrantes para que desde el Congreso estatal avancen reformas que permitan el voto y la participaci&oacute;n de los mexicanos residentes en Estados Unidos. Diputados de la Junta de Coordinaci&oacute;n Pol&iacute;tica y de la Comisi&oacute;n de Asuntos Migratorios, escucharon las peticiones de los representantes de federaciones de los Estados Unidos, liderados por Sergio Su&aacute;rez, Presidente de la Confedejal.</p>',1,'2013-06-13','',0,2),(124,'','','<p><strong>13 de junio</strong>. En sesi&oacute;n extraordinaria del Pleno, se eligi&oacute; la Mesa  Directiva para el periodo 1 de julio al 31 de octubre de &eacute;ste a&ntilde;o. Los diputados panistas Gabriela Andal&oacute;n Becerra  y Juan Jos&eacute; Cuevas Garc&iacute;a  ocupar&aacute;n los cargos de Secretario y Prosecretario respectivamente.&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-06-13','',0,2),(125,'','','<p><strong>15 de junio.- </strong>&nbsp;Un total de 34 j&oacute;venes entre los 18 y 26 a&ntilde;os, formaron parte del IV Parlamento Juvenil \"Alonso Lujambio\" (1962-2012), evento&nbsp; convocado por la Secretar&iacute;a de Acci&oacute;n Juvenil del PAN Jalisco y apadrinado por el diputado Gildardo Guerrero Torres, Coordinador de los diputados panistas en el Congreso del Estado.</p>\r\n<p>En su mensaje, el diputado Guerrero Torres, expres&oacute; a los futuros representantes pol&iacute;ticos provenientes de varios municipios, la necesidad de ejercer con congruencia la pol&iacute;tica, la cual requiere de sensibilidad para ejercer las bases que la sustentan: tolerancia, paciencia y bondad, valores humanistas que los fundadores del PAN enaltecieron y&nbsp; los distinguieron de otros partidos.&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-06-15','',0,2),(126,'','','<p><strong>17 de junio. </strong>&nbsp;En rueda de prensa, el diputado panista Juan Jos&eacute; Cuevas Garc&iacute;a  propone al gobierno del estado, ampliar el programa de Bienevales para todos los estudiantes del estado desde la educaci&oacute;n secundaria hasta la universidad. Se&ntilde;al&oacute; que deben ser considerados &nbsp;los estudiantes que utilizan transporte p&uacute;blico a&uacute;n dentro de los l&iacute;mites de su municipio, llegando de esa manera a todas las regiones del estado. Adem&aacute;s, pide&nbsp; &nbsp;garantizar la universalidad del programa con un&nbsp; registro basado en las listas autorizadas en las escuelas p&uacute;blicas del estado de Jalisco ya que el sistema actual de registro deja fuera a muchos estudiantes.</p>\r\n<p>&nbsp;</p>',1,'2013-06-17','',0,2),(127,'','','<p><strong>17 de junio</strong>. Aprueba la Comisi&oacute;n de Educaci&oacute;n presidida por el diputado panista Guillermo Mart&iacute;nez Mora, la iniciativa de la diputada panista Mariana Ar&aacute;mbula Mel&eacute;ndez, en la cual se reforma el art&iacute;culo 7 de la Ley de Educaci&oacute;n del Estado para promover el conocimiento responsable y seguro al utilizar las nuevas tecnolog&iacute;as de la informaci&oacute;n, ponderando y difundiendo en conjunto con los padres de familia los alcances del derecho a la protecci&oacute;n de los datos personales.</p>\r\n<p>&nbsp;</p>',1,'2013-06-17','',0,2),(133,'','','<p><strong>18 de junio.-</strong> Se&nbsp; instala el Comit&eacute; Consultivo para la Reforma Penal en Jalisco, coordinado por el diputado panista V&iacute;ctor Manuel S&aacute;nchez Orozco. Las cinco mesas de trabajo presididas por expertos en la materia trabajar&aacute;n una vez a la semana durante aproximadamente dos meses, tiempo en el que se estima tener el an&aacute;lisis o ruta cr&iacute;tica de lo que se requiere en Jalisco. En los c&iacute;rculos de trabajo de dichas mesas podr&aacute; participar&aacute;n acad&eacute;micos, funcionarios, maestros, estudiantes en derecho y toda la sociedad en general, interesada en el tema.&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-06-18','',0,2),(134,'','','<p><strong>18 de junio</strong>. Para aclarar dudas de los diputados sobre la iniciativa de Ley de Movilidad del Ejecutivo, compareci&oacute; el Secretario Mauricio Gudi&ntilde;o al Congreso de Jalisco. El diputado panista Gildardo Guerrero Torres indic&oacute; que la iniciativa deja 50 por ciento intacta la actual Ley de Movilidad. \"Est&aacute;n presumiendo un nuevo modelo de transporte que en esencia, es lo mismo. Por su parte los diputados de Acci&oacute;n Nacional Alberto Esquer Guti&eacute;rrez  y Hern&aacute;n Cortes Berumen se&ntilde;alaron que la iniciativa tiene errores de forma, como los nombres de algunas Secretar&iacute;as, lo que podr&iacute;a crear problemas al momento de su aplicaci&oacute;n.</p>\r\n<p>&nbsp;</p>',1,'2013-06-18','',0,2),(135,'','','<p><strong>18 de junio.-</strong> Para pedir que sean incluidos todos los estudiantes de Jalisco en el programa Bienevales, se reuni&oacute; el legislador panista Juan Jos&eacute; Cuevas con Salvador Rizo Castelo, Secretario de Desarrollo Social. El funcionario responsable del citado programa, le hizo saber a Cuevas Garc&iacute;a que en breve le dar&aacute; una respuesta a su petici&oacute;n. El diputado Cuevas le pidi&oacute; que el transporte gratuito se ampl&iacute;e a los m&aacute;s de 2 millones 100 mil estudiantes de la entidad.</p>\r\n<p>&nbsp;</p>',1,'2013-06-18','',0,2),(136,'','','<p><strong>19 de junio.-</strong> En sesi&oacute;n de trabajo de la Comisi&oacute;n de Puntos Constitucionales, Estudios Legislativos y Reglamentos, se aprob&oacute; el dictamen de decreto propuesto por el diputado panista Hern&aacute;n Cort&eacute;s Berumen, que adiciona al C&oacute;digo Civil del Estado la obligaci&oacute;n y el derecho de que en el divorcio, en caso de haberse casado por bienes separados, la pareja establezca un monto de compensaci&oacute;n para el miembro que se haya dedicado preferentemente a las actividades del hogar. Con ese prop&oacute;sito, se adicionan la fracci&oacute;n VI al art&iacute;culo 406 y un art&iacute;culo 417 bis del C&oacute;digo Civil del Estado de Jalisco, y tal compensaci&oacute;n queda establecida para el divorcio por mutuo consentimiento o por alguna causal.</p>\r\n<p>Tambi&eacute;n se votaron favorablemente las reformas al C&oacute;digo Civil y a la Ley de los Derechos de las Ni&ntilde;as, los Ni&ntilde;os y Adolescentes, para que en atenci&oacute;n al principio de equidad de g&eacute;nero, la preferencia de custodia de los hijos no tenga que ver con el sexo. Dicha propuesta corresponde al ex diputado panista Francisco Rafael Torres Marmolejo.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-06-19','',0,2),(137,'','','<p><strong>19 de junio.-</strong> Lograr que Jalisco sea el primer estado del pa&iacute;s que certifique la calidad de la leche y sus derivados que consumen sus habitantes, y con ello evitar la importaci&oacute;n de productos de dudosa calidad que ponen en riesgo la salud de los jaliscienses con enfermedades como brucelosis y tuberculosis, es la propuesta de la diputada panista Norma Ang&eacute;lica Cordero Prado, Presidenta de la Comisi&oacute;n de Ganader&iacute;a en el Congreso del Estado.</p>\r\n<p>&nbsp;</p>',1,'2013-06-19','',0,2),(138,'','','<p><strong>22 de junio.-</strong><strong> </strong>El diputado panista Juan Jos&eacute; Cuevas atendi&oacute; a vecinos en su casa de enlace de Puerto Vallarta, los cuales le expusieron distintas problem&aacute;ticas en torno a asuntos jur&iacute;dicos, necesidades sociales as&iacute; como apoyos para actividades deportivas y culturales.&nbsp; Entreg&oacute; adem&aacute;s premios a sus seguidores de facebook, consistentes en una pantalla plana de 42 pulgadas, una tablet Android y 3 tel&eacute;fonos celulares de escritorio. &nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-06-22','',0,2),(139,'','','<p><strong>23 de junio.- </strong><a name=\"13f7367e829e17e8__GoBack\"></a>Se re&uacute;ne el diputado panista Juan Jos&eacute; Cuevas en Puerto Vallarta, con maestros jubilados.&nbsp; El legislador le pidi&oacute; al Secretario General del Sindicato de Maestros, profesor Mart&iacute;n Quintero, su intervenci&oacute;n para que \"con su buenos oficios se regrese el predio que ten&iacute;an en esta ciudad para la casa de los docentes jubilados, la cual les fue retirada\".</p>\r\n<p><strong></strong></p>\r\n<p>&nbsp;</p>',1,'2013-06-23','',0,2),(141,'','','<p><strong>25 de junio.-</strong> En rueda de Prensa, el diputado panista Jos&eacute; Luis&nbsp; Mungu&iacute;a Cardona hace un llamado al gobernador para resolver la inseguridad en Jalisco. Se&ntilde;al&oacute; que la Comisi&oacute;n de Seguridad P&uacute;blica que &eacute;l Preside, se ha dado a la tarea de conocer las condiciones en las que se encuentra la seguridad de los 125 municipios, encontrado que de 60 municipios, con los que a la fecha han tenido contacto,&nbsp; la mayor&iacute;a opera con elementos insuficientes&nbsp; que no alcanzan a&nbsp; cubrir la seguridad de colonias o barrios.&nbsp; Dijo discrepar del llamado Mando &Uacute;nico en Jalisco al que llam&oacute;&nbsp; \"polic&iacute;a de Elite\", ya que si fuera un mando &uacute;nico,&nbsp; todos deber&iacute;an tener las mismas prestaciones.&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-06-25','',0,2),(142,'','','<p><strong>26 de junio.</strong> Durante la visita de&nbsp; la Secretaria de Medio Ambiente, Magdalena Ruiz Mej&iacute;a a la Comisi&oacute;n de Medio Ambiente y Desarrollo Sustentable a la cual acudi&oacute;&nbsp; para dar a conocer la propuesta de una Organismo&nbsp; P&uacute;blico Descentralizado que administre el Bosque de la Primavera, los diputados panistas Juan Jos&eacute; Cuevas y Jaime D&iacute;az Brambila piden que se contemple de igual manera otras zonas del interior del estado con biodiversidad, como lo son las monta&ntilde;as de Puerto Vallarta, la Sierra de Quila y de Manantl&aacute;n</p>',1,'2013-06-26','',0,2),(143,'','','<p><strong>26 de junio.-</strong> En rueda de Prensa,&nbsp; el diputado panista Guillermo Mart&iacute;nez Mora presenta las propuestas recabadas en el Foro para la Reforma Educativa, evento&nbsp; llevado a cabo el pasado 19 de abril en el Congreso. Las conclusiones, en las cuales resalta la necesidad de la calidad educativa,&nbsp; ser&aacute;n presentadas en la siguiente sesi&oacute;n del Pleno a fin de ser aprobadas y&nbsp; remitidas al Congreso de la Uni&oacute;n para que sean integradas en la  Ley Secundaria de dicha reforma federal a la cual calific&oacute; el legislador como el instrumento m&aacute;s importante para la reforma en el pa&iacute;s. Respecto a las cuotas escolares, el diputado expres&oacute; que es importante hacer un llamado al Ejecutivo estatal para que en el presupuesto del siguiente a&ntilde;o se contemplen los recursos suficientes para el mantenimiento de los centros educativos y as&iacute; acabar con las supuestas cuotas voluntarias de los padres de familia que en realidad no tienen nada de voluntarias. Recalc&oacute; que el tener una escuela digna es responsabilidad del estado, como lo es material de limpieza, escolar y personal de ayuda.</p>\r\n<p>&nbsp;</p>',1,'2013-06-26','',0,2),(144,'Diputado José Luis  Munguía hace un llamado al gobernador para resolver inseguridad en Jalisco','','<p><em>Porque no pueden seguir los habitantes de Jalisco temerosos de salir de sus viviendas as&iacute; como de sufrir robos y delitos mayores.</em></p>\r\n<p>En rueda de prensa, el diputado panista Jos&eacute; Luis Mungu&iacute;a Cardona manifest&oacute; la preocupaci&oacute;n de Acci&oacute;n Nacional y de la ciudadan&iacute;a en general por el incremento en los &iacute;ndices de inseguridad p&uacute;blica, ya que tan solo en robos o delitos patrimoniales va al alza en los primeros meses de &eacute;ste gobierno.&nbsp;</p>\r\n<p>Respecto a la desaparici&oacute;n de personas, se&ntilde;al&oacute; el legislador que es preocupante lo que sucede en Jalisco, principalmente por la desaparici&oacute;n de mujeres, menores de edad y otros grupos vulnerables a los cuales se les ha privado de su libertad, por lo que espera respuesta del gobierno en la resoluci&oacute;n de casos.</p>\r\n<p>Dijo discrepar del llamado Mando &Uacute;nico en Jalisco al que llam&oacute;&nbsp; \"polic&iacute;a de Elite\", ya que si fuera un mando &uacute;nico,&nbsp; todos deber&iacute;an tener las mismas prestaciones. Se&ntilde;al&oacute; que&nbsp; a los alcaldes, el gobierno les ha pedido mandar a dicha fuerza del estado, lo mejor de sus elementos polic&iacute;acos, por lo que el legislador Mungu&iacute;a Cardona cuestiona que har&aacute;n con los que&nbsp; se queden en los municipios, si ser&aacute;n polic&iacute;as de segunda.</p>\r\n<p>Se&ntilde;al&oacute; que la Comisi&oacute;n de Seguridad P&uacute;blica que &eacute;l Preside, se ha dado a la tarea de conocer las condiciones en las que se encuentra la seguridad de los 125 municipios, encontrado que de 60 municipios, que hasta le fecha han tenido contacto,&nbsp; la mayor&iacute;a opera con elementos insuficientes&nbsp; que no alcanzan a&nbsp; cubrir la seguridad de colonias o barrios.&nbsp;</p>\r\n<p>Record&oacute; que existen varios ayuntamientos en Jalisco, que ni siquiera tienen el 20 por ciento de los elementos que se requieren para cumplir la seguridad elemental de la poblaci&oacute;n, por lo que s&iacute; es preocupante que el gobierno estatal les pida a los municipios mandar a sus mejores polic&iacute;as para integrar el Mando &Uacute;nico.&nbsp;</p>\r\n<p>Con dicho pedimento, se descobija la seguridad de los municipios, lo que lejos de ayudar, incrementar&iacute;a el problema de inseguridad. (Lo anterior porque se habla de que la Fuerza &Uacute;nica policial cubrir&iacute;a&nbsp; delitos de alto impacto y no los normales que suceden en las colonias.)</p>\r\n<p>Adem&aacute;s, el legislador panista se&ntilde;al&oacute; que las evaluaciones de control de confianza est&aacute;n rezagadas, ya que ni siquiera la fuerza policial del estado ha podido&nbsp; cumplir al 100 por ciento con dicho requisito, por lo que el legislador cuestion&oacute; si podr&aacute;n terminar con esto antes de septiembre, fecha en que arranca la Fuerza &Uacute;nica Policial.&nbsp;</p>\r\n<p>En gr&aacute;ficas mostradas por el legislador, se da una comparaci&oacute;n de los primeros tres meses del nuevo gobierno. En el mes de febrero, hubo 466 delitos de robo a casa habitaci&oacute;n mientras que en abril 564; respecto a robo a transe&uacute;ntes 235 en febrero de &eacute;ste a&ntilde;o y 291 en abril.</p>\r\n<p>&nbsp;</p>',1,'2013-06-25','img_4721_cortada.jpg',0,1),(145,'','','<p><strong>26 de junio.-</strong> Durante los trabajos de la Comisi&oacute;n de Vigilancia, los diputados panistas El&iacute;as Octavio I&ntilde;&iacute;guez Mej&iacute;a y Juan Jos&eacute; Cuevas Garc&iacute;a, pide retirar del orden del d&iacute;a la cuenta p&uacute;blica 2008 del SIAPA ya que apenas fue entregada a los legisladores el pasado 2 de mayo, por lo que no ha habido tiempo suficiente para ser revisada a profundidad. Su propuesta fue aprobada en la Comisi&oacute;n.</p>\r\n<p>&nbsp;</p>',1,'2013-06-26','',0,2),(146,'','','<p><strong>26 de junio.-</strong> El diputado panista Juan Jos&eacute; Cuevas Garc&iacute;a, solicit&oacute; en la Comisi&oacute;n de Vigilancia del Congreso del Estado, ampliar auditor&iacute;as a todos aquellos organismos auditables que se encuentren bajo alguna sospecha de manejos turbios, ya que actualmente solo se est&aacute;n dirigiendo revisiones al SIAPA, \"que la vara sea la misma, si el auditor va a hacer algunos procedimientos legales, que los haga a todos los entes &nbsp;y organismos, es decir que se ampl&iacute;e a cualquier ente en que se presuman irregularidades\".</p>\r\n<p>&nbsp;</p>',1,'2013-06-26','',0,2),(147,'','','<p><strong>26 de junio.-</strong> En la Comisi&oacute;n de Asuntos Metropolitanos, corresponde al diputado panista Gildardo Guerrero Torres dictaminar iniciativa &nbsp;de Ley de Movilidad &nbsp;propuesta por MC.</p>\r\n<p>&nbsp;</p>',1,'2013-06-26','',0,2),(148,'','','<p><strong>26 de junio.-</strong> Se aprueba en la Comisi&oacute;n de Derechos Humanos, la iniciativa que present&oacute; el pasado mes de febrero la diputada panista Mariana Ar&aacute;mbula Mel&eacute;ndez, la cual&nbsp; es a favor de las personas con alguna discapacidad.</p>\r\n<p>&nbsp;</p>',1,'2013-06-26','',0,2),(149,'','','<p><strong>27 de junio.-</strong> En su calidad de Presidente de la Comisi&oacute;n de Salud P&uacute;blica del Congreso, el diputado panista El&iacute;as Octavio I&ntilde;&iacute;guez Mej&iacute;a organiz&oacute; el d&iacute;a de hoy el Foro \"Acoso Escolar, problema de salud p&uacute;blica\" a la cual acudieron varios entes p&uacute;blicos del gobierno as&iacute; como interesados en&nbsp; acabar con dicho problema social. Busca el diputado panista I&ntilde;&iacute;guez la coordinaci&oacute;n con el gobierno estatal para lograr crear un hospital psiqui&aacute;trico en Jalisco que vele por la salud mental de ni&ntilde;os y j&oacute;venes con&nbsp; problema para manejar la violencia.</p>\r\n<p>&nbsp;</p>',1,'2013-06-27','',0,2),(150,'','','<p><strong>27 de junio.-</strong> La Comisi&oacute;n de Responsabilidades, presidida por el diputado panista Juan Carlos M&aacute;rquez Rosas  aprob&oacute; emitir requerimientos para aquellos servidores p&uacute;blicos que fueron omisos en presentar declaraciones patrimoniales correspondientes al a&ntilde;o 2012, as&iacute; como algunas iniciales y finales.&nbsp; Record&oacute; que existe cerca de 11 mil omisos en todo el estado.</p>\r\n<p>En otro asunto, se turno al diputado panista Gildardo Guerrero Torres la iniciativa que propuso el diputado M&aacute;rquez para reformar la Ley de Responsabilidades de los servidores P&uacute;blicos en sus art&iacute;culos 75, 76, 77 bis, 97 y 98, sancionar de manera pecuniaria a los que no cumplan con dicha responsabilidad.&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-06-27','',0,2),(151,'','','<p><strong>28 de junio.- </strong>Sesiona la Comisi&oacute;n de Desarrollo Econ&oacute;mico que preside el diputado panista Juan Jos&eacute; Cuevas Garc&iacute;a  en la cual se entreg&oacute; a los legisladores vocales dos dict&aacute;menes con la finalidad de enriquecerlos. Los dict&aacute;menes crean la Ley Org&aacute;nica del Instituto de Informaci&oacute;n Estad&iacute;stica de Jalisco as&iacute; como el que abroga la Ley del Instituto Jalisciense de la Calidad para crear la Ley del Instituto Jalisciense del Emprendedor.&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-06-28','',0,2),(152,'','','<p><strong>28 de junio.-</strong> El Pleno del Congreso designa al diputado panista &nbsp;Gildardo Guerrero Torres como uno de los dos representantes del Poder Legislativo ante el Comit&eacute; T&eacute;cnico de Transparencia y Valoraci&oacute;n Salarial del Estado de Jalisco y sus Municipios.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>28 de junio.-</strong> Se aprob&oacute; en el Pleno&nbsp; la propuesta de la diputada panista Mariana Ar&aacute;mbula Mel&eacute;ndez para declarar el 19 de noviembre de cada a&ntilde;o como \"D&iacute;a Estatal de Prevenci&oacute;n y Atenci&oacute;n del Abuso Sexual Infantil\".</p>\r\n<p>&nbsp;</p>\r\n<p><strong>28 de junio.-</strong>&nbsp; Se aprueba en el Pleno del Congreso la iniciativa del diputado panista Juan Jos&eacute; Cuevas para &nbsp;otorgar un reconocimiento al cantante&nbsp; Vicente Fern&aacute;ndez G&oacute;mez, por su invaluable aportaci&oacute;n al difundir la cultura y tradiciones mexicanas, a trav&eacute;s de la m&uacute;sica ranchera, a nivel nacional e internacional.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>28 de junio</strong>. Debido a que la Ley de Ejecuci&oacute;n de Penas deb&iacute;a entrar en vigor el 1 de julio de este a&ntilde;o, pero el Poder Judicial no cuenta con recursos materiales, financieros, humanos y t&eacute;cnicos, se aprueba en el Pleno el dictamen que reforma el art&iacute;culo primero transitorio del Decreto que expide la Ley de Ejecuci&oacute;n de Penas y Medidas de Seguridad del Estado de Jalisco, con el prop&oacute;sito de que entre en vigor hasta el primero de enero del a&ntilde;o entrante. Dicho acuerdo se trabaj&oacute; en las comisiones de Justicia y la de Readaptaci&oacute;n Social que preside el diputado panista V&iacute;ctor Manuel S&aacute;nchez Orozco.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>28 de junio.-</strong> Presenta el PAN iniciativa para sancionar a quien rebase topes de gastos de campa&ntilde;a y precampa&ntilde;as electorales, por medio de sanciones como lo son el impedimento del registro, cancelaci&oacute;n de candidatura o nulidad de la elecci&oacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>28 de junio.-</strong> Porque en Jalisco no se cuenta con leyes adecuadas que impidan al&nbsp; gobierno contraer deudas impagables durante su periodo de gesti&oacute;n, los diputados del Grupo Parlamentario de Acci&oacute;n Nacional presentaron ante el Pleno una iniciativa que busca frenar la creciente adquisici&oacute;n de deuda en el estado y tambi&eacute;n en los municipios. Se propone requerir la autorizaci&oacute;n del Congreso del Estado para poder adquirir deuda p&uacute;blica y&nbsp; prohibir los llamados per&iacute;odos de gracia para pago, con el &aacute;nimo de evitar que la autoridad que contrata el endeudamiento, empiece tambi&eacute;n a amortizarlo y no le deje la carga a la siguiente administraci&oacute;n.</p>\r\n<p><br /> <strong>28 de junio.-</strong> A fin de lograr transparencia en Jalisco, la diputada panista Gabriela Andal&oacute;n Becerra  presenta ante el Pleno del Congreso una iniciativa que pretende reformar la Ley de Transparencia y Acceso a la Informaci&oacute;n P&uacute;blica con la finalidad de modernizar la forma en la que los sujetos obligados dan respuesta a las solicitudes de transparencia y con ello agilizar el tiempo de contestaci&oacute;n.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>28 de junio.-</strong> El diputado panista Jos&eacute; Lu&iacute;s Mungu&iacute;a Cardona propone en sesi&oacute;n del Pleno &nbsp;exhortar a las instituciones de seguridad p&uacute;blica para que el Centro de Evaluaci&oacute;n de Confianza realice la evaluaci&oacute;n a&nbsp; elementos operativos antes del 29 de octubre con el fin de cumplir con la acreditaci&oacute;n y se de confiabilidad a la  ciudadan&iacute;a. Tambi&eacute;n present&oacute; otra iniciativa que exhorta&nbsp; al titular de la SAGARPA a establecer una pr&oacute;rroga en la reinscripci&oacute;n al programa de Diesel Agropecuario, en virtud de que este a&ntilde;o se hizo un cambio de fechas en el programa y muchos productores quedaron fuera.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>28 de junio.-</strong> El legislador panista &nbsp;V&iacute;ctor Manuel S&aacute;nchez Orozco, propone un llamado al gobernador del Estado para que el Ejecutivo atienda con prontitud y efectividad los diferentes problemas ecol&oacute;gicos y ambientales que se presentan en diversas comunidades del municipio de San Sebasti&aacute;n del Oeste.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>28 de junio.-</strong> Propone el diputado panista V&iacute;ctor S&aacute;nchez Orozco, exhortar a los titulares del Poder Ejecutivo del Estado y de la Fiscal&iacute;a General para implementar protocolos a fin de reaccionar oportunamente ante desaparici&oacute;n de ni&ntilde;os y adolescentes.</p>\r\n<p><br /> <strong>28 de junio.-</strong> Para evitar inconsistencias y errores en las iniciativas que presenten los legisladores, el legislador panista V&iacute;ctor Manuel S&aacute;nchez   Orozco propone acuerdo legislativo para que &nbsp;la Direcci&oacute;n de Procesos Legislativos y el &Oacute;rgano T&eacute;cnico de Puntos Constitucionales del Congreso, revisen la elaboraci&oacute;n y redacci&oacute;n de las propuestas.</p>\r\n<p><strong>28 de junio.-</strong> Como medida estrat&eacute;gica para consolidar proyectos y actuar con oportunidad, el diputado panista Juan Jos&eacute; Cuevas Garc&iacute;a  &nbsp;propone iniciativa de acuerdo legislativo para trasladar&nbsp; las oficinas centrales de la Secretar&iacute;a de Turismo del Gobierno del Estado&nbsp; (SETUJAL) a Puerto Vallarta.</p>\r\n<p>&nbsp;</p>',1,'2013-06-28','',0,2),(153,'Busca el PAN poner freno a deudas heredadas por los gobiernos Municipales de Jalisco ','','<p align=\"right\"><em>Ya no se puede dejar a la buena fe de los gobernantes &nbsp;determinar los montos de endeudamiento. Debe haber l&iacute;mites claros en la ley de deuda p&uacute;blica &nbsp;para no caer en excesos al momento de la </em><em>contrataci&oacute;n de empr&eacute;stitos del Poder Ejecutivo, sus organismos p&uacute;blicos descentralizados y &nbsp;municipios.</em></p>\r\n<p><em></em></p>\r\n<p>&nbsp;</p>\r\n<p>Debido a que Jalisco no cuenta con leyes adecuadas que impidan al&nbsp; gobierno contraer deudas impagables durante su periodo de gesti&oacute;n, los diputados del Grupo Parlamentario de Acci&oacute;n Nacional presentaron ante el Pleno una Iniciativa que busca frenar la creciente adquisici&oacute;n de deuda en el estado y tambi&eacute;n en los municipios.</p>\r\n<p>&nbsp;</p>\r\n<p>Se trata de establecer los l&iacute;mites de endeudamiento de las entidades federativas y sus municipios, sin pretender acotarlo m&aacute;s all&aacute; de la capacidad de solvencia de la administraci&oacute;n que contrae la obligaci&oacute;n y del destino que &eacute;ste tendr&aacute;, incluyendo las reestructuras que con &eacute;l se pudieran generar.</p>\r\n<p>&nbsp;</p>\r\n<p>Se busca que los municipios de Jalisco requieran la autorizaci&oacute;n del Congreso del Estado para poder adquirir deuda p&uacute;blica y&nbsp; prohibir los llamados per&iacute;odos de gracia para pago, con el &aacute;nimo de evitar que la autoridad que contrata el endeudamiento, empiece tambi&eacute;n a amortizarlo y no le deje la carga a la siguiente administraci&oacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p>La exposici&oacute;n de motivos explica la situaci&oacute;n cr&iacute;tica del Estado de Jalisco y sus municipios, ya que para el primer trimestre de 2013, la Secretar&iacute;a de Hacienda y Cr&eacute;dito P&uacute;blico reporta obligaciones financieras con la banca comercial y de desarrollo por 7,895 millones de pesos.</p>\r\n<p>&nbsp;</p>\r\n<p>Entre los aspectos &nbsp; observados en la creciente adquisici&oacute;n de deuda est&aacute;n: v&iacute;nculo real entre deuda e inversi&oacute;n productiva en los estados; costo econ&oacute;mico de la deuda para las generaciones futuras; calidad en el ejercicio que se hace de los recursos p&uacute;blicos que se obtienen mediante deuda en los estados y municipios; la capacidad de cumplimento del pago de la deuda (riesgo crediticio); y que la federaci&oacute;n tenga que rescatar a las entidades&nbsp; endeudadas.</p>\r\n<p>&nbsp;</p>\r\n<p>Para lograr frenar lo anterior, es necesario reformar diversos art&iacute;culos de la Ley de Deuda P&uacute;blica del Estado de Jalisco, pero tambi&eacute;n la Constituci&oacute;n Pol&iacute;tica del Estado de Jalisco, ya que el art&iacute;culo 35 establece cu&aacute;les son las facultades del Congreso.</p>\r\n<p>&nbsp;</p>\r\n<p>Tambi&eacute;n ser&aacute; necesario reformar la Ley Org&aacute;nica del Poder Legislativo para determinar que ser&aacute; la Comisi&oacute;n de Hacienda y Presupuestos a quien corresponda el dictamen relacionado con la autorizaci&oacute;n a los municipios para contraer adeudos.</p>\r\n<p>&nbsp;</p>\r\n<p>En la actualidad, la mayor&iacute;a de los estados cuentan ya con leyes que obligan a los ayuntamientos a requerir autorizaci&oacute;n de las legislaturas locales para poder endeudarse. Entre &eacute;stos se encuentran &nbsp;Aguascalientes, Baja California, Baja California Sur, Campeche, Coahuila, Colima, Durango, Guanajuato, Hidalgo, Morelos, Oaxaca, Puebla, Quer&eacute;taro, Quintana Roo, San Luis Potos&iacute;, Sinaloa, Sonora, Tabasco, Tamaulipas, Yucat&aacute;n, Zacatecas, Estado de M&eacute;xico, Guerrero y Michoac&aacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p>La iniciativa del PAN recuerda en su exposici&oacute;n de motivos que en el Congreso de la Uni&oacute;n tambi&eacute;n se trabaja en el tema, ya que el pasado 30 de abril fue presentada una iniciativa para reformar diversos art&iacute;culos de la Constituci&oacute;n Pol&iacute;tica de los Estados Unidos Mexicanos, suscrita por diputados de los diferentes Grupos Parlamentarios.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-06-29','Rueda de Prensa GPPANJAL.JPG',0,1),(154,'','','<p><strong>1 de julio.- </strong>En dialogo de diputados con l&iacute;deres del Sindicato Nacional de Trabajadores de la Educaci&oacute;n (SNTE), el legislador panista Guillermo Mart&iacute;nez Mora, Presidente de la Comisi&oacute;n de Educaci&oacute;n en el Congreso,&nbsp; propuso pl&aacute;ticas permanentes y coordinadas con la Secretar&iacute;a de Educaci&oacute;n para trabajar temas medulares como lo es el presupuesto para el 2014. Reiter&oacute; la necesidad de eliminar&nbsp; las cuotas de los padres de familia as&iacute; como revisar los programas y planes de estudios de las escuelas normales a fin de apostarle a la modernidad y a la tecnolog&iacute;a en la formaci&oacute;n de los docentes.</p>\r\n<p>&nbsp;</p>',1,'2013-07-01','',0,2),(155,'El PAN detecta más irregularidades en la administración de  la pasada legislatura por supuestas asesorías fiscales innecesarias','','<p align=\"center\"><em>Un par de contratos &nbsp;aumentan la cantidad derrochada por la Secretar&iacute;a General de la LIX Legislatura, a m&aacute;s &nbsp;de 52 millones de pesos repartidos en tres supuestas asesor&iacute;as contratadas por el ex secretario Carlos Corona Mart&iacute;n del Campo con las empresas SAE y Ola.</em></p>\r\n<p align=\"center\"><em>&nbsp;</em></p>\r\n<p align=\"center\"><em>Piden diputados panistas al gobernador medir con la misma vara a todos, por lo que se debe fincar&nbsp; la responsabilidad penal a los que cometieron dichas &nbsp;atrocidades contra el Congreso.</em></p>\r\n<p align=\"center\"><em>&nbsp;</em></p>\r\n<p align=\"center\"><em>N&uacute;mero telef&oacute;nico inexistente y el mismo que aparece en las facturas de ambas empresas SAE Y OLA</em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; En Rueda de Prensa, el coordinador de los diputados panistas Gildardo Guerrero Torres acompa&ntilde;ado de los legisladores Juan Jos&eacute; Cuevas Garc&iacute;a  y V&iacute;ctor Manuel S&aacute;nchez   Orozco da a conocer otros dos contratos de prestaci&oacute;n de servicios contables al Congreso por parte de la empresa Ola Outsourcing, SA DE CV.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; El diputado panista Gildardo Guerrero indic&oacute; que todo lo que se ha encontrado hasta el momento forma parte de una ruta de mentiras para orde&ntilde;ar al Congreso. La primera contrataci&oacute;n con vigencia del 2 de marzo al 31 de agosto del a&ntilde;o 2010 se&ntilde;ala que la \"prestadora\" se obliga a llevar a cabo la auditoria interna para verificar el eficiente cumplimiento en la determinaci&oacute;n de contribuciones federales en materia de retenciones por los ejercicios fiscales de 2006, 2007,2008 y 2009; adem&aacute;s de que en la cl&aacute;usula quinta se&ntilde;ala que el precio que la prestadora cobrar&aacute; por sus servicios ser&aacute; por la cantidad de 6 millones 555 mil 555 pesos.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; El contrato con la empresa  SAE por casi 31 millones de pesos, &nbsp;ya fue denunciado penalmente y denunciado p&uacute;blicamente por el PAN hace casi ya un mes;&nbsp; se refer&iacute;a a la contrataci&oacute;n de una empresa denominada SAE (Sistemas Administrativos Empresariales) con el fin de brindar al Congreso ayuda para la incorporaci&oacute;n al decreto de beneficios fiscales publicado el 5 de diciembre del a&ntilde;o 2008.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; El otro contrato que ser&iacute;a el tercero, es con la &nbsp;misma empresa Ola Outsourcing, &nbsp;para asesorar al Congreso en el tr&aacute;mite de la devoluci&oacute;n o compensaci&oacute;n de saldos a favor por conceptos de ISR de los a&ntilde;os 2006 al 2009. El contrato dur&oacute; del 1 de septiembre al 1 de diciembre del a&ntilde;o 2010.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; As&iacute; pues la suma de todos los pagos realizados a la empresa Ola dan un total de 21 millones 137 mil 777 pesos. Entre el 1 de junio del 2010 al y 19 de enero del 2011 se documentaron 11 pagos. Si a esto se suma lo pagado a la empresa SAE, se llega&nbsp; a la cantidad de m&aacute;s de 52 millones de pesos.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>N&uacute;mero telef&oacute;nico inexistente y el mismo que aparece en las facturas de ambas empresas SAE y OLA. </strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lo m&aacute;s grave de toda la ruta que forma esta mara&ntilde;a, se&ntilde;al&oacute; Guerrero Torres, es la falsedad en los datos domiciliarios de las supuestas empresas. En la actualidad el domicilio Casa numero 78 de la calle Shakespeare, Colonia Anzures, Delegaci&oacute;n Miguel Hidalgo de la ciudad de M&eacute;xico, Distrito Federal es una cafeter&iacute;a. Pero lo m&aacute;s grave, es que las empresas SAE y OLA tienen el &nbsp;mismo n&uacute;mero&nbsp; telef&oacute;nico en los contratos, por lo que todo apunta a que el dinero se fue a las mismas manos.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Por su parte el legislador V&iacute;ctor Manuel S&aacute;nchez se&ntilde;ala que la conducta delictuosa se da desde el momento que se autoriza hacer un acto cuando no hab&iacute;a necesidad de hacerlo. Puso como ejemplo a la actual legislatura en donde el &aacute;rea administrativa pudo realizar las gestiones necesarias para adherirse a un decreto sin necesidad de pagar sumas millonarias por contratos.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Por tal motivo, el diputado S&aacute;nchez Orozco llam&oacute; a las acciones de la pasada legislatura &nbsp;conductas criminales que derivan en peculado, asociaci&oacute;n delictuosa, administraci&oacute;n fraudulenta entre otros m&aacute;s, ya que cualquier funcionario sabe que los tr&aacute;mites no eran necesarios y m&aacute;s por haber desembolsado dichas cantidades, que apuntan a la &nbsp;desviaci&oacute;n de recursos en el Congreso. Record&oacute; el antecedente en el Congreso de pagos a &nbsp;la Firma L&oacute;pez Castro por 58 millones, que dan una cantidad de m&aacute;s de 114 millones de pesos (si se suma con las actuales irregularidades expuestas por los diputados del PAN.)</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Para finalizar, el diputado Guerrero Torres exigi&oacute; a la Fiscal&iacute;a General&nbsp; y al Gobernador medir con la misma vara a todos los que tengan responsabilidad en el desfalco y hacer justicia con los que hicieron dicha atrocidad en el Congreso. Por lo pronto el PAN har&aacute; la denuncia penal correspondiente e invitar&aacute;n a las dem&aacute;s fracciones a sumarse.</p>\r\n<p>&nbsp;</p>',1,'2013-07-03','IMG_5111 - copia.JPG',0,1),(156,'','','<p><strong>3 de julio.-</strong><strong> </strong>En Rueda de Prensa, el coordinador de los diputados panistas Gildardo  Guerrero Torres acompa&ntilde;ado por los legisladores Juan   Jos&eacute; Cuevas Garc&iacute;a y V&iacute;ctor Manuel S&aacute;nchez Orozco, da a conocer otros dos contratos irregulares de prestaci&oacute;n de servicios contables al Congreso por parte de una empresa llamada Ola Outsourcing SA DE CV.</p>\r\n<p>La suma de todos los pagos realizados a dicha empresa, dan un total de 21 millones 137 mil 777 pesos; por lo que si se agrega dicha cantidad a los supuestos&nbsp; pagos realizados a la empresa SAE, tambi&eacute;n en la pasada legislatura (denuncia hecha hace un mes por el PAN)&nbsp; dar&iacute;a un total de m&aacute;s de 52 millones de pesos.</p>\r\n<p>&nbsp;</p>',1,'2013-07-03','',0,2),(157,'','','<p><strong>3 de julio. </strong>Gildardo Guerrero Torres,<strong> </strong>Coordinador de los diputados panistas, se muestra en contra de algunos contenidos del dictamen que crea la Ley de Movilidad. Durante los trabajos de las comisiones conjuntas de Vialidad, Puntos Constitucionales, Desarrollo Urbano y Asuntos Metropolitanos, el legislador se&ntilde;al&oacute; que la ley fomenta el monopolio transportista al&nbsp; haber eliminado los l&iacute;mites para permisos asignados a una persona y extender de cinco a 10 a&ntilde;os su vigencia. Tambi&eacute;n indic&oacute; que el dictamen no prev&eacute; una&nbsp; unidad anticorrupci&oacute;n para evitar la discrecionalidad y solo indica que un 10 por ciento de las unidades del transporte p&uacute;blico van a contar con adaptaciones para las personas con discapacidad.</p>\r\n<p>&nbsp;</p>',1,'2013-07-03','',0,2),(158,'','','<p><strong>4 de julio.-</strong> El diputado panista Guillermo Mart&iacute;nez Mora pide en la Comisi&oacute;n de Administraci&oacute;n que el informe rendido por el Secretario del Congreso sobre la subasta de 20 veh&iacute;culos del Congreso, sea documentado y exhibido en la p&aacute;gina del Congreso para una mayor transparencia. Respecto a la autorizaci&oacute;n para que el congreso liquide la deuda heredada por la pasada legislatura por la cantidad de 255 mil pesos al proveedor del taller&nbsp; \"servicios Mec&aacute;nica Automotriz\"&nbsp; el legislador se&ntilde;al&oacute; falta de previsi&oacute;n&nbsp; en las licitaciones realizadas en el Congreso. Se&ntilde;ala la necesidad de que el &aacute;rea administrativa realice un informe detallado que plant&eacute; con exactitud la problem&aacute;tica financiera&nbsp; que hered&oacute; &eacute;sta legislatura, con el fin de evitar imprevistos en las acciones que realice la actual legislatura. \"necesitamos un &aacute;rea administrativa que nos respalde a los diputados, que nos de oportunamente la informaci&oacute;n para ir buscando procedimientos que se encaminen a dejar un Congreso m&aacute;s sano y transparente\"</p>',1,'2013-07-04','',0,2),(159,'','','<p><strong>5 de julio.-</strong> En la Junta de Coordinaci&oacute;n Pol&iacute;tica, el diputado Gildardo Guerrero Torres aborda el tema de las contrataciones irregulares realizadas en la pasada legislatura por los ex secretarios del Congreso. Menciona que a la empresa SAE se le suma una supuesta empresa llamada Ola Outsourcing, en las cual las investigaciones apuntan a un desfalco de 21 millones. Por lo anterior se acord&oacute; enriquecer el expediente para la presentaci&oacute;n de una posible denuncia penal.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>5 de julio.-</strong> Se aprueba en el Pleno del Congreso reformas al C&oacute;digo Civil y a la Ley de Educaci&oacute;n que indican la obligaci&oacute;n de los padres de familia a proveer de alimentos y sustento para sus hijos hasta que &eacute;stos concluyan la educaci&oacute;n media superior. Dicha iniciativa fue propuesta por los legisladores Juan Jos&eacute; Cuevas y Hern&aacute;n Cortes Berumen.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>5 de julio.-</strong> En la sesi&oacute;n del Pleno presenta la diputada panista Norma Ang&eacute;lica Cordero Prado exhorto al Presidente de la Rep&uacute;blica y al Gobernador del&nbsp; Estado para reforzar las medidas de seguridad con elementos polic&iacute;acos y el ej&eacute;rcito en la Regi&oacute;n Altos Norte as&iacute; como en los l&iacute;mites con los estados vecinos de Zacatecas, Guanajuato, Aguascalientes y San Luis Potos&iacute;.</p>\r\n<p>&nbsp;</p>\r\n<p>Tambi&eacute;n present&oacute; la diputada Cordero en conjunto con otros legisladores, iniciativa que exhorta al gobernador a dar apoyo a las personas afectadas por el ecocidio que se registr&oacute; en d&iacute;as pasados en la Presa Valencia.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>5 de julio.-</strong> Se aprueba en el Pleno la iniciativa del diputado panista V&iacute;ctor Manuel S&aacute;nchez   Orozco para que el Ejecutivo ordene atender de manera urgente los problemas ecol&oacute;gicos ambientales que viven comunidades del municipio de San Sebasti&aacute;n del Oeste.</p>\r\n<p>&nbsp;</p>\r\n<p>Tambi&eacute;n presenta el legislador S&aacute;nchez Orozco dos iniciativas de exhorto. Una para el Gobernador y el Fiscal General&nbsp; a fin de que adopten para medidas administrativas que pongan fin a la exhibici&oacute;n en los medios de comunicaci&oacute;n de las personas victimas de alg&uacute;n delito as&iacute; como de personas detenidas, por ser dichas acciones&nbsp; violatorias de los derechos humanos.</p>\r\n<p>&nbsp;</p>\r\n<p>El otro acuerdo es el que exhorta al gobierno y a los municipios a que se apliquen los procesos de evaluaci&oacute;n o ex&aacute;menes de control de confianza a todos los integrantes de seguridad p&uacute;blica, procuraci&oacute;n de justicia, polic&iacute;as y dem&aacute;s servidores p&uacute;blicos obligados.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>5 de julio.-</strong> En la sesi&oacute;n, el diputado panista Alberto   Esquer Guti&eacute;rrez presenta de manera conjunta, iniciativa de acuerdo Legislativo que pide auditar al fideicomiso que apoya a productores de ma&iacute;z ya que no han recibido beneficios. Se pide a la SAGARPA averiguar el destino de los recursos.</p>\r\n<p>Se aprob&oacute; su iniciativa de acuerdo para que sea incluido el municipio de Zapotl&aacute;n el Grande en el programa \"Apoyo al Transporte para estudiantes\"</p>\r\n<p>&nbsp;</p>\r\n<p><strong>5 de julio.-</strong>&nbsp; Aprueba el Pleno el Acuerdo Legislativo propuesto por el diputado panista Jaime D&iacute;az Brambila que pide al Director de la CEA y a los 125 ayuntamientos&nbsp; generar estrategias para poner en funcionamiento las plantas de tratamiento de aguas residuales que se encuentran inoperantes.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>5 de julio.-</strong> Acuerda el Pleno exhorto propuesto por el diputado panista Guillermo  Mart&iacute;nez Mora para que la Secretar&iacute;a de Salud informe los &iacute;ndices de la enfermedad llamada ludopat&iacute;a.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>5 de julio.-</strong> Presenta el diputado panista Gildardo Guerrero Torres iniciativa de acuerdo legislativo que pide a la Secretar&iacute;a de Comunicaciones y Transportes garantizar la correcta se&ntilde;alizaci&oacute;n en los cruzamientos de las v&iacute;as f&eacute;rreas ubicadas sobre la avenida Inglaterra, en Guadalajara y a la Secretar&iacute;a de Movilidad y Transporte del Estado de Jalisco para que de forma coordinada con la SCT, desarrolle&nbsp; acciones&nbsp; a fin de detectar los cruceros de ferrocarril de mayor riesgo en Jalisco a fin de prevenir accidentes entre unidades ferroviarias y&nbsp; medios de transporte motorizados que circulan en nuestro estado.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>5 de julio.-</strong> Se aprueba en el Pleno el exhorto del diputado panista Jos&eacute; Luis Mungu&iacute;a Cardona para que las instituciones de Seguridad P&uacute;blica aumenten esfuerzos a fin de que todos los integrantes de las corporaciones de seguridad realicen las evaluaciones de control de confianza antes del 29 de octubre, fecha que vence el plazo de acreditaci&oacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p>De igual manera el que pide a la SAGARPA establecer una pr&oacute;rroga para la reinscripci&oacute;n al programa Diesel Agropecuario.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>5 de julio.- </strong>En la sesi&oacute;n se aprueba la iniciativa del legislador panista El&iacute;as Octavio I&ntilde;&iacute;guez Mej&iacute;a para declarar el d&iacute;a 14 de noviembre como D&iacute;a Estatal de la Prevenci&oacute;n y Combate&nbsp; de la Diabetes.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-07-05','',0,2),(160,'','','<p><strong>8 de julio.-</strong> En la Comisi&oacute;n de Hacienda, los diputados panistas Gildardo Guerrero Torres, Hern&aacute;n Cort&eacute;s Berumen y Juan Carlos M&aacute;rquez Rosas  &nbsp;se abstuvieron de votar el dictamen que atiende la solicitud del gobierno del estado en la administraci&oacute;n pasada para contratar un cr&eacute;dito destinado a&nbsp; obras para resarcir da&ntilde;os ocasionados por el hurac&aacute;n Jova en la zona costera de Jalisco. Los diputados panistas cuestionaron la tardanza de dicha ayuda que hab&iacute;a sido solicitado anteriormente por el gobierno panista y rechazada por la oposici&oacute;n. Adem&aacute;s, de que la solicitud no especifica con claridad cuales municipios ser&aacute;n beneficiados.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>8 de julio.-</strong> Atiende el diputado&nbsp; panista Alberto Esquer a manifestantes del Seguro Popular que est&aacute;n siendo obligados a firmar contratos con la empresa Outsourcing  Mafemar. El legislador se&ntilde;al&oacute; que el fin de semana estuvo de gira por el distrito 19 en donde atendi&oacute; a trabajadores del seguro popular que enfrentan la misma situaci&oacute;n. Se comprometi&oacute; a darle seguimiento y analizar el tema.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>8 de julio.-</strong> Presenta la fracci&oacute;n del PAN, iniciativa de Ley de Transparencia con elementos de vanguardia. El diputado Hern&aacute;n Cort&eacute;s Berumen se&ntilde;al&oacute; que<em> </em>la creaci&oacute;n de un&nbsp; consejo consultivo con facultades de proponer y seleccionar a quienes ser&iacute;an los candidatos para ocupar los puestos de consejeros y de presidente, es una de las propuestas m&aacute;s solicitadas y novedosas en la nueva ley, para la cual fueron consultados organismos educativos, empresariales y de la sociedad civil.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>8 de julio.</strong> En gira por la Regi&oacute;n Altos, la diputada Norma  Ang&eacute;lica Cordero Prado entrega apoyos a catorce mil lecheros y familias de San Miguel beneficiados por Liconsa.</p>\r\n<p>&nbsp;</p>',1,'2013-07-08','',0,2),(161,'PRESENTA ACCIÓN NACIONAL AVANCES EN  NUEVA LEY DE TRANSPARENCIA ','','<p align=\"center\"><em>La creaci&oacute;n de un&nbsp; consejo consultivo con facultades de proponer y seleccionar a quienes ser&iacute;an los candidatos para ocupar los puestos de consejeros y de presidente, es una de las propuestas m&aacute;s solicitadas y novedosas.</em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Presentan los diputados de Acci&oacute;n Nacional avances logrados hasta el momento en la confecci&oacute;n de una nueva Ley de Transparencia para Jalisco, la cual fue trabajada por analistas, universidades, empresarios y&nbsp; por la sociedad civil organizada interesada en la b&uacute;squeda de una&nbsp; norma novedosa para Jalisco, por lo que en los pr&oacute;ximos d&iacute;as ser&aacute; presentado el dictamen de manera formal a fin de ser discutido en comisiones y despu&eacute;s por el Pleno del Congreso.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Se&ntilde;al&oacute; el diputado Gildardo Guerrero Torres que parte de la agenda primordial de Acci&oacute;n Nacional en tener &nbsp;nuevas reglas en lo que a transparencia se refiere, con la encomienda de que todo organismo gubernamental del nivel que sea, pueda ser observado por los ciudadanos.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Correspondi&oacute; al diputado Hern&aacute;n Cortes Berumen, dar los antecedentes y acciones que ha llevado a cabo Acci&oacute;n Nacional para lograr una propuesta final. Record&oacute; que el trabajo se inici&oacute; desde el pasado mes&nbsp; de noviembre, por convocatoria de una red de organizaciones, y fue &nbsp;en la Coparmex donde se anunciaron temas urgentes para Jalisco, siendo uno de &eacute;stos, las modificaciones que requiere Jalisco en Transparencia, petici&oacute;n en la que &nbsp;todos los coordinadores estuvieron&nbsp; de acuerdo.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Desde ese momento, se&ntilde;al&oacute; el legislador, empezaron reuniones con distintas organizaciones y voceros representantes con un trabajo profundo de an&aacute;lisis y derecho comparado para lograr incorporar figuras novedosas as&iacute; como retomar contenido de la ley de transparencia del 2005.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Inform&oacute; el legislador Cort&eacute;s Berumen &nbsp;que tambi&eacute;n fue tomada en cuenta en este trabajo, la nueva Presidenta&nbsp; del Instituto de Transparencia quien ya realiz&oacute; sus propuestas y observaciones. Entre las novedades que presenta la propuesta de nueva ley est&aacute;n: La creaci&oacute;n de un&nbsp; consejo consultivo con facultades de proponer y seleccionar a quienes ser&iacute;an los candidatos para ocupar los puestos de consejeros y de presidente, es una de las propuestas m&aacute;s novedosas para la nueva ley as&iacute; como despenalizar &nbsp;el que se haga p&uacute;blica la informaci&oacute;n, por lo que se har&iacute;an tambi&eacute;n modificaciones al C&oacute;digo Penal,&nbsp; a la Ley de Responsabilidades de los Servidores P&uacute;blicos y el C&oacute;digo Electoral.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Otros temas en los que se dan avances son: Dar certeza jur&iacute;dica para que la informaci&oacute;n publica realmente lo sea y evitar con esto la discrecionalidad de la informaci&oacute;n; ampl&iacute;a el cat&aacute;logo de informaci&oacute;n para quitar la tentaci&oacute;n a los sujetos obligados de querer clasificar de&nbsp; manera distinta informaci&oacute;n fundamental y oportuna para los ciudadanos; se quita la pr&oacute;rroga a la informaci&oacute;n que se maneja como reservada para que solamente sea el plazo establecido de seis a&ntilde;os, incluir la informaci&oacute;n de las declaraciones patrimoniales como se prev&eacute; a nivel federal.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Se&ntilde;al&oacute; Cort&eacute;s Berumen que el dictamen que se est&aacute; armando incluye iniciativa de los diputados&nbsp; Victor S&aacute;nchez y Gabriela Andal&oacute;n, entre otros m&aacute;s.&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-07-08','RP GPPAN Ley Transparencia (2).JPG',0,1),(162,'','','<p><strong>9 de julio.-</strong> Durante los trabajos de la Comisi&oacute;n de Vigilancia, los diputados panistas Juan Jos&eacute; Cuevas Garc&iacute;a y Jos&eacute; Luis Mungu&iacute;a Cardona piden retirar la cuenta p&uacute;blica del SIAPA 2008 por presentar el punto de acuerdo inconsistencias as&iacute; como&nbsp; retirar del orden del d&iacute;a las peticiones para que la ASEJ revise&nbsp; los a&ntilde;os 2009 y 2010 del organismo. El diputado panista El&iacute;as &Iacute;&ntilde;iguez refiri&oacute; a los medios de comunicaci&oacute;n que existen otras cuentas p&uacute;blicas por revisar antes que esa&nbsp; y que por justicia los diputados deben otorgar el plazo necesario para que los ex funcionarios aporten pruebas y aclaraciones a las observaciones que emiti&oacute; la Auditor&iacute;a Superior.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>9 de julio.-</strong> A trav&eacute;s del diputado El&iacute;as Octavio &Iacute;&ntilde;iguez Mej&iacute;a, la Fracci&oacute;n del PAN en el Congreso se muestra a favor de los trabajadores del Seguro Popular que se niegan a ser contratados por una empresa outsourcing, la cual les da a firmar contratos poco espec&iacute;ficos e inconsistentes. El diputado informa que&nbsp; analizar&aacute; la posibilidad de entrevistarse con el Secretario de Salud para ver modificar las cl&aacute;usulas que generan incertidumbre laboral.</p>\r\n<p>&nbsp;</p>',1,'2013-07-09','',0,2),(163,'','','<p><strong>9 de julio.-</strong> Responde la SEJ&nbsp; al legislador Cuevas Garc&iacute;a que la autoridad educativa se encuentra en disposici&oacute;n de emitir la credencial de estudiantes&nbsp; a los alumnos que cursan educaci&oacute;n secundaria en sus tres modalidades (general, t&eacute;cnica y telesecundaria), para que&nbsp; puedan gozar &nbsp;descuentos en el transporte p&uacute;blico y for&aacute;neo.</p>\r\n<p>Se&ntilde;ala el legislador vallartense&nbsp; que el sistema educativo estatal abarca mucho m&aacute;s que solo los estudiantes de la Secundaria ya que tambi&eacute;n est&aacute;n todos los j&oacute;venes de bachillerato, Conalep, Cecytej y Cobaej, que dependen del gobierno del estado directamente. El diputado se dijo confiado de que en poco tiempo se tenga respuesta de la UdeG y de de las escuelas federales &nbsp;para darle certeza a los j&oacute;venes en que al menos por ahora tendr&aacute;n acceso a los descuentos del 50% al que tienen derecho.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>9 de julio.-</strong> La Comisi&oacute;n de Participaci&oacute;n Ciudadana y Acceso a la Informaci&oacute;n P&uacute;blica del Congreso del Estado turna la dictaminaci&oacute;n de la nueva Ley de Transparencia y Acceso a la Informaci&oacute;n P&uacute;blica del Estado de Jalisco y sus Municipios la cual nace de las propuestas del diputado Hern&aacute;n Cort&eacute;s Berumen y enriquecida con foros de consulta.</p>\r\n<p>&nbsp;</p>',1,'2013-07-09','',0,2),(164,'','','<p><strong>10 de julio.-</strong> El diputado panista Guillermo Mart&iacute;nez Mora, Presidente la Comisi&oacute;n de Educaci&oacute;n califica de asunto grave el que se haya dado la asignaci&oacute;n directa para la fabricaci&oacute;n de mochilas escolares a empresas del Distrito Federal y de Puebla que adem&aacute;s est&eacute;n dedicadas a la venta de material para campa&ntilde;as publicitarias. Se&ntilde;ala que afecta a Jalisco en la captaci&oacute;n de impuestos y perjudica la generaci&oacute;n de empleos del estado.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>10 de julio.-</strong> El diputado panista Guillermo Mart&iacute;nez Mora reprueba que los directivos escolares condicionen la reinscripci&oacute;n y entrega de documentos si no se pagan las cuotas escolares. Sin embargo, se&ntilde;ala que el tema de la desaparici&oacute;n de cuotas escolares debe ser abordado con gran responsabilidad y no con tintes partidistas y pol&iacute;ticos que puedan meter en crisis al sistema educativo, por lo que antes se debe buscar alternativas para dotar a&nbsp; las escuelas de material de trabajo&nbsp; y de limpieza.&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-07-10','',0,2),(165,'VIGILARÁN LOS  DIPUTADOS PANISTAS QUE ECOCIDIO DE LA PRESA VALENCIA NO QUEDE IMPUNE ','','<p align=\"center\"><em>Pedir&aacute;n que comparezcan las autoridades estatales, como la Procuradur&iacute;a Estatal de Defensa del Medio Ambiente que ten&iacute;a conocimiento desde el 17 de junio de lo que pasaba en el vaso lacustre con &nbsp;la presencia de melaza.</em></p>\r\n<p align=\"center\"><em>&nbsp;</em></p>\r\n<p align=\"center\"><em>Logra gestionar el diputado &Iacute;&ntilde;iguez que la Secretar&iacute;a de Salud env&iacute;e un m&eacute;dico m&aacute;s a la zona a fin de que los habitantes est&eacute;n bien atendidos y no se de&nbsp; un brote epidemiol&oacute;gico.</em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; En Rueda de Prensa, los diputados panistas Gildardo Guerrero Torres&nbsp; y El&iacute;as Octavio I&ntilde;iguez Mej&iacute;a abren mesa de dialogo con regidores panistas de Acatl&aacute;n y pescadores afectados por el ecocidio que sufri&oacute; en d&iacute;as pasados la Presa de Valencia, debido a la falta de vigilancia de las autoridades responsables.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; El diputado Gildardo Guerrero anunci&oacute; que el hecho lamentable debe ser esclarecido por las autoridades municipales y estatales de manera inmediata y puntual, por lo que solicitar&aacute;n la comparecencia del titular de la Proepa y del Presidente municipal de Tlajomulco a trav&eacute;s de las comisiones de Desarrollo Agr&iacute;cola, Forestal, Ganader&iacute;a, Medio Ambiente y la de Recursos Hidr&aacute;ulicos y Pesca. Cuestionar&aacute;n el por qu&eacute; no se tomaron las medidas pertinentes a tiempo, el motivo por el que no se clausur&oacute; a la empresa y las acciones que se han llevado a cabo.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; La Fracci&oacute;n del PAN&nbsp; llevar&aacute; a cabo seis acciones iniciales. Presentar&aacute; en el Pleno dos Acuerdos Legislativos. Uno es para solicitar que de manera inmediata se destinen m&aacute;s recursos a las familias afectadas,&nbsp; as&iacute; como elevar la propuesta de entrega de dos salarios m&iacute;nimos no s&oacute;lo a los pescadores, sino tambi&eacute;n a productores y jornaleros del cultivo de ca&ntilde;a que tambi&eacute;n se vieron afectados con el riego de dos mil ochocientos hect&aacute;reas.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; El segundo Acuerdo Legislativo es para que de manera inmediata se destine v&iacute;veres y medicamentos a los albergues instalados en el DIF Municipal y en la Casa Pastoral de Santa Ana de Acatl&aacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tambi&eacute;n solicitar&aacute; al Gobierno del Estado tomar las medidas necesarias en la reactivaci&oacute;n de la actividad tur&iacute;stica de la Presa de Acatl&aacute;n, &nbsp;a fin de crear un fondo especial para reactivar la zona, as&iacute; como solicitar al gobierno &nbsp;y al ayuntamiento de Tlajomulco que destinen una partida presupuestal para resarcir el da&ntilde;o ecol&oacute;gico debido a las omisiones municipales y estatales.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Por &uacute;ltimo, el legislador Guerrero se&ntilde;al&oacute; que propondr&aacute;n reformas al C&oacute;digo Penal y de Procedimientos Penales en lo relativo a materia ambiental a fin de tipificar al ecocidio como delito grave, &nbsp;ya que los funcionarios y personas que permiten da&ntilde;os de tal magnitud al ambiente, deben ser tratados como delincuentes.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Por su parte el legislador El&iacute;as I&ntilde;iguez en su calidad de Presidente de la Comisi&oacute;n de Salud indic&oacute; que ha estado al pendiente de la salud de los habitantes de la Presa y logr&oacute; que la Secretar&iacute;a de Salud por medio de la Direcci&oacute;n de Regulaci&oacute;n Sanitaria, env&iacute;e otro m&eacute;dico a la zona para que atienda las necesidades de los habitantes que viven alrededor del vaso lacustre.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; El regidor panista de Acatl&aacute;n Arturo Contreras C&aacute;rdenas y el presidente de la cooperativa de pescadores Eduardo Reyes Ulloa, agradecieron a los diputados por abrir una mesa de di&aacute;logo que d&eacute; seguimiento a las peticiones de los afectados.&nbsp; Pidieron estar al pendiente del lamentable caso a fin de que las gestiones logren avanzar de manera r&aacute;pida y oportuna, ya que 105 familias que viven en la  Presa Valencia y miles de ganaderos, agricultores y familias de Acatl&aacute;n dependen del vaso lacustre para regar sus cultivos y realizar sus trabajos diarios, pero con el desastre ocurrido, se encuentran en una situaci&oacute;n econ&oacute;mica y laboral dif&iacute;cil.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Indicaron&nbsp; que 532 toneladas de pescado fueron enterrados, lo que representa el 80 por ciento; el 20 por ciento restante se sumergi&oacute; en la presa debido a la descomposici&oacute;n.&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-07-10','IMG_5898.JPG',0,1),(166,'','','<p><strong>10 de julio.-</strong>&nbsp; Se aprueba en&nbsp; la Comisi&oacute;n de Puntos Constitucionales, Estudios Legislativos y Reglamentos, el dictamen de la Ley de Transparencia que nace de la iniciativa del diputado panista&nbsp; Hern&aacute;n Cort&eacute;s Berumen y enriquecida con&nbsp; un extenso trabajo de an&aacute;lisis, propuestas y observaciones de &nbsp;acad&eacute;micos, instituciones, organizaciones y sociedad civil.</p>\r\n<p><br /> En cuanto al dictamen de decreto que crea la nueva ley de Movilidad, tambi&eacute;n aprobada por los legisladores, el diputado panista Alberto Esquer Guti&eacute;rrez, manifest&oacute; que hay puntos que buscan control y monopolio a concesionarios del transporte p&uacute;blico. Opin&oacute; que es una ley que no se preocup&oacute; por los discapacitados y los peatones, adem&aacute;s de que&nbsp; en el tema de la comisi&oacute;n de tarifas qued&oacute; en el limbo la indexaci&oacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>10 de julio.-</strong> En rueda de Prensa los diputados panistas Gildardo Guerrero Torres y El&iacute;as Octavio I&ntilde;iguez Mej&iacute;a dan a conocer&nbsp; seis acciones respecto al ecocidio registrado en la Presa Valencia de Acatl&aacute;n de Ju&aacute;rez. Presentar&aacute;n dos Acuerdos Legislativos para solicitar se destinen m&aacute;s recursos a las familias afectadas,&nbsp; as&iacute; como elevar la propuesta de entrega de dos salarios m&iacute;nimos no s&oacute;lo a los pescadores, sino tambi&eacute;n a productores y jornaleros del cultivo de ca&ntilde;a que tambi&eacute;n se vieron afectados con el riego de dos mil ochocientos hect&aacute;reas. El segundo Acuerdo Legislativo es para que de manera inmediata se destine v&iacute;veres y medicamentos a los albergues instalados.</p>\r\n<p>Por su parte el diputado I&ntilde;iguez logr&oacute; que la Secretar&iacute;a de Salud env&iacute;e un m&eacute;dico m&aacute;s a la zona a fin de que los habitantes est&eacute;n bien atendidos y no se de&nbsp; un brote epidemiol&oacute;gico.</p>\r\n<p>&nbsp;</p>',1,'2013-07-10','',0,2),(167,'','','<p><strong>11 de julio.-</strong>&nbsp; En la Comisi&oacute;n de Trabajo y Previsi&oacute;n Social a la que acudi&oacute; el Secretario del Trabajo Eduardo Almaguer Ram&iacute;rez, el diputado panista El&iacute;as Octavio I&ntilde;&iacute;guez&nbsp; abord&oacute; el tema de la situaci&oacute;n de explotaci&oacute;n a jornaleros agr&iacute;colas y la necesidad de llevar las ferias de empleo que organiza el gobierno para el interior del estado a fin de evitar la migraci&oacute;n en la ZMG.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;<strong>11 de julio.-</strong> En la sesi&oacute;n del Pleno, los diputados panistas Juan   Carlos M&aacute;rquez Rosas y Juan Jos&eacute; Cuevas Garc&iacute;a cuestionan el cr&eacute;dito por 299.8 millones de pesos para reparar da&ntilde;os que dej&oacute; hace dos a&ntilde;os el hurac&aacute;n Jova en 37 municipios. El legislador M&aacute;rquez se mostr&oacute; en contra de que no se hayan incluido a los municipios de Puerto Vallarta, Cabo Corrientes y Tomatl&aacute;n, zonas que sufrieron da&ntilde;os por el meteoro y en cambio si se va a beneficiar a Sayula y Tecalitl&aacute;n, municipios que quedan lejos de la zona siniestrada.</p>\r\n<p>Por su parte el legislador Juan Jos&eacute; Cuevas se pronunci&oacute; en contra de la manera en que ser&aacute;n distribuidos los recursos ya que se basa en el n&uacute;mero de habitantes y no en los da&ntilde;os sufridos. Indic&oacute; que municipios gobernados por el PAN, solo recibir&aacute;n 45 millones.</p>\r\n<p>El diputado panista &nbsp;Ismael I&ntilde;iguez Brambila manifest&oacute; la necesidad urgente de que se aprobara el financiamiento ya que algunos municipios costeros est&aacute;n urgidos del apoyo para solucionar los da&ntilde;os ocasionados.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>11 de julio.- </strong>Se aprueban en la sesi&oacute;n del Pleno las<strong> </strong>reformas propuestas por el diputado panista Gildardo Guerrero Torres para castigar a quien desv&iacute;e recursos del Instituto de Pensiones del Estado. Se hacen reformas a la Ley del Instituto de Pensiones y adiciones al C&oacute;digo Penal del Estado con el prop&oacute;sito de imponer de tres a diez a&ntilde;os de prisi&oacute;n a los funcionarios de entidades p&uacute;blicas patronales que no enteren las retenciones hechas a los servidores p&uacute;blicos, dentro de los plazos establecidos por la legislaci&oacute;n de dicho Instituto.</p>\r\n<p>Los diputados Gildardo Guerrero y V&iacute;ctor S&aacute;nchez &nbsp;manifestaron la importancia de las reformas aprobadas ya que se calculan desv&iacute;os de m&aacute;s de 100 millones de pesos que dejan en riesgo las pensiones y prestaciones de los trabajadores, por lo que se hizo un llamado a las autoridades de justicia para que act&uacute;en sobre las denuncias que ya se han presentado.</p>\r\n<p><br /> <strong>11 de julio.-</strong> &nbsp;En la sesi&oacute;n se aprueban reformas al C&oacute;digo Civil y a la Ley de los Derechos de las Ni&ntilde;as, Ni&ntilde;os y Adolescentes, modificaciones que nacieron de la iniciativa del ex diputado panista Rafael Torres Marmolejo, con el objeto de que cuando el padre y la madre no convivan juntos, convendr&aacute;n cu&aacute;l de los dos ejercer&aacute; sobre el menor la custodia, siempre y cuando tengan la disposici&oacute;n y la posibilidad efectiva de hacerlo.</p>\r\n<p><strong>11 de julio</strong>.- Se aprob&oacute; tambi&eacute;n en la sesi&oacute;n del Pleno,&nbsp; dictamen de iniciativa que propusieron ex legisladores, entre ellos el panista Abraham Gonz&aacute;lez Uyeda, para&nbsp; reforma y adiciones a la Constituci&oacute;n Pol&iacute;tica del Estado, que establece un sistema que coordine las acciones de apoyo a integraci&oacute;n social de los adultos mayores, a fin de facilitarles una vida digna, decorosa y creativa, y se procurar&aacute; el tratamiento, rehabilitaci&oacute;n y e integraci&oacute;n a la vida productiva de las personas con discapacidad.</p>\r\n<p>&nbsp;</p>\r\n<p><br /> <strong>11 de julio.-</strong> Se aprueba en la sesi&oacute;n el acuerdo legislativo de la diputada panista Norma Ang&eacute;lica Cordero Prado que pide al Ejecutivo Federal instruir a la Comisi&oacute;n Nacional de Seguridad y a la Secretar&iacute;a de la Defensa Nacional, a reforzar medidas de seguridad y la presencia de elementos de las fuerzas federales y del Ej&eacute;rcito en la Regi&oacute;n Altos Norte de Jalisco, por la inseguridad que viven sus habitantes.</p>\r\n<p>&nbsp;<strong>11 de julio.-</strong> Se aprob&oacute; al acuerdo del diputado V&iacute;ctor  Manuel S&aacute;nchez Orozco, que hace un llamado al Titular del Poder Ejecutivo del Estado, as&iacute; como a los 125 presidentes municipales, para que se apliquen los procesos de evaluaci&oacute;n a los integrantes de las instituciones de seguridad p&uacute;blica, procuraci&oacute;n de justicia y polic&iacute;as, ya que esta actividad obligatoria no ha concluido.</p>\r\n<p><br /> <strong>11 de julio.-</strong> Presenta el diputado panista Gildardo Guerrero Torres la iniciativa que tipifica el \"ecocidio\" como delito. Record&oacute; lo ocurrido recientemente en la  presa Hurtado, del poblado de Valencia en Acatl&aacute;n, &nbsp;por lo que manifest&oacute; que los siniestros no pueden quedar impunes, pues ocasionan da&ntilde;os al desarrollo econ&oacute;mico, al equilibrio ecol&oacute;gico y a la salud p&uacute;blica del entorno. Adem&aacute;s, propuso un acuerdo legislativo que invita al presidente municipal de Tlajomulco a sesiones de las comisiones legislativas de Salud y Recursos Hidr&aacute;ulicos y Pesca, para abordar el tema.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>11 de julio.-</strong>&nbsp; Presenta el diputado panista V&iacute;ctor Manuel S&aacute;nchez Orozco un acuerdo legislativo para solicitar al Congreso de la Uni&oacute;n realizar gestiones para que se garantice a la poblaci&oacute;n ma&iacute;z libre de transg&eacute;nicos, as&iacute; como la petici&oacute;n de reinstalar y mantener la moratoria a la introducci&oacute;n al territorio mexicano de dicha semilla modificada gen&eacute;ticamente hasta definir con precisi&oacute;n los centros de origen y contar con la infraestructura necesaria para el control de ese producto.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>11 de julio.-</strong>&nbsp; Presenta el diputado panista V&iacute;ctor Manuel S&aacute;nchez Orozco iniciativa para reformar diversas leyes con el fin de armonizarlas con respecto a la Ley  Org&aacute;nica de la Fiscal&iacute;a General del Estado.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>11 de julio.-</strong> Presentan el diputado El&iacute;as Octavio I&ntilde;iguez Mej&iacute;a en su calidad de presidente de la Comisi&oacute;n de Salud,&nbsp; un punto de acuerdo que tiene como objeto reforzar las acciones para combatir el dengue, enfermedad viral que del a&ntilde;o 2012 a la fecha ha tenido un aumento de 400%.</p>\r\n<p><br /> En primer t&eacute;rmino se env&iacute;a oficio al Secretario de Salud, Jaime Agust&iacute;n Gonz&aacute;lez &Aacute;lvarez, para que se intensifiquen las campa&ntilde;as de prevenci&oacute;n de dengue. Asimismo, gira un atento exhorto a los 125 municipios del estado de Jalisco para que lleven a cabo las acciones necesarias que impidan la proliferaci&oacute;n del mosquito transmisor.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>11 de julio.-</strong> &nbsp;Propone el diputado panista El&iacute;as Octavio I&ntilde;iguez en la sesi&oacute;n del Pleno, una iniciativa de acuerdo legislativo que tiene como finalidad exhortar a los ayuntamientos y al Poder Ejecutivo para que se respete la Ley Contra la Exposici&oacute;n de Humo de Tabaco y su reglamento. Se pide enviar oficio al Secretario de Salud para que lleve a cabo campa&ntilde;as informativas y de difusi&oacute;n contra los efectos nocivos de fumar y tambi&eacute;n gira exhorto a los 125 ayuntamientos para que se aplique la ley y se lleven a cabo campa&ntilde;as de sensibilizaci&oacute;n contra los da&ntilde;os causados por inhalar humo de cigarro.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>11 de julio.-</strong> Se aprueba en el Pleno la primera lectura de la llamada Ley Vitrina&nbsp; propuesta por el diputado panista Hern&aacute;n Cort&eacute;s Berumen.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>11 de julio.-</strong> Se pospone en la Junta de Coordinaci&oacute;n Pol&iacute;tica, las instrucciones&nbsp; para que la Mesa directiva y la  Direcci&oacute;n Jur&iacute;dica del Congreso inicien los procesos jur&iacute;dicos para que se presenten en las instancias correspondientes las denuncias que puedan esclarecer la contrataci&oacute;n llevada a cabo por la pasada legislatura a&nbsp; las supuestas empresas SAE y Ola Outsourcing que costaron al erario 52 millones de pesos. El diputado Gildardo Guerrero se&ntilde;al&oacute; ante la negativa y argumento de algunas fracciones parlamentarias por darle largas la aprobaci&oacute;n del acuerdo, que parece defensa anticipada el posponer el caso.</p>\r\n<p>&nbsp;</p>',1,'2013-07-11','',0,2),(168,'','','<p><strong>15 de julio.-</strong> Se aprob&oacute; en la Comisi&oacute;n de Hacienda el nuevo Sistema Intermunicipal de los Servicios de Agua Potable y Alcantarillado&nbsp; (SISAPA). El diputado Gildardo Guerrero Torres se mostr&oacute; complacido de que el dictamen respeta la autonom&iacute;a municipal, es decir que cada Ayuntamiento decidir&aacute; si se integran o no al organismo. Hizo la propuesta de a&ntilde;adir un art&iacute;culo transitorio para establecer en la conformaci&oacute;n de los consejos tarifarios &nbsp;la representaci&oacute;n de la sociedad civil.</p>\r\n<p>&nbsp;</p>',1,'2013-07-15','',0,2),(169,'Se aprueba Decreto que garantiza la seguridad de los trabajadores del Estado en aportaciones a pensiones, un logro más de Acción Nacional','','<p align=\"center\"><em>Con este tipo de medidas se busca generar que las partes responsables de declarar aportaciones de los trabajadores no incurran en omisi&oacute;n como se han dado algunos casos.</em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; En sesi&oacute;n de pleno el diputado del PAN Gildardo Guerrero Torres presenta propuesta de modificaci&oacute;n que reforma los art&iacute;culos 10 y 167 y deroga los art&iacute;culos 168, 169 y 170 de la ley del Instituto de Pensiones del Estado de Jalisco, y adiciona el t&iacute;tulo vig&eacute;simo tercero el cual se denomina \"de los delitos en materia de seguridad Social de los servidores p&uacute;blicos\". As&iacute; mismo reforma los art&iacute;culos 299, 300, 301, 303, y 304 del C&oacute;digo Penal para el Estado Libre y Soberano de Jalisco</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Con estas acciones se garantiza la seguridad de que las aportaciones sean entregadas en tiempo y forma por parte de quienes la retienen al propio organismo de Pensiones del Estado. Entre los puntos que destaca est&aacute;n: \"Se impondr&aacute;n de tres a diez a&ntilde;os de prisi&oacute;n a los funcionarios p&uacute;blicos de las entidades p&uacute;blicas patronales que no enteren las retenciones realizadas a los servidores p&uacute;blicos de sus entidades, dentro de los plazos que se&ntilde;ala la Ley del Instituto de Pensiones del Estado de Jalisco\"</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; As&iacute; mismo estipula que se impondr&aacute;n de tres a diez a&ntilde;os de prisi&oacute;n a los funcionarios p&uacute;blicos de las entidades p&uacute;blicas patronales que no enteren las aportaciones que les correspondan, dentro de los plazos que se&ntilde;ala la Ley del Instituto de Pensiones del Estado de Jalisco, salvo que exista convenio con el Instituto de Pensiones del Estado que les otorgue alguna pr&oacute;rroga o establezca un mecanismo de pago alterno.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>De las sanciones</strong></p>\r\n<p>I. De uno a tres a&ntilde;os de prisi&oacute;n y multa por el importe de cincuenta a quinientos d&iacute;as de salario m&iacute;nimo, cuando el valor de lo defraudado no exceda del importe de quinientos d&iacute;as del salario m&iacute;nimo, vigente en Guadalajara;</p>\r\n<p>&nbsp;</p>\r\n<p>II. De dos a diez a&ntilde;os de prisi&oacute;n y multa por el importe de doscientos a tres mil d&iacute;as de salario m&iacute;nimo, cuando el valor de lo defraudado exceda de&nbsp; quinientos d&iacute;as de salario, pero no exceda tres mil d&iacute;as de salario m&iacute;nimo, vigente en Guadalajara; y</p>\r\n<p>&nbsp;</p>\r\n<p>III. De cuatro a quince a&ntilde;os de prisi&oacute;n y multa por el importe de mil a diez mil d&iacute;as de salario, cuando el valor de lo defraudado exceda de tres mil d&iacute;as de salario m&iacute;nimo, vigente en Guadalajara.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; El diputado Guerrero Torres recalc&oacute; que con la aprobaci&oacute;n de la presente, se garantiza que las partes obligadas a declarar dichas aportaciones sean en tiempo y forma, ya que algunas instituciones ven&iacute;an incurriendo en esta falta sin que se les sancionara por dicha omisi&oacute;n.&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-07-15','11-07-13 gil pleno.JPG',0,1),(170,'','','<p><strong>10 de julio.-</strong>&nbsp; El diputado panista Gildardo  Guerrero Torres, Presidente del Comit&eacute; de Biblioteca, Archivo y Editorial, buscara revivir la revista del Congreso del Estado, as&iacute; como conferencias y concursos&nbsp; literarios.</p>\r\n<p>&nbsp;</p>',1,'2013-07-10','',0,2),(171,'','','<p><strong>16 de julio.-</strong> Mejorar la implementaci&oacute;n del programa bienevales y buscar mecanismos que den suficiencia presupuestaria, piden los diputados panistas al Secretario de Desarrollo e Integraci&oacute;n Social, Salvador Rizo Castelo durante su visita a la Comisi&oacute;n de Educaci&oacute;n. Los diputados Juan Jos&eacute; Cuevas, Norma  Ang&eacute;lica Cordero Prado y V&iacute;ctor Manuel S&aacute;nchez Orozco cuestionaron la necesidad de buscar la manera para que puedan ser integrados la totalidad de los estudiantes de todo el estado y no dejar fuera de este programa a 116 municipios en donde existen j&oacute;venes que requieren la ayuda del gobierno para seguir estudiando y no desertar. Lo anterior porque el programa cubrir&iacute;a en lo que resta del&nbsp; a&ntilde;o, solo un 19 por ciento del total de los estudiantes en Jalisco.</p>\r\n<p>Por su parte el legislador panista Guillermo Mart&iacute;nez Mora propuso como estrategia un transporte p&uacute;blico escolar que resuelva otros problemas como lo es la movilidad urbana en la ZMG. Se mostr&oacute; preocupado por la deserci&oacute;n escolar que se da a nivel de secundaria por lo que conmin&oacute; a trabajar por una educaci&oacute;n de calidad en Jalisco y buscar apoyos estudiantiles que pongan freno a dicho problema estudiantil.</p>\r\n<p>&nbsp;</p>',1,'2013-07-16','',0,2),(172,'','','<p><strong>16 de julio.-</strong> Durante la reuni&oacute;n celebrada entre representantes de organizaciones no gubernamentales, activistas contra la violencia vial y diputados, el legislador panista El&iacute;as Octavio I&ntilde;iguez Mej&iacute;a manifest&oacute; la necesidad de darle&nbsp; difusi&oacute;n a la nueva norma, sobre todo para que los j&oacute;venes la conozcan y comprendan las sanciones que se contemplan. Inform&oacute; que &eacute;l como presidente de la Comisi&oacute;n de Salud planea campa&ntilde;as de concientizaci&oacute;n en centros universitarios de las distintas regiones del estado, a fin de socializar la nueva ley para que los j&oacute;venes sean concientes que el manejar no debe relacionarse con el consumo del alcohol y drogas.</p>\r\n<p>&nbsp;</p>',1,'2013-07-16','',0,2),(173,'','','<p><strong>16 de julio.-</strong> En rueda de prensa, el diputado panista Hern&aacute;n Cort&eacute;s Berumen expres&oacute; que el dictamen de la Ley de Transparencia&nbsp; o llamada ley vitrina, no es un refrito y es perfectible ya&nbsp; que se esta a tiempo de hacer modificaciones al proyecto que se encuentra en primera lectura. Indic&oacute; que la primera lectura es la etapa para analizar y hacer&nbsp; modificaciones. Se&ntilde;al&oacute; que independientemente de lo&nbsp; que sucede a nivel federal, la Ley de&nbsp; Transparencia en Jalisco debe ser reformada&nbsp; ya que cualquier otra reforma no afectar&iacute;a en lo sustancial, s&oacute;lo se tendr&iacute;an que hacer en su caso, adecuaciones m&iacute;nimas.</p>\r\n<p>&nbsp;</p>',1,'2013-07-16','',0,2),(174,'','','<p><strong>17 de julio.-</strong> La Comisi&oacute;n de Higiene y Salud P&uacute;blica&nbsp; presidida por el diputado panista El&iacute;as Octavio I&ntilde;iguez Mej&iacute;a, recibe al Secretario T&eacute;cnico del Consejo Estatal de Transplantes de &Oacute;rganos y Tejidos y a Roberto Olmos Gonz&aacute;lez, Presidente de la  Asociaci&oacute;n Civil Regalo de Vida, con el objetivo de analizar el tema de la donaci&oacute;n de &oacute;rganos. Los diputados Jos&eacute; Luis Munguia y El&iacute;as se unieron a un acuerdo legislativo sobre el tema de sensibilizaci&oacute;n de la sociedad en dicho tema. Se habl&oacute; de la necesidad de que los legisladores contemplen etiquetar recursos para el siguiente presupuesto a fin de&nbsp; realizar campa&ntilde;as en la sociedad &nbsp;que inicien desde la edad preescolar.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>17 de julio.-</strong>&nbsp; Durante los Trabajos de la Comisi&oacute;n de Seguridad P&uacute;blica que preside el legislador panista Jos&eacute; Luis Mungu&iacute;a Cardona, se cont&oacute; con la presencia del Maestro Javier Carrasco Rueda, Secretario T&eacute;cnico del Consejo Ciudadano de Seguridad P&uacute;blica y Reinserci&oacute;n Social quien junto con Roxana Ruiz S&aacute;nchez, encargada de la licenciatura en Seguridad P&uacute;blica impartida por educaci&oacute;n virtual de la Universidad&nbsp; de Guadalajara, explicaron a los legisladores&nbsp; el perfil de dicho carrera y su contribuci&oacute;n a la sociedad. El diputado Juan Carlos M&aacute;rquez Rosas observ&oacute; la necesidad de que desde el Estado se defina la pol&iacute;tica p&uacute;blica de seguridad ciudadana a fin de que se logre una verdadera vinculaci&oacute;n de&nbsp; los egresados de dicha carrera en el mundo laboral.</p>\r\n<p>&nbsp;</p>',1,'2013-07-17','',0,2),(175,'','','<p><strong>17 de julio.-</strong> Por considerar que no se justifica la contrataci&oacute;n de personal para algunos &oacute;rganos t&eacute;cnicos del Congreso, el diputado panista Guillermo  Mart&iacute;nez Mora, vocal de la Comisi&oacute;n de Administraci&oacute;n vot&oacute; en contra del acuerdo de la Comisi&oacute;n de Administraci&oacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>17 de julio.-</strong> Da a conocer el diputado Guillermo Mart&iacute;nez Mora&nbsp; derroches millonarios de la pasada legislatura en el a&ntilde;o 2010. Pide que se investiguen a los responsables y que haya sanciones tanto para los funcionarios como a las empresas que participaron en acciones indebidas.</p>\r\n<p>&nbsp;</p>',1,'2013-07-17','',0,2),(176,'','','<p><strong>18 de julio.-</strong> Se aprueba en la Comisi&oacute;n de Puntos Constitucionales, Estudios Legislativos y Reglamentos, las reformas al C&oacute;digo Electoral y de Participaci&oacute;n Ciudadana propuestas por la fracci&oacute;n del PAN. El dictamen pretende evitar los excesos en gasto p&uacute;blico, rebase en topes de campa&ntilde;as y precampa&ntilde;as electorales&nbsp; por medio de sanciones como el impedimento del registro, cancelaci&oacute;n de candidaturas o nulidad de la elecci&oacute;n.</p>\r\n<p>&nbsp;</p>',1,'2013-07-18','',0,2),(177,'','','<p><strong>18 de julio.-</strong> Se aprueba en la Junta de Coordinaci&oacute;n Pol&iacute;tica y en el Pleno la propuesta del diputado Gildardo Guerrero Torres para implementar la figura del Debate Pactado que promueva el intercambio de ideas. Se trata de a&ntilde;adir un punto de acuerdo en el orden del d&iacute;a de la sesi&oacute;n, para que los grupos pol&iacute;ticos fijen posiciones sobre asuntos p&uacute;blicos de relevancia y sean tratados de manera oportuna y r&aacute;pida.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>18 de julio.-</strong> En la Comisi&oacute;n de Puntos Constitucionales, diputados panistas avalan en lo general la ley para crear el organismo SISAPA; sin embargo los diputados Juan Carlos M&aacute;rquez Rosas, Alberto Esquer Guti&eacute;rrez y Hern&aacute;n Cort&eacute;s Berumen expresan su desacuerdo&nbsp; en el Consejo Tarifario contemplado en el dictamen de la Ley.&nbsp;  El diputado Alberto Esquer se&ntilde;al&oacute; que la creaci&oacute;n de dicho consejo viola la autonom&iacute;a constitucional que tienen los municipios para fijar cuotas a dichos servicios.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>18 de julio.-</strong> En la Comisi&oacute;n de Puntos Constitucionales, presidida por el diputado panista Hern&aacute;n Cort&eacute;s Berumen se aprueba adicionar un cap&iacute;tulo al C&oacute;digo Penal referente a la desaparici&oacute;n&nbsp; forzada de personas y sobre delitos cometidos por servidores p&uacute;blicos. El dictamen aprobado re&uacute;ne diversas propuestas, entre ellas las vertidas por el legislador del PAN, Juan Carlos M&aacute;rquez Rosas.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>18 de julio.-</strong> La Comisi&oacute;n de Educaci&oacute;n presidida por el diputado del PAN Guillermo Mart&iacute;nez Mora sesiona con la presencia del Secretario de Educaci&oacute;n, Francisco Ay&oacute;n L&oacute;pez,&nbsp; a fin de conocer las necesidades que enfrenta la dependencia.<strong> .</strong><strong> </strong>El diputado Juan Jos&eacute; Cuevas le pidi&oacute; al Secretario de Educaci&oacute;n soluci&oacute;n al tema de credenciales estudiantiles. Cabe recordar que en sesiones pasadas el Pleno envi&oacute; exhorto para que el ejecutivo durante los primeros diez d&iacute;as del pr&oacute;ximo ciclo escolar, entregue credenciales a los j&oacute;venes que cursan secundaria y bachillerato. &nbsp;El funcionario se comprometi&oacute; a dar respuesta definitiva en un periodo no mayor a diez d&iacute;as.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>18 de Julio.-</strong> Con el fin de cumplir con la norma federal, se trabaja en el Congreso para integrar en la constituci&oacute;n local, las candidaturas ciudadanas o independientes. El dictamen que se trabaja en la Comisi&oacute;n de Asuntos Electorales incluye diversas propuestas como la del ex gobernador Emilio Gonz&aacute;lez M&aacute;rquez.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>18 de julio.-</strong> Acuerdan el Pleno del Congreso instruir a la Mesa Directiva para que&nbsp; interpongan&nbsp; denuncias ante la Fiscal&iacute;a&nbsp; por el caso del desfalco de la pasada legislatura en&nbsp; la contrataci&oacute;n de dos empresas que costaron 52 millones de pesos. Dicho tema fue denunciado por el diputado panista Gildardo  Guerrero Torres y avalado por los dem&aacute;s coordinadores parlamentarios. El legislador asegur&oacute; que este tipo de hechos tienen que castigarse, considera que la erogaci&oacute;n millonaria para la supuesta gestor&iacute;a ante autoridades fiscales es un delito. El Diputado V&iacute;ctor S&aacute;nchez Orozco manifest&oacute; su benepl&aacute;cito, se&ntilde;al&oacute; que \"no pueden quedar impune los recursos que fueron desviados en la anterior legislatura, este es un caso que requiere de la suma de esfuerzos de todos los diputados\".</p>\r\n<p><strong>18 de julio.-</strong> Por mayor&iacute;a de votos en el Pleno, se desecha el acuerdo legislativo propuesto por el diputado del PAN Gildardo Guerrero Torres, que ped&iacute;a invitar a dialogar al presidente municipal de Tlajomulco sobre el ecocidio registrado en la Presa de Hurtado. El diputado panista se&ntilde;al&oacute; que el terrible suceso no puede quedarse en lamentaciones y en la promesa de aplicar todo el peso de la ley, ya que existen responsables directos que deben pagar las consecuencias de sus actos ya sea en calidad de omisos o de c&oacute;mplices.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>18 de julio.-</strong> Aprueba el Pleno, la iniciativa propuesta por la diputada Mariana  Ar&aacute;mbula Mel&eacute;ndez la cual promueve el usos responsable de las nuevas tecnolog&iacute;as de informaci&oacute;n, sobre todo en los infantes. Se trata de una reforma al art&iacute;culo siete, con el objetivo de que la educaci&oacute;n que se imparta en la entidad promueva la adecuada, responsable y segura utilizaci&oacute;n de las nuevas tecnolog&iacute;as, ya que son herramientas para la formaci&oacute;n integral de las nuevas generaciones.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>18 de julio.-</strong> En la sesi&oacute;n del Pleno, presenta el diputado panista Jos&eacute; Luis Mungu&iacute;a Cardona,&nbsp; exhorto a los presidentes municipales de la zona metropolitana para que implementen acciones urgentes con la finalidad de inhibir el robo a bancos.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>18 de julio.-</strong> Presenta el diputado panista V&iacute;ctor Manuel S&aacute;nchez Orozco, iniciativa de exhorto al Ejecutivo para que instruya a las instancias competentes a que&nbsp; atiendan de manera urgente los problemas generados por las retenciones de salarios a servidores p&uacute;blicos de las dependencias del Estado de Jalisco, y se ordene a los titulares de las dependencias se abstengan de dichas pr&aacute;cticas lesivas a los derechos fundamentales de los trabajadores.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>18 de julio.-</strong> Presenta el diputado panista Jos&eacute; Luis Mungu&iacute;a Cardona Acuerdo Legislativo que exhorta al titular de la SAGARPA a considerar la posibilidad de girar instrucciones en la delegaci&oacute;n de Jalisco a fin de que se establezca un aumento en el porcentaje de apoyo econ&oacute;mico otorgado a ganaderos para la adquisici&oacute;n de ganado bovino.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>18 de julio.-</strong> De manera conjunta con otros legisladores, los diputados Jos&eacute; Luis Mungu&iacute;a Cardona Y El&iacute;as Octavio I&ntilde;iguez Mej&iacute;a&nbsp; presentan Acuerdo Legislativo el cual solicita al Secretario del Consejo Estatal de Transplantes de &Oacute;rganos y Tejidos del Estado supervisar y hacer respetar el orden cronol&oacute;gico de los receptores en relaci&oacute;n a la asignaci&oacute;n y distribuci&oacute;n de los &oacute;rganos.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>18 de julio.-</strong>&nbsp; Presenta el diputado Guillermo  Mart&iacute;nez Mora Acuerdo Legislativo que exhorta al presidente municipal de Zapopan para que posponga la construcci&oacute;n de una ciclov&iacute;a en la Avenida Santa Margarita, a fin de que se socialice primero el proyecto.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>18 de julio.-</strong> Presentan en conjunto los diputados Hern&aacute;n Cort&eacute;s Berumen y Juan  Jos&eacute; Cuevas Garc&iacute;a la iniciativa de Acuerdo Legislativo que propone exhortar al Ejecutivo y a los 125 ayuntamientos para que cumplan los principios que rigen la Ley de Desarrollo Social y los lineamientos de los programas sociales con la finalidad de que se abstengan servidores p&uacute;blicos de utilizar con fines pol&iacute;ticos los programas y no excluir a personas por acreditar afinidad partidista.</p>\r\n<p>&nbsp;</p>',1,'2013-07-18','',0,2),(178,'','','<p><strong>19 de julio.-</strong> Se aprueba en la Comisi&oacute;n de Desarrollo Humano y Familia, la iniciativa de la diputada del PAN Mariana Ar&aacute;mbula Mel&eacute;ndez, respecto al apoyo a las personas con alguna discapacidad; se busca generar certidumbre en los beneficios que se les otorga a &eacute;stas personas por parte del gobierno del Estado.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>19 de julio.-</strong> Aprueba el Pleno la nueva Ley de Transparencia para Jalisco promovida por el diputado panista Hern&aacute;n Cort&eacute;s Berumen. La nueva ley establece habilitar un Consejo Consultivo del Instituto de Transparencia e Informaci&oacute;n P&uacute;blica de Jalisco, as&iacute; como que la presidencia del organismo sea rotativa un a&ntilde;o despu&eacute;s de que sea electo el presidente del Consejo para el periodo 2017-2021. Tambi&eacute;n destaca el que se incluya a los partidos pol&iacute;ticos y organizaciones gremiales como sujetos obligados, as&iacute; como que las declaraciones patrimoniales podr&iacute;an ser p&uacute;blicas si el sujeto obligado as&iacute; lo desea. Adem&aacute;s se especifica que en casos de informaci&oacute;n en materia de derechos humanos y delitos de lesa humanidad se proteger&aacute; la informaci&oacute;n confidencial (datos personales) mediante la realizaci&oacute;n de una versi&oacute;n p&uacute;blica.</p>\r\n<p><br /> <br /> <strong>19 de julio.-</strong> Se rechazan propuestas realizadas por diputados del PAN a la nueva Ley de Movilidad y Transporte del Estado. Se rechazaron puntos importantes como evitar el monopolio y poner l&iacute;mites a la cantidad de concesiones, eliminaci&oacute;n del fondo mixto para evitar negocios en torno al tema de transporte p&uacute;blico colectivo y para evitar pagos de parte del gobierno al \"subsidio\" del transporte,&nbsp; de la renovaci&oacute;n de las concesiones, establecer una unidad anticorrupci&oacute;n que de seguimiento a las denuncias ciudadanas, salarios fijos a los choferes del transporte p&uacute;blico y generar un transporte p&uacute;blico adaptado para personas con capacidades diferentes. Los puntos aceptados e incluidos para modificaci&oacute;n fueron: Agregar el concepto de mujeres embarazadas, con ello se garantiza el respeto y cuidado a la persona. Otro m&aacute;s fue incluir la  Educaci&oacute;n Vial como instrucci&oacute;n en los centros educativos, garantizando que los ni&ntilde;os y j&oacute;venes participen y aprendan sobre dicho concepto.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>19 de julio.-</strong> El Pleno del Congreso aprueba la iniciativa de donaci&oacute;n de &oacute;rganos en la cual es coparticipe el legislador panista Jos&eacute; Luis Mungu&iacute;a Cardona. Se trata de un exhorto para que entre otras cosas, se de prioridad a los ni&ntilde;os y ni&ntilde;as por ser los m&aacute;s desprotegidos.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>19 de julio.-</strong> Presenta el diputado panista Jos&eacute; Luis Mungu&iacute;a Cardona iniciativa que exhorta al gobierno y a los presidentes municipales de la ZMG a reforzar las medidas de seguridad para inhibir el crecimiento en los robos a bancos.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>19 de julio.-</strong> El diputado panista Gildardo Guerrero Torres presenta iniciativa para sancionar el maltrato a los animales y crear la figura penal del animalicidio. Se har&iacute;an modificaciones al C&oacute;digo Penal, a la Ley de Protecci&oacute;n y Cuidado a los Animales as&iacute; como a la Ley General de la Fiscal&iacute;a General.&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-07-19','',0,2),(179,'','','<p><strong>21 de julio.-</strong> La diputada panista Norma Ang&eacute;lica Cordero Prado, Presidenta de la Comisi&oacute;n de Ganader&iacute;a indica que trabajar&aacute; en leyes que inhiban la comercializaci&oacute;n de productos piratas o adulterados<strong>.</strong><strong> &nbsp;</strong>La diputada fue invitada especial en la inauguraci&oacute;n de la Uni&oacute;n Ganadera Regional de productores de miel. Se&ntilde;al&oacute; que es alentador que en la entidad alrededor de 1,200 jaliscienses de 14 municipios se dediquen a la apicultura con 40 mil colmenas, porque estos n&uacute;meros reflejan el beneficio directo para sus familias y de manera indirecta a cientos de personas que dependen de ella. Se comprometi&oacute; a impulsar como legisladora en el Congreso del Estado, esta actividad, para que los apicultores produzcan no s&oacute;lo miel, sino todo lo que se estimula derivado de la&nbsp;colmena, como es la cera, polen, jalea real, s&oacute;lo por mencionar algunos.</p>',1,'2013-07-21','',0,2),(180,'Se busca tipificar la crueldad animal y animalicidio en Jalisco','','<p align=\"center\"><em>L</em><em>a iniciativa propone que sea tipificado como delito el maltrato a los animales, contemplado como crueldad animal y en caso de que se ocasione la muerte, se cree la figura penal del animalicidio.</em></p>\r\n<p>&nbsp;</p>\r\n<p>El diputado Gildardo  Guerrero Torres presenta al Pleno la Iniciativa de ley que crea y hace modificaciones al&nbsp; C&oacute;digo Penal, a &nbsp;la Ley de Protecci&oacute;n y Cuidado a los Animales as&iacute; como a la Ley de la Fiscal&iacute;a General, para seguir avances en las leyes de Jalisco que den la debida protecci&oacute;n y cuidado a&nbsp; los animales.</p>\r\n<p>&nbsp;</p>\r\n<p>El Art&iacute;culo 2 de la Ley de Protecci&oacute;n y Cuidado de los Animales en el Estado de Jalisco, creada en noviembre del a&ntilde;o 2012, se&ntilde;ala que los animales son integrantes de un orden natural cuya preservaci&oacute;n es indispensable para la sustentabilidad del desarrollo humano, raz&oacute;n por la cual se les debe proporcionar protecci&oacute;n y cuidado conforme a la ley, su reglamento y las disposiciones aplicables.</p>\r\n<p><em>&nbsp;</em></p>\r\n<p>En nuestro pa&iacute;s, el Distrito Federal, y los estados de Colima, Yucat&aacute;n, y Nayarit, tipifican en sus respectivas legislaciones penales este delito. De los pa&iacute;ses de habla hispana, Espa&ntilde;a y Chile, han sido precursores en el tema de &nbsp;penalizar la violencia contra dichos seres vivos<em>.</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p>Los nuevos delitos en el C&oacute;digo Penal pretenden adicionarse en el T&iacute;tulo Vig&eacute;simo Tercero, \"De la Violencia contra los Animales\", el cual contendr&aacute; dos Cap&iacute;tulos: Crueldad&nbsp; Animal y Animalicidio.</p>\r\n<p>&nbsp;</p>\r\n<p>Otras de las propuestas contempladas en el dictamen, es la creaci&oacute;n de una Unidad Especializada de Protecci&oacute;n Animal, por sus siglas UEPA,&nbsp;&nbsp; contemplada en el art&iacute;culo 8&ordm; de la Ley Org&aacute;nica de la Fiscal&iacute;a para sea contemplada una unidad especializada en materia de crueldad animal.<strong> </strong></p>\r\n<p>&nbsp;</p>\r\n<p>Las sanciones contempladas son: de diez d&iacute;as a tres meses de prisi&oacute;n y multa por el equivalente de veinte a cincuenta d&iacute;as de salario m&iacute;nimo general vigente en el &aacute;rea geogr&aacute;fica en que se cometa el delito, a quien de manera intencional cause lesiones a cualquier animal y que &nbsp;se refleje un menoscabo en su salud sin afectar de manera permanente el desenvolvimiento y las funciones propias.</p>\r\n<p>&nbsp;</p>\r\n<p>Se impondr&aacute;n de tres meses a un a&ntilde;o de prisi&oacute;n y multa por el equivalente de cien a trescientos d&iacute;as de salario m&iacute;nimo general vigente en el &aacute;rea geogr&aacute;fica en que se cometa el delito, a quien con la intenci&oacute;n de causar un da&ntilde;o a un animal,&nbsp; realice actos de maltrato y crueldad que lesionen de forma evidente y afecten las funciones f&iacute;sicas &nbsp;o que pongan en riesgo la vida del mismo.</p>\r\n<p>&nbsp;</p>\r\n<p>Al responsable del delito de Animalicidio, se le impondr&aacute;n de dos a cinco a&ntilde;os de prisi&oacute;n y&nbsp; multa de quinientos a mil d&iacute;as de salario m&iacute;nimo en el &aacute;rea geogr&aacute;fica en que se cometa el delito, la&nbsp; inhabilitaci&oacute;n profesional en caso de ejercer profesi&oacute;n relacionada con el cuidado animal, as&iacute; como el aseguramiento de los animales que est&eacute;n bajo su resguardo. La pena se incrementar&aacute; en una mitad cuando se ocasione un grave sufrimiento al animal o se provoque su muerte mediante acciones prolongadas&nbsp; de agon&iacute;a.</p>\r\n<p>&nbsp;</p>\r\n<p>La iniciativa contempla salvedad para los casos en que se cuente con los permisos de las autoridades competentes, de acuerdo a las disposiciones legales aplicables, actividades deportivas, o en&nbsp; fiestas populares, de desarrollo pecuario, y por ende se cumplimenten los lineamientos que eviten el sufrimiento del animal.</p>\r\n<p>&nbsp;</p>\r\n<p>Consulta la iniciativa en:&nbsp;</p>\r\n<p><a href=\"http://diputadospanjalisco.net/congreso/iniciativas_diputado.php?rubro=109\">http://diputadospanjalisco.net/congreso/iniciativas_diputado.php?rubro=109</a></p>',1,'2013-07-23','maltrato-animal4.jpg',0,1),(181,'','','<p><strong>23 de julio.-</strong> Aprueba la Comisi&oacute;n de Administraci&oacute;n, en la cual es vocal el diputado Guillermo Mart&iacute;nez Mora, el informe final de las conclusiones del cotejo de la entrega recepci&oacute;n&nbsp; entre la LIX y la LX Legislatura, en la que se presumen presuntas responsabilidades de ex funcionarios que se traducen en malversaci&oacute;n de fondos, peculado, enriquecimiento il&iacute;cito, p&eacute;rdida de documentos, veh&iacute;culos y archivos entre otras anomal&iacute;as.&nbsp; Lo anterior respalda las denuncias y acciones que ha venido haciendo la fracci&oacute;n del PAN a lo largo de la legislatura como las denuncias penales que han presentado en contra de quienes resulten responsables de las graves irregularidades cometidas en la pasada legislatura.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>23 de Julio.-</strong> Integrantes de la Comisi&oacute;n de Salud buscan m&aacute;s recursos para hospitales p&uacute;blicos a fin de que no se pierdan &oacute;rganos que pueden ser transplantados. Piden a las autoridades que se respete la lista de espera de los que buscan un transplante. El diputado panista Jos&eacute; Luis Mungu&iacute;a se&ntilde;ala que lamentablemente siguen las acusaciones de tr&aacute;fico de influencias, lo que &nbsp;se suma a los altos costos de las cirug&iacute;as y gastos de hospitalizaci&oacute;n, as&iacute; como la poca cultura de donaci&oacute;n de &oacute;rganos que hace m&aacute;s grave el problema.</p>\r\n<p>&nbsp;</p>',1,'2013-07-23','',0,2),(182,'','','<p><strong>25 de julio.-</strong> Sesiona la Comisi&oacute;n de Responsabilidades, presidida por el legislador panista Juan Carlos M&aacute;rquez Rosas. En asuntos generales inform&oacute; sobre las declaraciones patrimoniales, en la que baj&oacute; la cifra de omisos de 10,374 a 9,708 servidores. La comisi&oacute;n iniciar&aacute; el procedimiento de notificaci&oacute;n a las diferentes entidades p&uacute;blicas a fin de que sean sancionados los omisos y se notifique al Congreso.&nbsp; El legislador record&oacute; que &eacute;l presento una iniciativa en dicho tema a fin de que los servidores p&uacute;blicos omisos en presentar sus declaraciones puedan ser sancionados de manera econ&oacute;mica o pecuniaria por parte de sus superiores jer&aacute;rquicos y el dinero recabado se mande a la Secretar&iacute;a de Finanzas o&nbsp; al Congreso del Estado, seg&uacute;n sea el caso.</p>\r\n<p>En otro tema, el diputado Jos&eacute; Luis Mungu&iacute;a Cardona pidi&oacute; retirar los casos de los expedientes de incoaci&oacute;n en contra de los ex secretarios Mart&iacute;n Mendoza, de finanzas y Ricardo Serrano, de administraci&oacute;n, con el fin de poder analizar mejor los documentos.</p>\r\n<p>&nbsp;</p>',1,'2013-07-25','',0,2),(183,'','','<p><strong>30 de julio.-</strong> Por ser ejemplo de esfuerzo y lucha, la legisladora panista Mariana Ar&aacute;mbula Mel&eacute;ndez entreg&oacute; reconocimientos a los cinco j&oacute;venes que ganaron el concurso Robocup Internacional 2013, el cual se llev&oacute; a cabo en Holanda&nbsp; el pasado mes de junio, donde&nbsp; obtuvieron el orgulloso primer lugar como equipo y noveno lugar&nbsp; a nivel general.</p>\r\n<p>La diputada les manifest&oacute; que trabaja en una iniciativa para poder crear en conjunto con el gobierno del estado una bolsa de apoyo para este tipo de eventos, que logre realmente apostarle a los nuevos talentos, adem&aacute;s de solicitar que sea el Coecytjal al que se le destine en su presupuesto partida para dicha materia.</p>\r\n<p>&nbsp;</p>',1,'2013-07-30','',0,2),(184,'','','<p><strong>31 de julio.-</strong> <strong>&nbsp;</strong>En reuni&oacute;n de la Comisi&oacute;n de Readaptaci&oacute;n Social que preside el diputado panista V&iacute;ctor Manuel S&aacute;nchez Orozco, se&nbsp; acord&oacute; enviar dos exhortos. Uno es para la Fiscal&iacute;a de Reinserci&oacute;n Social para que informe los par&aacute;metros y plazos que establecer&aacute; para trasladar reos al reclusorio metropolitano, y sobre todo, que tipos de reos ser&aacute;n trasladados&nbsp; a dicho centro penitenciario.</p>\r\n<p><strong></strong></p>\r\n<p>El otro exhorto ser&aacute; para la V regi&oacute;n militar a fin de solicitar a las autoridades militares implementar un operativo ya sea eventual o permanente en Puerto Vallarta, debido a la creciente inseguridad que aleja a los turistas, sobre todo extranjeros.</p>\r\n<p>&nbsp;</p>',1,'2013-07-31','',0,2),(185,'','','<p><strong>1 de agosto-</strong>&nbsp; El diputado panista V&iacute;ctor  Manuel S&aacute;nchez Orozco reitera estar en contra de m&aacute;s contrataciones de personal para cubrir algunas &aacute;reas del Congreso. Considera innecesario y oneroso dicho gasto, ya que existe personal de sobre en el poder legislativo, la cual capacit&aacute;ndose puede apoyar en donde se le requiera. Hizo un comparativo de los Poderes Legislativos del pa&iacute;s, en el cual el de Jalisco es la tercera legislatura m&aacute;s cara, seg&uacute;n datos del CIDE.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>1 de agosto- </strong>El diputado Alberto Esquer considera que es insultante que el IEPC quiera 340 mdp para comprar urnas electr&oacute;nicas, cuando en Jalisco existen necesidades m&aacute;s apremiantes como la construcci&oacute;n de Hospitales, acciones para el combate a la pobreza y a la inseguridad.&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-08-01','',0,2),(186,'','','<p><strong>2 de agosto.-</strong>&nbsp; Organiza el diputado El&iacute;as Octavio I&ntilde;iguez Mej&iacute;a, Presidente de la Comisi&oacute;n de Salud, un foro para conmemorar el d&eacute;cimo quinto aniversario del D&iacute;a Estatal de la Donaci&oacute;n y Transplantes de &Oacute;rganos y Tejidos, tema que sigue siendo complejo por la poca o nula cultura de donaci&oacute;n que impera en el pa&iacute;s y en Jalisco.</p>\r\n<p>&nbsp;</p>\r\n<p>En su discurso, el diputado El&iacute;as I&ntilde;&iacute;guez habl&oacute; de la importancia de crear conciencia en la poblaci&oacute;n por medios de foros y eventos que refuercen en la poblaci&oacute;n la idea de que al donar &oacute;rganos se pueden salvar vidas y demostrar solidaridad por los m&aacute;s necesitados.&nbsp;</p>\r\n<p>&nbsp;</p>',1,'2013-08-02','',0,2),(187,'','','<p><strong>05 de agosto</strong>.- El Diputado Jos&eacute; Luis Mungu&iacute;a Cardona participa como representante del Congreso del Estado en el arranque de la etapa de capacitaci&oacute;n de la fuerza &Uacute;nica de Jalisco, realizada en las instalaciones de la Academia de Polic&iacute;a y Vialidad de Jalisco.&nbsp;</p>',1,'2013-08-05','',0,2),(188,'','','<p><strong>07 de agosto</strong>.- El Dip. Victor S&aacute;nchez acompa&ntilde;a a los regidores Mario Salazar Madera y&nbsp; Maribel Alfeir&aacute;n de Coll, quienes presentaron una denuncia de juicio pol&iacute;tico en contra de Tom&aacute;s V&aacute;zquez Vigil, Secretario General con licencia del Ayuntamiento de Guadalajara, indican que V&aacute;zquez Vigil en contubernio con l&iacute;deres de ambulantes, permiti&oacute; la proliferaci&oacute;n de estos vendedores en varias zonas del Centro Hist&oacute;rico.</p>',1,'2013-08-07','',0,2),(189,'Informe del Grupo Parlamentario de Acción Nacional (1er año legislativo 2012-2013)','','<p>En el Partido Acci&oacute;n Nacional, entendemos el trabajo parlamentario como el centro de la gesti&oacute;n del Bien Com&uacute;n de nuestro Estado, pues es en el Poder Legislativo donde los habitantes de Jalisco encuentran representados -y a la vez materializados- sus deseos de desarrollar a diario una vida m&aacute;s digna, con mejores oportunidades, siempre a la luz de la justicia y de la libertad.</p>\r\n<p><br />Los diputados del Grupo Parlamentario del PAN en la LX Legislatura, desde la instalaci&oacute;n de la misma, hemos aceptado el reto de dignificar, y re dimensionar, el quehacer legislativo en el estado de Jalisco. Consideramos fundamental que, en la actualidad, el legislador no puede ni debe ser un sujeto pasivo en la b&uacute;squeda y desarrollo de soluciones para los problemas de nuestro Estado sino que, por el contrario, todo diputado ha de entenderse, y asumirse, como un delegado del pueblo de Jalisco, respondiendo a tal encargo con &eacute;tica y profesionalismo: siempre buscando alternativas humanistas y anticipando problemas, para transitar con responsabilidad del futuro posible al futuro deseado por todas y todos los jaliscienses.</p>',1,'2013-10-05','informe2012-2013.jpg',0,1);
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
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_asigna_boton`
--

LOCK TABLES `perfil_asigna_boton` WRITE;
/*!40000 ALTER TABLE `perfil_asigna_boton` DISABLE KEYS */;
INSERT INTO `perfil_asigna_boton` VALUES (42,4,3,'major.tom','http://youtube.com'),(43,4,5,'major.tom','http://instagram.com'),(21,4,2,'major.tom','https://www.facebook.com/major.tom'),(32,4,1,'@MajorTom','https://twitter.com/MajorTom');
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
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_asigna_iniciativa`
--

LOCK TABLES `perfil_asigna_iniciativa` WRITE;
/*!40000 ALTER TABLE `perfil_asigna_iniciativa` DISABLE KEYS */;
INSERT INTO `perfil_asigna_iniciativa` VALUES (83,14,5,1),(2,7,3,1),(3,7,4,1),(82,14,1,1),(5,7,2,1),(6,2,6,1),(7,2,7,1),(8,2,8,1),(103,14,25,1),(10,9,10,1),(11,9,11,1),(84,3,81,1),(13,4,13,1),(14,4,14,1),(15,14,15,1),(16,4,16,1),(17,4,17,1),(18,4,18,1),(19,6,19,1),(20,6,20,1),(21,6,21,1),(22,6,22,1),(23,6,23,1),(24,6,24,1),(104,11,94,1),(26,13,26,1),(27,13,27,1),(28,13,28,1),(29,13,29,1),(30,13,30,1),(31,13,31,1),(32,13,32,1),(33,13,33,1),(34,13,34,1),(35,13,35,1),(36,13,36,1),(37,13,37,1),(38,13,38,1),(39,13,39,1),(40,13,40,1),(41,5,41,1),(42,5,42,1),(43,5,43,1),(44,5,44,1),(45,5,45,1),(46,5,46,1),(47,5,47,1),(48,5,48,1),(49,5,49,1),(50,5,50,1),(51,12,51,1),(52,12,52,1),(53,11,53,1),(54,11,54,1),(55,11,55,1),(56,11,56,1),(57,8,57,1),(58,8,58,1),(59,1,59,1),(60,1,60,1),(61,1,61,1),(62,10,62,1),(63,10,63,1),(64,10,64,1),(65,10,65,1),(66,10,66,1),(67,10,67,1),(68,10,68,1),(69,10,69,1),(70,10,70,1),(71,3,71,1),(72,8,72,1),(73,8,73,1),(74,8,74,1),(75,8,75,1),(76,1,76,1),(77,8,77,1),(78,8,78,1),(79,4,78,1),(80,8,79,1),(81,8,80,1),(85,3,82,1),(86,3,83,1),(87,3,84,1),(88,3,85,1),(89,3,86,1),(90,3,87,1),(91,3,88,1),(92,3,89,1),(93,3,90,1),(94,3,91,1),(95,3,92,1),(96,8,76,1),(97,9,76,1),(98,7,76,1),(99,4,76,1),(100,12,76,1),(101,13,76,1),(102,14,9,1),(105,11,95,1),(107,6,96,1),(109,4,97,1),(110,8,98,1),(111,8,99,1),(112,7,99,0),(113,4,99,0),(114,10,99,0),(115,12,99,0),(116,2,99,0),(117,9,100,1),(118,4,101,1),(119,9,101,0),(120,3,102,1),(121,8,103,1),(122,11,104,1),(123,12,105,1),(124,13,106,1),(125,14,107,0),(126,14,108,0),(127,4,109,1),(128,12,110,1),(129,14,111,1),(130,4,112,1),(131,2,112,1),(132,5,113,1),(133,12,114,1),(134,4,115,1),(135,1,116,1),(136,10,117,1),(137,11,118,1),(138,12,119,1),(139,3,120,1),(140,5,121,1),(141,5,122,1);
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_boton_social`
--

LOCK TABLES `perfil_boton_social` WRITE;
/*!40000 ALTER TABLE `perfil_boton_social` DISABLE KEYS */;
INSERT INTO `perfil_boton_social` VALUES (1,'twitter'),(2,'facebook'),(3,'youtube'),(4,'email'),(5,'instagram');
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_categoria`
--

LOCK TABLES `perfil_categoria` WRITE;
/*!40000 ALTER TABLE `perfil_categoria` DISABLE KEYS */;
INSERT INTO `perfil_categoria` VALUES (1,'Presidente Municipal','',0,0),(2,'Diputado Local','',0,0),(3,'Diputado Federal','',0,0),(4,'Gobernatore','',0,0);
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
  `nacido` varchar(150) NOT NULL,
  `categoria` int(3) NOT NULL DEFAULT '0',
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `ext` smallint(2) NOT NULL DEFAULT '0',
  `email` varchar(100) DEFAULT NULL,
  `sala` varchar(100) DEFAULT NULL,
  `telefonos` varchar(100) DEFAULT NULL,
  `enlace` text,
  `orden` smallint(2) DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_index`
--

LOCK TABLES `perfil_index` WRITE;
/*!40000 ALTER TABLE `perfil_index` DISABLE KEYS */;
INSERT INTO `perfil_index` VALUES (0,'ninguno',NULL,'sin_titulo','',0,1,0,NULL,NULL,NULL,NULL,0),(4,'Tom Major','<p>Origini</p>\r\n<p>Originario di Bettola, un paesino in provincia di Piacenza (Emilia Romagna), Pier Luigi Bersani, nato il 29 settembre del 1951, viene da una famiglia di relativamente umili origini (suo padre &egrave; stato un meccanico e benzinaio). Dopo la scuola dellobbligo, Bersani decide di intraprendere i propri studi universitari presso lUniversit&agrave; di Bologna, dove si &egrave; laureato in filosofia (con una tesi dedicata al Papa Gregorio I). Dopo una breve esperienza lavorativa come insegnante di scuola, Bersani intraprende la carriera politica e amministrativa che ne distinguer&agrave; la vita professionale.Bersani a Bologna</p>\r\n<p>Linizio della carriera politica / affiliazioni politiche</p>\r\n<p>Bersani passa dal partito comunista Italiano al partito democratico di sinistra, diventando un membro della segreteria nazionale del partito dei democratici di sinistra (responsabile, tra le altre cose, del settore economico e finanziario del partito). Unaltra mansione di rilievo ricoperta da Bersani &egrave; il suo ruolo nellamministrazione regionale dellEmilia Romagna, dove ha coperto cariche di rilievo fino al 1996.</p>\r\n<p>Bersani verso il parlamento Europeo</p>\r\n<p>Dopo il ruolo ricoperto in qualit&agrave; di ministro dellindustria, del commercio e dellartigianato dal 1996 al 1999, Bersani passa successivamente al ministero dei trasporti (al centro-sinistra con Prodi, DAlema e Amato).</p>\r\n<p>Bersani diventa successivamente parlamentare Europeo nel 2004, rappresentando la regione nord-ovest del partito dei democratici di sinistra, e divenendo parte del comitato degli affari economici e monetari, nonch&eacute; del comitato per il mercato interno e la protezione dei consumatori.</p>\r\n<p>Bersani &egrave; anche stato membro della delegazione Europea per relazioni estere con paesi come Kazakhstan, Kyrgyzstan, Uzbekistan, Tajikistan, Turkmenistan, Mongolia e Bielorussia.</p>\r\n<p><br /> <br />Il ruolo durante il secondo governo Prodi.</p>\r\n<p>Bersani abbandona il lavoro nel parlamento Europeo in seguito alla rielezione alla camera dei deputati nel 2006, periodo in cui ricopre il ruolo di ministro delleconomia durante il governo del primo ministro Romano Prodi. In qualit&agrave; di ministro delleconomia e dello sviluppo, Pier Luigi Bersani ha il compito di introdurre le riforme necessarie per raggiungere una maggiore liberalizzazione del mercato e della concorrenza. In qualit&agrave; di ministro, Bersani ha risposto a queste esigenze con il  Decreto Legge 223 del 30 giugno 2006, successivamente convertito nella legge 248/2006, comunemente nota come \"decreto Bersani 1&Prime;. Questa regolazione &egrave; mirata principalmente a professionisti come i conducenti di taxi e farmacisti, anche se altri settori sono coinvolti.</p>\r\n<p>I decreti Bersani: Verso una maggiore liberalizzazione del mercato e della concorrenza</p>\r\n<p>In qualit&agrave; di ministro delleconomia e dello sviluppo, Pier Luigi Bersani ha il compito di introdurre le riforme necessarie per raggiungere una maggiore liberalizzazione del mercato e della concorrenza. In qualit&agrave; di ministro, Bersani ha risposto a queste esigenze con il  Decreto Legge 223 del 30 giugno 2006, successivamente convertito nella legge 248/2006, comunemente nota come \"decreto Bersani 1&Prime;. Questa regolazione &egrave; mirata principalmente a professionisti come i conducenti di taxi e farmacisti, anche se altri settori sono coinvolti.</p>\r\n<p>La politica di governo della concorrenza e della liberalizzazione non si fermer&agrave; al primo decreto Bersani, che viene &egrave; stato seguito dal secondo decreto Bersani attuato nel gennaio 2007, convertito nella legge 40 del 2 aprile 2007).</p>\r\n<p>A questi due decreti seguono successivamente una serie di distinte per la liberalizzazione delle professioni e di trasmissioni televisive, i servizi pubblici locali, e lenergia, nonch&eacute; la riduzione e la semplificazione delle procedure e tempistiche per lavvio di nuove imprese. Un altro progetto di legge propone di razionalizzare le competenze delle autorit&agrave; di regolamentazione, di modificare e potenziare le loro competenze, soprattutto in materia di concorrenza. Ancora un altro progetto di legge avrebbe leffetto di introdurre e disciplinare le procedure giudiziarie per azioni legali collettive. Il 25 ottobre 2009, Bersani prevale sugli \"avversari\"  Dario Franceschini e Ignazio Marino, alle elezioni per la leadership del partito democratico, diventando cos&igrave; il principale leader dellopposizione, con un punteggio di preferenza pari al 55,1 % tra tutti i membri del partito. Dal 7 novembre 2009, come deciso dallAssemblea Nazionale, Pier Luigi Bersani ricopre in maniera ufficiale l incarico di segretario del Partito Democratico in Italia, dopo aver sconfitto il sindaco di Firenze Matteo Renzi nel 2013 elezioni primarie.</p>\r\n<p>La situazione attuale</p>\r\n<p>Prima delle elezioni del 2013, Il partito democratico &egrave; rimasto in testa in termini di preferenze, ma il partito di Bersani &egrave; cresciuto di circa il 40% solo allinizio dellanno, a differenza del ex centro destra di Silvio Berlusconi, sceso intorno al 25%</p>\r\n<p>Nel marzo del 2013, il presidente della repubblica Italiana Giorgio Napolitano h chiesto a Bersani di formare un nuovo governo, ma Bersani non &egrave; riuscito a trovare un accordo per la formazione di un nuovo governo italiano includendo rete influenti come la nuova realt&agrave; politica nazionale del Movimento Cinque Stelle (nato per iniziativa dellex comico Beppe Grillo). Data la situazione di stallo del governo, Bersani ha annunciato il ritiro dal proprio ruolo nel partito democratico dopo il fallimento di Romano Prodi nellassicurarsi una maggioranza parlamentale per le elezioni governative</p>\r\n<p>&nbsp;</p>','mitin1.jpg','Bettola, Piacenza, Italia. 29 de septiembre de 1951',4,1,1,'majortom@groundcontrol.com','Major Tom Room','555 55 5667','<p>Rizzoli 8, 20132 Milano, Italia</p>',5);
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
  `texto` longtext,
  `nombre` varchar(250) NOT NULL,
  `categoria` smallint(1) NOT NULL DEFAULT '0',
  `visible` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_iniciativa`
--

LOCK TABLES `perfil_iniciativa` WRITE;
/*!40000 ALTER TABLE `perfil_iniciativa` DISABLE KEYS */;
INSERT INTO `perfil_iniciativa` VALUES (1,'<p>Controlla la tua bici regolarmente (soprattutto se &egrave; un po &nbsp;\"vissuta\"!) e assicurati che pneumatici, freni e catena siano in perfetto stato. Per verificare se hai le gomme bucate vale la vecchia, cara prova della tinozza d acqua: se la gomma \"fa le bolle\" significa che &egrave; da riparare o sostituire. Controlla che la bici sia tarata sul tuo peso e sulla tua altezza: una volta seduto devi toccare il suolo con la punta dei piedi.</p>','Controlla la tua bici regolarmente.',1,1),(2,'<p>Prima di partire dai un occhiata al tuo abbigliamento. Tacchi e infradito possono rivelarsi pericolosi durante la pedalata, cos&igrave; come gli orli troppo lunghi dei pantaloni (per questo esistono delle clip create apposta). Assicurati di non avere cinture o cappotti che possano infilarsi nella ruota mentre sei in movimento e, soprattutto se ti sposti di sera, renditi visibile: il giubbotto catarifrangente &egrave; d obbligo nelle gallerie urbane e sulle strade extraurbane dopo il tramonto, ma al buio si rivela molto utile anche in citt&agrave;. Se non l hai ancora fatto, monta delle luci anteriori e posteriori. Soprattutto: indossa un casco, della taglia giusta e calzato correttamente.</p>','Prima di partire dai un occhiata al tuo abbigliamento.',1,1),(3,'<p>Occupa il posto che ti spetta sulla strada e non rifugiarti sul margine destro se l asfalto &egrave; dissestato.</p>','Occupa il posto che ti spetta sulla strada e non rifugiarti sul margine destro se l asfalto è dissestato.',1,1),(4,'<p>Comunica in anticipo le tue intenzioni sugli spostamenti utilizzando le braccia. Prima di spostarti a destra o a sinistra controlla sempre dietro alla tua spalla se ci sono veicoli in avvicinamento. Compi le svolte pi&ugrave; difficili in due tempi, aspettando il verde al semaforo.</p>','Comunica in anticipo le tue intenzioni sugli spostamenti utilizzando le braccia.',1,1),(5,'<p>Niente cuffie nelle orecchie o auricolare del cellulare. Devi rimanere concentrato e tendere bene l orecchio ai rumori della strada (l accelerazione di un auto, la sirena di un ambulanza), e la musica non lo permette.</p>','Niente cuffie nelle orecchie o auricolare del cellulare.',1,1),(6,'<p>L apertura improvvisa delle portiere dei veicoli parcheggiati o dei taxi in sosta &egrave; una delle insidie pi&ugrave; pericolose per i ciclisti, che rischiano di essere urtati e scaraventati a terra. Tieniti sempre a debita distanza dalle auto ferme sul ciglio della strada.</p>','Tieniti sempre a debita distanza dalle auto ferme sul ciglio della strada.',1,1),(7,'<p>Conosci e rispetta la segnaletica stradale. Fermati ai semafori e non andare contro mano.</p>','Conosci e rispetta la segnaletica stradale.',1,1),(8,'<p>Cerca di prevenire le intenzioni degli altri guidatori stabilendo con loro un contatto visivo.</p>','Stabilendo con loro un contatto visivo.',1,1),(9,'<p>Attenzione a buche e rotaie. Cerca di evitare le prime e per attraversare le seconde assicurati di mettere le ruote di sbieco.</p>','Attenzione a buche e rotaie.',1,1),(10,'<p>Hai il campanello, usalo per segnalare il tuo arrivo ai pedoni. Evita di salire sui marciapiedi e, se proprio devi, porta la bici a mano.</p>','Usa il campanello.',1,1),(11,'<p>il principio &egrave; non euroscetticismo, ma pi&ugrave; Europa. Accelerare l integrazione politica, economica e fiscale; coordinare le politiche economiche e fiscali tramite nuove istituzioni comuni, dotate di legittimazione popolare e diretta. Una nuova architettura istituzionale della Eurozona, per raggiungere la quale &egrave; necessaria una collaborazione con le forze del centro liberale.</p>','Accelerare la integrazione politica, economica e fiscale.',2,1),(12,'<p>Difesa del principio di legalit&agrave;, lotta decisa alla evasione fiscale, contrasto severo dei reati contro l ambiente, rafforzamento normativa contro la corruzione. Riformulare il federalismo, per fare delle autonomie un punto di forza del Paese. Norme stringenti su conflitto di interessi, antitrust e libert&agrave; della informazione. Ridurre i costi della politica e la sua invadenza.</p>','Difesa del principio di legalità.',2,1),(13,'<p>Rimettere al centro la dignit&agrave; del lavoratore. Ridisegno profondo del sistema fiscale, per alleggerire il carico su lavoro e impresa; contrastare la precariet&agrave;; aiuti alle imprese per competere su qualit&agrave; e innovazione; politiche fiscali per sostenere la occupazione femminile.</p>','Rimettere al centro la dignità del lavoratore.',2,1),(14,'<p>Rimettere il Mezzogiorno al centro dell Agenda; combattere sprechi e inefficienze con una nuova strategia nazionale; correggere le storture di vecchi localismi clientelari. Giustizia civile e penale al servizio del cittadino.</p>','Rimettere il Mezzogiorno al centro dell Agenda.',2,1),(15,'<p>Misure pi&ugrave; incisive di valorizzazione del merito. Superare gli aspetti pi&ugrave; insostenibili della legge sulla procreazione assistita e garantire piena applicazione di quella sull aborto.</p>','Misure più incisive di valorizzazione del merito.',2,1),(16,'<p>Avviare riqualificazione e rigore della spesa per l istruzione, avendo come riferimento il grado di preparazione degli studenti e il reggiungimento degli obiettivi formativi. Piano contro la dispersione scolastica; investimento sulla ricerca avanzata nei settori trainanti e pi&ugrave; innovativi.</p>','Avviare riqualificazione e rigore della spesa per l istruzione.',2,1),(17,'<p>Politica industriale integralmente ecologica; indirizzare il sistema produttivo verso mobilit&agrave; sostenibile, risparmio ed efficienza energetica, beni culturali e storici, agenda digitale.</p>','Sviluppo sostenibile.',2,1),(18,'<p>Energia, patrimonio culturale e paesaggistico, servizi di welfare e formazione, sono beni che vanno regolati. Introdurre normative per definire la gestione pubblica o i compiti delle autorit&agrave; di controllo sulle finalit&agrave; pubbliche di questi servizi.</p>','Beni comuni.',2,1),(19,'<p>Valorizzare il principio costituzionale della laicit&agrave; dello Stato; norma che concede la cittadinanza italiana a chiunque sia nato e cresciuto in Italia; riconoscimento giuridico delle coppie omosessuali.</p>','Valorizzare il principio costituzionale della laicità dello Stato.',2,1),(20,'<p>Impegno delle forze di coalizione a sostenere lealmente e per tutto la arco della legislatura il premier scelto dalle primarie; affidare al premier la composizione di un governo snello, sottratto a logiche di spartizione e ispirato a criteri di competenza, rinnovamento e credibilit&agrave;; assicurare lealt&agrave; a impegni internazionali; sostenere il governo nella difesa della moneta unica e verso la creazione di un governo politico-economico federale della eurozona.</p>','Un governo snello, sottratto a logiche di spartizione e ispirato a criteri di competenza, ',2,1);
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
INSERT INTO `perfil_iniciativa_cat` VALUES (0,'Ninguno',NULL,0,0),(1,'Propuesta',NULL,0,0),(2,'Compromiso',NULL,0,0);
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
-- Table structure for table `qr_index`
--

DROP TABLE IF EXISTS `qr_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qr_index` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `descripcion` text,
  `url` varchar(250) NOT NULL,
  `qr` varchar(250) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qr_index`
--

LOCK TABLES `qr_index` WRITE;
/*!40000 ALTER TABLE `qr_index` DISABLE KEYS */;
INSERT INTO `qr_index` VALUES (1,'<p>Uno sguardo indipendente al Bersani-Pensiero.</p>','http://www.bersanisegretario.it','pier_luigi_bersani'),(2,'','http://localhost/groundcontrol/perfil.php','propuestas'),(3,'','http://bunkerpolitico.com.mx/bunker/','bunker_politico');
/*!40000 ALTER TABLE `qr_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_answ`
--

DROP TABLE IF EXISTS `quiz_answ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_answ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `respuesta` varchar(250) NOT NULL DEFAULT '',
  `valida` tinyint(1) NOT NULL DEFAULT '0',
  `ques` int(3) NOT NULL DEFAULT '0',
  `imagen` varchar(50) DEFAULT NULL,
  `contenido` text,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_answ`
--

LOCK TABLES `quiz_answ` WRITE;
/*!40000 ALTER TABLE `quiz_answ` DISABLE KEYS */;
INSERT INTO `quiz_answ` VALUES (0,'ninguno',0,0,NULL,NULL),(1,'Bueno',0,1,NULL,NULL),(2,'Regular',0,1,NULL,NULL),(3,'Malo',0,1,NULL,NULL),(4,'Hiciera el ridículo',0,2,NULL,NULL),(5,'Quedara bien a secas',0,2,NULL,NULL),(6,'Diera una muestra de enorme fútbol',0,2,NULL,NULL),(7,'Tres',0,3,NULL,NULL),(8,'Cuatro',0,3,NULL,NULL),(9,'Cinco',0,3,NULL,NULL),(10,'Más de cinco',0,3,NULL,NULL),(11,'Memo Ocho',0,4,NULL,NULL),(12,'Javier Hernándz',0,4,NULL,NULL),(13,'Giovanni dos Santos',0,4,NULL,NULL),(14,'Héctor Manuel Herrera',0,4,NULL,NULL),(15,'El Maza Rodríguez',0,4,NULL,NULL),(16,'Oribe Peralta',0,4,NULL,NULL),(17,'Julio Cortázar',0,5,NULL,NULL),(18,'Julio Florencio Cortázar',1,5,NULL,NULL),(19,'Julio José Florencio Cortázar',0,5,NULL,NULL),(20,'Julio José Florencio Descotte Cortázar',0,5,NULL,NULL),(21,'Bélgica',1,6,NULL,NULL),(22,'Argentina',0,6,NULL,NULL),(23,'Uruguay',0,6,NULL,NULL),(24,'Acaponeta, Guanajuato',0,6,NULL,NULL),(25,'Luis Denis',0,7,NULL,NULL),(26,'Julio Denis',1,7,NULL,NULL),(27,'Antón Cortázar',0,7,NULL,NULL),(28,'Evanibaldo Castro',0,7,NULL,NULL),(29,'Bruja',1,8,NULL,NULL),(30,'Los reyes',0,8,NULL,NULL),(31,'Bestiario',0,8,NULL,NULL),(32,'Los premios',0,8,NULL,NULL),(33,'Coyote Jones',0,9,NULL,NULL),(34,'Wile E. Coyote',1,9,NULL,NULL),(35,'Mike Coyote',0,9,NULL,NULL),(36,'William Coyote',0,9,NULL,NULL),(37,'Tom y Jerry',1,10,NULL,NULL),(38,'Mickey y sus amigos',0,10,NULL,NULL),(39,'Bugs bunny',0,10,NULL,NULL),(40,'A ninguna',0,10,NULL,NULL),(41,'Ford',0,11,NULL,NULL),(42,'Chrysler',1,11,NULL,NULL),(43,'Ferrari',0,11,NULL,NULL),(44,'Audi',0,11,NULL,NULL),(45,'Sony',0,12,NULL,NULL),(46,'Revenge',0,12,NULL,NULL),(47,'fast Delivery',0,12,NULL,NULL),(48,'Acme',1,12,NULL,NULL),(49,'trompicones y más',0,13,'luna_peluda.jpg','<p>Sin tu ba&ntilde;ador, ajay</p>'),(50,'Abel Salgado',1,14,NULL,''),(51,'Salvador Rizo',0,14,NULL,'');
/*!40000 ALTER TABLE `quiz_answ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_index`
--

DROP TABLE IF EXISTS `quiz_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) DEFAULT NULL,
  `visible` smallint(1) NOT NULL DEFAULT '0',
  `imagen` varchar(50) DEFAULT NULL,
  `contenido` text,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_index`
--

LOCK TABLES `quiz_index` WRITE;
/*!40000 ALTER TABLE `quiz_index` DISABLE KEYS */;
INSERT INTO `quiz_index` VALUES (0,'ninguno',0,NULL,NULL),(1,'México en el Mundial',0,NULL,''),(2,'Julio Cortázar',0,'cortazar.jpg',''),(3,'Correcaminos',0,'coyote.jpg','<p>Si est&aacute;s en la carretera y oyes un Bip-Bip<br />Ten la seguridad que se trata de mi<br />Y si intentas seguirme se va a anochecer<br />Pues ni el feroz Coyote me puede comer.</p>\r\n<p>Correcaminos<br />eres mas veloz que un jet<br />Pobre Coyote<br />Ya no sabe ni que hacer</p>\r\n<p>Tonto Coyote<br />Tu lo vas a enloquecer<br />y en el desierto lo vas a matar de sed</p>\r\n<p>Miles de trampas te ha querido poner<br />Pero en todas ellas ha de fallar<br />Y ni a base de golpes quiere entender...<br />Si sigue con sus tontas trampas se va a matar</p>\r\n<p>&iexcl;&iexcl;Correcaminos!!<br />que el Coyote te va a comer<br />y si te atrapa<br />ya no corres m&aacute;s</p>\r\n<p>tu &uacute;nica arma es la velocidad...</p>\r\n<p>&nbsp;</p>'),(4,'Onomatopeyas',0,'kamilos.png','<p>En esta noche clara de inquietos luceros, lo que yo te tengo te vengo a decir. Jua jua</p>'),(5,'¿Quién es el bueno para Zapopan?',1,'zapopan.jpg','');
/*!40000 ALTER TABLE `quiz_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_ques`
--

DROP TABLE IF EXISTS `quiz_ques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_ques` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(250) DEFAULT NULL,
  `quiz` int(3) NOT NULL DEFAULT '0',
  `imagen` varchar(50) DEFAULT NULL,
  `contenido` text,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_ques`
--

LOCK TABLES `quiz_ques` WRITE;
/*!40000 ALTER TABLE `quiz_ques` DISABLE KEYS */;
INSERT INTO `quiz_ques` VALUES (0,'ninguno',0,NULL,NULL),(1,'El papel de México será:',1,NULL,NULL),(2,'Antes del Mundial esperabas que México…',1,NULL,NULL),(3,'¿Cuántos partidos terminará disputando?',1,NULL,NULL),(4,'¿Quién será el mejor jugador mexicano en este mundial?',1,NULL,NULL),(5,'¿Cómo era el nombre completo de Cortázar?',2,NULL,NULL),(6,'¿Dónde nació Julio Cortázar?',2,NULL,NULL),(7,'¿Qué pseudónimo uso en sus primeras publicaciones?',2,NULL,NULL),(8,'¿Cuál fue su primer cuento publicado?',2,NULL,NULL),(9,'¿Cómo se llama el coyote?',3,'coyote.jpg','<p>El coyote y el correcaminos son los personajes de una serie estadounidense de dibujos animados creada en el a&ntilde;o de 1949 por el animador Chuck Jones para Warner Brothers.</p>'),(10,'¿A qué caricatura satirizaron?',3,'coyote2.jpg','<p>Chuck Jones se inspir&oacute; para crear a estos personajes en un libro de Mark Twain, titulado Roughin It, en el que Twain denotaba que los coyotes hambrientos podr&iacute;an cazar un correcaminos.</p>'),(11,'¿Qué compañía fabricante de autos rinde honor a estos personajes?',3,'coyote3.jpg','<p>Un par de coches de la &eacute;poca de los 60 (conocida como la &eacute;poca de los Muscle Cars), le hicieron homenaje al personaje incluso incluyendo un claxon que al ser tocado emit&iacute;a un sonido parecido al cl&aacute;sico Bip, Bip de la serie. Estos autos fueron producidos por Chrysler Corp. bajo su filial Plymouth y ambos eran:</p>\r\n<p>Plymouth RoadRunner (producido desde 1969 hasta 1980).<br />Plymouth Superbird (un auto nascar usado en la &eacute;poca de los 70).<br />Ambos pose&iacute;an motores que realmente eran r&aacute;pidos y veloces para la &eacute;poca, de ah&iacute; que estos se tomaran como homenaje al correcaminos</p>\r\n<p>&nbsp;</p>'),(12,'¿Cuál es la marca de artefactos que el Coyote utiliza regularmente?',3,'coyote4.jpg','<p>El nombre de la compa&ntilde;&iacute;a fue escogido por su iron&iacute;a (acme significa el punto m&aacute;s alto del desarrollo o desempe&ntilde;o). La denominaci&oacute;n com&uacute;n American Company that Makes Everything o Compa&ntilde;&iacute;a Americana que Hace de Todo.</p>'),(13,'El lomo es un desgraciado',4,'ocio.jpg','<p>lomo feroz..</p>'),(14,'¿Quién suena más para la candidatura del PRI en Zapopan?',5,'zapopan.jpg','');
/*!40000 ALTER TABLE `quiz_ques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_resu`
--

DROP TABLE IF EXISTS `quiz_resu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_resu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz` int(5) NOT NULL DEFAULT '0',
  `answ` varchar(250) NOT NULL DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_resu`
--

LOCK TABLES `quiz_resu` WRITE;
/*!40000 ALTER TABLE `quiz_resu` DISABLE KEYS */;
INSERT INTO `quiz_resu` VALUES (1,1,'1 6 10 12','2014-06-26 16:01:39'),(2,1,'2 5 8 16','2014-06-26 16:01:53'),(3,1,'1 6 9 16','2014-06-26 16:02:11'),(4,1,'3 4 8 14','2014-06-26 16:02:40'),(5,1,'1 5 9 14','2014-06-26 16:02:59'),(9,1,'2 4 9 14','2014-06-27 04:35:40'),(10,1,'2 4 10 11','2014-06-27 04:39:00'),(11,1,'2 4 8 13','2014-06-27 04:52:03'),(12,1,'2 4 10 13','2014-08-15 04:37:22'),(15,1,'2 4 8 13','2014-08-16 03:25:58'),(18,1,'1 5 10 11','2014-08-16 03:33:05'),(19,2,'17 21 26 29  ','2014-08-16 05:28:03'),(20,1,'2 4 9 11  ','2014-08-16 05:28:44'),(21,3,'34 37 42 48  ','2014-08-16 05:53:10'),(22,3,'36 39 41 48  ','2014-08-16 05:56:26'),(25,2,'18 21 26 29  ','2014-08-19 09:18:47'),(26,2,'19 22 25 32  ','2014-08-19 09:40:57'),(27,2,'17 21 26 29  ','2014-08-20 15:07:26'),(28,2,'19 22 27 32  ','2014-08-20 15:11:46'),(29,2,'18 21 27 29  ','2014-08-21 18:45:34'),(30,3,'36 39 41 48  ','2014-08-21 18:51:06'),(31,3,'35 39 43 47  ','2014-08-21 18:59:56'),(32,3,'33 39 41 48  ','2014-08-21 19:01:42'),(35,3,'33 37 42 48  ','2014-08-22 00:03:45'),(42,3,'33 39 41 48','2014-09-16 04:42:02'),(43,3,'33 39 41 48','2014-09-16 04:42:02'),(44,3,'33 39 41 48','2014-09-16 04:42:02'),(45,3,'33 39 41 48','2014-09-16 04:42:02'),(46,3,'33 39 41 48','2014-09-16 04:42:02'),(47,3,'33 39 41 48','2014-09-16 04:42:02'),(48,3,'33 39 41 48','2014-09-16 04:43:02'),(49,3,'33 39 41 48','2014-09-16 04:43:02'),(50,3,'33 39 41 48','2014-09-16 04:43:02'),(51,3,'33 39 41 48','2014-09-16 04:43:02'),(52,3,'33 39 41 48','2014-09-16 04:43:02'),(53,3,'33 39 41 48','2014-09-16 04:43:02'),(54,3,'33 38 42 47  ','2014-09-16 19:37:28'),(55,3,'34 39 43 47  ','2014-09-16 20:12:27'),(56,3,'34 38 42 46  ','2014-09-16 20:26:23'),(57,3,'33 39 43 47  ','2014-09-16 20:28:30'),(58,3,'35 39 43 47  ','2014-09-16 20:36:42'),(59,2,'17 22 26 31  ','2014-09-16 20:39:01'),(60,2,'20 24 28 30  ','2014-09-16 20:39:46'),(61,3,'33 39 41 48','2014-09-16 23:07:03'),(62,3,'33 39 41 48','2014-09-16 23:07:11'),(63,3,'33 39 41 48','2014-09-16 23:08:02'),(64,3,'33 39 41 48','2014-09-16 23:09:07'),(65,3,'33 39 41 48','2014-09-16 23:10:06'),(66,3,'35 39 43 47  ','2014-09-17 02:59:35'),(67,3,'33 38 42 46  ','2014-09-17 03:37:05'),(68,3,'34 38 42 46  ','2014-09-17 03:43:25'),(69,3,'34 38 42 46  ','2014-09-17 03:48:28'),(70,3,'34 38 42 46  ','2014-09-17 03:54:09'),(71,3,'34 38 42 46  ','2014-09-17 03:56:32'),(72,3,'34 38 42 46  ','2014-09-17 04:01:50'),(73,3,'33 37 41 45  ','2014-09-17 04:38:35'),(74,3,'33 39 41 48','2014-09-17 06:26:02'),(75,0,' ','2014-12-19 16:45:15'),(76,0,' ','2014-12-19 16:45:28'),(77,0,' ','2014-12-19 16:45:29'),(78,5,'50  ','2014-12-19 16:57:15'),(79,5,'50  ','2014-12-19 16:57:29');
/*!40000 ALTER TABLE `quiz_resu` ENABLE KEYS */;
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
  `correo1` varchar(50) DEFAULT NULL,
  `correo2` varchar(50) DEFAULT NULL,
  `correo3` varchar(50) DEFAULT NULL,
  `metatags` text,
  `dia` time DEFAULT NULL,
  `noche` time DEFAULT NULL,
  `url` varchar(250) NOT NULL,
  `pagina` varchar(100) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_general`
--

LOCK TABLES `template_general` WRITE;
/*!40000 ALTER TABLE `template_general` DISABLE KEYS */;
INSERT INTO `template_general` VALUES (1,'GroundControl','','contacto@groundcontrol.com','','','','00:00:00','00:00:00','../../../../htdocs','');
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
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_index`
--

LOCK TABLES `template_index` WRITE;
/*!40000 ALTER TABLE `template_index` DISABLE KEYS */;
INSERT INTO `template_index` VALUES (1,'style_index.css','Tom Major, Gobernatore','banners/bann_header_banner.php','style/navbar.php','Social media','','','','Por escrito','main_footer.php','index','main_nivel1.php','main_nivel2.php','','main_nivel4.php',''),(2,'style_corporativa.css','style/titulo_index.php','main_logos.php','style/navbar.php','','','','banners/bann0_corporativa.php','','','corporativa','','','','',''),(3,'style_ligas.css','ligas de interés','main_logos.php','style/navbar.php','','','','banners/bann0_ligas.php','','','ligas','','','','',''),(5,'style_contacto.css','Contacto','main_logos.php','style/navbar.php','','','','banners/bann0_contacto.php','','main_footer.php','contacto','','','','',''),(8,'style_genealogia.css','Panel de control','style/header.php','style/botones_admin.php','','panel_de_control','contained.php','','style/botones_aux.php','style/footer.php','default','','','','',''),(9,'style_admin.css','Panel de control','style/header.php','style/botones_admin.php','','panel_de_control','panel.php','','style/botones_aux.php','style/footer.php','default','','','','',''),(10,'../style_admin.css','Sesión','../style/header.php','','','panel_de_control','../panel.php','','../style/botones_aux.php','../style/footer.php','sesion','','','','',''),(11,'style_propuestas.css','style/titulo_opinion.php','main_logos.php','style/navbar.php','','','banners/bann0_propuestas.php','banners/bann0_propuestas_otros.php','','main_footer.php','propuestas','','','','',''),(12,'style_perfil.css','style/titulo_perfil.php','main_logos.php','style/navbar.php','','','','banners/bann0_perfil.php','','main_footer.php','perfil','','','','',''),(15,'style_opinion.css','style/titulo_opinion.php','main_logos.php','style/navbar.php','','','banners/bann0_opinion.php','banners/bann0_opinion_otros.php','','main_footer.php','opinion','','','','',''),(16,'style_error404.css','Error 404','main_logos.php','style/navbar.php','','','','banners/bann0_error404.php','','main_footer.php','error404','','','','',''),(17,'','','','','','','','','','','nivel1','banners/bann00_opinion.php','banners/bann00_imagen.php','banners/bann00_encuesta.php','',''),(18,'','','','','','','','','','','nivel2','banners/bann00_propuestas.php','banners/bann00_compromisos.php','banners/bann00_testimonios.php','',''),(19,'','','','','','','','','','','nivel3','banners/bann00_opinion.php','banners/bann00_videos_demas.php','banners/bann00_boletines.php','banners/bann00_try_galeria.php',''),(20,'style_videos.css','style/titulo_videos.php','main_logos.php','style/navbar.php','','','banners/bann0_videos_otros.php','banners/bann0_videos_demas.php','','main_footer.php','videos','','','','',''),(21,'style_boletines.css','style/titulo_boletines.php','main_logos.php','style/navbar.php','','','','banners/bann0_boletines.php','','','boletines','','','','',''),(22,'style_fotos.css','Galería de fotos','main_logos.php','style/navbar.php','','','','try/scroll.php','','','fotos','','','','',''),(24,'style_iniciativas.css','style/titulo_iniciativas.php','main_logos.php','style/navbar.php','','','','banners/bann0_iniciativas_diputado.php','','','iniciativas_diputado','','','','',''),(25,'style_propuestas.css','style/titulo_opinion.php','main_logos.php','style/navbar.php','','','banners/bann0_compromisos.php','banners/bann0_compromisos_otros.php','','main_footer.php','compromisos','','','','',''),(26,'style_noticias.css','style/titulo_noticias.php','main_logos.php','style/navbar.php','','','','banners/bann0_noticias.php','','','noticias','','','','',''),(27,'style_noticias.css','style/titulo_noticias.php','main_logos.php','style/navbar.php','','','','banners/bann0_noticias_previas.php','','','noticias_previas','','','','',''),(28,'style_opinion.css','style/titulo_opinion.php','main_logos.php','style/navbar.php','','','','banners/bann0_opiniones_previas.php','','','opiniones_previas','','','','',''),(29,'style_boletines.css','style/titulo_boletines.php','main_logos.php','style/navbar.php','','','','banners/bann0_boletines_previos.php','','','boletines_previos','','','','',''),(30,'','','','','','','','','','','nivel4','banners/bann00_videos.php','banners/bann00_videos_demas.php','banners/bann00_twitter_widget.php','banners/bann00_facebook_widget.php',''),(31,'style_diputadosenaccion.css','Diputados en Acción','main_logos.php','style/navbar.php','','','','banners/bann0_diputadosenaccion.php','','','diputadosenaccion','','','','',''),(32,'style_transparencia.css','style/titulo_transparencia.php','main_logos.php','style/navbar.php','','','','banners/bann0_transparencia.php','','','transparencia','style/navbar_transparencia.php','','','',''),(33,'style.css','','','','','','','','','','logos','','banners/bann_header_banner.php','','',''),(34,'style_tu_diputado.css','Tu diputado','main_logos.php','style/navbar.php','','','','banners/bann0_tu_diputado.php','','','tu_diputado','','','','',''),(35,'style_encuesta.css','style/titulo_encuesta.php','main_logos.php','style/navbar.php','','','banners/bann0_encuesta_otros.php','banners/bann0_encuesta.php','','main_footer.php','encuesta','','banners/bann2_quiz.php','','',''),(36,'','','','','','','','','','','nivel_footer','banners/bann00_botones_sociales.php','banners/bann44_domicilio.php','','','');
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
INSERT INTO `testimonios_index` VALUES (1,'Ignazio Marino','<div>Cera di Cupra, da sempre dalla parte delle donne, supporta con una serie di eventi l iniziativa promossa dal Corriere della Sera \"IL TEMPO DELLE DONNE - Storie, idee, azioni per partecipare al cambiamento\".</div>\r\n<div><br /></div>\r\n<div>Il progetto Osservatorio Cera di Cupra edizione 2014 incontra l iniziativa del Tempo delle donne attraverso un accezione tutta nuova del \"selfie\", tormentone dell ultimo anno. Fil rouge e impegno comune, il desiderio di fare da cassa di risonanza a tutto ci&ograve; che sono le donne di oggi, in ogni loro esperienza, emozione, desideri, difficolt&agrave;. Nelle loro citt&agrave;, nei loro mestieri e nei loro sogni. Scopri di pi&ugrave;: clicca QUI.</div>','0000-00-00 00:00:00',0,'nelson.jpg',1),(2,'Paolo Serata','<p>cosa dici delle intercettazioni di buzzi dove asserisce che grillo ha fatto fuori il pd.. ergo sono fuori anche loro( e loro sta per criminali) ... non provi vergogna?? bersani, fate una cosa buona, concordate cn i 5 stelle, per un reddito di cittadinanza.. al posto degli f 35 e condoni ai concessionari delle slot...</p>','0000-00-00 00:00:00',0,'paolo.jpg',1),(3,'Chiara Fiorenzzi','<p>\"Ho letto che la Cuccarini lo fa due volte a settimana e lei &egrave; una ballerina - prosegue l attrice - per mantenersi bene dunque bisogna farlo pi&ugrave; di lei\". La moglie di Claudio Amendola ammette che, stando spesso lontano dal marito per motivi di lavoro, non &egrave; facile essere costanti, ma assicura di recuperare quando sono insieme: \"Al massimo lo facciamo una volta al giorno, ormai non abbiamo pi&ugrave; l et&agrave;\", commenta ironica.<br />MULTIMEDIA CORRELATI<br /> I Cesaroni  in viaggio<br />L attrice, sposata dal 2010 con il collega romano dal quale ha avuto un figlio, parla poi del nuovo concetto di famiglia: \"Credo che i gay debbano avere le stesse possibilit&agrave; di una coppia etero. Le valutazioni prima dell adozione dovrebbero essere le stesse per etero e gay. Ebbene s&igrave;, sono favorevole anche al matrimonio tra persone dello stesso sesso\".<br />Infine una battuta sul derby tutto calcistico interno alla famiglia: lei &egrave; tifosa della Lazio, mentre Claudio &egrave; romanista. \"Meno male che Zeman c &egrave; ormai &egrave; diventato il nostro inno. Non ho nemmeno bisogno di prendere in giro Claudio - conclude l attrice - perch&eacute; i romanisti grazie a Zeman si prendono in giro da soli\".</p>','0000-00-00 00:00:00',0,'italiana.jpg',1);
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_index`
--

LOCK TABLES `usuario_index` WRITE;
/*!40000 ALTER TABLE `usuario_index` DISABLE KEYS */;
INSERT INTO `usuario_index` VALUES (1,'ferbere','b66a5c2600e9f61e6163bb1051457946','RamsesFigueroa','HellboGDL','webmaster','','ramses@ferbere.com','10·86·2136','11·32·3773','Revolución casi 200','Santa Anita, jalisco',0,1,NULL,NULL,NULL,NULL,NULL),(4,'joseluis','e9209b9f31468079ce1599ad91fa2c44','José Luis','','','','','','','','',0,2,'2013-06-03 05:37:13',NULL,NULL,NULL,NULL),(5,'hector','d3fbd6c997db3997024bdac283c2b44e','Héctor Martínez de Anda','','','','hector.martinez@yahoo.com.mx','','','','',0,2,'2013-06-06 18:49:21',NULL,NULL,NULL,NULL),(6,'antonio','77d519a95a5e420e5786ed608409fd06','','','','','','','','','',0,2,'2013-07-19 16:55:26',NULL,NULL,NULL,NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_index`
--

LOCK TABLES `video_index` WRITE;
/*!40000 ALTER TABLE `video_index` DISABLE KEYS */;
INSERT INTO `video_index` VALUES (1,'Intervista a Tom Major - Ballarò','21 de octubre de 2014','http://www.youtube.com/embed/Lz0s5xlt0Vk','<p>\"Quando si dice  paghino le regioni e non i cittadini  si fa demagogia. C &egrave; una comunicazione un po  sopra le righe\" \"In questa manovra ci sono pochi investimenti. Poi non bisogna mangirasi il domani tassando i fondi pensione\" \"Sulla sanit&agrave; non bisogna buttare il bambino con l acqua sporca. Alcune regioni sono all avanguardia\" \"Puoi allargare il Pd da Romano a Migliore. Basta che non ci siano pure Verdini e Berlusconi\" \"Cos&igrave; com &egrave; il nuovo Senato, per carit&agrave;, ritorniamo alle preferenze\" \"Riforme secche e concrete. Bisogna presentarsi all Europa con una riforma fiscale. Poi investimenti e liberalizzazioni\" \"Tanti auguri all iniziativa della Leopolda, ma dico a Renzi di farla nell ambito del Pd\"</p>',1),(2,'Tom Major','19 de mayo de 2014','http://www.youtube.com/embed/WzhqzArL9So','<p>Discurso completo.</p>',1),(3,'Giorni bugiardi. Primarie, elezioni, Quirinale. Così poteva cambiare l Italia','14 de noviembre de 2013','http://www.youtube.com/embed/4ErnfogHCGg','<p>Presentazione del libro Giorni bugiardi di Chiara Geloni e Stefano Di Traglia. Sono intervenuti, oltre agli autori, anche Pier Luigi Bersani, Gianni Riotta, Gaetano Quagliarello e il Presidente del Consiglio Enrico Letta. Modera Sarah Varetto.</p>',1),(4,'MAJOR A PALERMO per la chiusura della campagna elettorale. Italia Giusta 20-2-2013','21 de febrero 2013','http://www.youtube.com/embed/AnD5DsK81_U','<p>Immagini di Filippo Salerno. Grande manifestazione a Palermo per la chiusura della campagna elettorale delle prossime politiche del 24 e 25 febbraio 2013. Tanta gente a piazza Verdi, vicino al teatro Massimo, per assistere al comizio suo e quello di Renzi. Stiamo ora aspettando i risultati della campagna elettorale. In questi gg raddoppiamo i nostri sforzi e facciamo un elenco delle persone da contattare.</p>',1),(5,'Major alla manifestazione a Piazza Duomo','17 de febrero de 2013','http://www.youtube.com/embed/8CtvDScEWpI','<p>Dalla Lombardia partira la svolta, e da qui chiuderemo questa fase e volteremo una pagina ventennale. Con queste parole il candidato premier Pier Luigi Bersani ha concluso il suo comizio in piazza Duomo a Milano. Noi tireremo fuori dal buio la Lombardia e lItalia - ha aggiunto - e fra sette giorni unarcobaleno colorera il bel cielo lombardo. Bersani ha ribadito che in Lombardia si gioca la partita decisiva perche e sempre stato il luogo da dove e partita una svolta, sia nel bene sia nel male.</p>',1);
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

-- Dump completed on 2014-12-19 13:32:22
