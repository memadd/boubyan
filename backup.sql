-- MariaDB dump 10.19  Distrib 10.6.5-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: boubyan
-- ------------------------------------------------------
-- Server version	10.6.5-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can use Structure mode',1,'use_structure'),(2,'Can change page',2,'change_page'),(3,'Can add permission',3,'add_permission'),(4,'Can change permission',3,'change_permission'),(5,'Can delete permission',3,'delete_permission'),(6,'Can view permission',3,'view_permission'),(7,'Can add group',4,'add_group'),(8,'Can change group',4,'change_group'),(9,'Can delete group',4,'delete_group'),(10,'Can view group',4,'view_group'),(11,'Can add user',5,'add_user'),(12,'Can change user',5,'change_user'),(13,'Can delete user',5,'delete_user'),(14,'Can view user',5,'view_user'),(15,'Can add content type',6,'add_contenttype'),(16,'Can change content type',6,'change_contenttype'),(17,'Can delete content type',6,'delete_contenttype'),(18,'Can view content type',6,'view_contenttype'),(19,'Can add session',7,'add_session'),(20,'Can change session',7,'change_session'),(21,'Can delete session',7,'delete_session'),(22,'Can view session',7,'view_session'),(23,'Can add log entry',8,'add_logentry'),(24,'Can change log entry',8,'change_logentry'),(25,'Can delete log entry',8,'delete_logentry'),(26,'Can view log entry',8,'view_logentry'),(27,'Can add site',9,'add_site'),(28,'Can change site',9,'change_site'),(29,'Can delete site',9,'delete_site'),(30,'Can view site',9,'view_site'),(31,'Can add cms plugin',10,'add_cmsplugin'),(32,'Can change cms plugin',10,'change_cmsplugin'),(33,'Can delete cms plugin',10,'delete_cmsplugin'),(34,'Can view cms plugin',10,'view_cmsplugin'),(35,'Can add alias plugin model',11,'add_aliaspluginmodel'),(36,'Can change alias plugin model',11,'change_aliaspluginmodel'),(37,'Can delete alias plugin model',11,'delete_aliaspluginmodel'),(38,'Can view alias plugin model',11,'view_aliaspluginmodel'),(39,'Can add Page global permission',12,'add_globalpagepermission'),(40,'Can change Page global permission',12,'change_globalpagepermission'),(41,'Can delete Page global permission',12,'delete_globalpagepermission'),(42,'Can view Page global permission',12,'view_globalpagepermission'),(43,'Can add page',2,'add_page'),(44,'Can delete page',2,'delete_page'),(45,'Can view page',2,'view_page'),(46,'Can publish page',2,'publish_page'),(47,'Can edit static placeholders',2,'edit_static_placeholder'),(48,'Can add Page permission',13,'add_pagepermission'),(49,'Can change Page permission',13,'change_pagepermission'),(50,'Can delete Page permission',13,'delete_pagepermission'),(51,'Can view Page permission',13,'view_pagepermission'),(52,'Can add User (page)',14,'add_pageuser'),(53,'Can change User (page)',14,'change_pageuser'),(54,'Can delete User (page)',14,'delete_pageuser'),(55,'Can view User (page)',14,'view_pageuser'),(56,'Can add User group (page)',15,'add_pageusergroup'),(57,'Can change User group (page)',15,'change_pageusergroup'),(58,'Can delete User group (page)',15,'delete_pageusergroup'),(59,'Can view User group (page)',15,'view_pageusergroup'),(60,'Can add placeholder',1,'add_placeholder'),(61,'Can change placeholder',1,'change_placeholder'),(62,'Can delete placeholder',1,'delete_placeholder'),(63,'Can view placeholder',1,'view_placeholder'),(64,'Can add placeholder reference',16,'add_placeholderreference'),(65,'Can change placeholder reference',16,'change_placeholderreference'),(66,'Can delete placeholder reference',16,'delete_placeholderreference'),(67,'Can view placeholder reference',16,'view_placeholderreference'),(68,'Can add static placeholder',17,'add_staticplaceholder'),(69,'Can change static placeholder',17,'change_staticplaceholder'),(70,'Can delete static placeholder',17,'delete_staticplaceholder'),(71,'Can view static placeholder',17,'view_staticplaceholder'),(72,'Can add title',18,'add_title'),(73,'Can change title',18,'change_title'),(74,'Can delete title',18,'delete_title'),(75,'Can view title',18,'view_title'),(76,'Can add user setting',19,'add_usersettings'),(77,'Can change user setting',19,'change_usersettings'),(78,'Can delete user setting',19,'delete_usersettings'),(79,'Can view user setting',19,'view_usersettings'),(80,'Can add urlconf revision',20,'add_urlconfrevision'),(81,'Can change urlconf revision',20,'change_urlconfrevision'),(82,'Can delete urlconf revision',20,'delete_urlconfrevision'),(83,'Can view urlconf revision',20,'view_urlconfrevision'),(84,'Can add cache key',23,'add_cachekey'),(85,'Can change cache key',23,'change_cachekey'),(86,'Can delete cache key',23,'delete_cachekey'),(87,'Can view cache key',23,'view_cachekey'),(88,'Can add text',24,'add_text'),(89,'Can change text',24,'change_text'),(90,'Can delete text',24,'delete_text'),(91,'Can view text',24,'view_text'),(92,'Can add clipboard',25,'add_clipboard'),(93,'Can change clipboard',25,'change_clipboard'),(94,'Can delete clipboard',25,'delete_clipboard'),(95,'Can view clipboard',25,'view_clipboard'),(96,'Can add clipboard item',26,'add_clipboarditem'),(97,'Can change clipboard item',26,'change_clipboarditem'),(98,'Can delete clipboard item',26,'delete_clipboarditem'),(99,'Can view clipboard item',26,'view_clipboarditem'),(100,'Can add file',27,'add_file'),(101,'Can change file',27,'change_file'),(102,'Can delete file',27,'delete_file'),(103,'Can view file',27,'view_file'),(104,'Can add Folder',28,'add_folder'),(105,'Can change Folder',28,'change_folder'),(106,'Can delete Folder',28,'delete_folder'),(107,'Can view Folder',28,'view_folder'),(108,'Can use directory listing',28,'can_use_directory_listing'),(109,'Can add folder permission',29,'add_folderpermission'),(110,'Can change folder permission',29,'change_folderpermission'),(111,'Can delete folder permission',29,'delete_folderpermission'),(112,'Can view folder permission',29,'view_folderpermission'),(113,'Can add image',30,'add_image'),(114,'Can change image',30,'change_image'),(115,'Can delete image',30,'delete_image'),(116,'Can view image',30,'view_image'),(117,'Can add thumbnail option',31,'add_thumbnailoption'),(118,'Can change thumbnail option',31,'change_thumbnailoption'),(119,'Can delete thumbnail option',31,'delete_thumbnailoption'),(120,'Can view thumbnail option',31,'view_thumbnailoption'),(121,'Can add source',32,'add_source'),(122,'Can change source',32,'change_source'),(123,'Can delete source',32,'delete_source'),(124,'Can view source',32,'view_source'),(125,'Can add thumbnail',33,'add_thumbnail'),(126,'Can change thumbnail',33,'change_thumbnail'),(127,'Can delete thumbnail',33,'delete_thumbnail'),(128,'Can view thumbnail',33,'view_thumbnail'),(129,'Can add thumbnail dimensions',34,'add_thumbnaildimensions'),(130,'Can change thumbnail dimensions',34,'change_thumbnaildimensions'),(131,'Can delete thumbnail dimensions',34,'delete_thumbnaildimensions'),(132,'Can view thumbnail dimensions',34,'view_thumbnaildimensions'),(133,'Can add bootstrap4 alerts',35,'add_bootstrap4alerts'),(134,'Can change bootstrap4 alerts',35,'change_bootstrap4alerts'),(135,'Can delete bootstrap4 alerts',35,'delete_bootstrap4alerts'),(136,'Can view bootstrap4 alerts',35,'view_bootstrap4alerts'),(137,'Can add bootstrap4 badge',36,'add_bootstrap4badge'),(138,'Can change bootstrap4 badge',36,'change_bootstrap4badge'),(139,'Can delete bootstrap4 badge',36,'delete_bootstrap4badge'),(140,'Can view bootstrap4 badge',36,'view_bootstrap4badge'),(141,'Can add bootstrap4 card',37,'add_bootstrap4card'),(142,'Can change bootstrap4 card',37,'change_bootstrap4card'),(143,'Can delete bootstrap4 card',37,'delete_bootstrap4card'),(144,'Can view bootstrap4 card',37,'view_bootstrap4card'),(145,'Can add bootstrap4 card inner',38,'add_bootstrap4cardinner'),(146,'Can change bootstrap4 card inner',38,'change_bootstrap4cardinner'),(147,'Can delete bootstrap4 card inner',38,'delete_bootstrap4cardinner'),(148,'Can view bootstrap4 card inner',38,'view_bootstrap4cardinner'),(149,'Can add bootstrap4 carousel',39,'add_bootstrap4carousel'),(150,'Can change bootstrap4 carousel',39,'change_bootstrap4carousel'),(151,'Can delete bootstrap4 carousel',39,'delete_bootstrap4carousel'),(152,'Can view bootstrap4 carousel',39,'view_bootstrap4carousel'),(153,'Can add bootstrap4 carousel slide',40,'add_bootstrap4carouselslide'),(154,'Can change bootstrap4 carousel slide',40,'change_bootstrap4carouselslide'),(155,'Can delete bootstrap4 carousel slide',40,'delete_bootstrap4carouselslide'),(156,'Can view bootstrap4 carousel slide',40,'view_bootstrap4carouselslide'),(157,'Can add bootstrap4 collapse',41,'add_bootstrap4collapse'),(158,'Can change bootstrap4 collapse',41,'change_bootstrap4collapse'),(159,'Can delete bootstrap4 collapse',41,'delete_bootstrap4collapse'),(160,'Can view bootstrap4 collapse',41,'view_bootstrap4collapse'),(161,'Can add bootstrap4 collapse container',42,'add_bootstrap4collapsecontainer'),(162,'Can change bootstrap4 collapse container',42,'change_bootstrap4collapsecontainer'),(163,'Can delete bootstrap4 collapse container',42,'delete_bootstrap4collapsecontainer'),(164,'Can view bootstrap4 collapse container',42,'view_bootstrap4collapsecontainer'),(165,'Can add bootstrap4 collapse trigger',43,'add_bootstrap4collapsetrigger'),(166,'Can change bootstrap4 collapse trigger',43,'change_bootstrap4collapsetrigger'),(167,'Can delete bootstrap4 collapse trigger',43,'delete_bootstrap4collapsetrigger'),(168,'Can view bootstrap4 collapse trigger',43,'view_bootstrap4collapsetrigger'),(169,'Can add bootstrap4 blockquote',44,'add_bootstrap4blockquote'),(170,'Can change bootstrap4 blockquote',44,'change_bootstrap4blockquote'),(171,'Can delete bootstrap4 blockquote',44,'delete_bootstrap4blockquote'),(172,'Can view bootstrap4 blockquote',44,'view_bootstrap4blockquote'),(173,'Can add bootstrap4 code',45,'add_bootstrap4code'),(174,'Can change bootstrap4 code',45,'change_bootstrap4code'),(175,'Can delete bootstrap4 code',45,'delete_bootstrap4code'),(176,'Can view bootstrap4 code',45,'view_bootstrap4code'),(177,'Can add bootstrap4 figure',46,'add_bootstrap4figure'),(178,'Can change bootstrap4 figure',46,'change_bootstrap4figure'),(179,'Can delete bootstrap4 figure',46,'delete_bootstrap4figure'),(180,'Can view bootstrap4 figure',46,'view_bootstrap4figure'),(181,'Can add bootstrap4 grid column',47,'add_bootstrap4gridcolumn'),(182,'Can change bootstrap4 grid column',47,'change_bootstrap4gridcolumn'),(183,'Can delete bootstrap4 grid column',47,'delete_bootstrap4gridcolumn'),(184,'Can view bootstrap4 grid column',47,'view_bootstrap4gridcolumn'),(185,'Can add bootstrap4 grid container',48,'add_bootstrap4gridcontainer'),(186,'Can change bootstrap4 grid container',48,'change_bootstrap4gridcontainer'),(187,'Can delete bootstrap4 grid container',48,'delete_bootstrap4gridcontainer'),(188,'Can view bootstrap4 grid container',48,'view_bootstrap4gridcontainer'),(189,'Can add bootstrap4 grid row',49,'add_bootstrap4gridrow'),(190,'Can change bootstrap4 grid row',49,'change_bootstrap4gridrow'),(191,'Can delete bootstrap4 grid row',49,'delete_bootstrap4gridrow'),(192,'Can view bootstrap4 grid row',49,'view_bootstrap4gridrow'),(193,'Can add bootstrap4 jumbotron',50,'add_bootstrap4jumbotron'),(194,'Can change bootstrap4 jumbotron',50,'change_bootstrap4jumbotron'),(195,'Can delete bootstrap4 jumbotron',50,'delete_bootstrap4jumbotron'),(196,'Can view bootstrap4 jumbotron',50,'view_bootstrap4jumbotron'),(197,'Can add bootstrap4 link',51,'add_bootstrap4link'),(198,'Can change bootstrap4 link',51,'change_bootstrap4link'),(199,'Can delete bootstrap4 link',51,'delete_bootstrap4link'),(200,'Can view bootstrap4 link',51,'view_bootstrap4link'),(201,'Can add bootstrap4 list group',52,'add_bootstrap4listgroup'),(202,'Can change bootstrap4 list group',52,'change_bootstrap4listgroup'),(203,'Can delete bootstrap4 list group',52,'delete_bootstrap4listgroup'),(204,'Can view bootstrap4 list group',52,'view_bootstrap4listgroup'),(205,'Can add bootstrap4 list group item',53,'add_bootstrap4listgroupitem'),(206,'Can change bootstrap4 list group item',53,'change_bootstrap4listgroupitem'),(207,'Can delete bootstrap4 list group item',53,'delete_bootstrap4listgroupitem'),(208,'Can view bootstrap4 list group item',53,'view_bootstrap4listgroupitem'),(209,'Can add bootstrap4 media',54,'add_bootstrap4media'),(210,'Can change bootstrap4 media',54,'change_bootstrap4media'),(211,'Can delete bootstrap4 media',54,'delete_bootstrap4media'),(212,'Can view bootstrap4 media',54,'view_bootstrap4media'),(213,'Can add bootstrap4 media body',55,'add_bootstrap4mediabody'),(214,'Can change bootstrap4 media body',55,'change_bootstrap4mediabody'),(215,'Can delete bootstrap4 media body',55,'delete_bootstrap4mediabody'),(216,'Can view bootstrap4 media body',55,'view_bootstrap4mediabody'),(217,'Can add bootstrap4 picture',56,'add_bootstrap4picture'),(218,'Can change bootstrap4 picture',56,'change_bootstrap4picture'),(219,'Can delete bootstrap4 picture',56,'delete_bootstrap4picture'),(220,'Can view bootstrap4 picture',56,'view_bootstrap4picture'),(221,'Can add bootstrap4 tab',57,'add_bootstrap4tab'),(222,'Can change bootstrap4 tab',57,'change_bootstrap4tab'),(223,'Can delete bootstrap4 tab',57,'delete_bootstrap4tab'),(224,'Can view bootstrap4 tab',57,'view_bootstrap4tab'),(225,'Can add bootstrap4 tab item',58,'add_bootstrap4tabitem'),(226,'Can change bootstrap4 tab item',58,'change_bootstrap4tabitem'),(227,'Can delete bootstrap4 tab item',58,'delete_bootstrap4tabitem'),(228,'Can view bootstrap4 tab item',58,'view_bootstrap4tabitem'),(229,'Can add bootstrap4 spacing',59,'add_bootstrap4spacing'),(230,'Can change bootstrap4 spacing',59,'change_bootstrap4spacing'),(231,'Can delete bootstrap4 spacing',59,'delete_bootstrap4spacing'),(232,'Can view bootstrap4 spacing',59,'view_bootstrap4spacing'),(233,'Can add file',60,'add_file'),(234,'Can change file',60,'change_file'),(235,'Can delete file',60,'delete_file'),(236,'Can view file',60,'view_file'),(237,'Can add folder',61,'add_folder'),(238,'Can change folder',61,'change_folder'),(239,'Can delete folder',61,'delete_folder'),(240,'Can view folder',61,'view_folder'),(241,'Can add icon',62,'add_icon'),(242,'Can change icon',62,'change_icon'),(243,'Can delete icon',62,'delete_icon'),(244,'Can view icon',62,'view_icon'),(245,'Can add link',63,'add_link'),(246,'Can change link',63,'change_link'),(247,'Can delete link',63,'delete_link'),(248,'Can view link',63,'view_link'),(249,'Can add picture',64,'add_picture'),(250,'Can change picture',64,'change_picture'),(251,'Can delete picture',64,'delete_picture'),(252,'Can view picture',64,'view_picture'),(253,'Can add style',65,'add_style'),(254,'Can change style',65,'change_style'),(255,'Can delete style',65,'delete_style'),(256,'Can view style',65,'view_style'),(257,'Can add google map',66,'add_googlemap'),(258,'Can change google map',66,'change_googlemap'),(259,'Can delete google map',66,'delete_googlemap'),(260,'Can view google map',66,'view_googlemap'),(261,'Can add google map marker',67,'add_googlemapmarker'),(262,'Can change google map marker',67,'change_googlemapmarker'),(263,'Can delete google map marker',67,'delete_googlemapmarker'),(264,'Can view google map marker',67,'view_googlemapmarker'),(265,'Can add google map route',68,'add_googlemaproute'),(266,'Can change google map route',68,'change_googlemaproute'),(267,'Can delete google map route',68,'delete_googlemaproute'),(268,'Can view google map route',68,'view_googlemaproute'),(269,'Can add video player',69,'add_videoplayer'),(270,'Can change video player',69,'change_videoplayer'),(271,'Can delete video player',69,'delete_videoplayer'),(272,'Can view video player',69,'view_videoplayer'),(273,'Can add video source',70,'add_videosource'),(274,'Can change video source',70,'change_videosource'),(275,'Can delete video source',70,'delete_videosource'),(276,'Can view video source',70,'view_videosource'),(277,'Can add video track',71,'add_videotrack'),(278,'Can change video track',71,'change_videotrack'),(279,'Can delete video track',71,'delete_videotrack'),(280,'Can view video track',71,'view_videotrack');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$6VULjigdGN6L$/xxymuleOGlNhFSlNDE09ZQS4V6EpHHYlHtpyl7cUtE=','2022-01-17 21:08:08.760239',1,'memadd','','','',1,1,'2022-01-17 21:07:40.379978');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_alerts_bootstrap4alerts`
--

DROP TABLE IF EXISTS `bootstrap4_alerts_bootstrap4alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_alerts_bootstrap4alerts` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `alert_context` varchar(255) NOT NULL,
  `alert_dismissable` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_alerts_bo_cmsplugin_ptr_id_16c9e6e1_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_alerts_bootstrap4alerts`
--

