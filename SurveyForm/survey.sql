-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: survey
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `applier`
--

DROP TABLE IF EXISTS `applier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(80) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Occupation` varchar(20) DEFAULT NULL,
  `Domain` varchar(200) DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applier`
--

LOCK TABLES `applier` WRITE;
/*!40000 ALTER TABLE `applier` DISABLE KEYS */;
INSERT INTO `applier` VALUES (1,'Shubham Pandey','shubhampandeycse1@gmail.com','student','java, react, django, c#','How are you?'),(2,'Ansh','ansh@gmail.com','student','java, python, c, angular','Hi'),(3,'Aditya','as@gmail.com','student','java, js, sprng, c#, angular','hat is red.'),(4,'Rahul','rahul@gmail.com','job','java, react, sprng, c, c++, angular','I want to do internship.'),(5,'Ram','ram@gmail.com','student','java, react, django, c++','we want to do internship');
/*!40000 ALTER TABLE `applier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(80) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Age` varchar(10) DEFAULT NULL,
  `Occupation` varchar(20) DEFAULT NULL,
  `Refer` varchar(20) DEFAULT NULL,
  `Domain` varchar(200) DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Shubham Pandey','www.shubhamp1@gmail.com','25','student','alsfjldsafl','yes','java, sprng, c++'),(2,'Shubham Pandey','www.shubhamp1@gmail.com','20','student','no','react, sprng, c, c++','klasjtfklsdafgldksa'),(3,'Reema','reema@gmail.com','23','student','yes','java, python, c, c++, angular','How are you?'),(4,'Shyam ','shyam@gmail.com','20','teacher','yes','js, react, sprng, c, c++','I have done internship in these domain');
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

-- Dump completed on 2023-08-30 16:12:08
