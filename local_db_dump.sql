-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: healthyeatswebsite
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
INSERT INTO `alternativenigerianfoods` VALUES (1,'Chicken Quinoa',110,13.00,2.00,11.00,0.52,8.00,0.00,18),(2,'Cauliflower Fried Rice',60,8.00,3.00,3.00,0.29,4.00,0.00,2),(3,'Plantain mash',122,31.90,0.20,1.30,4.00,2.20,0.00,3),(4,'Low carb Cauliflower mash',111,4.20,9.80,2.50,0.16,2.00,0.03,4),(5,'Oatmeal mashΓÇÖ',68,11.90,1.40,2.40,49.00,4.20,0.00,5),(6,'Melon seed soup',105,9.00,7.00,5.00,15.00,13.90,0.00,6),(7,'Okra and spinach soup',50,7.00,1.50,3.00,15.00,10.00,0.00,7),(8,'Baked red bean cake',160,86.20,2.00,29.80,0.36,0.00,0.00,8),(9,'Spinach soup',201,15.90,12.00,7.70,0.70,5.80,0.03,9),(10,'Palm Nut Soup',130,9.00,5.00,24.00,0.00,0.00,0.00,10),(11,'Vegetable Steamed Bean Cakes',90,20.00,0.00,1.00,0.01,0.00,0.00,11),(12,'Plantain Fufu',350,81.00,0.40,5.00,0.00,0.00,0.00,12),(13,'Baked whole wheat chin chin',450,58.00,20.00,8.00,200.00,15.00,30.00,13),(14,'Oven spicy beef',250,2.00,18.00,20.00,75.00,12.00,70.00,14),(15,'Grilled beef jerky',90,11.00,0.50,9.00,0.30,6.00,0.02,15),(16,'Vegetable soup',78,15.00,1.00,3.00,0.50,0.01,0.00,16),(17,'Baked potato chips',120,22.00,3.00,2.00,0.00,2.00,0.00,17);
/*!40000 ALTER TABLE `alternativenigerianfoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eba`
--

DROP TABLE IF EXISTS `eba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eba` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eba`
--

LOCK TABLES `eba` WRITE;
/*!40000 ALTER TABLE `eba` DISABLE KEYS */;
/*!40000 ALTER TABLE `eba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eforiro`
--

DROP TABLE IF EXISTS `eforiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eforiro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eforiro`
--

LOCK TABLES `eforiro` WRITE;
/*!40000 ALTER TABLE `eforiro` DISABLE KEYS */;
/*!40000 ALTER TABLE `eforiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `egusi`
--

DROP TABLE IF EXISTS `egusi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `egusi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `egusi`
--

LOCK TABLES `egusi` WRITE;
/*!40000 ALTER TABLE `egusi` DISABLE KEYS */;
/*!40000 ALTER TABLE `egusi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friedrice`
--

DROP TABLE IF EXISTS `friedrice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friedrice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friedrice`
--

LOCK TABLES `friedrice` WRITE;
/*!40000 ALTER TABLE `friedrice` DISABLE KEYS */;
INSERT INTO `friedrice` VALUES (1,'Taste of Africa','Surrey, BC','https://zomi.menu/pick-up?shop=11607&utm=&table=',4.4,''),(2,'Alebi African Cuisine','Surrey, BC','https://alebiafricanrestaurant.com/',3.7,''),(3,'Aboki Grill','Vancouver, BC','https://nigeriancuisinevancouver.com/',4.9,''),(4,'Afrofusion','Kamploops, BC','https://afrofusion-bc.com/',3.7,''),(5,'Simba Grill','Burnaby, BC','https://simbasgrill.com/',4.6,''),(6,'Nubian Delicacies','Victoria, BC','https://nubiancaferestaurant.com/',4.3,''),(7,'Vansuya Restaurant and Lounge','Vancouver, BC','https://nigeriancuisinevancouver.com/',3.9,'');
/*!40000 ALTER TABLE `friedrice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fufu`
--

DROP TABLE IF EXISTS `fufu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fufu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fufu`
--

LOCK TABLES `fufu` WRITE;
/*!40000 ALTER TABLE `fufu` DISABLE KEYS */;
/*!40000 ALTER TABLE `fufu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jollofrice`
--

DROP TABLE IF EXISTS `jollofrice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jollofrice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jollofrice`
--

LOCK TABLES `jollofrice` WRITE;
/*!40000 ALTER TABLE `jollofrice` DISABLE KEYS */;
INSERT INTO `jollofrice` VALUES (1,'Taste of Africa','Surrey, BC','https://zomi.menu/pick-up?shop=11607&utm=&table=',4.4,''),(2,'Alebi African Cuisine','Surrey, BC','https://alebiafricanrestaurant.com/',3.7,''),(3,'Aboki Grill','Vancouver, BC','https://nigeriancuisinevancouver.com/',4.9,''),(4,'Afrofusion','Kamloops, BC','https://afrofusion-bc.com/',3.7,''),(5,'Simba Grill','Burnaby, BC','https://simbasgrill.com/',4.6,''),(6,'Nubian Delicacies','Victoria, BC','https://nubiancaferestaurant.com/',4.3,''),(7,'Vansuya Restaurant and Lounge','Vancouver, BC','https://nigeriancuisinevancouver.com/',3.9,'');
/*!40000 ALTER TABLE `jollofrice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kilishi`
--

DROP TABLE IF EXISTS `kilishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kilishi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kilishi`
--

LOCK TABLES `kilishi` WRITE;
/*!40000 ALTER TABLE `kilishi` DISABLE KEYS */;
/*!40000 ALTER TABLE `kilishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moinmoin`
--

DROP TABLE IF EXISTS `moinmoin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moinmoin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moinmoin`
--

LOCK TABLES `moinmoin` WRITE;
/*!40000 ALTER TABLE `moinmoin` DISABLE KEYS */;
/*!40000 ALTER TABLE `moinmoin` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `peppersoup`
--

DROP TABLE IF EXISTS `peppersoup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peppersoup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peppersoup`
--

LOCK TABLES `peppersoup` WRITE;
/*!40000 ALTER TABLE `peppersoup` DISABLE KEYS */;
/*!40000 ALTER TABLE `peppersoup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plantainchips`
--

DROP TABLE IF EXISTS `plantainchips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plantainchips` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plantainchips`
--

LOCK TABLES `plantainchips` WRITE;
/*!40000 ALTER TABLE `plantainchips` DISABLE KEYS */;
/*!40000 ALTER TABLE `plantainchips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poundedyam`
--

DROP TABLE IF EXISTS `poundedyam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poundedyam` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poundedyam`
--

LOCK TABLES `poundedyam` WRITE;
/*!40000 ALTER TABLE `poundedyam` DISABLE KEYS */;
/*!40000 ALTER TABLE `poundedyam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `profile_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `address` text,
  `phone_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`profile_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `restaurant_suggestions`
--

DROP TABLE IF EXISTS `restaurant_suggestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_suggestions` (
  `suggestion_id` int NOT NULL AUTO_INCREMENT,
  `restaurant_name` varchar(255) DEFAULT NULL,
  `restaurant_location` varchar(255) DEFAULT NULL,
  `restaurant_rating` decimal(2,1) DEFAULT NULL,
  `restaurant_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`suggestion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_suggestions`
--

LOCK TABLES `restaurant_suggestions` WRITE;
/*!40000 ALTER TABLE `restaurant_suggestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `restaurant_suggestions` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `restaurants` VALUES (182,'Taste of Africa','Surrey, British Columbia','https://zomi.menu/pick-up?shop=11607&utm=&table=',4.4,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmas-YKVZadzM6r34f8n7a5oncqjpwg-lqYg&s'),(183,'Alebi African Cuisine','Surrey, British Columbia','https://alebiafricanrestaurant.com/',3.7,'https://tb-static.uber.com/prod/image-proc/processed_images/7183d2406f91f2979d569da23814be04/16bb0a3ab8ea98cfe8906135767f7bf4.webp'),(184,'Aboki Grill','Vancouver, British Columbia','https://nigeriancuisinevancouver.com/',4.9,'https://tb-static.uber.com/prod/image-proc/processed_images/a600cc02fbec23d476511ce6551c6a0f/c9252e6c6cd289c588c3381bc77b1dfc.jpeg'),(185,'Afrofusion','Kamloops, British Columbia','https://afrofusion-bc.com/',3.7,'https://img.restaurantguru.com/r612-Afrofusion-interior.jpg'),(186,'Simba Grill','Burnaby, British Columbia','https://simbasgrill.com/',4.6,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzO9dgImr-z5iWlI4QKihDk8IIH_cDcH6pQ&s'),(187,'Vansuya Restaurant and Lounge','Vancouver, British Columbia','https://nigeriancuisinevancouver.com/',3.9,''),(188,'Nubian Delicacies','Victoria, British Columbia','https://nubiancaferestaurant.com/',4.3,''),(189,'Jambo Grill','Vancouver, British Columbia','https://jambogrill.ca/',4.2,''),(190,'Dosa Paragon','Victoria, British Columbia','https://dosaparagon.com/location/yates_street/?',4.8,''),(191,'OlaΓÇÖs Dining Nigerian Kitchen','Edmonton, Alberta','https://www.olasdining.com/',5.0,''),(192,'Flavors Restaurant','Calgary,  Alberta','https://flavourcuisineandcatering.com/',4.6,''),(193,'AhinkeΓÇÖs Kitchen','Calgary, Alberta','https://www.ahinkeskitchen.com/',4.2,''),(194,'Delish Dining','Calgary, Alberta','https://delishdining.ca/',4.4,''),(195,'FraMe Cuisine','Calgary,  Alberta','https://www.framecuisine.com/',4.9,''),(196,'Liberian Cuisine Bar and Grill','Edmonton, Alberta','https://orderdbc.com/Liberian/online-order/?trk=gpo',4.3,''),(197,'360 Grill and Lounge','Calgary,  Alberta','https://www.360grillandlounge.ca//',3.9,''),(198,'Mon Amie Resto','Edmonton,  Alberta','https://www.monamieresto.ca/',3.7,''),(199,'Delish Dining','Calgary, Alberta','https://delishdining.ca/',4.4,''),(200,'OlaΓÇÖs Dining Nigerian Kitchen','Edmonton AB','https://www.olasdining.com/',5.0,''),(201,'Flavors Restaurant','Calgary,  Alberta','https://flavourcuisineandcatering.com/',4.6,''),(202,'AhinkeΓÇÖs Kitchen','Calgary, Alberta','https://www.ahinkeskitchen.com/',4.2,''),(203,'Delish Dining','Calgary, Alberta','https://delishdining.ca/',4.4,''),(204,'FraMe Cuisine','Calgary,  Alberta','https://www.framecuisine.com/',4.9,''),(205,'Liberian Cuisine Bar and Grill','Edmonton, Alberta','https://orderdbc.com/Liberian/online-order/?trk=gpo',4.3,''),(206,'360 Grill and Lounge','Calgary,  Alberta','https://www.360grillandlounge.ca//',3.9,''),(207,'Mon Amie Resto','Edmonton,  Alberta','https://www.monamieresto.ca/',3.7,''),(208,'Delish Dining','Calgary, Alberta','https://delishdining.ca/',4.4,''),(209,'Sub-Saharan Cuisine','Saskatoon, Saskatchewan','https://www.google.com/maps/uv?pb=!1s0x5304f7e697d295ad%3A0xf2e1b8b2d6a0b714!15sCgIYIQ&viewerState=lb&cr=lm_1e&sa=X&ved=2ahUKEwi5ufil7eiHAxXcFjQIHZDdDoYQzeMEegQIBBAA',5.0,''),(210,'Global Pot Fusion Cuisine','Saskatoon,  Saskatchewan','https://www.globalpot.org/',4.9,''),(211,'Africa Jazz Lounge','Regina, Saskatchewan','https://africajazzlounge.com/',4.8,''),(212,'Laghos African Kithcnette','Regina, Saskatchewan','https://www.laghoskitchenette.com/',4.3,'');
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suya`
--

DROP TABLE IF EXISTS `suya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suya` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suya`
--

LOCK TABLES `suya` WRITE;
/*!40000 ALTER TABLE `suya` DISABLE KEYS */;
/*!40000 ALTER TABLE `suya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-22  9:21:40
