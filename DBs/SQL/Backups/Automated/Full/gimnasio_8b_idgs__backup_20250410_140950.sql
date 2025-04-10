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
-- Table structure for table `tbb_expediente_medico`
--

DROP TABLE IF EXISTS `tbb_expediente_medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_expediente_medico` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Descripcion: Atributo identificador numero auto incremental que distingue de manera unica a la persona. \\nNaturaleza: Cuantitativo\\nDominio: Enteos positivos\\nComposicion: 1{0-9}',
  `Nombre` varchar(50) NOT NULL COMMENT 'Descripcion: Valos asociado a la persona dentro de su registro civil\\nNaturaleza: Cualitativa \\nDominio: Caracteres Alfanumericos, vocales con tilde, espacios separados \\nComposicion: 0{A-Z|a-z| |}80',
  `Apellido` varchar(50) NOT NULL COMMENT 'Descripcion: Valos asociado a la persona dentro de su registro civil, generalmente conocido como Apellido \\nNaturaleza: Cualitativa \\nDominio: Caracteres Alfanumericos, vocales con tilde, espacios separados \\nComposicion: 0{A-Z|a-z| |}80',
  `Fecha_Nacimiento` date NOT NULL COMMENT 'Descripcion: Fecha que determina la edad de la persona, indicado el dia, mes y año de natalicio\\nNaturaleza: Cuantitativo\\nDominio: Numeros Enteros Positivos imitados por el calendario y limites de mes y/o año bisiesto.\\nComposicion:\\n\\nAño = 4{0-9}4\\nMes =  [01|02|...|12]\\nDia =  [01|02|..|31]\\nFecha_Nacimiento = Año+''-''+Mes+''-''+Dia',
  `Sexo` enum('Masculino','Femenino','Otro') NOT NULL COMMENT 'Descripcion: Datos alusivo al genero biologico de la persona\\nNaturaleza: Cualitativo\\nDominio: Conjunto de valoesr Permitidos\\nComposicion: \\n\\nGenero = [''H'',''M'',''N/B''] ',
  `Curp` varchar(18) NOT NULL COMMENT 'Descripción: Clave Única de Registro de Población (CURP) asignada a cada persona en México.\n\nNaturaleza: Cualitativo\nDominio: Conjunto de valores permitidos basado en el formato oficial de la CURP.\nComposición:\n\nCURP = ^[A-Z]{4}\\d{6}[HM][A-Z]{5}[A-Z0-9]{2}$\n\n\nDonde:\n\nPrimeros 4 caracteres: Letras del nombre y apellidos.\nSiguientes 6 caracteres: Fecha de nacimiento en formato AAMMDD.\nSiguiente carácter: Sexo (H para hombre, M para mujer).\nSiguientes 5 caracteres: Código de la entidad federativa de nacimiento.\nÚltimos 2 caracteres: Diferenciadores para evitar duplicados.\n',
  `Fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Descripcion: Dato de Auditoria que documenta la fecha y hora de creacion del registro\\\\nNaturaleza: Cuantitativo\\\\nDominio: Numeros Enteros Positivos imitados por el calendario y limites de mes y/o año bisiesto.\\\\nComposicion:\\\\n\\\\nAño = 4{0-9}4\\\\nMes =  [01|02|...|12]\\\\nDia =  [01|02|..|31]\\\\n\\\\nHora = [00|01|...|23]\\\\nMinutos = [00|01|...|59]\\\\nSeguntodos = [00|01|...|59]\\\\n\\\\nFecha_Registro= Año+''-''+Mes+''-''+Dia+''-''+Hora+''-''+Munutos+''-''+Segundos',
  `Direccion` varchar(255) DEFAULT NULL COMMENT 'Descripción: Datos alusivos al lugar de residencia de la persona  \nNaturaleza: Cualitativo  \nDominio: Cadena de caracteres  \nComposición:  \n\nDirección = [Calle, Número, Colonia, Ciudad, Estado, Código_Postal, País]\n',
  `Telefono` varchar(15) DEFAULT NULL COMMENT 'Descripción: Datos alusivos al número de teléfono de la persona\nNaturaleza: Cualitativo\nDominio: Cadena de caracteresTeléfono = [Código de País, Código de Área, Número de Teléfono, Extensión (opcional)]',
  `Correo_electronico` varchar(100) DEFAULT NULL COMMENT 'Descripción: Datos alusivos al correo electrónico de la persona\nNaturaleza: Cualitativo\nDominio: Cadena de caracteres\nComposición:\n\nCorreo Electrónico = [Usuario, Dominio, Extensión]',
  `Fecha_ultima_de_evaluacion` date NOT NULL COMMENT 'Descripción: Datos alusivos a la fecha de la última evaluación de la persona\\nNaturaleza: Cualitativo\\nDominio: Cadena de caracteres\\nComposición:\\n\\nFecha Última Evaluación = [Día, Mes, Año]',
  `Antecedentes_medicos` text COMMENT 'Descripción: Datos alusivos a los antecedentes médicos de la persona\nNaturaleza: Cualitativo\nDominio: Cadena de caracteres\nComposición:\n\nAntecedentes Médicos = [Enfermedades Previas, Alergias, Cirugías, Medicamentos Actuales, Condiciones Especiales]',
  `Lesiones_previas` text NOT NULL COMMENT 'Descripción: Datos alusivos a las lesiones previas de la persona\\nNaturaleza: Cualitativo\\nDominio: Cadena de caracteres\\nComposición:\\n\\nLesiones Previas = [Tipo de Lesión, Fecha de Ocurrencia, Tratamiento Recibido, Estado Actual]',
  `Presion_arterial` varchar(20) DEFAULT NULL COMMENT 'Descripción: Datos alusivos a la presión arterial de la persona\nNaturaleza: Cualitativo\nDominio: Cadena de caracteres\nComposición:\n\nPresión Arterial = [Valor Sistólica, Valor Diastólica, Fecha de Medición]',
  `Estatura` decimal(5,2) DEFAULT NULL COMMENT 'Descripción: Datos alusivos a la estatura de la persona\nNaturaleza: Cualitativo\nDominio: Cadena de caracteres\nComposición:\n\nEstatura = [Valor en centímetros, Unidad de Medición]',
  `Peso` decimal(5,2) DEFAULT NULL COMMENT 'Descripción: Datos alusivos al peso de la persona\nNaturaleza: Cualitativo\nDominio: Cadena de caracteres\nComposición:\n\nPeso = [Valor en kilogramos, Unidad de Medición]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_expediente_medico`
