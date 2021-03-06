-- MySQL dump 10.16  Distrib 10.2.12-MariaDB, for osx10.13 (x86_64)
--
-- Host: localhost    Database: django_app
-- ------------------------------------------------------
-- Server version	5.6.46

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add stonk',7,'add_stonk'),(26,'Can change stonk',7,'change_stonk'),(27,'Can delete stonk',7,'delete_stonk'),(28,'Can view stonk',7,'view_stonk');
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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'stonks','stonk');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-12-20 13:21:29.145441'),(2,'auth','0001_initial','2019-12-20 13:21:30.546345'),(3,'admin','0001_initial','2019-12-20 13:21:30.860478'),(4,'admin','0002_logentry_remove_auto_add','2019-12-20 13:21:30.924735'),(5,'admin','0003_logentry_add_action_flag_choices','2019-12-20 13:21:31.083896'),(6,'contenttypes','0002_remove_content_type_name','2019-12-20 13:21:31.199183'),(7,'auth','0002_alter_permission_name_max_length','2019-12-20 13:21:31.303603'),(8,'auth','0003_alter_user_email_max_length','2019-12-20 13:21:31.386285'),(9,'auth','0004_alter_user_username_opts','2019-12-20 13:21:31.416629'),(10,'auth','0005_alter_user_last_login_null','2019-12-20 13:21:31.492413'),(11,'auth','0006_require_contenttypes_0002','2019-12-20 13:21:31.523915'),(12,'auth','0007_alter_validators_add_error_messages','2019-12-20 13:21:31.561162'),(13,'auth','0008_alter_user_username_max_length','2019-12-20 13:21:31.664409'),(14,'auth','0009_alter_user_last_name_max_length','2019-12-20 13:21:31.763891'),(15,'sessions','0001_initial','2019-12-20 13:21:31.895273'),(16,'stonks','0001_initial','2019-12-20 13:21:32.000634');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stonks_stonk`
--

