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
-- Table structure for table `nigerianfoods`
--

DROP TABLE IF EXISTS `nigerianfoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nigerianfoods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `calories` int NOT NULL,
  `carbohydrates` decimal(5,2) NOT NULL,
  `fat` decimal(5,2) NOT NULL,
  `protein` decimal(5,2) NOT NULL,
  `sodium` decimal(5,2) NOT NULL,
  `iron` decimal(5,2) NOT NULL,
  `cholesterol` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nigerianfoods`
--

LOCK TABLES `nigerianfoods` WRITE;
/*!40000 ALTER TABLE `nigerianfoods` DISABLE KEYS */;
INSERT INTO `nigerianfoods` VALUES (2,'Nigerian Fried Rice',330,45.00,9.00,0.65,0.00,0.03,0.00),(3,'Ola-Ola amala',470,103.00,6.00,0.00,0.05,8.00,0.00),(4,'Eba',285,64.00,0.60,5.00,5.00,0.00,0.00),(5,'Pounded yam',353,75.80,1.10,7.10,12.00,0.00,0.00),(6,'Egusi soup',159,3.00,13.90,8.60,0.02,13.90,0.00),(7,'Ogbono soup',150,18.00,2.00,3.00,12.60,0.00,0.00),(8,'Akara',142,86.20,2.00,29.80,0.36,0.00,0.00),(9,'Efo riro',355,17.20,23.30,24.00,1.06,28.40,0.09),(10,'Banga soup',380,1.20,41.20,1.00,0.20,0.00,0.00),(11,'Moi moi',239,27.60,9.40,12.20,276.00,21.00,0.01),(12,'Fufu',393,81.10,8.00,2.70,0.08,5.20,0.02),(13,'Chin chin',100,13.00,5.00,3.00,0.06,0.00,0.00),(14,'Kilishi',80,6.00,1.00,12.00,0.69,0.04,0.00),(15,'Suya',334,3.10,18.90,36.80,0.00,0.01,0.00),(16,'Pepper soup',104,9.40,4.60,6.40,0.97,0.01,0.00),(17,'Nigerian plantain chips',140,20.00,6.00,0.00,0.10,0.00,0.00),(18,'Chicken Jolofrice',309,14.00,15.00,20.00,0.44,0.01,0.00);
/*!40000 ALTER TABLE `nigerianfoods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-15 15:33:10