--

LOCK TABLES `tbb_expediente_medico` WRITE;
/*!40000 ALTER TABLE `tbb_expediente_medico` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_expediente_medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_personas`
--

DROP TABLE IF EXISTS `tbb_personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_personas` (
  `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Descripción: Atributo identificador numérico aunto incremental que distingue de manera única a la persona.\nNaturaleza: Cuantitativo\nDominio: Enteros Positivos \nCompocición: 1{0-9}',
  `Titulo_Cortesia` varchar(20) DEFAULT NULL COMMENT 'Descripción: Abreviatura o palbra de cortesía para dirigirsede manera formal a la persona, por ejemplo: Sr., Sra., Ing., Dra., etc.\nNaturaleza: Cualitativa\nDominio: Cáracteres alfabeticos y punto(.)\nCompocición: 0{A-Z|a-z|.}20',
  `Nombre` varchar(80) NOT NULL COMMENT 'Descripción: Valor asociado a la persona dentro de su registro civil.\nNaturaleza: Cualitativa\nDominio: Cáracteres alfabeticos, vocales con tilde, espacio separador.\nCompocición: 0{A-Z|a-z|}80',
  `Primer_Apellido` varchar(80) NOT NULL COMMENT 'Descripción: Valor asociado a la persona dentro de su registro civil, generalmente conocido como apellido paterno.\nNaturaleza: Cualitativa\nDominio: Cáracteres alfabeticos, vocales con tilde, espacio separador.\nCompocición: 0{A-Z|a-z|}80',
  `Segundo_Apellido` varchar(80) DEFAULT NULL COMMENT 'Descripción: Valor asociado a la persona dentro de su registro civil, generalmente conocido como apellido materno.\nNaturaleza: Cualitativa\nDominio: Cáracteres alfabeticos, vocales con tilde, espacio separador.\nCompocición: 0{A-Z|a-z|}80',
  `Fecha_Nacimiento` date NOT NULL COMMENT 'Descripción: Fecha que determinará la edad de la persona, indicando el día, mes y año de natalicio.\nNaturaleza: Cuantitativa\nDominio: Números enteros positivos limitados por el calendario y limites de mes y/o año bisiesto.\nCompocición: \n\nAño = 4{0-9}4\nMes= [01|02|...|12]\nDía= [01|02|...|31]\nFecha_nacimiento= Año + ''-'' + Mes + ''-'' + Día',
  `Fotografia` varchar(100) DEFAULT NULL COMMENT 'Descripción: Nombre y extensión del archivo de la portada de la persona.\nNaturaleza: Cualitativa\nDominio: Cáracteres alfanuméricos, más la extensión permitida de imágenes cómo .jpg, .png,etc.\nCompocición:\n\nNombre _Archivo = 0{A-z|0-9}96\nExtension_Archivo = 0{A-z}4\nFotografia = Nombre_Archivo + ''.'' + Extension_Archivo',
  `Genero` enum('H','M','N/B') NOT NULL COMMENT 'Descripción: Dato alusivo al genero biológico de la persona\nNaturaleza: Cualitativa\nDominio: Conjunto de valores permitidos.\nCompocición: \n\nGenero = [''H'',''M'',''N/B'']',
  `Tipo_Sangre` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') NOT NULL COMMENT 'Descripción: Representa el tipo de y grupo sanguíneo de la persona\nNaturaleza: Cualitativa\nDominio: Valores predefinidos, restringidos a un conjunto de opciones permitidas.\nCompocición: \n\nGrupo_Sanguineo =[''A+'', ''A-'', ''B+'', ''B-'', ''AB+'', ''AB-'', ''O+'', ''O-'']',
  `Estatus` bit(1) NOT NULL DEFAULT b'1' COMMENT 'Descripción: Dato de auditoría que define el status actual del registro, siendo 0 para datos no activos y 1 para datos activos para uso en el sistema\nNaturaleza: Cuantitativo\nDominio: Booleano\nCompocición: \n\nEstatus =[0|1]',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Descripción: Dato de auditoria que documenta la fecha y hora de la última modificación del registro\nNaturaleza: Cuantitativa\nDominio: Fecha y hora y Números enteros positivos limitados por el calendario y limites de mes y/o año bisiesto.\nCompocición: \n\nAño = 4{0-9}4\nMes= [01|02|...|12\nDía =[01|02|...|31]\nHora = [00|01|...|23]\nMinuto = [00|01|...|59]\nSegundo = [00|01|...|59]\n\nFecha_Registro = Año + ''-'' + Mes+''-''Día+ '' '' + Hora+ '':'' + Minuto + '':'' + Segundo',
  `Fecha_Actualizacion` datetime DEFAULT NULL COMMENT '\nDescripción: Dato de auditoria que documenta la fecha y hora de la última modificación de actualización de la persona\nNaturaleza: Cuantitativa\nDominio: Fecha y hora y Números enteros positivos limitados por el calendario y limites de mes y/o año bisiesto.\nCompocición: \n\nAño = 4{0-9}4\nMes= [01|02|...|12\nDía =[01|02|...|31]\nHora = [00|01|...|23]\nMinuto = [00|01|...|59]\nSegundo = [00|01|...|59]\n\nFecha_Registro = Año + ''-'' + Mes+''-''Día+ '' '' + Hora+ '':'' + Minuto + '':'' + Segundo',
  PRIMARY KEY (`ID`),
  KEY `ix_tbb_personas_ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Esta tabla almacenará los datos de las personas asociadas a los usuarios de la plataforma de administración de gimnasio y es importante detonar que la persona es una superentidad de: CLIENTE,COLABORADOR, PROVEEDOR';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_personas`
--

LOCK TABLES `tbb_personas` WRITE;
/*!40000 ALTER TABLE `tbb_personas` DISABLE KEYS */;
INSERT INTO `tbb_personas` VALUES (2,'C','Esperanza','Cruz','Galindo','2004-07-22','fotos/9fbf7b8b-f547-11ef-8138-581122b8eb40.png','M','O+',_binary '','2025-02-27 13:07:53',NULL),(3,NULL,'Ximena','Calva','Negrete','2004-07-22','484031e4-f574-11ef-99c4-e070ea3855c5.png','M','O+',_binary '','2025-02-27 19:35:24',NULL),(4,NULL,'Mariano','Rangel','Gonzáles','2004-07-22','4842a7e1-f574-11ef-99c4-e070ea3855c5.png','M','O+',_binary '','2025-02-27 19:35:24',NULL),(5,NULL,'Martin','Pérez','Méndez','2004-07-22','4844f142-f574-11ef-99c4-e070ea3855c5.png','M','O+',_binary '','2025-02-27 19:35:24',NULL);
/*!40000 ALTER TABLE `tbb_personas` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `tbc_ejercicios`
--

DROP TABLE IF EXISTS `tbc_ejercicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_ejercicios` (
  `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Descripcion: Atributo identificador numerico incremental que distingue de manera unica el ejercicio\\nNaturaleza: Cuantitativo\\nDominio: Enteros positivos\\nComposicion: 1{0-9}',
  `Nombre` varchar(255) NOT NULL COMMENT 'Descripcion: valor que hace referencia al ejercicio \\nNaturaleza: Cualitativa\\nDominio: Caracteres alfabeticos, vocales con tilde, espacio separador\\nComposicion: 0{A-Z|a-z|.}80',
  `Descripcion` varchar(255) NOT NULL COMMENT 'Descripcion: valor que hace referencia a la explicacion del ejercicio y como llevarlo a cabo \\nNaturaleza: Cualitativa\\nDominio: Caracteres alfabeticos, vocales con tilde, espacio separador\\nComposicion: 0{A-Z|a-z|.}255',
  `Video` varchar(255) DEFAULT NULL COMMENT 'Descipcion: Nombre y extension del archivo del video referente a la realizacion del ejercicio\\nNaturaleza: Cualitativa\\nDominio: Caracteres alfanumericos, mas la extension permititda de video como .mp4, .avi, etc.\\nCoposicion:\\n\\nNombre_archivo = 0{A-z|0-9}96\\nExtencion_arcvio = 0{A-z}4\\nVideio = Nombre_archivo + ''.'' + Extension_archivo',
  `Tipo` enum('Aerobico','Resistencia','Flexibilidad','Fuerza') NOT NULL COMMENT 'Descipcion: valor referido al tipo de ejercicio \\nNaturaleza: Cualitativo\\nDominio: Conjunto de valores permitidos\\nComposicion: \\n\\ngenero=[''Aerobico'',''Resistencia'',''Flexibilidad'',''Fuerza'' ]',
  `Estatus` tinyint(1) NOT NULL COMMENT 'Descripcion: Atributo que valida el estado activo o inactivo del ejercicio\\nNaturaleza: Cualitativo\\nDominio: valores 0 y 1\\nComposicion: {0|1}',
  `Dificultad` enum('Basico','Intermedio','Avanzado') NOT NULL COMMENT 'Descipcion: valor referido a la dificultad para realizar el ejercicio \\nNaturaleza: Cualitativo\\nDominio: Conjunto de valores permitidos\\nComposicion: \\n\\ngenero=[''Basico'',''Intermedio'',''Avanzado'' ]',
  `Fecha_Registro` datetime NOT NULL COMMENT 'Descripcion: Fecha que indica el momento de registro de una persona a la base de datos\\\\nNaturaleza: Cuantitativa\\\\nDominio: Numeros enteros positivos delimitados por el calendario\\\\nComposicion: \\\\n\\\\naño = 4{0-9}4\\\\nmes = [01|02|...|12]\\\\ndia = [01|02|...|31]\\\\nfecha_Registro = año+''-''+mes+''-''+dia',
  `Fecha_Actualizacion` datetime NOT NULL COMMENT 'Descripcion: Fecha que indica el momento de actualizacion de los datos de una persona en la  base de datos\\\\nNaturaleza: Cuantitativa\\\\nDominio: Numeros enteros positivos delimitados por el calendario\\\\nComposicion: \\\\n\\\\naño = 4{0-9}4\\\\nmes = [01|02|...|12]\\\\ndia = [01|02|...|31]\\\\nfecha_Registro = año+''-''+mes+''-''+dia',
  `Recomendaciones` varchar(255) DEFAULT NULL COMMENT 'Descripcion: valor que hace referencia a las recomendaciones para realizar el ejercicio \\\\nNaturaleza: Cualitativa\\\\nDominio: Caracteres alfabeticos, vocales con tilde, espacio separador\\\\nComposicion: 0{A-Z|a-z|.}255',
  `Restricciones` varchar(255) DEFAULT NULL COMMENT 'Descripcion: valor que hace referencia a las restricciones para realizar el ejercicio como, usar cierto tipo de ropa comoda \\nNaturaleza: Cualitativa\\nDominio: Caracteres alfabeticos, vocales con tilde, espacio separador\\nComposicion: 0{A-Z|a-z|.}255',
  PRIMARY KEY (`ID`),
  KEY `ix_tbc_ejercicios_ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_ejercicios`
--

LOCK TABLES `tbc_ejercicios` WRITE;
/*!40000 ALTER TABLE `tbc_ejercicios` DISABLE KEYS */;
INSERT INTO `tbc_ejercicios` VALUES (14,'s','s','s','Aerobico',1,'Basico','2025-03-24 01:12:08','2025-03-24 02:15:47','s','s'),(18,'d','d','d','Aerobico',1,'Basico','2025-03-24 02:03:49','2025-03-24 03:06:37','d','d'),(25,'dwdw','dwd','wdwd','Aerobico',1,'Intermedio','2025-03-24 03:02:34','2025-03-24 03:16:51','dwdw','dwdwdwdwdwdfdefdfdfd'),(27,'un perro','fef','fef','Aerobico',1,'Basico','2025-03-24 03:17:30','2025-03-24 18:35:00','fef','fefnakdadjsakdklashdkas'),(30,'hola','as','sas','Aerobico',1,'Avanzado','2025-03-24 03:37:38','2025-03-24 03:38:44','as','asasas'),(33,'fef','efe','efef','Flexibilidad',1,'Avanzado','2025-02-24 03:38:27','2025-03-24 23:05:34','efef','efef'),(37,'hola','s','as','Flexibilidad',1,'Intermedio','2025-03-24 22:59:52','2025-03-24 23:10:56','','asa'),(39,'dwdw','dwd','wdw','Flexibilidad',1,'Intermedio','2025-03-24 23:04:37','2025-03-25 03:21:07','dwd','dwd'),(40,'dwd','wdwd','wdw','Aerobico',1,'Basico','2025-03-24 23:04:55','2025-03-25 03:26:24','dwd','dwd'),(41,'ded','ded','ded','Flexibilidad',1,'Avanzado','2025-03-24 23:11:10','2025-03-24 23:11:10','dede','ded'),(42,'COMPOLETOOOOO','dwdwd','wdwd','Resistencia',1,'Intermedio','2025-03-24 23:17:20','2025-03-24 23:17:20','','dwdw'),(43,'HOLAAAAAA','SS','SSSSS','Flexibilidad',1,'Intermedio','2025-03-25 01:18:16','2025-03-25 01:18:16','SS','SSS'),(44,'ESTE ES UNA PRUEBA','NO ESTA CHIDO ','YOUTUBIIIIIII','Flexibilidad',1,'Avanzado','2025-03-25 01:50:02','2025-03-25 01:50:02','BAJARLE A LA COCA','LOS CHETOS'),(45,'hola','a','a','Resistencia',1,'Avanzado','2025-03-25 01:56:37','2025-03-25 01:56:37','a','a'),(46,'hoahoa','haohao','ahohaoa','Aerobico',1,'Basico','2025-03-25 05:38:20','2025-03-25 05:38:20','nahihai','aoajoa'),(47,'ddw','wew','wewe','Resistencia',1,'Intermedio','2025-03-25 05:40:43','2025-03-25 05:40:43','ew','wew'),(48,'ee','dd','eee','Flexibilidad',1,'Avanzado','2025-03-25 05:43:40','2025-03-25 05:43:40','eeeee','e'),(51,'Correr','Ejercicio cardiovascular para mejorar la resistencia','https://video.url/correr','Aerobico',1,'Basico','2025-04-04 21:45:46','2025-04-04 21:45:46','Mantén un ritmo constante','Ninguna'),(52,'Pesas','Ejercicio para fortalecer la musculatura','https://video.url/pesas','Fuerza',1,'Intermedio','2025-04-04 21:45:46','2025-04-04 21:45:46','Realiza calentamiento previo','Cuidado con lesiones en espalda');
/*!40000 ALTER TABLE `tbc_ejercicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_objetivo_programa`
--

DROP TABLE IF EXISTS `tbc_objetivo_programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_objetivo_programa` (
  `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Descripción: Identificador único de cada objetivo dentro del sistema.\n\nNaturaleza: Cuantitativa.\nDominio:\n Números enteros positivos.\n\nComposición: 1{0-9}.',
  `nombre` varchar(100) NOT NULL COMMENT 'Descripción: Nombre descriptivo del objetivo.\\n\\nNaturaleza: Cualitativa\\n.\\nDominio: Caracteres alfabéticos y espacios.\\n\\nComposición: 1{A-Z|a-z| }100.',
  `descripcion` text COMMENT 'Descripción: Explicación detallada del objetivo.\\n\\nNaturaleza: Cualitativa.\\n\\nDominio: Texto libre con una longitud variable.\\n\\nComposición: 1{A-Z|a-z|0-9|, .-}∞.',
  `estado` bit(1) NOT NULL DEFAULT b'1' COMMENT 'Descripción: Dato de auditoría que define el status actual del registro, siendo 0 para datos no activos y 1 para datos activos para uso en el sistema\\\\\\\\nNaturaleza: Cuantitativo\\\\\\\\nDominio: Booleano\\\\\\\\nCompocición: \\\\\\\\nEstatus =[0|1]',
  `fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Descripción: Fecha y hora en la que se registró el objetivo en la base de datos.\\n\\nNaturaleza: Cuantitativa.\\n\\nDominio: Formato YYYY-MM-DD HH:MM:SS.\\n\\nComposición:\\n\\nAño = 4{0-9}.\\n\\nMes = [01|02|...|12].\\n\\nDía = [01|02|...|31].\\n\\nHora = [00|01|...|23].\\n\\nMinuto = [00|01|...|59].\\n\\nSegundo = [00|01|...|59].\\nFecha_Registro = Año + ''-'' + Mes+''-''Día+ '' '' + Hora+ '':'' + Minuto + '':'' + Segundo',
  `fecha_actualizacion` datetime DEFAULT NULL COMMENT 'Descripción: Dato de auditoria que documenta la fecha y hora de la última modificación de actualización del objetivo del programa\\nNaturaleza: Cuantitativa\\nDominio: Fecha y hora y Números enteros positivos limitados por el calendario y limites de mes y/o año bisiesto.\\nCompocición: \\nAño = 4{0-9}4\\nMes= [01|02|...|12\\nDía =[01|02|...|31]\\nHora = [00|01|...|23]\\nMinuto = [00|01|...|59]\\nSegundo = [00|01|...|59]\\n\\nFecha_Registro = Año + ''-'' + Mes+''-''Día+ '' '' + Hora+ '':'' + Minuto + '':'' + Segundo',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Esta tabla almacenará los objetivos asociados a los programas de entrenamiento o nutrición en el gimnasio. Cada objetivo está vinculado a un programa y describe una meta específica que el usuario desea alcanzar.\n\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_objetivo_programa`
--

LOCK TABLES `tbc_objetivo_programa` WRITE;
/*!40000 ALTER TABLE `tbc_objetivo_programa` DISABLE KEYS */;
INSERT INTO `tbc_objetivo_programa` VALUES (1,'Objetivo de Nutrición','Mejorar la calidad de la dieta diaria',_binary '','2025-04-04 21:39:30',NULL),(2,'Objetivo de Entrenamiento','Incrementar la resistencia y fuerza',_binary '','2025-04-04 21:39:30',NULL),(3,'Objetivo Mixto','Optimizar salud general combinando dieta y ejercicio',_binary '','2025-04-04 21:39:30',NULL);
/*!40000 ALTER TABLE `tbc_objetivo_programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_roles`
--

DROP TABLE IF EXISTS `tbc_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_roles` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(60) NOT NULL,
  `Descripcion` longtext,
  `Estatus` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbc_roles_ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_roles`
--

LOCK TABLES `tbc_roles` WRITE;
/*!40000 ALTER TABLE `tbc_roles` DISABLE KEYS */;
INSERT INTO `tbc_roles` VALUES (1,'Administrador','Rol que permite al usuario modificar, consultar, eliminar la información de todos los procesos de negocio digitalizados del gimnacio a través del sistema',_binary '','2025-03-07 08:58:16',NULL),(2,'Cliente','Rol asignado a los clientes que contratan una membresia y que les permite monitorear los servicios y costos.',_binary '','2025-03-07 08:59:00',NULL),(3,'Colaborador','Rol asignado a los empleados de las sucursales de los gimnacios que les permitirá proporcionar los productos y servicios al cliente.',_binary '','2025-03-07 08:59:00',NULL),(4,'Entrenador','Rol que permitirá a un colaborador especializado tener acceso a su supervición y motivación.',_binary '','2025-03-07 08:59:00',NULL);
/*!40000 ALTER TABLE `tbc_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_rutinas`
--

DROP TABLE IF EXISTS `tbc_rutinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_rutinas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `ejercicio_id` int DEFAULT NULL,
  `objetivo_id` int DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `duracion` float DEFAULT NULL,
  `frecuencia` time DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_finalizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbd_rutinas_ID` (`ID`),
  KEY `fk_ejercicios_idx` (`ejercicio_id`),
  KEY `fk_usuarios_idx` (`user_id`),
  KEY `fk_objetivo_idx` (`objetivo_id`),
  CONSTRAINT `fk_ejercicios` FOREIGN KEY (`ejercicio_id`) REFERENCES `tbc_ejercicios` (`ID`),
  CONSTRAINT `fk_objetivo` FOREIGN KEY (`objetivo_id`) REFERENCES `tbc_objetivo_programa` (`ID`),
  CONSTRAINT `fk_usuarios` FOREIGN KEY (`user_id`) REFERENCES `tbb_usuarios` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_rutinas`
--

LOCK TABLES `tbc_rutinas` WRITE;
/*!40000 ALTER TABLE `tbc_rutinas` DISABLE KEYS */;
INSERT INTO `tbc_rutinas` VALUES (5,'Rutina Matutina',4,52,1,'Rutina para comenzar el día con energía',1.5,'06:30:00','2025-04-04 21:49:47',NULL,'2025-04-03 06:30:00','2025-04-03 00:00:00'),(6,'Rutina Vespertina',2,51,2,'Rutina para relajar el cuerpo después del trabajo',2,'18:00:00','2025-04-04 21:49:47',NULL,'2025-04-03 18:00:00','2025-04-03 00:00:00'),(7,'Rutina A',3,37,2,'Rutina para bajar de peso',4,'22:00:00','2025-04-08 03:57:51',NULL,'2025-04-07 22:00:00','2025-04-30 22:00:00');
/*!40000 ALTER TABLE `tbc_rutinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_dietas`
--

DROP TABLE IF EXISTS `tbd_dietas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_dietas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Genero` enum('M','H','N/B') NOT NULL,
  `Altura` double NOT NULL,
  `Peso` double NOT NULL,
  `Objetivo` enum('Perdida de Peso','Aumento de masa muscular','Mantenimiento') NOT NULL,
  `tipo_ejercicios_recomendados` enum('Cardio','Levantamiento de pesas','Ejercicios Tecnicos') NOT NULL,
  `dias_ejercicio` enum('1 dia a la semana','2 dias a la semana','3 dias a la semana','4 dias a la semana','5 dias a la semana') NOT NULL,
  `calorias_diarias` double NOT NULL,
  `observaciones` longtext,
  `Estatus` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbb_usuarios` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_dietas`
--

LOCK TABLES `tbd_dietas` WRITE;
/*!40000 ALTER TABLE `tbd_dietas` DISABLE KEYS */;
INSERT INTO `tbd_dietas` VALUES (6,'djhdhhd','H',12,122,'Perdida de Peso','Levantamiento de pesas','3 dias a la semana',12,'sq',_binary '','2025-03-21 03:10:27','2025-03-21 03:10:27',3),(10,'hola','N/B',23,2,'Perdida de Peso','Levantamiento de pesas','4 dias a la semana',2,'22',_binary '','2025-03-21 07:12:47','2025-03-21 07:12:47',NULL),(11,'wed','M',32,23,'Aumento de masa muscular','Levantamiento de pesas','4 dias a la semana',23,'ew',_binary '','2025-03-21 07:22:31','2025-03-21 07:22:31',NULL),(12,'es','H',2,23,'Perdida de Peso','Cardio','3 dias a la semana',12,'w',_binary '','2025-03-21 07:29:20','2025-03-21 07:29:20',2),(13,' nj','H',9,9,'Perdida de Peso','Cardio','2 dias a la semana',0,'j',_binary '','2025-03-21 07:33:06','2025-03-21 07:33:06',9),(16,'e2','M',4234,24,'Aumento de masa muscular','Cardio','5 dias a la semana',24,'242424',_binary '','2025-03-21 21:12:02','2025-03-21 21:12:02',5),(17,'sqs','H',1,2,'Aumento de masa muscular','Levantamiento de pesas','3 dias a la semana',3,'2',_binary '','2025-03-23 21:16:05','2025-03-23 21:16:05',11),(20,'Dieta Generada 1','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:27:44','2025-04-10 12:27:44',2),(21,'Dieta Generada 2','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:27:44','2025-04-10 12:27:44',2),(22,'Dieta Generada 3','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:27:44','2025-04-10 12:27:44',2),(23,'Dieta Generada 4','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:27:44','2025-04-10 12:27:44',2),(24,'Dieta Generada 5','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:27:44','2025-04-10 12:27:44',2),(25,'Dieta Generada 6','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:27:44','2025-04-10 12:27:44',2),(26,'Dieta Generada 7','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:27:44','2025-04-10 12:27:44',2),(27,'Dieta Generada 8','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:27:44','2025-04-10 12:27:44',2),(28,'Dieta Generada 9','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:27:44','2025-04-10 12:27:44',2),(29,'Dieta Generada 10','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:27:44','2025-04-10 12:27:44',2),(30,'Dieta Generada 1','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:31:41','2025-04-10 12:31:41',2),(31,'Dieta Generada 2','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:31:41','2025-04-10 12:31:41',2),(32,'Dieta Generada 3','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:31:41','2025-04-10 12:31:41',2),(33,'Dieta Generada 4','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:31:41','2025-04-10 12:31:41',2),(34,'Dieta Generada 5','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:31:41','2025-04-10 12:31:41',2),(35,'Dieta Generada 6','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:31:41','2025-04-10 12:31:41',2),(36,'Dieta Generada 7','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:31:41','2025-04-10 12:31:41',2),(37,'Dieta Generada 8','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:31:41','2025-04-10 12:31:41',2),(38,'Dieta Generada 9','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:31:41','2025-04-10 12:31:41',2),(39,'Dieta Generada 10','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:31:41','2025-04-10 12:31:41',2),(40,'Dieta Generada 1','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:33:41','2025-04-10 12:33:41',2),(41,'Dieta Generada 2','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:33:41','2025-04-10 12:33:41',2),(42,'Dieta Generada 3','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:33:41','2025-04-10 12:33:41',2),(43,'Dieta Generada 4','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:33:41','2025-04-10 12:33:41',2),(44,'Dieta Generada 5','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:33:41','2025-04-10 12:33:41',2),(45,'Dieta Generada 6','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:33:41','2025-04-10 12:33:41',2),(46,'Dieta Generada 7','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:33:41','2025-04-10 12:33:41',2),(47,'Dieta Generada 8','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:33:41','2025-04-10 12:33:41',2),(48,'Dieta Generada 9','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:33:41','2025-04-10 12:33:41',2),(49,'Dieta Generada 10','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:33:41','2025-04-10 12:33:41',2),(50,'Dieta Generada 1','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:34:51','2025-04-10 12:34:51',2),(51,'Dieta Generada 2','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:34:51','2025-04-10 12:34:51',2),(52,'Dieta Generada 3','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:34:51','2025-04-10 12:34:51',2),(53,'Dieta Generada 4','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:34:51','2025-04-10 12:34:51',2),(54,'Dieta Generada 5','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:34:51','2025-04-10 12:34:51',2),(55,'Dieta Generada 6','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:34:51','2025-04-10 12:34:51',2),(56,'Dieta Generada 7','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:34:51','2025-04-10 12:34:51',2),(57,'Dieta Generada 8','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:34:51','2025-04-10 12:34:51',2),(58,'Dieta Generada 9','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:34:51','2025-04-10 12:34:51',2),(59,'Dieta Generada 10','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:34:51','2025-04-10 12:34:51',2),(60,'Dieta Generada 1','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:35:33','2025-04-10 12:35:33',2),(61,'Dieta Generada 2','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:35:33','2025-04-10 12:35:33',2),(62,'Dieta Generada 3','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:35:33','2025-04-10 12:35:33',2),(63,'Dieta Generada 4','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:35:33','2025-04-10 12:35:33',2),(64,'Dieta Generada 5','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:35:33','2025-04-10 12:35:33',2),(65,'Dieta Generada 6','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:35:33','2025-04-10 12:35:33',2),(66,'Dieta Generada 7','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:35:33','2025-04-10 12:35:33',2),(67,'Dieta Generada 8','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:35:33','2025-04-10 12:35:33',2),(68,'Dieta Generada 9','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:35:33','2025-04-10 12:35:33',2),(69,'Dieta Generada 10','N/B',1.7,70,'Mantenimiento','Cardio','3 dias a la semana',2000,'Generada automáticamente',_binary '','2025-04-10 12:35:33','2025-04-10 12:35:33',2);
/*!40000 ALTER TABLE `tbd_dietas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_indicadores_nutricionales`
--

DROP TABLE IF EXISTS `tbd_indicadores_nutricionales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_indicadores_nutricionales` (
  `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Descripción: Atributo identificador entero auto incremento que distingue de manera única a cada registro de indicadores nutricionales.\n\nNaturaleza: Cuantitativa\n\nDominio: Enteros Positivos\n\nComposición: 1{0-9}',
  `Altura` float NOT NULL COMMENT 'Descripción: Altura del usuario expresada en metros, utilizada para el cálculo del índice de masa corporal (IMC).\n\nNaturaleza: Cuantitativa\n\nDominio: Números decimales con punto flotante\nComposición: 0{0-9}.{0-9}2',
  `Peso` float NOT NULL COMMENT 'Descripción: Peso del usuario expresado en kilogramos, utilizado en la evaluación nutricional y cálculo del índice de masa corporal (IMC).\n\nNaturaleza: Cuantitativa\n\nDominio: Números decimales con punto flotante\nComposición: 0{0-9}.{0-9}2',
  `Imc` float NOT NULL COMMENT 'Descripción: Índice de Masa Corporal (IMC), calculado en función del peso y la altura del usuario para evaluar su composición corporal.\n\nNaturaleza: Cuantitativa\n\nDominio: Números decimales con punto flotante\nComposición: 0{0-9}.{0-9}2',
  `Porcentaje_grasa` float NOT NULL COMMENT 'Descripción: Porcentaje de grasa corporal del usuario, utilizado para evaluar su nivel de composición corporal y estado físico.\n\nNaturaleza: Cuantitativa\n\nDominio: Números decimales con punto flotante\nComposición: 0{0-9}.{0-9}2',
  `Nivel_actividad` enum('Sedentario','Ligero','Moderado','Activo','Muy_Activo') NOT NULL COMMENT 'Descripción: Clasificación del nivel de actividad física del usuario, basada en una escala de cinco niveles: Sedentario, Ligero, Moderado, Activo y Muy Activo.\nNaturaleza: Cualitativa\n\nDominio: Valores enumerados {''Sedentario'', ''Ligero'', ''Moderado'', ''Activo'', ''Muy_Activo''}\n\nComposición: 1{Sedentario | Ligero | Moderado | Activo | Muy_Activo}',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Descripción: Dato de auditoría que documenta la fecha y hora de creación del registro.\n\nNaturaleza: Cuantitativa\n\nDominio: Fecha y Hora\n\nComposición:\n\nAño = 4{0-9}\n4\nMes = [01|02|...|12]\n\nDía = [01|02|...|31]\n\nHora = [00|01|...|23]\n\nMinuto = [00|01|...|59]\n\nSegundo = [00|01|...|59]\n\nFecha_Registro = Año + ''-'' + Mes + ''-'' + Día + '' '' + Hora + '':'' + Minuto + '':'' + Segundo',
  `Fecha_Actualizacion` datetime DEFAULT NULL COMMENT 'Descripción: Dato de auditoría que documenta la fecha y hora de la última modificación del registro.\\\\nNaturaleza: Cuantitativa\\\\n\\\\nDominio: Fecha y Hora\\\\n\\\\nComposición:\\\\n\\\\nAño = 4{0-9}4\\\\n\\\\nMes = [01|02|...|12]\\\\n\\\\nDía = [01|02|...|31]\\\\n\\\\nHora = [00|01|...|23]\\\\n\\\\nMinuto = [00|01|...|59]\\\\n\\\\nSegundo = [00|01|...|59]\\\\n\\\\nFecha_Actualizacion = Año + ''-'' + Mes + ''-'' + Día + '' '' + Hora + '':'' + Minuto + '':'' + Segundo',
  `Usuario_Id` int DEFAULT NULL COMMENT 'Descripción: Identificador del usuario al que pertenecen los indicadores nutricionales, permitiendo su asociación con la información personal registrada en el sistema.\n\nNaturaleza: Cuantitativa\n\nDominio: Enteros Positivos\n\nComposición: 1{0-9}',
  PRIMARY KEY (`ID`),
  KEY `ix_tbd_indicadores_nutricionales_ID` (`ID`),
  KEY `fk_user_idx` (`Usuario_Id`),
  CONSTRAINT `fk_user` FOREIGN KEY (`Usuario_Id`) REFERENCES `tbb_usuarios` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Esta tabla almacenará los indicadores nutricionales de los usuarios del gimnasio, incluyendo altura, peso, índice de masa corporal (IMC), porcentaje de grasa, nivel de actividad y las fechas de registro y actualización';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_indicadores_nutricionales`
--

LOCK TABLES `tbd_indicadores_nutricionales` WRITE;
/*!40000 ALTER TABLE `tbd_indicadores_nutricionales` DISABLE KEYS */;
INSERT INTO `tbd_indicadores_nutricionales` VALUES (1,1.45,41.1,19.55,123,'Sedentario','2025-04-01 01:58:33',NULL,7);
/*!40000 ALTER TABLE `tbd_indicadores_nutricionales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_objetivo_programa`
--

DROP TABLE IF EXISTS `tbd_objetivo_programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_objetivo_programa` (
  `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Descripción: Identificador único de cada objetivo dentro del sistema.\n\nNaturaleza: Cuantitativa.\nDominio:\n Números enteros positivos.\n\nComposición: 1{0-9}.',
  `ID_Programas_Saludables` int NOT NULL COMMENT 'Descripción: Referencia a la tabla Programas_saludables para indicar a qué programa pertenece el objetivo.\nNaturaleza: Cuantitativa.\n\nDominio: Enteros positivos que correspondan a un ID de la tabla Programa.\n\nComposición: 1{0-9}.',
  `Nombre` varchar(100) NOT NULL COMMENT 'Descripción: Nombre descriptivo del objetivo.\n\nNaturaleza: Cualitativa\n.\nDominio: Caracteres alfabéticos y espacios.\n\nComposición: 1{A-Z|a-z| }100.',
  `Descripción` text COMMENT 'Descripción: Explicación detallada del objetivo.\n\nNaturaleza: Cualitativa.\n\nDominio: Texto libre con una longitud variable.\n\nComposición: 1{A-Z|a-z|0-9|, .-}∞.',
  `Tipo_Objetivo` enum('Nutrición','Entrenamiento','Mixto') NOT NULL COMMENT 'Descripción: Clasificación del objetivo según el área de impacto.\n\nNaturaleza: Cualitativa.\n\nDominio: Valores predefinidos (''Nutrición'', ''Entrenamiento'', ''Mixto'').\nComposición: \nTipo_Objetivo = [''Nutrición'', ''Entrenamiento'', ''Mixto''].',
  `Estatus` bit(1) NOT NULL DEFAULT b'1' COMMENT 'Descripción: Dato de auditoría que define el status actual del registro, siendo 0 para datos no activos y 1 para datos activos para uso en el sistema\\nNaturaleza: Cuantitativo\\nDominio: Booleano\\nCompocición: \\nEstatus =[0|1]',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Descripción: Fecha y hora en la que se registró el objetivo en la base de datos.\n\nNaturaleza: Cuantitativa.\n\nDominio: Formato YYYY-MM-DD HH:MM:SS.\n\nComposición:\n\nAño = 4{0-9}.\n\nMes = [01|02|...|12].\n\nDía = [01|02|...|31].\n\nHora = [00|01|...|23].\n\nMinuto = [00|01|...|59].\n\nSegundo = [00|01|...|59].\nFecha_Registro = Año + ''-'' + Mes+''-''Día+ '' '' + Hora+ '':'' + Minuto + '':'' + Segundo',
  `Fecha_Actualización` datetime DEFAULT NULL COMMENT 'Descripción: Dato de auditoria que documenta la fecha y hora de la última modificación de actualización del objetivo del programa\nNaturaleza: Cuantitativa\nDominio: Fecha y hora y Números enteros positivos limitados por el calendario y limites de mes y/o año bisiesto.\nCompocición: \nAño = 4{0-9}4\nMes= [01|02|...|12\nDía =[01|02|...|31]\nHora = [00|01|...|23]\nMinuto = [00|01|...|59]\nSegundo = [00|01|...|59]\n\nFecha_Registro = Año + ''-'' + Mes+''-''Día+ '' '' + Hora+ '':'' + Minuto + '':'' + Segundo',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Esta tabla almacenará los objetivos asociados a los programas de entrenamiento o nutrición en el gimnasio. Cada objetivo está vinculado a un programa y describe una meta específica que el usuario desea alcanzar.\n\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_objetivo_programa`
--

LOCK TABLES `tbd_objetivo_programa` WRITE;
/*!40000 ALTER TABLE `tbd_objetivo_programa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbd_objetivo_programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_programas_saludables`
--

DROP TABLE IF EXISTS `tbd_programas_saludables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_programas_saludables` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_finalizacion` datetime DEFAULT NULL,
  `id_dietas` int DEFAULT NULL,
  `id_entrenador` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `fecha_registro` datetime NOT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_programas_saludables`
--

LOCK TABLES `tbd_programas_saludables` WRITE;
/*!40000 ALTER TABLE `tbd_programas_saludables` DISABLE KEYS */;
INSERT INTO `tbd_programas_saludables` VALUES (1,'prueba','insertando','2025-04-07 23:18:00','2025-04-15 23:19:00',16,5,2,'2025-04-07 23:19:00',NULL),(2,'segundo','segundo intento','2025-04-07 23:41:00','2025-04-15 23:41:00',11,7,3,'2025-04-07 23:41:00',NULL),(3,'Programa para de peso','Djear las cosasgrasosas','2025-04-08 12:30:00','2025-05-08 12:30:00',6,5,2,'2025-04-25 12:30:00',NULL);
/*!40000 ALTER TABLE `tbd_programas_saludables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_rutinas`
--

DROP TABLE IF EXISTS `tbd_rutinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_rutinas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Programa_Saludable_ID` int DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Tiempo_Aproximado` varchar(10) DEFAULT NULL,
  `Estatus` enum('Concluido','Actual','Suspendida') DEFAULT NULL,
  `Resultados_Esperados` text,
  PRIMARY KEY (`ID`),
  KEY `ix_tbd_rutinas_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_rutinas`
--

LOCK TABLES `tbd_rutinas` WRITE;
/*!40000 ALTER TABLE `tbd_rutinas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbd_rutinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_usuarios_roles`
--

DROP TABLE IF EXISTS `tbd_usuarios_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_usuarios_roles` (
  `Usuario_ID` int NOT NULL,
  `Rol_ID` int NOT NULL,
  `Estatus` tinyint(1) DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`Usuario_ID`,`Rol_ID`),
  KEY `Rol_ID` (`Rol_ID`),
  CONSTRAINT `tbd_usuarios_roles_ibfk_1` FOREIGN KEY (`Usuario_ID`) REFERENCES `tbb_usuarios` (`ID`),
  CONSTRAINT `tbd_usuarios_roles_ibfk_2` FOREIGN KEY (`Rol_ID`) REFERENCES `tbc_roles` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_usuarios_roles`
--

LOCK TABLES `tbd_usuarios_roles` WRITE;
/*!40000 ALTER TABLE `tbd_usuarios_roles` DISABLE KEYS */;
INSERT INTO `tbd_usuarios_roles` VALUES (2,2,1,'2025-03-27 21:27:35',NULL),(3,2,1,'2025-03-27 21:27:35',NULL),(4,2,1,'2025-03-27 21:27:35',NULL),(5,4,1,'2025-03-27 21:27:35',NULL),(6,4,1,'2025-03-27 21:27:35',NULL),(7,4,1,'2025-03-27 21:27:35',NULL),(11,1,1,'2025-03-27 21:27:35',NULL),(13,1,1,'2025-03-27 21:27:35',NULL);
/*!40000 ALTER TABLE `tbd_usuarios_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbi_bitacora`
--

DROP TABLE IF EXISTS `tbi_bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbi_bitacora` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(50) NOT NULL,
  `Operacion` enum('Create','Read','Update','Delete') NOT NULL,
  `Tabla` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL,
  `Estatus` tinyint(1) DEFAULT '1',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbi_bitacora`
--

LOCK TABLES `tbi_bitacora` WRITE;
/*!40000 ALTER TABLE `tbi_bitacora` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbi_bitacora` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-10 14:09:50
