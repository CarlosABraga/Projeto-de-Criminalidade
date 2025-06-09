CREATE DATABASE  IF NOT EXISTS `mmd_criminalidade` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `mmd_criminalidade`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mmd_criminalidade
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `dimcategoriadocrime`
--

DROP TABLE IF EXISTS `dimcategoriadocrime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimcategoriadocrime` (
  `IdDimCategoriadoCrime` int(11) NOT NULL AUTO_INCREMENT,
  `DeCategoriaCrime` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`IdDimCategoriadoCrime`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimcategoriadocrime`
--

LOCK TABLES `dimcategoriadocrime` WRITE;
/*!40000 ALTER TABLE `dimcategoriadocrime` DISABLE KEYS */;
INSERT INTO `dimcategoriadocrime` VALUES (4,'Não'),(5,'Sim');
/*!40000 ALTER TABLE `dimcategoriadocrime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimidhm`
--

DROP TABLE IF EXISTS `dimidhm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimidhm` (
  `IdIDHM` int(11) NOT NULL AUTO_INCREMENT,
  `Posicao` smallint(6) DEFAULT NULL,
  `UFIDHM` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IdIDHM`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimidhm`
--

LOCK TABLES `dimidhm` WRITE;
/*!40000 ALTER TABLE `dimidhm` DISABLE KEYS */;
INSERT INTO `dimidhm` VALUES (32,1,'Distrito Federal'),(33,2,'São Paulo'),(34,3,'Santa Catarina'),(35,4,'Minas Gerais'),(36,5,'Rio Grande do Sul'),(37,5,'Espírito Santo'),(38,7,'Paraná'),(39,8,'Rio de Janeiro'),(40,9,'Mato Grosso do Sul'),(41,10,'Goiás'),(42,11,'Mato Grosso'),(43,12,'Ceará'),(44,13,'Tocantins'),(45,14,'Rio Grande do Norte'),(46,15,'Pernambuco'),(47,16,'Acre'),(48,17,'Sergipe'),(49,18,'Rondônia'),(50,18,'Amazonas'),(51,20,'Roraima'),(52,21,'Paraíba'),(53,22,'Bahia'),(54,23,'Pará'),(55,23,'Piauí'),(56,25,'Amapá'),(57,26,'Alagoas'),(58,27,'Maranhão');
/*!40000 ALTER TABLE `dimidhm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimidhmeducacao`
--

DROP TABLE IF EXISTS `dimidhmeducacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimidhmeducacao` (
  `IdIDHMEducacao` int(11) NOT NULL AUTO_INCREMENT,
  `Posicao` smallint(6) DEFAULT NULL,
  `UFEducacao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IdIDHMEducacao`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimidhmeducacao`
--

LOCK TABLES `dimidhmeducacao` WRITE;
/*!40000 ALTER TABLE `dimidhmeducacao` DISABLE KEYS */;
INSERT INTO `dimidhmeducacao` VALUES (32,2,'Distrito Federal'),(33,1,'São Paulo'),(34,3,'Santa Catarina'),(35,7,'Minas Gerais'),(36,10,'Rio Grande do Sul'),(37,11,'Espírito Santo'),(38,4,'Paraná'),(39,8,'Rio de Janeiro'),(40,12,'Mato Grosso do Sul'),(41,5,'Goiás'),(42,8,'Mato Grosso'),(43,6,'Ceará'),(44,13,'Tocantins'),(45,22,'Rio Grande do Norte'),(46,14,'Pernambuco'),(47,19,'Acre'),(48,21,'Sergipe'),(49,18,'Rondônia'),(50,15,'Amazonas'),(51,24,'Roraima'),(52,25,'Paraíba'),(53,26,'Bahia'),(54,20,'Pará'),(55,17,'Piauí'),(56,27,'Amapá'),(57,23,'Alagoas'),(58,16,'Maranhão');
/*!40000 ALTER TABLE `dimidhmeducacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimidhmlongevidade`
--

DROP TABLE IF EXISTS `dimidhmlongevidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimidhmlongevidade` (
  `IdIDHMLongevidade` int(11) NOT NULL AUTO_INCREMENT,
  `Posicao` smallint(6) DEFAULT NULL,
  `UFLongevidade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IdIDHMLongevidade`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimidhmlongevidade`
--

LOCK TABLES `dimidhmlongevidade` WRITE;
/*!40000 ALTER TABLE `dimidhmlongevidade` DISABLE KEYS */;
INSERT INTO `dimidhmlongevidade` VALUES (32,6,'Distrito Federal'),(33,5,'São Paulo'),(34,3,'Santa Catarina'),(35,2,'Minas Gerais'),(36,7,'Rio Grande do Sul'),(37,1,'Espírito Santo'),(38,10,'Paraná'),(39,16,'Rio de Janeiro'),(40,18,'Mato Grosso do Sul'),(41,26,'Goiás'),(42,24,'Mato Grosso'),(43,11,'Ceará'),(44,12,'Tocantins'),(45,4,'Rio Grande do Norte'),(46,7,'Pernambuco'),(47,9,'Acre'),(48,17,'Sergipe'),(49,23,'Rondônia'),(50,21,'Amazonas'),(51,20,'Roraima'),(52,12,'Paraíba'),(53,15,'Bahia'),(54,21,'Pará'),(55,25,'Piauí'),(56,14,'Amapá'),(57,19,'Alagoas'),(58,27,'Maranhão');
/*!40000 ALTER TABLE `dimidhmlongevidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimidhmrenda`
--

DROP TABLE IF EXISTS `dimidhmrenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimidhmrenda` (
  `IdIDHMRenda` int(11) NOT NULL AUTO_INCREMENT,
  `Posicao` smallint(6) DEFAULT NULL,
  `UfRenda` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IdIDHMRenda`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimidhmrenda`
--

LOCK TABLES `dimidhmrenda` WRITE;
/*!40000 ALTER TABLE `dimidhmrenda` DISABLE KEYS */;
INSERT INTO `dimidhmrenda` VALUES (1,1,'Distrito Federal'),(2,2,'São Paulo'),(3,4,'Santa Catarina'),(4,9,'Minas Gerais'),(5,3,'Rio Grande do Sul'),(6,10,'Espírito Santo'),(7,6,'Paraná'),(8,4,'Rio de Janeiro'),(9,7,'Mato Grosso do Sul'),(10,11,'Goiás'),(11,8,'Mato Grosso'),(12,17,'Ceará'),(13,13,'Tocantins'),(14,12,'Rio Grande do Norte'),(15,23,'Pernambuco'),(16,18,'Acre'),(17,16,'Sergipe'),(18,15,'Rondônia'),(19,25,'Amazonas'),(20,14,'Roraima'),(21,19,'Paraíba'),(22,21,'Bahia'),(23,24,'Pará'),(24,20,'Piauí'),(25,21,'Amapá'),(26,26,'Alagoas'),(27,27,'Maranhão');
/*!40000 ALTER TABLE `dimidhmrenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimsexo`
--

DROP TABLE IF EXISTS `dimsexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimsexo` (
  `idSexo` int(11) NOT NULL AUTO_INCREMENT,
  `DeSexo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSexo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimsexo`
--

LOCK TABLES `dimsexo` WRITE;
/*!40000 ALTER TABLE `dimsexo` DISABLE KEYS */;
INSERT INTO `dimsexo` VALUES (4,'Sexo NI'),(5,'Feminino'),(6,'Masculino');
/*!40000 ALTER TABLE `dimsexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimtempo`
--

DROP TABLE IF EXISTS `dimtempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimtempo` (
  `IdTempo` int(11) NOT NULL AUTO_INCREMENT,
  `Ano` smallint(6) DEFAULT NULL,
  `Mes` smallint(6) DEFAULT NULL,
  `Semestre` smallint(6) DEFAULT NULL,
  `Nome_mes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IdTempo`)
) ENGINE=InnoDB AUTO_INCREMENT=202213 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimtempo`
--

LOCK TABLES `dimtempo` WRITE;
/*!40000 ALTER TABLE `dimtempo` DISABLE KEYS */;
INSERT INTO `dimtempo` VALUES (201501,2015,1,1,'January'),(201502,2015,2,1,'February'),(201503,2015,3,1,'March'),(201504,2015,4,1,'April'),(201505,2015,5,1,'May'),(201506,2015,6,1,'June'),(201507,2015,7,2,'July'),(201508,2015,8,2,'August'),(201509,2015,9,2,'September'),(201510,2015,10,2,'October'),(201511,2015,11,2,'November'),(201512,2015,12,2,'December'),(201601,2016,1,1,'January'),(201602,2016,2,1,'February'),(201603,2016,3,1,'March'),(201604,2016,4,1,'April'),(201605,2016,5,1,'May'),(201606,2016,6,1,'June'),(201607,2016,7,2,'July'),(201608,2016,8,2,'August'),(201609,2016,9,2,'September'),(201610,2016,10,2,'October'),(201611,2016,11,2,'November'),(201612,2016,12,2,'December'),(201701,2017,1,1,'January'),(201702,2017,2,1,'February'),(201703,2017,3,1,'March'),(201704,2017,4,1,'April'),(201705,2017,5,1,'May'),(201706,2017,6,1,'June'),(201707,2017,7,2,'July'),(201708,2017,8,2,'August'),(201709,2017,9,2,'September'),(201710,2017,10,2,'October'),(201711,2017,11,2,'November'),(201712,2017,12,2,'December'),(201801,2018,1,1,'January'),(201802,2018,2,1,'February'),(201803,2018,3,1,'March'),(201804,2018,4,1,'April'),(201805,2018,5,1,'May'),(201806,2018,6,1,'June'),(201807,2018,7,2,'July'),(201808,2018,8,2,'August'),(201809,2018,9,2,'September'),(201810,2018,10,2,'October'),(201811,2018,11,2,'November'),(201812,2018,12,2,'December'),(201901,2019,1,1,'January'),(201902,2019,2,1,'February'),(201903,2019,3,1,'March'),(201904,2019,4,1,'April'),(201905,2019,5,1,'May'),(201906,2019,6,1,'June'),(201907,2019,7,2,'July'),(201908,2019,8,2,'August'),(201909,2019,9,2,'September'),(201910,2019,10,2,'October'),(201911,2019,11,2,'November'),(201912,2019,12,2,'December'),(202001,2020,1,1,'January'),(202002,2020,2,1,'February'),(202003,2020,3,1,'March'),(202004,2020,4,1,'April'),(202005,2020,5,1,'May'),(202006,2020,6,1,'June'),(202007,2020,7,2,'July'),(202008,2020,8,2,'August'),(202009,2020,9,2,'September'),(202010,2020,10,2,'October'),(202011,2020,11,2,'November'),(202012,2020,12,2,'December'),(202101,2021,1,1,'January'),(202102,2021,2,1,'February'),(202103,2021,3,1,'March'),(202104,2021,4,1,'April'),(202105,2021,5,1,'May'),(202106,2021,6,1,'June'),(202107,2021,7,2,'July'),(202108,2021,8,2,'August'),(202109,2021,9,2,'September'),(202110,2021,10,2,'October'),(202111,2021,11,2,'November'),(202112,2021,12,2,'December'),(202201,2022,1,1,'January'),(202202,2022,2,1,'February'),(202203,2022,3,1,'March'),(202204,2022,4,1,'April'),(202205,2022,5,1,'May'),(202206,2022,6,1,'June'),(202207,2022,7,2,'July'),(202208,2022,8,2,'August'),(202209,2022,9,2,'September'),(202210,2022,10,2,'October'),(202211,2022,11,2,'November'),(202212,2022,12,2,'December');
/*!40000 ALTER TABLE `dimtempo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimtipocrime`
--

DROP TABLE IF EXISTS `dimtipocrime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimtipocrime` (
  `idTipoCrime` int(11) NOT NULL AUTO_INCREMENT,
  `DeTipoCrime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipoCrime`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimtipocrime`
--

LOCK TABLES `dimtipocrime` WRITE;
/*!40000 ALTER TABLE `dimtipocrime` DISABLE KEYS */;
INSERT INTO `dimtipocrime` VALUES (16,'Estupro'),(17,'Furto de veículo'),(18,'Roubo a instituição financeira'),(19,'Roubo de carga'),(20,'Roubo de veículo'),(21,'Tentativa de homicídio'),(22,'Homicídio doloso'),(23,'Lesão corporal seguida de morte'),(24,'Roubo seguido de morte (latrocínio)');
/*!40000 ALTER TABLE `dimtipocrime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimuf`
--

DROP TABLE IF EXISTS `dimuf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimuf` (
  `idDimUF` int(11) NOT NULL AUTO_INCREMENT,
  `DeUF` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDimUF`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimuf`
--

LOCK TABLES `dimuf` WRITE;
/*!40000 ALTER TABLE `dimuf` DISABLE KEYS */;
INSERT INTO `dimuf` VALUES (32,'Acre'),(33,'Alagoas'),(34,'Amapá'),(35,'Amazonas'),(36,'Bahia'),(37,'Ceará'),(38,'Distrito Federal'),(39,'Espírito Santo'),(40,'Goiás'),(41,'Maranhão'),(42,'Mato Grosso'),(43,'Mato Grosso do Sul'),(44,'Minas Gerais'),(45,'Pará'),(46,'Paraíba'),(47,'Paraná'),(48,'Pernambuco'),(49,'Piauí'),(50,'Rio de Janeiro'),(51,'Rio Grande do Norte'),(52,'Rio Grande do Sul'),(53,'Rondônia'),(54,'Roraima'),(55,'Santa Catarina'),(56,'São Paulo'),(57,'Sergipe'),(58,'Tocantins');
/*!40000 ALTER TABLE `dimuf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fatocrime`
--

DROP TABLE IF EXISTS `fatocrime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fatocrime` (
  `idSexo` int(11) NOT NULL,
  `idUF` int(11) NOT NULL,
  `idDimUF` int(11) NOT NULL,
  `IdIDHM` int(11) NOT NULL,
  `IdLongevidade` int(11) NOT NULL,
  `IdRenda` int(11) NOT NULL,
  `IdEducacao` int(11) NOT NULL,
  `Ocorrencias` int(11) DEFAULT NULL,
  `idTipoCrime` int(11) NOT NULL,
  `IdDimCategoriadoCrime` int(11) NOT NULL,
  `IdTempo` int(11) NOT NULL,
  PRIMARY KEY (`idSexo`,`idUF`,`idDimUF`,`IdIDHM`,`IdLongevidade`,`IdRenda`,`IdEducacao`,`idTipoCrime`,`IdDimCategoriadoCrime`,`IdTempo`),
  KEY `fk_Fato Crime_DimSexo_idx` (`idSexo`),
  KEY `fk_Fato Crime_UF1_idx` (`idUF`),
  KEY `fk_Fato Crime_DimUF1_idx` (`idDimUF`),
  KEY `fk_Fato Crime_DimIDHM1_idx` (`IdIDHM`),
  KEY `fk_Fato Crime_DimLongevidade1_idx` (`IdLongevidade`),
  KEY `fk_Fato Crime_DimRenda1_idx` (`IdRenda`),
  KEY `fk_Fato Crime_DimEducação1_idx` (`IdEducacao`),
  KEY `fk_Fato Crime_DimTipoCrime1_idx` (`idTipoCrime`),
  KEY `fk_FatoCrime_DimCategoriadoCrime1_idx` (`IdDimCategoriadoCrime`),
  KEY `fk_FatoCrime_DimTempo1_idx` (`IdTempo`),
  CONSTRAINT `fk_Fato Crime_DimEducação1` FOREIGN KEY (`IdEducacao`) REFERENCES `dimidhmeducacao` (`IdIDHMEducacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fato Crime_DimIDHM1` FOREIGN KEY (`IdIDHM`) REFERENCES `dimidhm` (`IdIDHM`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fato Crime_DimLongevidade1` FOREIGN KEY (`IdLongevidade`) REFERENCES `dimidhmlongevidade` (`IdIDHMLongevidade`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fato Crime_DimRenda1` FOREIGN KEY (`IdRenda`) REFERENCES `dimidhmrenda` (`IdIDHMRenda`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fato Crime_DimSexo` FOREIGN KEY (`idSexo`) REFERENCES `dimsexo` (`idSexo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fato Crime_DimTipoCrime1` FOREIGN KEY (`idTipoCrime`) REFERENCES `dimtipocrime` (`idTipoCrime`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fato Crime_DimUF1` FOREIGN KEY (`idDimUF`) REFERENCES `dimidhmuf` (`idIDHMDUF`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fato Crime_UF1` FOREIGN KEY (`idUF`) REFERENCES `dimuf` (`idDimUF`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FatoCrime_DimCategoriadoCrime1` FOREIGN KEY (`IdDimCategoriadoCrime`) REFERENCES `dimcategoriadocrime` (`IdDimCategoriadoCrime`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FatoCrime_DimTempo1` FOREIGN KEY (`IdTempo`) REFERENCES `dimtempo` (`IdTempo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fatocrime`
--

LOCK TABLES `fatocrime` WRITE;
/*!40000 ALTER TABLE `fatocrime` DISABLE KEYS */;
/*!40000 ALTER TABLE `fatocrime` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-05 10:50:41
