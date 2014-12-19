-- MySQL dump 10.13  Distrib 5.5.9, for osx10.6 (i386)
--
-- Host: localhost    Database: calappa
-- ------------------------------------------------------
-- Server version	5.5.9

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
-- Table structure for table `hotel_habitacion`
--

DROP TABLE IF EXISTS `hotel_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_habitacion` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `numero` int(3) NOT NULL,
  `tarifa` smallint(2) NOT NULL,
  `capacidad` smallint(2) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_habitacion`
--

LOCK TABLES `hotel_habitacion` WRITE;
/*!40000 ALTER TABLE `hotel_habitacion` DISABLE KEYS */;
INSERT INTO `hotel_habitacion` VALUES
(1,101,0,6),
(2,102,0,6),
(3,103,0,6),
(4,104,0,6),
(5,105,0,6),
(6,106,0,6);
(7,107,0,2),
(8,108,0,3),
(9,109,0,6),
(10,201,0,6),
(11,202,0,6),
(12,203,0,6),
(13,204,0,6),
(14,205,0,6),
(15,206,0,6),
(16,207,0,6),
(17,208,0,6),
(18,209,0,4),
(19,301,0,6),
(20,302,0,6),
(21,303,0,6),
(22,304,0,6),
(23,305,0,6),
(24,306,0,6),
(25,307,0,6),
(26,308,0,6),

/*!40000 ALTER TABLE `hotel_habitacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-02-08 23:45:43
