-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: k8a808.p.ssafy.io    Database: hero_db
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ALBUM_TAG`
--

DROP TABLE IF EXISTS `ALBUM_TAG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ALBUM_TAG` (
  `ALBUM_TAG_ID` int unsigned NOT NULL,
  `ALBUM_TAG_CONTENT` text,
  `ALBUM_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ALBUM_TAG_ID`),
  KEY `FKbvvvoaxvshqsg2speeqdjrvn4` (`ALBUM_ID`),
  CONSTRAINT `FKbvvvoaxvshqsg2speeqdjrvn4` FOREIGN KEY (`ALBUM_ID`) REFERENCES `ALBUM` (`ALBUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ALBUM_TAG`
--

LOCK TABLES `ALBUM_TAG` WRITE;
/*!40000 ALTER TABLE `ALBUM_TAG` DISABLE KEYS */;
INSERT INTO `ALBUM_TAG` VALUES (1,'동요',0),(2,'OST',1),(3,'힙합',2),(4,'힙합',3),(5,'발라드',4),(6,'POP',5),(7,'POP',6),(8,'재즈',7),(9,'POP',8),(10,'인디',9),(11,'댄스',10);
/*!40000 ALTER TABLE `ALBUM_TAG` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-18 19:28:54
