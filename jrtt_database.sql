-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.19 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 jrtt_database 的数据库结构
CREATE DATABASE IF NOT EXISTS `jrtt_database` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jrtt_database`;

-- 导出  表 jrtt_database.article 结构
CREATE TABLE IF NOT EXISTS `article` (
  `aut_id` int NOT NULL,
  `art_id` int NOT NULL,
  `aut_name` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '0',
  `aut_photo` varchar(50) DEFAULT NULL,
  `pubdate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`art_id`),
  UNIQUE KEY `aut_name` (`aut_name`),
  UNIQUE KEY `title` (`title`),
  KEY `FK_article_user` (`aut_id`),
  KEY `FK_article_user_3` (`aut_photo`),
  CONSTRAINT `FK_article_user` FOREIGN KEY (`aut_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_article_user_2` FOREIGN KEY (`aut_name`) REFERENCES `user` (`name`),
  CONSTRAINT `FK_article_user_3` FOREIGN KEY (`aut_photo`) REFERENCES `user` (`photo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  jrtt_database.article 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
/*!40000 ALTER TABLE `article` ENABLE KEYS */;

-- 导出  表 jrtt_database.attitude 结构
CREATE TABLE IF NOT EXISTS `attitude` (
  `user_id` int NOT NULL,
  `attitude` int DEFAULT NULL,
  `article_id` int NOT NULL,
  KEY `FK__user` (`user_id`),
  KEY `FK__article` (`article_id`),
  CONSTRAINT `FK__article` FOREIGN KEY (`article_id`) REFERENCES `article` (`art_id`),
  CONSTRAINT `FK__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  jrtt_database.attitude 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `attitude` DISABLE KEYS */;
/*!40000 ALTER TABLE `attitude` ENABLE KEYS */;

-- 导出  表 jrtt_database.channel 结构
CREATE TABLE IF NOT EXISTS `channel` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  jrtt_database.channel 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel` ENABLE KEYS */;

-- 导出  表 jrtt_database.comment 结构
CREATE TABLE IF NOT EXISTS `comment` (
  `user_id` int DEFAULT NULL,
  `article_id` int DEFAULT NULL,
  `comment` varchar(50) DEFAULT NULL,
  `comment_id` int NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FK_comment_user` (`user_id`),
  KEY `FK_comment_article` (`article_id`),
  CONSTRAINT `FK_comment_article` FOREIGN KEY (`article_id`) REFERENCES `article` (`art_id`),
  CONSTRAINT `FK_comment_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  jrtt_database.comment 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- 导出  表 jrtt_database.subscribe 结构
CREATE TABLE IF NOT EXISTS `subscribe` (
  `subscriber_id` int NOT NULL,
  `besubscribed_id` int NOT NULL,
  KEY `FK_subscribe_user` (`subscriber_id`),
  KEY `FK_subscribe_user_2` (`besubscribed_id`),
  CONSTRAINT `FK_subscribe_user` FOREIGN KEY (`subscriber_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_subscribe_user_2` FOREIGN KEY (`besubscribed_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  jrtt_database.subscribe 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `subscribe` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribe` ENABLE KEYS */;

-- 导出  表 jrtt_database.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(12) NOT NULL DEFAULT '',
  `photo` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `photo` (`photo`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  jrtt_database.user 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
