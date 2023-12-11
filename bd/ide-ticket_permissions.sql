-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: ide-ticket
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'user_management_access',NULL,NULL,NULL),(2,'permission_create',NULL,NULL,NULL),(3,'permission_edit',NULL,NULL,NULL),(4,'permission_show',NULL,NULL,NULL),(5,'permission_delete',NULL,NULL,NULL),(6,'permission_access',NULL,NULL,NULL),(7,'role_create',NULL,NULL,NULL),(8,'role_edit',NULL,NULL,NULL),(9,'role_show',NULL,NULL,NULL),(10,'role_delete',NULL,NULL,NULL),(11,'role_access',NULL,NULL,NULL),(12,'user_create',NULL,NULL,NULL),(13,'user_edit',NULL,NULL,NULL),(14,'user_show',NULL,NULL,NULL),(15,'user_delete',NULL,NULL,NULL),(16,'user_access',NULL,NULL,NULL),(17,'status_create',NULL,NULL,NULL),(18,'status_edit',NULL,NULL,NULL),(19,'status_show',NULL,NULL,NULL),(20,'status_delete',NULL,NULL,NULL),(21,'status_access',NULL,NULL,NULL),(22,'priority_create',NULL,NULL,NULL),(23,'priority_edit',NULL,NULL,NULL),(24,'priority_show',NULL,NULL,NULL),(25,'priority_delete',NULL,NULL,NULL),(26,'priority_access',NULL,NULL,NULL),(27,'category_create',NULL,NULL,NULL),(28,'category_edit',NULL,NULL,NULL),(29,'category_show',NULL,NULL,NULL),(30,'category_delete',NULL,NULL,NULL),(31,'category_access',NULL,NULL,NULL),(32,'ticket_create',NULL,NULL,NULL),(33,'ticket_edit',NULL,NULL,NULL),(34,'ticket_show',NULL,NULL,NULL),(35,'ticket_delete',NULL,NULL,NULL),(36,'ticket_access',NULL,NULL,NULL),(37,'comment_create',NULL,NULL,NULL),(38,'comment_edit',NULL,NULL,NULL),(39,'comment_show',NULL,NULL,NULL),(40,'comment_delete',NULL,NULL,NULL),(41,'comment_access',NULL,NULL,NULL),(42,'audit_log_show',NULL,NULL,NULL),(43,'audit_log_access',NULL,NULL,NULL),(44,'dashboard_access',NULL,NULL,NULL),(45,'seeownticket','2023-12-05 12:40:54','2023-12-05 12:40:54',NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 11:06:33