LOCK TABLES `bootstrap4_alerts_bootstrap4alerts` WRITE;
/*!40000 ALTER TABLE `bootstrap4_alerts_bootstrap4alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_alerts_bootstrap4alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_badge_bootstrap4badge`
--

DROP TABLE IF EXISTS `bootstrap4_badge_bootstrap4badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_badge_bootstrap4badge` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `badge_text` varchar(255) NOT NULL,
  `badge_context` varchar(255) NOT NULL,
  `badge_pills` tinyint(1) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_badge_boo_cmsplugin_ptr_id_1cfc1292_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_badge_bootstrap4badge`
--

LOCK TABLES `bootstrap4_badge_bootstrap4badge` WRITE;
/*!40000 ALTER TABLE `bootstrap4_badge_bootstrap4badge` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_badge_bootstrap4badge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_card_bootstrap4card`
--

DROP TABLE IF EXISTS `bootstrap4_card_bootstrap4card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_card_bootstrap4card` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `card_context` varchar(255) NOT NULL,
  `card_alignment` varchar(255) NOT NULL,
  `card_outline` tinyint(1) NOT NULL,
  `card_text_color` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_card_boot_cmsplugin_ptr_id_c6cf1064_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_card_bootstrap4card`
--

LOCK TABLES `bootstrap4_card_bootstrap4card` WRITE;
/*!40000 ALTER TABLE `bootstrap4_card_bootstrap4card` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_card_bootstrap4card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_card_bootstrap4cardinner`
--

DROP TABLE IF EXISTS `bootstrap4_card_bootstrap4cardinner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_card_bootstrap4cardinner` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `inner_type` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_card_boot_cmsplugin_ptr_id_8c0b627d_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_card_bootstrap4cardinner`
--

LOCK TABLES `bootstrap4_card_bootstrap4cardinner` WRITE;
/*!40000 ALTER TABLE `bootstrap4_card_bootstrap4cardinner` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_card_bootstrap4cardinner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_carousel_bootstrap4carousel`
--

DROP TABLE IF EXISTS `bootstrap4_carousel_bootstrap4carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_carousel_bootstrap4carousel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `template` varchar(255) NOT NULL,
  `carousel_interval` int(11) NOT NULL,
  `carousel_controls` tinyint(1) NOT NULL,
  `carousel_indicators` tinyint(1) NOT NULL,
  `carousel_keyboard` tinyint(1) NOT NULL,
  `carousel_pause` varchar(255) NOT NULL,
  `carousel_ride` varchar(255) NOT NULL,
  `carousel_wrap` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `carousel_aspect_ratio` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_carousel__cmsplugin_ptr_id_d97c4671_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_carousel_bootstrap4carousel`
--

LOCK TABLES `bootstrap4_carousel_bootstrap4carousel` WRITE;
/*!40000 ALTER TABLE `bootstrap4_carousel_bootstrap4carousel` DISABLE KEYS */;
INSERT INTO `bootstrap4_carousel_bootstrap4carousel` VALUES (340,'default',1000,0,0,0,'hover','carousel',1,'div','{}','21x9'),(355,'default',5000,1,1,1,'hover','carousel',1,'div','{}','21x9');
/*!40000 ALTER TABLE `bootstrap4_carousel_bootstrap4carousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_carousel_bootstrap4carouselslide`
--

DROP TABLE IF EXISTS `bootstrap4_carousel_bootstrap4carouselslide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_carousel_bootstrap4carouselslide` (
  `template` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `external_link` varchar(2040) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `mailto` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `carousel_content` longtext NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `carousel_image_id` int(11) DEFAULT NULL,
  `internal_link_id` int(11) DEFAULT NULL,
  `file_link_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `bootstrap4_carousel__internal_link_id_9040d8b6_fk_cms_page_` (`internal_link_id`),
  KEY `bootstrap4_carousel_bootstr_carousel_image_id_c7547e1f` (`carousel_image_id`),
  KEY `bootstrap4_carousel_bootstr_file_link_id_926e466f` (`file_link_id`),
  CONSTRAINT `bootstrap4_carousel__carousel_image_id_c7547e1f_fk_filer_ima` FOREIGN KEY (`carousel_image_id`) REFERENCES `filer_image` (`file_ptr_id`),
  CONSTRAINT `bootstrap4_carousel__cmsplugin_ptr_id_50bebcc8_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `bootstrap4_carousel__file_link_id_926e466f_fk_filer_fil` FOREIGN KEY (`file_link_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `bootstrap4_carousel__internal_link_id_9040d8b6_fk_cms_page_` FOREIGN KEY (`internal_link_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_carousel_bootstrap4carouselslide`
--

LOCK TABLES `bootstrap4_carousel_bootstrap4carouselslide` WRITE;
/*!40000 ALTER TABLE `bootstrap4_carousel_bootstrap4carouselslide` DISABLE KEYS */;
INSERT INTO `bootstrap4_carousel_bootstrap4carouselslide` VALUES ('default','','','','','','','{}',345,'<h3><b>Pay Me</b></h3>\n\n<p class=\"text-muted\">receive money in your Boubyan Bank account from any local bank account </p>','div',14,NULL,NULL),('default','','','','','','','{}',347,'<h3><b>Pay Me</b></h3>\n\n<p class=\"text-muted\">receive money in your Boubyan Bank account from any local bank account </p>','div',14,NULL,NULL),('default','','','','','','','{}',348,'<h3><b>Pay Me</b></h3>\n\n<p class=\"text-muted\">receive money in your Boubyan Bank account from any local bank account </p>','div',14,NULL,NULL),('default','','','','','','','{}',349,'<h3><b>Pay Me</b></h3>\n\n<p class=\"text-muted\">receive money in your Boubyan Bank account from any local bank account </p>','div',14,NULL,NULL),('default','','','','','','','{}',356,'<p><span style=\"color: #7f8c8d;\">Thank Boubyan for making my bank on my pocket! Now I can travel without fears</span></p>\n\n<p style=\"text-align: center;\"><span style=\"color: #7f8c8d;\">Fahd Mohamed</span></p>','div',16,NULL,NULL),('default','','','','','','','{}',358,'<p>Thank Boubyan for making my bank on my pocket! Now I can travel without fears</p>','div',16,NULL,NULL),('default','','','','','','','{}',359,'<p>Thank Boubyan for making my bank on my pocket! Now I can travel without fears</p>','div',16,NULL,NULL);
/*!40000 ALTER TABLE `bootstrap4_carousel_bootstrap4carouselslide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_collapse_bootstrap4collapse`
--

DROP TABLE IF EXISTS `bootstrap4_collapse_bootstrap4collapse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_collapse_bootstrap4collapse` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `siblings` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_collapse__cmsplugin_ptr_id_c9f9a375_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_collapse_bootstrap4collapse`
--

LOCK TABLES `bootstrap4_collapse_bootstrap4collapse` WRITE;
/*!40000 ALTER TABLE `bootstrap4_collapse_bootstrap4collapse` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_collapse_bootstrap4collapse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_collapse_bootstrap4collapsecontainer`
--

DROP TABLE IF EXISTS `bootstrap4_collapse_bootstrap4collapsecontainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_collapse_bootstrap4collapsecontainer` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `bootstrap4_collapse_bootstr_identifier_ed2446e8` (`identifier`),
  CONSTRAINT `bootstrap4_collapse__cmsplugin_ptr_id_1d125930_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_collapse_bootstrap4collapsecontainer`
--

LOCK TABLES `bootstrap4_collapse_bootstrap4collapsecontainer` WRITE;
/*!40000 ALTER TABLE `bootstrap4_collapse_bootstrap4collapsecontainer` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_collapse_bootstrap4collapsecontainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_collapse_bootstrap4collapsetrigger`
--

DROP TABLE IF EXISTS `bootstrap4_collapse_bootstrap4collapsetrigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_collapse_bootstrap4collapsetrigger` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `bootstrap4_collapse_bootstr_identifier_70258b88` (`identifier`),
  CONSTRAINT `bootstrap4_collapse__cmsplugin_ptr_id_f71d6f15_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_collapse_bootstrap4collapsetrigger`
--

LOCK TABLES `bootstrap4_collapse_bootstrap4collapsetrigger` WRITE;
/*!40000 ALTER TABLE `bootstrap4_collapse_bootstrap4collapsetrigger` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_collapse_bootstrap4collapsetrigger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_content_bootstrap4blockquote`
--

DROP TABLE IF EXISTS `bootstrap4_content_bootstrap4blockquote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_content_bootstrap4blockquote` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `quote_content` longtext NOT NULL,
  `quote_origin` longtext NOT NULL,
  `quote_alignment` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_content_b_cmsplugin_ptr_id_8b0021f2_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_content_bootstrap4blockquote`
--

LOCK TABLES `bootstrap4_content_bootstrap4blockquote` WRITE;
/*!40000 ALTER TABLE `bootstrap4_content_bootstrap4blockquote` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_content_bootstrap4blockquote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_content_bootstrap4code`
--

DROP TABLE IF EXISTS `bootstrap4_content_bootstrap4code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_content_bootstrap4code` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `code_content` longtext NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_content_b_cmsplugin_ptr_id_c1953358_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_content_bootstrap4code`
--

LOCK TABLES `bootstrap4_content_bootstrap4code` WRITE;
/*!40000 ALTER TABLE `bootstrap4_content_bootstrap4code` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_content_bootstrap4code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_content_bootstrap4figure`
--

DROP TABLE IF EXISTS `bootstrap4_content_bootstrap4figure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_content_bootstrap4figure` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `figure_caption` varchar(255) NOT NULL,
  `figure_alignment` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_content_b_cmsplugin_ptr_id_4ec12771_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_content_bootstrap4figure`
--

LOCK TABLES `bootstrap4_content_bootstrap4figure` WRITE;
/*!40000 ALTER TABLE `bootstrap4_content_bootstrap4figure` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_content_bootstrap4figure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_grid_bootstrap4gridcolumn`
--

DROP TABLE IF EXISTS `bootstrap4_grid_bootstrap4gridcolumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_grid_bootstrap4gridcolumn` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `column_type` varchar(255) NOT NULL,
  `column_alignment` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `xs_col` int(11) DEFAULT NULL,
  `xs_order` int(11) DEFAULT NULL,
  `xs_ml` tinyint(1) NOT NULL,
  `xs_mr` tinyint(1) NOT NULL,
  `sm_col` int(11) DEFAULT NULL,
  `sm_order` int(11) DEFAULT NULL,
  `sm_ml` tinyint(1) NOT NULL,
  `sm_mr` tinyint(1) NOT NULL,
  `md_col` int(11) DEFAULT NULL,
  `md_order` int(11) DEFAULT NULL,
  `md_ml` tinyint(1) NOT NULL,
  `md_mr` tinyint(1) NOT NULL,
  `lg_col` int(11) DEFAULT NULL,
  `lg_order` int(11) DEFAULT NULL,
  `lg_ml` tinyint(1) NOT NULL,
  `lg_mr` tinyint(1) NOT NULL,
  `xl_col` int(11) DEFAULT NULL,
  `xl_order` int(11) DEFAULT NULL,
  `xl_ml` tinyint(1) NOT NULL,
  `xl_mr` tinyint(1) NOT NULL,
  `lg_offset` int(11) DEFAULT NULL,
  `md_offset` int(11) DEFAULT NULL,
  `sm_offset` int(11) DEFAULT NULL,
  `xl_offset` int(11) DEFAULT NULL,
  `xs_offset` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_grid_boot_cmsplugin_ptr_id_e1f10b7c_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_grid_bootstrap4gridcolumn`
--

LOCK TABLES `bootstrap4_grid_bootstrap4gridcolumn` WRITE;
/*!40000 ALTER TABLE `bootstrap4_grid_bootstrap4gridcolumn` DISABLE KEYS */;
INSERT INTO `bootstrap4_grid_bootstrap4gridcolumn` VALUES (65,'col','','div','{}',NULL,NULL,0,0,NULL,NULL,0,0,4,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(66,'col','','div','{}',NULL,NULL,0,0,NULL,NULL,0,0,4,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(67,'col','','div','{}',NULL,NULL,0,0,NULL,NULL,0,0,4,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(108,'col','','div','{}',4,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(121,'col','','div','{}',4,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(132,'col','','div','{}',4,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(169,'col','','div','{}',4,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(178,'col','','div','{}',4,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(180,'col','','div','{}',4,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(217,'col','','div','{}',4,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(226,'col','','div','{}',4,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(228,'col','','div','{}',4,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(244,'col','','div','{}',12,NULL,0,0,NULL,NULL,0,0,4,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(258,'col','','div','{}',12,NULL,0,0,NULL,NULL,0,0,4,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(268,'col','','div','{}',12,NULL,0,0,NULL,NULL,0,0,4,NULL,0,0,NULL,NULL,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `bootstrap4_grid_bootstrap4gridcolumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_grid_bootstrap4gridcontainer`
--

DROP TABLE IF EXISTS `bootstrap4_grid_bootstrap4gridcontainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_grid_bootstrap4gridcontainer` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `container_type` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_grid_boot_cmsplugin_ptr_id_ff053e0f_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_grid_bootstrap4gridcontainer`
--

LOCK TABLES `bootstrap4_grid_bootstrap4gridcontainer` WRITE;
/*!40000 ALTER TABLE `bootstrap4_grid_bootstrap4gridcontainer` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_grid_bootstrap4gridcontainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_grid_bootstrap4gridrow`
--

DROP TABLE IF EXISTS `bootstrap4_grid_bootstrap4gridrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_grid_bootstrap4gridrow` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `vertical_alignment` varchar(255) NOT NULL,
  `horizontal_alignment` varchar(255) NOT NULL,
  `gutters` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_grid_boot_cmsplugin_ptr_id_02c25f67_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_grid_bootstrap4gridrow`
--

LOCK TABLES `bootstrap4_grid_bootstrap4gridrow` WRITE;
/*!40000 ALTER TABLE `bootstrap4_grid_bootstrap4gridrow` DISABLE KEYS */;
INSERT INTO `bootstrap4_grid_bootstrap4gridrow` VALUES (64,'','',0,'div','{}'),(107,'','',0,'div','{}'),(168,'','',0,'div','{}'),(216,'','',0,'div','{}'),(243,'','',0,'div','{}');
/*!40000 ALTER TABLE `bootstrap4_grid_bootstrap4gridrow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_jumbotron_bootstrap4jumbotron`
--

DROP TABLE IF EXISTS `bootstrap4_jumbotron_bootstrap4jumbotron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_jumbotron_bootstrap4jumbotron` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `fluid` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_jumbotron_cmsplugin_ptr_id_1429c898_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_jumbotron_bootstrap4jumbotron`
--

LOCK TABLES `bootstrap4_jumbotron_bootstrap4jumbotron` WRITE;
/*!40000 ALTER TABLE `bootstrap4_jumbotron_bootstrap4jumbotron` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_jumbotron_bootstrap4jumbotron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_link_bootstrap4link`
--

DROP TABLE IF EXISTS `bootstrap4_link_bootstrap4link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_link_bootstrap4link` (
  `template` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `external_link` varchar(2040) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `mailto` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `link_type` varchar(255) NOT NULL,
  `link_context` varchar(255) NOT NULL,
  `link_size` varchar(255) NOT NULL,
  `link_outline` tinyint(1) NOT NULL,
  `link_block` tinyint(1) NOT NULL,
  `internal_link_id` int(11) DEFAULT NULL,
  `icon_left` varchar(255) NOT NULL,
  `icon_right` varchar(255) NOT NULL,
  `file_link_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `bootstrap4_link_boot_internal_link_id_bc4ec61e_fk_cms_page_` (`internal_link_id`),
  KEY `bootstrap4_link_bootstrap4link_file_link_id_73e3dbff` (`file_link_id`),
  CONSTRAINT `bootstrap4_link_boot_cmsplugin_ptr_id_49f69e60_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `bootstrap4_link_boot_file_link_id_73e3dbff_fk_filer_fil` FOREIGN KEY (`file_link_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `bootstrap4_link_boot_internal_link_id_bc4ec61e_fk_cms_page_` FOREIGN KEY (`internal_link_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_link_bootstrap4link`
--

LOCK TABLES `bootstrap4_link_bootstrap4link` WRITE;
/*!40000 ALTER TABLE `bootstrap4_link_bootstrap4link` DISABLE KEYS */;
INSERT INTO `bootstrap4_link_bootstrap4link` VALUES ('default','Home  >','','','','','','{}',6,'link','dark','',0,0,1,'','',NULL),('default','Ways to bank >','','','','','','{}',7,'link','dark','',0,0,7,'','',NULL),('default','Boubyan Mobile App','','','','','','{}',8,'link','danger','',0,0,7,'','',NULL);
/*!40000 ALTER TABLE `bootstrap4_link_bootstrap4link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_listgroup_bootstrap4listgroup`
--

DROP TABLE IF EXISTS `bootstrap4_listgroup_bootstrap4listgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_listgroup_bootstrap4listgroup` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `list_group_flush` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_listgroup_cmsplugin_ptr_id_c0811351_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_listgroup_bootstrap4listgroup`
--

LOCK TABLES `bootstrap4_listgroup_bootstrap4listgroup` WRITE;
/*!40000 ALTER TABLE `bootstrap4_listgroup_bootstrap4listgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_listgroup_bootstrap4listgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_listgroup_bootstrap4listgroupitem`
--

DROP TABLE IF EXISTS `bootstrap4_listgroup_bootstrap4listgroupitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_listgroup_bootstrap4listgroupitem` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `list_context` varchar(255) NOT NULL,
  `list_state` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_listgroup_cmsplugin_ptr_id_df52f490_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_listgroup_bootstrap4listgroupitem`
--

LOCK TABLES `bootstrap4_listgroup_bootstrap4listgroupitem` WRITE;
/*!40000 ALTER TABLE `bootstrap4_listgroup_bootstrap4listgroupitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_listgroup_bootstrap4listgroupitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_media_bootstrap4media`
--

DROP TABLE IF EXISTS `bootstrap4_media_bootstrap4media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_media_bootstrap4media` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_media_boo_cmsplugin_ptr_id_9eb94f74_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_media_bootstrap4media`
--

LOCK TABLES `bootstrap4_media_bootstrap4media` WRITE;
/*!40000 ALTER TABLE `bootstrap4_media_bootstrap4media` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_media_bootstrap4media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_media_bootstrap4mediabody`
--

DROP TABLE IF EXISTS `bootstrap4_media_bootstrap4mediabody`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_media_bootstrap4mediabody` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_media_boo_cmsplugin_ptr_id_574b3dd8_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_media_bootstrap4mediabody`
--

LOCK TABLES `bootstrap4_media_bootstrap4mediabody` WRITE;
/*!40000 ALTER TABLE `bootstrap4_media_bootstrap4mediabody` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_media_bootstrap4mediabody` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_picture_bootstrap4picture`
--

DROP TABLE IF EXISTS `bootstrap4_picture_bootstrap4picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_picture_bootstrap4picture` (
  `template` varchar(255) NOT NULL,
  `external_picture` varchar(255) DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL CHECK (`width` >= 0),
  `height` int(10) unsigned DEFAULT NULL CHECK (`height` >= 0),
  `alignment` varchar(255) NOT NULL,
  `caption_text` longtext DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `link_url` varchar(2040) DEFAULT NULL,
  `link_target` varchar(255) NOT NULL,
  `link_attributes` longtext NOT NULL,
  `use_automatic_scaling` tinyint(1) NOT NULL,
  `use_no_cropping` tinyint(1) NOT NULL,
  `use_crop` tinyint(1) NOT NULL,
  `use_upscale` tinyint(1) NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `picture_fluid` tinyint(1) NOT NULL,
  `picture_rounded` tinyint(1) NOT NULL,
  `picture_thumbnail` tinyint(1) NOT NULL,
  `link_page_id` int(11) DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  `thumbnail_options_id` int(11) DEFAULT NULL,
  `use_responsive_image` varchar(7) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `bootstrap4_picture_b_thumbnail_options_id_15520a42_fk_filer_thu` (`thumbnail_options_id`),
  KEY `bootstrap4_picture_bootstrap4picture_link_page_id_f01c1a21` (`link_page_id`),
  KEY `bootstrap4_picture_bootstrap4picture_picture_id_f26d968d` (`picture_id`),
  CONSTRAINT `bootstrap4_picture_b_cmsplugin_ptr_id_3d3bfb59_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `bootstrap4_picture_b_link_page_id_f01c1a21_fk_cms_page_` FOREIGN KEY (`link_page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `bootstrap4_picture_b_picture_id_f26d968d_fk_filer_ima` FOREIGN KEY (`picture_id`) REFERENCES `filer_image` (`file_ptr_id`),
  CONSTRAINT `bootstrap4_picture_b_thumbnail_options_id_15520a42_fk_filer_thu` FOREIGN KEY (`thumbnail_options_id`) REFERENCES `filer_thumbnailoption` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_picture_bootstrap4picture`
--

LOCK TABLES `bootstrap4_picture_bootstrap4picture` WRITE;
/*!40000 ALTER TABLE `bootstrap4_picture_bootstrap4picture` DISABLE KEYS */;
INSERT INTO `bootstrap4_picture_bootstrap4picture` VALUES ('default',NULL,NULL,NULL,'','','{}',NULL,'','{}',1,0,0,0,74,1,0,0,NULL,9,NULL,'inherit'),('default',NULL,NULL,NULL,'','','{}',NULL,'','{}',1,0,0,0,75,1,0,0,NULL,10,NULL,'inherit'),('default',NULL,NULL,NULL,'','','{}',NULL,'','{}',1,0,0,0,78,1,0,0,NULL,11,NULL,'inherit'),('default',NULL,NULL,NULL,'','','{}',NULL,'','{}',1,0,0,0,122,1,0,0,NULL,12,NULL,'inherit'),('default',NULL,NULL,NULL,'','','{}',NULL,'','{}',1,0,0,0,179,1,0,0,NULL,12,NULL,'inherit'),('default',NULL,NULL,NULL,'','','{}',NULL,'','{}',1,0,0,0,227,1,0,0,NULL,12,NULL,'inherit'),('default',NULL,400,NULL,'','','{}',NULL,'','{}',1,0,0,0,242,1,0,0,NULL,13,NULL,'inherit'),('default',NULL,220,NULL,'','','{}',NULL,'','{}',1,0,0,0,300,1,0,0,NULL,4,NULL,'inherit'),('default',NULL,160,NULL,'','','{}',NULL,'','{}',1,0,0,0,301,1,0,0,NULL,3,NULL,'inherit'),('default',NULL,160,NULL,'','','{}',NULL,'','{}',1,0,0,0,302,1,0,0,NULL,1,NULL,'inherit'),('default',NULL,NULL,NULL,'','','{}',NULL,'','{}',1,0,0,0,307,1,0,0,NULL,8,NULL,'inherit'),('default',NULL,160,NULL,'','','{}',NULL,'','{}',1,0,0,0,375,1,0,0,NULL,1,NULL,'inherit'),('default',NULL,160,NULL,'','','{}',NULL,'','{}',1,0,0,0,376,1,0,0,NULL,3,NULL,'inherit'),('default',NULL,160,NULL,'','','{}',NULL,'','{}',1,0,0,0,377,1,0,0,NULL,3,NULL,'inherit');
/*!40000 ALTER TABLE `bootstrap4_picture_bootstrap4picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_tabs_bootstrap4tab`
--

DROP TABLE IF EXISTS `bootstrap4_tabs_bootstrap4tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_tabs_bootstrap4tab` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `template` varchar(255) NOT NULL,
  `tab_type` varchar(255) NOT NULL,
  `tab_alignment` varchar(255) NOT NULL,
  `tab_index` int(10) unsigned DEFAULT NULL CHECK (`tab_index` >= 0),
  `tab_effect` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_tabs_boot_cmsplugin_ptr_id_e655c7b6_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_tabs_bootstrap4tab`
--

LOCK TABLES `bootstrap4_tabs_bootstrap4tab` WRITE;
/*!40000 ALTER TABLE `bootstrap4_tabs_bootstrap4tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_tabs_bootstrap4tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_tabs_bootstrap4tabitem`
--

DROP TABLE IF EXISTS `bootstrap4_tabs_bootstrap4tabitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_tabs_bootstrap4tabitem` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `tab_title` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_tabs_boot_cmsplugin_ptr_id_e017af58_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_tabs_bootstrap4tabitem`
--

LOCK TABLES `bootstrap4_tabs_bootstrap4tabitem` WRITE;
/*!40000 ALTER TABLE `bootstrap4_tabs_bootstrap4tabitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_tabs_bootstrap4tabitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_utilities_bootstrap4spacing`
--

DROP TABLE IF EXISTS `bootstrap4_utilities_bootstrap4spacing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_utilities_bootstrap4spacing` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `space_property` varchar(255) NOT NULL,
  `space_sides` varchar(255) NOT NULL,
  `space_size` varchar(255) NOT NULL,
  `space_device` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_utilities_cmsplugin_ptr_id_c15ec8d1_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_utilities_bootstrap4spacing`
--

LOCK TABLES `bootstrap4_utilities_bootstrap4spacing` WRITE;
/*!40000 ALTER TABLE `bootstrap4_utilities_bootstrap4spacing` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_utilities_bootstrap4spacing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_aliaspluginmodel`
--

DROP TABLE IF EXISTS `cms_aliaspluginmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_aliaspluginmodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `plugin_id` int(11) DEFAULT NULL,
  `alias_placeholder_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place` (`alias_placeholder_id`),
  KEY `cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id` (`plugin_id`),
  CONSTRAINT `cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place` FOREIGN KEY (`alias_placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id` FOREIGN KEY (`plugin_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_aliaspluginmodel`
--

LOCK TABLES `cms_aliaspluginmodel` WRITE;
/*!40000 ALTER TABLE `cms_aliaspluginmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_aliaspluginmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_cmsplugin`
--

DROP TABLE IF EXISTS `cms_cmsplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_cmsplugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` smallint(5) unsigned NOT NULL,
  `language` varchar(15) NOT NULL,
  `plugin_type` varchar(50) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `changed_date` datetime(6) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `placeholder_id` int(11) DEFAULT NULL,
  `depth` int(10) unsigned NOT NULL CHECK (`depth` >= 0),
  `numchild` int(10) unsigned NOT NULL CHECK (`numchild` >= 0),
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_cmsplugin_path_4917bb44_uniq` (`path`),
  KEY `cms_cmsplugin_language_bbea8a48` (`language`),
  KEY `cms_cmsplugin_plugin_type_94e96ebf` (`plugin_type`),
  KEY `cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id` (`placeholder_id`),
  KEY `cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id` (`parent_id`),
  CONSTRAINT `cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_cmsplugin`
--

LOCK TABLES `cms_cmsplugin` WRITE;
/*!40000 ALTER TABLE `cms_cmsplugin` DISABLE KEYS */;
INSERT INTO `cms_cmsplugin` VALUES (4,0,'en','StylePlugin','2022-01-21 19:59:20.752545','2022-01-21 19:59:20.752545',54,2,2,4,'00040001'),(5,0,'en','TextPlugin','2022-01-21 20:00:05.071606','2022-01-21 20:00:05.159569',4,2,3,0,'000400010001'),(6,1,'en','Bootstrap4LinkPlugin','2022-01-21 20:01:44.242458','2022-01-21 20:07:45.699413',4,2,3,0,'000400010002'),(7,2,'en','Bootstrap4LinkPlugin','2022-01-21 20:02:36.066644','2022-01-21 20:09:01.410446',4,2,3,0,'000400010003'),(8,3,'en','Bootstrap4LinkPlugin','2022-01-21 20:03:31.798569','2022-01-21 20:08:43.268574',4,2,3,0,'000400010004'),(54,0,'en','StylePlugin','2022-01-22 01:53:46.619094','2022-01-22 01:53:46.659055',NULL,2,1,1,'0004'),(55,1,'en','StylePlugin','2022-01-22 01:54:41.684422','2022-01-22 05:17:12.181837',NULL,2,1,2,'0005'),(61,2,'en','StylePlugin','2022-01-22 01:58:58.332617','2022-01-22 02:17:13.841191',NULL,2,1,2,'0007'),(62,0,'en','StylePlugin','2022-01-22 01:59:44.428262','2022-01-22 01:59:44.432225',61,2,2,1,'00070001'),(63,0,'en','TextPlugin','2022-01-22 01:59:54.936721','2022-01-22 02:00:11.184085',62,2,3,0,'000700010001'),(64,1,'en','Bootstrap4GridRowPlugin','2022-01-22 02:03:13.415198','2022-01-22 02:03:13.420641',61,2,2,3,'00070002'),(65,0,'en','Bootstrap4GridColumnPlugin','2022-01-22 02:03:13.422641','2022-01-22 02:17:41.962155',64,2,3,2,'000700020001'),(66,1,'en','Bootstrap4GridColumnPlugin','2022-01-22 02:03:13.525230','2022-01-22 02:18:01.730816',64,2,3,2,'000700020002'),(67,2,'en','Bootstrap4GridColumnPlugin','2022-01-22 02:03:13.543277','2022-01-22 02:17:53.253952',64,2,3,2,'000700020003'),(73,2,'en','TextPlugin','2022-01-22 02:06:41.505112','2022-01-22 03:58:21.773120',65,2,4,0,'0007000200010002'),(74,0,'en','Bootstrap4PicturePlugin','2022-01-22 02:09:57.480753','2022-01-22 02:09:57.490757',66,2,4,0,'0007000200020001'),(75,0,'en','Bootstrap4PicturePlugin','2022-01-22 02:10:54.581198','2022-01-22 02:10:54.589198',65,2,4,0,'0007000200010004'),(77,1,'en','TextPlugin','2022-01-22 02:06:41.505112','2022-01-22 03:58:50.631743',66,2,4,0,'0007000200020002'),(78,0,'en','Bootstrap4PicturePlugin','2022-01-22 02:14:18.884658','2022-01-22 02:14:18.894660',67,2,4,0,'0007000200030001'),(80,1,'en','TextPlugin','2022-01-22 02:06:41.505112','2022-01-22 03:59:06.159001',67,2,4,0,'0007000200030002'),(94,3,'en','StylePlugin','2022-01-22 01:58:58.332617','2022-01-22 02:20:35.281719',NULL,2,1,2,'0009'),(95,0,'en','StylePlugin','2022-01-22 01:59:44.428262','2022-01-22 02:19:53.761420',94,2,2,1,'00090001'),(96,0,'en','TextPlugin','2022-01-22 01:59:54.936721','2022-01-22 02:20:47.884892',95,2,3,0,'000900010001'),(107,1,'en','Bootstrap4GridRowPlugin','2022-01-22 03:51:21.853371','2022-01-22 03:51:21.861377',94,2,2,3,'00090002'),(108,0,'en','Bootstrap4GridColumnPlugin','2022-01-22 03:52:56.041057','2022-01-22 03:52:56.049058',107,2,3,2,'000900020001'),(109,0,'en','TextPlugin','2022-01-22 03:53:43.949496','2022-01-22 03:56:17.069036',112,2,5,1,'00090002000100030001'),(110,1,'en','TextPlugin','2022-01-22 03:55:00.112702','2022-01-22 03:57:09.732567',112,2,5,0,'00090002000100030002'),(111,0,'en','IconPlugin','2022-01-22 03:56:13.669691','2022-01-22 03:56:13.677651',109,2,6,0,'000900020001000300010001'),(112,0,'en','StylePlugin','2022-01-22 04:01:37.779442','2022-01-22 04:05:57.253626',108,2,4,2,'0009000200010003'),(117,1,'en','StylePlugin','2022-01-22 04:01:37.779442','2022-01-22 04:06:21.585790',108,2,4,2,'0009000200010004'),(118,0,'en','TextPlugin','2022-01-22 03:53:43.949496','2022-01-22 04:02:33.436833',117,2,5,1,'00090002000100040001'),(119,0,'en','IconPlugin','2022-01-22 03:56:13.669691','2022-01-22 04:02:33.395678',118,2,6,0,'000900020001000400010001'),(120,1,'en','TextPlugin','2022-01-22 03:55:00.112702','2022-01-22 04:02:33.444831',117,2,5,0,'00090002000100040002'),(121,1,'en','Bootstrap4GridColumnPlugin','2022-01-22 04:03:17.394048','2022-01-22 04:03:17.451210',107,2,3,1,'000900020002'),(122,0,'en','Bootstrap4PicturePlugin','2022-01-22 04:04:00.447762','2022-01-22 04:04:00.455762',121,2,4,0,'0009000200020001'),(132,2,'en','Bootstrap4GridColumnPlugin','2022-01-22 03:52:56.041057','2022-01-22 04:06:51.233234',107,2,3,2,'000900020003'),(133,0,'en','StylePlugin','2022-01-22 04:01:37.779442','2022-01-22 04:06:51.249230',132,2,4,2,'0009000200030001'),(134,0,'en','TextPlugin','2022-01-22 03:53:43.949496','2022-01-22 04:06:51.378386',133,2,5,1,'00090002000300010001'),(135,0,'en','IconPlugin','2022-01-22 03:56:13.669691','2022-01-22 04:06:51.273238',134,2,6,0,'000900020003000100010001'),(136,1,'en','TextPlugin','2022-01-22 03:55:00.112702','2022-01-22 04:06:51.386385',133,2,5,0,'00090002000300010002'),(137,1,'en','StylePlugin','2022-01-22 04:01:37.779442','2022-01-22 04:06:51.306388',132,2,4,2,'0009000200030002'),(138,0,'en','TextPlugin','2022-01-22 03:53:43.949496','2022-01-22 04:06:51.402385',137,2,5,1,'00090002000300020001'),(139,0,'en','IconPlugin','2022-01-22 03:56:13.669691','2022-01-22 04:06:51.330384',138,2,6,0,'000900020003000200010001'),(140,1,'en','TextPlugin','2022-01-22 03:55:00.112702','2022-01-22 04:06:51.410384',137,2,5,0,'00090002000300020002'),(165,4,'en','StylePlugin','2022-01-22 01:58:58.332617','2022-01-22 04:07:46.496637',NULL,2,1,2,'000B'),(166,0,'en','StylePlugin','2022-01-22 01:59:44.428262','2022-01-22 04:07:36.619930',165,2,2,1,'000B0001'),(167,0,'en','TextPlugin','2022-01-22 01:59:54.936721','2022-01-22 04:08:30.974743',166,2,3,0,'000B00010001'),(168,1,'en','Bootstrap4GridRowPlugin','2022-01-22 03:51:21.853371','2022-01-22 04:07:36.643924',165,2,2,3,'000B0002'),(169,0,'en','Bootstrap4GridColumnPlugin','2022-01-22 03:52:56.041057','2022-01-22 04:07:36.651924',168,2,3,2,'000B00020001'),(170,0,'en','StylePlugin','2022-01-22 04:01:37.779442','2022-01-22 04:07:36.667925',169,2,4,2,'000B000200010001'),(171,0,'en','TextPlugin','2022-01-22 03:53:43.949496','2022-01-22 04:07:36.939979',170,2,5,1,'000B0002000100010001'),(172,0,'en','IconPlugin','2022-01-22 03:56:13.669691','2022-01-22 04:07:36.683964',171,2,6,0,'000B00020001000100010001'),(173,1,'en','TextPlugin','2022-01-22 03:55:00.112702','2022-01-22 04:07:36.947928',170,2,5,0,'000B0002000100010002'),(174,1,'en','StylePlugin','2022-01-22 04:01:37.779442','2022-01-22 04:07:36.707925',169,2,4,2,'000B000200010002'),(175,0,'en','TextPlugin','2022-01-22 03:53:43.949496','2022-01-22 04:07:36.965091',174,2,5,1,'000B0002000100020001'),(176,0,'en','IconPlugin','2022-01-22 03:56:13.669691','2022-01-22 04:07:36.739967',175,2,6,0,'000B00020001000200010001'),(177,1,'en','TextPlugin','2022-01-22 03:55:00.112702','2022-01-22 04:07:36.973095',174,2,5,0,'000B0002000100020002'),(178,1,'en','Bootstrap4GridColumnPlugin','2022-01-22 04:03:17.394048','2022-01-22 04:07:36.763964',168,2,3,1,'000B00020002'),(179,0,'en','Bootstrap4PicturePlugin','2022-01-22 04:04:00.447762','2022-01-22 04:07:36.779924',178,2,4,0,'000B000200020001'),(180,2,'en','Bootstrap4GridColumnPlugin','2022-01-22 03:52:56.041057','2022-01-22 04:07:36.795944',168,2,3,2,'000B00020003'),(181,0,'en','StylePlugin','2022-01-22 04:01:37.779442','2022-01-22 04:07:36.811925',180,2,4,2,'000B000200030001'),(182,0,'en','TextPlugin','2022-01-22 03:53:43.949496','2022-01-22 04:07:36.997136',181,2,5,1,'000B0002000300010001'),(183,0,'en','IconPlugin','2022-01-22 03:56:13.669691','2022-01-22 04:07:36.835926',182,2,6,0,'000B00020003000100010001'),(184,1,'en','TextPlugin','2022-01-22 03:55:00.112702','2022-01-22 04:07:37.005094',181,2,5,0,'000B0002000300010002'),(185,1,'en','StylePlugin','2022-01-22 04:01:37.779442','2022-01-22 04:07:36.859923',180,2,4,2,'000B000200030002'),(186,0,'en','TextPlugin','2022-01-22 03:53:43.949496','2022-01-22 04:07:37.021095',185,2,5,1,'000B0002000300020001'),(187,0,'en','IconPlugin','2022-01-22 03:56:13.669691','2022-01-22 04:07:36.891925',186,2,6,0,'000B00020003000200010001'),(188,1,'en','TextPlugin','2022-01-22 03:55:00.112702','2022-01-22 04:07:37.029093',185,2,5,0,'000B0002000300020002'),(213,5,'en','StylePlugin','2022-01-22 01:58:58.332617','2022-01-22 04:11:31.896679',NULL,2,1,2,'000D'),(214,0,'en','StylePlugin','2022-01-22 01:59:44.428262','2022-01-22 04:09:42.694887',213,2,2,1,'000D0001'),(215,0,'en','TextPlugin','2022-01-22 01:59:54.936721','2022-01-22 04:10:02.493697',214,2,3,0,'000D00010001'),(216,1,'en','Bootstrap4GridRowPlugin','2022-01-22 03:51:21.853371','2022-01-22 04:09:42.718888',213,2,2,3,'000D0002'),(217,0,'en','Bootstrap4GridColumnPlugin','2022-01-22 03:52:56.041057','2022-01-22 04:09:42.726886',216,2,3,2,'000D00020001'),(218,0,'en','StylePlugin','2022-01-22 04:01:37.779442','2022-01-22 04:09:42.742892',217,2,4,2,'000D000200010001'),(219,0,'en','TextPlugin','2022-01-22 03:53:43.949496','2022-01-22 04:09:43.048128',218,2,5,1,'000D0002000100010001'),(220,0,'en','IconPlugin','2022-01-22 03:56:13.669691','2022-01-22 04:09:42.766886',219,2,6,0,'000D00020001000100010001'),(221,1,'en','TextPlugin','2022-01-22 03:55:00.112702','2022-01-22 04:09:43.056126',218,2,5,0,'000D0002000100010002'),(222,1,'en','StylePlugin','2022-01-22 04:01:37.779442','2022-01-22 04:09:42.798887',217,2,4,2,'000D000200010002'),(223,0,'en','TextPlugin','2022-01-22 03:53:43.949496','2022-01-22 04:09:43.072125',222,2,5,1,'000D0002000100020001'),(224,0,'en','IconPlugin','2022-01-22 03:56:13.669691','2022-01-22 04:09:42.822887',223,2,6,0,'000D00020001000200010001'),(225,1,'en','TextPlugin','2022-01-22 03:55:00.112702','2022-01-22 04:09:43.080123',222,2,5,0,'000D0002000100020002'),(226,1,'en','Bootstrap4GridColumnPlugin','2022-01-22 04:03:17.394048','2022-01-22 04:09:42.854885',216,2,3,1,'000D00020002'),(227,0,'en','Bootstrap4PicturePlugin','2022-01-22 04:04:00.447762','2022-01-22 04:09:42.870887',226,2,4,0,'000D000200020001'),(228,2,'en','Bootstrap4GridColumnPlugin','2022-01-22 03:52:56.041057','2022-01-22 04:09:42.886887',216,2,3,2,'000D00020003'),(229,0,'en','StylePlugin','2022-01-22 04:01:37.779442','2022-01-22 04:09:42.902892',228,2,4,2,'000D000200030001'),(230,0,'en','TextPlugin','2022-01-22 03:53:43.949496','2022-01-22 04:09:43.096125',229,2,5,1,'000D0002000300010001'),(231,0,'en','IconPlugin','2022-01-22 03:56:13.669691','2022-01-22 04:09:42.934888',230,2,6,0,'000D00020003000100010001'),(232,1,'en','TextPlugin','2022-01-22 03:55:00.112702','2022-01-22 04:09:43.112126',229,2,5,0,'000D0002000300010002'),(233,1,'en','StylePlugin','2022-01-22 04:01:37.779442','2022-01-22 04:09:42.968126',228,2,4,2,'000D000200030002'),(234,0,'en','TextPlugin','2022-01-22 03:53:43.949496','2022-01-22 04:09:43.120125',233,2,5,1,'000D0002000300020001'),(235,0,'en','IconPlugin','2022-01-22 03:56:13.669691','2022-01-22 04:09:43.000127',234,2,6,0,'000D00020003000200010001'),(236,1,'en','TextPlugin','2022-01-22 03:55:00.112702','2022-01-22 04:09:43.136123',233,2,5,0,'000D0002000300020002'),(237,6,'en','StylePlugin','2022-01-22 04:12:54.783450','2022-01-22 05:01:07.720592',NULL,2,1,3,'000E'),(240,0,'en','StylePlugin','2022-01-22 01:59:44.428262','2022-01-22 04:14:04.959132',237,2,2,2,'000E0001'),(241,0,'en','TextPlugin','2022-01-22 01:59:54.936721','2022-01-22 04:14:38.872459',240,2,3,0,'000E00010001'),(242,1,'en','Bootstrap4PicturePlugin','2022-01-22 04:15:59.908207','2022-01-22 04:17:59.997346',240,2,3,0,'000E00010002'),(243,1,'en','Bootstrap4GridRowPlugin','2022-01-22 04:53:01.521056','2022-01-22 04:53:01.526203',237,2,2,3,'000E0002'),(244,0,'en','Bootstrap4GridColumnPlugin','2022-01-22 04:55:00.460892','2022-01-22 04:55:00.509890',243,2,3,1,'000E00020001'),(249,0,'en','StylePlugin','2022-01-22 04:01:37.779442','2022-01-22 04:56:21.980450',244,2,4,2,'000E000200010001'),(250,0,'en','TextPlugin','2022-01-22 03:53:43.949496','2022-01-22 04:56:22.268284',249,2,5,1,'000E0002000100010001'),(251,0,'en','IconPlugin','2022-01-22 03:56:13.669691','2022-01-22 04:56:22.166249',250,2,6,0,'000E00020001000100010001'),(252,1,'en','TextPlugin','2022-01-22 03:55:00.112702','2022-01-22 04:56:22.283238',249,2,5,0,'000E0002000100010002'),(258,1,'en','Bootstrap4GridColumnPlugin','2022-01-22 04:55:00.460892','2022-01-22 04:56:37.241259',243,2,3,1,'000E00020002'),(259,0,'en','StylePlugin','2022-01-22 04:01:37.779442','2022-01-22 04:56:37.254260',258,2,4,2,'000E000200020001'),(260,0,'en','TextPlugin','2022-01-22 03:53:43.949496','2022-01-22 04:56:37.312257',259,2,5,1,'000E0002000200010001'),(261,0,'en','IconPlugin','2022-01-22 03:56:13.669691','2022-01-22 04:56:37.275260',260,2,6,0,'000E00020002000100010001'),(262,1,'en','TextPlugin','2022-01-22 03:55:00.112702','2022-01-22 04:56:37.322259',259,2,5,0,'000E0002000200010002'),(268,2,'en','Bootstrap4GridColumnPlugin','2022-01-22 04:55:00.460892','2022-01-22 04:56:43.642368',243,2,3,1,'000E00020003'),(269,0,'en','StylePlugin','2022-01-22 04:01:37.779442','2022-01-22 04:56:43.654371',268,2,4,2,'000E000200030001'),(270,0,'en','TextPlugin','2022-01-22 03:53:43.949496','2022-01-22 04:56:43.715371',269,2,5,1,'000E0002000300010001'),(271,0,'en','IconPlugin','2022-01-22 03:56:13.669691','2022-01-22 04:56:43.676881',270,2,6,0,'000E00020003000100010001'),(272,1,'en','TextPlugin','2022-01-22 03:55:00.112702','2022-01-22 04:56:43.725423',269,2,5,0,'000E0002000300010002'),(274,2,'en','StylePlugin','2022-01-22 05:02:07.808800','2022-01-22 05:02:07.814764',237,2,2,1,'000E0003'),(275,0,'en','TextPlugin','2022-01-22 05:02:29.488962','2022-01-22 05:02:51.201822',274,2,3,0,'000E00030001'),(297,1,'en','StylePlugin','2022-01-22 01:55:37.747169','2022-01-22 05:19:18.213115',55,2,2,5,'00050003'),(298,1,'en','TextPlugin','2022-01-21 20:17:29.641532','2022-01-22 05:15:04.522560',297,2,3,0,'000500030001'),(299,4,'en','StylePlugin','2022-01-22 01:44:42.496552','2022-01-22 05:15:04.440133',297,2,3,1,'000500030002'),(300,0,'en','Bootstrap4PicturePlugin','2022-01-21 22:33:37.472670','2022-01-22 05:15:04.452919',299,2,4,0,'0005000300020001'),(301,3,'en','Bootstrap4PicturePlugin','2022-01-21 22:30:26.066093','2022-01-22 05:15:04.468988',297,2,3,0,'000500030003'),(302,2,'en','Bootstrap4PicturePlugin','2022-01-21 22:29:29.600723','2022-01-22 05:15:04.485714',297,2,3,0,'000500030004'),(303,5,'en','TextPlugin','2022-01-21 22:35:20.114684','2022-01-22 05:15:04.539879',297,2,3,0,'000500030005'),(307,0,'en','Bootstrap4PicturePlugin','2022-01-21 22:44:22.393771','2022-01-22 05:15:58.470001',55,2,2,0,'00050004'),(308,7,'en','StylePlugin','2022-01-22 05:21:08.061521','2022-01-22 05:53:06.686231',NULL,2,1,2,'000G'),(311,0,'en','StylePlugin','2022-01-22 01:59:44.428262','2022-01-22 05:21:41.136073',308,2,2,1,'000G0001'),(312,0,'en','TextPlugin','2022-01-22 01:59:54.936721','2022-01-22 05:23:30.455047',311,2,3,0,'000G00010001'),(340,1,'en','Bootstrap4CarouselPlugin','2022-01-22 05:49:58.459448','2022-01-22 06:06:36.991818',308,2,2,4,'000G0003'),(345,0,'en','Bootstrap4CarouselSlidePlugin','2022-01-22 05:54:57.033285','2022-01-22 05:54:57.045287',340,2,3,0,'000G00030001'),(347,1,'en','Bootstrap4CarouselSlidePlugin','2022-01-22 05:54:57.033285','2022-01-22 05:56:09.925514',340,2,3,0,'000G00030002'),(348,2,'en','Bootstrap4CarouselSlidePlugin','2022-01-22 05:54:57.033285','2022-01-22 05:56:12.655661',340,2,3,0,'000G00030003'),(349,3,'en','Bootstrap4CarouselSlidePlugin','2022-01-22 05:54:57.033285','2022-01-22 05:56:14.531200',340,2,3,0,'000G00030004'),(350,8,'en','StylePlugin','2022-01-22 06:00:11.837064','2022-01-22 06:03:08.222858',NULL,2,1,2,'000I'),(353,0,'en','StylePlugin','2022-01-22 01:59:44.428262','2022-01-22 06:00:45.453279',350,2,2,1,'000I0001'),(354,0,'en','TextPlugin','2022-01-22 01:59:54.936721','2022-01-22 06:01:01.357913',353,2,3,0,'000I00010001'),(355,1,'en','Bootstrap4CarouselPlugin','2022-01-22 06:06:26.334581','2022-01-22 06:09:12.885966',350,2,2,3,'000I0002'),(356,0,'en','Bootstrap4CarouselSlidePlugin','2022-01-22 06:08:34.450220','2022-01-22 06:27:58.462125',355,2,3,0,'000I00020001'),(358,1,'en','Bootstrap4CarouselSlidePlugin','2022-01-22 06:08:34.450220','2022-01-22 06:13:14.656922',355,2,3,0,'000I00020002'),(359,2,'en','Bootstrap4CarouselSlidePlugin','2022-01-22 06:08:34.450220','2022-01-22 06:14:36.011839',355,2,3,0,'000I00020003'),(367,9,'en','StylePlugin','2022-01-22 06:00:11.837064','2022-01-22 06:15:56.292770',NULL,2,1,1,'000K'),(368,0,'en','StylePlugin','2022-01-22 01:59:44.428262','2022-01-22 06:15:40.669855',367,2,2,3,'000K0001'),(369,0,'en','TextPlugin','2022-01-22 01:59:54.936721','2022-01-22 06:25:04.812292',368,2,3,0,'000K00010001'),(375,1,'en','Bootstrap4PicturePlugin','2022-01-21 22:29:29.600723','2022-01-22 06:25:37.735938',368,2,3,0,'000K00010002'),(376,3,'en','Bootstrap4PicturePlugin','2022-01-21 22:30:26.066093','2022-01-22 06:25:46.938185',NULL,1,1,0,'000L'),(377,2,'en','Bootstrap4PicturePlugin','2022-01-21 22:30:26.066093','2022-01-22 06:25:52.535382',368,2,3,0,'000K00010003');
/*!40000 ALTER TABLE `cms_cmsplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_globalpagepermission`
--

DROP TABLE IF EXISTS `cms_globalpagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_globalpagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `can_recover_page` tinyint(1) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_globalpagepermission_group_id_991b4733_fk_auth_group_id` (`group_id`),
  KEY `cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cms_globalpagepermission_group_id_991b4733_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_globalpagepermission`
--

LOCK TABLES `cms_globalpagepermission` WRITE;
/*!40000 ALTER TABLE `cms_globalpagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_globalpagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_globalpagepermission_sites`
--

DROP TABLE IF EXISTS `cms_globalpagepermission_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_globalpagepermission_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `globalpagepermission_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_globalpagepermission_globalpagepermission_id__db684f41_uniq` (`globalpagepermission_id`,`site_id`),
  KEY `cms_globalpagepermis_site_id_00460b53_fk_django_si` (`site_id`),
  CONSTRAINT `cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa` FOREIGN KEY (`globalpagepermission_id`) REFERENCES `cms_globalpagepermission` (`id`),
  CONSTRAINT `cms_globalpagepermis_site_id_00460b53_fk_django_si` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_globalpagepermission_sites`
--

LOCK TABLES `cms_globalpagepermission_sites` WRITE;
/*!40000 ALTER TABLE `cms_globalpagepermission_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_globalpagepermission_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page`
--

DROP TABLE IF EXISTS `cms_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) NOT NULL,
  `changed_by` varchar(255) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `changed_date` datetime(6) NOT NULL,
  `publication_date` datetime(6) DEFAULT NULL,
  `publication_end_date` datetime(6) DEFAULT NULL,
  `in_navigation` tinyint(1) NOT NULL,
  `soft_root` tinyint(1) NOT NULL,
  `reverse_id` varchar(40) DEFAULT NULL,
  `navigation_extenders` varchar(80) DEFAULT NULL,
  `template` varchar(100) NOT NULL,
  `login_required` tinyint(1) NOT NULL,
  `limit_visibility_in_menu` smallint(6) DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL,
  `application_urls` varchar(200) DEFAULT NULL,
  `application_namespace` varchar(200) DEFAULT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `xframe_options` int(11) NOT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  `is_page_type` tinyint(1) NOT NULL,
  `node_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_page_node_id_publisher_is_draft_c1293d6a_uniq` (`node_id`,`publisher_is_draft`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  KEY `cms_page_publication_date_684fabf7` (`publication_date`),
  KEY `cms_page_publication_end_date_12a0c46a` (`publication_end_date`),
  KEY `cms_page_in_navigation_01c24279` (`in_navigation`),
  KEY `cms_page_soft_root_51efccbe` (`soft_root`),
  KEY `cms_page_reverse_id_ffc9ede2` (`reverse_id`),
  KEY `cms_page_navigation_extenders_c24af8dd` (`navigation_extenders`),
  KEY `cms_page_limit_visibility_in_menu_30db6aa6` (`limit_visibility_in_menu`),
  KEY `cms_page_is_home_edadca07` (`is_home`),
  KEY `cms_page_application_urls_9ef47497` (`application_urls`),
  KEY `cms_page_publisher_is_draft_141cba60` (`publisher_is_draft`),
  CONSTRAINT `cms_page_node_id_c87b85a9_fk_cms_treenode_id` FOREIGN KEY (`node_id`) REFERENCES `cms_treenode` (`id`),
  CONSTRAINT `cms_page_publisher_public_id_d619fca0_fk_cms_page_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page`
--

LOCK TABLES `cms_page` WRITE;
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;
INSERT INTO `cms_page` VALUES (1,'memadd','memadd','2022-01-18 10:03:14.315544','2022-01-21 19:50:57.636542','2022-01-18 10:03:14.532776',NULL,0,0,NULL,NULL,'fullwidth.html',0,NULL,1,NULL,NULL,1,'en',0,2,0,1),(2,'memadd','memadd','2022-01-18 10:03:14.532776','2022-01-18 10:03:14.661977','2022-01-18 10:03:14.532776',NULL,1,0,NULL,NULL,'INHERIT',0,NULL,1,NULL,NULL,0,'en',0,1,0,1),(3,'memadd','memadd','2022-01-18 11:30:58.479951','2022-01-18 11:30:58.479951',NULL,NULL,1,0,NULL,NULL,'INHERIT',0,NULL,0,NULL,NULL,1,'en',0,NULL,0,2),(4,'memadd','memadd','2022-01-19 13:14:03.636842','2022-01-19 13:14:03.636842',NULL,NULL,1,0,NULL,NULL,'INHERIT',0,NULL,0,NULL,NULL,1,'en',0,NULL,0,3),(5,'memadd','memadd','2022-01-19 13:15:47.604028','2022-01-19 13:15:47.604028',NULL,NULL,1,0,NULL,NULL,'INHERIT',0,NULL,0,NULL,NULL,1,'en',0,NULL,0,4),(6,'memadd','memadd','2022-01-19 13:16:13.623219','2022-01-19 13:16:13.623219',NULL,NULL,1,0,NULL,NULL,'INHERIT',0,NULL,0,NULL,NULL,1,'en',0,NULL,0,5),(7,'memadd','memadd','2022-01-19 13:16:38.459515','2022-01-19 13:16:38.459515',NULL,NULL,1,0,NULL,NULL,'INHERIT',0,NULL,0,NULL,NULL,1,'en',0,NULL,0,6),(8,'memadd','memadd','2022-01-19 13:17:01.794128','2022-01-19 13:17:01.794128',NULL,NULL,1,0,NULL,NULL,'INHERIT',0,NULL,0,NULL,NULL,1,'en',0,NULL,0,7);
/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page_placeholders`
--

DROP TABLE IF EXISTS `cms_page_placeholders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_page_placeholders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `placeholder_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq` (`page_id`,`placeholder_id`),
  KEY `cms_page_placeholder_placeholder_id_6b120886_fk_cms_place` (`placeholder_id`),
  CONSTRAINT `cms_page_placeholder_placeholder_id_6b120886_fk_cms_place` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page_placeholders`
--

LOCK TABLES `cms_page_placeholders` WRITE;
/*!40000 ALTER TABLE `cms_page_placeholders` DISABLE KEYS */;
INSERT INTO `cms_page_placeholders` VALUES (1,1,2),(2,2,3),(8,3,9),(3,4,4),(4,5,5),(5,6,6),(6,7,7),(7,8,8);
/*!40000 ALTER TABLE `cms_page_placeholders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pagepermission`
--

DROP TABLE IF EXISTS `cms_pagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `grant_on` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_pagepermission_group_id_af5af193_fk_auth_group_id` (`group_id`),
  KEY `cms_pagepermission_page_id_0ae9a163_fk_cms_page_id` (`page_id`),
  KEY `cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cms_pagepermission_group_id_af5af193_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `cms_pagepermission_page_id_0ae9a163_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pagepermission`
--

LOCK TABLES `cms_pagepermission` WRITE;
/*!40000 ALTER TABLE `cms_pagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pageuser`
--

DROP TABLE IF EXISTS `cms_pageuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pageuser` (
  `user_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  KEY `cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_pageuser_user_ptr_id_b3d65592_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pageuser`
--

LOCK TABLES `cms_pageuser` WRITE;
/*!40000 ALTER TABLE `cms_pageuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pageuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pageusergroup`
--

DROP TABLE IF EXISTS `cms_pageusergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pageusergroup` (
  `group_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`group_ptr_id`),
  KEY `cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id` FOREIGN KEY (`group_ptr_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pageusergroup`
--

LOCK TABLES `cms_pageusergroup` WRITE;
/*!40000 ALTER TABLE `cms_pageusergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pageusergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_placeholder`
--

DROP TABLE IF EXISTS `cms_placeholder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_placeholder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slot` varchar(255) NOT NULL,
  `default_width` smallint(5) unsigned DEFAULT NULL CHECK (`default_width` >= 0),
  PRIMARY KEY (`id`),
  KEY `cms_placeholder_slot_0bc04d21` (`slot`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_placeholder`
--

LOCK TABLES `cms_placeholder` WRITE;
/*!40000 ALTER TABLE `cms_placeholder` DISABLE KEYS */;
INSERT INTO `cms_placeholder` VALUES (1,'clipboard',NULL),(2,'content',NULL),(3,'content',NULL),(4,'content',NULL),(5,'content',NULL),(6,'content',NULL),(7,'content',NULL),(8,'content',NULL),(9,'content',NULL);
/*!40000 ALTER TABLE `cms_placeholder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_placeholderreference`
--

DROP TABLE IF EXISTS `cms_placeholderreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_placeholderreference` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `placeholder_ref_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_placeholderreference_placeholder_ref_id_244759b1` (`placeholder_ref_id`),
  CONSTRAINT `cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place` FOREIGN KEY (`placeholder_ref_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_placeholderreference`
--

LOCK TABLES `cms_placeholderreference` WRITE;
/*!40000 ALTER TABLE `cms_placeholderreference` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_placeholderreference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_staticplaceholder`
--

DROP TABLE IF EXISTS `cms_staticplaceholder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_staticplaceholder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `dirty` tinyint(1) NOT NULL,
  `creation_method` varchar(20) NOT NULL,
  `draft_id` int(11) DEFAULT NULL,
  `public_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_staticplaceholder_code_site_id_21ba079c_uniq` (`code`,`site_id`),
  KEY `cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id` (`site_id`),
  KEY `cms_staticplaceholder_draft_id_5aee407b` (`draft_id`),
  KEY `cms_staticplaceholder_public_id_876aaa66` (`public_id`),
  CONSTRAINT `cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id` FOREIGN KEY (`draft_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id` FOREIGN KEY (`public_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_staticplaceholder`
--

LOCK TABLES `cms_staticplaceholder` WRITE;
/*!40000 ALTER TABLE `cms_staticplaceholder` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_staticplaceholder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_title`
--

DROP TABLE IF EXISTS `cms_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(15) NOT NULL,
  `title` varchar(255) NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `has_url_overwrite` tinyint(1) NOT NULL,
  `redirect` varchar(2048) DEFAULT NULL,
  `creation_date` datetime(6) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `publisher_state` smallint(6) NOT NULL,
  `page_id` int(11) NOT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_title_language_page_id_61aaf084_uniq` (`language`,`page_id`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  KEY `cms_title_page_id_5fade2a3_fk_cms_page_id` (`page_id`),
  KEY `cms_title_language_50a0dfa1` (`language`),
  KEY `cms_title_slug_4947d146` (`slug`),
  KEY `cms_title_path_c484314c` (`path`),
  KEY `cms_title_has_url_overwrite_ecf27bb9` (`has_url_overwrite`),
  KEY `cms_title_publisher_is_draft_95874c88` (`publisher_is_draft`),
  KEY `cms_title_publisher_state_9a952b0f` (`publisher_state`),
  CONSTRAINT `cms_title_page_id_5fade2a3_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `cms_title_publisher_public_id_003a2702_fk_cms_title_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_title` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_title`
--

LOCK TABLES `cms_title` WRITE;
/*!40000 ALTER TABLE `cms_title` DISABLE KEYS */;
INSERT INTO `cms_title` VALUES (1,'en','Home','','','','boubyan-bank','',0,NULL,'2022-01-18 10:03:14.363555',1,1,1,1,2),(2,'en','Boubyan Bank',NULL,NULL,NULL,'boubyan-bank','',0,NULL,'2022-01-18 10:03:14.363555',1,0,0,2,1),(3,'en','Accounts',NULL,NULL,NULL,'accounts','accounts',0,NULL,'2022-01-18 11:30:58.480944',0,1,1,3,NULL),(4,'en','Cards',NULL,NULL,NULL,'cards','cards',0,NULL,'2022-01-19 13:14:03.670089',0,1,1,4,NULL),(5,'en','Borrowing',NULL,NULL,NULL,'borrowing','borrowing',0,NULL,'2022-01-19 13:15:47.675142',0,1,1,5,NULL),(6,'en','Investing',NULL,NULL,NULL,'investing','investing',0,NULL,'2022-01-19 13:16:13.624218',0,1,1,6,NULL),(7,'en','Ways to bank',NULL,NULL,NULL,'ways-bank','ways-bank',0,NULL,'2022-01-19 13:16:38.461021',0,1,1,7,NULL),(8,'en','Discounts & offers',NULL,NULL,NULL,'discounts-offers','discounts-offers',0,NULL,'2022-01-19 13:17:01.795173',0,1,1,8,NULL);
/*!40000 ALTER TABLE `cms_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_treenode`
--

DROP TABLE IF EXISTS `cms_treenode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_treenode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `depth` int(10) unsigned NOT NULL CHECK (`depth` >= 0),
  `numchild` int(10) unsigned NOT NULL CHECK (`numchild` >= 0),
  `parent_id` int(11) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id` (`parent_id`),
  KEY `cms_treenode_site_id_d3f46985_fk_django_site_id` (`site_id`),
  CONSTRAINT `cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_treenode` (`id`),
  CONSTRAINT `cms_treenode_site_id_d3f46985_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_treenode`
--

LOCK TABLES `cms_treenode` WRITE;
/*!40000 ALTER TABLE `cms_treenode` DISABLE KEYS */;
INSERT INTO `cms_treenode` VALUES (1,'0001',1,0,NULL,1),(2,'0002',1,0,NULL,1),(3,'0003',1,0,NULL,1),(4,'0004',1,0,NULL,1),(5,'0005',1,0,NULL,1),(6,'0006',1,0,NULL,1),(7,'0007',1,0,NULL,1);
/*!40000 ALTER TABLE `cms_treenode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_urlconfrevision`
--

DROP TABLE IF EXISTS `cms_urlconfrevision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_urlconfrevision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `revision` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_urlconfrevision`
--

LOCK TABLES `cms_urlconfrevision` WRITE;
/*!40000 ALTER TABLE `cms_urlconfrevision` DISABLE KEYS */;
INSERT INTO `cms_urlconfrevision` VALUES (1,'a2634590-8c24-4a8a-acbc-2272082562a5');
/*!40000 ALTER TABLE `cms_urlconfrevision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_usersettings`
--

DROP TABLE IF EXISTS `cms_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(10) NOT NULL,
  `clipboard_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id` (`clipboard_id`),
  CONSTRAINT `cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id` FOREIGN KEY (`clipboard_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_usersettings_user_id_09633b2d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_usersettings`
--

LOCK TABLES `cms_usersettings` WRITE;
/*!40000 ALTER TABLE `cms_usersettings` DISABLE KEYS */;
INSERT INTO `cms_usersettings` VALUES (1,'en',1,1);
/*!40000 ALTER TABLE `cms_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-01-18 11:22:12.992171','1','Home',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',2,1),(2,'2022-01-21 19:58:13.162559','2','2',3,'',49,1),(3,'2022-01-21 20:28:19.641847','13','13',3,'',56,1),(4,'2022-01-21 20:28:43.395895','2','google palayjpg.jpg',3,'',30,1),(5,'2022-01-21 22:27:09.252023','14','14',3,'',56,1),(6,'2022-01-21 22:28:31.113081','15','cotainer2',3,'',65,1),(7,'2022-01-21 22:38:36.544611','6','[removal.ai]_tmp-615c690289566.png',3,'',30,1),(8,'2022-01-21 22:41:00.603266','5','[removal.ai]_tmp-615c690289566.png',3,'',30,1),(9,'2022-01-21 22:44:04.324627','21','21',3,'',46,1),(10,'2022-01-21 22:48:55.189376','7','main.jpg',3,'',30,1),(11,'2022-01-22 01:19:35.654067','33','1',3,'',65,1),(12,'2022-01-22 01:19:44.788095','39','39',3,'',56,1),(13,'2022-01-22 01:28:45.166101','11','1',3,'',65,1),(14,'2022-01-22 01:32:11.736734','47','The power of...',3,'',24,1),(15,'2022-01-22 01:32:15.146159','48','48',3,'',56,1),(16,'2022-01-22 01:32:18.983915','51','BEST MOBILE BANKING...',3,'',24,1),(17,'2022-01-22 01:32:23.754362','50','50',3,'',56,1),(18,'2022-01-22 01:32:27.483570','49','49',3,'',56,1),(19,'2022-01-22 01:36:30.417697','46','46',3,'',47,1),(20,'2022-01-22 01:54:03.834727','1','cotainer',3,'',65,1),(21,'2022-01-22 01:54:57.248304','52','main',3,'',65,1),(22,'2022-01-22 01:56:41.908515','53','img-co',3,'',65,1),(23,'2022-01-22 02:06:14.438113','68','Empowering you View...',3,'',24,1),(24,'2022-01-22 02:09:37.654292','71','',3,'',24,1),(25,'2022-01-22 02:20:02.455438','97','97',3,'',49,1),(26,'2022-01-22 05:01:07.919716','273','273',3,'',51,1),(27,'2022-01-22 05:09:51.866448','23','23',3,'',56,1),(28,'2022-01-22 05:15:10.433894','9','9',3,'',49,1),(29,'2022-01-22 05:16:04.195581','288','div',3,'',65,1),(30,'2022-01-22 05:17:34.807158','306','div',3,'',65,1),(31,'2022-01-22 05:53:07.037232','313','div',3,'',65,1),(32,'2022-01-22 06:15:56.540809','370','370',3,'',39,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (8,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(5,'auth','user'),(35,'bootstrap4_alerts','bootstrap4alerts'),(36,'bootstrap4_badge','bootstrap4badge'),(37,'bootstrap4_card','bootstrap4card'),(38,'bootstrap4_card','bootstrap4cardinner'),(39,'bootstrap4_carousel','bootstrap4carousel'),(40,'bootstrap4_carousel','bootstrap4carouselslide'),(41,'bootstrap4_collapse','bootstrap4collapse'),(42,'bootstrap4_collapse','bootstrap4collapsecontainer'),(43,'bootstrap4_collapse','bootstrap4collapsetrigger'),(44,'bootstrap4_content','bootstrap4blockquote'),(45,'bootstrap4_content','bootstrap4code'),(46,'bootstrap4_content','bootstrap4figure'),(47,'bootstrap4_grid','bootstrap4gridcolumn'),(48,'bootstrap4_grid','bootstrap4gridcontainer'),(49,'bootstrap4_grid','bootstrap4gridrow'),(50,'bootstrap4_jumbotron','bootstrap4jumbotron'),(51,'bootstrap4_link','bootstrap4link'),(52,'bootstrap4_listgroup','bootstrap4listgroup'),(53,'bootstrap4_listgroup','bootstrap4listgroupitem'),(54,'bootstrap4_media','bootstrap4media'),(55,'bootstrap4_media','bootstrap4mediabody'),(56,'bootstrap4_picture','bootstrap4picture'),(57,'bootstrap4_tabs','bootstrap4tab'),(58,'bootstrap4_tabs','bootstrap4tabitem'),(59,'bootstrap4_utilities','bootstrap4spacing'),(11,'cms','aliaspluginmodel'),(10,'cms','cmsplugin'),(12,'cms','globalpagepermission'),(2,'cms','page'),(13,'cms','pagepermission'),(21,'cms','pagetype'),(14,'cms','pageuser'),(15,'cms','pageusergroup'),(1,'cms','placeholder'),(16,'cms','placeholderreference'),(17,'cms','staticplaceholder'),(18,'cms','title'),(22,'cms','treenode'),(20,'cms','urlconfrevision'),(19,'cms','usersettings'),(6,'contenttypes','contenttype'),(60,'djangocms_file','file'),(61,'djangocms_file','folder'),(66,'djangocms_googlemap','googlemap'),(67,'djangocms_googlemap','googlemapmarker'),(68,'djangocms_googlemap','googlemaproute'),(62,'djangocms_icon','icon'),(63,'djangocms_link','link'),(64,'djangocms_picture','picture'),(65,'djangocms_style','style'),(24,'djangocms_text_ckeditor','text'),(69,'djangocms_video','videoplayer'),(70,'djangocms_video','videosource'),(71,'djangocms_video','videotrack'),(32,'easy_thumbnails','source'),(33,'easy_thumbnails','thumbnail'),(34,'easy_thumbnails','thumbnaildimensions'),(25,'filer','clipboard'),(26,'filer','clipboarditem'),(27,'filer','file'),(28,'filer','folder'),(29,'filer','folderpermission'),(30,'filer','image'),(31,'filer','thumbnailoption'),(23,'menus','cachekey'),(7,'sessions','session'),(9,'sites','site');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-01-17 13:17:35.471148'),(2,'auth','0001_initial','2022-01-17 13:17:37.083771'),(3,'admin','0001_initial','2022-01-17 13:17:43.633724'),(4,'admin','0002_logentry_remove_auto_add','2022-01-17 13:17:44.925478'),(5,'admin','0003_logentry_add_action_flag_choices','2022-01-17 13:17:44.994018'),(6,'contenttypes','0002_remove_content_type_name','2022-01-17 13:17:45.973421'),(7,'auth','0002_alter_permission_name_max_length','2022-01-17 13:17:46.639189'),(8,'auth','0003_alter_user_email_max_length','2022-01-17 13:17:47.295369'),(9,'auth','0004_alter_user_username_opts','2022-01-17 13:17:47.369402'),(10,'auth','0005_alter_user_last_login_null','2022-01-17 13:17:48.044601'),(11,'auth','0006_require_contenttypes_0002','2022-01-17 13:17:48.075794'),(12,'auth','0007_alter_validators_add_error_messages','2022-01-17 13:17:48.144956'),(13,'auth','0008_alter_user_username_max_length','2022-01-17 13:17:48.531742'),(14,'auth','0009_alter_user_last_name_max_length','2022-01-17 13:17:48.902914'),(15,'auth','0010_alter_group_name_max_length','2022-01-17 13:17:49.590564'),(16,'auth','0011_update_proxy_permissions','2022-01-17 13:17:49.653106'),(17,'auth','0012_alter_user_first_name_max_length','2022-01-17 13:17:50.054875'),(18,'sites','0001_initial','2022-01-17 13:17:50.394114'),(19,'cms','0001_initial','2022-01-17 13:17:53.559142'),(20,'cms','0002_auto_20140816_1918','2022-01-17 13:18:15.938604'),(21,'cms','0003_auto_20140926_2347','2022-01-17 13:18:31.248462'),(22,'cms','0004_auto_20140924_1038','2022-01-17 13:18:34.969583'),(23,'cms','0005_auto_20140924_1039','2022-01-17 13:18:35.054674'),(24,'cms','0006_auto_20140924_1110','2022-01-17 13:18:38.376246'),(25,'cms','0007_auto_20141028_1559','2022-01-17 13:18:38.772338'),(26,'cms','0008_auto_20150208_2149','2022-01-17 13:18:39.131656'),(27,'cms','0008_auto_20150121_0059','2022-01-17 13:18:40.099711'),(28,'cms','0009_merge','2022-01-17 13:18:40.184579'),(29,'cms','0010_migrate_use_structure','2022-01-17 13:18:40.485226'),(30,'cms','0011_auto_20150419_1006','2022-01-17 13:18:42.195567'),(31,'cms','0012_auto_20150607_2207','2022-01-17 13:18:45.716980'),(32,'cms','0013_urlconfrevision','2022-01-17 13:18:46.056462'),(33,'cms','0014_auto_20160404_1908','2022-01-17 13:18:46.119040'),(34,'cms','0015_auto_20160421_0000','2022-01-17 13:18:47.664294'),(35,'cms','0016_auto_20160608_1535','2022-01-17 13:18:50.038825'),(36,'bootstrap4_alerts','0001_initial','2022-01-17 13:18:50.547215'),(37,'bootstrap4_badge','0001_initial','2022-01-17 13:18:51.468832'),(38,'bootstrap4_card','0001_initial','2022-01-17 13:18:52.741548'),(39,'filer','0001_initial','2022-01-17 13:18:59.935698'),(40,'filer','0002_auto_20150606_2003','2022-01-17 13:19:06.662243'),(41,'filer','0003_thumbnailoption','2022-01-17 13:19:06.932150'),(42,'filer','0004_auto_20160328_1434','2022-01-17 13:19:08.084185'),(43,'filer','0005_auto_20160623_1425','2022-01-17 13:19:11.406247'),(44,'filer','0006_auto_20160623_1627','2022-01-17 13:19:12.427674'),(45,'filer','0007_auto_20161016_1055','2022-01-17 13:19:12.505883'),(46,'filer','0008_auto_20171117_1313','2022-01-17 13:19:12.606619'),(47,'filer','0009_auto_20171220_1635','2022-01-17 13:19:13.666871'),(48,'filer','0010_auto_20180414_2058','2022-01-17 13:19:15.466685'),(49,'filer','0011_auto_20190418_0137','2022-01-17 13:19:17.221793'),(50,'bootstrap4_carousel','0001_initial','2022-01-17 13:19:17.857623'),(51,'bootstrap4_carousel','0002_bootstrap4carousel_carousel_aspect_ratio','2022-01-17 13:19:21.315628'),(52,'bootstrap4_carousel','0003_auto_20180610_1102','2022-01-17 13:19:21.717462'),(53,'bootstrap4_carousel','0004_auto_20190703_0831','2022-01-17 13:19:22.436864'),(54,'bootstrap4_collapse','0001_initial','2022-01-17 13:19:23.876804'),(55,'bootstrap4_content','0001_initial','2022-01-17 13:19:27.226539'),(56,'bootstrap4_content','0002_added_figure','2022-01-17 13:19:29.009452'),(57,'bootstrap4_grid','0001_initial','2022-01-17 13:19:30.760404'),(58,'bootstrap4_grid','0002_auto_20180709_0808','2022-01-17 13:19:34.266259'),(59,'bootstrap4_grid','0003_migrate_column_size','2022-01-17 13:19:34.452591'),(60,'bootstrap4_grid','0004_remove_bootstrap4gridcolumn_column_size','2022-01-17 13:19:34.823445'),(61,'bootstrap4_jumbotron','0001_initial','2022-01-17 13:19:35.186318'),(62,'bootstrap4_link','0001_initial','2022-01-17 13:19:36.113148'),(63,'bootstrap4_link','0002_add_icons','2022-01-17 13:19:38.725819'),(64,'bootstrap4_link','0003_icon_updates','2022-01-17 13:19:38.847811'),(65,'bootstrap4_link','0004_auto_20190703_0831','2022-01-17 13:19:39.613772'),(66,'bootstrap4_listgroup','0001_initial','2022-01-17 13:19:40.755616'),(67,'bootstrap4_media','0001_initial','2022-01-17 13:19:43.485859'),(68,'djangocms_picture','0001_initial','2022-01-17 13:19:46.143095'),(69,'djangocms_picture','0002_auto_20151018_1927','2022-01-17 13:19:48.257270'),(70,'djangocms_picture','0003_migrate_to_filer','2022-01-17 13:19:51.504692'),(71,'djangocms_picture','0004_adapt_fields','2022-01-17 13:20:08.186344'),(72,'djangocms_picture','0005_reset_null_values','2022-01-17 13:20:08.303301'),(73,'djangocms_picture','0006_remove_null_values','2022-01-17 13:20:11.684452'),(74,'djangocms_picture','0007_fix_alignment','2022-01-17 13:20:11.765365'),(75,'djangocms_picture','0008_picture_use_responsive_image','2022-01-17 13:20:12.385064'),(76,'bootstrap4_picture','0001_initial','2022-01-17 13:20:12.783716'),(77,'bootstrap4_picture','0002_bootstrap4picture_use_responsive_image','2022-01-17 13:20:16.976498'),(78,'bootstrap4_picture','0003_auto_20181212_1055','2022-01-17 13:20:17.194053'),(79,'bootstrap4_picture','0004_auto_20190703_0831','2022-01-17 13:20:19.269261'),(80,'bootstrap4_tabs','0001_initial','2022-01-17 13:20:19.945496'),(81,'bootstrap4_tabs','0002_auto_20180610_1106','2022-01-17 13:20:21.599239'),(82,'bootstrap4_utilities','0001_initial','2022-01-17 13:20:21.962990'),(83,'cms','0017_pagetype','2022-01-17 13:20:23.323002'),(84,'cms','0018_pagenode','2022-01-17 13:20:26.100568'),(85,'cms','0019_set_pagenode','2022-01-17 13:20:27.677256'),(86,'cms','0020_old_tree_cleanup','2022-01-17 13:20:34.010124'),(87,'cms','0021_auto_20180507_1432','2022-01-17 13:20:34.110602'),(88,'cms','0022_auto_20180620_1551','2022-01-17 13:20:34.264164'),(89,'djangocms_file','0001_initial','2022-01-17 13:20:35.051389'),(90,'djangocms_file','0002_auto_20151202_1551','2022-01-17 13:20:36.492107'),(91,'djangocms_file','0003_remove_related_name_for_cmsplugin_ptr','2022-01-17 13:20:38.147043'),(92,'djangocms_file','0004_set_related_name_for_cmsplugin_ptr','2022-01-17 13:20:39.359786'),(93,'djangocms_file','0005_auto_20160119_1534','2022-01-17 13:20:39.473913'),(94,'djangocms_file','0006_migrate_to_filer','2022-01-17 13:20:41.409181'),(95,'djangocms_file','0007_adapted_fields','2022-01-17 13:20:47.143611'),(96,'djangocms_file','0008_add_folder','2022-01-17 13:20:47.571476'),(97,'djangocms_file','0009_fixed_null_fields','2022-01-17 13:20:49.660788'),(98,'djangocms_file','0010_removed_null_fields','2022-01-17 13:20:51.110595'),(99,'djangocms_file','0011_auto_20181211_0357','2022-01-17 13:20:51.581550'),(100,'djangocms_googlemap','0001_initial','2022-01-17 13:20:52.035915'),(101,'djangocms_googlemap','0002_auto_20160622_1031','2022-01-17 13:20:54.547180'),(102,'djangocms_googlemap','0003_auto_20160825_1829','2022-01-17 13:20:54.645523'),(103,'djangocms_googlemap','0004_adapted_fields','2022-01-17 13:21:03.485361'),(104,'djangocms_googlemap','0005_create_nested_plugins','2022-01-17 13:21:04.805248'),(105,'djangocms_googlemap','0006_remove_fields','2022-01-17 13:21:07.771259'),(106,'djangocms_googlemap','0007_reset_null_values','2022-01-17 13:21:07.893363'),(107,'djangocms_googlemap','0008_removed_null_fields','2022-01-17 13:21:09.388391'),(108,'djangocms_googlemap','0009_googlemapmarker_icon','2022-01-17 13:21:10.221588'),(109,'djangocms_googlemap','0010_auto_20190718_1021','2022-01-17 13:21:12.070427'),(110,'djangocms_icon','0001_initial','2022-01-17 13:21:12.442356'),(111,'djangocms_icon','0002_auto_20190218_2017','2022-01-17 13:21:13.977793'),(112,'djangocms_link','0001_initial','2022-01-17 13:21:14.549919'),(113,'djangocms_link','0002_auto_20140929_1705','2022-01-17 13:21:16.157808'),(114,'djangocms_link','0003_auto_20150212_1310','2022-01-17 13:21:16.324583'),(115,'djangocms_link','0004_auto_20150708_1133','2022-01-17 13:21:16.920442'),(116,'djangocms_link','0005_auto_20151003_1710','2022-01-17 13:21:17.673249'),(117,'djangocms_link','0006_remove_related_name_for_cmsplugin_ptr','2022-01-17 13:21:18.937948'),(118,'djangocms_link','0007_set_related_name_for_cmsplugin_ptr','2022-01-17 13:21:20.105319'),(119,'djangocms_link','0008_link_attributes','2022-01-17 13:21:20.792401'),(120,'djangocms_link','0009_auto_20160705_1344','2022-01-17 13:21:20.862614'),(121,'djangocms_link','0010_adapted_fields','2022-01-17 13:21:26.391024'),(122,'djangocms_link','0011_fixed_null_values','2022-01-17 13:21:26.507485'),(123,'djangocms_link','0012_removed_null','2022-01-17 13:21:31.745923'),(124,'djangocms_link','0013_fix_hostname','2022-01-17 13:21:31.866234'),(125,'djangocms_link','0014_link_file_link','2022-01-17 13:21:33.566483'),(126,'djangocms_link','0015_auto_20190621_0407','2022-01-17 13:21:34.322617'),(127,'djangocms_picture','0009_auto_20181212_1003','2022-01-17 13:21:34.826729'),(128,'djangocms_picture','0010_auto_20190627_0432','2022-01-17 13:21:37.033491'),(129,'djangocms_picture','0011_auto_20190314_1536','2022-01-17 13:21:37.301145'),(130,'djangocms_style','0001_initial','2022-01-17 13:21:37.715399'),(131,'djangocms_style','0002_set_related_name_for_cmsplugin_ptr','2022-01-17 13:21:39.666577'),(132,'djangocms_style','0003_adapted_fields','2022-01-17 13:21:43.424135'),(133,'djangocms_style','0004_use_positive_small_integer_field','2022-01-17 13:21:55.720439'),(134,'djangocms_style','0005_reset_null_values','2022-01-17 13:21:55.907583'),(137,'djangocms_text_ckeditor','0001_initial','2022-01-17 13:21:58.271475'),(138,'djangocms_text_ckeditor','0002_remove_related_name_for_cmsplugin_ptr','2022-01-17 13:22:00.259824'),(139,'djangocms_text_ckeditor','0003_set_related_name_for_cmsplugin_ptr','2022-01-17 13:22:01.503590'),(140,'djangocms_text_ckeditor','0004_auto_20160706_1339','2022-01-17 13:22:01.666540'),(141,'djangocms_video','0001_initial','2022-01-17 13:22:02.326255'),(142,'djangocms_video','0002_set_related_name_for_cmsplugin_ptr','2022-01-17 13:22:04.406130'),(143,'djangocms_video','0003_field_adaptions','2022-01-17 13:22:10.818192'),(144,'djangocms_video','0004_move_to_attributes','2022-01-17 13:22:18.536729'),(145,'djangocms_video','0005_migrate_to_filer','2022-01-17 13:22:18.640110'),(146,'djangocms_video','0006_field_adaptions','2022-01-17 13:22:21.177651'),(147,'djangocms_video','0007_create_nested_plugin','2022-01-17 13:22:25.076841'),(148,'djangocms_video','0008_reset_null_values','2022-01-17 13:22:25.273167'),(149,'djangocms_video','0009_removed_null_values','2022-01-17 13:22:26.561525'),(150,'djangocms_video','0010_videoplayer_parameters','2022-01-17 13:22:27.390571'),(151,'easy_thumbnails','0001_initial','2022-01-17 13:22:28.857681'),(152,'easy_thumbnails','0002_thumbnaildimensions','2022-01-17 13:22:31.393566'),(153,'filer','0012_file_mime_type','2022-01-17 13:22:32.765453'),(154,'filer','0013_image_width_height_to_float','2022-01-17 13:22:34.229089'),(155,'filer','0014_folder_permission_choices','2022-01-17 13:22:34.374087'),(156,'menus','0001_initial','2022-01-17 13:22:34.646333'),(157,'sessions','0001_initial','2022-01-17 13:22:34.948137'),(158,'sites','0002_alter_domain_unique','2022-01-17 13:22:35.852212'),(159,'cms','0018_create_pagenode','2022-01-17 13:22:35.984197'),(160,'djangocms_style','0006_removed_null_fields','2022-01-20 16:53:40.605922'),(161,'djangocms_style','0007_style_template','2022-01-20 16:53:41.973794');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2yj7rag3432g5qmeptwyo268rlk0mobd','NTE5MmZiZmU4MGQ5YmRhMjI5N2I3OTVlYWNkMTFiMTdjNDI3Y2NiNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmMyNDhmNTliN2UwNzg2ZGRiZTVlOGNlYzcwMmIyNTAzMDE5MzhlIiwiY21zX3Rvb2xiYXJfZGlzYWJsZWQiOmZhbHNlLCJjbXNfZWRpdCI6dHJ1ZSwiY21zX3ByZXZpZXciOmZhbHNlLCJ3aXphcmRfd2l6YXJkX2NyZWF0ZV92aWV3Ijp7InN0ZXAiOiIwIiwic3RlcF9kYXRhIjp7fSwic3RlcF9maWxlcyI6e30sImV4dHJhX2RhdGEiOnt9fSwiZmlsZXJfbGFzdF9mb2xkZXJfaWQiOm51bGx9','2022-02-05 06:32:28.765953');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_file_file`
--

DROP TABLE IF EXISTS `djangocms_file_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_file_file` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `link_title` varchar(255) NOT NULL,
  `file_src_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  `show_file_size` tinyint(1) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_file_file_file_src_id_74ac14a5` (`file_src_id`),
  CONSTRAINT `djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id` FOREIGN KEY (`file_src_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_file_file`
--

LOCK TABLES `djangocms_file_file` WRITE;
/*!40000 ALTER TABLE `djangocms_file_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_file_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_file_folder`
--

DROP TABLE IF EXISTS `djangocms_file_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_file_folder` (
  `template` varchar(255) NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `show_file_size` tinyint(1) NOT NULL,
  `attributes` longtext NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `folder_src_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_file_folder_folder_src_id_9558406a` (`folder_src_id`),
  CONSTRAINT `djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id` FOREIGN KEY (`folder_src_id`) REFERENCES `filer_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_file_folder`
--

LOCK TABLES `djangocms_file_folder` WRITE;
/*!40000 ALTER TABLE `djangocms_file_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_file_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_googlemap_googlemap`
--

DROP TABLE IF EXISTS `djangocms_googlemap_googlemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_googlemap_googlemap` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `zoom` smallint(5) unsigned NOT NULL CHECK (`zoom` >= 0),
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `width` varchar(6) NOT NULL,
  `height` varchar(6) NOT NULL,
  `scrollwheel` tinyint(1) NOT NULL,
  `double_click_zoom` tinyint(1) NOT NULL,
  `draggable` tinyint(1) NOT NULL,
  `keyboard_shortcuts` tinyint(1) NOT NULL,
  `pan_control` tinyint(1) NOT NULL,
  `zoom_control` tinyint(1) NOT NULL,
  `street_view_control` tinyint(1) NOT NULL,
  `style` longtext NOT NULL,
  `fullscreen_control` tinyint(1) NOT NULL,
  `map_type_control` varchar(255) NOT NULL,
  `rotate_control` tinyint(1) NOT NULL,
  `scale_control` tinyint(1) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_googlemap_googlemap`
--

LOCK TABLES `djangocms_googlemap_googlemap` WRITE;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_googlemap_googlemapmarker`
--

DROP TABLE IF EXISTS `djangocms_googlemap_googlemapmarker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_googlemap_googlemapmarker` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `show_content` tinyint(1) NOT NULL,
  `info_content` longtext NOT NULL,
  `icon_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_googlemap_googlemapmarker_icon_id_3b103213` (`icon_id`),
  CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_googlemap__icon_id_3b103213_fk_filer_ima` FOREIGN KEY (`icon_id`) REFERENCES `filer_image` (`file_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_googlemap_googlemapmarker`
--

LOCK TABLES `djangocms_googlemap_googlemapmarker` WRITE;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemapmarker` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemapmarker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_googlemap_googlemaproute`
--

DROP TABLE IF EXISTS `djangocms_googlemap_googlemaproute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_googlemap_googlemaproute` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `travel_mode` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_googlemap_googlemaproute`
--

LOCK TABLES `djangocms_googlemap_googlemaproute` WRITE;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemaproute` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemaproute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_icon_icon`
--

DROP TABLE IF EXISTS `djangocms_icon_icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_icon_icon` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_icon_icon_cmsplugin_ptr_id_e04b5be4_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_icon_icon`
--

LOCK TABLES `djangocms_icon_icon` WRITE;
/*!40000 ALTER TABLE `djangocms_icon_icon` DISABLE KEYS */;
INSERT INTO `djangocms_icon_icon` VALUES (111,'fab fa-houzz','default','','{}'),(119,'fab fa-houzz','default','','{}'),(135,'fab fa-houzz','default','','{}'),(139,'fab fa-houzz','default','','{}'),(172,'fab fa-houzz','default','','{}'),(176,'fab fa-houzz','default','','{}'),(183,'fab fa-houzz','default','','{}'),(187,'fab fa-houzz','default','','{}'),(220,'fab fa-houzz','default','','{}'),(224,'fab fa-houzz','default','','{}'),(231,'fab fa-houzz','default','','{}'),(235,'fab fa-houzz','default','','{}'),(251,'fab fa-houzz','default','','{}'),(261,'fab fa-houzz','default','','{}'),(271,'fab fa-houzz','default','','{}');
/*!40000 ALTER TABLE `djangocms_icon_icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_link_link`
--

DROP TABLE IF EXISTS `djangocms_link_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_link_link` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `external_link` varchar(2040) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `mailto` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `internal_link_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  `file_link_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id` (`internal_link_id`),
  KEY `djangocms_link_link_file_link_id_c7869e4c` (`file_link_id`),
  CONSTRAINT `djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_link_link_file_link_id_c7869e4c_fk_filer_file_id` FOREIGN KEY (`file_link_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id` FOREIGN KEY (`internal_link_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_link_link`
--

LOCK TABLES `djangocms_link_link` WRITE;
/*!40000 ALTER TABLE `djangocms_link_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_link_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_picture_picture`
--

DROP TABLE IF EXISTS `djangocms_picture_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_picture_picture` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `link_url` varchar(2040) DEFAULT NULL,
  `alignment` varchar(255) NOT NULL,
  `link_page_id` int(11) DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `caption_text` longtext DEFAULT NULL,
  `link_attributes` longtext NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `use_automatic_scaling` tinyint(1) NOT NULL,
  `use_crop` tinyint(1) NOT NULL,
  `use_no_cropping` tinyint(1) NOT NULL,
  `use_upscale` tinyint(1) NOT NULL,
  `thumbnail_options_id` int(11) DEFAULT NULL,
  `external_picture` varchar(255) DEFAULT NULL,
  `template` varchar(255) NOT NULL,
  `use_responsive_image` varchar(7) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_picture_picture_picture_id_f7d6711b` (`picture_id`),
  KEY `djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu` (`thumbnail_options_id`),
  KEY `djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id` (`link_page_id`),
  CONSTRAINT `djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima` FOREIGN KEY (`picture_id`) REFERENCES `filer_image` (`file_ptr_id`),
  CONSTRAINT `djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu` FOREIGN KEY (`thumbnail_options_id`) REFERENCES `filer_thumbnailoption` (`id`),
  CONSTRAINT `djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id` FOREIGN KEY (`link_page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `djangocms_picture_picture_width_5bba3699_check` CHECK (`width` >= 0),
  CONSTRAINT `djangocms_picture_picture_height_3db3e080_check` CHECK (`height` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_picture_picture`
--

LOCK TABLES `djangocms_picture_picture` WRITE;
/*!40000 ALTER TABLE `djangocms_picture_picture` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_picture_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_style_style`
--

DROP TABLE IF EXISTS `djangocms_style_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_style_style` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `padding_left` smallint(5) unsigned DEFAULT NULL,
  `padding_right` smallint(5) unsigned DEFAULT NULL,
  `padding_top` smallint(5) unsigned DEFAULT NULL,
  `padding_bottom` smallint(5) unsigned DEFAULT NULL,
  `margin_left` smallint(5) unsigned DEFAULT NULL,
  `margin_right` smallint(5) unsigned DEFAULT NULL,
  `margin_top` smallint(5) unsigned DEFAULT NULL,
  `margin_bottom` smallint(5) unsigned DEFAULT NULL,
  `additional_classes` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `id_name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_style_styl_cmsplugin_ptr_id_820d9b8f_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_style_style_margin_bottom_08e7c851_check` CHECK (`margin_bottom` >= 0),
  CONSTRAINT `djangocms_style_style_margin_left_e51dea0a_check` CHECK (`margin_left` >= 0),
  CONSTRAINT `djangocms_style_style_margin_right_40a4928b_check` CHECK (`margin_right` >= 0),
  CONSTRAINT `djangocms_style_style_margin_top_929f0506_check` CHECK (`margin_top` >= 0),
  CONSTRAINT `djangocms_style_style_padding_bottom_566948a6_check` CHECK (`padding_bottom` >= 0),
  CONSTRAINT `djangocms_style_style_padding_left_2426413b_check` CHECK (`padding_left` >= 0),
  CONSTRAINT `djangocms_style_style_padding_right_90146b20_check` CHECK (`padding_right` >= 0),
  CONSTRAINT `djangocms_style_style_padding_top_fbca5ac1_check` CHECK (`padding_top` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_style_style`
--

LOCK TABLES `djangocms_style_style` WRITE;
/*!40000 ALTER TABLE `djangocms_style_style` DISABLE KEYS */;
INSERT INTO `djangocms_style_style` VALUES (4,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'links-path','{}','','breadcrumbs','default'),(54,'container','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','{}','','breadcrumbs','default'),(55,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'row','{}','','mobile app','default'),(61,'container','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'card-1, text-center','{}','','cards','default'),(62,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'text-head, text-muted','{}','','text','default'),(94,'container','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'card-1, text-center','{}','','send','default'),(95,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'text-head, text-muted','{}','','text','default'),(112,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cards-2, col-12, mb-5','{}','','card','default'),(117,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cards-2, col-12, mb-5','{}','','card','default'),(133,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cards-2, col-12, mb-5','{}','','card','default'),(137,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cards-2, col-12, mb-5','{}','','card','default'),(165,'container','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'card-1, text-center','{}','','recieve','default'),(166,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'text-head, text-muted','{}','','text','default'),(170,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cards-2, col-12, mb-5','{}','','card','default'),(174,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cards-2, col-12, mb-5','{}','','card','default'),(181,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cards-2, col-12, mb-5','{}','','card','default'),(185,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cards-2, col-12, mb-5','{}','','card','default'),(213,'container','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'card-1, text-center','{}','','get','default'),(214,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'text-head, text-muted','{}','','text','default'),(218,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cards-2, col-12, mb-5','{}','','card','default'),(222,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cards-2, col-12, mb-5','{}','','card','default'),(229,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cards-2, col-12, mb-5','{}','','card','default'),(233,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cards-2, col-12, mb-5','{}','','card','default'),(237,'container','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'card-1, text-center','{}','','support','default'),(240,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'text-head, text-muted','{}','','text','default'),(249,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cards-2, col-12, mb-5','{}','','card','default'),(259,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cards-2, col-12, mb-5','{}','','card','default'),(269,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cards-2, col-12, mb-5','{}','','card','default'),(274,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'btn, btn-light, border, border-danger, text-danger','{}','','btn','default'),(297,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'body-text-con, col-lg-7, col-md-7, col-sm-7, col-12','{}','','text-container','default'),(299,'','div',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,'','{}','','img-co','default'),(308,'container','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'card-1, text-center','{}','','features','default'),(311,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'text-head, text-muted','{}','','text','default'),(350,'container','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'card-1, text-center','{}','','social','default'),(353,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'text-head, text-muted','{}','','text','default'),(367,'container','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'card-1, text-center','{}','','final','default'),(368,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'text-head, text-muted','{}','','text','default');
/*!40000 ALTER TABLE `djangocms_style_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_text_ckeditor_text`
--

DROP TABLE IF EXISTS `djangocms_text_ckeditor_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_text_ckeditor_text` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `body` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_text_ckeditor_text`
--

LOCK TABLES `djangocms_text_ckeditor_text` WRITE;
/*!40000 ALTER TABLE `djangocms_text_ckeditor_text` DISABLE KEYS */;
INSERT INTO `djangocms_text_ckeditor_text` VALUES (63,'<h3>Easy management of your cards</h3>'),(73,'<h5>Empowering you</h5>\n\n<p class=\"text-muted\">View transactions, change your PIN code, setup your cards when you travel and so much more.</p>'),(77,'<h5>Boubyan Rewards with any purchase</h5>\n\n<p class=\"text-muted\">View your points and redeem them for cash, airline miles and hotel points anytime.</p>'),(80,'<h3>Issue a new card anytime</h3>\n\n<p class=\"text-muted\">For new account, replacement of a lost card or to renew an existing card, request through the app and pick it up at anytime at any of our card issuance machines across Kuwait.</p>'),(96,'<h3>So many ways to send money</h3>'),(109,'<p><cms-plugin alt=\"Icon - 111 \" title=\"Icon - 111\" id=\"111\"></cms-plugin></p>'),(110,'<h5>Open a savings account</h5>\n\n<p class=\"text-muted\">You can instantly open savings account with any of the 4 major currencies.</p>'),(118,'<p><cms-plugin alt=\"Icon - 119 \" title=\"Icon - 119\" id=\"119\"></cms-plugin></p>'),(120,'<h5>Open a savings account</h5>\n\n<p class=\"text-muted\">You can instantly open savings account with any of the 4 major currencies.</p>'),(134,'<p><cms-plugin alt=\"Icon - 135 \" title=\"Icon - 135\" id=\"135\"></cms-plugin></p>'),(136,'<h5>Open a savings account</h5>\n\n<p class=\"text-muted\">You can instantly open savings account with any of the 4 major currencies.</p>'),(138,'<p><cms-plugin alt=\"Icon - 139 \" title=\"Icon - 139\" id=\"139\"></cms-plugin></p>'),(140,'<h5>Open a savings account</h5>\n\n<p class=\"text-muted\">You can instantly open savings account with any of the 4 major currencies.</p>'),(167,'<h3>... and recieve it</h3>'),(171,'<p><cms-plugin alt=\"Icon - 172 \" title=\"Icon - 172\" id=\"172\"></cms-plugin></p>'),(173,'<h5>Open a savings account</h5>\n\n<p class=\"text-muted\">You can instantly open savings account with any of the 4 major currencies.</p>'),(175,'<p><cms-plugin alt=\"Icon - 176 \" title=\"Icon - 176\" id=\"176\"></cms-plugin></p>'),(177,'<h5>Open a savings account</h5>\n\n<p class=\"text-muted\">You can instantly open savings account with any of the 4 major currencies.</p>'),(182,'<p><cms-plugin alt=\"Icon - 183 \" title=\"Icon - 183\" id=\"183\"></cms-plugin></p>'),(184,'<h5>Open a savings account</h5>\n\n<p class=\"text-muted\">You can instantly open savings account with any of the 4 major currencies.</p>'),(186,'<p><cms-plugin alt=\"Icon - 187 \" title=\"Icon - 187\" id=\"187\"></cms-plugin></p>'),(188,'<h5>Open a savings account</h5>\n\n<p class=\"text-muted\">You can instantly open savings account with any of the 4 major currencies.</p>'),(215,'<h3>Get thongs done faster</h3>'),(219,'<p><cms-plugin alt=\"Icon - 220 \" title=\"Icon - 220\" id=\"220\"></cms-plugin></p>'),(221,'<h5>Open a savings account</h5>\n\n<p class=\"text-muted\">You can instantly open savings account with any of the 4 major currencies.</p>'),(223,'<p><cms-plugin alt=\"Icon - 224 \" title=\"Icon - 224\" id=\"224\"></cms-plugin></p>'),(225,'<h5>Open a savings account</h5>\n\n<p class=\"text-muted\">You can instantly open savings account with any of the 4 major currencies.</p>'),(230,'<p><cms-plugin alt=\"Icon - 231 \" title=\"Icon - 231\" id=\"231\"></cms-plugin></p>'),(232,'<h5>Open a savings account</h5>\n\n<p class=\"text-muted\">You can instantly open savings account with any of the 4 major currencies.</p>'),(234,'<p><cms-plugin alt=\"Icon - 235 \" title=\"Icon - 235\" id=\"235\"></cms-plugin></p>'),(236,'<h5>Open a savings account</h5>\n\n<p class=\"text-muted\">You can instantly open savings account with any of the 4 major currencies.</p>'),(241,'<h3>Msa3ed.At your service 24/7</h3>'),(250,'<p><cms-plugin alt=\"Icon - 251 \" title=\"Icon - 251\" id=\"251\"></cms-plugin></p>'),(252,'<h5>Open a savings account</h5>\n\n<p class=\"text-muted\">You can instantly open savings account with any of the 4 major currencies.</p>'),(260,'<p><cms-plugin alt=\"Icon - 261 \" title=\"Icon - 261\" id=\"261\"></cms-plugin></p>'),(262,'<h5>Open a savings account</h5>\n\n<p class=\"text-muted\">You can instantly open savings account with any of the 4 major currencies.</p>'),(270,'<p><cms-plugin alt=\"Icon - 271 \" title=\"Icon - 271\" id=\"271\"></cms-plugin></p>'),(272,'<h5>Open a savings account</h5>\n\n<p class=\"text-muted\">You can instantly open savings account with any of the 4 major currencies.</p>'),(275,'<p>Let me show you more</p>'),(298,'<h3>The power of banking in your hand</h3>\n\n<p><span style=\"color: #bdc3c7;\">Digital banking just got real with our mobile app</span></p>'),(303,'<p class=\"font-weight-bold text-muted\">BEST MOBILE BANKING APP</p>'),(312,'<h3>Learn more about offered features</h3>\n\n<h5>We are always working to enhance your experiences with innovative solutions</h5>'),(354,'<h3>Our users love the app!</h3>'),(369,'<h3>Convinced? Download the Boubyan app now!</h3>');
/*!40000 ALTER TABLE `djangocms_text_ckeditor_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videoplayer`
--

DROP TABLE IF EXISTS `djangocms_video_videoplayer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_video_videoplayer` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `embed_link` varchar(255) NOT NULL,
  `poster_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `label` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `parameters` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videoplayer_poster_id_07790e24` (`poster_id`),
  CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_video_vide_poster_id_07790e24_fk_filer_ima` FOREIGN KEY (`poster_id`) REFERENCES `filer_image` (`file_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videoplayer`
--

LOCK TABLES `djangocms_video_videoplayer` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videoplayer` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videoplayer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videosource`
--

DROP TABLE IF EXISTS `djangocms_video_videosource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_video_videosource` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `text_title` varchar(255) NOT NULL,
  `text_description` longtext NOT NULL,
  `attributes` longtext NOT NULL,
  `source_file_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videosource_source_file_id_16f11167` (`source_file_id`),
  CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_video_vide_source_file_id_16f11167_fk_filer_fil` FOREIGN KEY (`source_file_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videosource`
--

LOCK TABLES `djangocms_video_videosource` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videosource` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videosource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videotrack`
--

DROP TABLE IF EXISTS `djangocms_video_videotrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_video_videotrack` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `kind` varchar(255) NOT NULL,
  `srclang` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `src_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videotrack_src_id_e5a015d8` (`src_id`),
  CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id` FOREIGN KEY (`src_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videotrack`
--

LOCK TABLES `djangocms_video_videotrack` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videotrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videotrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_source`
--

DROP TABLE IF EXISTS `easy_thumbnails_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_source_storage_hash_name_481ce32d_uniq` (`storage_hash`,`name`),
  KEY `easy_thumbnails_source_storage_hash_946cbcc9` (`storage_hash`),
  KEY `easy_thumbnails_source_name_5fe0edc6` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_source`
--

LOCK TABLES `easy_thumbnails_source` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_source` DISABLE KEYS */;
INSERT INTO `easy_thumbnails_source` VALUES (1,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/21/e7/21e7f0c8-a4f2-4ad2-ac11-bda6ab22a4c8/google_palayjpg.jpg','2022-01-21 22:30:48.524042'),(3,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/58/31/5831c97e-0dc4-476d-b963-582cba403b32/app_store.jpg','2022-01-21 22:38:30.410876'),(4,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/73/a8/73a8645b-1236-452f-a8f9-875e4e74a7c0/untitled-3.jpg','2022-01-21 22:38:30.699133'),(8,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/8e/6a/8e6a6b8e-5e6e-4dc0-8650-dd09442fd122/group-43.jpg','2022-01-21 22:51:35.003455'),(9,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/fe/2e/fe2effc2-c74a-469b-8005-a3317bc39764/group-39.jpg','2022-01-22 05:50:58.439159'),(10,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/e3/13/e3139caf-5f61-4ca4-a9f9-d5a3deb3c0c7/credit-card.jpg','2022-01-22 05:50:57.828632'),(11,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/bf/e2/bfe2330c-52ce-447e-a630-c4454cd36d95/icons-8-insert-credit-card.jpg','2022-01-22 05:50:58.955535'),(12,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/06/c4/06c487ea-a64e-4cbd-bc42-aaf32d8d1131/untitled-4.jpg','2022-01-22 05:50:59.837250'),(13,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/a4/e8/a4e897dc-5160-4018-ba2a-c5bce4f6658e/untitled-6.jpg','2022-01-22 05:51:00.050029'),(14,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/b9/09/b90997c5-ef5f-4ad6-afa7-9ee9da65a889/boubyan_si_e_hjpg__1440x480_q85_subsampling-2.jpg','2022-01-22 06:06:38.331754'),(15,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/94/c6/94c6059b-5a04-4612-9bc5-7832b3f5e740/untitled-8.jpg','2022-01-22 06:08:35.696477'),(16,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/06/4d/064d72ee-cfc4-4d85-b54a-0459a70580b5/untitled-1.jpg','2022-01-22 06:13:09.197694');
/*!40000 ALTER TABLE `easy_thumbnails_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnail`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `source_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  KEY `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` (`source_id`),
  KEY `easy_thumbnails_thumbnail_storage_hash_f1435f49` (`storage_hash`),
  KEY `easy_thumbnails_thumbnail_name_b5882c31` (`name`),
  CONSTRAINT `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnail`
--

LOCK TABLES `easy_thumbnails_thumbnail` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` DISABLE KEYS */;
INSERT INTO `easy_thumbnails_thumbnail` VALUES (1,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/21/e7/21e7f0c8-a4f2-4ad2-ac11-bda6ab22a4c8\\google_palayjpg.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2022-01-21 20:24:23.845940',1),(2,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/21/e7/21e7f0c8-a4f2-4ad2-ac11-bda6ab22a4c8\\google_palayjpg.jpg__80x80_q85_crop_subsampling-2.jpg','2022-01-21 20:26:53.084140',1),(3,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/21/e7/21e7f0c8-a4f2-4ad2-ac11-bda6ab22a4c8\\google_palayjpg.jpg__160x160_q85_crop_subsampling-2.jpg','2022-01-21 20:26:53.156138',1),(8,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/21/e7/21e7f0c8-a4f2-4ad2-ac11-bda6ab22a4c8\\google_palayjpg.jpg__40x40_q85_crop_subsampling-2.jpg','2022-01-21 20:28:38.061086',1),(10,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/21/e7/21e7f0c8-a4f2-4ad2-ac11-bda6ab22a4c8\\google_palayjpg.jpg__4x2_q85_subsampling-2.jpg','2022-01-21 20:29:26.786113',1),(11,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/21/e7/21e7f0c8-a4f2-4ad2-ac11-bda6ab22a4c8\\google_palayjpg.jpg__210x49_q85_subsampling-2_upscale.jpg','2022-01-21 22:23:51.250828',1),(12,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/21/e7/21e7f0c8-a4f2-4ad2-ac11-bda6ab22a4c8\\google_palayjpg.jpg__420x98_q85_subsampling-2_upscale.jpg','2022-01-21 22:23:51.290830',1),(13,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/21/e7/21e7f0c8-a4f2-4ad2-ac11-bda6ab22a4c8\\google_palayjpg.jpg__100x61_q85_subsampling-2.jpg','2022-01-21 22:28:12.674611',1),(14,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/21/e7/21e7f0c8-a4f2-4ad2-ac11-bda6ab22a4c8\\google_palayjpg.jpg__150x92_q85_subsampling-2.jpg','2022-01-21 22:29:30.294378',1),(15,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/58/31/5831c97e-0dc4-476d-b963-582cba403b32\\app_store.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2022-01-21 22:30:16.332461',3),(16,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/58/31/5831c97e-0dc4-476d-b963-582cba403b32\\app_store.jpg__160x98_q85_subsampling-2.jpg','2022-01-21 22:30:27.067005',3),(17,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/21/e7/21e7f0c8-a4f2-4ad2-ac11-bda6ab22a4c8\\google_palayjpg.jpg__160x98_q85_subsampling-2.jpg','2022-01-21 22:30:48.650040',1),(18,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/73/a8/73a8645b-1236-452f-a8f9-875e4e74a7c0\\untitled-3.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2022-01-21 22:33:21.961794',4),(19,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/73/a8/73a8645b-1236-452f-a8f9-875e4e74a7c0\\untitled-3.jpg__220x135_q85_subsampling-2.jpg','2022-01-21 22:33:38.363057',4),(28,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/58/31/5831c97e-0dc4-476d-b963-582cba403b32\\app_store.jpg__80x80_q85_crop_subsampling-2.jpg','2022-01-21 22:38:30.301872',3),(29,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/58/31/5831c97e-0dc4-476d-b963-582cba403b32\\app_store.jpg__160x160_q85_crop_subsampling-2.jpg','2022-01-21 22:38:30.349874',3),(30,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/58/31/5831c97e-0dc4-476d-b963-582cba403b32\\app_store.jpg__40x40_q85_crop_subsampling-2.jpg','2022-01-21 22:38:30.454872',3),(31,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/73/a8/73a8645b-1236-452f-a8f9-875e4e74a7c0\\untitled-3.jpg__80x80_q85_crop_subsampling-2.jpg','2022-01-21 22:38:30.565870',4),(32,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/73/a8/73a8645b-1236-452f-a8f9-875e4e74a7c0\\untitled-3.jpg__160x160_q85_crop_subsampling-2.jpg','2022-01-21 22:38:30.618874',4),(33,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/73/a8/73a8645b-1236-452f-a8f9-875e4e74a7c0\\untitled-3.jpg__40x40_q85_crop_subsampling-2.jpg','2022-01-21 22:38:30.778294',4),(42,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/8e/6a/8e6a6b8e-5e6e-4dc0-8650-dd09442fd122\\group-43.jpg__180x180_crop_subsampling-2_upscale.png','2022-01-21 22:49:12.292237',8),(43,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/8e/6a/8e6a6b8e-5e6e-4dc0-8650-dd09442fd122\\group-43.jpg__80x80_crop_subsampling-2.png','2022-01-21 22:49:12.653238',8),(44,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/8e/6a/8e6a6b8e-5e6e-4dc0-8650-dd09442fd122\\group-43.jpg__160x160_crop_subsampling-2.png','2022-01-21 22:49:12.762233',8),(45,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/8e/6a/8e6a6b8e-5e6e-4dc0-8650-dd09442fd122\\group-43.jpg__40x40_crop_subsampling-2.png','2022-01-21 22:49:13.015102',8),(46,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/8e/6a/8e6a6b8e-5e6e-4dc0-8650-dd09442fd122\\group-43.jpg__300x185_subsampling-2.png','2022-01-21 22:49:25.478509',8),(47,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/8e/6a/8e6a6b8e-5e6e-4dc0-8650-dd09442fd122\\group-43.jpg__563.0x824.0_subsampling-2.png','2022-01-21 22:49:45.232355',8),(48,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/8e/6a/8e6a6b8e-5e6e-4dc0-8650-dd09442fd122\\group-43.jpg__100x61_subsampling-2.png','2022-01-21 22:50:01.880796',8),(49,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/8e/6a/8e6a6b8e-5e6e-4dc0-8650-dd09442fd122\\group-43.jpg__250x250_subsampling-2.png','2022-01-21 22:50:33.407704',8),(50,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/8e/6a/8e6a6b8e-5e6e-4dc0-8650-dd09442fd122\\group-43.jpg__300x300_subsampling-2.png','2022-01-21 22:51:35.188390',8),(51,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/fe/2e/fe2effc2-c74a-469b-8005-a3317bc39764\\group-39.jpg__180x180_crop_subsampling-2_upscale.png','2022-01-22 02:09:54.935782',9),(52,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/fe/2e/fe2effc2-c74a-469b-8005-a3317bc39764\\group-39.jpg__59.0x78.0_subsampling-2.png','2022-01-22 02:09:58.244687',9),(53,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/e3/13/e3139caf-5f61-4ca4-a9f9-d5a3deb3c0c7\\credit-card.jpg__180x180_crop_subsampling-2_upscale.png','2022-01-22 02:10:49.907671',10),(54,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/e3/13/e3139caf-5f61-4ca4-a9f9-d5a3deb3c0c7\\credit-card.jpg__72.0x60.0_subsampling-2.png','2022-01-22 02:10:55.254486',10),(55,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/bf/e2/bfe2330c-52ce-447e-a630-c4454cd36d95\\icons-8-insert-credit-card.jpg__180x180_crop_subsampling-2_upscale.png','2022-01-22 02:14:16.306150',11),(56,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/bf/e2/bfe2330c-52ce-447e-a630-c4454cd36d95\\icons-8-insert-credit-card.jpg__72.0x70.0_subsampling-2.png','2022-01-22 02:14:19.808892',11),(57,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/06/c4/06c487ea-a64e-4cbd-bc42-aaf32d8d1131\\untitled-4.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2022-01-22 04:03:52.398101',12),(58,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/06/c4/06c487ea-a64e-4cbd-bc42-aaf32d8d1131\\untitled-4.jpg__1570.0x2754.0_q85_subsampling-2.jpg','2022-01-22 04:04:01.546797',12),(59,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/a4/e8/a4e897dc-5160-4018-ba2a-c5bce4f6658e\\untitled-6.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2022-01-22 04:15:58.144955',13),(60,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/a4/e8/a4e897dc-5160-4018-ba2a-c5bce4f6658e\\untitled-6.jpg__2221.0x389.0_q85_subsampling-2.jpg','2022-01-22 04:16:01.081723',13),(61,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/a4/e8/a4e897dc-5160-4018-ba2a-c5bce4f6658e\\untitled-6.jpg__80x80_q85_crop_subsampling-2.jpg','2022-01-22 04:17:07.855954',13),(62,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/a4/e8/a4e897dc-5160-4018-ba2a-c5bce4f6658e\\untitled-6.jpg__160x160_q85_crop_subsampling-2.jpg','2022-01-22 04:17:07.985027',13),(63,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/a4/e8/a4e897dc-5160-4018-ba2a-c5bce4f6658e\\untitled-6.jpg__50x30_q85_subsampling-2.jpg','2022-01-22 04:17:22.782084',13),(64,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/a4/e8/a4e897dc-5160-4018-ba2a-c5bce4f6658e\\untitled-6.jpg__250x154_q85_subsampling-2.jpg','2022-01-22 04:17:39.283413',13),(65,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/a4/e8/a4e897dc-5160-4018-ba2a-c5bce4f6658e\\untitled-6.jpg__400x247_q85_subsampling-2.jpg','2022-01-22 04:18:01.000904',13),(66,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/e3/13/e3139caf-5f61-4ca4-a9f9-d5a3deb3c0c7\\credit-card.jpg__80x80_crop_subsampling-2.png','2022-01-22 05:44:00.563482',10),(67,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/e3/13/e3139caf-5f61-4ca4-a9f9-d5a3deb3c0c7\\credit-card.jpg__160x160_crop_subsampling-2.png','2022-01-22 05:44:00.591492',10),(68,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/b9/09/b90997c5-ef5f-4ad6-afa7-9ee9da65a889\\boubyan_si_e_hjpg__1440x480_q85_subsampling-2.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2022-01-22 05:44:10.009779',14),(69,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/b9/09/b90997c5-ef5f-4ad6-afa7-9ee9da65a889\\boubyan_si_e_hjpg__1440x480_q85_subsampling-2.jpg__1440.0x480.0_q85_subsampling-2.jpg','2022-01-22 05:44:12.352167',14),(70,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/b9/09/b90997c5-ef5f-4ad6-afa7-9ee9da65a889\\boubyan_si_e_hjpg__1440x480_q85_subsampling-2.jpg__80x80_q85_crop_subsampling-2.jpg','2022-01-22 05:50:57.310021',14),(71,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/b9/09/b90997c5-ef5f-4ad6-afa7-9ee9da65a889\\boubyan_si_e_hjpg__1440x480_q85_subsampling-2.jpg__160x160_q85_crop_subsampling-2.jpg','2022-01-22 05:50:57.442335',14),(72,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/b9/09/b90997c5-ef5f-4ad6-afa7-9ee9da65a889\\boubyan_si_e_hjpg__1440x480_q85_subsampling-2.jpg__40x40_q85_crop_subsampling-2.jpg','2022-01-22 05:50:57.671632',14),(73,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/e3/13/e3139caf-5f61-4ca4-a9f9-d5a3deb3c0c7\\credit-card.jpg__40x40_crop_subsampling-2.png','2022-01-22 05:50:57.920629',10),(74,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/fe/2e/fe2effc2-c74a-469b-8005-a3317bc39764\\group-39.jpg__80x80_crop_subsampling-2.png','2022-01-22 05:50:58.240171',9),(75,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/fe/2e/fe2effc2-c74a-469b-8005-a3317bc39764\\group-39.jpg__160x160_crop_subsampling-2.png','2022-01-22 05:50:58.323154',9),(76,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/fe/2e/fe2effc2-c74a-469b-8005-a3317bc39764\\group-39.jpg__40x40_crop_subsampling-2.png','2022-01-22 05:50:58.539158',9),(77,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/bf/e2/bfe2330c-52ce-447e-a630-c4454cd36d95\\icons-8-insert-credit-card.jpg__80x80_crop_subsampling-2.png','2022-01-22 05:50:58.801576',11),(78,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/bf/e2/bfe2330c-52ce-447e-a630-c4454cd36d95\\icons-8-insert-credit-card.jpg__160x160_crop_subsampling-2.png','2022-01-22 05:50:58.885534',11),(79,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/bf/e2/bfe2330c-52ce-447e-a630-c4454cd36d95\\icons-8-insert-credit-card.jpg__40x40_crop_subsampling-2.png','2022-01-22 05:50:59.034567',11),(80,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/06/c4/06c487ea-a64e-4cbd-bc42-aaf32d8d1131\\untitled-4.jpg__80x80_q85_crop_subsampling-2.jpg','2022-01-22 05:50:59.435420',12),(81,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/06/c4/06c487ea-a64e-4cbd-bc42-aaf32d8d1131\\untitled-4.jpg__160x160_q85_crop_subsampling-2.jpg','2022-01-22 05:50:59.644421',12),(82,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/06/c4/06c487ea-a64e-4cbd-bc42-aaf32d8d1131\\untitled-4.jpg__40x40_q85_crop_subsampling-2.jpg','2022-01-22 05:50:59.913975',12),(83,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/a4/e8/a4e897dc-5160-4018-ba2a-c5bce4f6658e\\untitled-6.jpg__40x40_q85_crop_subsampling-2.jpg','2022-01-22 05:51:00.121793',13),(84,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/b9/09/b90997c5-ef5f-4ad6-afa7-9ee9da65a889\\boubyan_si_e_hjpg__1440x480_q85_subsampling-2.jpg__1024.0x768.0_q85_crop-10_subsampling-2_upscale.jpg','2022-01-22 05:54:58.267209',14),(85,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/b9/09/b90997c5-ef5f-4ad6-afa7-9ee9da65a889\\boubyan_si_e_hjpg__1440x480_q85_subsampling-2.jpg__1024.0x1024.0_q85_crop-10_subsampling-2_upscale.jpg','2022-01-22 05:55:20.418423',14),(86,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/b9/09/b90997c5-ef5f-4ad6-afa7-9ee9da65a889\\boubyan_si_e_hjpg__1440x480_q85_subsampling-2.jpg__1024.0x512.0_q85_crop-10_subsampling-2_upscale.jpg','2022-01-22 05:55:43.550167',14),(87,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/b9/09/b90997c5-ef5f-4ad6-afa7-9ee9da65a889\\boubyan_si_e_hjpg__1440x480_q85_subsampling-2.jpg__1024.0x438.85714285714283_q85_crop-10_subsampling-2_upscale.jpg','2022-01-22 06:06:38.407756',14),(88,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/94/c6/94c6059b-5a04-4612-9bc5-7832b3f5e740\\untitled-8.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2022-01-22 06:08:23.747641',15),(89,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/94/c6/94c6059b-5a04-4612-9bc5-7832b3f5e740\\untitled-8.jpg__80x80_q85_crop_subsampling-2.jpg','2022-01-22 06:08:27.019577',15),(90,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/94/c6/94c6059b-5a04-4612-9bc5-7832b3f5e740\\untitled-8.jpg__160x160_q85_crop_subsampling-2.jpg','2022-01-22 06:08:27.046575',15),(91,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/94/c6/94c6059b-5a04-4612-9bc5-7832b3f5e740\\untitled-8.jpg__40x40_q85_crop_subsampling-2.jpg','2022-01-22 06:08:27.158611',15),(92,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/94/c6/94c6059b-5a04-4612-9bc5-7832b3f5e740\\untitled-8.jpg__1024.0x438.85714285714283_q85_crop-10_subsampling-2_upscale.jpg','2022-01-22 06:08:35.753478',15),(93,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/06/4d/064d72ee-cfc4-4d85-b54a-0459a70580b5\\untitled-1.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2022-01-22 06:12:50.861096',16),(94,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/06/4d/064d72ee-cfc4-4d85-b54a-0459a70580b5\\untitled-1.jpg__1024.0x438.85714285714283_q85_crop-10_subsampling-2_upscale.jpg','2022-01-22 06:12:54.683441',16),(95,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/06/4d/064d72ee-cfc4-4d85-b54a-0459a70580b5\\untitled-1.jpg__80x80_q85_crop_subsampling-2.jpg','2022-01-22 06:13:03.237109',16),(96,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/06/4d/064d72ee-cfc4-4d85-b54a-0459a70580b5\\untitled-1.jpg__160x160_q85_crop_subsampling-2.jpg','2022-01-22 06:13:03.304265',16),(97,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/06/4d/064d72ee-cfc4-4d85-b54a-0459a70580b5\\untitled-1.jpg__40x40_q85_crop_subsampling-2.jpg','2022-01-22 06:13:09.234680',16);
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnaildimensions`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnaildimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail_id` int(11) NOT NULL,
  `width` int(10) unsigned DEFAULT NULL CHECK (`width` >= 0),
  `height` int(10) unsigned DEFAULT NULL CHECK (`height` >= 0),
  PRIMARY KEY (`id`),
  UNIQUE KEY `thumbnail_id` (`thumbnail_id`),
  CONSTRAINT `easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnaildimensions`
--

LOCK TABLES `easy_thumbnails_thumbnaildimensions` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_clipboard`
--

DROP TABLE IF EXISTS `filer_clipboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_clipboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_clipboard`
--

LOCK TABLES `filer_clipboard` WRITE;
/*!40000 ALTER TABLE `filer_clipboard` DISABLE KEYS */;
INSERT INTO `filer_clipboard` VALUES (1,1);
/*!40000 ALTER TABLE `filer_clipboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_clipboarditem`
--

DROP TABLE IF EXISTS `filer_clipboarditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_clipboarditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clipboard_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` (`file_id`),
  KEY `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` (`clipboard_id`),
  CONSTRAINT `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` FOREIGN KEY (`clipboard_id`) REFERENCES `filer_clipboard` (`id`),
  CONSTRAINT `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` FOREIGN KEY (`file_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_clipboarditem`
--

LOCK TABLES `filer_clipboarditem` WRITE;
/*!40000 ALTER TABLE `filer_clipboarditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_clipboarditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_file`
--

DROP TABLE IF EXISTS `filer_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `_file_size` bigint(20) DEFAULT NULL,
  `sha1` varchar(40) NOT NULL,
  `has_all_mandatory_data` tinyint(1) NOT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `polymorphic_ctype_id` int(11) DEFAULT NULL,
  `mime_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_file_folder_id_af803bbb_fk_filer_folder_id` (`folder_id`),
  KEY `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` (`polymorphic_ctype_id`),
  KEY `filer_file_owner_id_b9e32671_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `filer_file_folder_id_af803bbb_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `filer_file_owner_id_b9e32671_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` FOREIGN KEY (`polymorphic_ctype_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_file`
--

LOCK TABLES `filer_file` WRITE;
/*!40000 ALTER TABLE `filer_file` DISABLE KEYS */;
INSERT INTO `filer_file` VALUES (1,'filer_public/21/e7/21e7f0c8-a4f2-4ad2-ac11-bda6ab22a4c8/google_palayjpg.jpg',37966,'e73368a7a217e93e64da8007defa12a753b08d1d',0,'google palayjpg.jpg','',NULL,'2022-01-21 20:24:23.175515','2022-01-21 20:24:23.175515',1,NULL,1,30,'image/jpeg'),(3,'filer_public/58/31/5831c97e-0dc4-476d-b963-582cba403b32/app_store.jpg',32651,'b5c9acf3f33a70bae074122c650f1c967ac59ac7',0,'app store.jpg','',NULL,'2022-01-21 22:30:15.942445','2022-01-21 22:30:15.942445',1,NULL,1,30,'image/jpeg'),(4,'filer_public/73/a8/73a8645b-1236-452f-a8f9-875e4e74a7c0/untitled-3.jpg',59819,'890e49f7d821aeae5954766208cd3ea10c9ae259',0,'Untitled-3.jpg','',NULL,'2022-01-21 22:33:21.540395','2022-01-21 22:33:21.540395',1,NULL,1,30,'image/jpeg'),(8,'filer_public/8e/6a/8e6a6b8e-5e6e-4dc0-8650-dd09442fd122/group-43.jpg',153472,'1a188d51ed90b40317983260223fa76e69469ea5',0,'group-43.jpg','',NULL,'2022-01-21 22:49:11.995919','2022-01-21 22:49:11.995919',1,NULL,1,30,'image/jpeg'),(9,'filer_public/fe/2e/fe2effc2-c74a-469b-8005-a3317bc39764/group-39.jpg',4434,'707922aee96a6d37ea1031337a11c314b5f63fe8',0,'group-39.jpg','',NULL,'2022-01-22 02:09:54.664493','2022-01-22 02:09:54.664493',1,NULL,1,30,'image/jpeg'),(10,'filer_public/e3/13/e3139caf-5f61-4ca4-a9f9-d5a3deb3c0c7/credit-card.jpg',2428,'ca8129543e90b4a4e04998b061c2303516302e92',0,'credit-card.jpg','',NULL,'2022-01-22 02:10:49.610704','2022-01-22 02:10:49.610704',1,NULL,1,30,'image/jpeg'),(11,'filer_public/bf/e2/bfe2330c-52ce-447e-a630-c4454cd36d95/icons-8-insert-credit-card.jpg',1791,'7046238b0587c45bdf659dffd9e3618fa37ce240',0,'icons-8-insert-credit-card.jpg','',NULL,'2022-01-22 02:14:16.160984','2022-01-22 02:14:16.160984',1,NULL,1,30,'image/jpeg'),(12,'filer_public/06/c4/06c487ea-a64e-4cbd-bc42-aaf32d8d1131/untitled-4.jpg',467924,'cdbd145d992ca16e2823d2fda3bc47de400d13c5',0,'Untitled-4.jpg','',NULL,'2022-01-22 04:03:51.957773','2022-01-22 04:03:51.957773',1,NULL,1,30,'image/jpeg'),(13,'filer_public/a4/e8/a4e897dc-5160-4018-ba2a-c5bce4f6658e/untitled-6.jpg',114897,'2f0886c20b5987643751b453e8aa263bf4e37016',0,'Untitled-6.jpg','',NULL,'2022-01-22 04:15:57.962812','2022-01-22 04:15:57.962812',1,NULL,1,30,'image/jpeg'),(14,'filer_public/b9/09/b90997c5-ef5f-4ad6-afa7-9ee9da65a889/boubyan_si_e_hjpg__1440x480_q85_subsampling-2.jpg',41048,'7966d76452d565e9a8bc8de20a574cf1a22128df',0,'boubyan_si_e_h.jpg__1440x480_q85_subsampling-2.jpg','',NULL,'2022-01-22 05:44:09.701342','2022-01-22 05:44:09.701342',1,NULL,1,30,'image/jpeg'),(15,'filer_public/94/c6/94c6059b-5a04-4612-9bc5-7832b3f5e740/untitled-8.jpg',10738,'be638992228f5deea6ce4532c9313720dac49677',0,'Untitled-8.jpg','',NULL,'2022-01-22 06:08:23.550257','2022-01-22 06:08:23.550257',1,NULL,1,30,'image/jpeg'),(16,'filer_public/06/4d/064d72ee-cfc4-4d85-b54a-0459a70580b5/untitled-1.jpg',10861,'e586812838bfdb12bb15dba1175e99a17fbb05cd',0,'Untitled-1.jpg','',NULL,'2022-01-22 06:12:50.577617','2022-01-22 06:12:50.577617',1,NULL,1,30,'image/jpeg');
/*!40000 ALTER TABLE `filer_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_folder`
--

DROP TABLE IF EXISTS `filer_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `lft` int(10) unsigned NOT NULL CHECK (`lft` >= 0),
  `rght` int(10) unsigned NOT NULL CHECK (`rght` >= 0),
  `tree_id` int(10) unsigned NOT NULL CHECK (`tree_id` >= 0),
  `level` int(10) unsigned NOT NULL CHECK (`level` >= 0),
  `owner_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filer_folder_parent_id_name_bc773258_uniq` (`parent_id`,`name`),
  KEY `filer_folder_tree_id_b016223c` (`tree_id`),
  KEY `filer_folder_owner_id_be530fb4_fk_auth_user_id` (`owner_id`),
  KEY `filer_folder_tree_id_lft_088ce52b_idx` (`tree_id`,`lft`),
  CONSTRAINT `filer_folder_owner_id_be530fb4_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_folder_parent_id_308aecda_fk_filer_folder_id` FOREIGN KEY (`parent_id`) REFERENCES `filer_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_folder`
--

LOCK TABLES `filer_folder` WRITE;
/*!40000 ALTER TABLE `filer_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_folderpermission`
--

DROP TABLE IF EXISTS `filer_folderpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_folderpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL,
  `everybody` tinyint(1) NOT NULL,
  `can_edit` smallint(6) DEFAULT NULL,
  `can_read` smallint(6) DEFAULT NULL,
  `can_add_children` smallint(6) DEFAULT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` (`folder_id`),
  KEY `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` (`group_id`),
  KEY `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_folderpermission`
--

LOCK TABLES `filer_folderpermission` WRITE;
/*!40000 ALTER TABLE `filer_folderpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_folderpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_image`
--

DROP TABLE IF EXISTS `filer_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_image` (
  `file_ptr_id` int(11) NOT NULL,
  `_height` double DEFAULT NULL,
  `_width` double DEFAULT NULL,
  `date_taken` datetime(6) DEFAULT NULL,
  `default_alt_text` varchar(255) DEFAULT NULL,
  `default_caption` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `must_always_publish_author_credit` tinyint(1) NOT NULL,
  `must_always_publish_copyright` tinyint(1) NOT NULL,
  `subject_location` varchar(64) NOT NULL,
  PRIMARY KEY (`file_ptr_id`),
  CONSTRAINT `filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id` FOREIGN KEY (`file_ptr_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_image`
--

LOCK TABLES `filer_image` WRITE;
/*!40000 ALTER TABLE `filer_image` DISABLE KEYS */;
INSERT INTO `filer_image` VALUES (1,127,550,'2022-01-21 20:24:23.085244',NULL,NULL,NULL,0,0,''),(3,129,467,'2022-01-21 22:30:15.937442',NULL,NULL,NULL,0,0,''),(4,247,629,'2022-01-21 22:33:21.533394',NULL,NULL,NULL,0,0,''),(8,824,563,'2022-01-21 22:49:11.980918',NULL,NULL,NULL,0,0,''),(9,78,59,'2022-01-22 02:09:54.600472',NULL,NULL,NULL,0,0,''),(10,60,72,'2022-01-22 02:10:49.604739',NULL,NULL,NULL,0,0,''),(11,70,72,'2022-01-22 02:14:16.141980',NULL,NULL,NULL,0,0,''),(12,2754,1570,'2022-01-22 04:03:51.949771',NULL,NULL,NULL,0,0,''),(13,389,2221,'2022-01-22 04:15:57.930814',NULL,NULL,NULL,0,0,''),(14,480,1440,'2022-01-22 05:44:09.691339',NULL,NULL,NULL,0,0,''),(15,119,142,'2022-01-22 06:08:23.544253',NULL,NULL,NULL,0,0,''),(16,254,128,'2022-01-22 06:12:50.572615',NULL,NULL,NULL,0,0,'');
/*!40000 ALTER TABLE `filer_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_thumbnailoption`
--

DROP TABLE IF EXISTS `filer_thumbnailoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_thumbnailoption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `crop` tinyint(1) NOT NULL,
  `upscale` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_thumbnailoption`
--

LOCK TABLES `filer_thumbnailoption` WRITE;
/*!40000 ALTER TABLE `filer_thumbnailoption` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_thumbnailoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_cachekey`
--

DROP TABLE IF EXISTS `menus_cachekey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus_cachekey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) NOT NULL,
  `site` int(10) unsigned NOT NULL CHECK (`site` >= 0),
  `key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus_cachekey`
--

LOCK TABLES `menus_cachekey` WRITE;
/*!40000 ALTER TABLE `menus_cachekey` DISABLE KEYS */;
INSERT INTO `menus_cachekey` VALUES (8,'en',1,'cms_3.8.0_menu_nodes_en_1_1_user:draft'),(9,'en',1,'cms_3.8.0_menu_nodes_en_1_1_user:public');
/*!40000 ALTER TABLE `menus_cachekey` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-22  9:15:08
