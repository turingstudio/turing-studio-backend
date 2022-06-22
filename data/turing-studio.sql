-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (arm64)
--
-- Host: localhost    Database: turing_studio
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
) ENGINE=InnoDB AUTO_INCREMENT=1126 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app`
--

LOCK TABLES `app` WRITE;
/*!40000 ALTER TABLE `app` DISABLE KEYS */;
INSERT INTO `app` VALUES (1,'Test'),(2,'Test Again'),(3,'Test Application'),(4,'Test This'),(5,'Test Something'),(6,'Test Here'),(7,'Test There'),(8,'My App'),(9,'Another Application'),(10,'Shopping Whiz'),(11,'Cheese Works'),(12,'Life Insurance of Canton'),(13,'Spaghetti Creations'),(14,'Forest Management Associates'),(15,'Ohio Savings Bank'),(16,'Accountants of Dayton'),(17,'Car Expo'),(1112,'Nick Test 200'),(1113,'Nick Test 300'),(1114,'Nick 400'),(1115,'Nick Test'),(1116,'Nick Template 1'),(1117,'Nick Test2'),(1118,'IFAC TEST'),(1119,'Nick 234'),(1120,'Foo'),(1121,'Nick494'),(1122,'333'),(1123,'TEst 919'),(1124,'Bill'),(1125,'Cheese');
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
INSERT INTO `app_instance` VALUES (1,'Test');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_template`
--

LOCK TABLES `app_template` WRITE;
/*!40000 ALTER TABLE `app_template` DISABLE KEYS */;
INSERT INTO `app_template` VALUES (1,'Blank'),(2,'Insurance Customer Portal'),(3,'Shopping Cart'),(4,'Analytics Dashboard'),(5,'Nick Template 1'),(6,'Nick Test2'),(7,'IFAC TEST'),(8,'Nick 234'),(9,'Foo'),(10,'Nick494'),(11,'333'),(12,'1111'),(13,'Nick'),(14,'Nick 2');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_template_screen`
--

LOCK TABLES `app_template_screen` WRITE;
/*!40000 ALTER TABLE `app_template_screen` DISABLE KEYS */;
INSERT INTO `app_template_screen` VALUES (26,'Nick Test',2,'{\"content\":[{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"06246164-51bf-4467-aff8-502cc52e06eb\",\"name\":\"Two Column\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"57ca9dd2-767e-4416-b3b7-e90dedb4e7ed\",\"name\":\"Two Column\",\"orderId\":2},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"cee380db-4fe1-4002-9b82-a1366d5983e3\",\"name\":\"One Column\",\"orderId\":3},{\"ScreenComponent\":\"Divider\",\"id\":\"f7188ad7-a518-4f98-9a10-ddf0cf157878\",\"name\":\"Divider\",\"orderId\":4}]}',NULL),(27,'Nick Test 2',2,'{\"content\":[]}',NULL),(28,'Nick Log In',2,'{\"content\":[]}',NULL),(29,'Test 444',2,'{\"content\":[]}',NULL),(30,'Nick Cart',4,'{\"content\":[]}',NULL),(31,'Nick 444',3,'{\"content\":[]}',NULL),(32,'Nick 555',2,'{\"content\":[]}',NULL),(33,'Nick Test',1,'{\"content\":[{\"ScreenComponent\":\"Divider\",\"id\":\"fb3876be-eaf6-4789-a30d-58e9a02784ee\",\"name\":\"Divider\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"63d37b0c-873d-4f6d-8dd4-d3f0b86c462f\",\"name\":\"One Column\",\"orderId\":2},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"4bae7db8-2f79-4120-9a70-460767d6ecde\",\"name\":\"Two Column\",\"orderId\":3}]}',NULL),(34,'Nick',5,'{\"content\":[]}',NULL),(35,'New Login',7,'{\"content\":[{\"ScreenComponent\":\"ScreenSection\",\"id\":\"d79708d7-10ba-44ee-863b-242f631f70ca\",\"name\":\"One Column\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"1b9119a2-773d-42b9-b34a-ada56e0caad6\",\"name\":\"One Column\",\"orderId\":2},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"ce6d60db-5ca0-4609-8f69-79be70a96813\",\"name\":\"Two Column\",\"orderId\":3},{\"ScreenComponent\":\"Divider\",\"id\":\"7f396e9f-47c2-4b78-bf6f-3a6bd761392d\",\"name\":\"Divider\",\"orderId\":4},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"fad24b71-669c-469c-a795-90403f83cdda\",\"name\":\"One Column\",\"orderId\":5}]}',NULL);
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
  `data` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
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
  `data` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
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
  `data` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_template`
--

