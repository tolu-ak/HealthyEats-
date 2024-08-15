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
-- Table structure for table `alternativenigerianfoods`
--

DROP TABLE IF EXISTS `alternativenigerianfoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alternativenigerianfoods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `calories` int NOT NULL,
  `carbohydrates` decimal(5,2) NOT NULL,
  `fat` decimal(5,2) NOT NULL,
  `protein` decimal(5,2) NOT NULL,
  `sodium` decimal(5,2) NOT NULL,
  `iron` decimal(5,2) NOT NULL,
  `cholesterol` decimal(5,2) NOT NULL,
  `food_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_food_id` (`food_id`),
  CONSTRAINT `fk_food_id` FOREIGN KEY (`food_id`) REFERENCES `nigerianfoods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alternativenigerianfoods`
--

LOCK TABLES `alternativenigerianfoods` WRITE;
/*!40000 ALTER TABLE `alternativenigerianfoods` DISABLE KEYS */;
INSERT INTO `alternativenigerianfoods` VALUES (1,'Chicken Quinoa',110,13.00,2.00,11.00,0.52,8.00,0.00,18),(2,'Cauliflower Fried Rice',60,8.00,3.00,3.00,0.29,4.00,0.00,2),(3,'Plantain mash',122,31.90,0.20,1.30,4.00,2.20,0.00,3),(4,'Low carb Cauliflower mash',111,4.20,9.80,2.50,0.16,2.00,0.03,4),(5,'Oatmeal mash’',68,11.90,1.40,2.40,49.00,4.20,0.00,5),(6,'Melon seed soup',105,9.00,7.00,5.00,15.00,13.90,0.00,6),(7,'Okra and spinach soup',50,7.00,1.50,3.00,15.00,10.00,0.00,7),(8,'Baked red bean cake',160,86.20,2.00,29.80,0.36,0.00,0.00,8),(9,'Spinach soup',201,15.90,12.00,7.70,0.70,5.80,0.03,9),(10,'Palm Nut Soup',130,9.00,5.00,24.00,0.00,0.00,0.00,10),(11,'Vegetable Steamed Bean Cakes',90,20.00,0.00,1.00,0.01,0.00,0.00,11),(12,'Plantain Fufu',350,81.00,0.40,5.00,0.00,0.00,0.00,12),(13,'Baked whole wheat chin chin',450,58.00,20.00,8.00,200.00,15.00,30.00,13),(14,'Oven spicy beef',250,2.00,18.00,20.00,75.00,12.00,70.00,14),(15,'Grilled beef jerky',90,11.00,0.50,9.00,0.30,6.00,0.02,15),(16,'Vegetable soup',78,15.00,1.00,3.00,0.50,0.01,0.00,16),(17,'Baked potato chips',120,22.00,3.00,2.00,0.00,2.00,0.00,17);
/*!40000 ALTER TABLE `alternativenigerianfoods` ENABLE KEYS */;
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
