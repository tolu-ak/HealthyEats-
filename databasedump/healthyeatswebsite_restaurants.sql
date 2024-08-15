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
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES (182,'Taste of Africa','Surrey, British Columbia','https://zomi.menu/pick-up?shop=11607&utm=&table=',4.4,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmas-YKVZadzM6r34f8n7a5oncqjpwg-lqYg&s'),(183,'Alebi African Cuisine','Surrey, British Columbia','https://alebiafricanrestaurant.com/',3.7,'https://tb-static.uber.com/prod/image-proc/processed_images/7183d2406f91f2979d569da23814be04/16bb0a3ab8ea98cfe8906135767f7bf4.webp'),(184,'Aboki Grill','Vancouver, British Columbia','https://nigeriancuisinevancouver.com/',4.9,'https://tb-static.uber.com/prod/image-proc/processed_images/a600cc02fbec23d476511ce6551c6a0f/c9252e6c6cd289c588c3381bc77b1dfc.jpeg'),(185,'Afrofusion','Kamloops, British Columbia','https://afrofusion-bc.com/',3.7,'https://img.restaurantguru.com/r612-Afrofusion-interior.jpg'),(186,'Simba Grill','Burnaby, British Columbia','https://simbasgrill.com/',4.6,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzO9dgImr-z5iWlI4QKihDk8IIH_cDcH6pQ&s'),(187,'Vansuya Restaurant and Lounge','Vancouver, British Columbia','https://nigeriancuisinevancouver.com/',3.9,''),(188,'Nubian Delicacies','Victoria, British Columbia','https://nubiancaferestaurant.com/',4.3,''),(189,'Jambo Grill','Vancouver, British Columbia','https://jambogrill.ca/',4.2,''),(190,'Dosa Paragon','Victoria, British Columbia','https://dosaparagon.com/location/yates_street/?',4.8,''),(191,'Ola’s Dining Nigerian Kitchen','Edmonton, Alberta','https://www.olasdining.com/',5.0,''),(192,'Flavors Restaurant','Calgary,  Alberta','https://flavourcuisineandcatering.com/',4.6,''),(193,'Ahinke’s Kitchen','Calgary, Alberta','https://www.ahinkeskitchen.com/',4.2,''),(194,'Delish Dining','Calgary, Alberta','https://delishdining.ca/',4.4,''),(195,'FraMe Cuisine','Calgary,  Alberta','https://www.framecuisine.com/',4.9,''),(196,'Liberian Cuisine Bar and Grill','Edmonton, Alberta','https://orderdbc.com/Liberian/online-order/?trk=gpo',4.3,''),(197,'360 Grill and Lounge','Calgary,  Alberta','https://www.360grillandlounge.ca//',3.9,''),(198,'Mon Amie Resto','Edmonton,  Alberta','https://www.monamieresto.ca/',3.7,''),(199,'Delish Dining','Calgary, Alberta','https://delishdining.ca/',4.4,''),(200,'Ola’s Dining Nigerian Kitchen','Edmonton AB','https://www.olasdining.com/',5.0,''),(201,'Flavors Restaurant','Calgary,  Alberta','https://flavourcuisineandcatering.com/',4.6,''),(202,'Ahinke’s Kitchen','Calgary, Alberta','https://www.ahinkeskitchen.com/',4.2,''),(203,'Delish Dining','Calgary, Alberta','https://delishdining.ca/',4.4,''),(204,'FraMe Cuisine','Calgary,  Alberta','https://www.framecuisine.com/',4.9,''),(205,'Liberian Cuisine Bar and Grill','Edmonton, Alberta','https://orderdbc.com/Liberian/online-order/?trk=gpo',4.3,''),(206,'360 Grill and Lounge','Calgary,  Alberta','https://www.360grillandlounge.ca//',3.9,''),(207,'Mon Amie Resto','Edmonton,  Alberta','https://www.monamieresto.ca/',3.7,''),(208,'Delish Dining','Calgary, Alberta','https://delishdining.ca/',4.4,''),(209,'Sub-Saharan Cuisine','Saskatoon, Saskatchewan','https://www.google.com/maps/uv?pb=!1s0x5304f7e697d295ad%3A0xf2e1b8b2d6a0b714!15sCgIYIQ&viewerState=lb&cr=lm_1e&sa=X&ved=2ahUKEwi5ufil7eiHAxXcFjQIHZDdDoYQzeMEegQIBBAA',5.0,''),(210,'Global Pot Fusion Cuisine','Saskatoon,  Saskatchewan','https://www.globalpot.org/',4.9,''),(211,'Africa Jazz Lounge','Regina, Saskatchewan','https://africajazzlounge.com/',4.8,''),(212,'Laghos African Kithcnette','Regina, Saskatchewan','https://www.laghoskitchenette.com/',4.3,'');
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
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
