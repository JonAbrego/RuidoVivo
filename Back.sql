-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: RuidoVivo
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
-- Table structure for table `Asistir`
--

DROP TABLE IF EXISTS `Asistir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Asistir` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) DEFAULT NULL,
  `idEvento` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idEvento` (`idEvento`),
  CONSTRAINT `Asistir_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `Usuario` (`id`),
  CONSTRAINT `Asistir_ibfk_2` FOREIGN KEY (`idEvento`) REFERENCES `Evento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asistir`
--

LOCK TABLES `Asistir` WRITE;
/*!40000 ALTER TABLE `Asistir` DISABLE KEYS */;
INSERT INTO `Asistir` VALUES (1,28,1),(2,34,1),(3,34,1);
/*!40000 ALTER TABLE `Asistir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Evento`
--

DROP TABLE IF EXISTS `Evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Evento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` text,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` text,
  `fecha` date DEFAULT NULL,
  `costo` double DEFAULT NULL,
  `lugar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Evento`
--

LOCK TABLES `Evento` WRITE;
/*!40000 ALTER TABLE `Evento` DISABLE KEYS */;
INSERT INTO `Evento` VALUES (1,NULL,'Rock Party','El mejor evento jamas organizado para la banda fiestera','2015-03-01',200,'CCH Sur'),(2,NULL,'Primer concierto','Primer concierto de la banda','0032-11-04',10,'Ciudad de México'),(3,'images/Captura de pantalla de 2015-05-29 01:17:41.png','Prueba','No sé ','0007-08-09',140,'Casa de un amigo');
/*!40000 ALTER TABLE `Evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Grupo`
--

DROP TABLE IF EXISTS `Grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Grupo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `informacion` text,
  `logo` text,
  `contrasena` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Grupo`
--

LOCK TABLES `Grupo` WRITE;
/*!40000 ALTER TABLE `Grupo` DISABLE KEYS */;
INSERT INTO `Grupo` VALUES (5,'Panteón Rococó','Panteón Rococó es un grupo mexicano de fusión de rock, ska y ritmos de México, originarios de la Ciudad de México, y formado en 1995. Adoptaron su nombre de la obra teatral del mexicano Hugo Argüelles El cocodrilo solitario del panteón rococó escrita en 1981.\r\nSu estilo se caracteriza por la fusión de ritmos, como Ska hasta punk. De este modo, Panteón Rococó mezcla diversos estilos de música popular como, además de los arriba mencionados, el rock, la salsa, el mariachi, el reggae y la música indígena en un sonido bastante enérgico y movedizo.','1995skafull','1995skafull'),(6,'Inspector','El Grupo Inspector fusiona ritmos clásicos jamaicanos con el feeling popular mexicano.\r\nSu estilo es una mezcla entre ska, reggae, la nostalgia rocanrolera de los 60 y los grandes grupos románticos de los 70, además de un estilo romántico propio. Forman parte del movimiento musical llamado la Avanzada regia.\r\nInspector nace en noviembre de 1995 con un grupo de jovenes que buscaban divertirse, crear buena música y gozar. ','ruido1.png','Inspector60'),(7,'Jarabedepalo','Jarabedepalo (antes Jarabe de Palo) es un grupo español de rock latino/pop latino liderado por Pau Donés.\r\nPau Donés trabajó en varios grupos antes de poder llevar a cabo su proyecto actual, Jarabedepalo. Comenzó a los 15 años junto con su hermano Marc, con el que formó un grupo llamado J.& Co.Band y posteriormente otro llamado Dentaduras Postizas.\r\nEl éxito le llegaría tras un viaje a Cuba, donde le llegó la inspiración que le llevaría a escribir La Flaca que dio título a su primer disco del mismo nombre en 1996. Su primer tema se hace famoso un año más tarde, gracias a un spot publicitario, llevando al disco a vender millones de copias en varios países.\r\nEl grupo es nominado a dos Latin Grammy: Mejor Álbum Pop y Mejor Ingeniería de grabación. Orquesta Reciclando ganó el Grammy Latino a la Mejor Ingeniera de Grabación para un Álbum.','Jarabedepalo','Jarabedepalo'),(8,'El Haragán y Compañía','El grupo se formó en 1989 con Luis Álvarez en la voz y guitarra y Jaime Rodríguez en el bajo. El sobrenombre de El Haragán le fue dado a Álvarez por una canción del mismo nombre.\r\nEl Haragán gesta una serie de reflexiones del rutinario caos citadino, pintando en el imaginario historias convertidas en melodías, ideando como salir adelante, como cualquier creativo necesita un tiempo y un espacio donde la mente de rienda suelta a la inspiración. Un haragán muy chambeador.\r\nHaragán contiene una gran diversidad de ritmos y propuestas musicales, podemos encontrar tintes de Blues, Funk, Reggae, Heavy Metal, Punk, Rock and Roll y Ritmos Latinos. Pero lo más importante es la letra de las rolas, cada una de ellas plasma nuestra propia realidad emocional y cultural del país. Algunos lo han nombrado un retratista social. Es por eso que hay una plena identificación entre la familia rockanrolera y El Haragán. Cuenta con 14 producciones discográficas','ruido1.png','Haragan1234'),(9,'Bukis ','Mundo Mundial','bukis2015','bukis2015'),(10,'algunos','desconocidos','12345678','12345678'),(11,'Los mejores','Prueba 2','12345678','12345678'),(12,'ya?','                                                                                                                                NUEVO','12345678','Final'),(13,'Mexx','MExxx','images/grupo.png','12345678'),(14,'ver','ver','images/7a1fd6_60f84fb92afc4dc7a60b4cc929498f22.gif','12345678'),(15,'ya','ya','images/0.jpg','12345678'),(16,'Sny','Sny','images/0.jpg','12345678');
/*!40000 ALTER TABLE `Grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Integrantes`
--

DROP TABLE IF EXISTS `Integrantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Integrantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idGrupo` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idGrupo` (`idGrupo`),
  CONSTRAINT `Integrantes_ibfk_1` FOREIGN KEY (`idGrupo`) REFERENCES `Grupo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Integrantes`
--

LOCK TABLES `Integrantes` WRITE;
/*!40000 ALTER TABLE `Integrantes` DISABLE KEYS */;
INSERT INTO `Integrantes` VALUES (1,5,'Luis Román'),(2,5,'Darío'),(3,5,'Hiram'),(4,5,'Leonel'),(5,5,'Felipe'),(6,5,'Francisco'),(7,5,'Rodrigo'),(8,5,'Bonilla'),(9,5,'Missael'),(10,5,'Tanis'),(11,6,'Big Javy'),(12,6,'Jesus Padrino'),(13,6,'Homero'),(14,6,'Fabian'),(15,6,'Chapa'),(16,6,'Gil'),(17,6,'Grillo'),(18,6,'Honorio'),(19,7,'Pau Donés'),(20,7,'CarmenNiño'),(21,7,'Alex'),(22,7,'Jordi'),(23,7,'Riki'),(24,8,'Luis Álvarez'),(25,8,'Christian'),(26,8,'Victor'),(27,8,'Francisco'),(28,8,'Leonel'),(29,8,'Felipe'),(30,8,'Jeronimo'),(31,8,'Gabriel'),(32,5,'Nuevo'),(33,5,'Chavo'),(34,5,'Juan'),(35,10,'Juan'),(36,10,'Alberto'),(37,11,'juanito'),(38,9,'Juanito'),(39,12,'Juanito'),(40,13,'Juan'),(41,16,'A'),(42,16,'B');
/*!40000 ALTER TABLE `Integrantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participantes`
--

DROP TABLE IF EXISTS `Participantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idEvento` int(11) DEFAULT NULL,
  `idGrupo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idEvento` (`idEvento`),
  KEY `idGrupo` (`idGrupo`),
  CONSTRAINT `Participantes_ibfk_1` FOREIGN KEY (`idEvento`) REFERENCES `Evento` (`id`),
  CONSTRAINT `Participantes_ibfk_2` FOREIGN KEY (`idGrupo`) REFERENCES `Grupo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participantes`
--

LOCK TABLES `Participantes` WRITE;
/*!40000 ALTER TABLE `Participantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Participantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Seguir`
--

DROP TABLE IF EXISTS `Seguir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Seguir` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) DEFAULT NULL,
  `idGrupo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Seguir_ibfk_1` (`idUsuario`),
  KEY `Seguir_ibfk_2` (`idGrupo`),
  CONSTRAINT `Seguir_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `Usuario` (`id`),
  CONSTRAINT `Seguir_ibfk_2` FOREIGN KEY (`idGrupo`) REFERENCES `Grupo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Seguir`
--

LOCK TABLES `Seguir` WRITE;
/*!40000 ALTER TABLE `Seguir` DISABLE KEYS */;
/*!40000 ALTER TABLE `Seguir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `correo` varchar(30) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `contrasena` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (8,'calos@hotmail.com','Carlos','carlos0000'),(9,'gloria.mtz@gmail.com','Gloria','gloria890'),(10,'ernesto44@gmail.com','Ernesto A.','ernes55'),(11,'luis.este@gmail.com','Esteban','esteban92@'),(12,'roroad@hotmail.com','Rodrigo','caminofire'),(13,'daniel.fz@gmail.com','Daniel','teran290'),(14,'lnagami@yahoo.com','Jesus','death009'),(15,'fansub@hotmail.com','Bob','BOBFAN00'),(16,'joel@gmail.com','Joel','necaxa22'),(17,'baez.mini@yahoo.com','Carlos','spider2002'),(18,'yorche@gmail.com','Jorge','punkpunk'),(19,'jesushito@gmail.com','Jesus','flow1234'),(20,'ardilla_borracha@gmail.com','Paco','alvin1234'),(21,'spider_666@gmail.com','Parker','fotos69'),(22,'ace_fire@yahoo.com','Ace','meramera'),(23,'eagle99_eye@gmail.com','Ramiro','facet67'),(24,'ramon432@gmail.com','Ramon','ram9000'),(25,'alex_sch@hotmail.com','Alejandro','xela900'),(26,'jess.mz@gmail.com','Jessica','jessmun2'),(27,'janni_tak@hotmail.com','Jeovanni','saw1234'),(28,'jona@gmail.com','Jonathan','1234567'),(29,'jon_smith@hotmail.com','Jonh','1234567'),(30,'june_matrix@hotmail.com','Matrix','qwerty'),(31,'matrix_fire@gmail.com','Arturo','asdfgh'),(32,'juan@yahoo.com','Juan','1234567'),(33,'fin@hotmail.com','Final','final00'),(34,'j@juan.com','juan 123','1234567'),(35,'uno@uno.com','uno','123456');
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-29  2:53:32
