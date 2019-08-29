CREATE DATABASE  IF NOT EXISTS `coffee` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `coffee`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: coffee
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `nws_id` int(11) NOT NULL AUTO_INCREMENT,
  `nws_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `nws_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `nws_image` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `adm_id` int(11) NOT NULL,
  `shft_id` bigint(20) NOT NULL,
  `shft_description` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `shft_end_time` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `shft_name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `shft_start_time` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  PRIMARY KEY (`nws_id`),
  KEY `news_admin_adm_id_idx` (`adm_id`) /*!80000 INVISIBLE */,
  CONSTRAINT `news_admin_adm_id` FOREIGN KEY (`adm_id`) REFERENCES `admin` (`adm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Món quà mùa trăng','Trung thu là câu chuyện “tròn đầy”, được tạc nên từ những chiếc bánh đượm đầy hương vị tình thân. Từ hộp bánh sang trọng và ý nghĩa, lột tả trọn vẹn giá trị đêm trăng rằm thời hiện đại, nhưng vẫn giữ được màu sắc của truyền thống ngày xưa. Từ những điều ngọt ngào mà bấy lâu dửng dưng quên mất, thì nay lại có dịp trao nhau những món quà cho tình thân thêm đậm đà.','http://file.hstatic.net/1000075078/file/kv_1920x768_348f674b0f5d4864b3543a7ad26fdb98_master.jpg',1,0,'','','',''),(2,'Bộ sưu tập Phúc Bồn Tử','Hãy sẵn sàng trải nghiệm ngay bộ 3 Phúc Bồn Tử mới nhất từ The Coffee House từ ngày 05/08. Mang một luồng gió mới mẻ, \'bộ sưu tập\' Phúc Bồn Tử từ Nhà hứa hẹn sẽ mang đến cho bạn một nguồn cảm hứng bất tận, như một lời chào tạm biệt hè đầy màu sắc và sẵn sàng cho một tháng 8 TƯƠI TRẺ - HIỆN ĐẠI và TRENDY!','http://http://file.hstatic.net/1000075078/article/885x300_1564976522_7e9715f93141430a8ea28edd57deec3e_master.png',2,0,'','','','');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-27 15:32:23