DROP TABLE IF EXISTS `stonks_stonk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stonks_stonk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stonks_stonk_name_19827aa5` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stonks_stonk`
--

LOCK TABLES `stonks_stonk` WRITE;
/*!40000 ALTER TABLE `stonks_stonk` DISABLE KEYS */;
INSERT INTO `stonks_stonk` VALUES (1,'STK057537',6782),(2,'STK016531',23974),(3,'STK030613',6486),(4,'STK036743',32774),(5,'STK027439',37309),(6,'STK053116',28531),(7,'STK001241',42533),(8,'STK013578',997),(9,'STK052380',36882),(10,'STK015657',41313),(11,'STK072919',11354),(12,'STK092925',8773),(13,'STK009198',11656),(14,'STK045142',4988),(15,'STK005161',4697),(16,'STK001938',39140),(17,'STK024152',10585),(18,'STK035074',32173),(19,'STK059814',25948),(20,'STK019664',37990),(21,'STK051488',45880),(22,'STK027404',29032),(23,'STK021597',35927),(24,'STK090875',37776),(25,'STK081717',31412),(26,'STK027639',12817),(27,'STK035002',15933),(28,'STK051759',17954),(29,'STK086306',46446),(30,'STK008446',48346),(31,'STK098301',47732),(32,'STK074708',31131),(33,'STK011645',19436),(34,'STK034511',22403),(35,'STK026940',16475),(36,'STK069353',16088),(37,'STK078509',4249),(38,'STK065716',33195),(39,'STK074464',2295),(40,'STK019467',2488),(41,'STK051403',34003),(42,'STK004154',27507),(43,'STK094255',17865),(44,'STK000509',31385),(45,'STK077406',26197),(46,'STK017454',20321),(47,'STK016306',28877),(48,'STK058294',42679),(49,'STK031146',29671),(50,'STK032197',10993),(51,'STK050995',26903),(52,'STK038174',25561),(53,'STK017796',33896),(54,'STK030949',9977),(55,'STK086604',29077),(56,'STK053710',6258),(57,'STK030755',6543),(58,'STK023606',24744),(59,'STK092640',6018),(60,'STK075316',49777),(61,'STK043403',34125),(62,'STK001684',39339),(63,'STK020754',6675),(64,'STK083517',34464),(65,'STK048224',47682),(66,'STK057449',22437),(67,'STK092781',34991),(68,'STK020322',5051),(69,'STK064241',2242),(70,'STK059154',36733),(71,'STK050789',38359),(72,'STK015795',37130),(73,'STK078997',9210),(74,'STK006416',24857),(75,'STK081335',736),(76,'STK039300',20089),(77,'STK026105',506),(78,'STK074442',24868),(79,'STK074873',19435),(80,'STK006456',33089),(81,'STK024846',48075),(82,'STK005343',39824),(83,'STK047670',22986),(84,'STK049389',7234),(85,'STK057432',17060),(86,'STK014383',24123),(87,'STK044026',19590),(88,'STK016290',3110),(89,'STK006608',4557),(90,'STK036652',27156),(91,'STK038092',45891),(92,'STK055118',29792),(93,'STK044934',48968),(94,'STK017481',39526),(95,'STK065245',22886),(96,'STK016714',37456),(97,'STK055831',32252),(98,'STK051529',14005),(99,'STK059575',41694),(100,'STK070854',26144),(101,'STK009251',1494),(102,'STK040773',12962),(103,'STK079633',9627),(104,'STK096791',45397),(105,'STK023785',13430),(106,'STK010298',44379),(107,'STK048850',14434),(108,'STK014357',15530),(109,'STK076317',11238),(110,'STK061134',9984),(111,'STK002332',5241),(112,'STK085694',567),(113,'STK028859',7114),(114,'STK077353',12374),(115,'STK002338',9978),(116,'STK005831',40019),(117,'STK095803',45382),(118,'STK007654',29984),(119,'STK098439',41704),(120,'STK086093',45715),(121,'STK036117',44463),(122,'STK019388',13991),(123,'STK011302',45623),(124,'STK098251',40158),(125,'STK014001',29263),(126,'STK003776',38142),(127,'STK032872',7247),(128,'STK036136',14799),(129,'STK011247',39515),(130,'STK036953',43377),(131,'STK055399',29954),(132,'STK043807',22694),(133,'STK063962',35876),(134,'STK082867',42844),(135,'STK044561',24820),(136,'STK036956',2759),(137,'STK097396',37531),(138,'STK009748',33641),(139,'STK046944',9533),(140,'STK032669',15279),(141,'STK047139',1060),(142,'STK087806',38468),(143,'STK028714',41300),(144,'STK031877',36246),(145,'STK064654',30761),(146,'STK061630',26217),(147,'STK076360',7875),(148,'STK042409',19499),(149,'STK054730',45884),(150,'STK025361',24823),(151,'STK044096',26063),(152,'STK023231',23985),(153,'STK025034',26632),(154,'STK070817',30849),(155,'STK046601',38358),(156,'STK006183',43266),(157,'STK036684',3992),(158,'STK096785',20515),(159,'STK039103',10261),(160,'STK004307',10037),(161,'STK070334',16913),(162,'STK077694',13854),(163,'STK061291',48362),(164,'STK036135',34674),(165,'STK096241',11807),(166,'STK034585',21713),(167,'STK066840',941),(168,'STK004421',24303),(169,'STK069506',27600),(170,'STK086745',21372),(171,'STK050763',35971),(172,'STK096172',23273),(173,'STK086014',27314),(174,'STK049487',25619),(175,'STK049129',34004),(176,'STK003756',32592),(177,'STK072494',31668),(178,'STK094138',13810),(179,'STK062735',2979),(180,'STK032584',28099),(181,'STK099326',22844),(182,'STK082008',19625),(183,'STK079543',7912),(184,'STK071306',5083),(185,'STK092104',38992),(186,'STK099982',30055),(187,'STK097210',34494),(188,'STK071071',3465),(189,'STK075839',27991),(190,'STK022343',26057),(191,'STK000719',13029),(192,'STK045140',17056),(193,'STK062391',26605),(194,'STK044625',43951),(195,'STK039729',5532),(196,'STK002802',18902),(197,'STK091656',34344),(198,'STK004440',37039),(199,'STK089876',46632),(200,'STK060454',44945),(201,'STK050875',1617),(202,'STK078114',37422),(203,'STK042997',5697),(204,'STK031100',37953),(205,'STK094533',27723),(206,'STK054796',33995),(207,'STK095418',23089),(208,'STK098641',31400),(209,'STK072618',23371),(210,'STK075271',15358),(211,'STK033637',21441),(212,'STK013320',35607),(213,'STK042546',42587),(214,'STK004991',19822),(215,'STK034567',30527),(216,'STK001872',49554),(217,'STK069811',10658),(218,'STK083797',22305),(219,'STK093091',3647),(220,'STK059965',41312),(221,'STK026986',30052),(222,'STK047920',46042),(223,'STK038243',15563),(224,'STK024694',22403),(225,'STK040968',21337),(226,'STK046653',15667),(227,'STK078602',18175),(228,'STK035482',18846),(229,'STK055492',9544),(230,'STK006048',33975),(231,'STK009726',26416),(232,'STK070943',10827),(233,'STK054307',36813),(234,'STK050202',4427),(235,'STK007277',22161),(236,'STK071001',28631),(237,'STK053153',47201),(238,'STK017132',18893),(239,'STK059229',3955),(240,'STK079186',1027),(241,'STK023638',18858),(242,'STK034775',12055),(243,'STK045035',22055),(244,'STK033240',29406),(245,'STK080231',45523),(246,'STK046350',3750),(247,'STK095360',21007),(248,'STK006655',25263),(249,'STK069867',25168),(250,'STK015769',23643),(251,'STK004917',41223),(252,'STK089319',4036),(253,'STK082664',11966),(254,'STK086684',14976),(255,'STK075693',24662),(256,'STK004801',4899),(257,'STK008236',44362),(258,'STK067579',29972),(259,'STK010403',42043),(260,'STK018433',39419),(261,'STK090369',1402),(262,'STK014674',34058),(263,'STK087412',27366),(264,'STK018937',6988),(265,'STK009206',22288),(266,'STK093477',49415),(267,'STK004671',40298),(268,'STK048261',5543),(269,'STK052679',16642),(270,'STK042754',40823),(271,'STK011350',49389),(272,'STK041563',27086),(273,'STK014648',23889),(274,'STK050576',49249),(275,'STK022899',17946),(276,'STK075257',8343),(277,'STK054173',31840),(278,'STK072801',19908),(279,'STK078318',12755),(280,'STK004025',1863),(281,'STK010240',45575),(282,'STK079176',11730),(283,'STK000381',4767),(284,'STK057221',38840),(285,'STK014677',48370),(286,'STK024306',34491),(287,'STK044197',13085),(288,'STK065129',8207),(289,'STK099951',14891),(290,'STK081851',16233),(291,'STK003043',39019),(292,'STK049739',2794),(293,'STK074198',34023),(294,'STK014086',29226),(295,'STK065564',42556),(296,'STK074096',4284),(297,'STK022075',47806),(298,'STK029628',45157),(299,'STK065972',3262),(300,'STK077121',32546),(301,'STK035103',29832),(302,'STK017333',11172),(303,'STK010195',10349),(304,'STK024789',8090),(305,'STK057357',19976),(306,'STK024652',19770),(307,'STK088930',38772),(308,'STK042503',42542),(309,'STK035292',34763),(310,'STK013530',14817),(311,'STK061081',9369),(312,'STK016834',33510),(313,'STK031594',34627),(314,'STK035857',37670),(315,'STK037534',16381),(316,'STK095018',27356),(317,'STK056417',34479),(318,'STK042209',22033),(319,'STK096038',46227),(320,'STK050259',31179),(321,'STK025981',40619),(322,'STK040513',21175),(323,'STK040091',47630),(324,'STK090432',29835),(325,'STK065235',18955),(326,'STK080815',4943),(327,'STK071866',16257),(328,'STK036418',47770),(329,'STK076258',39795),(330,'STK080535',45333),(331,'STK050910',43613),(332,'STK045897',5737),(333,'STK062907',11886),(334,'STK020696',18416),(335,'STK025696',9201),(336,'STK063654',28535),(337,'STK066178',15577),(338,'STK053198',11921),(339,'STK086120',39944),(340,'STK070722',4704),(341,'STK030078',35023),(342,'STK066404',41597),(343,'STK049952',7752),(344,'STK083426',42177),(345,'STK029885',10922),(346,'STK039162',37375),(347,'STK069188',31405),(348,'STK034561',11849),(349,'STK026037',14341),(350,'STK088707',42651),(351,'STK074131',29073),(352,'STK087970',30211),(353,'STK064477',1472),(354,'STK090577',32487),(355,'STK003377',16397),(356,'STK058564',21886),(357,'STK063742',4141),(358,'STK081418',2483),(359,'STK093007',31651),(360,'STK001860',49295),(361,'STK029653',34245),(362,'STK013434',49100),(363,'STK052607',20549),(364,'STK085666',16442),(365,'STK097032',32365),(366,'STK009430',19884),(367,'STK065952',44869),(368,'STK012851',22335),(369,'STK094211',41170),(370,'STK093112',46515),(371,'STK035429',13370),(372,'STK018076',40967),(373,'STK063543',34949),(374,'STK027864',41528),(375,'STK094288',6815),(376,'STK071267',32539),(377,'STK025815',24087),(378,'STK022118',32131),(379,'STK037521',1355),(380,'STK041062',16055),(381,'STK033850',23892),(382,'STK093583',13054),(383,'STK006257',20112),(384,'STK031627',21843),(385,'STK042725',39033),(386,'STK051801',27658),(387,'STK018497',34860),(388,'STK081784',21860),(389,'STK076445',46638),(390,'STK023277',21281),(391,'STK077580',27264),(392,'STK017274',28340),(393,'STK093923',38547),(394,'STK044055',39051),(395,'STK039224',43401),(396,'STK031207',19131),(397,'STK032648',31909),(398,'STK044124',17436),(399,'STK019989',30972),(400,'STK078576',33227),(401,'STK067792',41154),(402,'STK084897',31666),(403,'STK094742',42324),(404,'STK071887',6198),(405,'STK059597',2923),(406,'STK015023',23034),(407,'STK094766',4874),(408,'STK081941',48061),(409,'STK075092',28042),(410,'STK005334',44689),(411,'STK008636',49619),(412,'STK027167',8819),(413,'STK060419',4175),(414,'STK047632',5900),(415,'STK067860',40346),(416,'STK017560',36786),(417,'STK063007',15104),(418,'STK077598',36482),(419,'STK024072',5265),(420,'STK036010',28443),(421,'STK014409',31430),(422,'STK026970',23680),(423,'STK099359',7203),(424,'STK098865',49298),(425,'STK032536',8910),(426,'STK004906',12203),(427,'STK030644',29863),(428,'STK008616',31810),(429,'STK070069',27966),(430,'STK010646',2059),(431,'STK019953',21775),(432,'STK097261',2621),(433,'STK037031',24450),(434,'STK099470',12792),(435,'STK041634',47537),(436,'STK084305',36937),(437,'STK046673',7792),(438,'STK078496',14984),(439,'STK074113',10188),(440,'STK073868',3844),(441,'STK041339',22090),(442,'STK026179',28933),(443,'STK062531',24742),(444,'STK029649',13749),(445,'STK091018',15926),(446,'STK096552',10530),(447,'STK062582',826),(448,'STK034500',30987),(449,'STK062183',18423),(450,'STK097286',26750),(451,'STK065686',30557),(452,'STK028076',4761),(453,'STK079684',33071),(454,'STK050806',14492),(455,'STK043604',13072),(456,'STK096621',9038),(457,'STK031639',13672),(458,'STK095012',11141),(459,'STK075940',10930),(460,'STK022706',29305),(461,'STK082168',37348),(462,'STK085611',17721),(463,'STK059104',30909),(464,'STK082795',12801),(465,'STK022317',23071),(466,'STK031848',21697),(467,'STK041689',41964),(468,'STK031647',39744),(469,'STK001351',550),(470,'STK095792',22861),(471,'STK075644',46957),(472,'STK008196',39213),(473,'STK051582',2552),(474,'STK020604',31507),(475,'STK087206',41203),(476,'STK028719',27518),(477,'STK076424',13081),(478,'STK019369',31656),(479,'STK048377',46738),(480,'STK084952',34224),(481,'STK080694',17270),(482,'STK097093',9023),(483,'STK075183',12320),(484,'STK007244',23265),(485,'STK016140',41746),(486,'STK066243',14268),(487,'STK063001',49214),(488,'STK089238',46326),(489,'STK059247',20698),(490,'STK056127',14733),(491,'STK073808',19687),(492,'STK040545',5995),(493,'STK075204',27271),(494,'STK099162',37671),(495,'STK027518',28205),(496,'STK091971',37814),(497,'STK023985',26452),(498,'STK096959',6228),(499,'STK096839',39202),(500,'STK083340',12117),(501,'STK033285',23256),(502,'STK058396',38448),(503,'STK001017',8443),(504,'STK066055',12172),(505,'STK029078',44248),(506,'STK051126',46414),(507,'STK018632',31902),(508,'STK092016',26396),(509,'STK052300',1341),(510,'STK032434',30346),(511,'STK066545',48209),(512,'STK041238',4888),(513,'STK054206',12552),(514,'STK055429',17588),(515,'STK072346',7330),(516,'STK047695',21308),(517,'STK081597',39802),(518,'STK066112',47508),(519,'STK048794',29386),(520,'STK078852',16380),(521,'STK091483',6072),(522,'STK069907',10571),(523,'STK051007',38446),(524,'STK036115',23672),(525,'STK079396',34402),(526,'STK010533',4618),(527,'STK068050',27225),(528,'STK012785',23638),(529,'STK084699',6247),(530,'STK056087',2226),(531,'STK043728',32599),(532,'STK040829',22391),(533,'STK095632',44798),(534,'STK093488',1764),(535,'STK066449',43519),(536,'STK023304',28332),(537,'STK044459',38595),(538,'STK097562',7240),(539,'STK036485',18312),(540,'STK057330',47972),(541,'STK064051',40641),(542,'STK066255',31816),(543,'STK037950',39336),(544,'STK044129',13082),(545,'STK051148',2945),(546,'STK001889',21326),(547,'STK024147',4283),(548,'STK055214',21341),(549,'STK020983',20860),(550,'STK076016',10197),(551,'STK005029',19170),(552,'STK037567',37343),(553,'STK050204',26675),(554,'STK089329',10772),(555,'STK070373',14569),(556,'STK076977',13329),(557,'STK069312',1294),(558,'STK041410',34385),(559,'STK031374',15205),(560,'STK049066',44404),(561,'STK080384',42526),(562,'STK065479',41404),(563,'STK060931',31555),(564,'STK036072',1480),(565,'STK017789',48258),(566,'STK075387',12965),(567,'STK018718',35062),(568,'STK041271',14079),(569,'STK025612',34463),(570,'STK014220',11152),(571,'STK078604',15065),(572,'STK056947',12891),(573,'STK026034',30837),(574,'STK047382',3381),(575,'STK056478',13493),(576,'STK015862',31866),(577,'STK023450',44776),(578,'STK055153',30358),(579,'STK061483',566),(580,'STK060066',14729),(581,'STK027307',3334),(582,'STK073350',19486),(583,'STK076154',18313),(584,'STK055434',6121),(585,'STK047846',42616),(586,'STK024021',29223),(587,'STK078597',8653),(588,'STK082611',29732),(589,'STK032115',23149),(590,'STK023273',28265),(591,'STK055889',16104),(592,'STK040406',20107),(593,'STK089883',26502),(594,'STK057597',8668),(595,'STK038469',15567),(596,'STK012846',38692),(597,'STK084899',41756),(598,'STK015171',40342),(599,'STK005487',8555),(600,'STK079082',9986),(601,'STK099440',44821),(602,'STK085749',15772),(603,'STK038365',23925),(604,'STK095335',11615),(605,'STK054686',43026),(606,'STK048700',21775),(607,'STK095804',10147),(608,'STK028160',23211),(609,'STK043453',37217),(610,'STK080015',45386),(611,'STK050855',6804),(612,'STK048922',27618),(613,'STK043400',12619),(614,'STK028215',5574),(615,'STK069033',45141),(616,'STK000120',1868),(617,'STK007722',41661),(618,'STK028273',9162),(619,'STK066671',26305),(620,'STK009446',19672),(621,'STK002933',37277),(622,'STK025143',19153),(623,'STK049243',26969),(624,'STK086868',15012),(625,'STK093888',19495),(626,'STK031892',12698),(627,'STK062095',20434),(628,'STK050583',4058),(629,'STK086896',702),(630,'STK001518',6106),(631,'STK036236',42041),(632,'STK018924',35167),(633,'STK073991',2584),(634,'STK036435',12644),(635,'STK043955',26010),(636,'STK019732',11519),(637,'STK097268',7276),(638,'STK006524',29834),(639,'STK099942',19203),(640,'STK011514',11743),(641,'STK029628',12471),(642,'STK073604',23734),(643,'STK035932',34800),(644,'STK088011',13789),(645,'STK007334',1372),(646,'STK050241',12397),(647,'STK014678',37952),(648,'STK074322',42702),(649,'STK012932',39127),(650,'STK083432',18453),(651,'STK025083',45810),(652,'STK076488',2331),(653,'STK080387',17101),(654,'STK075812',17135),(655,'STK044070',49057),(656,'STK047997',9478),(657,'STK057449',17622),(658,'STK005124',49979),(659,'STK048927',38312),(660,'STK067750',37254),(661,'STK027433',16733),(662,'STK048986',15292),(663,'STK045713',49855),(664,'STK071166',13805),(665,'STK074582',14926),(666,'STK049256',22758),(667,'STK020567',2529),(668,'STK084489',32333),(669,'STK065907',34231),(670,'STK060883',16905),(671,'STK086629',23372),(672,'STK002160',20182),(673,'STK009043',23825),(674,'STK027782',4769),(675,'STK057111',48360),(676,'STK065507',21784),(677,'STK018644',9629),(678,'STK039168',2344),(679,'STK085988',45238),(680,'STK006480',14614),(681,'STK051104',40388),(682,'STK085848',32332),(683,'STK075044',49364),(684,'STK049380',24760),(685,'STK084020',43857),(686,'STK021669',40568),(687,'STK062251',12756),(688,'STK053502',34797),(689,'STK089007',27211),(690,'STK078262',13310),(691,'STK039573',19712),(692,'STK078066',22562),(693,'STK097915',15022),(694,'STK020630',27037),(695,'STK092896',2764),(696,'STK073797',17951),(697,'STK031088',13069),(698,'STK045658',3544),(699,'STK070232',26917),(700,'STK026979',6139),(701,'STK018554',5814),(702,'STK030948',21444),(703,'STK087457',13572),(704,'STK098614',29390),(705,'STK094253',9207),(706,'STK095546',30229),(707,'STK072255',5611),(708,'STK012917',45979),(709,'STK033582',28910),(710,'STK031869',6840),(711,'STK081355',3090),(712,'STK087844',15820),(713,'STK043690',36419),(714,'STK065225',19753),(715,'STK013309',32612),(716,'STK065190',37288),(717,'STK041920',21836),(718,'STK040448',28295),(719,'STK074019',24948),(720,'STK088034',18011),(721,'STK022492',8157),(722,'STK094043',30450),(723,'STK095709',15984),(724,'STK010002',46659),(725,'STK069173',37517),(726,'STK054310',20898),(727,'STK000048',25179),(728,'STK067496',5231),(729,'STK091622',13629),(730,'STK078682',7852),(731,'STK072764',10532),(732,'STK067163',40000),(733,'STK087358',11561),(734,'STK037058',12790),(735,'STK000124',27520),(736,'STK088671',5826),(737,'STK052805',44688),(738,'STK018369',26193),(739,'STK001940',15851),(740,'STK026462',2032),(741,'STK054540',47749),(742,'STK086066',28532),(743,'STK000317',22627),(744,'STK044707',21761),(745,'STK004680',36910),(746,'STK092664',13881),(747,'STK021095',19833),(748,'STK051566',47308),(749,'STK066046',38578),(750,'STK027546',32525),(751,'STK048508',36384),(752,'STK029131',25021),(753,'STK052885',35542),(754,'STK052205',28062),(755,'STK062546',34538),(756,'STK020624',3079),(757,'STK054424',47536),(758,'STK009591',12213),(759,'STK040328',27081),(760,'STK064189',15653),(761,'STK068909',3681),(762,'STK023235',36954),(763,'STK014524',16782),(764,'STK039463',26941),(765,'STK091167',47056),(766,'STK064697',31296),(767,'STK001810',22328),(768,'STK023253',31667),(769,'STK089700',21946),(770,'STK096584',11452),(771,'STK039075',35908),(772,'STK041022',34455),(773,'STK008604',15085),(774,'STK026465',6206),(775,'STK013846',3602),(776,'STK083987',20807),(777,'STK028212',37936),(778,'STK005003',45963),(779,'STK075386',40274),(780,'STK094538',3280),(781,'STK015282',44359),(782,'STK086113',45519),(783,'STK058820',13451),(784,'STK093622',48345),(785,'STK071013',38837),(786,'STK006619',44318),(787,'STK026116',2095),(788,'STK029946',11184),(789,'STK054094',39239),(790,'STK089144',41425),(791,'STK097937',38800),(792,'STK023987',17081),(793,'STK039486',48488),(794,'STK015174',25680),(795,'STK054471',33491),(796,'STK017524',19503),(797,'STK081062',3570),(798,'STK065612',33049),(799,'STK029609',11908),(800,'STK016475',7288),(801,'STK030713',35550),(802,'STK031099',11180),(803,'STK066920',31315),(804,'STK079373',26648),(805,'STK010026',19902),(806,'STK051902',41484),(807,'STK080134',15507),(808,'STK098205',30249),(809,'STK076164',32966),(810,'STK061528',28929),(811,'STK031540',20189),(812,'STK041686',8980),(813,'STK015089',33475),(814,'STK034884',35416),(815,'STK042803',9488),(816,'STK065063',25450),(817,'STK069213',46111),(818,'STK066911',1646),(819,'STK064239',12289),(820,'STK020117',41372),(821,'STK023955',19585),(822,'STK068858',21962),(823,'STK045529',10336),(824,'STK023093',16829),(825,'STK020308',44835),(826,'STK075514',33737),(827,'STK001631',28752),(828,'STK084361',31798),(829,'STK023106',43034),(830,'STK054479',24221),(831,'STK080198',43137),(832,'STK080208',7841),(833,'STK013125',26984),(834,'STK082309',20200),(835,'STK060209',45681),(836,'STK004747',5198),(837,'STK065484',32698),(838,'STK022621',19533),(839,'STK056420',34910),(840,'STK060941',30277),(841,'STK065018',41422),(842,'STK078885',26668),(843,'STK055161',34279),(844,'STK033885',35590),(845,'STK005932',43846),(846,'STK043200',42838),(847,'STK094526',42963),(848,'STK053182',30922),(849,'STK051522',4637),(850,'STK030560',18899),(851,'STK053468',20090),(852,'STK085096',45971),(853,'STK031136',27921),(854,'STK045282',24184),(855,'STK012737',22686),(856,'STK027910',12161),(857,'STK065056',31157),(858,'STK009717',8906),(859,'STK063768',43477),(860,'STK043945',9916),(861,'STK052871',10340),(862,'STK012031',18278),(863,'STK085209',45774),(864,'STK002565',27296),(865,'STK010143',45929),(866,'STK091722',32113),(867,'STK066599',25966),(868,'STK032579',7323),(869,'STK098137',21258),(870,'STK027442',45624),(871,'STK058492',22194),(872,'STK089015',32460),(873,'STK077974',43354),(874,'STK051750',1540),(875,'STK087602',28892),(876,'STK074415',27830),(877,'STK054756',31871),(878,'STK048917',13178),(879,'STK097065',3635),(880,'STK020581',5063),(881,'STK079113',49490),(882,'STK004435',46230),(883,'STK062596',13161),(884,'STK066197',28770),(885,'STK076384',6189),(886,'STK059166',34478),(887,'STK017686',38532),(888,'STK050775',9874),(889,'STK044692',39288),(890,'STK001127',14697),(891,'STK027627',13704),(892,'STK058289',25641),(893,'STK054977',29481),(894,'STK020763',14155),(895,'STK017915',18404),(896,'STK044565',45711),(897,'STK031125',47334),(898,'STK088526',22752),(899,'STK090211',47891),(900,'STK074998',44056),(901,'STK017260',39017),(902,'STK088039',45486),(903,'STK061845',14010),(904,'STK073004',31488),(905,'STK030000',27269),(906,'STK082561',15599),(907,'STK035847',19817),(908,'STK068321',48530),(909,'STK093498',34398),(910,'STK091174',24628),(911,'STK078722',32288),(912,'STK049802',2232),(913,'STK028515',28046),(914,'STK009009',11558),(915,'STK036856',46804),(916,'STK048836',40601),(917,'STK058447',6294),(918,'STK070757',30630),(919,'STK095650',13446),(920,'STK053765',21498),(921,'STK072767',7897),(922,'STK063256',49555),(923,'STK076253',14301),(924,'STK052780',5357),(925,'STK066127',23910),(926,'STK022048',23998),(927,'STK093764',42966),(928,'STK002997',28956),(929,'STK054991',25179),(930,'STK067087',10786),(931,'STK020127',39758),(932,'STK035624',38609),(933,'STK031743',37861),(934,'STK085235',2969),(935,'STK036620',12432),(936,'STK046818',40123),(937,'STK062849',16375),(938,'STK059364',12533),(939,'STK071300',48615),(940,'STK025063',37837),(941,'STK003862',1239),(942,'STK059465',29098),(943,'STK052073',26957),(944,'STK063468',37745),(945,'STK015604',14332),(946,'STK082214',40061),(947,'STK073057',11329),(948,'STK084866',15375),(949,'STK034957',7676),(950,'STK040238',12888),(951,'STK078023',1238),(952,'STK024664',733),(953,'STK065381',42020),(954,'STK082055',32281),(955,'STK038487',10424),(956,'STK066643',27372),(957,'STK019511',1972),(958,'STK029249',33647),(959,'STK050982',20158),(960,'STK070085',43341),(961,'STK060375',3456),(962,'STK070011',14425),(963,'STK056905',23310),(964,'STK035404',27651),(965,'STK077453',40670),(966,'STK082923',32708),(967,'STK011360',28639),(968,'STK000802',21974),(969,'STK023731',34224),(970,'STK004100',29805),(971,'STK041605',1148),(972,'STK097277',24379),(973,'STK045901',36415),(974,'STK019020',30785),(975,'STK021239',33283),(976,'STK096295',22713),(977,'STK073593',49263),(978,'STK079308',41879),(979,'STK037819',32708),(980,'STK023797',5173),(981,'STK015090',30305),(982,'STK025311',12631),(983,'STK010819',48819),(984,'STK017469',3448),(985,'STK075392',4181),(986,'STK036289',21404),(987,'STK088817',33777),(988,'STK076870',40339),(989,'STK012539',5118),(990,'STK034041',2681),(991,'STK026518',7444),(992,'STK049192',49314),(993,'STK086984',17727),(994,'STK075814',44142),(995,'STK097535',49971),(996,'STK030683',48508),(997,'STK047793',39103),(998,'STK064569',23307),(999,'STK019992',48633),(1000,'STK028748',36738);
/*!40000 ALTER TABLE `stonks_stonk` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-20 14:24:20
