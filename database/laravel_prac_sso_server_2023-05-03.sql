# ************************************************************
# Sequel Ace SQL dump
# Version 20046
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: 127.0.0.1 (MySQL 8.0.32)
# Database: laravel_prac_sso_server
# Generation Time: 2023-05-03 09:59:07 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(19,'2014_10_12_000000_create_users_table',1),
	(20,'2014_10_12_100000_create_password_resets_table',1),
	(21,'2016_06_01_000001_create_oauth_auth_codes_table',1),
	(22,'2016_06_01_000002_create_oauth_access_tokens_table',1),
	(23,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),
	(24,'2016_06_01_000004_create_oauth_clients_table',1),
	(25,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),
	(26,'2019_08_19_000000_create_failed_jobs_table',1),
	(27,'2019_12_14_000001_create_personal_access_tokens_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`)
VALUES
	('032922f612ff49245557c26af72684c86e742927e38e5a6fa75f6adf17058f81d415e3217e8b4d23',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5',NULL,'[]',0,'2023-05-03 07:53:41','2023-05-03 07:53:41','2023-05-18 07:53:41'),
	('2bcb822712ec21365a64980eb2484bbf37c30d19f5b28489797996bf8feb940ca94f7715b350b66d',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5',NULL,'[\"read-user\"]',0,'2023-05-03 07:33:15','2023-05-03 07:33:15','2023-05-18 07:33:15'),
	('2ee57bda3a8a9ec7b59351b11b6ea8edf6dd18992026642d5591fe066b9602f5e7794c3a776f6e58',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5',NULL,'[]',0,'2023-05-03 07:55:35','2023-05-03 07:55:35','2023-05-18 07:55:35'),
	('378997a63968cad1982fee33d1d3b57111b67ea4a38d964a9e8bdbf56b72ff82887bdb5b3cb8314f',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5',NULL,'[]',0,'2023-05-03 07:52:13','2023-05-03 07:52:13','2023-05-18 07:52:13'),
	('47eb924ef26900a1e81213c626ed8d8518b1c26221ada337b08174db5fa71d5f3d7757cc31dd533f',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5',NULL,'[\"read-user\"]',0,'2023-05-03 07:36:14','2023-05-03 07:36:14','2023-05-18 07:36:14'),
	('4b5900538256c2abd707d3f5c8db514e923e37e67a69b2259c829a43605c6b2122fb2e7fdd5554f3',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5',NULL,'[]',0,'2023-05-03 07:26:30','2023-05-03 07:26:30','2023-05-18 07:26:30'),
	('8abe5bc86dace985b784191ab48a573ca22e6b6a98ab433a87e6f544a20cd6e155d0ba61ae3d0d85',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5',NULL,'[]',0,'2023-05-03 07:28:51','2023-05-03 07:28:51','2023-05-18 07:28:51'),
	('9d9fc4f941a70bf203800fa90aa7c6cde516c47ec2e54f3585edc5cba5958753c28975d8276a0cbc',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5',NULL,'[]',0,'2023-05-03 07:14:10','2023-05-03 07:14:10','2023-05-18 07:14:10'),
	('a61fb580397c724795e0d1d6ca605afa589db3abc30ac19455f11de1e2b3a67e9223cac5d62b6ab2',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5',NULL,'[]',0,'2023-05-03 07:50:47','2023-05-03 07:50:47','2023-05-18 07:50:47'),
	('be45c310e388d21b87300ebe167c47a55fa2cc58c36e9f78e235ebcf1dd6c127dc0560e2d7e79bcf',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5',NULL,'[]',0,'2023-05-03 07:57:27','2023-05-03 07:57:27','2023-05-18 07:57:27'),
	('d56312475e729d254a26972439758bd4313098a7cb4f5a5aff2417292ef7b85a456e7ae0393c92b0',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5',NULL,'[\"view-user\"]',0,'2023-05-03 08:03:55','2023-05-03 08:03:55','2023-05-18 08:03:55'),
	('d5c240a3ab8055b4acf78fcb6894e062df7b349ae4717c56b5bfb4614386bf5be83bb2186a536425',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5',NULL,'[\"view-user\"]',0,'2023-05-03 08:11:30','2023-05-03 08:11:30','2023-05-18 08:11:30'),
	('e0e5f67d48d4b5709e5a6298f544b3bc532ede03a6d307fc0d94d5b71ca8ed62c69f447205f23d1c',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5',NULL,'[\"view-user\"]',0,'2023-05-03 08:04:39','2023-05-03 08:04:39','2023-05-18 08:04:39'),
	('f8cdd45db3c99a9d7697ba165758b7e8df7cba9c8e9bd5499fe750330e9a4fc92613173bc74548e6',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5',NULL,'[\"view-user\"]',0,'2023-05-03 07:12:13','2023-05-03 07:12:13','2023-05-18 07:12:13');

/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_auth_codes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;

INSERT INTO `oauth_auth_codes` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `expires_at`)
VALUES
	('08017c81c4142bbb0dc5f2c4fe94d97f08665d6b4891f2db0a03009a978ceb4702a6c8778c7c8f36',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5','[\"read-user\"]',1,'2023-05-03 07:43:14'),
	('1e5aabe0131a72153434cde52a98fa93337b851e5cc3bfa2617ff4d5d3a561c0353dc044d395b867',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5','[]',1,'2023-05-03 07:38:51'),
	('288c9c8bb40fbd6e794f28d792d8e99a192539d8820eddab79a89dbc290cb567c17cafdbccee911b',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5','[]',1,'2023-05-03 08:00:47'),
	('550fb1d8320be35f8dcc559a0db811726bd85043839e5e35e4ebdff1ae8dfd3a4bf5fcfc6b854773',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5','[]',1,'2023-05-03 08:07:27'),
	('777917473868779ce9864ef84639c796b1ef3b6ddec27d27c7fb38175a8a4de374d34c9513feca25',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5','[\"read-user\"]',1,'2023-05-03 07:46:14'),
	('7b98bc2e57be5d8ca6b5767b58e32f7f67994c5a6eced14be2ae7d55cdfe7c0a50318425ac6e8383',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5','[]',1,'2023-05-03 08:05:35'),
	('86df18a827da7e45e5aff0b16ab2785ffdec588bc9c7561a534b0e7dc0257078ce9ea7332dba34fc',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5','[]',1,'2023-05-03 07:36:30'),
	('c687b456eed45d175988da5cba5032c9ce475ab7ba68419ff99d9b4d90ef2511627378e95438f0db',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5','[\"view-user\"]',1,'2023-05-03 08:14:39'),
	('d498a786ef8dc3a8ab9ea1646769a128462158a7c0216ccceecb72d5391d25fb35799433f0b759f6',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5','[\"view-user\"]',1,'2023-05-03 07:20:43'),
	('d55d45bc37bac29f2f85068017f462e55ce72c7912ad21e7c8ef9bdb98bf41b9e2b09b1c686e453b',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5','[]',1,'2023-05-03 07:24:10'),
	('e3dd40b5d1057cc59922a60577a3ebebc954a244e2b9060b2c8e5cfa0476ec15812341a1305f22b8',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5','[\"view-user\"]',1,'2023-05-03 08:13:54'),
	('f1fd66ed78f4e31d13cd9945102a2101cd83751f801e276b5af45836d10828227e2aec6e4f87eb3a',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5','[]',1,'2023-05-03 08:03:41'),
	('f7989ee69e88ea0287b98f8c3a824bf1f5948967857ca8df201584d49ab91c66e31e03cfd1d5195b',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5','[\"view-user\"]',1,'2023-05-03 08:21:30'),
	('f84704a1bf0026585c847cd1baebf83d47f650fcb2ae81ea97606a913e7cd14e02919dae8626b72f',1,'9913ab72-debb-41bd-b3fd-37d8016d00b5','[]',1,'2023-05-03 08:02:13');

/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`)
VALUES
	('9913aa1f-e41e-4b23-8ed3-e717a6bcc921',NULL,'Laravel Personal Access Client','n7vOrWHqFhUVeU0gRQXtGOHHdm1B8fyG7CmU3Xnt',NULL,'http://localhost',1,0,0,'2023-05-03 07:02:56','2023-05-03 07:02:56'),
	('9913aa1f-e754-49ad-85d2-a7e4647a0969',NULL,'Laravel Password Grant Client','1SvByZrBx5I06dGINyz7ky5xgfZ0SbKWS9lgg8MM','users','http://localhost',0,1,0,'2023-05-03 07:02:56','2023-05-03 07:02:56'),
	('9913ab72-debb-41bd-b3fd-37d8016d00b5',1,'Test Client User 1','4ks5wV6X5W2FXIW0ZBFopkjLQsWkkQHE7fCGYCSi',NULL,'http://127.0.0.1:8080/auth/callback',0,0,0,'2023-05-03 07:06:38','2023-05-03 07:06:38');

/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_personal_access_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`)
VALUES
	(1,'9913aa1f-e41e-4b23-8ed3-e717a6bcc921','2023-05-03 07:02:56','2023-05-03 07:02:56');

/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_refresh_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`)
VALUES
	('0899d9eacdb2644200ce00d38987a4f92a6eec9042043371f3c7a635f5757590661b82c01a9bde6a','032922f612ff49245557c26af72684c86e742927e38e5a6fa75f6adf17058f81d415e3217e8b4d23',0,'2023-06-02 07:53:41'),
	('1b08073ac013979ffd5af41e48dea69e330fea498080197a62eb0134cd0d0b16cf950721a92b42e4','378997a63968cad1982fee33d1d3b57111b67ea4a38d964a9e8bdbf56b72ff82887bdb5b3cb8314f',0,'2023-06-02 07:52:13'),
	('278cc447e3b09d8eb90a98cf74f2ebe001695c9489680a117e5c69df92833edf3492f431d894d17b','47eb924ef26900a1e81213c626ed8d8518b1c26221ada337b08174db5fa71d5f3d7757cc31dd533f',0,'2023-06-02 07:36:14'),
	('4524e456c940fbcdaeaa5d0f6624b903eeca17eeb7881210f08e2f335ed8877778b140c28bac8d1f','be45c310e388d21b87300ebe167c47a55fa2cc58c36e9f78e235ebcf1dd6c127dc0560e2d7e79bcf',0,'2023-06-02 07:57:27'),
	('5182a139c6204567d65cb00aa0a90d3786deadf615fe681c4f4d340c8154429e894e8482db368a51','f8cdd45db3c99a9d7697ba165758b7e8df7cba9c8e9bd5499fe750330e9a4fc92613173bc74548e6',0,'2023-06-02 07:12:13'),
	('69dfe33578cdb4263aae7d08101ef0c074d02110d9457cfd9616dad3ead7291ddc3cef1912a57fab','2bcb822712ec21365a64980eb2484bbf37c30d19f5b28489797996bf8feb940ca94f7715b350b66d',0,'2023-06-02 07:33:15'),
	('765bd260c4425b1e56a48c6f1aa9f7a9d8c15aaff172c45fd0ca21652d2628163124f1fa8c3a6645','d5c240a3ab8055b4acf78fcb6894e062df7b349ae4717c56b5bfb4614386bf5be83bb2186a536425',0,'2023-06-02 08:11:30'),
	('7e756b02ef37334217a30d25dd71df4197f263476b90cfff6071e1a63234036699c58b7279718ad4','8abe5bc86dace985b784191ab48a573ca22e6b6a98ab433a87e6f544a20cd6e155d0ba61ae3d0d85',0,'2023-06-02 07:28:51'),
	('840bb0044ff527d03b52854f9db7218bd2b1431df67e4724152ca885b25766b0ffb0bc389fd20cf4','e0e5f67d48d4b5709e5a6298f544b3bc532ede03a6d307fc0d94d5b71ca8ed62c69f447205f23d1c',0,'2023-06-02 08:04:39'),
	('88185edb96e13a5f1dc73a6b209e2f64a4ba65d54c1fea0965c50af92bc872e2aded1b4abae84b00','2ee57bda3a8a9ec7b59351b11b6ea8edf6dd18992026642d5591fe066b9602f5e7794c3a776f6e58',0,'2023-06-02 07:55:35'),
	('8e96c970449bed3b09ac1aa3064aa9318ce712ed7293aa3adaca89f194e9197c5343675638063160','d56312475e729d254a26972439758bd4313098a7cb4f5a5aff2417292ef7b85a456e7ae0393c92b0',0,'2023-06-02 08:03:55'),
	('a6cda170343e794f4aec7780e22a304605f33d60a87d4a0a925730acb34034fc9ba36c3bfbdc7568','9d9fc4f941a70bf203800fa90aa7c6cde516c47ec2e54f3585edc5cba5958753c28975d8276a0cbc',0,'2023-06-02 07:14:10'),
	('ca7fca698a61ac26a33a9f0498dc46e1a217d394c8669b5f642d91c50287a2c96f038834e2fac300','a61fb580397c724795e0d1d6ca605afa589db3abc30ac19455f11de1e2b3a67e9223cac5d62b6ab2',0,'2023-06-02 07:50:47'),
	('d45fc41d87cb30621960004093cd5947ff843ab45f3eb10bc7de1b4d2e075a13ca7664afe502031f','4b5900538256c2abd707d3f5c8db514e923e37e67a69b2259c829a43605c6b2122fb2e7fdd5554f3',0,'2023-06-02 07:26:30');

/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table personal_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'SSO Admin','ar_cse3048@gmail.com',NULL,'$2y$10$AJbo0s6o2/SUEiqsQix0bOu.vx/ldG8hYVNG15ZWueGwowZxudN5a',NULL,'2023-05-03 07:04:18','2023-05-03 07:04:18');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
