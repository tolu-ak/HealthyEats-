-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: healthyeatswebsite
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `restaurant_food`
--

DROP TABLE IF EXISTS `restaurant_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_food` (
  `restaurant_id` int NOT NULL,
  `food_id` int NOT NULL,
  PRIMARY KEY (`restaurant_id`,`food_id`),
  KEY `food_id` (`food_id`),
  CONSTRAINT `restaurant_food_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`),
  CONSTRAINT `restaurant_food_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `nigerianfoods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_food`
--

LOCK TABLES `restaurant_food` WRITE;
/*!40000 ALTER TABLE `restaurant_food` DISABLE KEYS */;
INSERT INTO `restaurant_food` VALUES (182,2),(183,2),(184,2),(185,2),(186,2),(187,2),(190,2),(191,2),(192,2),(193,2),(194,2),(195,2),(209,2),(210,2),(211,2),(212,2),(183,3),(184,3),(185,3),(189,3),(191,3),(192,3),(193,3),(194,3),(195,3),(196,3),(197,3),(209,3),(210,3),(211,3),(212,3),(184,4),(185,4),(186,4),(188,4),(190,4),(191,4),(192,4),(193,4),(194,4),(195,4),(196,4),(197,4),(209,4),(210,4),(211,4),(212,4),(182,5),(183,5),(184,5),(185,5),(186,5),(188,5),(190,5),(191,5),(192,5),(193,5),(194,5),(195,5),(196,5),(197,5),(198,5),(209,5),(210,5),(211,5),(212,5),(182,6),(183,6),(185,6),(186,6),(190,6),(191,6),(192,6),(193,6),(194,6),(195,6),(196,6),(197,6),(198,6),(199,6),(210,6),(211,6),(212,6),(182,7),(183,7),(184,7),(185,7),(186,7),(188,7),(190,7),(191,7),(192,7),(193,7),(194,7),(195,7),(196,7),(197,7),(198,7),(209,7),(210,7),(211,7),(212,7),(182,8),(183,8),(184,8),(185,8),(186,8),(188,8),(190,8),(191,8),(192,8),(193,8),(194,8),(195,8),(196,8),(209,8),(210,8),(211,8),(212,8),(182,9),(183,9),(184,9),(185,9),(186,9),(188,9),(190,9),(191,9),(192,9),(193,9),(194,9),(195,9),(196,9),(197,9),(210,9),(211,9),(212,9),(182,10),(183,10),(184,10),(185,10),(186,10),(188,10),(190,10),(191,10),(192,10),(193,10),(194,10),(195,10),(196,10),(209,10),(210,10),(212,10),(182,11),(183,11),(184,11),(185,11),(186,11),(188,11),(190,11),(191,11),(192,11),(194,11),(195,11),(198,11),(211,11),(212,11),(182,12),(183,12),(184,12),(185,12),(186,12),(188,12),(190,12),(191,12),(192,12),(193,12),(194,12),(195,12),(196,12),(209,12),(210,12),(211,12),(212,12),(182,13),(183,13),(184,13),(185,13),(186,13),(188,13),(190,13),(191,13),(192,13),(193,13),(194,13),(195,13),(196,13),(197,13),(209,13),(210,13),(211,13),(212,13),(182,14),(183,14),(184,14),(185,14),(186,14),(188,14),(190,14),(191,14),(192,14),(193,14),(194,14),(195,14),(196,14),(209,14),(210,14),(211,14),(212,14),(182,15),(183,15),(184,15),(185,15),(186,15),(188,15),(190,15),(191,15),(192,15),(193,15),(194,15),(195,15),(196,15),(198,15),(209,15),(210,15),(211,15),(212,15),(182,16),(183,16),(184,16),(185,16),(186,16),(188,16),(190,16),(191,16),(192,16),(193,16),(194,16),(195,16),(196,16),(197,16),(209,16),(210,16),(211,16),(212,16),(182,17),(184,17),(185,17),(186,17),(188,17),(191,17),(192,17),(193,17),(194,17),(209,17),(210,17),(211,17),(212,17),(182,18),(183,18),(184,18),(185,18),(186,18),(187,18),(191,18),(192,18),(193,18),(194,18),(195,18),(209,18),(210,18),(211,18);
/*!40000 ALTER TABLE `restaurant_food` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-15 15:33:12
