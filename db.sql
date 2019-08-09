-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: symfony2test
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (13,'2019-07-12 15:48:16','David','2019-07-12 15:48:16','david'),(14,'2019-07-12 15:48:16','Eddie','2019-07-12 15:48:16','eddie'),(15,'2019-07-12 15:48:16','Elsa','2019-07-12 15:48:16','elsa');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `authorName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526C4B89032C` (`post_id`),
  CONSTRAINT `FK_9474526C4B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,13,'2019-07-12 15:48:16','2019-07-12 15:48:16','Someone','Integer eu libero nisl. Nunc consequat mauris magna, in consectetur nibh congue non. Curabitur purus tellus, sagittis ut tincidunt non, pharetra in erat.'),(2,14,'2019-07-12 15:48:16','2019-07-12 15:48:16','Someone','Sed porttitor metus sed nunc tempor imperdiet. Integer mattis scelerisque odio.'),(3,15,'2019-07-12 15:48:16','2019-07-12 15:48:16','Someone','Nulla non erat eu neque imperdiet sollicitudin eget sit amet turpis.'),(4,13,'2019-07-12 17:17:26','2019-07-12 17:17:26','Péter','Lorem ipsum dolor');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_versions`
--

LOCK TABLES `migration_versions` WRITE;
/*!40000 ALTER TABLE `migration_versions` DISABLE KEYS */;
INSERT INTO `migration_versions` VALUES ('20190625163505'),('20190712112033'),('20190712113556'),('20190712143330'),('20190712153952');
/*!40000 ALTER TABLE `migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5A8A6C8DF675F31B` (`author_id`),
  CONSTRAINT `FK_5A8A6C8DF675F31B` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (13,13,'2019-07-12 15:48:16','Lorem ipsum dolor sit amet','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus lorem sit amet nibh viverra egestas. Duis dictum lacinia orci, sit amet pretium augue ullamcorper et. Ut congue mi lectus, et consectetur arcu mattis ac. Vivamus nibh ipsum, facilisis vitae quam at, maximus eleifend nisi. Vestibulum aliquam, lorem eget placerat sagittis, sapien purus molestie eros, non facilisis ex elit nec justo. Pellentesque porttitor tellus nec velit consectetur commodo. Pellentesque tempus volutpat elit, sed consequat lacus posuere vel. Nullam a magna sapien. Vivamus dapibus sagittis ullamcorper. Cras sed lorem aliquet, consectetur lacus non, accumsan tortor. In vel mollis risus, in rhoncus ex. Suspendisse potenti.\n\nDonec massa enim, mollis iaculis risus eget, pretium tincidunt purus. Morbi at velit vitae tellus consectetur mollis ultricies iaculis dui. Nam dapibus lobortis viverra. Morbi scelerisque risus ut quam tincidunt iaculis. Pellentesque augue diam, dapibus eu est a, aliquam volutpat urna. Maecenas a dolor vulputate lectus viverra facilisis. Sed euismod iaculis orci, scelerisque sagittis ipsum interdum ac. Curabitur ultrices massa ullamcorper nisl iaculis, pharetra varius metus dictum. Cras leo odio, rhoncus nec erat at, convallis suscipit enim. Donec et arcu auctor, hendrerit lacus id, congue purus.\n\nProin sed venenatis odio. Ut lobortis, risus ac scelerisque rhoncus, metus elit vehicula augue, ut placerat augue massa eget magna. Maecenas luctus at leo ultricies rhoncus. Suspendisse nisi nulla, commodo aliquam varius eget, ultrices a tortor. In laoreet arcu id felis porta condimentum. Vivamus fringilla neque nec ipsum luctus, in faucibus felis faucibus. Donec luctus feugiat massa et iaculis. Vestibulum pulvinar massa eros, ut cursus massa placerat sit amet. Suspendisse vitae mi id urna blandit consequat quis eu nulla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In malesuada porta arcu, et tempor arcu rhoncus ut. Vivamus sed vehicula eros.\n\nDonec euismod, erat vitae facilisis tincidunt, sem massa molestie est, a accumsan elit diam at nibh. Donec feugiat nec risus in semper. Sed pharetra maximus dolor, vitae consectetur metus ultricies vitae. Nam accumsan tellus non aliquam hendrerit. Nullam tincidunt blandit sollicitudin. Duis sollicitudin vulputate quam a luctus. In vehicula ex eget justo vestibulum dictum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur semper tortor id quam mollis, vestibulum placerat dui convallis. Nullam pretium enim ornare nunc condimentum, non porta erat viverra. Praesent ut elit est. Quisque posuere urna eu sem efficitur mollis. Donec sed libero sit amet velit porta pretium. Vivamus sit amet turpis quis velit imperdiet efficitur ut sit amet magna.','lorem-ipsum-dolor-sit-amet','2019-07-12 15:48:16'),(14,14,'2019-07-12 15:48:16','Maecenas luctus at leo ultricies rhoncus','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus lorem sit amet nibh viverra egestas. Duis dictum lacinia orci, sit amet pretium augue ullamcorper et. Ut congue mi lectus, et consectetur arcu mattis ac. Vivamus nibh ipsum, facilisis vitae quam at, maximus eleifend nisi. Vestibulum aliquam, lorem eget placerat sagittis, sapien purus molestie eros, non facilisis ex elit nec justo. Pellentesque porttitor tellus nec velit consectetur commodo. Pellentesque tempus volutpat elit, sed consequat lacus posuere vel. Nullam a magna sapien. Vivamus dapibus sagittis ullamcorper. Cras sed lorem aliquet, consectetur lacus non, accumsan tortor. In vel mollis risus, in rhoncus ex. Suspendisse potenti.\n\nDonec massa enim, mollis iaculis risus eget, pretium tincidunt purus. Morbi at velit vitae tellus consectetur mollis ultricies iaculis dui. Nam dapibus lobortis viverra. Morbi scelerisque risus ut quam tincidunt iaculis. Pellentesque augue diam, dapibus eu est a, aliquam volutpat urna. Maecenas a dolor vulputate lectus viverra facilisis. Sed euismod iaculis orci, scelerisque sagittis ipsum interdum ac. Curabitur ultrices massa ullamcorper nisl iaculis, pharetra varius metus dictum. Cras leo odio, rhoncus nec erat at, convallis suscipit enim. Donec et arcu auctor, hendrerit lacus id, congue purus.\n\nProin sed venenatis odio. Ut lobortis, risus ac scelerisque rhoncus, metus elit vehicula augue, ut placerat augue massa eget magna. Maecenas luctus at leo ultricies rhoncus. Suspendisse nisi nulla, commodo aliquam varius eget, ultrices a tortor. In laoreet arcu id felis porta condimentum. Vivamus fringilla neque nec ipsum luctus, in faucibus felis faucibus. Donec luctus feugiat massa et iaculis. Vestibulum pulvinar massa eros, ut cursus massa placerat sit amet. Suspendisse vitae mi id urna blandit consequat quis eu nulla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In malesuada porta arcu, et tempor arcu rhoncus ut. Vivamus sed vehicula eros.\n\nDonec euismod, erat vitae facilisis tincidunt, sem massa molestie est, a accumsan elit diam at nibh. Donec feugiat nec risus in semper. Sed pharetra maximus dolor, vitae consectetur metus ultricies vitae. Nam accumsan tellus non aliquam hendrerit. Nullam tincidunt blandit sollicitudin. Duis sollicitudin vulputate quam a luctus. In vehicula ex eget justo vestibulum dictum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur semper tortor id quam mollis, vestibulum placerat dui convallis. Nullam pretium enim ornare nunc condimentum, non porta erat viverra. Praesent ut elit est. Quisque posuere urna eu sem efficitur mollis. Donec sed libero sit amet velit porta pretium. Vivamus sit amet turpis quis velit imperdiet efficitur ut sit amet magna.','maecenas-luctus-at-leo-ultricies-rhoncus','2019-07-12 15:48:16'),(15,15,'2019-07-12 15:48:16','Donec luctus lorem sit amet nibh viverra egestas','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus lorem sit amet nibh viverra egestas. Duis dictum lacinia orci, sit amet pretium augue ullamcorper et. Ut congue mi lectus, et consectetur arcu mattis ac. Vivamus nibh ipsum, facilisis vitae quam at, maximus eleifend nisi. Vestibulum aliquam, lorem eget placerat sagittis, sapien purus molestie eros, non facilisis ex elit nec justo. Pellentesque porttitor tellus nec velit consectetur commodo. Pellentesque tempus volutpat elit, sed consequat lacus posuere vel. Nullam a magna sapien. Vivamus dapibus sagittis ullamcorper. Cras sed lorem aliquet, consectetur lacus non, accumsan tortor. In vel mollis risus, in rhoncus ex. Suspendisse potenti.\n\nDonec massa enim, mollis iaculis risus eget, pretium tincidunt purus. Morbi at velit vitae tellus consectetur mollis ultricies iaculis dui. Nam dapibus lobortis viverra. Morbi scelerisque risus ut quam tincidunt iaculis. Pellentesque augue diam, dapibus eu est a, aliquam volutpat urna. Maecenas a dolor vulputate lectus viverra facilisis. Sed euismod iaculis orci, scelerisque sagittis ipsum interdum ac. Curabitur ultrices massa ullamcorper nisl iaculis, pharetra varius metus dictum. Cras leo odio, rhoncus nec erat at, convallis suscipit enim. Donec et arcu auctor, hendrerit lacus id, congue purus.\n\nProin sed venenatis odio. Ut lobortis, risus ac scelerisque rhoncus, metus elit vehicula augue, ut placerat augue massa eget magna. Maecenas luctus at leo ultricies rhoncus. Suspendisse nisi nulla, commodo aliquam varius eget, ultrices a tortor. In laoreet arcu id felis porta condimentum. Vivamus fringilla neque nec ipsum luctus, in faucibus felis faucibus. Donec luctus feugiat massa et iaculis. Vestibulum pulvinar massa eros, ut cursus massa placerat sit amet. Suspendisse vitae mi id urna blandit consequat quis eu nulla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In malesuada porta arcu, et tempor arcu rhoncus ut. Vivamus sed vehicula eros.\n\nDonec euismod, erat vitae facilisis tincidunt, sem massa molestie est, a accumsan elit diam at nibh. Donec feugiat nec risus in semper. Sed pharetra maximus dolor, vitae consectetur metus ultricies vitae. Nam accumsan tellus non aliquam hendrerit. Nullam tincidunt blandit sollicitudin. Duis sollicitudin vulputate quam a luctus. In vehicula ex eget justo vestibulum dictum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur semper tortor id quam mollis, vestibulum placerat dui convallis. Nullam pretium enim ornare nunc condimentum, non porta erat viverra. Praesent ut elit est. Quisque posuere urna eu sem efficitur mollis. Donec sed libero sit amet velit porta pretium. Vivamus sit amet turpis quis velit imperdiet efficitur ut sit amet magna.','donec-luctus-lorem-sit-amet-nibh-viverra-egestas','2019-07-12 15:48:16');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tag`
--

DROP TABLE IF EXISTS `post_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tag` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`,`tag_id`),
  KEY `IDX_5ACE3AF04B89032C` (`post_id`),
  KEY `IDX_5ACE3AF0BAD26311` (`tag_id`),
  CONSTRAINT `FK_5ACE3AF04B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5ACE3AF0BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tag`
--

LOCK TABLES `post_tag` WRITE;
/*!40000 ALTER TABLE `post_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-09  8:49:16
