-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: javapre
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `t_bank`
--

DROP TABLE IF EXISTS `t_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_bank` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ischoose` tinyint(1) NOT NULL,
  `design` varchar(400) NOT NULL,
  `ans` varchar(100) NOT NULL,
  `score` int NOT NULL DEFAULT '2',
  `cates` varchar(30) NOT NULL,
  `option1` varchar(100) DEFAULT NULL,
  `option2` varchar(100) DEFAULT NULL,
  `option3` varchar(100) DEFAULT NULL,
  `option4` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cates_subject` (`cates`),
  CONSTRAINT `fk_cates_subject` FOREIGN KEY (`cates`) REFERENCES `t_subject` (`subjectname`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_bank`
--

LOCK TABLES `t_bank` WRITE;
/*!40000 ALTER TABLE `t_bank` DISABLE KEYS */;
INSERT INTO `t_bank` VALUES (1,1,'下列选项中，代表视图部分的是：','4',2,'前端','Element','DOM','Model','View'),(2,0,'Vue是渐进式JS框架，渐进式的意义是什么','主张最少',2,'前端',NULL,NULL,NULL,NULL),(3,1,'下列框架中，选择持久层框架','1',2,'后端','MyBatis','Spring','SpringMVC','redis');
/*!40000 ALTER TABLE `t_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_grade`
--

DROP TABLE IF EXISTS `t_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_grade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gradename` varchar(30) NOT NULL,
  `teacherid` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gradename` (`gradename`),
  KEY `fk_teacherid_username` (`teacherid`),
  CONSTRAINT `fk_teacherid_username` FOREIGN KEY (`teacherid`) REFERENCES `t_teacher` (`username`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_grade`
--

LOCK TABLES `t_grade` WRITE;
/*!40000 ALTER TABLE `t_grade` DISABLE KEYS */;
INSERT INTO `t_grade` VALUES (1,'2023Java','t_001'),(2,'2023前端','t_001'),(3,'2023Python','t_001');
/*!40000 ALTER TABLE `t_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_record`
--

DROP TABLE IF EXISTS `t_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_record` (
  `id` int NOT NULL AUTO_INCREMENT,
  `studentid` varchar(30) NOT NULL,
  `taskid` int DEFAULT NULL,
  `score` int NOT NULL DEFAULT '0',
  `summittime` datetime DEFAULT CURRENT_TIMESTAMP,
  `wrongans` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_record`
--

LOCK TABLES `t_record` WRITE;
/*!40000 ALTER TABLE `t_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_student`
--

DROP TABLE IF EXISTS `t_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `studentname` varchar(30) NOT NULL,
  `sex` char(1) NOT NULL,
  `gradename` varchar(30) NOT NULL,
  `avatar` varchar(100) DEFAULT 'https://gw.alipayobjects.com/zos/antfincdn/aPkFc8Sj7n/method-draw-image.svg',
  PRIMARY KEY (`id`),
  KEY `fk_username_stu` (`username`),
  KEY `fk_gradename` (`gradename`),
  CONSTRAINT `fk_gradename` FOREIGN KEY (`gradename`) REFERENCES `t_grade` (`gradename`) ON DELETE CASCADE,
  CONSTRAINT `fk_username_stu` FOREIGN KEY (`username`) REFERENCES `t_user` (`username`) ON DELETE CASCADE,
  CONSTRAINT `t_student_chk_1` CHECK (((`sex` = _utf8mb4'w') or (`sex` = _utf8mb4'm')))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_student`
--

LOCK TABLES `t_student` WRITE;
/*!40000 ALTER TABLE `t_student` DISABLE KEYS */;
INSERT INTO `t_student` VALUES (1,'2020101001','mob','m','2023Java','https://gw.alipayobjects.com/zos/antfincdn/aPkFc8Sj7n/method-draw-image.svg'),(2,'2020101002','提纳里','m','2023Java','https://gw.alipayobjects.com/zos/antfincdn/aPkFc8Sj7n/method-draw-image.svg'),(3,'2020101642','陈小宇','m','2023Java','https://gw.alipayobjects.com/zos/antfincdn/aPkFc8Sj7n/method-draw-image.svg');
/*!40000 ALTER TABLE `t_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_subject`
--

DROP TABLE IF EXISTS `t_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_subject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subjectname` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subjectname` (`subjectname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_subject`
--

LOCK TABLES `t_subject` WRITE;
/*!40000 ALTER TABLE `t_subject` DISABLE KEYS */;
INSERT INTO `t_subject` VALUES (1,'前端'),(2,'后端'),(3,'数据库');
/*!40000 ALTER TABLE `t_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_task`
--

DROP TABLE IF EXISTS `t_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_task` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `teacherid` varchar(30) NOT NULL,
  `total_score` int NOT NULL DEFAULT '0',
  `total_num` int NOT NULL DEFAULT '0',
  `start_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_date` datetime NOT NULL DEFAULT '9999-12-31 23:59:59',
  PRIMARY KEY (`id`),
  KEY `fk_teacherid_name` (`teacherid`),
  CONSTRAINT `fk_teacherid_name` FOREIGN KEY (`teacherid`) REFERENCES `t_teacher` (`username`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_task`
--

LOCK TABLES `t_task` WRITE;
/*!40000 ALTER TABLE `t_task` DISABLE KEYS */;
INSERT INTO `t_task` VALUES (1,'预习自测','t_001',2,1,'2023-07-21 13:50:19','9999-12-31 23:59:59');
/*!40000 ALTER TABLE `t_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_taskitems`
--

DROP TABLE IF EXISTS `t_taskitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_taskitems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `taskid` int DEFAULT NULL,
  `itemid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_taskitems`
--

LOCK TABLES `t_taskitems` WRITE;
/*!40000 ALTER TABLE `t_taskitems` DISABLE KEYS */;
INSERT INTO `t_taskitems` VALUES (1,1,1);
/*!40000 ALTER TABLE `t_taskitems` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_taskitems_AFTER_INSERT` AFTER INSERT ON `t_taskitems` FOR EACH ROW BEGIN
	DECLARE tmp integer;
	SELECT score INTO tmp FROM t_bank WHERE id = new.itemid;
	update t_task as a 
    set total_score = total_score+tmp,
    total_num = total_num+1
    where a.id = new.taskid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `t_teacher`
--

DROP TABLE IF EXISTS `t_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_teacher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `teachername` varchar(30) NOT NULL,
  `sex` char(1) NOT NULL,
  `avatar` varchar(100) DEFAULT 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `t_user` (`username`) ON DELETE CASCADE,
  CONSTRAINT `t_teacher_chk_1` CHECK (((`sex` = _utf8mb4'w') or (`sex` = _utf8mb4'm')))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_teacher`
--

LOCK TABLES `t_teacher` WRITE;
/*!40000 ALTER TABLE `t_teacher` DISABLE KEYS */;
INSERT INTO `t_teacher` VALUES (1,'root','测试管理员','w','https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png'),(2,'t_001','金牌讲师','m','https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png');
/*!40000 ALTER TABLE `t_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `identify` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'2020101001','285097911166bedc5395bfcbf77e72aa',0),(2,'2020101002','7a1a680fd72f0629a34b651d63faa543',0),(3,'2020101642','7a1a680fd72f0629a34b651d63faa543',0),(4,'root','63a9f0ea7bb98050796b649e85481845',1),(5,'t_001','1e682b47a08e5c3c2c782f25b3d6cfe0',1);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-21 14:44:13