LOCK TABLES `form_template` WRITE;
/*!40000 ALTER TABLE `form_template` DISABLE KEYS */;
INSERT INTO `form_template` VALUES (1,'Blank','{\"data\":[{\"ScreenComponent\":\"FormElement\",\"id\":\"df6d7bc2-3b78-4133-b007-bfedc0fd5c65\",\"name\":\"Text Input\",\"orderId\":1,\"type\":\"TEXT_INPUT\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"362bed1a-0385-4c3d-a2f6-c3554ea8760f\",\"name\":\"Text Area\",\"orderId\":2,\"type\":\"TEXT_AREA\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"36b71091-99a3-4cab-8afa-b1af2dddcfc8\",\"name\":\"Dropdown\",\"orderId\":3,\"type\":\"SELECT\"}]}'),(2,'Log In','{\"data\":[{\"ScreenComponent\":\"FormElement\",\"id\":\"487c64fa-3a96-4fee-b087-e841e5b6d010\",\"name\":\"Text Input\",\"orderId\":1,\"type\":\"TEXT_INPUT\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"9d78e8ed-1778-488f-b73e-d97f7ae3a47a\",\"name\":\"Text Input\",\"orderId\":2,\"type\":\"TEXT_INPUT\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"7cc6bea4-adf7-40a8-8b3a-7bb314543b2a\",\"name\":\"Text Input\",\"orderId\":3,\"type\":\"TEXT_INPUT\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"4a5419ff-cc32-4933-9982-1f2f2a73f71d\",\"name\":\"Text Input\",\"orderId\":4,\"type\":\"TEXT_INPUT\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"4966664a-6050-4721-934c-43da281116e4\",\"name\":\"Dropdown\",\"orderId\":5,\"type\":\"SELECT\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"dc301234-1222-4045-b067-51049bd18d3a\",\"name\":\"Dropdown\",\"orderId\":6,\"type\":\"SELECT\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"ec44cd81-dc4b-44eb-a9e6-77d6ddea92f5\",\"name\":\"Dropdown\",\"orderId\":7,\"type\":\"SELECT\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"8287f0a6-a345-4467-ad02-95fe37ba8a8f\",\"name\":\"Radio Button\",\"orderId\":8,\"type\":\"RADIO\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"a7ec8ec7-6b8b-4fa6-a41e-e1236f93630b\",\"name\":\"Checkbox\",\"orderId\":9,\"type\":\"CHECKBOX\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"d4438f7b-5640-4ae9-a32d-388415fda898\",\"name\":\"Date Picker\",\"orderId\":10,\"type\":\"DATE_PICKER\"}]}'),(3,'Sign Up','{\"data\":[{\"ScreenComponent\":\"FormElement\",\"id\":\"1dc3f38e-bca2-4ce6-bb04-2cc6e0c98754\",\"name\":\"Form Element\",\"orderId\":1,\"type\":\"TEXT_INPUT\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"6952d19a-1b5c-42c0-9cff-3c93a8db7dae\",\"name\":\"Text Area\",\"orderId\":2,\"type\":\"TEXT_INPUT\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"7f7725ca-2843-4aa4-b7b3-746770b476d8\",\"name\":\"Text Area\",\"orderId\":3,\"type\":\"TEXT_INPUT\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"cac172d9-ab5f-4b43-af99-37637328009f\",\"name\":\"Text Input\",\"orderId\":4,\"type\":\"TEXT_INPUT\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"c050dbc7-3597-4757-9a0f-0f596842cd4d\",\"name\":\"Text Input\",\"orderId\":5,\"type\":\"TEXT_INPUT\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"4b3f9c6d-79b5-4035-9962-61356bd2725d\",\"name\":\"Text Input\",\"orderId\":6,\"type\":\"TEXT_INPUT\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"78632ee6-b0cf-4f9f-b204-b74acf9f6583\",\"name\":\"Text Area\",\"orderId\":7,\"type\":\"TEXT_AREA\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"d0431541-8849-424c-bddc-12d7f071efc9\",\"name\":\"Dropdown\",\"orderId\":8,\"type\":\"SELECT\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"6d2d94a3-8851-47f6-b8c8-7445548ada5d\",\"name\":\"Checkbox\",\"orderId\":9,\"type\":\"CHECKBOX\"}]}'),(4,'Forgot Password','{\"data\":[{\"ScreenComponent\":\"FormElement\",\"id\":\"2822ad36-6b36-4cb0-be30-9fcfc206d2a6\",\"name\":\"Form Element\",\"orderId\":1,\"type\":\"TEXT_INPUT\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"61180636-35e5-4635-9d71-d976a1ea6d79\",\"name\":\"Form Element\",\"orderId\":2,\"type\":\"TEXT_INPUT\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"1559f90a-5fa7-4ee9-b995-8ce3c8e4aed9\",\"name\":\"Text Input\",\"orderId\":3,\"type\":\"TEXT_INPUT\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"831aeb82-cc01-4cdf-8ce1-cfc03b348fad\",\"name\":\"Text Area\",\"orderId\":4,\"type\":\"TEXT_AREA\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"1c9b856a-27e3-4508-9d62-c47864451cdf\",\"name\":\"Dropdown\",\"orderId\":5,\"type\":\"SELECT\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"0ededced-e0a4-468a-bbc8-2c37866d6f91\",\"name\":\"Checkbox\",\"orderId\":6,\"type\":\"CHECKBOX\"},{\"ScreenComponent\":\"FormElement\",\"id\":\"676b79a5-4e9a-42b8-bb0b-e2a8fd7e900e\",\"name\":\"Date Picker\",\"orderId\":7,\"type\":\"DATE_PICKER\"}]}'),(5,'Nick','{\"data\":[{\"ScreenComponent\":\"FormElement\",\"id\":\"e2039815-9f72-4403-bc5d-3f60e8bf9ce6\",\"name\":\"Text Input\",\"orderId\":1,\"type\":\"TEXT_INPUT\"}]}');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screen`
--

LOCK TABLES `screen` WRITE;
/*!40000 ALTER TABLE `screen` DISABLE KEYS */;
INSERT INTO `screen` VALUES (1,'Main',1,'{\"content\":[{\"ScreenComponent\":\"ScreenSection\",\"id\":\"38a586a3-f6bb-43dd-98f2-32e2679a599b\",\"name\":\"One Column\",\"orderId\":1,\"height\":553},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"e378bbe7-e673-48e7-92a9-48489d6692ba\",\"name\":\"One Column\",\"orderId\":2,\"height\":253},{\"ScreenComponent\":\"Divider\",\"id\":\"67ace6ac-e9c7-4d46-8cd4-483dc3265b82\",\"name\":\"Divider\",\"orderId\":3},{\"ScreenComponent\":\"Divider\",\"id\":\"7b25f140-dd8c-4f29-8888-37bd9ea2c499\",\"name\":\"Divider\",\"orderId\":4},{\"ScreenComponent\":\"Divider\",\"id\":\"5c89ebb2-5e89-400f-abb9-a71cdae1ad1a\",\"name\":\"Divider\",\"orderId\":5},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"d49403b2-6e0e-4d08-99cc-34aeeb670771\",\"name\":\"One Column Foo\",\"orderId\":6,\"height\":325},{\"ScreenComponent\":\"Divider\",\"id\":\"033749df-d8e8-4395-b111-8fac15ebe058\",\"name\":\"Divider\",\"orderId\":7},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"1b9119a2-773d-42b9-b34a-ada56e0caad6\",\"name\":\"One Column\",\"orderId\":8,\"height\":140},{\"ScreenComponent\":\"Divider\",\"id\":\"2d27758f-0014-4f01-8143-1418c2281eff\",\"name\":\"Divider\",\"orderId\":9},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"3c8eb394-3d3a-459b-990e-0927f7a283ba\",\"name\":\"One Column\",\"orderId\":10,\"height\":140},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"ae7601bd-9528-4de6-a2d7-4a3ea40d381e\",\"name\":\"One Column\",\"orderId\":11,\"height\":140},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"d3a32740-33a9-4e1c-9c5e-d90c48c24134\",\"name\":\"Two Column\",\"orderId\":12,\"height\":299},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"fad24b71-669c-469c-a795-90403f83cdda\",\"name\":\"One Column\",\"orderId\":13,\"height\":170},{\"ScreenComponent\":\"Divider\",\"id\":\"7f396e9f-47c2-4b78-bf6f-3a6bd761392d\",\"name\":\"Divider\",\"orderId\":14},{\"ScreenComponent\":\"Divider\",\"id\":\"07924bcf-4426-4017-96f0-8b35db6c5b5b\",\"name\":\"Divider\",\"orderId\":15}]}',1),(2,'Log In',1,'{\"content\":[{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"2d8bab9e-2a4a-4604-a636-ac5f2e104a0f\",\"name\":\"Two Column\",\"orderId\":1},{\"ScreenComponent\":\"Divider\",\"id\":\"b1521782-c2b4-42b8-89e7-9db6a1623b9d\",\"name\":\"Divider\",\"orderId\":2},{\"ScreenComponent\":\"Divider\",\"id\":\"811336ec-338d-437f-a287-50ccb8f34238\",\"name\":\"Divider\",\"orderId\":3},{\"ScreenComponent\":\"Divider\",\"id\":\"ce5539b9-0a74-4c18-aa60-64a056cb46ae\",\"name\":\"Divider\",\"orderId\":4},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"13a9c80a-1603-4e8a-b6ad-06e456252e93\",\"name\":\"Two Column\",\"orderId\":5},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"49d77fa1-dc9e-4fe9-935e-2d08f4c38a42\",\"name\":\"Two Column\",\"orderId\":6},{\"ScreenComponent\":\"Divider\",\"id\":\"2ace2982-1951-475d-99c6-1f5b347f4214\",\"name\":\"Divider\",\"orderId\":7},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"30db95e1-bdfe-4037-b3e6-777140f4d06f\",\"name\":\"One Column\",\"orderId\":8},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"d95dc76a-7b6c-4b85-8487-c9dcda6d18de\",\"name\":\"One Column\",\"orderId\":9},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"928ce1b8-3b23-4adf-8176-9723e99bff0f\",\"name\":\"One Column\",\"orderId\":10},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"4dbb7e8b-7748-484c-b12a-e271692269cb\",\"name\":\"Two Column\",\"orderId\":11}]}',0),(3,'Sign Up',1,'{\"content\":[{\"ScreenComponent\":\"Divider\",\"id\":\"15952d87-be62-452f-bd82-647dcd4aea53\",\"name\":\"Divider\",\"orderId\":1},{\"ScreenComponent\":\"Divider\",\"id\":\"cb1be597-0187-48e0-a6d4-32f59c549f9d\",\"name\":\"Divider\",\"orderId\":2},{\"ScreenComponent\":\"Divider\",\"id\":\"ec1cc7d5-795e-462f-ae28-7321408e099c\",\"name\":\"Divider\",\"orderId\":3},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"d95dc76a-7b6c-4b85-8487-c9dcda6d18de\",\"name\":\"One Column\",\"orderId\":4},{\"ScreenComponent\":\"Divider\",\"id\":\"ce5539b9-0a74-4c18-aa60-64a056cb46ae\",\"name\":\"Divider\",\"orderId\":5},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"928ce1b8-3b23-4adf-8176-9723e99bff0f\",\"name\":\"One Column\",\"orderId\":6},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"30db95e1-bdfe-4037-b3e6-777140f4d06f\",\"name\":\"One Column\",\"orderId\":7},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"4dbb7e8b-7748-484c-b12a-e271692269cb\",\"name\":\"Two Column\",\"orderId\":8},{\"ScreenComponent\":\"Divider\",\"id\":\"811336ec-338d-437f-a287-50ccb8f34238\",\"name\":\"Divider\",\"orderId\":9}]}',0),(4,'Nick',1,'{\"content\":[{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"af2b94f7-ac24-4176-96e9-65e029cf923f\",\"name\":\"Two Column\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"38697882-af81-48bf-a8ce-414bfa455451\",\"name\":\"One Column\",\"orderId\":2},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"f4e98123-0f06-41c2-b486-01a7e2fae089\",\"name\":\"One Column\",\"orderId\":3},{\"ScreenComponent\":\"Divider\",\"id\":\"92299a68-76dc-4b48-989d-9940835d9e6b\",\"name\":\"Divider\",\"orderId\":4},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"187e7852-7b99-4076-85e3-286c02917673\",\"name\":\"Two Column\",\"orderId\":5},{\"ScreenComponent\":\"Divider\",\"id\":\"2c8820fe-6753-415a-83b3-e91d281f3b01\",\"name\":\"Divider\",\"orderId\":6}]}',0),(5,'Nick 2',1,'{\"content\":[{\"ScreenComponent\":\"ScreenSection\",\"id\":\"bfd47058-e420-477f-8681-8b3466241759\",\"name\":\"One Column\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"06246164-51bf-4467-aff8-502cc52e06eb\",\"name\":\"Two Column\",\"orderId\":2}]}',0),(6,'Nick Test',1,'',0),(7,'Nick\'s',1,'',0),(8,'Hello',6,'',0),(9,'Main',2,'{\"content\":[{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"4f1af47b-402c-43d1-b176-b25fc34fca2f\",\"name\":\"Two Column\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSection\",\"orderId\":2,\"name\":\"Ringo Section\",\"id\":\"fcc22cf3-cf52-259f-2ee7-358e291880ca\"},{\"ScreenComponent\":\"ScreenSection\",\"orderId\":3,\"name\":\"George Section\",\"id\":\"487013e7-c162-67ec-fedc-e9866da18985\"},{\"ScreenComponent\":\"ScreenSection\",\"orderId\":4,\"name\":\"Paul Section\",\"id\":\"d8524bd8-daa0-8ab3-3a99-9d678d87df1\"},{\"ScreenComponent\":\"ScreenSection\",\"orderId\":5,\"name\":\"John Section\",\"id\":\"40f71721-575c-783a-bacc-88784246f1e5\"}]}',1),(10,'Dimitri',1,'',0),(11,'Main',3,'{\"content\":[{\"ScreenComponent\":\"Divider\",\"id\":\"b93399ba-1eca-402e-84fa-590e614f52df\",\"name\":\"Divider\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"2402e2ee-b173-4e09-b2e9-95820812d853\",\"name\":\"Two Column\",\"orderId\":2},{\"ScreenComponent\":\"ScreenSection\",\"orderId\":3,\"name\":\"Ringo Section\",\"id\":\"fcc22cf3-cf52-259f-2ee7-358e291880ca\"},{\"ScreenComponent\":\"ScreenSection\",\"orderId\":4,\"name\":\"George Section\",\"id\":\"487013e7-c162-67ec-fedc-e9866da18985\"},{\"ScreenComponent\":\"ScreenSection\",\"orderId\":5,\"name\":\"Paul Section\",\"id\":\"d8524bd8-daa0-8ab3-3a99-9d678d87df1\"},{\"ScreenComponent\":\"ScreenSection\",\"orderId\":6,\"name\":\"John Section\",\"id\":\"40f71721-575c-783a-bacc-88784246f1e5\"}]}',0),(12,'Frank',1,'',0),(13,'My Grid',2,'{\"content\":[{\"ScreenComponent\":\"Divider\",\"id\":\"7643721a-f262-4b85-bfd7-36d798e78198\",\"name\":\"Divider\",\"orderId\":1},{\"ScreenComponent\":\"Divider\",\"orderId\":2,\"name\":\"Divider 2\",\"id\":\"1ffd6208-74e1-f11f-96ec-339bf83aea40\"},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"238754f5-060b-4795-97f8-8a3827735d62\",\"name\":\"One Column\",\"orderId\":3},{\"ScreenComponent\":\"Divider\",\"orderId\":4,\"name\":\"Divider 1\",\"id\":\"9ff58e00-5264-fba7-c0e4-3a3ec817a38f\"},{\"ScreenComponent\":\"Divider\",\"id\":\"04043da9-a629-4a3f-8d7b-18dbf7f08ef0\",\"name\":\"Divider\",\"orderId\":5},{\"ScreenComponent\":\"ScreenSectionTwo\",\"orderId\":6,\"name\":\"Screen Section 2\",\"id\":\"1dd1a8ea-0efb-bf89-8747-6df371f85f6f\"}]}',NULL),(14,'My Log In',2,'{\"content\":[{\"ScreenComponent\":\"ScreenSection\",\"orderId\":1,\"name\":\"Screen Section 1\",\"id\":\"095341b1-18ad-145d-12df-79ec6c406938\"},{\"ScreenComponent\":\"Divider\",\"orderId\":2,\"name\":\"Divider 1\",\"id\":\"9ff58e00-5264-fba7-c0e4-3a3ec817a38f\"},{\"ScreenComponent\":\"Divider\",\"orderId\":3,\"name\":\"Divider 2\",\"id\":\"1ffd6208-74e1-f11f-96ec-339bf83aea40\"}]}',NULL),(15,'Test Card',1,'{\"content\":[]}',NULL),(16,'New Cart',1,'{\"content\":[{\"ScreenComponent\":\"Divider\",\"id\":\"e9fe8483-58eb-4dfc-b597-89b59f4cfa87\",\"name\":\"Divider\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"3044cb8a-33de-43f8-ae28-75b41d1902d3\",\"name\":\"Two Column\",\"orderId\":2}]}',NULL),(17,'Another Card',1,'{\"content\":[]}',NULL),(18,'New Grid',1,'{\"content\":[]}',NULL),(19,'Another Screen',1,'{\"content\":[]}',NULL),(20,'New Login',1,'{\"content\":[]}',NULL),(21,'My Home',3,'{\"content\":[{\"ScreenComponent\":\"Divider\",\"id\":\"dc8db183-940c-4982-bd64-eaa95c98bee3\",\"name\":\"Divider\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"1d69a458-3e55-47fb-8f68-366ebe131375\",\"name\":\"One Column\",\"orderId\":2},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"c55b254a-95aa-4b09-af9b-7c51a74df17a\",\"name\":\"One Column\",\"orderId\":3},{\"ScreenComponent\":\"Divider\",\"id\":\"75c96888-d917-4a08-b0aa-f1690d52e1a0\",\"name\":\"Divider\",\"orderId\":4},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"97948a67-5d29-472a-b6c4-f52c3c7b95a1\",\"name\":\"One Column\",\"orderId\":5},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"901189a2-0b6a-4b9b-a0e2-27cc980ddac1\",\"name\":\"Two Column\",\"orderId\":6},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"092006b4-6609-46f8-b4e6-d83b9d7420d9\",\"name\":\"One Column\",\"orderId\":7}]}',NULL),(22,'Cheese',1,'{\"content\":[]}',NULL),(23,'Nick Test 100',1,'{\"content\":[]}',NULL),(24,'Nick Test 200 Screen 1',1112,'{\"content\":[]}',NULL),(25,'Nick 4000',1114,'{\"content\":[{\"ScreenComponent\":\"Divider\",\"id\":\"b44c3931-6de7-4db7-86ec-72a8a9febf6a\",\"name\":\"Divider\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"83d9380c-9d63-4d31-bcea-a66374e7b0b2\",\"name\":\"Two Column\",\"orderId\":2}]}',NULL),(26,'Nick',1117,'{\"content\":[{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"06246164-51bf-4467-aff8-502cc52e06eb\",\"name\":\"Two Column\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"57ca9dd2-767e-4416-b3b7-e90dedb4e7ed\",\"name\":\"Two Column\",\"orderId\":2},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"cee380db-4fe1-4002-9b82-a1366d5983e3\",\"name\":\"One Column\",\"orderId\":3},{\"ScreenComponent\":\"Divider\",\"id\":\"f7188ad7-a518-4f98-9a10-ddf0cf157878\",\"name\":\"Divider\",\"orderId\":4}]}',NULL),(27,'New Grid',9,'{\"content\":[]}',NULL),(28,'Test Something Blank',5,'{\"content\":[{\"ScreenComponent\":\"ScreenSection\",\"id\":\"b15b86bd-4842-4682-98d4-05d2ce6d9ccc\",\"name\":\"One Column\",\"orderId\":1},{\"ScreenComponent\":\"Divider\",\"id\":\"63f99dbb-710b-4786-801f-82ab739f35a4\",\"name\":\"Divider\",\"orderId\":2},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"e46c4818-ce92-43f3-b0cb-5f54a356ca59\",\"name\":\"Two Column\",\"orderId\":3},{\"ScreenComponent\":\"Divider\",\"id\":\"88260efc-2b0a-4ba1-ba39-0e7b8dc9172c\",\"name\":\"Divider\",\"orderId\":4}]}',NULL),(29,'Nick Screen',1,'{\"content\":[]}',NULL),(30,'Nick Log In',1,'{\"content\":[{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"13e62923-1fa0-4781-a308-d3b64a5a9fd1\",\"name\":\"Two Column\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"6921e8ad-86ab-4ac6-941a-bd436d3cfe0f\",\"name\":\"One Column\",\"orderId\":2}]}',NULL),(31,'Main',1124,'{\"content\":[{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"e0e7c344-fcb6-48fc-b30c-b6cc09248de0\",\"name\":\"Two Column\",\"orderId\":1},{\"ScreenComponent\":\"Divider\",\"id\":\"8be18b0d-a5d8-4bf9-b1cb-a4a55004635f\",\"name\":\"Divider\",\"orderId\":2},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"9dbb0dd3-8130-4a7c-b38d-b406a7af8801\",\"name\":\"Two Column\",\"orderId\":3}]}',NULL),(32,'Hello',1124,'{\"content\":[]}',NULL),(33,'test',1,'{\"content\":[{\"ScreenComponent\":\"Divider\",\"id\":\"fb3876be-eaf6-4789-a30d-58e9a02784ee\",\"name\":\"Divider\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"63d37b0c-873d-4f6d-8dd4-d3f0b86c462f\",\"name\":\"One Column\",\"orderId\":2},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"4bae7db8-2f79-4120-9a70-460767d6ecde\",\"name\":\"Two Column\",\"orderId\":3}]}',NULL);
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
INSERT INTO `screen_instance` VALUES (1,'Main',1,'{\"content\":[{\"ScreenComponent\":\"ScreenSection\",\"id\":\"38a586a3-f6bb-43dd-98f2-32e2679a599b\",\"name\":\"One Column\",\"orderId\":1,\"height\":553},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"e378bbe7-e673-48e7-92a9-48489d6692ba\",\"name\":\"One Column\",\"orderId\":2,\"height\":253},{\"ScreenComponent\":\"Divider\",\"id\":\"67ace6ac-e9c7-4d46-8cd4-483dc3265b82\",\"name\":\"Divider\",\"orderId\":3},{\"ScreenComponent\":\"Divider\",\"id\":\"7b25f140-dd8c-4f29-8888-37bd9ea2c499\",\"name\":\"Divider\",\"orderId\":4},{\"ScreenComponent\":\"Divider\",\"id\":\"5c89ebb2-5e89-400f-abb9-a71cdae1ad1a\",\"name\":\"Divider\",\"orderId\":5},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"d49403b2-6e0e-4d08-99cc-34aeeb670771\",\"name\":\"One Column Foo\",\"orderId\":6,\"height\":325},{\"ScreenComponent\":\"Divider\",\"id\":\"033749df-d8e8-4395-b111-8fac15ebe058\",\"name\":\"Divider\",\"orderId\":7},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"1b9119a2-773d-42b9-b34a-ada56e0caad6\",\"name\":\"One Column\",\"orderId\":8,\"height\":140},{\"ScreenComponent\":\"Divider\",\"id\":\"2d27758f-0014-4f01-8143-1418c2281eff\",\"name\":\"Divider\",\"orderId\":9},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"3c8eb394-3d3a-459b-990e-0927f7a283ba\",\"name\":\"One Column\",\"orderId\":10,\"height\":140},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"ae7601bd-9528-4de6-a2d7-4a3ea40d381e\",\"name\":\"One Column\",\"orderId\":11,\"height\":140},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"d3a32740-33a9-4e1c-9c5e-d90c48c24134\",\"name\":\"Two Column\",\"orderId\":12,\"height\":299},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"fad24b71-669c-469c-a795-90403f83cdda\",\"name\":\"One Column\",\"orderId\":13,\"height\":170},{\"ScreenComponent\":\"Divider\",\"id\":\"7f396e9f-47c2-4b78-bf6f-3a6bd761392d\",\"name\":\"Divider\",\"orderId\":14},{\"ScreenComponent\":\"Divider\",\"id\":\"07924bcf-4426-4017-96f0-8b35db6c5b5b\",\"name\":\"Divider\",\"orderId\":15}]}',1),(2,'Log In',1,'{\"content\":[{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"2d8bab9e-2a4a-4604-a636-ac5f2e104a0f\",\"name\":\"Two Column\",\"orderId\":1},{\"ScreenComponent\":\"Divider\",\"id\":\"b1521782-c2b4-42b8-89e7-9db6a1623b9d\",\"name\":\"Divider\",\"orderId\":2},{\"ScreenComponent\":\"Divider\",\"id\":\"811336ec-338d-437f-a287-50ccb8f34238\",\"name\":\"Divider\",\"orderId\":3},{\"ScreenComponent\":\"Divider\",\"id\":\"ce5539b9-0a74-4c18-aa60-64a056cb46ae\",\"name\":\"Divider\",\"orderId\":4},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"13a9c80a-1603-4e8a-b6ad-06e456252e93\",\"name\":\"Two Column\",\"orderId\":5},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"49d77fa1-dc9e-4fe9-935e-2d08f4c38a42\",\"name\":\"Two Column\",\"orderId\":6},{\"ScreenComponent\":\"Divider\",\"id\":\"2ace2982-1951-475d-99c6-1f5b347f4214\",\"name\":\"Divider\",\"orderId\":7},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"30db95e1-bdfe-4037-b3e6-777140f4d06f\",\"name\":\"One Column\",\"orderId\":8},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"d95dc76a-7b6c-4b85-8487-c9dcda6d18de\",\"name\":\"One Column\",\"orderId\":9},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"928ce1b8-3b23-4adf-8176-9723e99bff0f\",\"name\":\"One Column\",\"orderId\":10},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"4dbb7e8b-7748-484c-b12a-e271692269cb\",\"name\":\"Two Column\",\"orderId\":11}]}',0),(3,'Sign Up',1,'{\"content\":[{\"ScreenComponent\":\"Divider\",\"id\":\"15952d87-be62-452f-bd82-647dcd4aea53\",\"name\":\"Divider\",\"orderId\":1},{\"ScreenComponent\":\"Divider\",\"id\":\"cb1be597-0187-48e0-a6d4-32f59c549f9d\",\"name\":\"Divider\",\"orderId\":2},{\"ScreenComponent\":\"Divider\",\"id\":\"ec1cc7d5-795e-462f-ae28-7321408e099c\",\"name\":\"Divider\",\"orderId\":3},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"d95dc76a-7b6c-4b85-8487-c9dcda6d18de\",\"name\":\"One Column\",\"orderId\":4},{\"ScreenComponent\":\"Divider\",\"id\":\"ce5539b9-0a74-4c18-aa60-64a056cb46ae\",\"name\":\"Divider\",\"orderId\":5},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"928ce1b8-3b23-4adf-8176-9723e99bff0f\",\"name\":\"One Column\",\"orderId\":6},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"30db95e1-bdfe-4037-b3e6-777140f4d06f\",\"name\":\"One Column\",\"orderId\":7},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"4dbb7e8b-7748-484c-b12a-e271692269cb\",\"name\":\"Two Column\",\"orderId\":8},{\"ScreenComponent\":\"Divider\",\"id\":\"811336ec-338d-437f-a287-50ccb8f34238\",\"name\":\"Divider\",\"orderId\":9}]}',0),(4,'Nick',1,'{\"content\":[{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"af2b94f7-ac24-4176-96e9-65e029cf923f\",\"name\":\"Two Column\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"38697882-af81-48bf-a8ce-414bfa455451\",\"name\":\"One Column\",\"orderId\":2},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"f4e98123-0f06-41c2-b486-01a7e2fae089\",\"name\":\"One Column\",\"orderId\":3},{\"ScreenComponent\":\"Divider\",\"id\":\"92299a68-76dc-4b48-989d-9940835d9e6b\",\"name\":\"Divider\",\"orderId\":4},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"187e7852-7b99-4076-85e3-286c02917673\",\"name\":\"Two Column\",\"orderId\":5},{\"ScreenComponent\":\"Divider\",\"id\":\"2c8820fe-6753-415a-83b3-e91d281f3b01\",\"name\":\"Divider\",\"orderId\":6}]}',0),(5,'Nick 2',1,'{\"content\":[{\"ScreenComponent\":\"ScreenSection\",\"id\":\"bfd47058-e420-477f-8681-8b3466241759\",\"name\":\"One Column\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"06246164-51bf-4467-aff8-502cc52e06eb\",\"name\":\"Two Column\",\"orderId\":2}]}',0),(6,'Nick Test',1,'',0),(7,'Nick\'s',1,'',0),(10,'Dimitri',1,'',0),(12,'Frank',1,'',0),(15,'Test Card',1,'{\"content\":[]}',NULL),(16,'New Cart',1,'{\"content\":[{\"ScreenComponent\":\"Divider\",\"id\":\"e9fe8483-58eb-4dfc-b597-89b59f4cfa87\",\"name\":\"Divider\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"3044cb8a-33de-43f8-ae28-75b41d1902d3\",\"name\":\"Two Column\",\"orderId\":2}]}',NULL),(17,'Another Card',1,'{\"content\":[]}',NULL),(18,'New Grid',1,'{\"content\":[]}',NULL),(19,'Another Screen',1,'{\"content\":[]}',NULL),(20,'New Login',1,'{\"content\":[]}',NULL),(22,'Cheese',1,'{\"content\":[]}',NULL),(23,'Nick Test 100',1,'{\"content\":[]}',NULL),(29,'Nick Screen',1,'{\"content\":[]}',NULL),(30,'Nick Log In',1,'{\"content\":[{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"13e62923-1fa0-4781-a308-d3b64a5a9fd1\",\"name\":\"Two Column\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"6921e8ad-86ab-4ac6-941a-bd436d3cfe0f\",\"name\":\"One Column\",\"orderId\":2}]}',NULL),(33,'test',1,'{\"content\":[{\"ScreenComponent\":\"Divider\",\"id\":\"fb3876be-eaf6-4789-a30d-58e9a02784ee\",\"name\":\"Divider\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"63d37b0c-873d-4f6d-8dd4-d3f0b86c462f\",\"name\":\"One Column\",\"orderId\":2},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"4bae7db8-2f79-4120-9a70-460767d6ecde\",\"name\":\"Two Column\",\"orderId\":3}]}',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screen_template`
--

