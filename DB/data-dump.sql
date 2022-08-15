-- MariaDB dump 10.19  Distrib 10.5.10-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: plantreqs
-- ------------------------------------------------------
-- Server version	10.5.10-MariaDB

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
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `owner` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES (1,'test_device',1);
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `light_level`
--

DROP TABLE IF EXISTS `light_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `light_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) DEFAULT NULL,
  `min` varchar(45) DEFAULT NULL,
  `max` varchar(45) DEFAULT NULL,
  `notes` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `category_UNIQUE` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `light_level`
--

LOCK TABLES `light_level` WRITE;
/*!40000 ALTER TABLE `light_level` DISABLE KEYS */;
INSERT INTO `light_level` VALUES (1,'darkness','0','199','effectively no light'),(2,'very low','200','499','inappropriate for most plants'),(3,'low','500','999','good for shade-loving plants'),(4,'bright indirect','1000','1999','good for many types of plants that require indirect sunlight'),(5,'bright direct','2000','3999','appropriate for plants that require high light intensity'),(6,'strong direct','4000','4999','good for plants with high light requirements'),(7,'very bright','5000','5999','very bright indoor light');
/*!40000 ALTER TABLE `light_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `light_reading`
--

DROP TABLE IF EXISTS `light_reading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `light_reading` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `device_id` int(11) NOT NULL,
  `reading` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `light_reading`
--

LOCK TABLES `light_reading` WRITE;
/*!40000 ALTER TABLE `light_reading` DISABLE KEYS */;
INSERT INTO `light_reading` VALUES (1,'2022-08-12','01:02:03',1,234),(2,'2022-08-14','03:12:18',1,279),(3,'2022-08-14','03:14:27',1,334),(4,'2022-08-14','03:24:18',1,374),(5,'2022-08-14','03:34:15',1,393),(6,'2022-08-14','03:44:13',1,404),(7,'2022-08-14','03:54:12',1,406),(8,'2022-08-14','04:04:12',1,409),(9,'2022-08-14','04:14:12',1,410),(10,'2022-08-14','04:24:13',1,407),(11,'2022-08-14','04:34:14',1,402),(12,'2022-08-14','04:44:14',1,403),(13,'2022-08-14','04:54:13',1,410),(14,'2022-08-14','05:04:12',1,411),(15,'2022-08-14','05:14:13',1,413),(16,'2022-08-14','05:24:13',1,412),(17,'2022-08-14','05:34:13',1,413),(18,'2022-08-14','05:44:12',1,416),(19,'2022-08-14','05:54:12',1,418),(20,'2022-08-14','06:04:12',1,418),(21,'2022-08-14','06:14:09',1,444),(22,'2022-08-14','06:24:08',1,456),(23,'2022-08-14','06:33:58',1,587),(24,'2022-08-14','06:43:51',1,797),(25,'2022-08-14','06:53:48',1,1046),(26,'2022-08-14','07:03:46',1,1334),(27,'2022-08-14','07:13:46',1,1466),(28,'2022-08-14','07:23:46',1,1395),(29,'2022-08-14','07:33:46',1,1334),(30,'2022-08-14','07:43:47',1,1307),(31,'2022-08-14','07:53:47',1,1258),(32,'2022-08-14','08:03:45',1,1920),(33,'2022-08-14','08:13:45',1,2055),(34,'2022-08-14','08:23:45',1,2202),(35,'2022-08-14','08:33:45',1,2394),(36,'2022-08-14','08:43:45',1,2603),(37,'2022-08-14','08:53:45',1,2771),(38,'2022-08-14','09:03:45',1,2969),(39,'2022-08-14','09:13:45',1,3152),(40,'2022-08-14','09:23:45',1,3335),(41,'2022-08-14','09:33:45',1,3517),(42,'2022-08-14','09:43:45',1,3782),(43,'2022-08-14','09:53:45',1,4492),(44,'2022-08-14','10:03:45',1,4976),(45,'2022-08-14','10:13:45',1,5297),(46,'2022-08-14','10:23:46',1,5578),(47,'2022-08-14','10:33:46',1,5682),(48,'2022-08-14','10:43:46',1,5829),(49,'2022-08-14','10:53:46',1,5831),(50,'2022-08-14','11:03:46',1,4978),(51,'2022-08-14','11:13:46',1,4337),(52,'2022-08-14','11:23:46',1,6571),(53,'2022-08-14','11:33:46',1,3261),(54,'2022-08-14','11:43:46',1,6266),(55,'2022-08-14','11:53:46',1,6177),(56,'2022-08-14','12:03:46',1,6088),(57,'2022-08-14','12:13:47',1,6003),(58,'2022-08-14','12:23:47',1,5973),(59,'2022-08-14','12:33:47',1,6294),(60,'2022-08-14','12:43:47',1,13526),(61,'2022-08-14','12:53:47',1,13392),(62,'2022-08-14','13:03:47',1,11106),(63,'2022-08-14','13:13:47',1,11432),(64,'2022-08-14','13:23:47',1,12381),(65,'2022-08-14','13:33:47',1,12414),(66,'2022-08-14','13:43:47',1,13289),(67,'2022-08-14','13:53:47',1,13073),(68,'2022-08-14','14:03:47',1,11112),(69,'2022-08-14','14:13:48',1,6874),(70,'2022-08-14','14:23:48',1,5193),(71,'2022-08-14','14:33:48',1,4828),(72,'2022-08-14','14:43:48',1,4038),(73,'2022-08-14','14:53:50',1,1625),(74,'2022-08-14','15:03:48',1,4391),(75,'2022-08-14','15:13:48',1,5601),(76,'2022-08-14','15:23:48',1,5040),(77,'2022-08-14','15:33:49',1,3709),(78,'2022-08-14','15:43:49',1,3192),(79,'2022-08-14','15:53:49',1,2989),(80,'2022-08-14','16:03:49',1,2860),(81,'2022-08-14','16:13:49',1,2620),(82,'2022-08-14','16:23:50',1,2358),(83,'2022-08-14','16:33:50',1,2079),(84,'2022-08-14','16:43:50',1,1982),(85,'2022-08-14','16:53:50',1,1989),(86,'2022-08-14','17:03:51',1,1779),(87,'2022-08-14','17:13:51',1,1543),(88,'2022-08-14','17:23:52',1,1362),(89,'2022-08-14','17:33:52',1,1335),(90,'2022-08-14','17:43:52',1,1363),(91,'2022-08-14','17:53:53',1,1235),(92,'2022-08-14','18:03:53',1,1258),(93,'2022-08-14','18:13:53',1,1364),(94,'2022-08-14','18:23:53',1,1394),(95,'2022-08-14','18:33:53',1,1363),(96,'2022-08-14','18:43:52',1,1502),(97,'2022-08-14','18:53:53',1,1395),(98,'2022-08-14','19:03:53',1,1334),(99,'2022-08-14','19:13:54',1,1193),(100,'2022-08-14','19:23:57',1,879),(101,'2022-08-14','19:34:06',1,578),(102,'2022-08-14','19:44:09',1,525),(103,'2022-08-14','19:54:12',1,493),(104,'2022-08-14','20:04:17',1,439),(105,'2022-08-14','20:14:17',1,442),(106,'2022-08-14','20:24:18',1,438),(107,'2022-08-14','20:34:18',1,440),(108,'2022-08-14','20:44:17',1,443),(109,'2022-08-14','20:54:17',1,443),(110,'2022-08-14','21:04:18',1,440),(111,'2022-08-14','21:14:18',1,436),(112,'2022-08-14','21:24:18',1,438),(113,'2022-08-14','21:34:18',1,443),(114,'2022-08-14','21:44:18',1,444),(115,'2022-08-14','21:54:13',1,487),(116,'2022-08-14','22:04:11',1,513),(117,'2022-08-14','22:14:18',1,443),(118,'2022-08-14','22:24:18',1,444),(119,'2022-08-14','22:34:18',1,446),(120,'2022-08-14','22:44:18',1,446),(121,'2022-08-14','22:54:18',1,445),(122,'2022-08-14','23:04:18',1,446),(123,'2022-08-14','23:14:18',1,450),(126,'2022-08-14','23:33:07',2,384),(127,'2022-08-14','23:43:03',2,339),(128,'2022-08-14','23:53:04',2,336),(129,'2022-08-15','00:03:04',2,335),(130,'2022-08-15','00:13:05',2,333),(131,'2022-08-15','00:23:07',2,328),(132,'2022-08-15','00:33:06',2,330),(133,'2022-08-15','00:43:06',2,329),(134,'2022-08-15','00:53:06',2,329),(135,'2022-08-15','01:03:08',2,326),(136,'2022-08-15','01:13:08',2,324),(137,'2022-08-15','01:23:09',2,323),(138,'2022-08-15','01:33:09',2,322),(139,'2022-08-15','01:43:09',2,322),(140,'2022-08-15','01:53:10',2,321),(141,'2022-08-15','02:03:10',2,320),(142,'2022-08-15','02:13:10',2,320),(143,'2022-08-15','02:23:11',2,318),(144,'2022-08-15','02:33:10',2,321),(145,'2022-08-15','02:43:11',2,320),(146,'2022-08-15','02:53:11',2,318),(147,'2022-08-15','03:03:12',2,316),(148,'2022-08-15','03:13:11',2,320),(149,'2022-08-15','03:23:12',2,316),(150,'2022-08-15','03:33:12',2,316),(151,'2022-08-15','03:43:12',2,316),(152,'2022-08-15','03:53:12',2,316),(153,'2022-08-15','04:03:09',2,329),(154,'2022-08-15','04:13:05',2,342),(155,'2022-08-15','04:23:04',2,345),(156,'2022-08-15','04:33:04',2,346),(157,'2022-08-15','04:43:06',2,337),(158,'2022-08-15','04:53:11',2,322),(159,'2022-08-15','05:03:13',2,317),(160,'2022-08-15','05:13:07',2,337),(161,'2022-08-15','05:23:04',2,347),(162,'2022-08-15','05:33:04',2,349),(163,'2022-08-15','05:43:03',2,353),(164,'2022-08-15','05:53:07',2,336),(165,'2022-08-15','06:03:07',2,337),(166,'2022-08-15','06:13:03',2,355),(167,'2022-08-15','06:23:00',2,366),(168,'2022-08-15','06:32:55',2,392),(169,'2022-08-15','06:42:47',2,455),(170,'2022-08-15','06:52:43',2,492),(171,'2022-08-15','07:02:43',2,497),(172,'2022-08-15','07:12:34',2,672),(173,'2022-08-15','07:22:27',2,1032),(174,'2022-08-15','07:32:30',2,827),(175,'2022-08-15','07:42:26',2,1173),(176,'2022-08-15','07:52:26',2,1278),(177,'2022-08-15','08:02:26',2,1394),(178,'2022-08-15','08:12:25',2,1543),(179,'2022-08-15','08:22:25',2,1639),(180,'2022-08-15','08:32:24',2,2088),(181,'2022-08-15','08:42:24',2,2183),(182,'2022-08-15','08:52:24',2,2470),(183,'2022-08-15','09:02:24',2,2435),(184,'2022-08-15','09:12:24',2,2547),(185,'2022-08-15','09:22:25',2,2333),(186,'2022-08-15','09:32:25',2,2500),(187,'2022-08-15','09:42:25',2,2558),(188,'2022-08-15','09:52:25',2,2854),(189,'2022-08-15','10:02:25',2,3167);
/*!40000 ALTER TABLE `light_reading` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant`
--

DROP TABLE IF EXISTS `plant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scientific_name` varchar(45) NOT NULL,
  `common_name` varchar(45) DEFAULT NULL,
  `light_requirement` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`scientific_name`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant`
--

LOCK TABLES `plant` WRITE;
/*!40000 ALTER TABLE `plant` DISABLE KEYS */;
INSERT INTO `plant` VALUES (1,'epipremnum aureum','Chinese money plant',4),(2,'alocasia','african mask',4),(3,'saintpaulia lonantha','African violet',4),(4,'tillandsia spp.','air plant',4),(5,'aloe vera','aloe',5),(6,'anthurium spp.','anthurium',4),(7,'asparagus aethiopicus','asparagus fern',3),(8,'Musa spp.','banana plant',6),(9,'begonia spp.','begonia',3),(10,'asplenium nidus','bird\'s nest fern',3),(11,'aechmea spp.','Bromeliad',4),(12,'calathea spp.','calathea',3),(13,'aspidistra elatior','cast-iron plant',2),(14,'aglaonema','Chinese evergreen',3),(15,'schlumbergera bridgesii','christmas cactus',4),(16,'euphorbia milii','crown of thorns',5),(17,'dracaena marginata','dragon tree',1),(18,'hedera helix (juvenile)','english ivy (juvenile)',2),(19,'hedera helix (mature)','english ivy (mature)',6);
/*!40000 ALTER TABLE `plant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Test','User');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-15 14:07:20
