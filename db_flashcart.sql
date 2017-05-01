CREATE DATABASE  IF NOT EXISTS `db_flashcart` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_flashcart`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_flashcart
-- ------------------------------------------------------
-- Server version	5.0.67-community-nt

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners` (
  `banner_id` int(10) unsigned NOT NULL auto_increment,
  `banner_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'Banner 1',NULL,NULL);
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `cat_id` int(10) unsigned NOT NULL auto_increment,
  `category_of_store` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  `label` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Games',NULL,NULL,'fa fa-gamepad'),(2,'Computers',NULL,NULL,'fa fa-desktop'),(3,'General',NULL,NULL,NULL),(4,'Clothes',NULL,NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_panels`
--

DROP TABLE IF EXISTS `category_panels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_panels` (
  `category_panel_id` int(10) unsigned NOT NULL auto_increment,
  `category_panel_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`category_panel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_panels`
--

LOCK TABLES `category_panels` WRITE;
/*!40000 ALTER TABLE `category_panels` DISABLE KEYS */;
INSERT INTO `category_panels` VALUES (1,'Category Panel 1',NULL,NULL);
/*!40000 ALTER TABLE `category_panels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footers`
--

DROP TABLE IF EXISTS `footers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `footers` (
  `footer_id` int(10) unsigned NOT NULL auto_increment,
  `footer_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`footer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footers`
--

LOCK TABLES `footers` WRITE;
/*!40000 ALTER TABLE `footers` DISABLE KEYS */;
INSERT INTO `footers` VALUES (1,'Footer 1',NULL,NULL);
/*!40000 ALTER TABLE `footers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `headers`
--

DROP TABLE IF EXISTS `headers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `headers` (
  `header_id` int(10) unsigned NOT NULL auto_increment,
  `header_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `identifier` int(11) NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`header_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `headers`
--

LOCK TABLES `headers` WRITE;
/*!40000 ALTER TABLE `headers` DISABLE KEYS */;
INSERT INTO `headers` VALUES (1,'Header 1',0,NULL,NULL);
/*!40000 ALTER TABLE `headers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layouts`
--

DROP TABLE IF EXISTS `layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layouts` (
  `layout_id` int(10) unsigned NOT NULL auto_increment,
  `layout_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layouts`
--

LOCK TABLES `layouts` WRITE;
/*!40000 ALTER TABLE `layouts` DISABLE KEYS */;
INSERT INTO `layouts` VALUES (1,'Layout 1',NULL,NULL);
/*!40000 ALTER TABLE `layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_to_stores`
--

DROP TABLE IF EXISTS `link_to_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link_to_stores` (
  `lts_id` int(10) unsigned NOT NULL auto_increment,
  `store_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `privilege` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`lts_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_to_stores`
--

LOCK TABLES `link_to_stores` WRITE;
/*!40000 ALTER TABLE `link_to_stores` DISABLE KEYS */;
INSERT INTO `link_to_stores` VALUES (1,1,1,'Owner','2017-01-29 07:56:45','2017-01-29 07:56:45'),(2,2,1,'Owner','2017-01-29 08:02:27','2017-01-29 08:02:27'),(3,3,1,'Owner','2017-01-29 08:02:54','2017-01-29 08:02:54'),(15,1,2,'Employee','2017-02-19 07:06:16','2017-02-19 07:06:16'),(16,2,1,'Employee',NULL,NULL);
/*!40000 ALTER TABLE `link_to_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `migration` varchar(255) collate utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (9,'2014_10_12_000000_create_users_table',1),(10,'2014_10_12_100000_create_password_resets_table',1),(11,'2017_01_25_214734_create_stores_table',1),(12,'2017_01_25_215425_create_link_to_store_table',1),(13,'2017_01_25_222115_create_link_to_stores_table',1),(14,'2017_01_26_205215_create_details_table',1),(15,'2017_01_26_205600_create_employment_style_table',1),(16,'2017_01_29_121056_create_store_style_table',1),(17,'2017_01_30_125031_create_store_products_table',2),(18,'2017_01_30_132432_create_product_categories_table',2),(19,'2017_01_30_133842_create_store_product_categories_table',2),(20,'2017_02_03_105936_create_store_sales_table',3),(21,'2017_02_03_114035_create_store_sale_products_table',3),(22,'2017_02_06_115136_create_store_brandmarks_table',4),(23,'2017_02_06_135423_create_store_policies_table',5),(24,'2017_02_12_084616_create_categories_table',6),(26,'2017_02_13_104343_create_store_proposals_table',7),(27,'2017_02_18_102444_create_notifications_table',8),(29,'2017_02_19_110003_create_store_employees_table',9),(33,'2017_02_25_134043_store_payment_options',10),(32,'2017_02_25_132620_create_payment_options_table',10),(34,'2017_03_01_095828_create_reviews_table',11),(35,'2017_03_08_122056_create_user_addresses_table',12),(36,'2017_03_15_090838_create_store_orders_table',13),(38,'2017_03_15_090917_create_store_order_products_table',14),(53,'2017_03_21_075150_create_store_layouts_table',22),(46,'2017_03_25_160049_create_headers_table',21),(66,'2017_03_21_093513_create_store_social_medias_table',27),(43,'2017_03_21_101735_create_store_product_sub_categories_table',18),(47,'2017_03_27_085000_create_layouts_table',21),(48,'2017_03_27_085030_create_footer_table',21),(49,'2017_03_27_085049_create_footers_table',21),(50,'2017_03_27_085109_create_category_panels_table',21),(51,'2017_03_27_085134_create_banners_table',21),(52,'2017_03_27_085153_create_product_areas_table',21),(54,'2017_03_27_085701_create_store_layout_views_table',22),(55,'2017_03_27_085835_create_store_headers_table',22),(56,'2017_03_27_085906_create_store_category_panels_table',22),(60,'2017_03_27_085931_create_store_footers_table',24),(58,'2017_03_27_085953_create_store_product_areas_table',22),(59,'2017_03_27_090350_create_store_banners_table',23),(63,'2017_04_14_141449_create_store_notifications_table',25),(64,'2017_04_14_152503_create_store_logs_table',26),(70,'2017_04_20_144344_create_store_user_messages_table',28),(71,'2017_04_20_160824_create_store_user_conversations_table',29),(72,'2017_04_20_160901_create_store_user_conversation_messages',29),(73,'2017_04_29_162907_create_product_category_identifiers_table',30);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `notification_id` int(10) unsigned NOT NULL auto_increment,
  `to_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_specific` varchar(255) collate utf8_unicode_ci NOT NULL,
  `notification_type` varchar(255) collate utf8_unicode_ci NOT NULL,
  `link_type` varchar(255) collate utf8_unicode_ci NOT NULL,
  `link` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  `seen` varchar(255) collate utf8_unicode_ci default '0',
  PRIMARY KEY  (`notification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (4,2,1,'1','1','5','3','2017-02-19 07:06:16','2017-02-19 07:06:16','0'),(5,1,1,'2','2','3','86','2017-04-14 06:09:07','2017-04-14 10:13:23','1'),(6,1,1,'2','2','3','85','2017-04-14 06:09:07','2017-04-14 10:13:23','1'),(7,2,1,'2','2','3','3','2017-04-14 06:09:07',NULL,'0'),(8,1,1,'2','2','3','2017-1-4-131-3764','2017-04-14 06:09:07','2017-04-14 10:13:23','1');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) collate utf8_unicode_ci NOT NULL,
  `token` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_options`
--

DROP TABLE IF EXISTS `payment_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_options` (
  `pay_id` int(10) unsigned NOT NULL auto_increment,
  `payment_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`pay_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_options`
--

LOCK TABLES `payment_options` WRITE;
/*!40000 ALTER TABLE `payment_options` DISABLE KEYS */;
INSERT INTO `payment_options` VALUES (1,'Easy Paisa',NULL,NULL),(2,'Bank Tranfer',NULL,NULL),(3,'UBL Omni',NULL,NULL),(4,'Cash On Delivery',NULL,NULL);
/*!40000 ALTER TABLE `payment_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_areas`
--

DROP TABLE IF EXISTS `product_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_areas` (
  `product_area_id` int(10) unsigned NOT NULL auto_increment,
  `product_area_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`product_area_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_areas`
--

LOCK TABLES `product_areas` WRITE;
/*!40000 ALTER TABLE `product_areas` DISABLE KEYS */;
INSERT INTO `product_areas` VALUES (1,'Product Area 1',NULL,NULL);
/*!40000 ALTER TABLE `product_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_categories` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `category` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  `icon` varchar(255) collate utf8_unicode_ci default NULL,
  `identifier` varchar(255) collate utf8_unicode_ci default NULL,
  `identifier_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (1,'Graphics Cards',NULL,NULL,NULL,'IT',NULL),(2,'Mobiles',NULL,NULL,'fa fa-mobile','Handhelds',NULL),(3,'Clothes',NULL,NULL,NULL,'Clothes',NULL),(4,'Computer',NULL,NULL,'fa fa-desktop','IT',NULL),(6,'DVDs',NULL,NULL,NULL,'IT',NULL),(7,'Laptop',NULL,NULL,'fa fa-laptop','IT',NULL),(8,'Tablet',NULL,NULL,NULL,'Handhelds',NULL),(9,'DJI Phantom Quadcopters','0000-00-00 00:00:00',NULL,'fa fa-camera','Cameras',1),(10,'Televisions',NULL,NULL,'fa fa-television','TV',1),(11,'Action Cameras','0000-00-00 00:00:00',NULL,NULL,NULL,1),(12,'Handy Cams','0000-00-00 00:00:00',NULL,NULL,NULL,1),(13,'DSLR Cameras','0000-00-00 00:00:00',NULL,NULL,NULL,1),(14,'Film Making Cameras','0000-00-00 00:00:00',NULL,NULL,NULL,1),(15,'Camcorder Camera','0000-00-00 00:00:00',NULL,NULL,NULL,1),(16,'DSLR Lenses','0000-00-00 00:00:00',NULL,NULL,NULL,1),(17,'Camera Accessories','0000-00-00 00:00:00',NULL,NULL,NULL,1),(18,'Printers & Scanners',NULL,NULL,NULL,NULL,2),(19,'Laptop Accessories',NULL,NULL,NULL,NULL,2),(20,'Hard Drives',NULL,NULL,NULL,NULL,2),(21,'SSDs',NULL,NULL,NULL,NULL,2),(22,'Graphic Cards',NULL,NULL,NULL,NULL,2),(23,'Processors',NULL,NULL,NULL,NULL,2),(24,'Motherboards',NULL,NULL,NULL,NULL,2),(25,'Desktops',NULL,NULL,NULL,NULL,2),(26,'Memory Modules',NULL,NULL,NULL,NULL,2),(27,'Laptops',NULL,NULL,NULL,NULL,2),(28,'Softwares',NULL,NULL,NULL,NULL,2),(29,'Servers & Workstations',NULL,NULL,NULL,NULL,2),(30,'Keyboards',NULL,NULL,NULL,NULL,2),(31,'Mouses',NULL,NULL,NULL,NULL,2),(32,'Office Supplies',NULL,NULL,NULL,NULL,2),(33,'Networt Products',NULL,NULL,NULL,NULL,NULL),(34,'Flash Drives',NULL,NULL,NULL,NULL,2),(35,'Hubs',NULL,NULL,NULL,NULL,2),(36,'LCDs',NULL,NULL,NULL,NULL,2),(37,'LEDs',NULL,NULL,NULL,NULL,2),(38,'Monitors',NULL,NULL,NULL,NULL,2),(39,'All-in-One PCs',NULL,NULL,NULL,NULL,2),(40,'Gaming Gears',NULL,NULL,NULL,NULL,2),(41,'Sound Cards',NULL,NULL,NULL,NULL,2),(42,'Optical Drives',NULL,NULL,NULL,NULL,2),(43,'PC Cooling Solutions',NULL,NULL,NULL,NULL,2),(44,'Power Supplies',NULL,NULL,NULL,NULL,2),(45,'PC Chassis',NULL,NULL,NULL,NULL,2),(46,'Keyboard & Mouse (both)',NULL,NULL,NULL,NULL,2),(47,'Mouse Pads',NULL,NULL,NULL,NULL,2),(48,'Speakers',NULL,NULL,NULL,NULL,2),(49,'Memory Cards',NULL,NULL,NULL,NULL,2),(50,'Headphones & Mic',NULL,NULL,NULL,NULL,2),(51,'Projectors',NULL,NULL,NULL,NULL,2),(52,'Earphones',NULL,NULL,NULL,NULL,2),(53,'UPS',NULL,NULL,NULL,NULL,2),(54,'Webcams',NULL,NULL,NULL,NULL,2),(55,'Video Recorders',NULL,NULL,NULL,NULL,2),(56,'GPS & Navigations',NULL,NULL,NULL,NULL,2),(57,'Graphic Tablets',NULL,NULL,NULL,NULL,2),(58,'Sandwich Makers',NULL,NULL,NULL,NULL,3),(59,'Deep Fryers',NULL,NULL,NULL,NULL,3),(60,'Juicers',NULL,NULL,NULL,NULL,3),(61,'Blenders',NULL,NULL,NULL,NULL,3),(62,'Choppers',NULL,NULL,NULL,NULL,3),(63,'Electric Kettles',NULL,NULL,NULL,NULL,3),(64,'Grinders',NULL,NULL,NULL,NULL,3),(65,'Toasters',NULL,NULL,NULL,NULL,3),(66,'Food Processors',NULL,NULL,NULL,NULL,3),(67,'Egg Machines',NULL,NULL,NULL,NULL,3),(68,'Irons',NULL,NULL,NULL,NULL,3),(69,'Microwave',NULL,NULL,NULL,NULL,3),(70,'Refrigerators',NULL,NULL,NULL,NULL,3),(71,'Electric Grills',NULL,NULL,NULL,NULL,3),(72,'Induction Cookers',NULL,NULL,NULL,NULL,3),(73,'Ovens',NULL,NULL,NULL,NULL,3),(74,'Washing Machines',NULL,NULL,NULL,NULL,3),(75,'Vacuum Cleaners',NULL,NULL,NULL,NULL,3),(76,'Insect Killers',NULL,NULL,NULL,NULL,3),(77,'Fans',NULL,NULL,NULL,NULL,3),(78,'Heaters',NULL,NULL,NULL,NULL,3),(79,'Coffee Makers',NULL,NULL,NULL,NULL,3),(80,'Rice Cookers',NULL,NULL,NULL,NULL,3),(81,'Food Steamers',NULL,NULL,NULL,NULL,3),(82,'Air Conditioners',NULL,NULL,NULL,NULL,3),(83,'Smart Locks',NULL,NULL,NULL,NULL,3),(84,'Water Dispensers',NULL,NULL,NULL,NULL,3),(85,'Mixers',NULL,NULL,NULL,NULL,3),(86,'Roti Makers',NULL,NULL,NULL,NULL,3),(87,'Kitchenware',NULL,NULL,NULL,NULL,3),(88,'Geysers',NULL,NULL,NULL,NULL,3),(89,'OLEDs',NULL,NULL,NULL,NULL,4),(90,'TV Accessories',NULL,NULL,NULL,NULL,4),(91,'3D TVs',NULL,NULL,NULL,NULL,4),(92,'LED TVs',NULL,NULL,NULL,NULL,4),(93,'Plamsa TVs',NULL,NULL,NULL,NULL,4),(94,'Smart TVs',NULL,NULL,NULL,NULL,4),(95,'4K Ultra HD TVs',NULL,NULL,NULL,NULL,4),(96,'Make Ups',NULL,NULL,NULL,NULL,5),(97,'Perfumes',NULL,NULL,NULL,NULL,5),(98,'Hands Care',NULL,NULL,NULL,NULL,5),(99,'Feet Care',NULL,NULL,NULL,NULL,5),(100,'Nails Care',NULL,NULL,NULL,NULL,5),(101,'Bath & Body',NULL,NULL,NULL,NULL,5),(102,'Men Grooming',NULL,NULL,NULL,NULL,5),(103,'Baby Products',NULL,NULL,NULL,NULL,5);
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category_identifiers`
--

DROP TABLE IF EXISTS `product_category_identifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_category_identifiers` (
  `pci_id` int(10) unsigned NOT NULL auto_increment,
  `identifier` varchar(255) collate utf8_unicode_ci NOT NULL,
  `icon` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`pci_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category_identifiers`
--

LOCK TABLES `product_category_identifiers` WRITE;
/*!40000 ALTER TABLE `product_category_identifiers` DISABLE KEYS */;
INSERT INTO `product_category_identifiers` VALUES (1,'Cameras','fa fa-camera',NULL,NULL),(2,'IT Devices & Laptops','fa fa-desktop',NULL,NULL),(3,'Home & Kitchen Items','fa fa-home',NULL,NULL),(4,'Televisions','fa fa-television',NULL,NULL),(5,'Beauty & Perfumes','fa fa-behance',NULL,NULL);
/*!40000 ALTER TABLE `product_category_identifiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `review_id` int(10) unsigned NOT NULL auto_increment,
  `review_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `review_type` tinyint(4) NOT NULL,
  `review` text collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  `review_to` int(11) default NULL,
  `rating` tinyint(4) default NULL,
  `review_title` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`review_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'Ali Rasheed',2,'This is a very good product. BPlease buy with this testing review.','2017-03-01 05:11:53','2017-03-01 05:11:53',1,5,'Very good'),(2,'Ali Rasheed',2,'asdasdasg;fkfm  do fdekj fflen fflwq frfp;weqmfdp;;qw fe[','2017-03-01 05:46:32','2017-03-01 05:46:32',1,3,'Very good');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_banners`
--

DROP TABLE IF EXISTS `store_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_banners` (
  `sb_id` int(10) unsigned NOT NULL auto_increment,
  `store_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`sb_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_banners`
--

LOCK TABLES `store_banners` WRITE;
/*!40000 ALTER TABLE `store_banners` DISABLE KEYS */;
INSERT INTO `store_banners` VALUES (1,1,1,NULL,NULL);
/*!40000 ALTER TABLE `store_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_brandmarks`
--

DROP TABLE IF EXISTS `store_brandmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_brandmarks` (
  `bm_id` int(10) unsigned NOT NULL auto_increment,
  `store_id` int(11) NOT NULL,
  `brand_logo` varchar(255) collate utf8_unicode_ci NOT NULL,
  `brand_icon` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`bm_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_brandmarks`
--

LOCK TABLES `store_brandmarks` WRITE;
/*!40000 ALTER TABLE `store_brandmarks` DISABLE KEYS */;
INSERT INTO `store_brandmarks` VALUES (1,1,'ali-reborn.png','',NULL,NULL),(2,2,'','',NULL,NULL),(3,3,'','',NULL,NULL);
/*!40000 ALTER TABLE `store_brandmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_category_panels`
--

DROP TABLE IF EXISTS `store_category_panels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_category_panels` (
  `scp_id` int(10) unsigned NOT NULL auto_increment,
  `store_id` int(11) NOT NULL,
  `category_panel_id` int(11) NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`scp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_category_panels`
--

LOCK TABLES `store_category_panels` WRITE;
/*!40000 ALTER TABLE `store_category_panels` DISABLE KEYS */;
INSERT INTO `store_category_panels` VALUES (1,1,1,NULL,NULL);
/*!40000 ALTER TABLE `store_category_panels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_details`
--

DROP TABLE IF EXISTS `store_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_details` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `store_id` int(11) NOT NULL,
  `tagline` varchar(255) collate utf8_unicode_ci NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  `welcome_note` text collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `store_details_store_id_unique` (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_details`
--

LOCK TABLES `store_details` WRITE;
/*!40000 ALTER TABLE `store_details` DISABLE KEYS */;
INSERT INTO `store_details` VALUES (1,1,'First testing store','This is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk website','This is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk website','2017-01-29 07:56:45','2017-02-05 18:24:26'),(2,2,'','','','2017-01-29 08:02:27','2017-01-29 08:02:27'),(3,3,'','','','2017-01-29 08:02:54','2017-01-29 08:02:54');
/*!40000 ALTER TABLE `store_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_employees`
--

DROP TABLE IF EXISTS `store_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_employees` (
  `se_id` int(10) unsigned NOT NULL auto_increment,
  `emp_id` int(11) NOT NULL,
  `current` tinyint(4) NOT NULL default '1',
  `emp_salary` varchar(255) collate utf8_unicode_ci NOT NULL,
  `emp_position` varchar(255) collate utf8_unicode_ci NOT NULL default 'Employee',
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  `store_id` int(11) default NULL,
  PRIMARY KEY  (`se_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_employees`
--

LOCK TABLES `store_employees` WRITE;
/*!40000 ALTER TABLE `store_employees` DISABLE KEYS */;
INSERT INTO `store_employees` VALUES (1,2,1,'5140','Co-Founder','2017-02-19 07:06:16','2017-02-19 12:19:46',1);
/*!40000 ALTER TABLE `store_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_employments`
--

DROP TABLE IF EXISTS `store_employments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_employments` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `store_id` int(11) NOT NULL,
  `min_wage` int(11) NOT NULL default '0',
  `max_wage` int(11) NOT NULL default '0',
  `description` text collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  `status` tinyint(4) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `store_employments_store_id_unique` (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_employments`
--

LOCK TABLES `store_employments` WRITE;
/*!40000 ALTER TABLE `store_employments` DISABLE KEYS */;
INSERT INTO `store_employments` VALUES (1,1,500,5000,'This is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk websiteThis is the first testing store of FlashCart.com.pk website','2017-01-29 07:56:45','2017-02-08 09:35:31',1),(2,2,0,0,'','2017-01-29 08:02:27','2017-01-29 08:02:27',0),(3,3,0,0,'','2017-01-29 08:02:54','2017-01-29 08:02:54',0);
/*!40000 ALTER TABLE `store_employments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_footers`
--

DROP TABLE IF EXISTS `store_footers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_footers` (
  `sf_id` int(10) unsigned NOT NULL auto_increment,
  `store_id` int(11) NOT NULL,
  `footer_id` int(11) NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`sf_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_footers`
--

LOCK TABLES `store_footers` WRITE;
/*!40000 ALTER TABLE `store_footers` DISABLE KEYS */;
INSERT INTO `store_footers` VALUES (1,1,1,NULL,NULL);
/*!40000 ALTER TABLE `store_footers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_headers`
--

DROP TABLE IF EXISTS `store_headers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_headers` (
  `sh_id` int(10) unsigned NOT NULL auto_increment,
  `store_id` int(11) NOT NULL,
  `header_id` int(11) NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`sh_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_headers`
--

LOCK TABLES `store_headers` WRITE;
/*!40000 ALTER TABLE `store_headers` DISABLE KEYS */;
INSERT INTO `store_headers` VALUES (1,1,1,NULL,NULL);
/*!40000 ALTER TABLE `store_headers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_layouts`
--

DROP TABLE IF EXISTS `store_layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_layouts` (
  `sl_id` int(10) unsigned NOT NULL auto_increment,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`sl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_layouts`
--

LOCK TABLES `store_layouts` WRITE;
/*!40000 ALTER TABLE `store_layouts` DISABLE KEYS */;
INSERT INTO `store_layouts` VALUES (1,1,1,NULL,NULL);
/*!40000 ALTER TABLE `store_layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_logs`
--

DROP TABLE IF EXISTS `store_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_logs` (
  `sl_id` int(10) unsigned NOT NULL auto_increment,
  `store_id` int(11) NOT NULL,
  `log` varchar(255) collate utf8_unicode_ci NOT NULL,
  `seen` tinyint(4) NOT NULL default '0',
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  `log_type` int(11) default NULL,
  `log_to` int(11) default NULL,
  `log_by` int(11) default NULL,
  `log_linker` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`sl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_logs`
--

LOCK TABLES `store_logs` WRITE;
/*!40000 ALTER TABLE `store_logs` DISABLE KEYS */;
INSERT INTO `store_logs` VALUES (10,1,'Conversation \'Another conversation\' deleted',1,'2017-04-23 15:36:58','2017-04-23 18:10:36',11,NULL,1,'11'),(9,1,'New conversation \'Another conversation\' started',1,'2017-04-23 15:36:20','2017-04-23 18:10:36',1,2,1,'11'),(7,1,'Conversation deleted',1,'2017-04-23 14:22:38','2017-04-23 18:10:36',11,NULL,1,'10'),(8,1,'Conversation deleted',1,'2017-04-23 15:15:21','2017-04-23 18:10:36',11,NULL,1,'7'),(6,1,'New conversation started',1,'2017-04-23 14:21:59','2017-04-23 18:10:36',1,2,1,'10'),(11,1,'Order \'2017-1-2-781-1948\' status updated to \'DECLINED\'',1,'2017-04-25 04:50:34','2017-04-25 04:50:42',22,NULL,1,'2017-1-2-781-1948'),(12,1,'Order \'2017-1-2-781-1948\' status updated to \'ACCEPTED\'',1,'2017-04-25 04:54:05','2017-04-25 04:54:13',21,NULL,1,'2017-1-2-781-1948'),(13,1,'New product \'ABC\' was added',1,'2017-04-25 05:40:11','2017-04-25 05:41:20',3,NULL,1,'236'),(14,1,'New order \'1-8-792-8501-2017\'',1,'2017-04-25 06:43:49','2017-04-25 06:49:04',21,NULL,1,'1-8-792-8501-2017'),(15,1,'New order \'1-8-792-8501-2017\'',1,'2017-04-25 06:44:38','2017-04-25 06:49:04',21,NULL,1,'1-8-792-8501-2017'),(16,1,'Conversation \'Another conversation\' deleted',1,'2017-04-26 16:50:48','2017-04-27 13:53:34',11,NULL,1,'11'),(17,1,'Conversation \'Hey hey Tesing Cono\' deleted',1,'2017-04-26 16:50:56','2017-04-27 13:53:34',11,NULL,1,'9'),(18,1,'Conversation \'Hey hey Tesing Cono\' deleted',1,'2017-04-26 16:51:06','2017-04-27 13:53:34',11,NULL,1,'9'),(19,1,'Conversation \'Tesing Conversation 5\' deleted',1,'2017-04-26 16:52:14','2017-04-27 13:53:34',11,NULL,1,'6');
/*!40000 ALTER TABLE `store_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_notifications`
--

DROP TABLE IF EXISTS `store_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_notifications` (
  `sn_id` int(10) unsigned NOT NULL auto_increment,
  `store_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `link_value` varchar(255) collate utf8_unicode_ci NOT NULL,
  `notification` varchar(255) collate utf8_unicode_ci NOT NULL,
  `seen` tinyint(4) NOT NULL default '0',
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`sn_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_notifications`
--

LOCK TABLES `store_notifications` WRITE;
/*!40000 ALTER TABLE `store_notifications` DISABLE KEYS */;
INSERT INTO `store_notifications` VALUES (1,1,3,'2017-1-7-530-7843','You have a order to review',1,'2017-04-14 09:59:01','2017-04-14 10:13:54'),(2,1,3,'1-8-792-8501-2017','',0,'2017-04-25 06:44:38','2017-04-25 06:44:38');
/*!40000 ALTER TABLE `store_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_order_products`
--

DROP TABLE IF EXISTS `store_order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_order_products` (
  `sop_id` int(10) unsigned NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` varchar(255) collate utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`sop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=325 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_order_products`
--

LOCK TABLES `store_order_products` WRITE;
/*!40000 ALTER TABLE `store_order_products` DISABLE KEYS */;
INSERT INTO `store_order_products` VALUES (324,96,232,'28000',2,'2017-04-25 06:44:38','2017-04-25 06:44:38'),(323,96,233,'28500',1,'2017-04-25 06:44:38','2017-04-25 06:44:38'),(322,94,229,'29483',1,'2017-04-14 09:59:01','2017-04-14 09:59:01'),(321,94,232,'28000',1,'2017-04-14 09:59:01','2017-04-14 09:59:01'),(320,94,234,'37000',1,'2017-04-14 09:59:01','2017-04-14 09:59:01'),(319,94,233,'28500',1,'2017-04-14 09:59:01','2017-04-14 09:59:01'),(318,91,232,'28000',1,'2017-04-14 06:09:07','2017-04-14 06:09:07'),(317,91,234,'37000',1,'2017-04-14 06:09:07','2017-04-14 06:09:07'),(316,91,233,'28500',1,'2017-04-14 06:09:07','2017-04-14 06:09:07'),(315,90,205,'7224',1,'2017-04-11 02:57:30','2017-04-11 02:57:30'),(314,89,214,'10271',1,'2017-04-11 02:56:28','2017-04-11 02:56:28'),(313,89,226,'25364',1,'2017-04-11 02:56:28','2017-04-11 02:56:28'),(312,88,230,'37664',1,'2017-04-11 02:52:03','2017-04-11 02:52:03'),(311,88,231,'42274',1,'2017-04-11 02:52:03','2017-04-11 02:52:03'),(310,88,235,'67999',1,'2017-04-11 02:52:03','2017-04-11 02:52:03'),(309,87,229,'29483',2,'2017-04-11 02:50:31','2017-04-11 02:50:31'),(308,87,232,'28000',2,'2017-04-11 02:50:31','2017-04-11 02:50:31'),(307,87,234,'37000',1,'2017-04-11 02:50:31','2017-04-11 02:50:31'),(306,87,233,'28500',3,'2017-04-11 02:50:31','2017-04-11 02:50:31');
/*!40000 ALTER TABLE `store_order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_orders`
--

DROP TABLE IF EXISTS `store_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_orders` (
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `order_status` tinyint(4) NOT NULL default '1',
  `payment_method` int(11) NOT NULL,
  `address_info` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  `invoice_id` varchar(255) collate utf8_unicode_ci default NULL,
  `so_id` int(11) NOT NULL auto_increment,
  `order_name` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`so_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_orders`
--

LOCK TABLES `store_orders` WRITE;
/*!40000 ALTER TABLE `store_orders` DISABLE KEYS */;
INSERT INTO `store_orders` VALUES (1,1,1,12,'House No. 64, Street C-1<br />Cantt Bazaar, Malir Cantt, <br />Karachi,Sindh - 74050<br />021-34902446, 03323818063','2017-04-11 02:57:30',NULL,'2017-1-3-111-1111',90,'Ali Rasheed'),(1,1,1,12,'House No. 64, Street C-1<br />Cantt Bazaar, Malir Cantt, <br />Karachi,Sindh - 74050<br />021-34902446, 03323818063','2017-04-11 02:56:28','2017-04-25 04:54:05','2017-1-2-781-1948',89,'Ali Rasheed'),(1,1,0,12,'House No. 64, Street C-1<br />Cantt Bazaar, Malir Cantt, <br />Karachi,Sindh - 74050<br />021-34902446, 03323818063','2017-04-11 02:50:31','2017-04-14 05:52:56','2017-1-0-480-8888',87,'Ali Rasheed'),(1,2,1,13,'House No. 64, Street C-1<br />Cantt Bazaar, Malir Cantt, <br />Karachi,Sindh - 74050<br />021-34902446, 03323818063','2017-04-11 02:52:03',NULL,'2017-1-1-939-7777',88,'Ali Rasheed'),(1,1,2,12,'House No. 64, Street C-1<br />Cantt Bazaar, Malir Cantt, <br />Karachi,Sindh - 74050<br />021-34902446, 03323818063','2017-04-14 06:09:07',NULL,'2017-1-4-131-3764',91,NULL),(1,1,2,12,'House No. 64, Street C-1<br />Cantt Bazaar, Malir Cantt, <br />Karachi,Sindh - 74050<br />021-34902446, 03323818063','2017-04-14 09:36:29',NULL,'2017-1-5-294-8925',92,NULL),(1,1,1,12,'House No. 64, Street C-1<br />Cantt Bazaar, Malir Cantt, <br />Karachi,Sindh - 74050<br />021-34902446, 03323818063','2017-04-14 09:39:08','2017-04-20 02:34:52','2017-1-6-888-8280',93,NULL),(1,1,2,12,'House No. 64, Street C-1<br />Cantt Bazaar, Malir Cantt, <br />Karachi,Sindh - 74050<br />021-34902446, 03323818063','2017-04-14 09:59:01',NULL,'2017-1-7-530-7843',94,NULL),(1,1,2,12,'House No. 64, Street C-1<br />Cantt Bazaar, Malir Cantt, <br />Karachi,Sindh - 74050<br />021-34902446, 03323818063','2017-04-25 06:44:37',NULL,'1-8-792-8501-2017',96,NULL);
/*!40000 ALTER TABLE `store_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_payment_options`
--

DROP TABLE IF EXISTS `store_payment_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_payment_options` (
  `spo_id` int(10) unsigned NOT NULL auto_increment,
  `pay_id` int(11) NOT NULL,
  `store_id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `account_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `account_number` varchar(255) collate utf8_unicode_ci NOT NULL,
  `bank_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `bank_branch` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`spo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_payment_options`
--

LOCK TABLES `store_payment_options` WRITE;
/*!40000 ALTER TABLE `store_payment_options` DISABLE KEYS */;
INSERT INTO `store_payment_options` VALUES (5,2,'1','Ali Rasheed','00112233445566777','HBL','Malir Cantt','2017-02-25 14:50:43','2017-02-25 14:50:43'),(6,1,'1','Ali Rasheed 2','033238180631','','','2017-02-25 14:52:05','2017-02-26 06:40:26'),(7,3,'1','Ali Rasheed','033238180631','','','2017-02-25 14:52:37','2017-02-25 14:52:37'),(9,1,'1','Ali Rasheed','0333333039791','','','2017-02-25 15:50:34','2017-02-25 15:50:34'),(10,2,'1','Shahnaz Bano','11122233444556','HBL','Malir Cantt','2017-02-25 15:51:00','2017-02-26 06:40:18'),(11,3,'1','Ali Rasheed','0011112222114','','','2017-02-25 15:51:20','2017-02-25 15:51:20'),(12,4,'1','','','','','2017-03-15 04:56:16','2017-03-15 04:56:16'),(13,4,'2','','','','','2017-04-11 02:51:34','2017-04-11 02:51:34');
/*!40000 ALTER TABLE `store_payment_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_policies`
--

DROP TABLE IF EXISTS `store_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_policies` (
  `policy_id` int(10) unsigned NOT NULL auto_increment,
  `store_id` int(11) NOT NULL,
  `policy_title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `policy_content` text collate utf8_unicode_ci NOT NULL,
  `policy_slug` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`policy_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_policies`
--

LOCK TABLES `store_policies` WRITE;
/*!40000 ALTER TABLE `store_policies` DISABLE KEYS */;
INSERT INTO `store_policies` VALUES (1,1,'Yo yo','asdasdasdsadsadasd','','2017-02-06 09:24:07','2017-02-06 09:24:07'),(2,1,'Checking policy update function','asdasdasdasdasd','','2017-02-06 09:30:34','2017-02-07 11:03:40'),(3,1,'Ha ha ha 2','asdasdasdasdasd','','2017-02-06 09:31:09','2017-02-06 09:31:09'),(4,1,'Ha ha ha 2','asdasdasdasdasd','1-ha-ha-ha-2','2017-02-06 09:33:24','2017-02-06 09:33:24');
/*!40000 ALTER TABLE `store_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_product_areas`
--

DROP TABLE IF EXISTS `store_product_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_product_areas` (
  `spa_id` int(10) unsigned NOT NULL auto_increment,
  `store_id` int(11) NOT NULL,
  `product_area_id` int(11) NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`spa_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_product_areas`
--

LOCK TABLES `store_product_areas` WRITE;
/*!40000 ALTER TABLE `store_product_areas` DISABLE KEYS */;
INSERT INTO `store_product_areas` VALUES (1,1,1,NULL,NULL);
/*!40000 ALTER TABLE `store_product_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_product_categories`
--

DROP TABLE IF EXISTS `store_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_product_categories` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `store_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_product_categories`
--

LOCK TABLES `store_product_categories` WRITE;
/*!40000 ALTER TABLE `store_product_categories` DISABLE KEYS */;
INSERT INTO `store_product_categories` VALUES (33,1,4,'2017-03-29 02:38:25','2017-03-29 02:38:25'),(30,1,3,'2017-02-01 13:31:01','2017-02-01 13:31:01'),(35,1,6,'2017-03-29 02:56:01','2017-03-29 02:56:01'),(32,1,2,'2017-02-01 13:31:59','2017-02-01 13:31:59'),(31,1,1,'2017-02-01 13:31:56','2017-02-01 13:31:56');
/*!40000 ALTER TABLE `store_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_product_sub_categories`
--

DROP TABLE IF EXISTS `store_product_sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_product_sub_categories` (
  `spsc_id` int(10) unsigned NOT NULL auto_increment,
  `store_id` int(11) NOT NULL,
  `store_category_id` int(11) NOT NULL,
  `sub_category` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`spsc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_product_sub_categories`
--

LOCK TABLES `store_product_sub_categories` WRITE;
/*!40000 ALTER TABLE `store_product_sub_categories` DISABLE KEYS */;
INSERT INTO `store_product_sub_categories` VALUES (1,1,32,'iPhone',NULL,NULL),(2,1,32,'Samsung',NULL,NULL),(3,1,32,'Nokia',NULL,NULL),(4,1,32,'Sony','2017-03-29 03:46:42','2017-03-29 03:46:42'),(5,1,33,'Desktop','2017-03-29 05:20:15','2017-03-29 05:20:15'),(6,1,31,'NVIDIA',NULL,NULL),(7,1,31,'AMD',NULL,NULL),(8,1,30,'Lawn',NULL,NULL);
/*!40000 ALTER TABLE `store_product_sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_products`
--

DROP TABLE IF EXISTS `store_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_products` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `store_id` int(11) NOT NULL,
  `product_code` varchar(255) collate utf8_unicode_ci NOT NULL,
  `product_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `product_desc` varchar(255) collate utf8_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL default '0',
  `product_discount` varchar(255) collate utf8_unicode_ci NOT NULL default '0',
  `product_quantity` int(11) NOT NULL default '0',
  `category_id` int(11) NOT NULL,
  `product_views` int(11) NOT NULL default '0',
  `product_image1` varchar(255) collate utf8_unicode_ci NOT NULL,
  `product_image2` varchar(255) collate utf8_unicode_ci NOT NULL,
  `product_image3` varchar(255) collate utf8_unicode_ci NOT NULL,
  `product_image4` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  `slug` varchar(255) collate utf8_unicode_ci default NULL,
  `sub_category` int(11) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `slug` (`slug`),
  FULLTEXT KEY `search` (`product_name`,`product_desc`)
) ENGINE=MyISAM AUTO_INCREMENT=237 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_products`
--

LOCK TABLES `store_products` WRITE;
/*!40000 ALTER TABLE `store_products` DISABLE KEYS */;
INSERT INTO `store_products` VALUES (235,2,'ABC-437',' 					ZOTAC GeForce GTX 1080 AMP! Edition ZT-P10800C-10P 				',' 				\r\n    FREE NVIDIA For Honor / Ghost Recon Wildlands game bundle (31st Jan - 28th March)*   8GB 256-Bit GDDR5X  Core Clock 1683 MHz  Boost Clock 1822 MHz  Upto 5 Years Warranty*     			',84999,'20',10,33,0,'193438-image-808261.jpg','193438-image-808261.jpg','193438-image-808261.jpg','193438-image-808261.jpg',NULL,NULL,'zotac-geforce-gtx-1080-amp-edition-zt-p10800c-10p',1),(233,1,'ABC-287',' 					ZOTAC GeForce GTX 1070 AMP! Extreme Edition 8GB ZT-P10700B-10P 				',' 				  FREE NVIDIA For Honor / Ghost Recon Wildlands game bundle (31st Jan - 28th March)*   Arriving in 2 weeks   8GB 256-Bit GDDR5  Core Clock 1632 MHz  Boost Clock 1835 MHz  Upto 5 Years Warranty*   			',56999,'15',61,30,3,'399926-image-168582.jpg','399926-image-168582.jpg','399926-image-168582.jpg','399926-image-168582.jpg',NULL,'2017-04-02 13:58:04','zotac-geforce-gtx-1070-amp-extreme-edition-8gb-zt-p10700b-10p',8),(234,1,'ABC-362',' 					ZOTAC GeForce GTX 1080 AMP! Extreme Edition ZT-P10800B-10P 				',' 				  FREE NVIDIA For Honor / Ghost Recon Wildlands game bundle (31st Jan - 28th March)*   Arriving in 2 weeks   8GB 256-Bit GDDR5X  Core Clock 1771 MHz  Boost Clock 1911 MHz  Upto 5 Years Warranty*   			',73999,'7',57,30,0,'439340-image-372460.jpg','439340-image-372460.jpg','439340-image-372460.jpg','439340-image-372460.jpg',NULL,NULL,'zotac-geforce-gtx-1080-amp-extreme-edition-zt-p10800b-10p',8),(232,1,'ABC-656',' 					ZOTAC GeForce GTX 1070 AMP! Edition ZT-P10700C-10P 				',' 				  FREE NVIDIA For Honor / Ghost Recon Wildlands game bundle (31st Jan - 28th March)*   8GB 256-Bit GDDR5  Core Clock 1607 MHz  Boost Clock 1797 MHz  Upto 5 Years Warranty*   			',55999,'14',41,30,0,'230325-image-680462.jpg','230325-image-680462.jpg','230325-image-680462.jpg','230325-image-680462.jpg',NULL,NULL,'zotac-geforce-gtx-1070-amp-edition-zt-p10700c-10p',8),(231,2,'ABC-511',' 					ZOTAC GeForce GTX 1070 Mini 8GB (OPEN BOX) ZT-P10700G-10M 				',' 				  FREE NVIDIA For Honor / Ghost Recon Wildlands game bundle (31st Jan - 28th March)*   (OPEN BOX)   8GB 256-Bit GDDR5  Core Clock 1518 MHz  Boost Clock 1708 MHz  Upto 5 Years Warranty*   			',47499,'11',64,32,0,'344061-image-857369.jpg','344061-image-857369.jpg','344061-image-857369.jpg','344061-image-857369.jpg',NULL,NULL,'zotac-geforce-gtx-1070-mini-8gb-open-box-zt-p10700g-10m',4),(229,1,'ABC-503',' 					ZOTAC GeForce GTX 1060 AMP! 6GB GDDR5 ZT-P10600B-10M 				',' 				\r\n\r\n    6GB 192-Bit GDDR5  Core Clock 1556 MHz  Boost Clock 1771 MHz  Upto 5 Years Warranty*     			',35099,'16',78,33,0,'409539-image-569528.jpg','409539-image-569528.jpg','409539-image-569528.jpg','409539-image-569528.jpg',NULL,NULL,'zotac-geforce-gtx-1060-amp-6gb-gddr5-zt-p10600b-10m',1),(230,2,'ABC-556',' 					ZOTAC GeForce GTX 970 AMP! Edition (ZT-90110-10P) 				',' 				\r\n    4GB 256-Bit GDDR5  Core Clock 1114 MHz  Boost Clock 1253 MHz  1 x DL-DVI (2560 x 1600) 1 x HDMI 2.0 (4K @ 60 Hz) 3 x DisplayPort (4K @ 60 Hz)  1664 CUDA Cores  PCI Express 3.0 x16  Upto 5 Years Warranty*     			',40499,'7',2,32,0,'478753-image-576339.jpg','478753-image-576339.jpg','478753-image-576339.jpg','478753-image-576339.jpg',NULL,NULL,'zotac-geforce-gtx-970-amp-edition-zt-90110-10p',2),(227,2,'ABC-595',' 					ZOTAC GeForce GTX 1060 Mini 6GB GDDR5 ZT-P10600A-10L 				',' 				       6GB 192-Bit GDDR5  Core Clock 1506 MHz  Boost Clock 1708 MHz  Upto 5 Years Warranty*     			',30999,'11',7,32,0,'316320-image-111782.jpg','316320-image-111782.jpg','316320-image-111782.jpg','316320-image-111782.jpg',NULL,NULL,'zotac-geforce-gtx-1060-mini-6gb-gddr5-zt-p10600a-10l',2),(228,1,'ABC-303',' 					SAPPHIRE Radeon NITRO+ RX 480 8GB GDDR5 Dual HDMI / DVI-D / Dual DP Graphics Card (11260-07-20G) 				',' 				    8GB 256-Bit GDDR5  Core Clock 1208 MHz  Boost Clock 1342 MHz  1 x Dual-Link DVI-D 2 x HDMI 2.0 2 x DisplayPort 1.4  2304 Stream Processors  PCI Express 3.0 x16     			',33999,'14',78,30,0,'161935-image-116589.jpg','161935-image-116589.jpg','161935-image-116589.jpg','161935-image-116589.jpg',NULL,NULL,'sapphire-radeon-nitro-rx-480-8gb-gddr5-dual-hdmi-dvi-d-dual-dp-graphics-card-11260-07-20g',8),(226,1,'ABC 122','SAPPHIRE Radeon RX 480 Nitro OC 11260 02 20G 4GB GDDR5 PCI Express 3 0 x16 Graphics Card','4GB GDDR5 Core Clock 1208 MHz Boost Clock 1306 MHz 256 Bit Memory Bus 1 x HDMI 3 x DisplayPort 2304 Stream Processors PCI Express 3 0 x16',28499,'11',96,31,1,'480895-image-387979.jpg','480895-image-387979.jpg','480895-image-387979.jpg','480895-image-387979.jpg',NULL,'2017-04-25 05:38:29','sapphire-radeon-rx-480-nitro-oc-11260-02-20g-4gb-gddr5-pci-express-30-x16-graphics-card',7),(236,1,'LO78876878','ABC','asfdass',23,'1',11,30,0,'no_image.png','no_image.png','no_image.png','no_image.png','2017-04-25 05:40:11','2017-04-25 05:40:11','abc',8),(224,2,'ABC-527',' 					SAPPHIRE Radeon RX 470 11256-00-20G 4GB GDDR5 PCI Express 3.0 x16 256 Bit Graphics Card 				',' 				    4GB GDDR5  Core Clock 932 MHz  Boost Clock 1216 MHz  256 Bit Memory Bus  1 x HDMI 3 x DisplayPort  2048 Stream Processors  PCI Express 3.0 x16     			',24999,'19',31,33,1,'244277-image-907550.jpg','244277-image-907550.jpg','244277-image-907550.jpg','244277-image-907550.jpg',NULL,'2017-04-11 02:57:59','sapphire-radeon-rx-470-11256-00-20g-4gb-gddr5-pci-express-3-0-x16-256-bit-graphics-card',1),(225,2,'ABC-121',' 					ZOTAC GeForce GTX 1060 Mini 3GB ZT-P10610A-10L 				',' 				       3GB 192-Bit GDDR5  Core Clock 1506 MHz  Boost Clock 1708 MHz  Upto 5 Years Warranty*     			',26499,'14',91,33,0,'835314-image-657144.jpg','835314-image-657144.jpg','835314-image-657144.jpg','835314-image-657144.jpg',NULL,NULL,'zotac-geforce-gtx-1060-mini-3gb-zt-p10610a-10l',1),(222,2,'ABC-515',' 					ZOTAC GeForce GTX 950 Over Clocked Edition (ZT-90602-10M) 				',' 				    2GB 128-Bit GDDR5  Core Clock 1102 MHz  Boost Clock 1279 MHz  2 x DL-DVI 1 x HDMI 1 x DisplayPort  768 CUDA Cores  PCI Express 3.0  Upto 5 Years Warranty*     			',19899,'20',77,33,0,'304647-image-653491.jpg','304647-image-653491.jpg','304647-image-653491.jpg','304647-image-653491.jpg',NULL,NULL,'zotac-geforce-gtx-950-over-clocked-edition-zt-90602-10m',1),(223,1,'ABC-582',' 					ZOTAC GeForceÂ® GTX 1050 Ti OC Edition ZT-P10510B-10L 				',' 				\r\n\r\n      4GB 128-Bit GDDR5  Core Clock 1392 MHz  Boost Clock 1506 MHz  Upto 5 Years Warranty*       			',21999,'2',88,30,0,'476226-image-244662.jpg','476226-image-244662.jpg','476226-image-244662.jpg','476226-image-244662.jpg',NULL,NULL,'zotac-geforce-gtx-1050-ti-oc-edition-zt-p10510b-10l',8),(220,1,'ABC-735',' 					ZOTAC GeForceÂ® GTX 1050 Mini ZT-P10500A-10L 				',' 				\r\n    2GB 128-Bit GDDR5  Core Clock 1354 MHz  Boost Clock 1455 MHz     			',16599,'8',70,32,0,'912329-image-670437.jpg','912329-image-670437.jpg','912329-image-670437.jpg','912329-image-670437.jpg',NULL,NULL,'zotac-geforce-gtx-1050-mini-zt-p10500a-10l',1),(221,1,'ABC-615',' 					SAPPHIRE Radeon NITRO RX 460 4GB GDDR5 HDMI/DVI-D/DP OC (UEFI) PCI-E Graphics Card (11257-02-20G) 				',' 				    4GB 128-Bit GDDR5  Core Clock 1175 MHz  Boost Clock 1250 MHz  1 x DVI 1 x HDMI 2.0 1 x DisplayPort 1.4  896 Stream Processors  PCI Express 3.0 x16     			',17099,'9',50,32,0,'406738-image-123538.jpg','406738-image-123538.jpg','406738-image-123538.jpg','406738-image-123538.jpg',NULL,NULL,'sapphire-radeon-nitro-rx-460-4gb-gddr5-hdmi-dvi-d-dp-oc-uefi-pci-e-graphics-card-11257-02-20g',2),(219,2,'ABC-283',' 					SAPPHIRE Radeon RX 460 11257-00-20G 2GB 128-Bit GDDR5 PCI Express 3.0 x16 CrossFireX Support Graphics Card 				',' 				    2GB 128-Bit GDDR5  Core Clock 1090 MHz  Boost Clock 1210 MHz  1 x DVI 1 x HDMI 2.0 1 x DisplayPort 1.4  896 Stream Processors  PCI Express 3.0 x16     			',14999,'12',25,33,0,'595263-image-647805.jpg','595263-image-647805.jpg','595263-image-647805.jpg','595263-image-647805.jpg',NULL,NULL,'sapphire-radeon-rx-460-11257-00-20g-2gb-128-bit-gddr5-pci-express-3-0-x16-crossfirex-support-graphics-card',1),(218,2,'ABC-531',' 					Thermaltake Water 3.0 Extreme S 240mm Water/Liquid CPU Cooler (CLW0224-B) 				',' 				      1000~2000RPM 99 CFM  Radiator Dim. 270x 120 x 27 mm  Fan Dim. 120 x 120 x 25mm  Fan Noise 20 dBA  Closed loop all in one liquid cooling system  240mm aluminium radiator  Please confirm availability before ordering        			',10999,'10',50,33,0,'280642-image-202557.jpg','280642-image-202557.jpg','280642-image-202557.jpg','280642-image-202557.jpg',NULL,NULL,'thermaltake-water-3-0-extreme-s-240mm-water-liquid-cpu-cooler-clw0224-b',1),(216,1,'ABC-288',' 					NZXT Phantom 240 White Mid Tower PC Casing CA-PH240-W1 				',' 				\r\n    Steel / Plastic ATX Mid Tower  2 x USB 3.0 / 1 x HD Audio / Mic Front Ports  3 External 5.25\" Drive Bays  6 Internal 3.5\" Drive Bays     			',10999,'4',15,32,0,'276852-image-605041.jpg','276852-image-605041.jpg','276852-image-605041.jpg','276852-image-605041.jpg',NULL,NULL,'nzxt-phantom-240-white-mid-tower-pc-casing-ca-ph240-w1',3),(217,2,'ABC-757',' 					Thermaltake TR2 Gold 700W SLI/CrossFire Ready 80 PLUS GOLD Certified Power Supply (PS-TR2-0700NPCGEU-G) 				',' 				    Max Power Output: 700W  ATX12V / EPS12V  80 PLUS GOLD Certified  100 - 240 V 50/60 Hz  Please confirm availability before ordering      			',10999,'3',25,30,0,'140374-image-143038.jpg','140374-image-143038.jpg','140374-image-143038.jpg','140374-image-143038.jpg',NULL,NULL,'thermaltake-tr2-gold-700w-sli-crossfire-ready-80-plus-gold-certified-power-supply-ps-tr2-0700npcgeu-g',8),(215,1,'ABC-935',' 					G.SKILL Trident X 16GB (2 x 8GB) 240-Pin DDR3 1600 MHz Desktop Memory Model F3-1600C7D-16GTX 				',' 				    DDR3 1600 (PC3 12800)  Timing 7-8-8-24  Cas Latency 7  Voltage 1.5V     			',10799,'15',0,30,0,'909884-image-193054.jpg','909884-image-193054.jpg','909884-image-193054.jpg','909884-image-193054.jpg',NULL,NULL,'g-skill-trident-x-16gb-2-x-8gb-240-pin-ddr3-1600-mhz-desktop-memory-model-f3-1600c7d-16gtx',8),(213,2,'ABC-921',' 					Asus B150M-A Intel Skylake Micro ATX Motherboard 				',' 				    Intel B150  Core i7 / i5 / i3 / Pentium / Celeron (LGA1151)  DDR4 2133  Please confirm availability before ordering      			',10499,'5',17,30,0,'613610-image-903897.jpg','613610-image-903897.jpg','613610-image-903897.jpg','613610-image-903897.jpg',NULL,NULL,'asus-b150m-a-intel-skylake-micro-atx-motherboard',8),(214,1,'ABC-581',' 					ASUS H97M-E LGA 1150 Intel H97 Micro ATX Intel Motherboard 				',' 				        Intel H97  Core i7 / i5 / i3 / Pentium / Celeron (LGA1150)  DDR3 1600/1333  Please confirm availability before ordering          			',10699,'4',83,32,0,'420910-image-262075.jpg','420910-image-262075.jpg','420910-image-262075.jpg','420910-image-262075.jpg',NULL,NULL,'asus-h97m-e-lga-1150-intel-h97-micro-atx-intel-motherboard',2),(212,2,'ABC-541',' 					CRYORIG R1 Ultimate Dual Tower CPU Air Cooler for AMD/Intel Black - CR-R1A 				',' 				    700~1300 RPM  XF140: 76 CFM per fan  Aluminum & Copper     			',9999,'14',30,33,0,'638687-image-360650.jpg','638687-image-360650.jpg','638687-image-360650.jpg','638687-image-360650.jpg',NULL,NULL,'cryorig-r1-ultimate-dual-tower-cpu-air-cooler-for-amd-intel-black-cr-r1a',1),(210,2,'ABC-240',' 					NZXT Aer RGB 120mm &amp; HUE+ Controller Starter Kit 				',' 				     2 x 120mm Aer RGB Fans  1 x Hue + Controller   			',9899,'4',49,31,0,'837924-image-843115.jpg','837924-image-843115.jpg','837924-image-843115.jpg','837924-image-843115.jpg',NULL,NULL,'nzxt-aer-rgb-120mm-amp-hue-controller-starter-kit',6),(211,2,'ABC-663',' 					CRYORIG R1 Universal Dual Tower CPU Air Cooler for AMD/Intel White - CR-R1B 				',' 				    700~1300 RPM  XF140: 76 CFM XT140: 65 CFM  Aluminum & Copper     			',9999,'13',26,33,0,'498858-image-124032.jpg','498858-image-124032.jpg','498858-image-124032.jpg','498858-image-124032.jpg',NULL,NULL,'cryorig-r1-universal-dual-tower-cpu-air-cooler-for-amd-intel-white-cr-r1b',1),(209,2,'ABC-402',' 					Thermaltake TR2 Gold 600W SLI/CrossFire Ready 80 PLUS GOLD Certified Power Supply (PS-TR2-0600NPCGEU-G) 				',' 				    Max Power Output: 600W  ATX12V / EPS12V  80 PLUS GOLD Certified  100 - 240 V 50/60 Hz  Please confirm availability before ordering      			',9499,'16',3,30,0,'588534-image-547143.jpg','588534-image-547143.jpg','588534-image-547143.jpg','588534-image-547143.jpg',NULL,NULL,'thermaltake-tr2-gold-600w-sli-crossfire-ready-80-plus-gold-certified-power-supply-ps-tr2-0600npcgeu-g',8),(207,2,'ABC-131',' 					ASUS Strix 2.0 Gaming Headset 				',' 				    Thunderous 60mm drivers: Precise positioning and immersive game audio  Cross-platform flexibility: PC, Mac, PS4 and smart device compatible  Dual-microphone design: Detachable boom mic for clear in-game chat and in-line mic for on-the-go use  Fol',9099,'15',4,33,0,'159793-image-304949.jpg','159793-image-304949.jpg','159793-image-304949.jpg','159793-image-304949.jpg',NULL,NULL,'asus-strix-2-0-gaming-headset',1),(208,1,'ABC-419',' 					ViewSonic VA1917A-LED  18.5&quot; Widescreen 5ms LED Monitor 				',' 				    16:9 widescreen LED monitor with 1366x768 resolution  sRGB color correction delivers true colors  Environmentally friendly ENERGY STAR and EPEAT-Silver certifications  Up to 35% in energy savings with ViewSonic exclusive Eco-mode feature  3-year ',9199,'16',34,33,0,'778515-image-597268.jpg','778515-image-597268.jpg','778515-image-597268.jpg','778515-image-597268.jpg',NULL,NULL,'viewsonic-va1917a-led-18-5-quot-widescreen-5ms-led-monitor',1),(205,1,'ABC-385',' 					G.SKILL RIPJAWS SV710 - Dolby Virtual 7.1 Headset 				',' 				    Dolby Pro Logic IIx Technology on Dual 50mm Drivers  Retractable Environmental Noise Cancellation (ENC) Mic  In-Line Audio Control  Padded Suspension Headband and Circumaural Ear Cup Design     			',8499,'15',73,32,0,'497018-image-978137.jpg','497018-image-978137.jpg','497018-image-978137.jpg','497018-image-978137.jpg',NULL,NULL,'g-skill-ripjaws-sv710-dolby-virtual-7-1-headset',2),(206,2,'ABC-699',' 					Asus B150M-A D3 Intel Skylake Micro ATX Motherboard 				',' 				\r\n    Intel Z170  Core i7 / i5 / i3 / Pentium / Celeron (LGA1151)  DDR3 1866(O.C.)/1600/1333 MHz  Please confirm availability before ordering      			',8999,'19',79,30,0,'228704-image-546017.jpg','228704-image-546017.jpg','228704-image-546017.jpg','228704-image-546017.jpg',NULL,NULL,'asus-b150m-a-d3-intel-skylake-micro-atx-motherboard',8),(204,2,'ABC-963',' 					CORSAIR Vengeance Pro 8GB (1 x 8GB) 240-Pin DDR3 2400 MHz 				',' 				    DDR3 2400 (PC3 19200)  Timing 11-13-13-31  Cas Latency 11  Voltage 1.65V     			',6899,'14',86,32,0,'497238-image-889587.jpg','497238-image-889587.jpg','497238-image-889587.jpg','497238-image-889587.jpg',NULL,NULL,'corsair-vengeance-pro-8gb-1-x-8gb-240-pin-ddr3-2400-mhz',1),(202,1,'ABC-104',' 					BenQ 19.5&quot; DL2020 LED Monitor - Black 				',' 				    Screen Size : 19.5\"W  Aspect Ratio : 16:9  Resolution (max.) : 1366 x 768  Display Colors : 16.7 Million     			',8999,'13',60,30,0,'645333-image-607019.jpg','645333-image-607019.jpg','645333-image-607019.jpg','645333-image-607019.jpg',NULL,NULL,'benq-19-5-quot-dl2020-led-monitor-black',8),(203,1,'ABC-860',' 					G.SKILL Ripjaws X 16GB (2 x 8GB) 240-Pin DDR3 1866 MHz Desktop Memory Model F3-14900CL10D-16GBXL 				',' 				    DDR3 1866 (PC3 14900)  Timing 10-11-10-30  Cas Latency 10  Voltage 1.5V     			',8999,'0',40,32,0,'771676-image-990881.jpg','771676-image-990881.jpg','771676-image-990881.jpg','771676-image-990881.jpg',NULL,NULL,'g-skill-ripjaws-x-16gb-2-x-8gb-240-pin-ddr3-1866-mhz-desktop-memory-model-f3-14900cl10d-16gbxl',3),(201,2,'ABC-903',' 					Asus B150M-K D3 Intel Skylake Micro ATX Motherboard 				',' 				\r\n    Intel B150  Core i7 / i5 / i3 / Pentium / Celeron (LGA1151)  DDR3 1866(O.C.)/1600/1333 MHz  Please confirm availability before ordering      			',8499,'16',96,32,0,'863000-image-299868.jpg','863000-image-299868.jpg','863000-image-299868.jpg','863000-image-299868.jpg',NULL,NULL,'asus-b150m-k-d3-intel-skylake-micro-atx-motherboard',2),(199,2,'ABC-716',' 					ASUS B85M-G LGA 1150 Intel B85 Micro ATX Intel Motherboard 				',' 				        Intel B85  Core i7 / i5 / i3 / Pentium / Celeron (LGA1150)  DDR3 1600/ 1333/ 1066  Please confirm availability before ordering          			',8099,'8',20,30,0,'507730-image-936334.jpg','507730-image-936334.jpg','507730-image-936334.jpg','507730-image-936334.jpg',NULL,NULL,'asus-b85m-g-lga-1150-intel-b85-micro-atx-intel-motherboard',8),(200,2,'ABC-221',' 					Thermaltake Smart SE Hybrid Modular 730W Power Supply (SPS-730MPCBEU) 				',' 				    Max Power Output: 730W  ATX12V / EPS12V  Semi-Modular  80 PLUS Bronze  Please confirm availability before ordering      			',8499,'18',95,30,0,'183825-image-407315.jpg','183825-image-407315.jpg','183825-image-407315.jpg','183825-image-407315.jpg',NULL,NULL,'thermaltake-smart-se-hybrid-modular-730w-power-supply-sps-730mpcbeu',8),(198,1,'ABC-596',' 					G.SKILL Ripjaws V Series 8GB (2 x 4GB) 288-Pin DDR4 SDRAM DDR4 3200 MHz Desktop Memory Model F4-3200C16D-8GVKB 				',' 				    DDR4 3200 (PC4 25600)  Timing 16-18-18-3  Cas Latency 16  Voltage 1.35V     			',7999,'4',31,32,0,'427667-image-914169.jpg','427667-image-914169.jpg','427667-image-914169.jpg','427667-image-914169.jpg',NULL,NULL,'g-skill-ripjaws-v-series-8gb-2-x-4gb-288-pin-ddr4-sdram-ddr4-3200-mhz-desktop-memory-model-f4-3200c16d-8gvkb',4),(196,1,'ABC-958',' 					G.SKILL Ripjaws V 8GB (1 x 8GB) 288-Pin DDR4 2400 MHz Desktop Memory Model F4-2400C15S-8GVR 				',' 				  DDR4 2400 (PC4-19200)  Timing 15-15-15-35  Cas Latency 15  Voltage 1.2V   			',7399,'12',41,32,0,'759921-image-778295.jpg','759921-image-778295.jpg','759921-image-778295.jpg','759921-image-778295.jpg',NULL,NULL,'g-skill-ripjaws-v-8gb-1-x-8gb-288-pin-ddr4-2400-mhz-desktop-memory-model-f4-2400c15s-8gvr',2),(197,2,'ABC-685',' 					G.SKILL RIPJAWS MX780 USB Wired RGB Laser Gaming Mouse 				',' 				    8,200dpi Laser Sensor & On-the-fly DPI Switching  Ambidextrous & Height-Adjustable Design  Interchangeable Side Grips & Adjustable Weights  8 Programmable Buttons & 4-Zone RGB Lighting           			',7499,'14',98,30,0,'502593-image-418685.jpg','502593-image-418685.jpg','502593-image-418685.jpg','502593-image-418685.jpg',NULL,NULL,'g-skill-ripjaws-mx780-usb-wired-rgb-laser-gaming-mouse',8),(195,2,'ABC-436',' 					ASUS H110M-D LGA 1151 H110 Micro ATX Intel Motherboard 				',' 				\r\n     IntelÂ® Socket 1151 for 6th Generation CoreTM i7/CoreTM i5/CoreTM i3/PentiumÂ®/CeleronÂ® Processors     2 x DIMM, Max. 32GB, DDR4 2133 MHz Non-ECC, Un-buffered Memory     Multi-VGA output support : HDMI/RGB ports     1 x PCIe 3.0/2.0 x1 (x16 m',7199,'5',15,31,0,'362875-image-587792.jpg','362875-image-587792.jpg','362875-image-587792.jpg','362875-image-587792.jpg',NULL,NULL,'asus-h110m-d-lga-1151-h110-micro-atx-intel-motherboard',7),(193,2,'ABC-609',' 					Thermaltake 630W Smart SE Hybrid Modular Power Supply (SPS-630MPCBEU) 				',' 				    Max Power Output: 630W  ATX12V / EPS12V  Semi-Modular  80 PLUS Bronze  Please confirm availability before ordering      			',6699,'19',55,32,0,'953939-image-888818.jpg','953939-image-888818.jpg','953939-image-888818.jpg','953939-image-888818.jpg',NULL,NULL,'thermaltake-630w-smart-se-hybrid-modular-power-supply-sps-630mpcbeu',2),(194,2,'ABC-245',' 					ASUS H110M-D D3 LGA 1151 H110 Micro ATX Intel Motherboard 				',' 				\r\n    Intel H110  Core i7 / i5 / i3 / Pentium / Celeron (LGA1151)  DDR3 1866(O.C.)/ 1600/ 1333  Please confirm availability before ordering      			',6899,'20',45,32,0,'352548-image-249633.jpg','352548-image-249633.jpg','352548-image-249633.jpg','352548-image-249633.jpg',NULL,NULL,'asus-h110m-d-d3-lga-1151-h110-micro-atx-intel-motherboard',1),(191,2,'ABC-716',' 					G.SKILL Ripjaws X 8GB (2 x 4GB) 240-Pin DDR3 1600 MHz Desktop Memory Model F3-12800CL7D-8GBXM 				',' 				    DDR3 1600 (PC3 12800)  Timing 7-8-8-24  Cas Latency 7  Voltage 1.5V     			',6399,'3',80,30,0,'391879-image-599218.jpg','391879-image-599218.jpg','391879-image-599218.jpg','391879-image-599218.jpg',NULL,NULL,'g-skill-ripjaws-x-8gb-2-x-4gb-240-pin-ddr3-1600-mhz-desktop-memory-model-f3-12800cl7d-8gbxm',8),(192,1,'ABC-853',' 					ASUS H110M-K LGA 1151 H110 Micro ATX Intel Motherboard 				',' 				    Intel H110  Core i7 / i5 / i3 / Pentium / Celeron (LGA1151)  DDR3 1866(O.C.)/ 1600/ 1333  Please confirm availability before ordering      			',6699,'8',71,32,0,'592050-image-930346.jpg','592050-image-930346.jpg','592050-image-930346.jpg','592050-image-930346.jpg',NULL,NULL,'asus-h110m-k-lga-1151-h110-micro-atx-intel-motherboard',2),(189,1,'ABC-106',' 					CRYORIG H5A Universal Mid Tower CPU Air Cooler For AMD/Intel - CR-H5A 				',' 				    &lt;1600 RPM  &gt;80 CFM  Aluminum & Copper     			',5999,'14',14,31,0,'984426-image-977532.jpg','984426-image-977532.jpg','984426-image-977532.jpg','984426-image-977532.jpg',NULL,NULL,'cryorig-h5a-universal-mid-tower-cpu-air-cooler-for-amd-intel-cr-h5a',7),(190,2,'ABC-268',' 					Thermaltake Water 3.0 Performer C 120mm Water/Liquid CPU Cooler (CLW0222-B) 				',' 				    1200~2000 RPM 81.32 CFM  Radiator Dim. 151 x 120 x 27 mm  Fan Noise 27.36 dB-A(MAX)  Closed loop all in one liquid cooling system  120mm aluminium radiator  Please confirm availability before ordering      			',6199,'8',35,30,0,'120434-image-303933.jpg','120434-image-303933.jpg','120434-image-303933.jpg','120434-image-303933.jpg',NULL,NULL,'thermaltake-water-3-0-performer-c-120mm-water-liquid-cpu-cooler-clw0222-b',8),(168,1,'ABC-510',' 					ASUS H81M-C LGA 1150 Intel H81 Micro ATX Intel Motherboard 				',' 				      Intel H81  4th Generation Core i7/Core i5/Core i3/Pentium/Celeron  DDR3 1600/1333/1066  Please confirm availability before ordering        			',5050,'20',35,31,0,'408963-image-689471.jpg','408963-image-689471.jpg','408963-image-689471.jpg','408963-image-689471.jpg',NULL,NULL,'asus-h81m-c-lga-1150-intel-h81-micro-atx-intel-motherboard',6),(167,2,'ABC-768',' 					Thermaltake Smart SE Hybrid Modular 530W Power Supply (SPS-530MPCBEU) 				',' 				    Max Power Output: 530W  ATX12V / EPS12V  Semi-Modular  80 PLUS Bronze  Please confirm availability before ordering      			',5050,'11',23,30,0,'766018-image-796038.jpg','766018-image-796038.jpg','766018-image-796038.jpg','766018-image-796038.jpg',NULL,NULL,'thermaltake-smart-se-hybrid-modular-530w-power-supply-sps-530mpcbeu',8),(165,1,'ABC-868',' 					G.SKILL Ripjaws X 8GB (2 x 4GB) 240-Pin DDR3L 1600 MHz Desktop Memory Model F3-12800CL9D-8GBXM 				',' 				    DDR3L 1600 (PC3 12800)  Timing 9-9-9-24  Cas Latency 9  Voltage 1.35V     			',5050,'7',48,33,0,'622454-image-264767.jpg','622454-image-264767.jpg','622454-image-264767.jpg','622454-image-264767.jpg',NULL,NULL,'g-skill-ripjaws-x-8gb-2-x-4gb-240-pin-ddr3l-1600-mhz-desktop-memory-model-f3-12800cl9d-8gbxm',1),(166,2,'ABC-975',' 					G.SKILL Ares 8GB (2 x 4GB) 240-Pin DDR3 1600 MHz Desktop Memory Model F3-1600C9D-8GAO 				',' 				    DDR3 1600 (PC3 12800)  Timing 9-9-9-24  Cas Latency 9  Voltage 1.5V     			',5050,'19',48,31,0,'698699-image-137985.jpg','698699-image-137985.jpg','698699-image-137985.jpg','698699-image-137985.jpg',NULL,NULL,'g-skill-ares-8gb-2-x-4gb-240-pin-ddr3-1600-mhz-desktop-memory-model-f3-1600c9d-8gao',6),(164,2,'ABC-554',' 					ASUS H81M-K LGA 1150 Intel H81 Micro ATX Intel Motherboard 				',' 				      Intel H81  4th Generation Core i7/Core i5/Core i3/Pentium/Celeron  DDR3 1600/1333/1066  Please confirm availability before ordering        			',5505,'3',42,31,0,'215768-image-921887.jpg','215768-image-921887.jpg','215768-image-921887.jpg','215768-image-921887.jpg',NULL,NULL,'asus-h81m-k-lga-1150-intel-h81-micro-atx-intel-motherboard',7),(162,1,'ABC-182',' 					CRYORIG H7 Tower CPU Air Cooler For AMD/Intel- CR-H7A 				',' 				    330~1600  49 CFM Max  Aluminum & Copper     			',5050,'10',48,33,0,'934631-image-232632.jpg','934631-image-232632.jpg','934631-image-232632.jpg','934631-image-232632.jpg',NULL,NULL,'cryorig-h7-tower-cpu-air-cooler-for-amd-intel-cr-h7a',1),(163,1,'ABC-200',' 					ASUS Cerberus Gaming Headset 				',' 				    Large 60mm neodymium-magnet drivers deliver unrivaled punch and ultimate immersion  Compatible with PC, Mac, PlayStationÂ® 4 and smart devices for gaming and mobile fun  Dual-microphone design: detachable boom mic for clear in-game communication ',5050,'11',58,33,0,'215988-image-833337.jpg','215988-image-833337.jpg','215988-image-833337.jpg','215988-image-833337.jpg',NULL,NULL,'asus-cerberus-gaming-headset',1),(160,2,'ABC-907',' 					G.SKILL Aegis 8GB 240-Pin DDR3 1600 MHz Desktop Memory Model F3-1600C11S-8GIS 				',' 				    DDR3 1600 (PC3 12800)  Timing 11-11-11-28  Cas Latency 11  Voltage 1.5V     			',45050,'16',26,33,0,'468618-image-498199.jpg','468618-image-498199.jpg','468618-image-498199.jpg','468618-image-498199.jpg',NULL,NULL,'g-skill-aegis-8gb-240-pin-ddr3-1600-mhz-desktop-memory-model-f3-1600c11s-8gis',1),(161,1,'ABC-389',' 					Thermaltake eSPORTS Commander LED Gaming Keyboard and Mouse Combo Bundle 				',' 				    Tough Metal-look Edges  Tactile Feel Plunger Switches  Replaceable Metalcaps  Splendid Illumination Backlighting  Handy Multimedia & Shortcut Keys     			',4020,'11',33,31,0,'129141-image-507647.jpg','129141-image-507647.jpg','129141-image-507647.jpg','129141-image-507647.jpg',NULL,NULL,'thermaltake-esports-commander-led-gaming-keyboard-and-mouse-combo-bundle',7),(188,2,'ABC-523',' 					Arctic SilverÂ® 5 High-Density Polysynthetic Silver Thermal Compound 12g - AS5-12G 				',' 				  Made With 99.9% Pure Silver  High-Density Polysynthetic Silver Thermal Compound  Controlled Triple-Phase Viscosity      			',3399,'20',4,33,0,'858496-image-765139.jpg','858496-image-765139.jpg','858496-image-765139.jpg','858496-image-765139.jpg',NULL,NULL,'arctic-silver-5-high-density-polysynthetic-silver-thermal-compound-12g-as5-12g',1),(159,1,'ABC-857',' 					CoolerMaster Devastator Red/Blue LED Gaming Keyboard and Mouse Combo Bundle 				',' 				    Anti-slide rubber pads on bottom side  Dedicated Multi-media keys  Blue LED backlight with on / off key shortcut  Ergonomic ultra flat mouse body  1000 / 1600 / 2000 dpi modes     			',4000,'2',57,32,0,'397344-image-534042.jpg','397344-image-534042.jpg','397344-image-534042.jpg','397344-image-534042.jpg',NULL,NULL,'coolermaster-devastator-red-blue-led-gaming-keyboard-and-mouse-combo-bundle',3),(184,1,'ABC-988',' 					Etekcity Scroll FLY Gaming Mouse w/ 6 Buttons 				',' 				     High-precision optical 3305DK sensor, 3600FPS, 30G acceleration, 4 adjustable DPI: 400/800/1600/3200 DPI  Cool LED lighting: built-in astonishing green/red/yellow light or OFF  Symmetrical and ergonomic design give comfort for long time use  6 B',2499,'16',79,31,0,'210549-image-549945.jpg','210549-image-549945.jpg','210549-image-549945.jpg','210549-image-549945.jpg',NULL,NULL,'etekcity-scroll-fly-gaming-mouse-w-6-buttons',6),(185,2,'ABC-686',' 					CRYORIG M9i Mini Tower CPU Air Cooler for Intel CPU - CR-M9I 				',' 				    PWM Controlled 600~2200 RPM  48.4 CFM Max  For Intel CPUs  3 Pure Copper Heatpipes  True Copper Base     			',2899,'5',87,32,0,'978494-image-668377.jpg','978494-image-668377.jpg','978494-image-668377.jpg','978494-image-668377.jpg',NULL,NULL,'cryorig-m9i-mini-tower-cpu-air-cooler-for-intel-cpu-cr-m9i',2),(186,1,'ABC-657',' 					G.SKILL Turbulence III Memory Cooler 				',' 				  Voltage: 7 - 13.8V  Current: 0.07A - 0.10A  Power Consumption: 0.8W - 1.2W  Pressure (MAX): 1.60mm-H2O  Life: 40,000/hrs 25Â°C         			',2999,'20',94,31,0,'726907-image-357904.jpg','726907-image-357904.jpg','726907-image-357904.jpg','726907-image-357904.jpg',NULL,NULL,'g-skill-turbulence-iii-memory-cooler',7),(187,2,'ABC-678',' 					ASUS 8x External Slimline DVD Writer SDRW-08D2S-U LITE 				',' 				    Mac and Windows OS Compatible  Disc Encryption double security with password-controlled and hidden-file functionality  Drag-and-Burn: friendly interface with only three simple steps to burn a disc  Diamond-cut design realize aesthetics of technol',3199,'12',74,32,0,'130789-image-293524.jpg','130789-image-293524.jpg','130789-image-293524.jpg','130789-image-293524.jpg',NULL,NULL,'asus-8x-external-slimline-dvd-writer-sdrw-08d2s-u-lite',4),(180,1,'ABC-969',' 					ASUS Internal DVD Drive &amp; DVD Writer DRW-24D5MT 				',' 				  24X DVD writing speed  M-Disc support 1000-years storage solution  E-Green saves over 50% of power consumption   			',2199,'8',21,32,0,'287152-image-391769.jpg','287152-image-391769.jpg','287152-image-391769.jpg','287152-image-391769.jpg',NULL,NULL,'asus-internal-dvd-drive-amp-dvd-writer-drw-24d5mt',2),(181,1,'ABC-193',' 					Arctic Silver 7g Premium Silver Thermal Adhesive Set ASTA-7G (2-PC-SET) 				',' 				    Made with 99.8% pure micronized silver  62% to 65% silver content by weight  Superior thermal performance     			',2499,'0',52,32,0,'771209-image-616549.jpg','771209-image-616549.jpg','771209-image-616549.jpg','771209-image-616549.jpg',NULL,NULL,'arctic-silver-7g-premium-silver-thermal-adhesive-set-asta-7g-2-pc-set',2),(182,1,'ABC-507',' 					G.SKILL Aegis 4GB 240-Pin DDR3 1600 MHz Desktop Memory Model F3-1600C11S-4GIS 				',' 				    DDR3 1600 (PC3 12800)  Timing 11-11-11-28  Cas Latency 11  Voltage 1.5V     			',2499,'12',98,30,0,'116067-image-826361.jpg','116067-image-826361.jpg','116067-image-826361.jpg','116067-image-826361.jpg',NULL,NULL,'g-skill-aegis-4gb-240-pin-ddr3-1600-mhz-desktop-memory-model-f3-1600c11s-4gis',8),(183,1,'ABC-890',' 					G.SKILL Turbulence II RAM/Memory Cooler 				',' 				  Voltage: 7 - 13.8V  Current: 0.07A  Power Consumption: 0.8W  Pressure (MAX): 1.60mm-H2O  Life: 40,000/hrs 25Â°C         			',2499,'15',96,31,0,'448074-image-227606.jpg','448074-image-227606.jpg','448074-image-227606.jpg','448074-image-227606.jpg',NULL,NULL,'g-skill-turbulence-ii-ram-memory-cooler',6),(169,2,'ABC-447',' 					Coboc SATA III 6GB/s Data Cable w/ Latch 10&quot; Green 				',' 				  2 Connector Number  Latch  Green  10 Inches   			',350,'7',69,30,0,'373394-image-285971.jpg','373394-image-285971.jpg','373394-image-285971.jpg','373394-image-285971.jpg',NULL,NULL,'coboc-sata-iii-6gb-s-data-cable-w-latch-10-quot-green',8),(170,1,'ABC-980',' 					Coboc Sata III 6GB/s Data Cable w/ Latch 18&quot; Black 				',' 				  2 Connector Number  Latch  Black  18 Inches   			',350,'4',62,33,0,'855117-image-439093.jpg','855117-image-439093.jpg','855117-image-439093.jpg','855117-image-439093.jpg',NULL,NULL,'coboc-sata-iii-6gb-s-data-cable-w-latch-18-quot-black',1),(171,2,'ABC-809',' 					Coboc SATA III 6GB/s Data Cable w/ Latch 10&quot; UV Blue 				',' 				  2 Connector Number  Latch  UV Blue  10 Inches      			',350,'10',70,30,0,'514514-image-339859.jpg','514514-image-339859.jpg','514514-image-339859.jpg','514514-image-339859.jpg',NULL,NULL,'coboc-sata-iii-6gb-s-data-cable-w-latch-10-quot-uv-blue',8),(172,2,'ABC-188',' 					Coboc SATA III 6GB/s Data Cable w/ Latch 18&quot; Silver 				',' 				  2 Connector Number  Latch  Silver  18 Inches   			',400,'1',14,32,0,'919470-image-942568.jpg','919470-image-942568.jpg','919470-image-942568.jpg','919470-image-942568.jpg',NULL,NULL,'coboc-sata-iii-6gb-s-data-cable-w-latch-18-quot-silver',2),(173,1,'ABC-296',' 					Arctic Silver Arctic Alumina 1.75g Premium Ceramic Polysynthetic thermal compound - AA-1.75G 				',' 				     Premium Ceramic Content  Controlled Triple Phase Viscosity  Absolute Stability      			',599,'15',61,31,0,'614270-image-638247.jpg','614270-image-638247.jpg','614270-image-638247.jpg','614270-image-638247.jpg',NULL,NULL,'arctic-silver-arctic-alumina-1-75g-premium-ceramic-polysynthetic-thermal-compound-aa-1-75g',6),(174,2,'ABC-537',' 					Arctic Silver CÃ©ramiqueâ„¢ 2 Tri-Linear Ceramic Thermal Compound - 2.7 g - CMQ2-2.7G 				',' 				  Tri-Linear Ceramic Thermal Compound  The high-density, ceramic-based thermal compound specifically designed for modern high-power CPUs and high-performance heatsinks or water-cooling solutions  2.7 grams         			',799,'12',65,31,0,'273913-image-101895.jpg','273913-image-101895.jpg','273913-image-101895.jpg','273913-image-101895.jpg',NULL,NULL,'arctic-silver-ceramique-2-tri-linear-ceramic-thermal-compound-2-7-g-cmq2-2-7g',7),(175,1,'ABC-687',' 					NZXT FN V2 120mm Performance Case Fan Cooling (RF-FN122-RB) 				',' 				     Dimensions: 120x120x27mm, Speed: 1200 15% R.P.M. Air Flow: 45CFM     Noise Level:21 dBA Voltage:0.16A Input Power:1.92W     Anti-vibration pads and sleeved cables are included for better performance     			',999,'8',3,32,0,'573400-image-908511.jpg','573400-image-908511.jpg','573400-image-908511.jpg','573400-image-908511.jpg',NULL,NULL,'nzxt-fn-v2-120mm-performance-case-fan-cooling-rf-fn122-rb',3),(178,2,'ABC-139',' 					CRYORIG XF140 140mm PWM Computer Case Fan - CR-XFA 				',' 				    140mm  700 - 1300 RPM 76 CFM  HPLN Bearing  23 dBA     			',1399,'18',70,30,0,'989865-image-360925.jpg','989865-image-360925.jpg','989865-image-360925.jpg','989865-image-360925.jpg',NULL,NULL,'cryorig-xf140-140mm-pwm-computer-case-fan-cr-xfa',8),(179,2,'ABC-136',' 					Arctic Silver CÃ©ramiqueâ„¢ 2 Tri-Linear Ceramic Thermal Compound - 25 g - CMQ2-25G 				',' 				  Tri-Linear Ceramic Thermal Compound  The high-density, ceramic-based thermal compound specifically designed for modern high-power CPUs and high-performance heatsinks or water-cooling solutions  25 grams         			',1499,'6',92,33,0,'499188-image-441207.jpg','499188-image-441207.jpg','499188-image-441207.jpg','499188-image-441207.jpg',NULL,NULL,'arctic-silver-ceramique-2-tri-linear-ceramic-thermal-compound-25-g-cmq2-25g',1),(177,1,'ABC-713',' 					Arctic SilverÂ® 5 High-Density Polysynthetic Silver Thermal Compound 3.5g - AS5-3.5G 				',' 				  Made With 99.9% Pure Silver  High-Density Polysynthetic Silver Thermal Compound  Controlled Triple-Phase Viscosity      			',1299,'16',81,31,0,'391906-image-250650.jpg','391906-image-250650.jpg','391906-image-250650.jpg','391906-image-250650.jpg',NULL,NULL,'arctic-silver-5-high-density-polysynthetic-silver-thermal-compound-3-5g-as5-3-5g',6),(176,1,'ABC-521',' 					CRYORIG QF120 Balance 120mm PWM Computer Case Fan - CR-QFA 				',' 				    120mm  330~1600RPM 49 CFM  HPLN Bearing  10~25 dBA     			',1199,'18',51,32,0,'387731-image-133096.jpg','387731-image-133096.jpg','387731-image-133096.jpg','387731-image-133096.jpg',NULL,NULL,'cryorig-qf120-balance-120mm-pwm-computer-case-fan-cr-qfa',4);
/*!40000 ALTER TABLE `store_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_proposals`
--

DROP TABLE IF EXISTS `store_proposals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_proposals` (
  `proposal_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `salary` varchar(255) collate utf8_unicode_ci NOT NULL,
  `message` text collate utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL default '3',
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`proposal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_proposals`
--

LOCK TABLES `store_proposals` WRITE;
/*!40000 ALTER TABLE `store_proposals` DISABLE KEYS */;
INSERT INTO `store_proposals` VALUES (2,1,1,'5000','This is testing proposal to Store id 1',3,'2017-02-13 07:10:54','2017-02-13 07:10:54'),(3,2,1,'4999','Testing employment 2',1,'2017-02-14 14:57:52','2017-02-19 07:06:16');
/*!40000 ALTER TABLE `store_proposals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_sale_products`
--

DROP TABLE IF EXISTS `store_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_sale_products` (
  `ssp_id` int(10) unsigned NOT NULL auto_increment,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`ssp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_sale_products`
--

LOCK TABLES `store_sale_products` WRITE;
/*!40000 ALTER TABLE `store_sale_products` DISABLE KEYS */;
INSERT INTO `store_sale_products` VALUES (25,6,234,'2017-04-02 21:01:46','2017-04-02 21:01:46'),(24,6,220,'2017-04-02 21:00:13','2017-04-02 21:00:13'),(23,6,228,'2017-04-02 21:00:08','2017-04-02 21:00:08'),(22,6,232,'2017-04-02 21:00:03','2017-04-02 21:00:03'),(21,6,233,'2017-04-02 21:00:00','2017-04-02 21:00:00');
/*!40000 ALTER TABLE `store_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_sales`
--

DROP TABLE IF EXISTS `store_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_sales` (
  `sale_id` int(10) unsigned NOT NULL auto_increment,
  `store_id` int(11) NOT NULL,
  `sale_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `sale_tagline` varchar(255) collate utf8_unicode_ci NOT NULL,
  `start_date` varchar(255) collate utf8_unicode_ci NOT NULL,
  `end_date` varchar(255) collate utf8_unicode_ci NOT NULL,
  `sale_slug` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  `status` varchar(255) collate utf8_unicode_ci default 'Inactive',
  `discount` varchar(255) collate utf8_unicode_ci default '0',
  PRIMARY KEY  (`sale_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_sales`
--

LOCK TABLES `store_sales` WRITE;
/*!40000 ALTER TABLE `store_sales` DISABLE KEYS */;
INSERT INTO `store_sales` VALUES (6,1,'Testing Sale of Store 1','check functionality of Testing sale of Store 1','2017-4-2 12:00:00','2017-4-4 12:00:00','testing-sale-of-store-1','2017-04-02 20:54:58','2017-04-02 21:06:00','1','50');
/*!40000 ALTER TABLE `store_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_social_medias`
--

DROP TABLE IF EXISTS `store_social_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_social_medias` (
  `ssm_id` int(10) unsigned NOT NULL auto_increment,
  `store_id` int(11) NOT NULL,
  `facebook` varchar(255) collate utf8_unicode_ci NOT NULL,
  `google_plus` varchar(255) collate utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`ssm_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_social_medias`
--

LOCK TABLES `store_social_medias` WRITE;
/*!40000 ALTER TABLE `store_social_medias` DISABLE KEYS */;
INSERT INTO `store_social_medias` VALUES (1,1,'alex_shifu_ali','alex_shifu_ali','alex_shifu',NULL,'2017-04-15 04:46:34');
/*!40000 ALTER TABLE `store_social_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_styles`
--

DROP TABLE IF EXISTS `store_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_styles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `store_id` int(11) NOT NULL,
  `anchor_color` varchar(255) collate utf8_unicode_ci NOT NULL default '#0000ff',
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `store_styles_store_id_unique` (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_styles`
--

LOCK TABLES `store_styles` WRITE;
/*!40000 ALTER TABLE `store_styles` DISABLE KEYS */;
INSERT INTO `store_styles` VALUES (1,1,'#0000ff','2017-01-29 07:56:45','2017-01-29 07:56:45'),(2,2,'#0000ff','2017-01-29 08:02:27','2017-01-29 08:02:27'),(3,3,'#0000ff','2017-01-29 08:02:54','2017-01-29 08:02:54');
/*!40000 ALTER TABLE `store_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_user_conversation_messages`
--

DROP TABLE IF EXISTS `store_user_conversation_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_user_conversation_messages` (
  `sucm_id` int(10) unsigned NOT NULL auto_increment,
  `sucm_message` varchar(255) collate utf8_unicode_ci NOT NULL,
  `sucm_type` tinyint(4) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `seen` tinyint(4) NOT NULL default '0',
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`sucm_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_user_conversation_messages`
--

LOCK TABLES `store_user_conversation_messages` WRITE;
/*!40000 ALTER TABLE `store_user_conversation_messages` DISABLE KEYS */;
INSERT INTO `store_user_conversation_messages` VALUES (1,'This is tesing conversation 1',2,3,1,'2017-04-21 04:38:07','2017-04-21 19:51:39'),(2,'This is tesing conversation 1 reply',1,3,1,'2017-04-21 04:38:07','2017-04-21 19:51:39'),(3,'this is another testing conversation message',2,4,1,'2017-04-21 20:25:48','2017-04-21 20:25:48'),(4,'asfsdgfsdb dgb dgfh df df df fgdfr',1,5,1,'2017-04-21 20:33:56','2017-04-22 10:07:39'),(5,'asdsadasdasdasfdds sdf da',2,6,1,'2017-04-21 20:37:04','2017-04-22 16:27:53'),(6,'Reply one two threee',2,6,1,'2017-04-22 08:54:58','2017-04-22 16:27:53'),(7,'checekcf ldemvf erwvf',2,6,1,'2017-04-22 08:55:53','2017-04-22 16:27:53'),(8,'adgfdvsvsf',2,6,1,'2017-04-22 08:57:11','2017-04-22 16:27:53'),(9,'bdfbdfb fdb dfb',2,6,1,'2017-04-22 08:57:20','2017-04-22 16:27:53'),(10,'sfdbfdb gfd dgdb dgg',1,6,1,'2017-04-22 09:00:08','2017-04-22 10:07:41'),(11,'n bvfb fhgnmfhgmfh mfgh',1,6,1,'2017-04-22 09:01:15','2017-04-22 10:07:41'),(12,'kjmgfhjmhgmghmhgm',1,6,1,'2017-04-22 09:01:24','2017-04-22 10:07:41'),(13,'Yo yo yo yo yo y',2,7,1,'2017-04-22 16:48:47','2017-04-22 16:27:57'),(14,'l,ikl,ikju,ikjh.kjl.lj.jl/.lkj/;po ',1,7,1,'2017-04-22 10:02:25','2017-04-22 10:07:43'),(15,'Hello my dear How are you',2,7,1,'2017-04-22 16:31:10','2017-04-22 16:34:05'),(16,'Fine and you',1,7,1,'2017-04-22 16:38:15','2017-04-22 16:38:39'),(17,'Fine and you',1,7,1,'2017-04-22 16:38:35','2017-04-22 16:38:39'),(18,'Fine and you 3',1,7,1,'2017-04-22 16:38:58','2017-04-22 16:39:02'),(19,'Hello',1,7,1,'2017-04-22 16:40:43','2017-04-22 16:40:44'),(20,'No reply',1,7,1,'2017-04-22 16:42:25','2017-04-22 16:47:19'),(21,'Hey',1,7,1,'2017-04-22 16:42:58','2017-04-22 16:47:19'),(22,'All fine just busy with orders',2,7,1,'2017-04-22 16:48:47','2017-04-22 16:49:02'),(23,'All fine',1,7,1,'2017-04-22 16:56:05','2017-04-22 16:56:14'),(24,'Yeah all fine',2,7,1,'2017-04-22 16:56:25','2017-04-22 16:56:35'),(25,'This is new conversation to test log',2,9,0,'2017-04-23 14:21:34','2017-04-23 14:21:34'),(26,'This is new conversation to test log',2,10,0,'2017-04-23 14:21:59','2017-04-23 14:21:59'),(27,'hEY i AM ETTING LOGS',2,11,1,'2017-04-23 15:36:20','2017-04-23 17:10:18'),(28,'Yes yes test logs',1,11,1,'2017-04-23 17:10:32','2017-04-23 17:12:10');
/*!40000 ALTER TABLE `store_user_conversation_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_user_conversations`
--

DROP TABLE IF EXISTS `store_user_conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_user_conversations` (
  `suc_id` int(10) unsigned NOT NULL auto_increment,
  `suc_title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `suc_from` int(11) NOT NULL,
  `suc_to` int(11) NOT NULL,
  `suc_keep_alive` tinyint(4) NOT NULL default '1',
  `seen` tinyint(4) NOT NULL default '0',
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  `starter` int(11) default NULL,
  PRIMARY KEY  (`suc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_user_conversations`
--

LOCK TABLES `store_user_conversations` WRITE;
/*!40000 ALTER TABLE `store_user_conversations` DISABLE KEYS */;
INSERT INTO `store_user_conversations` VALUES (1,'Testing Conversation 1',1,2,0,1,'2017-04-21 13:54:15','2017-04-22 16:28:32',1),(2,'Testing Conversation 1',1,2,0,1,'2017-04-21 09:34:59','2017-04-22 16:28:35',1),(3,'Testing Conversation 1',1,2,1,1,'2017-04-21 09:38:07','2017-04-22 16:27:43',1),(4,'Tesing Conversation 4',1,2,0,1,'2017-04-21 20:25:48','2017-04-23 09:30:02',1),(5,'Tesing Conversation 5',1,2,0,1,'2017-04-21 20:33:56','2017-04-23 12:24:33',1),(6,'Tesing Conversation 5',1,2,0,1,'2017-04-21 20:37:04','2017-04-26 16:52:14',1),(7,'Testing convo 6',1,2,0,1,'2017-04-22 10:02:25','2017-04-23 15:15:21',1),(8,'yuikuuhklkhlkj',2,2,1,1,'2017-04-22 10:02:25','2017-04-22 16:28:49',1),(9,'Hey hey Tesing Cono',1,2,0,0,'2017-04-23 14:21:34','2017-04-26 16:51:06',1),(10,'Hey hey Tesing Cono',1,2,0,0,'2017-04-23 14:21:59','2017-04-23 14:22:38',1),(11,'Another conversation',1,2,0,1,'2017-04-23 15:36:20','2017-04-26 16:50:48',1);
/*!40000 ALTER TABLE `store_user_conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_user_messages`
--

DROP TABLE IF EXISTS `store_user_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_user_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_type` int(11) NOT NULL,
  `message_to` int(11) NOT NULL,
  `message_title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `message_text` varchar(255) collate utf8_unicode_ci NOT NULL,
  `seen` tinyint(4) NOT NULL default '0',
  `message_after` int(11) NOT NULL,
  `message_type` tinyint(4) NOT NULL,
  `message_from` int(11) NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_user_messages`
--

LOCK TABLES `store_user_messages` WRITE;
/*!40000 ALTER TABLE `store_user_messages` DISABLE KEYS */;
INSERT INTO `store_user_messages` VALUES (1,1,1,'Notification','You have started ocnvor',1,0,2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,1,1,'Hey','where are you',0,1,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,2,1,'Hey','I am fine, you?',0,2,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,1,1,'Hey','Coming to office',0,3,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,1,1,'Hi','Nah I am not coming sorry',0,4,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `store_user_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stores` (
  `store_id` int(10) unsigned NOT NULL auto_increment,
  `store_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `store_username` varchar(255) collate utf8_unicode_ci NOT NULL,
  `store_email` varchar(255) collate utf8_unicode_ci NOT NULL,
  `slug` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  `store_category` int(11) default NULL,
  `password` varchar(255) collate utf8_unicode_ci default NULL,
  `secret_code` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`store_id`),
  UNIQUE KEY `stores_store_name_unique` (`store_name`),
  UNIQUE KEY `stores_store_username_unique` (`store_username`),
  UNIQUE KEY `stores_store_email_unique` (`store_email`),
  FULLTEXT KEY `store_name` (`store_name`),
  FULLTEXT KEY `search` (`store_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'Ali Store Reborn','ali_store','alistore@hotmail.com','ali-store-reborn','2017-01-29 07:56:44','2017-02-12 08:42:33',2,NULL,NULL),(2,'Ali Store 2','ali2','ali2nd@hotmail.com','ali-store-2','2017-01-29 08:02:26','2017-01-29 08:02:26',NULL,NULL,NULL),(3,'Ali Store 3','ali3','ali3d@hotmail.com','ali-store-3','2017-01-29 08:02:53','2017-01-29 08:02:53',NULL,NULL,NULL);
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_addresses`
--

DROP TABLE IF EXISTS `user_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_addresses` (
  `ua_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `house_no` varchar(255) collate utf8_unicode_ci NOT NULL,
  `street` varchar(255) collate utf8_unicode_ci NOT NULL,
  `area` varchar(255) collate utf8_unicode_ci NOT NULL,
  `city` varchar(255) collate utf8_unicode_ci NOT NULL,
  `state` varchar(255) collate utf8_unicode_ci NOT NULL,
  `postal` int(11) NOT NULL,
  `phone` varchar(255) collate utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) collate utf8_unicode_ci NOT NULL,
  `mobile_2` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`ua_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_addresses`
--

LOCK TABLES `user_addresses` WRITE;
/*!40000 ALTER TABLE `user_addresses` DISABLE KEYS */;
INSERT INTO `user_addresses` VALUES (1,1,'64','C-1','Cantt Bazaar, Malir Cantt','Karachi','Sindh',74050,'021-34902446','03323818063','',NULL,'2017-03-08 08:16:55'),(2,7,'','','','','',0,'','','','2017-03-08 07:53:03','2017-03-08 07:53:03'),(3,8,'','','','','',0,'','','','2017-04-28 09:52:26','2017-04-28 09:52:26');
/*!40000 ALTER TABLE `user_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `dob` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_details_user_id_unique` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (1,1,'1994-11-16','2017-01-29 07:56:26','2017-01-29 07:56:26'),(2,7,'','2017-03-08 07:53:03','2017-03-08 07:53:03'),(3,8,'','2017-04-28 09:52:26','2017-04-28 09:52:26');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `email` varchar(255) collate utf8_unicode_ci NOT NULL,
  `password` varchar(255) collate utf8_unicode_ci NOT NULL,
  `username` varchar(255) collate utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) collate utf8_unicode_ci default NULL,
  `created_at` timestamp NULL default NULL,
  `updated_at` timestamp NULL default NULL,
  `picture` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ali Rasheed','arshaikh_17@hotmail.com','$2y$10$fknntjGLWonrPU/XvXIPxOEKgxdRGA.3LqD6OBsdf7WIOnVLFXiK2','ali_rasheed','41CIam9YFXlEgMShkyg5k0RXRe6sIlcSmCiLwv2XXTZ3B5zRQQ6pSRiy3RZB','2017-01-29 07:56:26','2017-01-29 07:56:26','16729202_1026431377489759_391335073722629085_n.jpg'),(2,'Alex Shifu','alex_shifu@hotmail.com','$2y$10$fknntjGLWonrPU/XvXIPxOEKgxdRGA.3LqD6OBsdf7WIOnVLFXiK2','alex_shifu','qVGj5Ubcp7wVgzvL7ibC4G8NnFAJ5gYPIXLfADWtI2PjUNehTowdsXjBMpzY','2017-02-14 14:51:31','2017-02-14 14:51:31',NULL),(3,'Ali Rasheed','arshaikh_17@hotmail.co','$2y$10$fknntjGLWonrPU/XvXIPxOEKgxdRGA.3LqD6OBsdf7WIOnVLFXiK2','ali_bhai',NULL,'2017-02-18 04:54:24','2017-02-18 04:54:24',NULL),(4,'Aay Bee Cee','abc@abc.com','$2y$10$8nR0KGmTLHYDdATJ./z0sOu271G1J09XognBLbzx4jpRFDX.w2Qga','abc','ZROJMMuITQPwxbUAh9nE5KAaBmwPgLsvJQfXeSSOemP2BfdzPdY5qRs7tiqE','2017-03-08 07:48:38','2017-03-08 07:48:38',NULL),(5,'Cee Bee Aay','cba@cba.com','$2y$10$HbkL.t/EQpsahjH8uXhY/.g5sxGMsbMXF/cL8yVynO//4ueaT/A8G','cba',NULL,'2017-03-08 07:51:05','2017-03-08 07:51:05',NULL),(6,'Aay Aay Aay','aaa@hotmail.com','$2y$10$JtmN5HMmor.6wmh.EuFcSegPfaqL6DrG0cDQ6DVcOTB1pOVUFf5DS','aaa',NULL,'2017-03-08 07:51:40','2017-03-08 07:51:40',NULL),(7,'Aay Aay Aay','aaaa@hotmail.com','$2y$10$ElLd8XMr6ejOs/ce7Wfy9u5V4aKhJwU0eOd6bJOtvbhzUEsEfqDE2','aaaa','6noT8AJSHYcv0EJcuycW8FYpEjG53WuV8XWty6x90z0Y8KK2dHJOVSj6HZF6','2017-03-08 07:53:03','2017-03-08 07:53:03',NULL),(8,'Abc One Two Three','abc@onetwothree.com','$2y$10$NWccFDm1Y9S4KLulE4KeLua2/9VdRRlzQbI5JvHygzSVwHwNCPduS','abc123','2fDYDhEv61HPX2GvE8iHWc8pyZVspBquVXpyiMHJpcHj7M7xYE392Q365wnM','2017-04-28 09:52:26','2017-04-28 09:52:26',NULL);
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

-- Dump completed on 2017-04-30  9:29:44