LOCK TABLES `screen_template` WRITE;
/*!40000 ALTER TABLE `screen_template` DISABLE KEYS */;
INSERT INTO `screen_template` VALUES (1,'Blank','{\"content\":[{\"ScreenComponent\":{},\"id\":\"093e902c-d370-4064-9e5c-b54c72ccaef0\",\"name\":\"One Column\",\"orderId\":1}]}'),(2,'Log In','{\"content\":[{\"ScreenComponent\":\"ScreenSection\",\"id\":\"bc4f78b8-d4c1-4fae-a0f6-6990704895ca\",\"name\":\"One Column\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"5fc30aa2-5023-43ee-b16a-1252b534780b\",\"name\":\"One Column\",\"orderId\":2},{\"ScreenComponent\":\"Divider\",\"id\":\"ef5fcb4d-4a7e-44d8-b6f9-6b7883aafe64\",\"name\":\"Divider\",\"orderId\":3},{\"ScreenComponent\":\"Divider\",\"id\":\"b42ae862-2723-4ee8-a008-b92eedd409a1\",\"name\":\"Divider\",\"orderId\":4},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"13a9c80a-1603-4e8a-b6ad-06e456252e93\",\"name\":\"Two Column\",\"orderId\":5},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"49d77fa1-dc9e-4fe9-935e-2d08f4c38a42\",\"name\":\"Two Column\",\"orderId\":6},{\"ScreenComponent\":\"Divider\",\"id\":\"2ace2982-1951-475d-99c6-1f5b347f4214\",\"name\":\"Divider\",\"orderId\":7},{\"ScreenComponent\":\"Divider\",\"id\":\"b1521782-c2b4-42b8-89e7-9db6a1623b9d\",\"name\":\"Divider\",\"orderId\":8},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"d95dc76a-7b6c-4b85-8487-c9dcda6d18de\",\"name\":\"One Column\",\"orderId\":9},{\"ScreenComponent\":\"Divider\",\"id\":\"ce5539b9-0a74-4c18-aa60-64a056cb46ae\",\"name\":\"Divider\",\"orderId\":10},{\"ScreenComponent\":\"Divider\",\"id\":\"811336ec-338d-437f-a287-50ccb8f34238\",\"name\":\"Divider\",\"orderId\":11},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"30db95e1-bdfe-4037-b3e6-777140f4d06f\",\"name\":\"One Column\",\"orderId\":12},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"928ce1b8-3b23-4adf-8176-9723e99bff0f\",\"name\":\"One Column\",\"orderId\":13},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"4dbb7e8b-7748-484c-b12a-e271692269cb\",\"name\":\"Two Column\",\"orderId\":14}]}'),(3,'Sign Up','{\"content\":[{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"708bbf56-92ff-478b-874c-708d0fe632e2\",\"name\":\"Two Column\",\"orderId\":1}]}'),(4,'Shopping Cart',''),(5,'Product Grid','{\"content\":[{\"ScreenComponent\":\"Divider\",\"id\":\"1f7c7b28-c907-41fe-9baa-22b5d46895d9\",\"name\":\"Divider\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"b44498f2-2542-4a3e-9c89-67530571eef1\",\"name\":\"Two Column\",\"orderId\":2},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"a66d0e91-302b-44e7-afb7-727d3f0b074f\",\"name\":\"Two Column\",\"orderId\":3},{\"ScreenComponent\":\"Divider\",\"id\":\"e18b6f57-1098-4959-a841-67ee7c745c44\",\"name\":\"Divider\",\"orderId\":4},{\"ScreenComponent\":\"Divider\",\"id\":\"543e2c2b-aeff-43e9-8028-f98f5797e233\",\"name\":\"Divider\",\"orderId\":5},{\"ScreenComponent\":\"Divider\",\"id\":\"0b9d9b60-5d0e-4d8e-9edc-72fd9d00fb67\",\"name\":\"Divider\",\"orderId\":6}]}'),(6,'Product Details','{\"content\":[{\"ScreenComponent\":\"ScreenSection\",\"id\":\"196f73a6-c257-4df4-ae71-eb4a5ad9b9ac\",\"name\":\"One Column\",\"orderId\":1},{\"ScreenComponent\":\"Divider\",\"id\":\"fc6e45d8-8e23-421c-8681-e767ce55c7cc\",\"name\":\"Divider\",\"orderId\":2},{\"ScreenComponent\":\"Divider\",\"id\":\"ffcbb3b1-b71d-46b4-a493-45a6b39843f1\",\"name\":\"Divider\",\"orderId\":3},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"1f9766f3-bc3e-4f62-a6e0-5010e34f23e0\",\"name\":\"Two Column\",\"orderId\":4},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"d69765bf-7fc0-47f4-963c-2d3007012873\",\"name\":\"One Column\",\"orderId\":5},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"535b3573-1d1b-4f76-92f3-dab8d2cdd011\",\"name\":\"One Column\",\"orderId\":6},{\"ScreenComponent\":\"Divider\",\"id\":\"80c46454-dbe2-434a-aae0-8e41df8344fb\",\"name\":\"Divider\",\"orderId\":7},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"f8e1ceb8-fef2-4eb4-93e6-67fb5a7f04ad\",\"name\":\"Two Column\",\"orderId\":8}]}'),(7,'Log In 2','{\"content\":[]}'),(8,'Cheese','{\"content\":[]}');
/*!40000 ALTER TABLE `screen_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'turing_studio'
--
/*!50003 DROP PROCEDURE IF EXISTS `createInstance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createInstance`()
BEGIN
    DROP TABLE  IF EXISTS app_instance;
    CREATE TABLE app_instance
      SELECT * FROM app WHERE id = 1;

    DROP TABLE  IF EXISTS screen_instance;
    CREATE TABLE screen_instance
      SELECT * FROM screen WHERE app_id = 1;

    DROP TABLE  IF EXISTS form_instance;
    CREATE TABLE form_instance
      SELECT * FROM form WHERE app_id = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-21 21:14:12
