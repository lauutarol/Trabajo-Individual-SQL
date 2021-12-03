-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: evaluacionpractica_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Deporte'),(2,'Espectaculo'),(3,'Musica'),(4,'Cine'),(5,'Moda'),(6,'Vida'),(7,'Series'),(8,'Informatica'),(9,'Juegos'),(10,'Redes');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `creacion` date NOT NULL,
  `modificacion` date NOT NULL,
  `descripcion` text NOT NULL,
  `eliminar` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notas_FK` (`usuario_id`),
  CONSTRAINT `notas_FK` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,1,'Las casas que hablan','2021-10-14','2021-10-14','Esta es una nota que habla de las casa blabla...',0),(2,3,'La vuelta del Pity Alvarez','2021-10-14','2021-10-14','Esta es la nota que habla de la veulta del Pity blabla...',0),(3,8,'El lago de los cisnes','2021-10-14','2021-10-14','Esta es una nota que habla de los cisnes blabla...',0),(4,7,'Los Power Rangers','2021-10-14','2021-10-14','Esta nota cuenta el regreso de los Power blabla...',0),(5,6,'El perro verde','2021-10-14','2021-10-14','Esta nota cuenta la vida del perro verde blabla...',0),(6,1,'Vuelve el publico a las canchas','2021-10-14','2021-10-14','En esta nota hablamos de la vuelta blabla...',0),(7,1,'La tv cada vez mas desierta','2021-10-14','2021-10-14','Esta nota  cuenta que ya no existe la tele blabla...',0),(8,1,'Se viene fin de año','2021-10-14','2021-10-14','Esta nota dice que se acerca fin de año blabla...',0),(9,1,'Mineiro queda afuera por ladri','2021-10-14','2021-10-14','Esta nota cuenta que el Mineiro queda afuera de la Libertadores blabla...',0),(10,1,'Messi en Francia','2021-10-14','2021-10-14','Esta nota cuenta la vida de Lio en Paris blabla...',0);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas_categorias`
--

DROP TABLE IF EXISTS `notas_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas_categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nota_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notas_categorias_FK` (`nota_id`),
  KEY `notas_categorias_FK_1` (`categoria_id`),
  CONSTRAINT `notas_categorias_FK` FOREIGN KEY (`nota_id`) REFERENCES `notas` (`id`),
  CONSTRAINT `notas_categorias_FK_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_categorias`
--

LOCK TABLES `notas_categorias` WRITE;
/*!40000 ALTER TABLE `notas_categorias` DISABLE KEYS */;
INSERT INTO `notas_categorias` VALUES (1,1,6),(2,2,3),(3,3,2),(4,4,4),(5,5,5),(6,6,1),(7,7,2),(8,8,6),(9,9,1),(10,10,1);
/*!40000 ALTER TABLE `notas_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Juan Perez','juancito@hotmail.com'),(2,'Mario Gomez','marito@hotmail.com'),(3,'Jimena Baron','la_cobra@hotmail.com'),(4,'John Marstone','cowboy59@hotmail.com'),(5,'Dolores Sanchez','doloschz@hotmail.com'),(6,'Diego Armando','el10@el10.com'),(7,'Dario Barassi','gordo@eltrece.com'),(8,'Marcelo Lopez','chelo@hotmail.com'),(9,'Mariana Nannys','mariann@hotmail.com'),(10,'Juana de la Fuente','juanadlf@hotmail.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'evaluacionpractica_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-3 17:01:49