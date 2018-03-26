-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: ren234
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `Approver_List`
--

DROP TABLE IF EXISTS `Approver_List`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Approver_List` (
  `Software_Name` varchar(255) NOT NULL,
  `Acronym` varchar(100) NOT NULL,
  `Approver` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Approver_List`
--

LOCK TABLES `Approver_List` WRITE;
/*!40000 ALTER TABLE `Approver_List` DISABLE KEYS */;
INSERT INTO `Approver_List` VALUES ('Remote Stroke Checker','N/A','Al Dente, Douglas Furr'),('Remote Health Checker','N/A','Al Dente, Douglas Furr'),('Lab Information System','LIS','Al Falfa'),('myeHealth (For Yukon, Northwest Territories, Nunavut)','N/A','Al Pacca'),('Ambulance Schedule System','N/A','Art Dekko'),('myeHealth (For Ontario)','N/A','Art Major'),('Chronic Disease Management','N/A','Biff Wellington'),('Find a Doctor','FAD','Bunsen Berner'),('Operating Map of Gastropathy','OMG','Chester Field, Ida Claire'),('Heart Ultrasound Heatmaps','HUH','Dr. Chris P. Bacon'),('Care Manager','N/A','Clay Potts'),('Pharmaceutical Information Program','PIP','Crystal Ball, Pea Pu'),('Heart, Abdomen, and Head Assessor','HAHA','Derry Yare'),('Patient Admitter Tool','PAT','Frank Furter'),('Provider Coverage Viewer','PCV','Ginger Vitus'),('Surgical Information System','SIS','Gladys Dunn'),('Abdomen Tissue and Analysis Tool','AT-AT','Ida Claire'),('Radiology Information System','RIS','Dr. Jed I. Knight'),('Download Urgent Medical Backups','DUMB','Justin Case'),('Total Mastering of Incisions','TMI','Les Wynan '),('PharmaCare','N/A','Mason Jarr'),('myeHealth (for New Brunswick, Prince Edward Island, Nova Scotia, Newfoundland and Labrador)','N/A','Mike Raffone'),('Drug Profile Viewer','DPV','Pea Pu and Crystal Ball'),('myeHealth (For Alberta, Saskatchewan, Manitoba)','N/A','Rocky Rhodes'),('myeHealth (For British Columbia)','N/A','Rod Curtains'),('Homecare System','N/A','Rusty Foord'),('Clinical Admission Manager','N/A','Sonny Day'),('Fixed Orthodontics Medical Operations ','FOMO','Tara Dactyl '),('myeHealth (For Quebec)','N/A','Tess Tamoni'),('Electronic Medical Record (Viewer)','EMR','Tom Foolery'),('Provider Registry System','PRS','Ty Kuhn'),('eHealthChart','N/A','Warren Peace'),('Ambulance Supply System','N/A','Wil Doolittle'),('Environmental Assessor Tool','N/A','Anna Conda'),('Water and Land Data Observer','WALDO','Anne Thrax'),('Pollution Alerts Datamart','PAD','Alan Rench'),('Weather Analyzer Software System Unix Platform','WASSUP','Art A. Choake'),('World Terrain & Forestry','WTF','Brock Lee'),('Weather and Ozone Observation Knowledge Emulator Enterprise Edition','WOOKEEE','Benny Fitz'),('Snowmed Analyzer System Extended Edition','SASEE','Dyl Pickel'),('Spillage Locator Tool','N/A','Harry Beard'),('Biosphere Air and Gas Interpreter','N/A','Honey Potts'),('Waste Electronic & Wireless Equipment','WEWE','Krystal Ball'),('National Ozone Observatory Bot','NOOB','Leah Tarde'),('Clinical Data Repository','CDR','Lotta Noyes'),('Environmental Home Manager','N/A','Linda Hand'),('Planetary Environmental Reference System','PERS','Robyn Banks'),('Greenhouse Gas Analyzer','N/A','Sue Vlaki'),('Northern Ozone & Ocean Biome','NOOB','Will Tickelu'),('Storm Water Management','N/A','Filet Minyon'),('Sustainable Xeriscaping','SuX','Neil Down'),('Alternative Sewage System','N/A','Polly Graff'),('Original Record of Landscape and Yards','ORLY','Seymore Butts'),('Waste Observation System','N/A','Annita Job'),('List of Transactions and Redactions','LOTR','Claire Voyant'),('TeleCare','N/A','Douglas Furr and Al Dente'),('Data & Utility Heuristics','DUH','Goldie Locke'),('Relational Observation System Limited','ROFL','Stan Dupp'),('Netcare Occupation & Observation Base System','NOOBS','Barb Wyre'),('Transcription Magic Interpreter','TMI','Jack Uzz'),('eReferral','N/A','Kayne Kun'),('Limited Operating Liability','LOL','Amanda Huginkiss'),('Observation (version 1)','OB1','Ally Katz'),('Microstrategy','N/A','Anna Nimmity'),('Selected Analytical Methods','SAM','Bud Light'),('Fast Family Finder','N/A','Gene Poole'),('Statistical Analysis System','SAS','Justin Thyme'),('Picture Archive and Communication System','PACS','Paige Turner'),('Statistical Package for Social Sciences','SPSS','Ollie Gark'),('Cleaning Product Analyzer','N/A','Sandy Beech'),('Web Utility Table','WUT','Dot Matricks'),('Cisco WebEx','N/A','Pete Moss'),('Free MySQL Logger','FML','Sue Flay'),('Electronic Lab System Interpolator ','ELSI','Wazziz Naime');
/*!40000 ALTER TABLE `Approver_List` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tickets`
--

DROP TABLE IF EXISTS `Tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tickets` (
  `Approval_Status` varchar(100) NOT NULL,
  `User_ID` varchar(100) NOT NULL,
  `Software_Requested` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tickets`
--

LOCK TABLES `Tickets` WRITE;
/*!40000 ALTER TABLE `Tickets` DISABLE KEYS */;
INSERT INTO `Tickets` VALUES ('Wait','1','LOL');
/*!40000 ALTER TABLE `Tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `User_ID` varchar(100) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Email_Address` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('1','Tom','Cat','tomcat@gmail.com','tomcat123'),('2','Micky','Mouse','mickymouse@gmail.com','micky123');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

-- Dump completed on 2018-03-15 11:50:05
