-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sit_database
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `expired` bit(1) NOT NULL,
  `revoked` bit(1) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_type` enum('BEARER') DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `last_modified_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_pddrhgwxnms2aceeku9s2ewy5` (`token`),
  KEY `FKe32ek7ixanakfqsdaokm4q9y2` (`user_id`),
  CONSTRAINT `FKe32ek7ixanakfqsdaokm4q9y2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,_binary '',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiU1RVREVOVCIsInN1YiI6IjIxQ0QwNTYiLCJpYXQiOjE3MDY4ODEwNTIsImV4cCI6MTcwNjk2NzQ1Mn0.HH3fix5a5Xv59e_VLzXsrmesmS7_ryPYNqUdTx9wO9w','BEARER',1,'2024-02-02 08:37:32.726319','2024-02-02 08:38:11.323094'),(2,_binary '',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiU1RVREVOVCIsInN1YiI6IjIxQ0QwNTYiLCJpYXQiOjE3MDY4ODEwOTEsImV4cCI6MTcwNjk2NzQ5MX0.qIWiDj5-1ZNOTVWHAsRlbOuDeLdWqdaUKuXRBPzxY7E','BEARER',1,'2024-02-02 08:38:11.338725','2024-02-02 09:06:41.409190'),(3,_binary '',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiU1RVREVOVCIsInN1YiI6IjIxQ0QwNTYiLCJpYXQiOjE3MDY4ODI4MjQsImV4cCI6MTcwNjk2OTIyNH0.paPwdMGCtm7Glc2D81SYs914dBp-uuQZ_Jl8voKX4Xk','BEARER',1,'2024-02-02 09:07:04.921480','2024-02-02 09:10:11.433082'),(4,_binary '',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiU1RVREVOVCIsInN1YiI6IjIxQ0QwNTYiLCJpYXQiOjE3MDY4ODMwMTEsImV4cCI6MTcwNjk2OTQxMX0.cVBMxhilXBFUII-ImXJkyNsbXPWgxvpy8Xtb-beJaoE','BEARER',1,'2024-02-02 09:10:11.465085','2024-02-02 09:13:13.956606'),(5,_binary '',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiU1RBRkYiLCJzdWIiOiJGRDI0MDAzIiwiaWF0IjoxNzA2ODgzNjMwLCJleHAiOjE3MDY5NzAwMzB9.EHS5f6wNluR1Ujj9tGKgsOJQ98CpC8gckqW5EbYQZjo','BEARER',2,'2024-02-02 09:20:30.453154','2024-02-02 09:20:50.303655'),(6,_binary '',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiU1RBRkYiLCJzdWIiOiJGRDI0MDAzIiwiaWF0IjoxNzA2ODgzNjUwLCJleHAiOjE3MDY5NzAwNTB9.Aki5D-lGzA2MKags2ZP1V5QbDL0BicKcPh-GJRXjKxY','BEARER',2,'2024-02-02 09:20:50.321984','2024-02-03 07:54:43.837010'),(7,_binary '',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiU1RBRkYiLCJzdWIiOiJGRDI0MDAzIiwiaWF0IjoxNzA2OTY0ODgzLCJleHAiOjE3MDcwNTEyODN9.x6jMmX7nQlc5BsKpELXQo8fZPu3RRZpkZdkb-OPRPeA','BEARER',2,'2024-02-03 07:54:43.879803','2024-02-04 01:53:33.601692'),(8,_binary '',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiU1RBRkYiLCJzdWIiOiJGRDI0MDAzIiwiaWF0IjoxNzA3MDI5NjEzLCJleHAiOjE3MDcxMTYwMTN9.s2iWZBUdMXY9NppTs_Q2pfMVHO_1UF8iBmzQy9xj4zs','BEARER',2,'2024-02-04 01:53:33.642693','2024-02-04 06:32:34.099296'),(9,_binary '',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiU1RBRkYiLCJzdWIiOiJGRDI0MDAzIiwiaWF0IjoxNzA3MDQ2MzUzLCJleHAiOjE3MDcxMzI3NTN9.N5Dnf8T3NBstYELtsh-zl1d0j4Ukp8PZWFw2hF_DFtw','BEARER',2,'2024-02-04 06:32:34.149343','2024-02-04 07:32:09.237977'),(10,_binary '',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQURNSU4iLCJzdWIiOiJGRDI0MDA0IiwiaWF0IjoxNzA3MDUwMjk1LCJleHAiOjE3MDcxMzY2OTV9.1pjTEW0GrHPule2gcLsMRmocWZQCAV5TvpnphiQneKY','BEARER',3,'2024-02-04 07:38:15.058032','2024-02-04 07:38:42.866606'),(11,_binary '',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQURNSU4iLCJzdWIiOiJGRDI0MDA0IiwiaWF0IjoxNzA3MDUwMzIyLCJleHAiOjE3MDcxMzY3MjJ9.-8bmJihUqdrwiN3ubDxprp2ZayOCXI_9OienCRbc-y4','BEARER',3,'2024-02-04 07:38:42.890722','2024-02-04 08:18:06.266538'),(12,_binary '',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiU1RBRkYiLCJzdWIiOiJGRDI0MDAzIiwiaWF0IjoxNzA3MDUyNjk5LCJleHAiOjE3MDcxMzkwOTl9.v1USapG7PmTRimq9pbI73yLjS5AAM2FGnN300z67544','BEARER',2,'2024-02-04 08:18:19.967636','2024-02-04 08:22:19.525326'),(13,_binary '',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiU1RVREVOVCIsInN1YiI6IjIxQ0QwNTYiLCJpYXQiOjE3MDcwNTI5NzAsImV4cCI6MTcwNzEzOTM3MH0.y0sooJTtho5sbdzJ14svP-RCcu2EPajL1vOZdK1-OUM','BEARER',1,'2024-02-04 08:22:50.735694','2024-02-04 08:35:06.137438'),(14,_binary '',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQURNSU4iLCJzdWIiOiJGRDI0MDA0IiwiaWF0IjoxNzA3MDUzNzM0LCJleHAiOjE3MDcxNDAxMzR9.BJqaAPVL2_5-7zprWeJ_10_Slku5O3lkhnRKElCGwCI','BEARER',3,'2024-02-04 08:35:34.608422','2024-02-04 11:54:40.433145'),(15,_binary '',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQURNSU4iLCJzdWIiOiJGRDI0MDA0IiwiaWF0IjoxNzA3MDY1NjgwLCJleHAiOjE3MDcxNTIwODB9.zPCVT4l0OUMIUa_hT9TADJfovXdiFgJA6wl2OIBAs2U','BEARER',3,'2024-02-04 11:54:40.528066','2024-02-04 12:00:02.781339'),(16,_binary '\0',_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQURNSU4iLCJzdWIiOiJGRDI0MDA0IiwiaWF0IjoxNzA3MDY2MDAyLCJleHAiOjE3MDcxNTI0MDJ9.szsipfFjpuQGzHPXnHzUuXEeiB5alccGcAgSAtG1cVE','BEARER',3,'2024-02-04 12:00:02.825340','2024-02-04 12:00:02.825340');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-04 12:08:07
