-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: dbms
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
-- Temporary view structure for view `blooddes`
--

DROP TABLE IF EXISTS `blooddes`;
/*!50001 DROP VIEW IF EXISTS `blooddes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `blooddes` AS SELECT 
 1 AS `donorID`,
 1 AS `Name`,
 1 AS `Fathername`,
 1 AS `Mothername`,
 1 AS `DOB`,
 1 AS `MobileNo`,
 1 AS `Gender`,
 1 AS `Email`,
 1 AS `BloodGroup`,
 1 AS `City`,
 1 AS `Address`,
 1 AS `Details`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `blooddetails`
--

DROP TABLE IF EXISTS `blooddetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blooddetails` (
  `bloodgroup` varchar(4) NOT NULL,
  `Details` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bloodgroup`),
  CONSTRAINT `blooddetails_ibfk_1` FOREIGN KEY (`bloodgroup`) REFERENCES `stock` (`BloodGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blooddetails`
--

LOCK TABLES `blooddetails` WRITE;
/*!40000 ALTER TABLE `blooddetails` DISABLE KEYS */;
INSERT INTO `blooddetails` VALUES ('A-','can receive blood that\'s A negative or O negative.'),('A+','can receive blood that\'s A positive, A negative, O positive or O negative.'),('AB-','can receive blood that\'s AB negative, A negative, B negative or O negative.'),('AB+','can receive any blood type.'),('B-','can receive blood that\'s B negative or O negative.'),('B+','can receive blood that\'s B positive, B negative, O positive or O negative.'),('O-','can only receive blood that\'s O negative.'),('O+','can receive blood that\'s O positive or O negative.');
/*!40000 ALTER TABLE `blooddetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor`
--

DROP TABLE IF EXISTS `donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor` (
  `donorID` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Fathername` varchar(100) DEFAULT NULL,
  `Mothername` varchar(100) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `MobileNo` varchar(10) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `BloodGroup` varchar(10) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`donorID`),
  KEY `BloodGroup` (`BloodGroup`),
  CONSTRAINT `donor_ibfk_1` FOREIGN KEY (`BloodGroup`) REFERENCES `stock` (`BloodGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor`
--

LOCK TABLES `donor` WRITE;
/*!40000 ALTER TABLE `donor` DISABLE KEYS */;
INSERT INTO `donor` VALUES (1,'Runa ','S M Jha','Minu','16-33-2002','9876478594','Female','Runa12@gmail.com','O+','Darbhanga','Darbhanga, Bihar'),(2,'Advik S','M  N Dev','H Adya','12-39-2005','9865443678','Male ','k123@gmail.com','A+','Patna','Patna, Bihar'),(3,'Arnav C','C K Arav','B Megha','15-42-2013','9887856543','Male ','Arnav@gmail.com','B+','Banglore','Banglore, Karnataka'),(5,'Anubhav','Chandrashekar N','K Lalita','10-45-2003','7672414489','Male ','Anu@gamil.com','B+','Ananthpur','Andhra Pradesh'),(6,'N Guru','N Gowtham','A Anandi','13-48-2002','8976874563','Male ','Guru14@gmail.com','O+','Hindupur','Andhra Pradesh'),(7,'Arvinda H','Kabir C','Jiya M','04-53-2006','6789463728','Female','Arvinda@gmail.com','B-','Chennai','Tamil Nadu'),(8,'Kavitha V','Kripalu k N','Kriti S','18-54-1999','7098667403','Female','KV12@Gmail.com','O-','Madhurai','Tamil Nadu'),(9,'Vikrant Singh','Kabir Singh','Ankita Singh','20-56-2002','8976564573','Female','VKA20@gmail.com','AB+','Jaipur','Rajasthan'),(10,'Vatshalya J','Jungkook V','Lasya Kuna','17-59-1995','988779654','Male ','Vat17@gmail.com','AB-','Banglore','Karnataka'),(11,'Apurva','C M Jha','Ruby Jha','19-11-2007','898686566','Male ','ap12@gmail.com','O+','Darbhanga','Bihar');
/*!40000 ALTER TABLE `donor` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_stock_after_donation` AFTER INSERT ON `donor` FOR EACH ROW BEGIN
    UPDATE stock
    SET available = available + 1
    WHERE BloodGroup = NEW.BloodGroup;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queries` (
  `donorID` int DEFAULT NULL,
  `blood` varchar(10) DEFAULT NULL,
  `query` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries`
--

LOCK TABLES `queries` WRITE;
/*!40000 ALTER TABLE `queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `BloodGroup` varchar(20) NOT NULL,
  `Available` int DEFAULT NULL,
  PRIMARY KEY (`BloodGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES ('A-',5),('A+',7),('AB-',8),('AB+',6),('B-',4),('B+',2),('O-',6),('O+',3);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userinfo` (
  `EmailID` varchar(20) DEFAULT NULL,
  `UserName` varchar(10) NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES ('abc@gmail.com','Ab','ab12');
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `blooddes`
--

/*!50001 DROP VIEW IF EXISTS `blooddes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `blooddes` AS select `d`.`donorID` AS `donorID`,`d`.`Name` AS `Name`,`d`.`Fathername` AS `Fathername`,`d`.`Mothername` AS `Mothername`,`d`.`DOB` AS `DOB`,`d`.`MobileNo` AS `MobileNo`,`d`.`Gender` AS `Gender`,`d`.`Email` AS `Email`,`d`.`BloodGroup` AS `BloodGroup`,`d`.`City` AS `City`,`d`.`Address` AS `Address`,`b`.`Details` AS `Details` from (`donor` `d` join `blooddetails` `b`) where (`d`.`BloodGroup` = `b`.`bloodgroup`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-24  9:58:34
