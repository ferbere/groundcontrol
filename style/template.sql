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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_index`
--

LOCK TABLES `template_index` WRITE;
/*!40000 ALTER TABLE `template_index` DISABLE KEYS */;
INSERT INTO `template_index` VALUES (1,'style_index.css','Diputados de Jalisco del PAN','style/header_index.php','style/navbar.php','style/diputados.php','','','','','','index','main_nivel1.php','main_nivel2.php','main_nivel3.php','main_nivel4.php',''),(5,'style_contacto.css','Contacto','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_contacto.php','','','contacto','','','','',''),(8,'style_genealogia.css','Panel de control','style/header.php','style/botones_admin.php','','panel_de_control','contained.php','','style/botones_aux.php','style/footer.php','default','','','','',''),(9,'style_admin.css','Panel de control','style/header.php','style/botones_admin.php','','panel_de_control','panel.php','','style/botones_aux.php','style/footer.php','default','','','','',''),(10,'style_sesion.css','Sesión','','style/navbar.php','','','sesion/contained.php','','banners/detail.php','','sesion','style/navbar2.php','','','',''),(11,'style_index.css','HomeoPop, control de consulta y pacientes','style/header_index.php','style/navbar.php','','','control/contained.php','','style/navbar2.php','','control','','','','',''),(12,'style_diputado.css','style/titulo_diputado.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_diputado.php','','','diputado','','','','',''),(3,'style_ligas.css','ligas de interés','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_ligas.php','','','ligas','','','','',''),(2,'style_corporativa.css','style/titulo_index.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_corporativa.php','','','corporativa','','','','',''),(15,'style_opinion.css','style/titulo_opinion.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_opinion.php','','','opinion','','','','',''),(16,'style_agenda.css','Agenda Legislativa','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_agenda_legislativa.php','','','agenda_legislativa','','','','',''),(17,'','','','','','','','','','','nivel1','style/navbar.php','banners/bann00_banner.php','banners/bann00_tema.php','',''),(18,'','','','','','','','','','','nivel2','try/try.php','','','',''),(19,'','','','','','','','','','','nivel3','banners/bann00_videos.php','banners/bann00_videos_demas.php','banners/bann00_boletines.php','banners/bann00_try_galeria.php',''),(20,'style_videos.css','style/titulo_videos.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_videos_demas.php','','','videos','','','','',''),(21,'style_boletines.css','style/titulo_boletines.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_boletines.php','','','boletines','','','','',''),(22,'style_fotos.css','Galería de fotos','style/header_index.php','style/navbar.php','style/diputados.php','','','try/scroll.php','','','fotos','','','','',''),(24,'style_iniciativas.css','style/titulo_iniciativas.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_iniciativas_diputado.php','','','iniciativas_diputado','','','','',''),(25,'style_iniciativas.css','style/titulo_iniciativas.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_iniciativas.php','','','iniciativas','','','','',''),(26,'style_noticias.css','style/titulo_noticias.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_noticias.php','','','noticias','','','','',''),(27,'style_noticias.css','style/titulo_noticias.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_noticias_previas.php','','','noticias_previas','','','','',''),(28,'style_opinion.css','style/titulo_opinion.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_opiniones_previas.php','','','opiniones_previas','','','','',''),(29,'style_boletines.css','style/titulo_boletines.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_boletines_previos.php','','','boletines_previos','','','','',''),(30,'','','','','','','','','','','nivel4','banners/bann00_diputadosenaccion.php','banners/bann00_twitter_widget.php','banners/bann00_opinion.php','',''),(31,'style_diputadosenaccion.css','Diputados en Acción','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_diputadosenaccion.php','','','diputadosenaccion','','','','',''),(32,'style_transparencia.css','style/titulo_transparencia.php','style/header_index.php','style/navbar.php','style/diputados.php','','','banners/bann0_transparencia.php','','','transparencia','style/navbar_transparencia.php','','','','');
/*!40000 ALTER TABLE `template_index` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-02 22:32:09
