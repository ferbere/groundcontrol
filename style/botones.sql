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
-- Table structure for table `gadgets_botones`
--

DROP TABLE IF EXISTS `gadgets_botones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gadgets_botones` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `posicion` int(1) NOT NULL DEFAULT '0',
  `imagen` varchar(20) NOT NULL DEFAULT '',
  `ruta` text NOT NULL,
  `ext` smallint(2) NOT NULL DEFAULT '0',
  `submenu` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gadgets_botones`
--

LOCK TABLES `gadgets_botones` WRITE;
/*!40000 ALTER TABLE `gadgets_botones` DISABLE KEYS */;
INSERT INTO `gadgets_botones` VALUES (1,'Inicio',2,'','index.php',2,0),(2,'Quiénes somos',0,'','corporativa.php?rubro=9',0,0),(3,'Agenda legislativa',2,'','corporativa.php?rubro=10',0,0),(4,'Contacto',2,'','contacto.php',0,0),(5,'twitter',4,'twitter','http://www.twitter.com/gppanjal',2,0),(6,'You Tube',4,'youtube','http://www.youtube.com/gppanjalisco',2,0),(8,'facebook',4,'facebook','http://www.facebook.com/gppanjal',2,0),(11,'Ligas de interés',2,'','ligas.php',0,0),(12,'Iniciativas',2,'','iniciativas.php',0,0),(13,'Tema del día',2,'','noticias_previas.php',0,0),(14,'Opinión',2,'','opiniones_previas.php',0,0),(15,'Boletines de prensa',2,'','boletines_previos.php',0,0),(16,'transparencia',2,'','transparencia.php',0,0),(17,'Personal Grupo Parlamentario',1,'','transparencia.php',0,0),(18,'Recursos Grupo Parlamentario',1,'','transparencia.php?rubro=12',0,0);
/*!40000 ALTER TABLE `gadgets_botones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-02 22:36:57
