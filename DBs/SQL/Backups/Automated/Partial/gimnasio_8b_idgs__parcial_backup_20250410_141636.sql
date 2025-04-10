-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: gimnasio_8b_idgs_
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `tbb_usuarios`
--

DROP TABLE IF EXISTS `tbb_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_usuarios` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(60) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `numero_telefonico_movil` varchar(20) NOT NULL,
  `estatus` enum('Activo','Inactivo') NOT NULL DEFAULT 'Activo',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `rol` enum('Usuario','Administrador') DEFAULT 'Usuario',
  PRIMARY KEY (`ID`),
  KEY `ix_tbb_usuarios_ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_usuarios`
--

LOCK TABLES `tbb_usuarios` WRITE;
/*!40000 ALTER TABLE `tbb_usuarios` DISABLE KEYS */;
INSERT INTO `tbb_usuarios` VALUES (2,'dulcecrugal','dulcecrugal@gmail.com','1234','7761185790','Activo','2025-03-12 13:04:35',NULL,'Usuario'),(3,'karmina','karminagalindo@gmail.com','1234','7641130272','Activo','2025-03-17 00:15:17','2025-03-17 00:15:17','Usuario'),(4,'danyuwu','dany@gmail.com','1234','7751801015','Activo','2025-03-17 03:22:10','2025-03-17 03:22:10','Usuario'),(5,'yuli','yuli@gmail.com','$2b$12$7zMrPIEdtmLA2ddrbFwbLuyahyoMnbTFuGn.nkm8qxfRLifNUyQsC','7651234567','Activo','2025-03-17 03:35:14',NULL,'Usuario'),(6,'damian','damian@gmail.com','$2b$12$7zMrPIEdtmLA2ddrbFwbLuyahyoMnbTFuGn.nkm8qxfRLifNUyQsC','7760986745','Activo','2025-03-17 03:43:12',NULL,'Usuario'),(7,'Daphne','daphne@gmail.com','12$2b$12$7zMrPIEdtmLA2ddrbFwbLuyahyoMnbTFuGn.nkm8qxfRLifNUyQsC34','7762349078','Activo','2025-03-17 03:54:01',NULL,'Usuario'),(8,'lolo','lolo@gmail.com','$2b$12$7zMrPIEdtmLA2ddrbFwbLuyahyoMnbTFuGn.nkm8qxfRLifNUyQsC','7762349078','Activo','2025-03-17 04:02:30',NULL,'Usuario'),(9,'bruno','brno@gmail.com','$2b$12$7zMrPIEdtmLA2ddrbFwbLuyahyoMnbTFuGn.nkm8qxfRLifNUyQsC','7768904567','Activo','2025-03-17 15:40:59',NULL,'Usuario'),(10,'nini','capi@gmail.com','$2b$12$eTYYKDB4mrOoTubjzolfh..KKYr1lsUTEJutyKo1Ccu1Q3g2q7eGK','7748904568','Activo','2025-03-17 16:03:53','2025-03-24 08:37:39','Administrador'),(11,'lizzy','lizzy@gmail.com','$2b$12$n80vLKN.s1P1cNdXBxKQvu77hpHIb2nMj.81CkDapI/KBHPalkg1.','9931234567','Activo','2025-03-17 23:25:21',NULL,'Administrador'),(12,'sasha','sashanwn@gmail.com','$2b$12$7zMrPIEdtmLA2ddrbFwbLuyahyoMnbTFuGn.nkm8qxfRLifNUyQsC','7748763962','Activo','2025-03-17 23:38:06',NULL,'Usuario'),(13,'orla','orla@gmail.com','$2b$12$yWV.i2XFO8VGzptqe1R4X.K0Tsiaac31nsPwlPhh7CPPM7I38vQsm','12345678','Activo','2025-03-18 04:39:03',NULL,'Administrador'),(14,'prueba','prueba@gmail.com','$2b$12$4UJpMCTkPDhog0XDm4ureOgFr3Pn47X/duUJFibI9wtt0r6cccVQi','123456789','Activo','2025-03-23 06:24:37',NULL,'Usuario'),(15,'bukele','bukele@gmail.com','$2b$12$v/3TAqKrrvrLyuyVisT4FeCDI2rJEsF./NUtVfue9lG3EDJEU7vWO','123456789','Activo','2025-03-24 04:19:46',NULL,'Usuario'),(16,'orlaaaa@gmail.com','orlaaaa@gmail.com','$2b$12$gppXc9uChTdcn0TtqxNuvOiPlSctXnVrcethrD9BpKOMkZOktv45u','123456789','Activo','2025-04-08 17:47:47',NULL,'Usuario'),(17,'admin','admin@example.com','admin123','1234567890','Activo','2025-04-10 13:38:26',NULL,'Administrador'),(18,'usuario1','usuario1@example.com','usuario123','0987654321','Activo','2025-04-10 13:38:26',NULL,'Usuario'),(19,'admin','admin@example.com','$2b$12$VheNpovsjkiM8Hd2hjVzcunAk7woxDEc8oCnKBI077fdaoXWaOYti','1234567890','Activo','2025-04-10 13:40:03',NULL,'Administrador'),(20,'usuario1','usuario1@example.com','$2b$12$7oidibMSeVEY4cmGcGcOjuFDmPOzYeebDZgnbzt7ewuNfooOh0Viu','0987654321','Activo','2025-04-10 13:40:03',NULL,'Usuario'),(21,'admin','admin@example.com','$2b$12$ssqUeDMGjKU2LshS6BjtJexAXr/cCdhOjBiMmhfr3GooCjyFXe3TG','1234567890','Activo','2025-04-10 13:40:34',NULL,'Administrador'),(22,'usuario1','usuario1@example.com','$2b$12$F3D5TXOgtJxoBpdtE43vk.bMCirKIEZIkBUyb6xMCyYy5audQILZy','0987654321','Activo','2025-04-10 13:40:34',NULL,'Usuario');
/*!40000 ALTER TABLE `tbb_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_dietas`
--

DROP TABLE IF EXISTS `tbc_dietas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_dietas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `Objetivo` enum('Perdida de Peso','Aumento de masa muscular','Mantenimiento') NOT NULL,
  `tipo_ejercicios_recomendados` enum('Cardio','Levantamiento de pesas','Ejercicios Tecnicos') NOT NULL,
  `dias_ejercicio` enum('1 dia a la semana','2 dias a la semana','3 dias a la semana','4 dias a la semana','5 dias a la semana') NOT NULL,
  `calorias_diarias` double NOT NULL,
  `observaciones` longtext,
  `Estatus` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_dietas`
--

LOCK TABLES `tbc_dietas` WRITE;
/*!40000 ALTER TABLE `tbc_dietas` DISABLE KEYS */;
INSERT INTO `tbc_dietas` VALUES (6,'Dieta hipocalorica','Perdida de Peso','Levantamiento de pesas','3 dias a la semana',12,'sq',_binary '','2025-03-21 03:10:27','2025-03-21 03:10:27'),(10,'Dieta hipoproteica','Perdida de Peso','Levantamiento de pesas','4 dias a la semana',2,'22',_binary '','2025-03-21 07:12:47','2025-03-21 07:12:47'),(11,'Dieta rica en fibra','Aumento de masa muscular','Levantamiento de pesas','4 dias a la semana',23,'ew',_binary '','2025-03-21 07:22:31','2025-03-21 07:22:31'),(12,'Dieta sin residuos','Perdida de Peso','Cardio','3 dias a la semana',12,'w',_binary '','2025-03-21 07:29:20','2025-03-21 07:29:20'),(13,'Dieta hipopurinica','Perdida de Peso','Cardio','2 dias a la semana',0,'j',_binary '','2025-03-21 07:33:06','2025-03-21 07:33:06'),(16,'Dieta hipograsa','Aumento de masa muscular','Cardio','5 dias a la semana',24,'242424',_binary '','2025-03-21 21:12:02','2025-03-21 21:12:02'),(17,'Dieta sin residuos','Aumento de masa muscular','Levantamiento de pesas','3 dias a la semana',3,'2',_binary '','2025-03-23 21:16:05','2025-03-23 21:16:05');
/*!40000 ALTER TABLE `tbc_dietas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `AfterInsertDieta` AFTER INSERT ON `tbc_dietas` FOR EACH ROW BEGIN
    INSERT INTO tbi_bitacora (descripcion, fecha)
    VALUES (CONCAT('Nueva dieta creada: ', NEW.nombre), NOW());
END */;;
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

-- Dump completed on 2025-04-10 14:16:37
