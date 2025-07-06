/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.10-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_25
-- ------------------------------------------------------
-- Server version	10.11.10-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artista` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `biografia` text DEFAULT NULL,
  `redes` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES
(1,'Marge','Jamaica',1,'Ms.','Voluptatibus accusantium eaque aut provident. Architecto possimus at magnam voluptatem provident. Quia rem ad molestias voluptatem assumenda dolorum suscipit.','Quia quas nisi dignissimos similique qui ducimus.'),
(2,'Ryleigh','Denmark',1,'Prof.','Nulla beatae temporibus accusamus minima eum eos. Ab eum voluptatibus magnam. Ullam assumenda aut et.','Laboriosam debitis aut reiciendis et sed.'),
(3,'Malcolm','French Southern Territories',0,'Dr.','Dolor et suscipit quod hic soluta. Totam sit ducimus explicabo autem. Distinctio quae ducimus possimus totam. Ea ab qui voluptatem corrupti eos.','Omnis fugit maiores suscipit dolorum.'),
(4,'Trudie','Lesotho',1,'Prof.','Maiores laboriosam sint magnam et ut repudiandae. Rerum voluptas sit rerum expedita est animi. Consequatur illo pariatur mollitia.','Tempora nesciunt repudiandae adipisci perferendis.'),
(5,'Vernon','Palestinian Territory',0,'Prof.','Quam quis eaque velit rerum vel. Non veniam in fuga praesentium error quam.','Nam ut aliquid quas sunt.');
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-03  1:41:26
