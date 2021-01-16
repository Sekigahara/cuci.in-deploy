-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cuci_in
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,3,'Karah Agung Street','2020-10-26 23:52:28','2020-10-26 23:52:28',NULL),(2,3,'Karah Agung Street','2020-10-26 23:53:44','2020-10-26 23:53:44',NULL),(3,4,'Karah Agung Street','2020-10-28 06:20:35','2020-10-28 06:20:35',NULL),(4,4,'Karah Agung Street','2020-10-28 06:22:43','2020-10-28 06:22:43',NULL),(5,4,'Karah Agung Street','2020-11-12 09:58:10','2020-11-12 09:58:10',NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laundry_types`
--

DROP TABLE IF EXISTS `laundry_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laundry_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laundry_types`
--

LOCK TABLES `laundry_types` WRITE;
/*!40000 ALTER TABLE `laundry_types` DISABLE KEYS */;
INSERT INTO `laundry_types` VALUES (1,'basic','2020-10-26 23:58:50','2020-10-27 00:05:29','2020-10-27 00:05:29'),(2,'express','2020-10-27 00:05:45','2020-10-27 00:05:45',NULL),(3,'test','2020-11-10 05:35:50','2020-11-10 05:36:24','2020-11-10 05:36:24'),(4,'Laundry Sepatu','2020-11-12 09:58:33','2020-11-12 09:58:33',NULL);
/*!40000 ALTER TABLE `laundry_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2016_06_01_000001_create_oauth_auth_codes_table',1),(3,'2016_06_01_000002_create_oauth_access_tokens_table',1),(4,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(5,'2016_06_01_000004_create_oauth_clients_table',1),(6,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(7,'2020_10_08_123111_create_laundry_types_table',1),(8,'2020_10_08_134017_create_transactions_table',1),(9,'2020_10_08_150419_add_column_laundry_type_on_transaction_table',1),(10,'2020_10_08_151236_create_outlets_table',1),(11,'2020_10_09_062127_cuci_migration',1),(12,'2020_10_09_063937_create_customers_table',1),(13,'2020_10_09_065155_create_owners_table',1),(14,'2020_10_09_073328_drop_manhours_migration',1),(15,'2020_10_10_092743_add_remember_token_on_user_table',1),(16,'2020_10_12_072933_add_column_user_id_on_customer_table',1),(17,'2020_10_12_074642_drop_column_price_on_laundry_type',1),(18,'2020_10_12_074750_edit_colomn_laundry_type_id_on_transaction',1),(22,'2020_12_02_125411_create_outlet_google_table',2),(23,'2020_12_02_125742_drop_column_outlet_id_on_transaction',2),(24,'2020_12_02_130004_add_column_outlet_id_on_transaction',2),(25,'2020_12_18_121313_add_id_on_outlet_google_table',3),(26,'2020_12_18_121417_add_outlet_google_id_on_transactione_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('03e70676a1ce404bcd91a03bf78c3436b912828ae0502608bd3240af04c58efe1b3db11ff4e8bfad',11,1,'Personal Access Token','[]',0,'2020-11-14 03:11:11','2020-11-14 03:11:11','2021-11-14 11:11:11'),('04d7905611b4e91aa2555b7fe40fbed9b9825be2451e767e393331fb0f5e3f6b3227233463436d78',11,1,'Personal Access Token','[]',0,'2020-11-14 03:13:19','2020-11-14 03:13:19','2021-11-14 11:13:19'),('1fb8ee457c7c55745f680448cb72026fea19d043f8e8d2723d63af0e3af83bbeebd47130149d4515',12,1,'Personal Access Token','[]',0,'2020-11-18 23:22:53','2020-11-18 23:22:53','2021-11-19 07:22:53'),('1fb8ff393ed776dc109b5686a773d4f88fb8b559d3453a6479a0d659df1115a64201589694ad60fd',11,1,'Personal Access Token','[]',0,'2020-11-14 03:29:31','2020-11-14 03:29:31','2021-11-14 11:29:31'),('2703a11dbe193da66a5d07280904277e63ff0c7c03c4ac3f6c3e36f64267401a0e30e7d4737c4f11',1,1,'Personal Access Token','[]',0,'2020-10-14 06:15:53','2020-10-14 06:15:53','2021-10-14 13:15:53'),('2b3631eb2bb1921ec22296d7e3aa2e9635c043d7eadad43295397fd7f0f61be51f1f68f21aa50133',11,1,'Personal Access Token','[]',0,'2020-11-13 02:23:44','2020-11-13 02:23:44','2021-11-13 10:23:44'),('2df732381219449b6fdc15367c7c9374f214bccbd8a612331137558946f32b1497034454c2a44943',11,1,'Personal Access Token','[]',0,'2020-11-19 00:42:26','2020-11-19 00:42:26','2021-11-19 08:42:26'),('308143695c7154c6b517ad3adcb103c83d999279a51799b9416be85899c0245c4e834fa8fb4a74ba',11,1,'Personal Access Token','[]',0,'2020-11-14 03:29:08','2020-11-14 03:29:08','2021-11-14 11:29:08'),('3381816793ce74a5f03110473696ceb7df54f4797613c0f981d5cd63f2ec04c8734a2f462705b62f',4,1,'Personal Access Token','[]',0,'2020-10-26 23:31:41','2020-10-26 23:31:41','2021-10-27 06:31:41'),('38cec5972f7d104c9c1d0d05ea0bb03c809fab29f2a4f870da1eb9bd942e58619f777953493b2049',12,1,'Personal Access Token','[]',0,'2020-11-19 00:42:19','2020-11-19 00:42:19','2021-11-19 08:42:19'),('409ce458eac83b2151b92359c7f13f474c563a38c0d91e71dc0238ab1012524bc7ca68e75c0530b5',11,1,'Personal Access Token','[]',0,'2020-11-14 03:31:26','2020-11-14 03:31:26','2021-11-14 11:31:26'),('42fa4b7431f60f241c69be67bd332be4174cc6c387c08cdc4fba5ead62fb4faf3fb27c602054baa2',4,1,'Personal Access Token','[]',0,'2020-10-26 23:32:59','2020-10-26 23:32:59','2021-10-27 06:32:59'),('4469ba3418ebddd0e7c5be13f240a966d4e40d1add1330296b68253de4c0ed591944e7580ab8e601',9,1,'Personal Access Token','[]',0,'2020-11-10 05:37:48','2020-11-10 05:37:48','2021-11-10 12:37:48'),('45ab53c76727b9c9a5231ca7aec1e8ea2fd8162f2f506ee49eb0e4b57a9f4b1c1322b4a5ad6b6d13',13,1,'Personal Access Token','[]',0,'2020-11-19 00:42:14','2020-11-19 00:42:14','2021-11-19 08:42:14'),('468e257fdffe96db509327dd1b837239abbe98809e19c4ab6209caf5cad8cc39046a1bfb00a3e010',4,1,'Personal Access Token','[]',0,'2020-10-26 23:30:02','2020-10-26 23:30:02','2021-10-27 06:30:02'),('598ef8b6b44c5e835c4d44a1f197b8cc3146ccf89a308dfbfcf2d795d7e01e1bfd91d11efffc64a9',10,1,'Personal Access Token','[]',0,'2020-11-12 09:56:25','2020-11-12 09:56:25','2021-11-12 16:56:25'),('5cfa5ea6fe4540e7380c597c7332f9f6a2fed8681fff8320bc51e8f4b2e9c1cffaf6b8251bcc95ea',4,1,'Personal Access Token','[]',0,'2020-10-26 23:37:27','2020-10-26 23:37:27','2021-10-27 06:37:27'),('6717896ba8961759771753c0c24febfce5fc2e435d8969f03d8c5ffbfe262fde258647c3fb943514',4,1,'Personal Access Token','[]',0,'2020-10-26 23:46:58','2020-10-26 23:46:58','2021-10-27 06:46:58'),('72f2edcf3fb9d3cfe36386ef42b5e82bac651c570a8e8ae658c3b8fe69754e012effc6052a65b90f',4,1,'Personal Access Token','[]',0,'2020-11-10 05:29:47','2020-11-10 05:29:47','2021-11-10 12:29:47'),('7ecac0d18acbd795338f4aa01b6fc04cca424beb1c076773a0dee9e30a5afb0e3f6f0f5d0a56b3cf',1,1,'Personal Access Token','[]',0,'2020-10-14 06:11:27','2020-10-14 06:11:27','2021-10-14 13:11:27'),('7f11cc26eabb191f1131d676c82da04ce3d2786e6fa7053e0429281b91f007e1c10d97db47e96fdb',11,1,'Personal Access Token','[]',0,'2020-11-12 20:50:28','2020-11-12 20:50:28','2021-11-13 04:50:28'),('8714e030a555916c7202dbae0c8fbc2381196a29a0adc2b86dc287098c3faa113fd45a4a167ab0c4',11,1,'Personal Access Token','[]',0,'2020-11-14 03:18:40','2020-11-14 03:18:40','2021-11-14 11:18:40'),('8ad9719d6b461d51cb2abe76b2a3683ddd7ada05860382bab86ebad1b37d277259390cd33dca71f6',11,1,'Personal Access Token','[]',0,'2020-11-14 03:12:47','2020-11-14 03:12:47','2021-11-14 11:12:47'),('8b0c6ed2d4ec9f0c88fd7fd719c8cafc81166d52bfcecfefbfc22cc609e0e52059b7ba7dd55f83af',11,1,'Personal Access Token','[]',0,'2020-11-12 20:43:24','2020-11-12 20:43:24','2021-11-13 04:43:24'),('98d3980b466dc953c8c9517c1f85821d439d0a76d7644cc244f17ba91b194158023b387ab352843e',11,1,'Personal Access Token','[]',0,'2020-11-30 06:40:39','2020-11-30 06:40:39','2021-11-30 14:40:39'),('aa20142f8724aacd6aaa8aeecab0820ed34aeef4ad4259a2cd7513698017124cfee4dbc15a3c3114',1,1,'Personal Access Token','[]',0,'2020-10-14 06:54:25','2020-10-14 06:54:25','2021-10-14 13:54:25'),('acc2a9c34223443709f6fe384953a8ce00bee92c7c7d99d8c40c1df6e1d31b8ef8300f64111a0a8c',4,1,'Personal Access Token','[]',1,'2020-10-26 23:36:11','2020-10-26 23:36:11','2021-10-27 06:36:11'),('b56b45b6bed1dc42c5d33e1bf0e8a0f554c4755312724ca76f070a5b20e4a73f5c60f397c5b36a8a',11,1,'Personal Access Token','[]',0,'2020-11-14 03:10:12','2020-11-14 03:10:12','2021-11-14 11:10:12'),('beafbab3bbbf0d600f582faf891eaf798e8c1b38e766ed9b1da696369b5ae5d381c466023cc48c62',11,1,'Personal Access Token','[]',0,'2020-11-14 03:23:32','2020-11-14 03:23:32','2021-11-14 11:23:32'),('bf0fd44958b1976a32b072db1ac922b41b90ef6dd6d93c75143b1ef89bc82a40f6a84515ce2f77ed',11,1,'Personal Access Token','[]',0,'2020-11-12 20:47:53','2020-11-12 20:47:53','2021-11-13 04:47:53'),('c1b6f31810b7f92d40dfc360a30628f802e28b8f78e5a60c890ed357b9a23ae501f023032b4b290b',11,1,'Personal Access Token','[]',0,'2020-11-12 20:46:40','2020-11-12 20:46:40','2021-11-13 04:46:40'),('c4c21b3f0265e2fd2d0881543739a34fba51779257f1bff382566d989adf2364581ec027a054155f',11,1,'Personal Access Token','[]',0,'2020-11-14 03:06:37','2020-11-14 03:06:37','2021-11-14 11:06:37'),('c7f0ee04568d8b0a1703a2a5ae628d330e09ecacedf5792455c10676a23014c59c0eb856a5c62874',11,1,'Personal Access Token','[]',0,'2020-11-14 03:08:30','2020-11-14 03:08:30','2021-11-14 11:08:30'),('e0cbd0f026b91f525f3440ad662dbb69c819f80ec5df4f083745b7e381617bd28cb25a1a7de1f535',11,1,'Personal Access Token','[]',0,'2020-11-14 03:27:26','2020-11-14 03:27:26','2021-11-14 11:27:26'),('e80beacf69ccd6430db819939fc21531b60bd88e6dd98d53c80550e186b8e4d3611106bea5dd93ec',10,1,'Personal Access Token','[]',1,'2020-11-12 09:55:02','2020-11-12 09:55:02','2021-11-12 16:55:02'),('e8c7b54f2abe6812d012535241dc0fb998ac1927d23f8e92bfd16ccc215cb816f19a08a6e427871d',4,1,'Personal Access Token','[]',1,'2020-10-26 23:36:59','2020-10-26 23:36:59','2021-10-27 06:36:59'),('f0ce99b392b3c4de426197cdfb147af5ed114b78f5037767f83a609068e7ad0e56d6d6814739c2f4',11,1,'Personal Access Token','[]',0,'2020-11-13 01:08:39','2020-11-13 01:08:39','2021-11-13 09:08:39'),('f23dfa38af3bc02543c064ef7f54e41edad63fd793332d35bf0bec00e0cd02a76e67aa80910c1ab9',11,1,'Personal Access Token','[]',0,'2020-11-19 23:45:31','2020-11-19 23:45:31','2021-11-20 07:45:31'),('fbd344afa701697261988fb30cdccb417e244c09431304cce6b68005bf1a374fdc6a6340797cf442',1,1,'Personal Access Token','[]',0,'2020-10-23 01:40:50','2020-10-23 01:40:50','2021-10-23 08:40:50');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','qQ7Pip9DXtEeqwrPRimORXdZ2w7fEHaBgiNhBByn',NULL,'http://localhost',1,0,0,'2020-10-13 19:14:23','2020-10-13 19:14:23'),(2,NULL,'Laravel Password Grant Client','Q8d2bM2d7cMBY1OCUXV7CFQh9IqBHyUCh2TlA4Bc','users','http://localhost',0,1,0,'2020-10-13 19:14:23','2020-10-13 19:14:23');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2020-10-13 19:14:23','2020-10-13 19:14:23');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outlet_google`
--

DROP TABLE IF EXISTS `outlet_google`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outlet_google` (
  `outlet_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outlet_google`
--

LOCK TABLES `outlet_google` WRITE;
/*!40000 ALTER TABLE `outlet_google` DISABLE KEYS */;
/*!40000 ALTER TABLE `outlet_google` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outlets`
--

DROP TABLE IF EXISTS `outlets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outlets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` double(8,2) NOT NULL,
  `laundry_type` json NOT NULL,
  `manhours` json NOT NULL,
  `owner_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outlets`
--

LOCK TABLES `outlets` WRITE;
/*!40000 ALTER TABLE `outlets` DISABLE KEYS */;
INSERT INTO `outlets` VALUES (1,'Izumi Laundry','Rock Bottom','123123',5.00,'1','7',3,'2020-10-27 00:19:41','2020-10-27 00:22:54','2020-10-27 00:22:54'),(2,'Sagiri Laundry','Bikini Bottom','123123123',4.80,'2','4',3,'2020-10-27 00:23:17','2020-10-27 00:23:17',NULL),(3,'Dunno Laundry','Bikini Bottom','123123123',4.80,'2','4',7,'2020-10-28 06:26:42','2020-10-28 06:26:42',NULL),(4,'Izumi Laundry','Rock Bottom','123123',5.00,'1','7',6,'2020-11-10 05:33:41','2020-11-10 05:34:59',NULL),(5,'Test Laundry','Bikini Bottom','012301230',4.80,'2','4',10,'2020-11-12 10:00:05','2020-11-12 10:00:05',NULL),(6,'Clean Me','Jalan Mulyosari XI no 10','08231241412',0.00,'{\"Cuci Biasa\": 4000}','{\"Senin\": \"07.00\"}',10,'2020-11-30 06:42:01','2020-11-30 06:42:01',NULL);
/*!40000 ALTER TABLE `outlets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owners`
--

DROP TABLE IF EXISTS `owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owners`
--

LOCK TABLES `owners` WRITE;
/*!40000 ALTER TABLE `owners` DISABLE KEYS */;
INSERT INTO `owners` VALUES (1,3,'2020-10-14 06:37:07','2020-10-14 06:37:07',NULL),(2,3,'2020-10-14 06:38:45','2020-10-14 06:38:45',NULL),(3,3,'2020-10-14 06:41:05','2020-10-14 06:41:05',NULL),(4,3,'2020-10-14 06:54:17','2020-10-14 06:54:17',NULL),(5,3,'2020-10-14 06:54:29','2020-10-14 06:54:29',NULL),(6,3,'2020-10-23 01:40:59','2020-10-23 01:40:59',NULL),(7,4,'2020-10-28 06:25:45','2020-10-28 06:25:45',NULL),(8,6,'2020-11-10 05:33:08','2020-11-10 05:33:08',NULL),(9,10,'2020-11-12 09:57:07','2020-11-12 09:57:07',NULL),(10,11,'2020-11-30 06:41:12','2020-11-30 06:41:12',NULL);
/*!40000 ALTER TABLE `owners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `po_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `laundry_type` json NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `outlet_id` bigint unsigned DEFAULT NULL,
  `outlet_google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'LNDRY-2020/10/00001','Bikini Bottom 5',NULL,NULL,'2',NULL,4,'2020-10-27 01:00:00','2020-10-27 01:00:00',NULL,NULL,NULL),(2,'LNDRY-2020/10/00002','Bikini Bottom 5',1000,4.00,'2','drying',4,'2020-10-27 01:04:18','2020-10-28 06:33:25',NULL,NULL,NULL),(3,'LNDRY-2020/10/00003','Bikini Bottom 10',NULL,NULL,'2',NULL,4,'2020-10-28 06:28:09','2020-10-28 06:34:23','2020-10-28 06:34:23',NULL,NULL),(4,'LNDRY-2020/11/00004','Bikini Bottom 10',1000000,4.00,'2','lagi dicuci',4,'2020-11-10 05:38:30','2020-11-12 10:01:29','2020-11-12 10:01:29',NULL,NULL),(5,'LNDRY-2020/11/00005','Bikini Bottom 10',NULL,NULL,'2',NULL,4,'2020-11-12 10:00:57','2020-11-12 10:00:57',NULL,NULL,NULL);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Andro Aprila Adiputra','sekigahara','androaprila13@gmail.com','081818181','$2y$10$xF3NV6BhbU7UMacNLQzT6ObxeApaw93FN9b1YzaYYrG6fQOveBfmi',NULL,'2020-10-14 06:09:58','2020-10-14 06:09:58',NULL),(4,'Andro Aprila Adiputra','sekigahara1','androaprila134@gmail.com','0818181812','$2y$10$2Q8GKSo2R5XHwUp.r3KCG.GfnIU1Ye/78uQCmmtPoI2K9QYdLh6/S',NULL,'2020-10-26 23:29:23','2020-10-26 23:29:23',NULL),(6,'Andro Aprila Adiputra','sekigahara123','androaprila34@gmail.com','08181818','$2y$10$qmWaS8BUXDyDHjSm0Kz84O2dGTUDEvN4irGS.APFboGb0QzrWqLSO',NULL,'2020-10-26 23:30:51','2020-10-26 23:30:51',NULL),(8,'Andro','123123','test@gmail.com','08181818123','$2y$10$Oommxb1.ZIqs.LCeaeB7VO6J/ZcJ6I6g7HQA6y6oH6ls7.RgVkOQa',NULL,'2020-11-10 05:29:11','2020-11-10 05:29:11',NULL),(9,'Andro','12312311','test123@gmail.com','081818181232','$2y$10$i1rGAZTa0JKvK5DVmcfPceA3SjRoXYajo94FYpMOIb/iK4gpfooCy',NULL,'2020-11-10 05:37:06','2020-11-10 05:37:06',NULL),(10,'Shimakaze','zekamashi123','shimakaze@gmail.com','0812121341','$2y$10$Sgrez9SdT3TMkkuQ4bhGNOgP37tkWmCCZzakwV1SOMs8dHrnQHAs.',NULL,'2020-11-12 09:54:38','2020-11-12 09:54:38',NULL),(11,'Tude Verdhangga','tudeverdhangga','tudeverdhangga@gmail.com','081999528039','$2y$10$PaePGxiiVI4eD5f37Ssfduim9mlUh.7vNi9hRAlZVFoKJz51wRuRG',NULL,'2020-11-12 20:43:12','2020-11-12 20:43:12',NULL),(12,'Super Admin','admin','admin@cuciin.com','087861199335','$2y$10$dYP.rfubwVUvdgvWMghAqeyZKD/QVEn4L1px7tyT/V9US1yWNOr5a',NULL,'2020-11-18 23:20:57','2020-11-18 23:20:57',NULL),(13,'Agus','agus','agus@gmail.com','081122334455','$2y$10$P0JaMOVlpTpeEWkvkA2rqOKiye.xPsiqN.eMcBB.S0cD6aOFeeKoq',NULL,'2020-11-19 00:42:03','2020-11-19 00:42:03',NULL);
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

-- Dump completed on 2020-12-27 18:59:49
