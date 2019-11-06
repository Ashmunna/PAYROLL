CREATE DATABASE  IF NOT EXISTS `jarvispms` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jarvispms`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: localhost    Database: jarvispms
-- ------------------------------------------------------
-- Server version	5.1.60-community

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
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `doh` varchar(255) DEFAULT NULL,
  `basic_salary` double NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Md. Ashraful','Islam','1993-11-06','Male','munna.01fm@gmail.com','01916277170','Dhaka												\r\n												\r\n												\r\n												\r\n												\r\n												\r\n												\r\n												\r\n												','Infomation Technology','Web Developer','Active','2019-11-06',30000,NULL,NULL),(3,'Md. Abdullah Al','Asif','1994-11-30','Male','asif@gmail.com','01687967271','Gazipur												\r\n												\r\n												\r\n												\r\n												\r\n												','Infomation Technology','Web Developer','Active','2019-11-22',20000,NULL,NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeallowances`
--

DROP TABLE IF EXISTS `employeeallowances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeeallowances` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `emp_id` bigint(20) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `basic_salary` double NOT NULL,
  `overtime_amount` double NOT NULL,
  `houserent` double NOT NULL,
  `ma` double NOT NULL,
  `tfa` double NOT NULL,
  `oa` double NOT NULL,
  `ts` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeallowances`
--

LOCK TABLES `employeeallowances` WRITE;
/*!40000 ALTER TABLE `employeeallowances` DISABLE KEYS */;
INSERT INTO `employeeallowances` VALUES (1,1,'Md. Ashraful','Islam','munna.01fm@gmail.com','Dhaka												\r\n												 \r\n						','Infomation Technology','Web Developer',30000,6400,3000,3000,3000,3000,48400),(3,3,'Md. Abdullah Al','Asif','asif@gmail.com','Gazipur												 \r\n						','Infomation Technology','Web Developer',20000,10000,2000,2000,2000,2000,38000);
/*!40000 ALTER TABLE `employeeallowances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeededuction`
--

DROP TABLE IF EXISTS `employeededuction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeededuction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `emp_id` bigint(20) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `gross_salary` double NOT NULL,
  `lifeinsurance` double NOT NULL,
  `advance` double NOT NULL,
  `mealcharge` double NOT NULL,
  `contribution_pf` double NOT NULL,
  `other` double NOT NULL,
  `netpay` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeededuction`
--

LOCK TABLES `employeededuction` WRITE;
/*!40000 ALTER TABLE `employeededuction` DISABLE KEYS */;
INSERT INTO `employeededuction` VALUES (1,1,'Md. Ashraful','Islam','munna.01fm@gmail.com','Dhaka												\r\n												 \r\n						 \r\n						','Infomation Technology','Web Developer',48400,2420,1500,7260,968,200,36052),(3,3,'Md. Abdullah Al','Asif','asif@gmail.com','Gazipur												 \r\n						 \r\n						','Infomation Technology','Web Developer',38000,1900,1000,1900,1900,1000,30300);
/*!40000 ALTER TABLE `employeededuction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userinfo` (
  `userId` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `createdDate` varchar(255) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (1,'Md. Ashraful','Islam','munna.01fm@gmail.com','admin','admin','$2a$10$Cd8QK7Ribj4Hbpm5NjyR7O5ooAb75hcu8naZVju7WIxhJ9exL0NUK','','2019-11-06',NULL),(2,'Md. Ashraful','Islam','munna.01fm@gmail.com','user','user','$2a$10$66bhSy55N8WN7F4v.FVz0u7RbShtBN6QBP5Tc7J.m3PCTK48X1ksi','','2019-11-06',NULL);
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-07  2:39:56
