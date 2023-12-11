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
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status_id` int unsigned NOT NULL,
  `priority_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  `assigned_to_user_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_fk_583763` (`status_id`),
  KEY `priority_fk_583764` (`priority_id`),
  KEY `category_fk_583765` (`category_id`),
  KEY `assigned_to_user_fk_583768` (`assigned_to_user_id`),
  CONSTRAINT `assigned_to_user_fk_583768` FOREIGN KEY (`assigned_to_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `category_fk_583765` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `priority_fk_583764` FOREIGN KEY (`priority_id`) REFERENCES `priorities` (`id`),
  CONSTRAINT `status_fk_583763` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'Error','Hay un error','Nicolas','nicolasrosende@ej.com','2023-12-05 07:23:21','2023-12-05 10:14:29',NULL,2,2,3,2),(2,'Hi','Hola','Nicolas','admin@admin.com','2023-12-05 07:39:17','2023-12-05 07:40:59','2023-12-05 07:40:59',1,1,1,NULL),(3,'Test','Kore wa \'shiren\' da','Nicolas','nicolasrosende@ej.com','2023-12-05 08:49:10','2023-12-05 08:49:10',NULL,1,1,1,NULL),(4,'Prueba 2','Hola','Nicolas','admin@admin.com','2023-12-05 10:24:04','2023-12-05 10:24:04',NULL,2,1,3,NULL),(5,'Prueba 2','Hola','Nicolas','admin@admin.com','2023-12-05 10:25:00','2023-12-05 10:25:00',NULL,2,1,3,NULL),(6,'Prueba 2','Hola','Nicolas','admin@admin.com','2023-12-05 10:25:47','2023-12-05 10:25:47',NULL,2,1,3,NULL),(7,'Hola','Esto es una prueba','Nicolas','hola@ej.com','2023-12-05 10:26:17','2023-12-05 10:26:17',NULL,1,1,1,NULL),(8,'Hola','Hola','Nicolas','nicolasrosende@ej.com','2023-12-05 12:16:55','2023-12-05 12:16:55',NULL,1,1,1,NULL);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 11:06:32
