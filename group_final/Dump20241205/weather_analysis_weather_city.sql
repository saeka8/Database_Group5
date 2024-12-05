-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (arm64)
--
-- Host: localhost    Database: weather_analysis
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `weather_city`
--

DROP TABLE IF EXISTS `weather_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weather_city` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `country_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `weather_city_country_id_6d386839_fk_weather_country_id` (`country_id`),
  CONSTRAINT `weather_city_country_id_6d386839_fk_weather_country_id` FOREIGN KEY (`country_id`) REFERENCES `weather_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather_city`
--

LOCK TABLES `weather_city` WRITE;
/*!40000 ALTER TABLE `weather_city` DISABLE KEYS */;
INSERT INTO `weather_city` VALUES (1,'Birmingham',1),(2,'Huntsville',1),(3,'Mobile',1),(4,'Montgomery',1),(5,'Anchorage',1),(6,'Annette',1),(7,'Bethel',1),(8,'Bettles',1),(9,'Cold Bay',1),(10,'Cordova',1),(11,'Delta Junction/Ft Greely',1),(12,'Fairbanks',1),(13,'Gulkana',1),(14,'Homer',1),(15,'Iliamna',1),(16,'Juneau',1),(17,'Kenai',1),(18,'Ketchikan',1),(19,'King Salmon',1),(20,'Kodiak',1),(21,'Kotzebue',1),(22,'Mc Grath',1),(23,'Nome',1),(24,'Northway',1),(25,'Palmer',1),(26,'Petersburg',1),(27,'Puntilla Lake',1),(28,'Shemya',1),(29,'Sitka',1),(30,'Skagway',1),(31,'St Paul Island',1),(32,'Talkeetna',1),(33,'Tanana',1),(34,'Utqiagvik (Barrow)',1),(35,'Yakutat',1),(36,'Douglas Bisbee',1),(37,'Kingman',1),(38,'Phoenix',1),(39,'Tucson',1),(40,'Winslow',1),(41,'Fort Smith',1),(42,'Harrison',1),(43,'North Little Rock',1),(44,'Bakersfield',1),(45,'Bishop',1),(46,'China Lake',1),(47,'Concord',1),(48,'Eureka',1),(49,'Fresno',1),(50,'Hayward',1),(51,'Long Beach',1),(52,'Los Angeles',1),(53,'Red Bluff',1),(54,'Redding',1),(55,'Sacramento',1),(56,'Salinas',1),(57,'San Diego',1),(58,'San Francisco',1),(59,'Sandberg',1),(60,'Santa Barbara',1),(61,'Santa Maria',1),(62,'Stockton',1),(63,'Alamosa',1),(64,'Colorado Springs',1),(65,'Craig',1),(66,'Denver',1),(67,'Grand Junction',1),(68,'Pueblo',1),(69,'Bridgeport',1),(70,'Windsor Locks',1),(71,'Newark',1),(72,'Wilmington',1),(73,'Daytona Beach',1),(74,'Fort Lauderdale',1),(75,'Gainesville',1),(76,'Jacksonville',1),(77,'Key West',1),(78,'Miami',1),(79,'Orlando',1),(80,'Pensacola',1),(81,'Tallahassee',1),(82,'Tampa',1),(83,'Vero Beach',1),(84,'West Palm Beach',1),(85,'Alma',1),(86,'Athens',1),(87,'Atlanta',1),(88,'Augusta',1),(89,'Macon',1),(90,'Savannah',1),(91,'Hilo',1),(92,'Honolulu',1),(93,'Kahului',1),(94,'Kaunakakai',1),(95,'Lihue',1),(96,'Boise',1),(97,'Lewiston',1),(98,'Pocatello',1),(99,'Chicago',1),(100,'Moline',1),(101,'Peoria',1),(102,'Quincy',1),(103,'Rockford',1),(104,'Springfield',1),(105,'Evansville',1),(106,'Fort Wayne',1),(107,'Indianapolis',1),(108,'South Bend',1),(109,'Cedar Rapids',1),(110,'Des Moines',1),(111,'Dubuque',1),(112,'Sioux City',1),(113,'Waterloo',1),(114,'Concordia',1),(115,'Dodge City',1),(116,'Goodland',1),(117,'Medicine Lodge',1),(118,'Topeka',1),(119,'Wichita',1),(120,'Covington',1),(121,'Jackson',1),(122,'Lexington',1),(123,'Louisville',1),(124,'Paducah',1),(125,'Baton Rouge',1),(126,'Lake Charles',1),(127,'New Orleans',1),(128,'Shreveport',1),(129,'Slidell',1),(130,'Bangor',1),(131,'Caribou',1),(132,'Portland',1),(133,'Baltimore',1),(134,'Salisbury',1),(135,'Boston',1),(136,'Milton',1),(137,'Worcester',1),(138,'Alpena',1),(139,'Detroit',1),(140,'Flint',1),(141,'Grand Rapids',1),(142,'Houghton Lake',1),(143,'Lansing',1),(144,'Marquette',1),(145,'Muskegon',1),(146,'Sault Ste Marie',1),(147,'Duluth',1),(148,'International Falls',1),(149,'Minneapolis',1),(150,'Rochester',1),(151,'St Cloud',1),(152,'Greenville',1),(153,'Greenwood',1),(154,'Gulfport',1),(155,'Hattiesburg',1),(156,'Meridian',1),(157,'Tupelo',1),(158,'Cape Girardeau',1),(159,'Columbia',1),(160,'Kansas City',1),(161,'Rolla/Vichy',1),(162,'St Joseph',1),(163,'St Louis',1),(164,'Billings',1),(165,'Butte',1),(166,'Cut Bank',1),(167,'Dillon',1),(168,'Glasgow',1),(169,'Great Falls',1),(170,'Havre',1),(171,'Helena',1),(172,'Kalispell',1),(173,'Miles City',1),(174,'Missoula',1),(175,'Grand Island',1),(176,'Lincoln',1),(177,'Norfolk',1),(178,'North Platte',1),(179,'Omaha',1),(180,'Scottsbluff',1),(181,'Sidney',1),(182,'Valentine',1),(183,'Ely',1),(184,'Las Vegas',1),(185,'Mercury',1),(186,'Reno',1),(187,'Winnemucca',1),(188,'Mt. Washington',1),(189,'Atlantic City',1),(190,'Albuquerque',1),(191,'Clayton',1),(192,'Roswell',1),(193,'Albany',1),(194,'Binghamton',1),(195,'Buffalo',1),(196,'Glens Falls',1),(197,'Islip',1),(198,'New York',1),(199,'Syracuse',1),(200,'Asheville',1),(201,'Cape Hatteras',1),(202,'Charlotte',1),(203,'Greensboro',1),(204,'Hickory',1),(205,'Raleigh/Durham',1),(206,'Bismarck',1),(207,'Dickinson',1),(208,'Fargo',1),(209,'Grand Forks',1),(210,'Williston',1),(211,'Akron',1),(212,'Cleveland',1),(213,'Columbus',1),(214,'Dayton',1),(215,'Mansfield',1),(216,'Toledo',1),(217,'Youngstown/Warren',1),(218,'Gage',1),(219,'Oklahoma City',1),(220,'Ponca City',1),(221,'Tulsa',1),(222,'Astoria',1),(223,'Burns',1),(224,'Eugene',1),(225,'Medford',1),(226,'Pendleton',1),(227,'Redmond',1),(228,'Salem',1),(229,'Allentown',1),(230,'Erie',1),(231,'Harrisburg',1),(232,'Philadelphia',1),(233,'Pittsburgh',1),(234,'Wilkes-Barre/Scranton',1),(235,'Williamsport',1),(236,'San Juan',1),(237,'Providence',1),(238,'Anderson',1),(239,'Charleston',1),(240,'Greer',1),(241,'Aberdeen',1),(242,'Huron',1),(243,'Pierre',1),(244,'Rapid City',1),(245,'Sioux Falls',1),(246,'Bristol/Jhnsn Cty/Kngsprt',1),(247,'Chattanooga',1),(248,'Clarksville',1),(249,'Crossville',1),(250,'Knoxville',1),(251,'Memphis',1),(252,'Nashville',1),(253,'Oak Ridge',1),(254,'Abilene',1),(255,'Amarillo',1),(256,'Austin/Bergstrom',1),(257,'Austin/City',1),(258,'Beaumont/Port Arthur',1),(259,'Brownsville',1),(260,'Childress',1),(261,'College Station',1),(262,'Corpus Christi',1),(263,'Dalhart',1),(264,'Dallas',1),(265,'Dallas-Fort Worth',1),(266,'Del Rio',1),(267,'El Paso',1),(268,'Fort Worth',1),(269,'Galveston',1),(270,'Houston',1),(271,'Lubbock',1),(272,'Midland',1),(273,'San Angelo',1),(274,'San Antonio',1),(275,'Victoria',1),(276,'Waco',1),(277,'Wichita Falls',1),(278,'Salt Lake City',1),(279,'Blacksburg',1),(280,'Burlington',1),(281,'Lynchburg',1),(282,'Richmond',1),(283,'Roanoke',1),(284,'Wallops Island',1),(285,'Washington',1),(286,'Deer Park',1),(287,'Ephrata',1),(288,'Olympia',1),(289,'Quillayute',1),(290,'Seattle',1),(291,'Spokane',1),(292,'Yakima',1),(293,'Beckley',1),(294,'Elkins',1),(295,'Huntington',1),(296,'Green Bay',1),(297,'La Crosse',1),(298,'Madison',1),(299,'Milwaukee',1),(300,'Casper',1),(301,'Cheyenne',1),(302,'Lander',1),(303,'Rawlins',1),(304,'Sheridan',1),(305,'Gustavus',1),(306,'Wrangell',1),(307,'Unalakleet',1);
/*!40000 ALTER TABLE `weather_city` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 13:09:03
