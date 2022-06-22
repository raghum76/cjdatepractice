-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: curso
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `parte`
--

DROP TABLE IF EXISTS `parte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parte` (
  `id` int(11) NOT NULL,
  `parte` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `color` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `peso` int(11) DEFAULT NULL,
  `ciudad` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parte`
--

LOCK TABLES `parte` WRITE;
/*!40000 ALTER TABLE `parte` DISABLE KEYS */;
INSERT INTO `parte` VALUES (1,'Tuerca','Rojo',12,'Londres'),(2,'Perno','Verde',17,'Paris'),(3,'Tornillo','Azul',17,'Roma'),(4,'Tornillo','Rojo',14,'Londres'),(5,'Leva','Azul',12,'Paris'),(6,'Engrane','Rojo',19,'Londres');
/*!40000 ALTER TABLE `parte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `proveedor` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `ciudad` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Smith',20,'Londres'),(2,'Jones',10,'Paris'),(3,'Blake',30,'Paris'),(4,'Clark',20,'Londres'),(5,'Adams',30,'Atenas');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedorparte`
--

DROP TABLE IF EXISTS `proveedorparte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedorparte` (
  `proveedor` int(11) NOT NULL,
  `parte` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`proveedor`,`parte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedorparte`
--

LOCK TABLES `proveedorparte` WRITE;
/*!40000 ALTER TABLE `proveedorparte` DISABLE KEYS */;
INSERT INTO `proveedorparte` VALUES (1,1,300),(1,2,200),(1,3,400),(1,4,200),(1,5,100),(1,6,100),(2,1,300),(2,2,400),(3,2,200),(4,2,200),(4,4,300),(4,5,400);
/*!40000 ALTER TABLE `proveedorparte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyecto` (
  `id` int(11) NOT NULL,
  `proyecto` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `ciudad` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES (1,'Clasificador','Paris'),(2,'Monitor','Roma'),(3,'OCR','Atenas'),(4,'Consola','Atenas'),(5,'Raid','Londres'),(6,'EDS','Oslo'),(7,'Cinta','Londres');
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectoparteproveedor`
--

DROP TABLE IF EXISTS `proyectoparteproveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyectoparteproveedor` (
  `proveedor` int(11) NOT NULL,
  `parte` int(11) NOT NULL,
  `proyecto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`proveedor`,`parte`,`proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectoparteproveedor`
--

LOCK TABLES `proyectoparteproveedor` WRITE;
/*!40000 ALTER TABLE `proyectoparteproveedor` DISABLE KEYS */;
INSERT INTO `proyectoparteproveedor` VALUES (1,1,1,200),(1,1,4,700),(2,3,1,400),(2,3,2,200),(2,3,3,200),(2,3,4,500),(2,3,5,600),(2,3,6,400),(2,3,7,600),(2,5,2,100),(3,3,1,200),(3,4,2,500),(4,6,3,300),(4,6,7,300),(5,1,4,100),(5,2,2,200),(5,2,4,100),(5,3,4,200),(5,4,4,800),(5,5,4,400),(5,5,5,500),(5,5,7,100),(5,6,2,200),(5,6,4,500);
/*!40000 ALTER TABLE `proyectoparteproveedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-21 10:13:35
