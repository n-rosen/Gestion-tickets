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
-- Table structure for table `audit_logs`
--

DROP TABLE IF EXISTS `audit_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int unsigned DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `host` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_logs`
--

LOCK TABLES `audit_logs` WRITE;
/*!40000 ALTER TABLE `audit_logs` DISABLE KEYS */;
INSERT INTO `audit_logs` VALUES (1,'created',1,'App\\Ticket',NULL,'{\"author_name\":\"Nicolas\",\"author_email\":\"nicolas@ej.com\",\"title\":\"Error\",\"content\":\"Hay un error\",\"category_id\":1,\"status_id\":1,\"priority_id\":1,\"updated_at\":\"2023-12-05T08:23:21.000000Z\",\"created_at\":\"2023-12-05T08:23:21.000000Z\",\"id\":1,\"attachments\":[],\"media\":[]}','127.0.0.1','2023-12-05 07:23:21','2023-12-05 07:23:21'),(2,'updated',1,'App\\Ticket',1,'{\"id\":1,\"title\":\"Error\",\"content\":\"Hay un error\",\"author_name\":\"Nicolas\",\"author_email\":\"nicolas@ej.com\",\"created_at\":\"2023-12-05T08:23:21.000000Z\",\"updated_at\":\"2023-12-05T08:26:01.000000Z\",\"deleted_at\":null,\"status_id\":\"1\",\"priority_id\":\"1\",\"category_id\":\"3\",\"assigned_to_user_id\":\"2\",\"attachments\":[],\"media\":[]}','127.0.0.1','2023-12-05 07:26:01','2023-12-05 07:26:01'),(3,'updated',1,'App\\Ticket',1,'{\"id\":1,\"title\":\"Error\",\"content\":\"Hay un error\",\"author_name\":\"Nicolas\",\"author_email\":\"nicolas@ej.com\",\"created_at\":\"2023-12-05T08:23:21.000000Z\",\"updated_at\":\"2023-12-05T08:38:39.000000Z\",\"deleted_at\":null,\"status_id\":\"1\",\"priority_id\":\"1\",\"category_id\":\"3\",\"assigned_to_user_id\":null,\"attachments\":[],\"media\":[]}','127.0.0.1','2023-12-05 07:38:39','2023-12-05 07:38:39'),(4,'created',2,'App\\Ticket',NULL,'{\"author_name\":\"Nicolas\",\"author_email\":\"admin@admin.com\",\"title\":\"Hi\",\"content\":\"Hola\",\"category_id\":1,\"status_id\":1,\"priority_id\":1,\"updated_at\":\"2023-12-05T08:39:17.000000Z\",\"created_at\":\"2023-12-05T08:39:17.000000Z\",\"id\":2,\"attachments\":[],\"media\":[]}','127.0.0.1','2023-12-05 07:39:17','2023-12-05 07:39:17'),(5,'updated',1,'App\\Ticket',1,'{\"id\":1,\"title\":\"Error\",\"content\":\"Hay un error\",\"author_name\":\"Nicolas\",\"author_email\":\"nicolas@ej.com\",\"created_at\":\"2023-12-05T08:23:21.000000Z\",\"updated_at\":\"2023-12-05T08:40:53.000000Z\",\"deleted_at\":null,\"status_id\":\"2\",\"priority_id\":\"2\",\"category_id\":\"3\",\"assigned_to_user_id\":null,\"attachments\":[],\"media\":[]}','127.0.0.1','2023-12-05 07:40:53','2023-12-05 07:40:53'),(6,'deleted',2,'App\\Ticket',1,'{\"id\":2,\"title\":\"Hi\",\"content\":\"Hola\",\"author_name\":\"Nicolas\",\"author_email\":\"admin@admin.com\",\"created_at\":\"2023-12-05T08:39:17.000000Z\",\"updated_at\":\"2023-12-05T08:40:59.000000Z\",\"deleted_at\":\"2023-12-05T08:40:59.000000Z\",\"status_id\":1,\"priority_id\":1,\"category_id\":1,\"assigned_to_user_id\":null,\"attachments\":[],\"media\":[]}','127.0.0.1','2023-12-05 07:40:59','2023-12-05 07:40:59'),(7,'created',3,'App\\Ticket',NULL,'{\"author_name\":\"Nicolas\",\"author_email\":\"nicolas@ej.com\",\"title\":\"Test\",\"content\":\"Kore wa \'shiren\' da\",\"category_id\":1,\"status_id\":1,\"priority_id\":1,\"updated_at\":\"2023-12-05T09:49:10.000000Z\",\"created_at\":\"2023-12-05T09:49:10.000000Z\",\"id\":3,\"attachments\":[],\"media\":[]}','127.0.0.1','2023-12-05 08:49:10','2023-12-05 08:49:10'),(8,'updated',1,'App\\Ticket',1,'{\"id\":1,\"title\":\"Error\",\"content\":\"Hay un error\",\"author_name\":\"Nicolas\",\"author_email\":\"nicolas@ej.com\",\"created_at\":\"2023-12-05T08:23:21.000000Z\",\"updated_at\":\"2023-12-05T11:14:29.000000Z\",\"deleted_at\":null,\"status_id\":\"2\",\"priority_id\":\"2\",\"category_id\":\"3\",\"assigned_to_user_id\":\"2\",\"attachments\":[],\"media\":[]}','127.0.0.1','2023-12-05 10:14:29','2023-12-05 10:14:29'),(9,'created',4,'App\\Ticket',1,'{\"title\":\"Prueba 2\",\"content\":\"Hola\",\"status_id\":\"2\",\"priority_id\":\"1\",\"category_id\":\"3\",\"author_name\":\"Nicolas\",\"author_email\":\"admin@admin.com\",\"assigned_to_user_id\":null,\"updated_at\":\"2023-12-05T11:24:04.000000Z\",\"created_at\":\"2023-12-05T11:24:04.000000Z\",\"id\":4,\"attachments\":[],\"media\":[]}','127.0.0.1','2023-12-05 10:24:04','2023-12-05 10:24:04'),(10,'created',5,'App\\Ticket',1,'{\"title\":\"Prueba 2\",\"content\":\"Hola\",\"status_id\":\"2\",\"priority_id\":\"1\",\"category_id\":\"3\",\"author_name\":\"Nicolas\",\"author_email\":\"admin@admin.com\",\"assigned_to_user_id\":null,\"updated_at\":\"2023-12-05T11:25:00.000000Z\",\"created_at\":\"2023-12-05T11:25:00.000000Z\",\"id\":5,\"attachments\":[],\"media\":[]}','127.0.0.1','2023-12-05 10:25:00','2023-12-05 10:25:00'),(11,'created',6,'App\\Ticket',1,'{\"title\":\"Prueba 2\",\"content\":\"Hola\",\"status_id\":\"2\",\"priority_id\":\"1\",\"category_id\":\"3\",\"author_name\":\"Nicolas\",\"author_email\":\"admin@admin.com\",\"assigned_to_user_id\":null,\"updated_at\":\"2023-12-05T11:25:47.000000Z\",\"created_at\":\"2023-12-05T11:25:47.000000Z\",\"id\":6,\"attachments\":[],\"media\":[]}','127.0.0.1','2023-12-05 10:25:47','2023-12-05 10:25:47'),(12,'created',7,'App\\Ticket',NULL,'{\"author_name\":\"Nicolas\",\"author_email\":\"hola@ej.com\",\"title\":\"Hola\",\"content\":\"Esto es una prueba\",\"category_id\":1,\"status_id\":1,\"priority_id\":1,\"updated_at\":\"2023-12-05T11:26:17.000000Z\",\"created_at\":\"2023-12-05T11:26:17.000000Z\",\"id\":7,\"attachments\":[],\"media\":[]}','127.0.0.1','2023-12-05 10:26:18','2023-12-05 10:26:18'),(13,'created',8,'App\\Ticket',NULL,'{\"author_name\":\"Nicolas\",\"author_email\":\"nicolas@ej.com\",\"title\":\"Hola\",\"content\":\"Hola\",\"category_id\":1,\"status_id\":1,\"priority_id\":1,\"updated_at\":\"2023-12-05T13:16:55.000000Z\",\"created_at\":\"2023-12-05T13:16:55.000000Z\",\"id\":8,\"attachments\":[],\"media\":[]}','127.0.0.1','2023-12-05 12:16:55','2023-12-05 12:16:55');
/*!40000 ALTER TABLE `audit_logs` ENABLE KEYS */;
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
