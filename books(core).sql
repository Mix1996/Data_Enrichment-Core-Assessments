CREATE DATABASE  IF NOT EXISTS `books` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `books`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: books
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `author_tbl`
--

DROP TABLE IF EXISTS `author_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author_tbl` (
  `index` bigint DEFAULT NULL,
  `id` bigint DEFAULT NULL,
  `author_name` text,
  KEY `ix_author_tbl_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author_tbl`
--

LOCK TABLES `author_tbl` WRITE;
/*!40000 ALTER TABLE `author_tbl` DISABLE KEYS */;
INSERT INTO `author_tbl` VALUES (0,1,'Stephen King'),(1,2,'F.Scott Fitgerald'),(2,3,'Jack London'),(3,4,'Jane Austen'),(4,5,'Mary Shelley');
/*!40000 ALTER TABLE `author_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_tbl`
--

DROP TABLE IF EXISTS `book_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_tbl` (
  `index` bigint DEFAULT NULL,
  `id` bigint DEFAULT NULL,
  `title` text,
  `author_id` bigint DEFAULT NULL,
  KEY `ix_book_tbl_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_tbl`
--

LOCK TABLES `book_tbl` WRITE;
/*!40000 ALTER TABLE `book_tbl` DISABLE KEYS */;
INSERT INTO `book_tbl` VALUES (0,1,'The Shining',1),(1,2,'It',1),(2,3,'The Great Gatsby',2),(3,4,'The Call of the Wild',3),(4,5,'Pride and Prejudice',4),(5,6,'Frankenstein',5);
/*!40000 ALTER TABLE `book_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fav_tbl`
--

DROP TABLE IF EXISTS `fav_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fav_tbl` (
  `index` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `book_id` bigint DEFAULT NULL,
  KEY `ix_fav_tbl_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fav_tbl`
--

LOCK TABLES `fav_tbl` WRITE;
/*!40000 ALTER TABLE `fav_tbl` DISABLE KEYS */;
INSERT INTO `fav_tbl` VALUES (0,1,1),(1,1,2),(2,1,3),(3,2,4),(4,2,5),(5,3,5),(6,3,6);
/*!40000 ALTER TABLE `fav_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tbl`
--

DROP TABLE IF EXISTS `user_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_tbl` (
  `index` bigint DEFAULT NULL,
  `id` bigint DEFAULT NULL,
  `first_name` text,
  `last_name` text,
  `email` text,
  KEY `ix_user_tbl_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tbl`
--

LOCK TABLES `user_tbl` WRITE;
/*!40000 ALTER TABLE `user_tbl` DISABLE KEYS */;
INSERT INTO `user_tbl` VALUES (0,1,'John','Doe','JD@books.com'),(1,2,'Robin','Smith','Robin@books.com'),(2,3,'Gloria','Rodriguez','grodriquez@books.com');
/*!40000 ALTER TABLE `user_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-26 21:07:59
