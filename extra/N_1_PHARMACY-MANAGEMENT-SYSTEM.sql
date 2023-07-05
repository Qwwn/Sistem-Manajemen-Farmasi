-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: farmasi
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `appuser`
--

DROP TABLE IF EXISTS `appuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appuser` (
  `appuser_pk` int NOT NULL AUTO_INCREMENT,
  `userRole` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `mobileNumber` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`appuser_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appuser`
--

LOCK TABLES `appuser` WRITE;
/*!40000 ALTER TABLE `appuser` DISABLE KEYS */;
INSERT INTO `appuser` VALUES (1,'Admin','Admin','01-06-2023','1111111111','admin@admin.com','admin','admin','banyumas'),(2,'Pharmacist','agyl','02-06-2023','1111111111','agyl@pharmacist.com','agyl','agyl','indonesia'),(3,'Pharmacist','Aziz','13-07-2023','1234567891','aziz@gmail.com','aziz','aziz','banyumas'),(4,'Pharmacist','Ashir','06-07-2023','1234567890','asir@gmail.com','asir','asir','bima'),(5,'Pharmacist','anjani','07-07-2023','1234567892','anjani@gmail.com','anjani','anjani','pwt');
/*!40000 ALTER TABLE `appuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `bill_pk` int NOT NULL AUTO_INCREMENT,
  `billId` varchar(200) DEFAULT NULL,
  `billDate` varchar(50) DEFAULT NULL,
  `totalPaid` bigint DEFAULT NULL,
  `generatedBy` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bill_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,'Bill-270884035931500','26-06-2023',10001,'agyl'),(2,'Bill-270993004046000','26-06-2023',10001,'agyl'),(3,'Bill-271044319109399','26-06-2023',10001,'agyl'),(4,'Bill-272395123495500','26-06-2023',1,'agyl'),(5,'Bill-155860112711300','05-07-2023',100000,'aziz');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine` (
  `medicine_pk` int NOT NULL AUTO_INCREMENT,
  `uniqueid` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `companyName` varchar(200) DEFAULT NULL,
  `quantity` bigint DEFAULT NULL,
  `price` bigint DEFAULT NULL,
  PRIMARY KEY (`medicine_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (1,'004','VITC','kalbe',198,10001),(2,'01','qw','qw',0,1),(3,'009','bodrexx','kalbe',990,10000),(4,'010','paramex','kalbe',10000,20000),(5,'011','vaksin','kalbe',1000,50000);
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-05 12:16:37
