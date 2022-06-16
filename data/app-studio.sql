-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (arm64)
--
-- Host: localhost    Database: app_studio
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `app`
--

DROP TABLE IF EXISTS `app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1117 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app`
--

LOCK TABLES `app` WRITE;
/*!40000 ALTER TABLE `app` DISABLE KEYS */;
INSERT INTO `app` VALUES (1,'Test'),(2,'Test Again'),(3,'Test Application'),(4,'Test This'),(5,'Test Something'),(6,'Test Here'),(7,'Test There'),(8,'My App'),(9,'Another Application'),(10,'Shopping Whiz'),(11,'Cheese Works'),(12,'Life Insurance of Canton'),(13,'Spaghetti Creations'),(14,'Forest Management Associates'),(15,'Ohio Savings Bank'),(16,'Accountants of Dayton'),(17,'Car Expo'),(1112,'Nick Test 200'),(1113,'Nick Test 300'),(1114,'Nick 400'),(1115,'Nick Test'),(1116,'Nick Template 1');
/*!40000 ALTER TABLE `app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_instance`
--

DROP TABLE IF EXISTS `app_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_instance` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_instance`
--

LOCK TABLES `app_instance` WRITE;
/*!40000 ALTER TABLE `app_instance` DISABLE KEYS */;
INSERT INTO `app_instance` VALUES (1,'Test Application Longer');
/*!40000 ALTER TABLE `app_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_template`
--

DROP TABLE IF EXISTS `app_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_template` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_template`
--

LOCK TABLES `app_template` WRITE;
/*!40000 ALTER TABLE `app_template` DISABLE KEYS */;
INSERT INTO `app_template` VALUES (1,'Blank'),(2,'Insurance Customer Portal'),(3,'Shopping Cart'),(4,'Analytics Dashboard'),(5,'Nick Template 1');
/*!40000 ALTER TABLE `app_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_template_screen`
--

DROP TABLE IF EXISTS `app_template_screen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_template_screen` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `app_template_id` int NOT NULL,
  `content` text NOT NULL,
  `main` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_template_screen`
--

LOCK TABLES `app_template_screen` WRITE;
/*!40000 ALTER TABLE `app_template_screen` DISABLE KEYS */;
INSERT INTO `app_template_screen` VALUES (26,'Nick Test',2,'{\"content\":[]}',NULL),(27,'Nick Test 2',2,'{\"content\":[]}',NULL),(28,'Nick Log In',2,'{\"content\":[]}',NULL),(29,'Test 444',2,'{\"content\":[]}',NULL);
/*!40000 ALTER TABLE `app_template_screen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form`
--

DROP TABLE IF EXISTS `form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `template` text,
  `app_id` int DEFAULT NULL,
  `screen_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form`
--

LOCK TABLES `form` WRITE;
/*!40000 ALTER TABLE `form` DISABLE KEYS */;
INSERT INTO `form` VALUES (1,'Suggestion','[\n  {\n    \"id\": 1,\n    \"name\": \"name\",\n    \"label\": \"name:\",\n    \"placeholder\": \"enter your name...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 2,\n    \"name\": \"company\",\n    \"label\": \"company:\",\n    \"placeholder\": \"enter your company name...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 3,\n    \"name\": \"website\",\n    \"label\": \"website:\",\n    \"placeholder\": \"enter your company website...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 4,\n    \"name\": \"email\",\n    \"label\": \"email address:\",\n    \"placeholder\": \"enter your email address...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },  \n	{\n    \"id\": 5,\n    \"name\": \"specialty\",\n    \"label\": \"top candy specialty (enter only one):\",\n    \"placeholder\": \"enter a candy name...\",\n    \"FormComponent\": \"FormSelectInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\",\n    \"options\": [\n      { \"value\": \"MM\", \"label\": \"MMs\", \"id\": 1 },\n      { \"value\": \"MARS\", \"label\": \"Mars Bar\", \"id\": 2 },\n      { \"value\": \"MWAY\", \"label\": \"Milky Way\", \"id\": 3 },\n      { \"value\": \"SNICK\", \"label\": \"Snickers\", \"id\": 4 }\n    ]\n  },\n  {\n    \"id\": 6,\n    \"name\": \"price\",\n    \"label\": \"price per unit:\",\n    \"placeholder\": \"enter a suggested price...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n	{\n    \"id\": 7,\n    \"name\": \"demo\",\n    \"label\": \"demo stuff:\",\n    \"placeholder\": \"enter a demo item...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  }\n]',1,1),(2,'Log In','[\n  {\n    \"id\": 1,\n    \"name\": \"name\",\n    \"label\": \"name:\",\n    \"placeholder\": \"enter your name...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 2,\n    \"name\": \"company\",\n    \"label\": \"company:\",\n    \"placeholder\": \"enter your company name...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 3,\n    \"name\": \"website\",\n    \"label\": \"website:\",\n    \"placeholder\": \"enter your company website...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 4,\n    \"name\": \"email\",\n    \"label\": \"email address:\",\n    \"placeholder\": \"enter your email address...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },  \n	{\n    \"id\": 5,\n    \"name\": \"specialty\",\n    \"label\": \"top candy specialty (enter only one):\",\n    \"placeholder\": \"enter a candy name...\",\n    \"FormComponent\": \"FormSelectInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\",\n    \"options\": [\n      { \"value\": \"MM\", \"label\": \"MMs\", \"id\": 1 },\n      { \"value\": \"MARS\", \"label\": \"Mars Bar\", \"id\": 2 },\n      { \"value\": \"MWAY\", \"label\": \"Milky Way\", \"id\": 3 },\n      { \"value\": \"SNICK\", \"label\": \"Snickers\", \"id\": 4 }\n    ]\n  },\n  {\n    \"id\": 6,\n    \"name\": \"price\",\n    \"label\": \"price per unit:\",\n    \"placeholder\": \"enter a suggested price...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n	{\n    \"id\": 7,\n    \"name\": \"demo\",\n    \"label\": \"demo stuff:\",\n    \"placeholder\": \"enter a demo item...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  }\n]',1,1),(3,'Sign Up','[\n  {\n    \"id\": 1,\n    \"name\": \"name\",\n    \"label\": \"name:\",\n    \"placeholder\": \"enter your name...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 2,\n    \"name\": \"company\",\n    \"label\": \"company:\",\n    \"placeholder\": \"enter your company name...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 3,\n    \"name\": \"website\",\n    \"label\": \"website:\",\n    \"placeholder\": \"enter your company website...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 4,\n    \"name\": \"email\",\n    \"label\": \"email address:\",\n    \"placeholder\": \"enter your email address...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },  \n	{\n    \"id\": 5,\n    \"name\": \"specialty\",\n    \"label\": \"top candy specialty (enter only one):\",\n    \"placeholder\": \"enter a candy name...\",\n    \"FormComponent\": \"FormSelectInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\",\n    \"options\": [\n      { \"value\": \"MM\", \"label\": \"MMs\", \"id\": 1 },\n      { \"value\": \"MARS\", \"label\": \"Mars Bar\", \"id\": 2 },\n      { \"value\": \"MWAY\", \"label\": \"Milky Way\", \"id\": 3 },\n      { \"value\": \"SNICK\", \"label\": \"Snickers\", \"id\": 4 }\n    ]\n  },\n  {\n    \"id\": 6,\n    \"name\": \"price\",\n    \"label\": \"price per unit:\",\n    \"placeholder\": \"enter a suggested price...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n	{\n    \"id\": 7,\n    \"name\": \"demo\",\n    \"label\": \"demo stuff:\",\n    \"placeholder\": \"enter a demo item...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  }\n]',1,1);
/*!40000 ALTER TABLE `form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_instance`
--

DROP TABLE IF EXISTS `form_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form_instance` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `template` text CHARACTER SET latin1,
  `app_id` int DEFAULT NULL,
  `screen_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_instance`
--

LOCK TABLES `form_instance` WRITE;
/*!40000 ALTER TABLE `form_instance` DISABLE KEYS */;
INSERT INTO `form_instance` VALUES (1,'Suggestion','[\n  {\n    \"id\": 1,\n    \"name\": \"name\",\n    \"label\": \"name:\",\n    \"placeholder\": \"enter your name...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 2,\n    \"name\": \"company\",\n    \"label\": \"company:\",\n    \"placeholder\": \"enter your company name...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 3,\n    \"name\": \"website\",\n    \"label\": \"website:\",\n    \"placeholder\": \"enter your company website...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 4,\n    \"name\": \"email\",\n    \"label\": \"email address:\",\n    \"placeholder\": \"enter your email address...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },  \n	{\n    \"id\": 5,\n    \"name\": \"specialty\",\n    \"label\": \"top candy specialty (enter only one):\",\n    \"placeholder\": \"enter a candy name...\",\n    \"FormComponent\": \"FormSelectInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\",\n    \"options\": [\n      { \"value\": \"MM\", \"label\": \"MMs\", \"id\": 1 },\n      { \"value\": \"MARS\", \"label\": \"Mars Bar\", \"id\": 2 },\n      { \"value\": \"MWAY\", \"label\": \"Milky Way\", \"id\": 3 },\n      { \"value\": \"SNICK\", \"label\": \"Snickers\", \"id\": 4 }\n    ]\n  },\n  {\n    \"id\": 6,\n    \"name\": \"price\",\n    \"label\": \"price per unit:\",\n    \"placeholder\": \"enter a suggested price...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n	{\n    \"id\": 7,\n    \"name\": \"demo\",\n    \"label\": \"demo stuff:\",\n    \"placeholder\": \"enter a demo item...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  }\n]',1,1),(2,'Log In','[\n  {\n    \"id\": 1,\n    \"name\": \"name\",\n    \"label\": \"name:\",\n    \"placeholder\": \"enter your name...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 2,\n    \"name\": \"company\",\n    \"label\": \"company:\",\n    \"placeholder\": \"enter your company name...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 3,\n    \"name\": \"website\",\n    \"label\": \"website:\",\n    \"placeholder\": \"enter your company website...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 4,\n    \"name\": \"email\",\n    \"label\": \"email address:\",\n    \"placeholder\": \"enter your email address...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },  \n	{\n    \"id\": 5,\n    \"name\": \"specialty\",\n    \"label\": \"top candy specialty (enter only one):\",\n    \"placeholder\": \"enter a candy name...\",\n    \"FormComponent\": \"FormSelectInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\",\n    \"options\": [\n      { \"value\": \"MM\", \"label\": \"MMs\", \"id\": 1 },\n      { \"value\": \"MARS\", \"label\": \"Mars Bar\", \"id\": 2 },\n      { \"value\": \"MWAY\", \"label\": \"Milky Way\", \"id\": 3 },\n      { \"value\": \"SNICK\", \"label\": \"Snickers\", \"id\": 4 }\n    ]\n  },\n  {\n    \"id\": 6,\n    \"name\": \"price\",\n    \"label\": \"price per unit:\",\n    \"placeholder\": \"enter a suggested price...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n	{\n    \"id\": 7,\n    \"name\": \"demo\",\n    \"label\": \"demo stuff:\",\n    \"placeholder\": \"enter a demo item...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  }\n]',1,1),(3,'Sign Up','[\n  {\n    \"id\": 1,\n    \"name\": \"name\",\n    \"label\": \"name:\",\n    \"placeholder\": \"enter your name...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 2,\n    \"name\": \"company\",\n    \"label\": \"company:\",\n    \"placeholder\": \"enter your company name...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 3,\n    \"name\": \"website\",\n    \"label\": \"website:\",\n    \"placeholder\": \"enter your company website...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 4,\n    \"name\": \"email\",\n    \"label\": \"email address:\",\n    \"placeholder\": \"enter your email address...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },  \n	{\n    \"id\": 5,\n    \"name\": \"specialty\",\n    \"label\": \"top candy specialty (enter only one):\",\n    \"placeholder\": \"enter a candy name...\",\n    \"FormComponent\": \"FormSelectInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\",\n    \"options\": [\n      { \"value\": \"MM\", \"label\": \"MMs\", \"id\": 1 },\n      { \"value\": \"MARS\", \"label\": \"Mars Bar\", \"id\": 2 },\n      { \"value\": \"MWAY\", \"label\": \"Milky Way\", \"id\": 3 },\n      { \"value\": \"SNICK\", \"label\": \"Snickers\", \"id\": 4 }\n    ]\n  },\n  {\n    \"id\": 6,\n    \"name\": \"price\",\n    \"label\": \"price per unit:\",\n    \"placeholder\": \"enter a suggested price...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n	{\n    \"id\": 7,\n    \"name\": \"demo\",\n    \"label\": \"demo stuff:\",\n    \"placeholder\": \"enter a demo item...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  }\n]',1,1);
/*!40000 ALTER TABLE `form_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_template`
--

DROP TABLE IF EXISTS `form_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form_template` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `template` text,
  `app_id` int DEFAULT NULL,
  `screen_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_template`
--

LOCK TABLES `form_template` WRITE;
/*!40000 ALTER TABLE `form_template` DISABLE KEYS */;
INSERT INTO `form_template` VALUES (1,'Blank',NULL,1,1),(2,'Log In',NULL,1,1),(3,'Sign Up',NULL,1,1),(4,'Forgot Password',NULL,1,1);
/*!40000 ALTER TABLE `form_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screen`
--

DROP TABLE IF EXISTS `screen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screen` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `app_id` int NOT NULL,
  `content` text NOT NULL,
  `main` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screen`
--

LOCK TABLES `screen` WRITE;
/*!40000 ALTER TABLE `screen` DISABLE KEYS */;
INSERT INTO `screen` VALUES (1,'Main',1,'{\"content\":[{\"ScreenComponent\":\"Divider\",\"id\":\"c730526a-6a24-4778-8784-d3749140484e\",\"name\":\"Divider\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"d386e9dd-90f0-47f7-80e1-b6eac227c314\",\"name\":\"One Column\",\"orderId\":2},{\"ScreenComponent\":\"Divider\",\"id\":\"f72c4365-1931-49c8-9b4c-dbe6ced08b0d\",\"name\":\"Divider\",\"orderId\":3},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"aaa8cc50-cfa9-4bb0-9a7b-ad6ce6e7e159\",\"name\":\"Two Column\",\"orderId\":4},{\"ScreenComponent\":\"Divider\",\"id\":\"eae76cf2-10f4-4e69-b975-8baa7e9061f9\",\"name\":\"Divider\",\"orderId\":5}]}',1),(2,'Log In',1,'{\"content\":[{\"ScreenComponent\":\"ScreenSectionTwo\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSection\",\"orderId\":2},{\"ScreenComponent\":\"Divider\",\"orderId\":3},{\"ScreenComponent\":\"Divider\",\"orderId\":4}]}',0),(3,'Sign Up',1,'',0),(4,'Nick',1,'',0),(5,'Nick 2',1,'',0),(6,'Nick Test',1,'',0),(7,'Nick\'s',1,'',0),(8,'Hello',6,'',0),(9,'Main',2,'{\"content\":[{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"4f1af47b-402c-43d1-b176-b25fc34fca2f\",\"name\":\"Two Column\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSection\",\"orderId\":2,\"name\":\"Ringo Section\",\"id\":\"fcc22cf3-cf52-259f-2ee7-358e291880ca\"},{\"ScreenComponent\":\"ScreenSection\",\"orderId\":3,\"name\":\"George Section\",\"id\":\"487013e7-c162-67ec-fedc-e9866da18985\"},{\"ScreenComponent\":\"ScreenSection\",\"orderId\":4,\"name\":\"Paul Section\",\"id\":\"d8524bd8-daa0-8ab3-3a99-9d678d87df1\"},{\"ScreenComponent\":\"ScreenSection\",\"orderId\":5,\"name\":\"John Section\",\"id\":\"40f71721-575c-783a-bacc-88784246f1e5\"}]}',1),(10,'Dimitri',1,'',0),(11,'Main',3,'{\"content\":[{\"ScreenComponent\":\"ScreenSection\",\"orderId\":1,\"name\":\"Ringo Section\", \"id\":\"fcc22cf3-cf52-259f-2ee7-358e291880ca\"},{\"ScreenComponent\":\"ScreenSection\",\"orderId\":2,\"name\":\"George Section\", \"id\":\"487013e7-c162-67ec-fedc-e9866da18985\"},{\"ScreenComponent\":\"ScreenSection\",\"orderId\":3,\"name\":\"Paul Section\", \"id\":\"d8524bd8-daa0-8ab3-3a99-9d678d87df1\"},{\"ScreenComponent\":\"ScreenSection\",\"orderId\":4,\"name\":\"John Section\", \"id\":\"40f71721-575c-783a-bacc-88784246f1e5\"}]}',0),(12,'Frank',1,'',0),(13,'My Grid',2,'{\"content\":[{\"ScreenComponent\":\"ScreenSection\",\"orderId\":1,\"name\":\"Screen Section 1\",\"id\":\"095341b1-18ad-145d-12df-79ec6c406938\"},{\"ScreenComponent\":\"Divider\",\"orderId\":2,\"name\":\"Divider 1\",\"id\":\"9ff58e00-5264-fba7-c0e4-3a3ec817a38f\"},{\"ScreenComponent\":\"Divider\",\"orderId\":3,\"name\":\"Divider 2\",\"id\":\"1ffd6208-74e1-f11f-96ec-339bf83aea40\"},{\"ScreenComponent\":\"ScreenSectionTwo\",\"orderId\":4,\"name\":\"Screen Section 2\",\"id\":\"1dd1a8ea-0efb-bf89-8747-6df371f85f6f\"}]}',NULL),(14,'My Log In',2,'{\"content\":[{\"ScreenComponent\":\"ScreenSection\",\"orderId\":1, \"name\":\"Screen Section 1\", \"id\": \"095341b1-18ad-145d-12df-79ec6c406938\"},{\"ScreenComponent\":\"Divider\",\"orderId\":2, \"name\":\"Divider 1\", \"id\":\"9ff58e00-5264-fba7-c0e4-3a3ec817a38f\"},{\"ScreenComponent\":\"Divider\",\"orderId\":3, \"name\":\"Divider 2\", \"id\":\"1ffd6208-74e1-f11f-96ec-339bf83aea40\"},{\"ScreenComponent\":\"ScreenSectionTwo\",\"orderId\":4, \"name\":\"Screen Section 2\", \"id\":\"1dd1a8ea-0efb-bf89-8747-6df371f85f6f\"}]}',NULL),(15,'Test Card',1,'{\"content\":[]}',NULL),(16,'New Cart',1,'{\"content\":[]}',NULL),(17,'Another Card',1,'{\"content\":[]}',NULL),(18,'New Grid',1,'{\"content\":[]}',NULL),(19,'Another Screen',1,'{\"content\":[]}',NULL),(20,'New Login',1,'{\"content\":[]}',NULL),(21,'My Home',3,'{\"content\":[{\"ScreenComponent\":\"ScreenSection\",\"id\":\"092006b4-6609-46f8-b4e6-d83b9d7420d9\",\"name\":\"One Column\",\"orderId\":1}]}',NULL),(22,'Cheese',1,'{\"content\":[]}',NULL),(23,'Nick Test 100',1,'{\"content\":[]}',NULL),(24,'Nick Test 200 Screen 1',1112,'{\"content\":[]}',NULL),(25,'Nick 4000',1114,'{\"content\":[{\"ScreenComponent\":\"Divider\",\"id\":\"b44c3931-6de7-4db7-86ec-72a8a9febf6a\",\"name\":\"Divider\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"83d9380c-9d63-4d31-bcea-a66374e7b0b2\",\"name\":\"Two Column\",\"orderId\":2}]}',NULL);
/*!40000 ALTER TABLE `screen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screen_instance`
--

DROP TABLE IF EXISTS `screen_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screen_instance` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `app_id` int NOT NULL,
  `content` text CHARACTER SET latin1 NOT NULL,
  `main` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screen_instance`
--

LOCK TABLES `screen_instance` WRITE;
/*!40000 ALTER TABLE `screen_instance` DISABLE KEYS */;
INSERT INTO `screen_instance` VALUES (1,'Main',1,'{\"content\":[{\"ScreenComponent\":\"Divider\",\"id\":\"c730526a-6a24-4778-8784-d3749140484e\",\"name\":\"Divider\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"d386e9dd-90f0-47f7-80e1-b6eac227c314\",\"name\":\"One Column\",\"orderId\":2},{\"ScreenComponent\":\"Divider\",\"id\":\"f72c4365-1931-49c8-9b4c-dbe6ced08b0d\",\"name\":\"Divider\",\"orderId\":3},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"aaa8cc50-cfa9-4bb0-9a7b-ad6ce6e7e159\",\"name\":\"Two Column\",\"orderId\":4},{\"ScreenComponent\":\"Divider\",\"id\":\"eae76cf2-10f4-4e69-b975-8baa7e9061f9\",\"name\":\"Divider\",\"orderId\":5}]}',1),(2,'Log In',1,'{\n  \"content\" : [\n	  {\n		  \"orderId\": 2,\n			\"ScreenComponent\": \"Divider\"\n		},\n		{\n		  \"orderId\": 3,\n			\"ScreenComponent\": \"Divider\"\n		},\n		{\n		  \"orderId\": 1,\n			\"ScreenComponent\": \"ScreenSection\"\n		},	\n		{\n		  \"orderId\": 0,\n			\"ScreenComponent\": \"ScreenSectionTwo\"\n		}\n	]\n}',0),(3,'Sign Up',1,'',0),(4,'Nick',1,'',0),(5,'Nick 2',1,'',0),(6,'Nick Test',1,'',0),(7,'Nick\'s',1,'',0),(10,'Dimitri',1,'',0),(12,'Frank',1,'',0),(15,'Test Card',1,'{\"content\":[]}',NULL),(16,'New Cart',1,'{\"content\":[]}',NULL),(17,'Another Card',1,'{\"content\":[]}',NULL),(18,'New Grid',1,'{\"content\":[]}',NULL),(19,'Another Screen',1,'{\"content\":[]}',NULL),(20,'New Login',1,'{\"content\":[]}',NULL);
/*!40000 ALTER TABLE `screen_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screen_template`
--

DROP TABLE IF EXISTS `screen_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screen_template` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screen_template`
--

LOCK TABLES `screen_template` WRITE;
/*!40000 ALTER TABLE `screen_template` DISABLE KEYS */;
INSERT INTO `screen_template` VALUES (1,'Blank',''),(2,'Log In',''),(3,'Sign Up',''),(4,'Shopping Cart',''),(5,'Product Grid',''),(6,'Product Details','');
/*!40000 ALTER TABLE `screen_template` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-27 23:57:01
