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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `pro_price_s` int(11) NOT NULL,
  `pro_price_m` int(11) NOT NULL,
  `pro_price_l` int(11) NOT NULL,
  `pro_image` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `pro_description` longtext COLLATE utf8mb4_vietnamese_ci,
  `pro_bestseller` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  PRIMARY KEY (`pro_id`),
  KEY `product_category_cat_id_idx` (`cat_id`),
  CONSTRAINT `product_category_cat_id` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Americano',100000,30000,40000,'product.hstatic.net/1000075078/product/americano_master.jpg','Americano được pha chế bằng cách thêm nước vào một hoặc hai shot Espresso để pha loãng độ đặc của cà phê, từ đó mang lại hương vị nhẹ nhàng, không gắt mạnh và vẫn thơm nồng nàn.',1,1),(2,'Bạc Xỉu',29000,35000,50000,'product.hstatic.net/1000075078/product/white_vnese_coffee_9968c1184d7f4634a9bb9fce7b5ff313_master.jpg','Theo chân những người gốc Hoa đến định cư tại Sài Gòn, Bạc sỉu là cách gọi tắt của \"Bạc tẩy sỉu phé\" trong tiếng Quảng Đông, chính là: Ly sữa trắng kèm một chút cà phê.',1,1),(3,'Cafe Đen',29000,35000,50000,'product.hstatic.net/1000075078/product/vnese_coffee_large.jpg','Một tách cà phê đen thơm ngào ngạt, phảng phất mùi cacao là món quà tự thưởng tuyệt vời nhất cho những ai mê đắm tinh chất nguyên bản nhất của cà phê. Một tách cà phê trầm lắng, thi vị giữa dòng đời vồn vã.',0,1),(4,'Cafe Sữa',50000,35000,50000,'product.hstatic.net/1000075078/product/cfs_master.jpg','Cà phê phin kết hợp cũng sữa đặc là một sáng tạo đầy tự hào của người Việt, được xem món uống thương hiệu của Việt Nam.',1,1),(5,'Cappuccino',29000,35000,50000,'product.hstatic.net/1000075078/product/cappuccino_large.jpg','Cappuccino được gọi vui là thức uống \"một-phần-ba\" - 1/3 Espresso, 1/3 Sữa nóng, 1/3 Foam.',1,1),(6,'Caramel Macchiato',55000,85000,125000,'product.hstatic.net/1000075078/product/caramel_macchiato_b6f694f469794e12b04a91845f5fce2d_large.jpg','Vị thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát của cà phê Espresso hảo hạng, và vị ngọt đậm của sốt caramel.',0,1),(7,'Espresso',35000,50000,95000,'product.hstatic.net/1000075078/product/espresso_large.jpg','Một cốc Espresso nguyên bản được bắt đầu bởi những hạt Arabica chất lượng, phối trộn với tỉ lệ cân đối hạt Robusta, cho ra vị ngọt caramel, vị chua dịu và sánh đặc. Để đạt được sự kết hợp này, chúng tôi xay tươi hạt cà phê cho mỗi lần pha.',1,1),(8,'Latte',29000,35000,50000,'product.hstatic.net/1000075078/product/mocha_large.jpg','Khi chuẩn bị Latte, cà phê Espresso và sữa nóng được trộn lẫn vào nhau, bên trên vẫn là lớp foam nhưng mỏng và nhẹ hơn Cappucinno.',0,1),(9,'Mocha',29000,35000,50000,'product.hstatic.net/1000075078/product/iced_chocolate_large.jpg','Cà phê Mocha được ví von đơn giản là Sốt Sô cô la được pha cùng một tách Espresso.',0,1),(10,'Trà đào cam sả',20000,30000,40000,'product.hstatic.net/1000075078/product/tra_dao_cam_sa_on_bg_large.jpg','Vị thanh ngọt của đào Hy Lạp, vị chua dịu của Cam Vàng nguyên vỏ, vị chát của trà đen tươi được ủ mới mỗi 4 tiếng, cùng hương thơm nồng đặc trưng của sả chính là điểm sáng làm nên sức hấp dẫn của thức uống này. Sản phẩm hiện có 2 phiên bản Nóng và Lạnh phù hợp cho mọi thời gian trong năm.',0,2),(11,'Trà đen Macchiato',20000,30000,40000,'product.hstatic.net/1000075078/product/blacktea_macchiat_large.jpg','Trà đen được ủ mới mỗi ngày, giữ nguyên được vị chát mạnh mẽ đặc trưng của lá trà, phủ bên trên là lớp Macchiato homemade bồng bềnh quyến rũ vị phô mai mặn mặn mà béo béo.',0,2),(12,'Trà gạo rang Macchiato',20000,30000,40000,'product.hstatic.net/1000075078/product/genmaicha_macchiatov_large.jpg','Trà gạo rang, hay còn gọi là Genmaicha, hay Trà xanh gạo lứt có nguồn gốc từ Nhật Bản. Tại The Coffee House, chúng tôi nhấn nhá cho Genmaicha thêm lớp Macchiato để tăng thêm mùi vị cũng như trải nghiệm của chính bạn.',0,2),(13,'Trà Matcha Latte',20000,30000,40000,'product.hstatic.net/1000075078/product/matcha_latte_large.jpg','Với màu xanh mát mắt của bột trà Matcha, vị ngọt nhẹ nhàng, pha trộn cùng sữa tươi và lớp foam mềm mịn, Matcha Latte là thức uống yêu thích của tất cả mọi người khi ghé The Coffee House.',0,2),(14,'Trà Matcha Macchiato',20000,30000,40000,'product.hstatic.net/1000075078/product/matcha_macchiato_large.jpg','Bột trà xanh Matcha thơm lừng hảo hạng cùng lớp Macchiato béo ngậy là một sự kết hợp tuyệt vời.',0,2),(15,'Trà ổi thanh long Macchiato',20000,30000,40000,'product.hstatic.net/1000075078/product/dragonfruit_macchiato_large.jpg','Vị ổi thơm lừng kết hợp cùng thanh long ngọt dịu, quyện vào lớp kem beo béo nữa thì đây đích thị là món giải nhiệt thân thiện nhất trong dòng thức uống Macchiato tại The Coffee House rồi.',0,2),(16,'Trà Oolong vải Như Ý',20000,30000,40000,'product.hstatic.net/1000075078/product/travai_large.jpg','Là thức uống bắt vị được lấy cảm hứng từ trái vải - thức quả tròn đầy, quen thuộc trong cuộc sống người Việt - kết hợp cùng Trà Oolong làm từ những lá trà tươi hảo hạng. Ly trà Oolong vải Như Ý là mong ước năm mới sắp tới sẽ là một năm tràn đầy những điều ngọt ngào, như ý với tất cả mọi người.',0,2),(17,'Caramel Đá Xay',20000,30000,59000,'product.hstatic.net/1000075078/product/caramel_ice_blended_large.jpg','Dư vị nồng nàn của cà phê sánh đôi hoàn hảo với caramel ngọt ngào như vòng tay âu yếm, đệm thêm một chút béo ngậy của sữa và kem tươi, tạo nên vi ngọt đậm mà hòa nhã.',0,4),(18,'Mocha Đá Xay',20000,30000,59000,'product.hstatic.net/1000075078/product/mocha_ice_blended_large.jpg','Sự hoà quyện mịn màng giữa vị đắng thanh của cà phê và vị đắng ngọt của chocolate, cùng vị béo của kem tươi và sữa tươi hòa quyện.',0,4),(19,'Socola Đá Xay',20000,30000,59000,'product.hstatic.net/1000075078/product/chocolate_ice_blended_large.jpg','Vị đắng của cà phê kết hợp cùng vị cacao ngọt ngàocủa sô-cô-la, vị sữa tươi ngọt béo, đem đến trải nghiệm vị giác cực kỳ thú vị.',0,4),(20,'Sinh Tố Cam Xoài',30000,40000,50000,'product.hstatic.net/1000075078/product/mango_smoothie_large.jpg','Vị mứt cam xoài hòa trộn độc đáo với sữa chua, cho cảm giác chua ngọt rất sướng. Điểm nhấn là những mẩu bánh cookie giòn tan giúp sự thưởng thức thêm thú vị.',0,5),(21,'Sinh Tố Việt Quất',30000,40000,50000,'product.hstatic.net/1000075078/product/blueberry_smoothie_large.jpg','Mứt Việt Quất chua thanh, ngòn ngọt, phối hợp nhịp nhàng với dòng sữa chua bổ dưỡng. Là món sinh tố thơm ngon mà cả đầu lưỡi và làn da đều thích.',0,5);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-27 15:32:22
