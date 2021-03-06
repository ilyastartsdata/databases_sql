-- MySQL dump 10.13  Distrib 8.0.17, for osx10.14 (x86_64)
--
-- Host: localhost    Database: stockx
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Current Database: `stockx`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `stockx` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `stockx`;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'LV'),(2,'Hermes'),(3,'Jordan'),(4,'Nike'),(5,'Adidas'),(6,'Rolex'),(7,'Reebok'),(8,'Puma'),(9,'Zara'),(10,'HM');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_product`
--

DROP TABLE IF EXISTS `brand_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand_product` (
  `product_id` bigint(20) NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  KEY `product_id` (`product_id`),
  KEY `brand_id` (`brand_id`),
  CONSTRAINT `brand_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `brand_product_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_product`
--

LOCK TABLES `brand_product` WRITE;
/*!40000 ALTER TABLE `brand_product` DISABLE KEYS */;
INSERT INTO `brand_product` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,1),(12,2),(13,3),(14,4),(15,5),(16,6),(17,7),(18,8),(19,9),(20,10),(21,1),(22,2),(23,3),(24,4),(25,5),(26,6),(27,7),(28,8),(29,9),(30,10);
/*!40000 ALTER TABLE `brand_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Sneakers','Also called trainers, athletic shoes, tennis shoes, gym shoes, kicks, sport shoes, flats, running shoes, or runners)are shoes primarily designed for sports or other forms of physical exercise but that are now also widely used for everyday casual wear.'),(2,'Streetwear','Streetwear is a style of casual clothing which became global in the 1990s. It grew from New York hip hop fashion and eventually California surfskate culture, to encompass elements of sportswear, punk and Japanese street fashion. Eventually haute couture became an influence.'),(3,'Handbags','A handbag, commonly known as a purse in North American English, is a handled medium-to-large bag used to carry personal items.'),(4,'Watches','A watch is a portable timepiece intended to be carried or worn by a person. It is designed to keep a consistent movement despite the motions caused by the persons activities.');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `status_order` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` float NOT NULL DEFAULT '0',
  `item_discount` float NOT NULL DEFAULT '0',
  `tax` float NOT NULL DEFAULT '0',
  `shipping` float NOT NULL DEFAULT '0',
  `total` float NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,5,'Cupiditate qui tempo',383,8,345.481,37.33,4783,'2006-09-02 05:55:33'),(2,7,'Tenetur distinctio p',253,0,212136000,74613200,0,'1971-01-19 13:40:28'),(3,9,'Libero dolor et sit.',0,6180,372358,0,307,'1993-06-29 09:11:11'),(4,11,'Nostrum illo eligend',782181,84,3710580,1870.53,4795,'2019-11-09 10:36:53'),(5,13,'Ea sapiente enim aut',748655000,0,15.05,5972940,33646,'1984-01-02 10:24:38'),(6,15,'Assumenda est aut fu',0,6,547,225650,129,'1998-05-08 05:26:01'),(7,17,'Velit non consectetu',71766800,88153700,539775,341.939,19735,'1976-04-06 12:42:11'),(8,19,'Eos id dolor sit ali',9,70777900,8.6578,0,31,'1981-01-18 19:08:43'),(9,21,'Quia voluptas tempor',6034970,9659,0,15186.5,9363,'2011-08-21 15:02:53'),(10,23,'Quia laudantium et s',9200880,88,1.44924,1.41097,59270,'2011-09-13 21:50:20'),(11,22,'At maxime quod accus',6,0,362.823,6.31631,482,'2000-07-22 22:57:33'),(12,24,'Illo dolorum volupta',58,136,384175,115852000,8667370,'2002-01-08 06:42:47'),(13,25,'Animi inventore aspe',609,2012,692352,0,0,'2014-03-20 16:55:21'),(14,27,'Nihil labore non del',235510,5,86468,243462000,27,'1988-01-04 07:04:48'),(15,29,'Cumque illo dolores ',132527,70486600,0,18.4317,16907,'1986-12-03 14:22:16'),(16,31,'Blanditiis quasi quo',557054000,9401,5.24,312.002,16734,'2007-08-01 10:24:16'),(17,33,'Molestiae ipsum et e',2,129596000,339839,4.55175,330812000,'1987-01-16 21:22:05'),(18,32,'Dicta iusto labore m',5,9821,475727,394323000,29277000,'1971-02-27 08:20:30'),(19,30,'Nihil eaque minima v',946,5942,3801530,5333540,245,'2000-12-16 13:42:00'),(20,1,'Veniam ut sed a quia',0,27,14247300,92.36,9925650,'2006-12-03 19:26:06'),(21,2,'Quos consequatur est',22746400,108,325668,431071,0,'2003-06-06 05:21:11'),(22,3,'Architecto velit eos',5904,323,228.231,12633.3,6326,'2018-06-24 02:11:40'),(23,4,'Cupiditate dolorem a',1094,907607000,265222000,1137.48,3821360,'2019-11-24 16:59:09'),(24,5,'Harum est labore ven',0,852445,15.1,1.88342,7465,'1988-09-10 00:23:35'),(25,6,'Libero sequi et dign',325719,78003100,0,29.2056,420861,'1984-09-05 06:00:52'),(26,7,'Voluptatem voluptate',12602,467091,816.922,85876,9339,'2005-12-17 11:53:22'),(27,48,'Dolorem et rerum min',9719,2,260.047,20.2148,66,'1990-06-17 04:56:15'),(28,43,'Sint odit reprehende',680005000,50507400,0.169111,144974000,675562000,'1974-08-07 12:04:13'),(29,44,'Veniam ut sunt velit',50862,940581,1198490,66830.7,3755030,'2016-12-10 16:13:09'),(30,32,'Ad fugit quibusdam m',490766000,4,0,113091000,74418,'1988-10-23 01:15:23'),(31,14,'Perferendis fuga qui',42,761,58.093,25.87,458761000,'1972-07-15 11:04:28'),(32,34,'Quidem ut commodi vo',13287000,620733,14.6247,2.41959,8,'2001-01-24 04:44:42'),(33,23,'Perspiciatis maiores',8,99349,52.4273,4.85583,394,'1992-02-07 12:02:32'),(34,49,'Quas aspernatur aut ',4590180,69235500,2829.24,15176.9,477723000,'1972-11-09 06:47:18'),(35,12,'Quos ut sunt similiq',7641,92,1974.06,36894400,399467000,'1982-03-12 13:08:24'),(36,34,'Repellat magni quaer',2,386418,245.095,508342,80819400,'2007-05-01 11:12:02'),(37,13,'Explicabo laudantium',29487,0,255.096,1857910,617199000,'1992-01-31 02:55:09'),(38,12,'Sapiente ipsa eos re',0,2867,29595500,801.11,27,'2014-08-21 13:38:56'),(39,13,'Aliquam officiis mol',0,900647000,1290990,13338.9,119,'1982-05-02 14:26:48'),(40,31,'Aut illo dolores qua',7,9,232256000,0,2,'2002-06-04 15:51:03'),(41,32,'Reiciendis dolorem a',9777,3,3.452,1952.4,14739200,'2020-01-26 08:03:34'),(42,33,'Numquam ut placeat f',65933,14,53.6739,30.9824,94379,'1975-10-27 07:45:28'),(43,34,'Totam numquam qui ea',45157,6002070,834,354432,0,'1976-04-07 11:51:45'),(44,23,'Enim iste voluptatem',702375000,6,652,18859.9,0,'2019-08-06 03:22:28'),(45,34,'Dolore eaque quaerat',85357,2237330,53866700,789537000,57417,'1980-03-04 03:08:56'),(46,45,'Ratione aut dolor ev',59,121802,111014000,113673,5527680,'1997-12-03 03:12:45'),(47,46,'Rem ipsam facere ame',37496000,51827,50.236,3742310,31646,'2014-10-26 22:32:53'),(48,47,'Fuga quis recusandae',20260,68223,0,397737,8,'2008-07-27 01:45:01'),(49,38,'Sit ratione eveniet ',802692,46114,3951.39,15510.6,84331,'2010-03-27 03:12:08'),(50,39,'Omnis sint sed imped',24661,32,355400000,222076,71160,'1983-04-02 15:36:16');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `discount` float NOT NULL DEFAULT '0',
  `quantity` smallint(6) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,1,1,383,8,473,'2006-09-02 05:55:33','2006-09-02 05:55:33'),(2,2,2,253,0,212,'1971-01-19 13:40:28','1971-01-19 13:40:28'),(3,3,3,20,6,372,'1993-06-29 09:11:11','1993-06-29 09:11:11'),(4,4,4,181,84,371,'2019-11-09 10:36:53','2019-11-09 10:36:53'),(5,5,5,748,0,336,'1984-01-02 10:24:38','1984-01-02 10:24:38'),(6,7,6,10,6,547,'1998-05-08 05:26:01','1998-05-08 05:26:01'),(7,9,7,717,8,539,'1976-04-06 12:42:11','1976-04-06 12:42:11'),(8,12,8,707,8.6578,20,'1981-01-18 19:08:43','1981-01-18 19:08:43'),(9,15,9,603,9,10,'2011-08-21 15:02:53','2011-08-21 15:02:53'),(10,17,10,920,88,12,'2011-09-13 21:50:20','2011-09-13 21:50:20'),(11,19,11,6,0,3,'2000-07-22 22:57:33','2000-07-22 22:57:33'),(12,24,12,58,13,384,'2002-01-08 06:42:47','2002-01-08 06:42:47'),(13,25,13,609,201,69,'2014-03-20 16:55:21','2014-03-20 16:55:21'),(14,27,14,235510,5,864,'1988-01-04 07:04:48','1988-01-04 07:04:48'),(15,29,15,132,7,10,'1986-12-03 14:22:16','1986-12-03 14:22:16'),(16,13,16,557,94,5,'2007-08-01 10:24:16','2007-08-01 10:24:16'),(17,12,17,23,12,33,'1987-01-16 21:22:05','1987-01-16 21:22:05'),(18,16,18,532,98,475,'1971-02-27 08:20:30','1971-02-27 08:20:30'),(19,30,19,946,59,380,'2000-12-16 13:42:00','2000-12-16 13:42:00'),(20,1,20,20,2,14,'2006-12-03 19:26:06','2006-12-03 19:26:06'),(21,2,21,227,108,32,'2003-06-06 05:21:11','2003-06-06 05:21:11'),(22,3,22,590,323,228,'2018-06-24 02:11:40','2018-06-24 02:11:40'),(23,4,23,1094,90,265,'2019-11-24 16:59:09','2019-11-24 16:59:09'),(24,5,24,430,85,15,'1988-09-10 00:23:35','1988-09-10 00:23:35'),(25,6,25,3259,78,20,'1984-09-05 06:00:52','1984-09-05 06:00:52'),(26,7,26,126,46,81,'2005-12-17 11:53:22','2005-12-17 11:53:22'),(27,8,27,971,23,260,'1990-06-17 04:56:15','1990-06-17 04:56:15'),(28,13,28,680,505,169,'1974-08-07 12:04:13','1974-08-07 12:04:13'),(29,14,29,5086,940,119,'2016-12-10 16:13:09','2016-12-10 16:13:09'),(30,12,30,490,4,20,'1988-10-23 01:15:23','1988-10-23 01:15:23'),(31,14,31,42,7,58,'1972-07-15 11:04:28','1972-07-15 11:04:28'),(32,24,32,132,62,14,'2001-01-24 04:44:42','2001-01-24 04:44:42'),(33,23,33,8,0,520,'1992-02-07 12:02:32','1992-02-07 12:02:32'),(34,19,34,459,69,28,'1972-11-09 06:47:18','1972-11-09 06:47:18'),(35,12,35,764,92,19,'1982-03-12 13:08:24','1982-03-12 13:08:24'),(36,24,36,23,3,24,'2007-05-01 11:12:02','2007-05-01 11:12:02'),(37,23,37,294,0,25,'1992-01-31 02:55:09','1992-01-31 02:55:09'),(38,22,38,20,2,29,'2014-08-21 13:38:56','2014-08-21 13:38:56'),(39,3,39,20,0,12,'1982-05-02 14:26:48','1982-05-02 14:26:48'),(40,1,40,70,9,2,'2002-06-04 15:51:03','2002-06-04 15:51:03'),(41,2,41,97,3,3,'2020-01-26 08:03:34','2020-01-26 08:03:34'),(42,3,42,65,14,53,'1975-10-27 07:45:28','1975-10-27 07:45:28'),(43,4,43,451,60,83,'1976-04-07 11:51:45','1976-04-07 11:51:45'),(44,3,44,702,6,65,'2019-08-06 03:22:28','2019-08-06 03:22:28'),(45,3,45,85,22,5,'1980-03-04 03:08:56','1980-03-04 03:08:56'),(46,5,46,59,12,11,'1997-12-03 03:12:45','1997-12-03 03:12:45'),(47,6,47,37,5,50,'2014-10-26 22:32:53','2014-10-26 22:32:53'),(48,7,48,202,68,20,'2008-07-27 01:45:01','2008-07-27 01:45:01'),(49,8,49,802,46,39,'2010-03-27 03:12:08','2010-03-27 03:12:08'),(50,9,50,246,32,3,'1983-04-02 15:36:16','1983-04-02 15:36:16');
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  KEY `product_id` (`product_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_category_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `product_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,1),(2,2),(3,3),(4,4),(5,1),(6,2),(7,3),(8,4),(9,1),(10,2),(11,3),(12,4),(13,1),(14,2),(15,3),(16,4),(17,1),(18,2),(19,3),(20,4),(21,1),(22,2),(23,3),(24,4),(25,1),(26,2),(27,3),(28,4),(29,1),(30,2);
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_review`
--

DROP TABLE IF EXISTS `product_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_review` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` smallint(6) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `review_product` (`product_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `product_review_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `product_review_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_review`
--

LOCK TABLES `product_review` WRITE;
/*!40000 ALTER TABLE `product_review` DISABLE KEYS */;
INSERT INTO `product_review` VALUES (1,1,5,'Debitis libero voluptas deserunt voluptates sed sit ipsa.',5,'2004-02-10 02:52:50','Nisi reiciendis ea veritatis nostrum ea officiis autem. Cumque molestiae nemo culpa minus et. Qui reprehenderit nihil sequi harum omnis placeat. Esse aut eum dolorum quo et possimus dolorem.'),(2,2,7,'Harum delectus in aperiam et nihil dicta.',3,'2016-10-06 19:02:40','Dolorum quo rerum temporibus sequi cum omnis. Debitis iure voluptatem quasi. Voluptates dolores culpa et veritatis quia aliquam. Aut ullam corporis laborum odio.'),(3,3,9,'Rem a occaecati nisi vel reprehenderit.',4,'1978-07-17 01:22:54','Neque nihil fugiat sit eos. Deleniti odio facilis cupiditate quis beatae quasi nisi. Et dolor necessitatibus et iure. Nihil similique quia molestiae deserunt ut.'),(4,4,11,'Possimus architecto neque molestiae magnam.',4,'1976-06-04 18:54:03','Maiores non reiciendis non perferendis. Hic odio quos velit debitis. Placeat rerum voluptatem aut.'),(5,5,13,'Hic a ipsam quia id.',4,'1998-06-26 09:06:17','Voluptas voluptates aspernatur beatae quaerat ut molestiae. Eius officiis modi voluptas quia est iusto dolorem ullam. Harum pariatur culpa sed et.'),(6,6,15,'Et voluptatibus molestiae nobis.',5,'1983-08-07 21:24:50','Sed in repudiandae ut repellendus qui illum accusantium et. Quae ea saepe enim similique accusantium asperiores. Architecto non ratione tempore.'),(7,7,17,'Rerum et non suscipit autem quis ipsum repudiandae.',2,'1970-05-05 11:12:10','Sit qui voluptate atque. Rem natus nostrum sunt. Nam nesciunt eligendi maxime cum mollitia laboriosam.'),(8,8,19,'Qui error libero quisquam.',2,'1990-12-22 09:26:33','Nulla ex debitis aspernatur sit illo corporis ipsa. Molestiae fuga ut possimus doloribus aut asperiores quas. Rerum voluptatem quo magnam id nihil quia.'),(9,9,21,'Similique aut officia dolore exercitationem voluptatem in sit.',1,'1988-03-24 22:09:43','Consequuntur consectetur molestiae qui enim itaque. Deleniti non magni libero fugiat veritatis. Vel labore repudiandae cumque corporis ullam repellat. Similique voluptatem ut nesciunt.'),(10,10,23,'Placeat dicta et nostrum non quibusdam.',2,'1978-10-04 13:15:57','Consequatur aut quaerat laboriosam quia. Dignissimos officia id corporis dignissimos praesentium maiores doloribus. Sunt voluptatum quo et et. Sint voluptas ut ut et cum aliquid.'),(11,11,25,'Qui aut adipisci impedit eos id.',4,'1985-06-19 14:04:17','Quia est dolor eveniet velit inventore esse. Facere ad voluptatem quibusdam qui exercitationem. Qui et commodi consequatur hic itaque illum officiis enim.'),(12,12,27,'Explicabo reprehenderit illo aut dolor placeat.',5,'1974-06-26 05:37:06','Et dolor provident eligendi. Saepe voluptas molestias laboriosam facere quis ad explicabo. Quae ut nemo quidem nihil. Veritatis qui possimus velit ratione consequuntur.'),(13,13,29,'Enim ducimus vero dolore blanditiis optio.',3,'2004-07-20 02:38:33','Voluptatem veniam et temporibus ea temporibus qui eligendi. Sint cumque qui quas culpa. Aut id aut aperiam.'),(14,14,31,'Et et nesciunt quos quaerat natus.',2,'2003-03-11 14:23:50','Porro voluptatem maxime ut non. Rerum est facilis qui sit optio explicabo. Qui ut maiores quia quod officiis recusandae. Rem ut nihil cupiditate amet et deserunt autem.'),(15,15,33,'Dolores praesentium natus consequatur suscipit possimus et.',1,'1996-04-01 10:09:16','Est incidunt sint consectetur quia. Et libero sed magni provident. Numquam rem ducimus illum in.'),(16,16,35,'Fugiat ea doloribus eius quam soluta.',1,'2011-01-27 21:15:42','Nesciunt iure necessitatibus dolorem eaque. Velit nam vero omnis. Et sapiente aspernatur maiores tenetur distinctio eaque qui.'),(17,17,37,'Necessitatibus illum perspiciatis iste tempora sunt.',3,'2011-01-15 06:47:04','Voluptatem temporibus ipsa ducimus. Ad repellendus vitae officia voluptatum nobis veritatis molestias. Necessitatibus deleniti assumenda maxime omnis rerum eius.'),(18,18,39,'Quas odio quas libero quia.',5,'2016-02-27 05:15:21','Inventore qui laborum quia ducimus. Amet ad temporibus est qui. Voluptatem voluptas sint sit consectetur magnam consequatur.'),(19,19,41,'Qui est ad eos nesciunt beatae ducimus.',3,'2008-07-24 22:00:43','Tenetur quaerat facere et nisi corrupti est incidunt. Consectetur officia quae at repudiandae alias qui. Sapiente doloremque nulla omnis odio ut.'),(20,20,43,'Eum magni consequatur repellat dolorem veniam est placeat.',5,'2003-08-07 03:33:54','Sed excepturi iste minus qui molestiae illo. Ut est eveniet inventore accusantium animi. Ipsum unde esse numquam doloremque cum nobis voluptates. Non eaque error doloribus voluptatum velit dolorum. Perspiciatis earum vero sit occaecati nesciunt.'),(21,21,45,'Libero dolorem consectetur voluptatum harum.',4,'1980-03-12 00:33:40','Quia praesentium sunt quia eum repellendus magnam. Quia recusandae ut labore omnis assumenda quas. Quaerat veniam incidunt quisquam ea.'),(22,22,45,'Dolore quasi iste expedita sunt quisquam ipsum magni.',1,'2001-05-25 05:33:37','Aperiam et ea mollitia debitis. Et iusto vero ea quidem eius numquam iure quo. Voluptas et enim deleniti et dolores reprehenderit molestias.'),(23,23,19,'Molestiae rem assumenda quam corporis.',3,'2020-08-24 01:49:55','Iste atque omnis laborum dolores exercitationem harum. Eligendi vero minima iste quia placeat modi repudiandae. Dolores dignissimos quisquam quia.'),(24,24,17,'Illum corporis voluptate molestiae qui.',5,'2008-02-26 12:51:40','Rerum sapiente temporibus odit perspiciatis. Facere ut ad laudantium. Vel rerum repellat incidunt aut velit.'),(25,25,13,'Voluptates aperiam quia ut optio excepturi fuga ut.',4,'1970-06-13 16:53:27','Odit quod voluptas et quia voluptatem iusto enim. Nulla quasi sed voluptas occaecati. Facilis porro debitis occaecati neque quam. Id aut laboriosam voluptas aut qui dolor ea.'),(26,26,5,'Reiciendis cumque ut maxime animi non.',2,'2008-10-12 09:26:19','Provident nulla ut libero consectetur quaerat doloremque. Et amet est dicta quo error aut. Laboriosam architecto rem consequatur explicabo pariatur iste.'),(27,27,2,'Illum beatae magnam consequuntur autem.',5,'2005-09-03 06:33:19','Repudiandae error aperiam dignissimos sequi ratione. Et omnis dolores veritatis qui placeat excepturi.'),(28,28,5,'Voluptatem deleniti voluptatibus fugit facere amet in ex corrupti.',2,'2010-09-01 08:42:52','Et tempora non fuga dignissimos. Officiis ducimus voluptas quasi consectetur similique ipsam. Fugiat cupiditate fugit eum velit maiores.'),(29,29,9,'Eum iure incidunt qui quos.',3,'1999-04-27 16:33:44','Et temporibus blanditiis ducimus dolorem. Omnis aut omnis est asperiores doloribus vero molestias. Voluptate eum dolorem magni vel. Laboriosam sed ea modi corrupti est quasi id.'),(30,30,7,'Iste quam eum neque fugit aut.',5,'1987-01-18 10:32:10','Blanditiis ut qui neque optio id occaecati velit. Fugit autem aperiam et officiis sed dignissimos aut soluta. Consequuntur rem provident perspiciatis ut.');
/*!40000 ALTER TABLE `product_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tag`
--

DROP TABLE IF EXISTS `product_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_tag` (
  `product_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  KEY `product_id` (`product_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `product_tag_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `product_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tag`
--

LOCK TABLES `product_tag` WRITE;
/*!40000 ALTER TABLE `product_tag` DISABLE KEYS */;
INSERT INTO `product_tag` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30);
/*!40000 ALTER TABLE `product_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` tinytext COLLATE utf8mb4_unicode_ci,
  `price` float NOT NULL DEFAULT '0',
  `discount` float NOT NULL,
  `quantity` smallint(6) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `content` text COLLATE utf8mb4_unicode_ci,
  `review_id` bigint(20) NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `product_category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_user` (`user_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,30,'necessitatibus','Robust homogeneous projection',4921,2,32767,'2001-10-07 10:38:51','1974-05-06 09:39:06','Sapiente est sunt quia excepturi earum enim. Omnis et est assumenda accusantium et aut ut suscipit. Aut magni voluptas modi perferendis amet.',1,1,1),(2,30,'rerum','Integrated assymetric support',100,9,32767,'2017-02-27 23:08:08','2016-08-27 01:10:01','Ipsam est nemo nostrum dolor voluptas aut. Eveniet est est debitis neque tenetur suscipit. Tenetur in quae a nesciunt. Beatae nam nostrum veritatis laboriosam aliquam et voluptatem.',2,1,4),(3,30,'similique','Innovative leadingedge middleware',15829.8,0,1275,'1984-04-22 16:41:57','1991-12-09 10:22:54','Optio sapiente aut at. Fugit atque sed maiores debitis ab non. Aut ab praesentium quibusdam officiis voluptatum. Consequatur tempore totam error reiciendis.',3,1,4),(4,30,'modi','Horizontal uniform framework',101022,2,4,'2018-05-17 17:18:05','2010-04-13 17:42:07','Perferendis quidem dolores ipsam hic pariatur est. Qui temporibus commodi labore autem perspiciatis consequuntur.',4,1,3),(5,30,'laborum','Extended actuating pricingstructure',5799.77,4,0,'1992-11-26 20:54:07','1988-09-23 23:30:32','Cupiditate fugit esse eos accusantium error sint. Veritatis omnis magnam harum et. Velit fugiat provident sit deserunt non eum hic sapiente. Numquam aut ipsa reiciendis.',5,2,3),(6,30,'dolorem','Profit-focused client-server systemengine',9090,2,32767,'1975-05-25 02:54:00','1991-01-08 14:50:04','Commodi et aliquid optio quisquam. Eaque rem aut laboriosam repudiandae commodi qui. Laboriosam doloribus velit quia nihil aliquid occaecati.',6,1,4),(7,30,'dolorum','Grass-roots actuating function',400196,8,7,'1981-07-13 02:10:28','1980-01-28 22:05:02','Aut quisquam nesciunt alias ut officiis. Aut facilis quidem accusantium at aut. Omnis eligendi ut sint ut voluptate quibusdam. Natus minima in rerum ea.',7,1,3),(8,30,'repudiandae','Fully-configurable maximized hub',48222,7,32767,'2003-07-13 11:47:53','1987-08-02 04:44:40','Corrupti voluptas non et sequi modi et blanditiis. Consectetur molestiae voluptas impedit reprehenderit dolorem. Nihil quidem autem sed beatae et esse. Assumenda suscipit autem beatae sed.',8,2,4),(9,30,'ullam','Virtual 4thgeneration collaboration',262000,6,24,'2000-10-29 22:27:59','1976-11-18 07:22:02','Doloribus quas aspernatur provident neque aliquam. Quo doloribus architecto amet autem eum. Reiciendis quidem nulla incidunt sequi aspernatur. Enim dolorum corrupti libero optio.',9,3,2),(10,30,'dolore','User-centric uniform installation',28476.5,4,0,'2014-10-01 16:36:56','2019-07-17 11:45:28','Quidem incidunt velit reprehenderit ut ratione. Aut rem veniam eum et fugiat voluptatibus atque.',10,2,1),(11,30,'molestiae','De-engineered empowering superstructure',10,5,10,'2008-02-24 00:45:03','2014-05-25 18:57:39','Facere quam adipisci omnis et id. Vitae voluptas eligendi praesentium incidunt totam. Impedit est deserunt dolorem sunt et at perspiciatis perspiciatis.',11,1,2),(12,30,'quas','Self-enabling mobile time-frame',1389040,8,1102,'2018-08-08 01:50:45','1994-08-23 07:22:04','Rerum molestias exercitationem incidunt dolor. Qui totam voluptatem aut molestiae. Quas tempora ab rerum quisquam et est totam.',12,1,2),(13,30,'corporis','Expanded empowering functionalities',10,4,10,'1999-09-09 18:17:30','2014-08-06 11:04:51','Enim omnis quis sapiente incidunt labore et. Nisi odit vitae quis laboriosam sit blanditiis. Et aut nam nam vel.',13,4,1),(14,30,'quia','Total even-keeled concept',5.13256,1,0,'2009-02-27 03:09:20','1977-04-09 00:05:06','Optio iste omnis earum assumenda rem vel reiciendis. Saepe ut facilis dolor culpa esse. Nulla molestias qui rerum voluptatem dolore dolorum.',14,2,4),(15,30,'ad','Persevering hybrid success',7.33855,5,32767,'1981-10-13 11:43:41','2010-07-09 01:23:09','Debitis mollitia dolores laborum suscipit. Repellendus earum minus facilis et eos. Cum optio itaque impedit voluptatum aut ut.',15,1,3),(16,30,'ea','Assimilated full-range hierarchy',2602.02,5,4,'1989-02-22 08:38:52','1973-09-24 05:32:07','Eius et qui minus eum. Enim dolores quod id labore quos quas. Nemo praesentium dolores illum quis rem ut ratione.',16,3,2),(17,30,'ratione','Cloned web-enabled archive',35664.6,1,15,'2018-08-07 02:15:08','1996-02-18 19:04:15','Soluta dignissimos delectus veniam in tenetur. Qui et dolorem et in eos voluptas voluptatem. Atque harum et amet illum ut eius velit.',17,1,1),(18,30,'et','Multi-tiered human-resource GraphicalUserInterface',1.68781,2,7367,'1997-12-15 15:00:55','2017-03-09 18:06:21','Assumenda vitae neque illo unde sed. Qui voluptatem fugit modi et dolorem et ipsum. Consequatur voluptatum sunt soluta repellat. Cumque enim sit perspiciatis perspiciatis.',18,2,1),(19,30,'voluptatibus','Synergistic mobile forecast',37.617,2,32767,'1972-03-09 15:03:57','1991-01-21 19:56:34','Ipsam qui cum ut quas. Est alias recusandae necessitatibus tempora. Qui sint hic qui maxime excepturi quia voluptatem. Sunt aut illo vitae quo et nisi earum.',19,1,2),(20,30,'vel','Reverse-engineered directional time-frame',692.626,0,1152,'1985-06-11 03:08:36','2009-05-01 10:51:11','Omnis consequatur rerum molestias fuga. Earum dolores dignissimos quia perspiciatis. Laborum et enim labore omnis qui maiores. Quisquam mollitia accusamus earum magni ut et molestias cum.',20,3,1),(21,37,'ad','Triple-buffered dedicated protocol',2032360,3,5138,'1988-11-25 00:02:48','2014-11-30 19:44:18','Distinctio autem error illo aut est vel labore. Quisquam et perspiciatis saepe in molestiae quia ducimus. Deserunt molestiae rerum facilis molestiae.',21,3,2),(22,37,'hic','Right-sized dedicated challenge',2359630,1,32767,'1970-11-29 07:29:31','1999-05-09 13:30:47','Labore fugit tempora commodi repellendus laborum. Earum perferendis ad doloremque architecto eius. Sunt repellat id repellat nemo praesentium consequuntur in.',22,2,1),(23,37,'harum','Polarised 5thgeneration solution',5.73829,3,8,'1992-04-14 15:43:17','1991-10-29 01:54:31','Id debitis dolores est excepturi. Illum facere porro quia animi corporis. Id molestiae consequatur quia aut sit aperiam rerum. Voluptas enim rerum amet quod.',23,2,2),(24,37,'beatae','Devolved clear-thinking superstructure',960760000,0,0,'1971-01-17 16:21:30','1993-10-07 19:25:44','Quia sunt mollitia et veniam autem quidem eum. Temporibus voluptate repellendus et quae. Eligendi expedita est deleniti reiciendis. Hic saepe harum quo tenetur rem et explicabo.',24,3,3),(25,37,'omnis','Right-sized well-modulated artificialintelligence',868.185,3,32767,'1982-05-20 01:15:12','1997-12-12 23:07:59','Dolorem impedit aliquid molestias minus odit consequatur ad. Et dolore dolorum sunt aut nihil sequi at officia. Soluta quo tenetur ipsum consectetur velit. Natus omnis dolor at.',25,3,1),(26,37,'porro','Intuitive nextgeneration analyzer',28732000,7,0,'1987-03-05 00:51:12','1990-09-04 21:44:15','Ut repudiandae asperiores molestiae autem id aspernatur placeat. Quam reprehenderit qui nam dignissimos sit voluptates. Enim sed qui fugiat voluptates sint.',26,2,4),(27,37,'porro','Reverse-engineered homogeneous policy',5.28828,4,1,'1986-06-05 20:47:04','1975-02-16 01:19:47','Ipsum asperiores ratione voluptatem omnis maiores et aut alias. Vel in alias libero fugiat qui quod. Vitae similique et odit autem provident.',27,3,3),(28,37,'deleniti','Function-based stable GraphicalUserInterface',41386,3,32767,'1980-06-02 16:24:08','2001-11-16 22:50:25','Voluptatum ad et nulla qui. Quae voluptatem vel molestiae ea dolorem facilis cum quae.',28,4,4),(29,37,'quia','Adaptive static capability',10,9,26,'2014-06-24 22:29:25','1991-06-06 14:37:13','Nam voluptates cum aut reiciendis. Provident iste at consequatur consequatur neque dignissimos. Accusantium quia consequatur maxime voluptas quia incidunt mollitia.',29,1,3),(30,37,'perspiciatis','Ameliorated composite encoding',5838.75,8,32767,'1994-09-24 15:45:06','1976-06-21 18:40:43','Beatae quia fuga et illo ea. Harum omnis odit sit eaque consequatur dolorem mollitia. Voluptates veniam totam non maxime ut similique.',30,2,2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'fugiat','Ab quo ea nesciunt tempora deleniti maxime sint.'),(2,'ea','Sit corporis eius reprehenderit voluptatum aspernatur voluptates sit.'),(3,'veritatis','Rerum voluptatem est ut non nobis.'),(4,'illum','Id id et qui consequatur fuga.'),(5,'eveniet','Voluptates sunt temporibus voluptatem sunt debitis porro quo.'),(6,'distinctio','Voluptates mollitia maiores deserunt laborum repellat inventore.'),(7,'blanditiis','Animi iste doloribus perspiciatis unde et tempora optio.'),(8,'vero','Enim harum voluptas quam laboriosam.'),(9,'voluptatem','Et beatae deserunt autem iure omnis sapiente deserunt.'),(10,'deserunt','Rerum harum eos deserunt laborum optio.'),(11,'explicabo','Rerum voluptas qui iure est qui natus.'),(12,'ducimus','Doloremque voluptatibus ut earum fugit accusamus quo quod.'),(13,'aut','Mollitia est ad porro optio.'),(14,'explicabo','Recusandae aut eveniet sed est sapiente aperiam expedita.'),(15,'nisi','Itaque voluptate magnam facere aut rem sit accusantium.'),(16,'dolorem','Porro veritatis excepturi nam corrupti quibusdam incidunt officiis.'),(17,'odio','Ea et perspiciatis unde.'),(18,'quia','Et voluptatum temporibus voluptatibus molestiae provident quis culpa nostrum.'),(19,'molestiae','Libero explicabo voluptas delectus iure et explicabo perferendis.'),(20,'repellat','Voluptatem voluptatibus dolorem rem excepturi suscipit cumque in fuga.'),(21,'quaerat','Possimus quia aliquid aliquam consectetur velit consequuntur.'),(22,'in','Cumque optio tenetur doloremque molestias iusto culpa.'),(23,'laborum','Inventore quos nesciunt autem dolore sed.'),(24,'omnis','Dolorem facere voluptatem quis quia et.'),(25,'corrupti','Modi eum vel nemo pariatur unde.'),(26,'consectetur','Saepe ex a et non.'),(27,'nisi','Totam amet nulla autem quia laboriosam occaecati.'),(28,'tempore','Quia quae eum ipsum ut amet.'),(29,'rem','Voluptatem aspernatur debitis error quam quaerat et.'),(30,'minus','Ad fuga aperiam id esse nobis odio corporis eaque.');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `mode` smallint(6) NOT NULL DEFAULT '0',
  `status_payment` smallint(8) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,5,1,0,1,1,'2006-09-02 05:55:33','2006-09-02 05:55:33'),(2,7,2,0,1,2,'1971-01-19 13:40:28','1971-01-19 13:40:28'),(3,9,3,0,1,3,'1993-06-29 09:11:11','1993-06-29 09:11:11'),(4,11,4,1,2,4,'2019-11-09 10:36:53','2019-11-09 10:36:53'),(5,13,5,1,2,5,'1984-01-02 10:24:38','1984-01-02 10:24:38'),(6,15,6,1,2,6,'1998-05-08 05:26:01','1998-05-08 05:26:01'),(7,17,7,0,3,7,'1976-04-06 12:42:11','1976-04-06 12:42:11'),(8,19,8,0,3,1,'1981-01-18 19:08:43','1981-01-18 19:08:43'),(9,21,9,0,3,2,'2011-08-21 15:02:53','2011-08-21 15:02:53'),(10,23,10,1,4,3,'2011-09-13 21:50:20','2011-09-13 21:50:20'),(11,22,11,1,4,4,'2000-07-22 22:57:33','2000-07-22 22:57:33'),(12,24,12,1,4,5,'2002-01-08 06:42:47','2002-01-08 06:42:47'),(13,25,13,1,5,6,'2014-03-20 16:55:21','2014-03-20 16:55:21'),(14,27,14,0,5,7,'1988-01-04 07:04:48','1988-01-04 07:04:48'),(15,29,15,0,5,1,'1986-12-03 14:22:16','1986-12-03 14:22:16'),(16,31,16,0,6,2,'2007-08-01 10:24:16','2007-08-01 10:24:16'),(17,33,17,0,6,3,'1987-01-16 21:22:05','1987-01-16 21:22:05'),(18,32,18,1,6,4,'1971-02-27 08:20:30','1971-02-27 08:20:30'),(19,30,19,1,1,5,'2000-12-16 13:42:00','2000-12-16 13:42:00'),(20,1,20,0,1,6,'2006-12-03 19:26:06','2006-12-03 19:26:06'),(21,2,21,0,2,7,'2003-06-06 05:21:11','2003-06-06 05:21:11'),(22,3,22,1,3,1,'2018-06-24 02:11:40','2018-06-24 02:11:40'),(23,4,23,1,1,2,'2019-11-24 16:59:09','2019-11-24 16:59:09'),(24,5,24,0,1,3,'1988-09-10 00:23:35','1988-09-10 00:23:35'),(25,6,25,0,1,4,'1984-09-05 06:00:52','1984-09-05 06:00:52'),(26,7,26,0,2,5,'2005-12-17 11:53:22','2005-12-17 11:53:22'),(27,48,27,1,2,6,'1990-06-17 04:56:15','1990-06-17 04:56:15'),(28,43,28,1,2,7,'1974-08-07 12:04:13','1974-08-07 12:04:13'),(29,44,29,1,3,1,'2016-12-10 16:13:09','2016-12-10 16:13:09'),(30,32,30,0,3,2,'1988-10-23 01:15:23','1988-10-23 01:15:23'),(31,14,31,0,4,3,'1972-07-15 11:04:28','1972-07-15 11:04:28'),(32,34,32,0,4,4,'2001-01-24 04:44:42','2001-01-24 04:44:42'),(33,23,33,1,4,5,'1992-02-07 12:02:32','1992-02-07 12:02:32'),(34,49,34,1,5,6,'1972-11-09 06:47:18','1972-11-09 06:47:18'),(35,12,35,1,5,7,'1982-03-12 13:08:24','1982-03-12 13:08:24'),(36,34,36,0,5,1,'2007-05-01 11:12:02','2007-05-01 11:12:02'),(37,13,37,0,6,2,'1992-01-31 02:55:09','1992-01-31 02:55:09'),(38,12,38,0,6,3,'2014-08-21 13:38:56','2014-08-21 13:38:56'),(39,13,39,1,6,4,'1982-05-02 14:26:48','1982-05-02 14:26:48'),(40,31,40,1,1,5,'2002-06-04 15:51:03','2002-06-04 15:51:03'),(41,32,41,1,1,6,'2020-01-26 08:03:34','2020-01-26 08:03:34'),(42,33,42,0,1,7,'1975-10-27 07:45:28','1975-10-27 07:45:28'),(43,34,43,0,4,1,'1976-04-07 11:51:45','1976-04-07 11:51:45'),(44,23,44,0,5,2,'2019-08-06 03:22:28','2019-08-06 03:22:28'),(45,34,45,1,6,3,'1980-03-04 03:08:56','1980-03-04 03:08:56'),(46,45,46,1,1,4,'1997-12-03 03:12:45','1997-12-03 03:12:45'),(47,46,47,1,2,5,'2014-10-26 22:32:53','2014-10-26 22:32:53'),(48,47,48,0,3,6,'2008-07-27 01:45:01','2008-07-27 01:45:01'),(49,38,49,0,4,7,'2010-03-27 03:12:08','2010-03-27 03:12:08'),(50,39,50,0,1,1,'1983-04-02 15:36:16','1983-04-02 15:36:16');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) unsigned DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer` tinyint(1) NOT NULL DEFAULT '1',
  `seller` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `intro` tinytext COLLATE utf8mb4_unicode_ci,
  `profile` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password` (`password`),
  UNIQUE KEY `user_phone` (`phone`),
  UNIQUE KEY `user_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Bart','Nikolaus',12345,'noel.gislason@example.net','7a35e17a17eb7d9b826973ee80fbeb1a9301d31d',1,0,'2009-09-02 12:13:31','j','q'),(2,'Orpha','Pollich',113456,'mbradtke@example.net','16d87bcb6c8f39fdf628eac1d19563164d30dbfd',1,0,'1972-01-18 15:18:52','k','y'),(3,'Josefa','Block',124,'ndoyle@example.com','2f9eeae06ee35e88d92c806bd49eb870974bbb79',1,0,'1995-12-11 02:50:48','p','e'),(4,'Nora','McGlynn',465,'mertie50@example.org','e4ead75ceac7bbc3f6cc53ed73710dd2a34eea03',1,0,'1990-10-02 15:40:08','w','h'),(5,'Tyrel','Spencer',27,'santos.reinger@example.com','b1a63e823c26fa19cd0b451e6bcab87487092a08',1,0,'1997-08-07 10:41:20','a','j'),(6,'Aubrey','Block',935,'qdaniel@example.net','58552e758bc283a6982fff3352a924f433caf0ac',1,0,'1997-07-21 19:28:46','p','d'),(7,'Friedrich','Douglas',495,'uwatsica@example.org','ed2c50cf17a11349be998fd83bd20305aecf96d7',1,0,'2017-05-05 15:43:50','y','z'),(8,'Aaron','Ratke',958052,'buddy67@example.com','89ff23ff934e777c71c8ad0b92d1239555d48ba6',1,0,'1970-11-03 23:02:41','t','g'),(9,'Gwen','Cremin',892,'mueller.rowena@example.com','2b51a95ed9366681e8a1bcd0060bb8a0a734ff70',1,0,'1982-02-24 06:25:36','i','d'),(10,'Antonietta','Moore',594,'vconnelly@example.net','36ae4edfada9ea61189a3113ea503a551abb1e8a',1,0,'2012-05-09 11:03:41','o','n'),(11,'Emely','King',459709,'wilkinson.genoveva@example.org','aae48889ee3bb0159ad8a890b41562cfe6ae1421',1,0,'1974-01-19 05:41:33','h','i'),(12,'Meghan','Erdman',870289,'rwilkinson@example.net','4116c487549dc175103cef27f8c18b14c5d3e0ad',1,0,'2001-03-01 03:14:28','i','k'),(13,'Dana','Kovacek',5091566721,'kevin78@example.org','1bf19c8f4114a544ea6a7e9ac8f942ca3ba4a7c9',1,0,'2003-09-18 06:37:04','o','c'),(14,'Leda','Lind',667298,'nveum@example.com','6cedd8c1c53e43348d2925e614f868af498a9290',1,0,'1992-08-25 11:47:12','x','g'),(15,'Daisha','Corkery',781293,'floy13@example.org','fdcd25a787ae0bb2c84e36444b907dac5e06151d',1,0,'1979-12-04 04:35:48','b','y'),(16,'Vincenzo','Boyer',462,'fhagenes@example.org','a1ec9856b549845870a35fb23ec3c8623e0b0c42',1,0,'2009-05-20 23:36:43','o','p'),(17,'Donny','Conroy',825440,'kboyer@example.org','cb2af9b17858ec23960c14949089b6e64449cc06',1,0,'1977-10-09 04:20:13','i','f'),(18,'Adell','Murphy',649,'demetris41@example.org','bbe1ec16d6867e69f6c99f716fb7ac01e70ab759',1,0,'1982-02-27 20:58:40','h','m'),(19,'Jay','Schroeder',287,'schuster.lizzie@example.com','fd8b6bcb0673db19378eb8e387566a75e7fab593',1,0,'1984-09-03 06:50:24','z','u'),(20,'Guadalupe','Bosco',797,'sjohns@example.org','3efce4432fce150396ad741b0a42d1aa29e2d083',1,0,'1988-08-15 02:41:36','x','n'),(21,'Bernadine','Kshlerin',432719,'alta80@example.org','087c72176a1643b688a3335150c82aabc13fccfc',1,0,'1992-07-03 07:21:44','u','u'),(22,'Carmela','Schumm',449228,'yazmin44@example.org','d78734157b61cfeb44b7046c14b61c4d6603b535',1,0,'1994-12-12 11:26:18','y','i'),(23,'Patience','Hahn',61,'lveum@example.net','1d2f8c96a86934db087f58d6e2281afb44cafe68',1,0,'1980-05-05 10:11:10','s','k'),(24,'Antonietta','Purdy',785952,'xdoyle@example.org','c802c7ba47ac68a7ec5fe2588c2fe724bada7b0a',1,0,'1983-12-02 10:40:19','z','z'),(25,'Micah','Lakin',338,'oswald.rolfson@example.net','fd06777ca79832cc432b5696db2d95db3e5a255c',1,0,'1987-11-21 15:48:39','c','y'),(26,'Gaston','Rogahn',653,'kschroeder@example.net','cedc0676980e72339e27663580d7e26964303b0d',1,0,'2011-02-14 17:40:57','f','m'),(27,'Olen','Monahan',779,'grimes.ruby@example.com','f3287d2a58fd43d38e92444e669ff6046a35e94f',1,0,'2019-02-06 04:16:33','k','f'),(28,'Sigmund','Denesik',2305636502,'carter44@example.net','3efda19ba0bdb1919d3a3f76b796e19112c8d1fc',1,0,'2012-04-30 21:44:17','c','w'),(29,'Ramona','Hessel',9583274601,'nella.runolfsdottir@example.net','a3c1e037ef1606ccd5238c4526edf50f6a1b2b36',1,0,'1977-02-27 00:08:15','e','u'),(30,'Rudy','Jenkins',570431,'asa.raynor@example.org','e23cf8bf3d9c5b8810897279a44cb1437580cbb8',1,1,'2014-11-28 02:18:35','c','b'),(31,'Alia','Kuphal',510,'kerluke.carmelo@example.com','7dd13fd4e97586bf87f2cd9eceb985004700c76f',1,0,'1974-07-02 16:17:02','w','i'),(32,'Skyla','Howell',675098,'maximilian.schultz@example.net','b3a3b60039d51ff374a6a0ec9917aa5679c7d03f',1,0,'1981-05-13 10:02:03','y','y'),(33,'Obie','Morar',836063,'okuvalis@example.org','2edf2e20aebe41388d82e1b12fecee83df558ed6',1,0,'1992-08-19 16:28:59','a','j'),(34,'Linnea','Moen',401,'dubuque.mariano@example.com','e309b2dae01a6cf46e20e97d6c0ff10ee0bd7bf5',1,0,'2019-03-21 04:44:18','j','g'),(35,'Katelyn','Waelchi',917428503,'oberbrunner.elaina@example.net','97c2fe79336299b3519b4c5769ab52bb88118644',1,0,'1984-07-13 02:24:17','y','d'),(36,'Audreanne','Kirlin',184523,'yvette97@example.org','9b882cfb029d81bed96de7f8d28119d47224329d',1,0,'2009-04-18 14:23:40','r','a'),(37,'Edison','Beer',1365196132,'lakin.dante@example.org','b45fcfcd2c31548fd2b2f963276b9e65c9b472a0',1,1,'2002-12-04 04:26:12','h','y'),(38,'Irving','Kuvalis',343439,'zion.wolff@example.net','59b47487f1d463ec4620e4cb3b0c43cd9305ff96',1,0,'1975-12-28 08:11:25','y','b'),(39,'Emery','McCullough',295617,'uheller@example.net','b464993842625040e98074cfdd7d8358b22c9fe6',1,0,'2009-02-17 01:04:14','l','s'),(40,'Josh','Daugherty',971181674,'megane.graham@example.org','4f542f6c1bcd4aa0293a6a4332a259f741ce3699',1,0,'1992-02-14 13:11:57','t','z'),(41,'Raven','Huel',768,'rvon@example.net','625d7e1a8af9e876ad9ffc954eb601d079ec82bf',1,0,'2014-12-17 15:16:05','u','l'),(42,'Alek','Hills',6349354,'bettye18@example.net','2aa19fb6653df78ce4de9b8be31f0091d86cf288',1,0,'1985-07-19 08:24:24','h','i'),(43,'Brennan','Considine',676,'lexie.borer@example.org','2490d250ed8059da3ae51bf41fca8ec0ee8bcdfb',1,0,'1988-02-20 01:12:18','k','f'),(44,'Casper','Fahey',283,'okon.amani@example.org','0f8e1d56b24b2786431e59707f27ff6645aa9738',1,0,'2007-09-07 05:49:22','g','z'),(45,'Clark','Hamill',9275909675,'streich.marilyne@example.com','f075d87cad2c9461ffa7e415920dfc120771ca0e',1,0,'1988-03-02 11:33:30','o','o'),(46,'Zoe','Williamson',319,'blick.hoyt@example.net','5d5838b0985674012606a1dc79a834947ac09c2d',1,0,'2015-05-18 07:08:57','g','g'),(47,'Hank','Johnston',129147,'uhickle@example.net','fc02cc07b433867105248e04b86053b58b051a3f',1,0,'2013-07-14 22:01:52','s','k'),(48,'Annabelle','Boyer',444306,'annette89@example.com','a85cbc17fb71166cc343b5a42276047245686930',1,0,'2004-11-08 20:34:22','a','h'),(49,'King','Quigley',3970532638,'kaycee16@example.net','2385622b56f4458cbc94bd4261c6f334b3b0a35b',1,0,'2011-09-15 16:55:48','s','t'),(50,'Juvenal','Pfannerstill',511,'wilfredo.durgan@example.net','6f4488433b513359b80ccebd4da08d30e2f3397b',1,0,'2014-11-09 11:23:07','p','t');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-14 21:57:28
