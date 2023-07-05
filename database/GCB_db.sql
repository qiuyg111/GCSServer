-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.31 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 gcs_db 的数据库结构
CREATE DATABASE IF NOT EXISTS `gcs_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gcs_db`;

-- 导出  表 gcs_db.gcs_admin_authority 结构
CREATE TABLE IF NOT EXISTS `gcs_admin_authority` (
  `admin_authority_id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `authority_id` int NOT NULL,
  `字段 4` varchar(50) DEFAULT NULL,
  `字段 5` varchar(50) DEFAULT NULL,
  `字段 6` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`admin_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 数据导出被取消选择。

-- 导出  表 gcs_db.gcs_admin_info 结构
CREATE TABLE IF NOT EXISTS `gcs_admin_info` (
  `admin_id` int NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `admin_account` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL,
  `admin_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `admin_profile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `admin_create_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin_status` tinyint NOT NULL DEFAULT '1',
  `admin_delete_timestamp` datetime DEFAULT NULL,
  `字段 9` varchar(50) DEFAULT NULL,
  `字段 10` varchar(50) DEFAULT NULL,
  `字段 11` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 数据导出被取消选择。

-- 导出  表 gcs_db.gcs_ans_record 结构
CREATE TABLE IF NOT EXISTS `gcs_ans_record` (
  `answer_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `answer_time` int NOT NULL,
  `answer_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accuracy` int NOT NULL,
  `字段 6` varchar(50) DEFAULT NULL,
  `字段 7` varchar(50) DEFAULT NULL,
  `字段 8` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 数据导出被取消选择。

-- 导出  表 gcs_db.gcs_authority_info 结构
CREATE TABLE IF NOT EXISTS `gcs_authority_info` (
  `authority_id` int NOT NULL AUTO_INCREMENT,
  `authority_name` varchar(50) NOT NULL,
  `authority_info` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `字段 4` varchar(50) DEFAULT NULL,
  `字段 5` varchar(50) DEFAULT NULL,
  `字段 6` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 数据导出被取消选择。

-- 导出  表 gcs_db.gcs_exchange_record 结构
CREATE TABLE IF NOT EXISTS `gcs_exchange_record` (
  `exchange_record_id` int NOT NULL AUTO_INCREMENT,
  `goods_id` int NOT NULL,
  `user_id` int NOT NULL,
  `exchange_timestape` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `receive_location` varchar(50) NOT NULL,
  `receive_phonenumber` varchar(50) NOT NULL,
  `receive_name` varchar(50) NOT NULL,
  `字段 8` varchar(50) DEFAULT NULL,
  `字段 9` varchar(50) DEFAULT NULL,
  `字段 10` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`exchange_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 数据导出被取消选择。

-- 导出  表 gcs_db.gcs_garbage_info 结构
CREATE TABLE IF NOT EXISTS `gcs_garbage_info` (
  `garbage_id` int NOT NULL AUTO_INCREMENT,
  `garbage_name` varchar(50) NOT NULL,
  `garbage_classification` enum('可回收垃圾','其他垃圾','有害垃圾','厨余垃圾') NOT NULL,
  `字段 4` varchar(50) DEFAULT NULL,
  `字段 5` varchar(50) DEFAULT NULL,
  `字段 6` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`garbage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 数据导出被取消选择。

-- 导出  表 gcs_db.gcs_goods_info 结构
CREATE TABLE IF NOT EXISTS `gcs_goods_info` (
  `goods_id` int NOT NULL AUTO_INCREMENT,
  `goods_point` int NOT NULL,
  `goods_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `goods_info` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `goods_num` int NOT NULL,
  `goods_create_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `goods_status` int NOT NULL DEFAULT '1',
  `goods_delete_datetime` int DEFAULT NULL,
  `字段 9` varchar(50) DEFAULT NULL,
  `字段 10` varchar(50) DEFAULT NULL,
  `字段 11` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 数据导出被取消选择。

-- 导出  表 gcs_db.gcs_news_comment 结构
CREATE TABLE IF NOT EXISTS `gcs_news_comment` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `news_id` int NOT NULL,
  `user_id` int NOT NULL,
  `comment_content` varchar(50) NOT NULL,
  `comment_like_num` int NOT NULL DEFAULT '0',
  `comment_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_status` tinyint NOT NULL DEFAULT '1',
  `comment_delete_datetime` datetime DEFAULT NULL,
  `字段 9` varchar(50) DEFAULT NULL,
  `字段 10` varchar(50) DEFAULT NULL,
  `字段 11` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 数据导出被取消选择。

-- 导出  表 gcs_db.gcs_news_info 结构
CREATE TABLE IF NOT EXISTS `gcs_news_info` (
  `news_id` int NOT NULL AUTO_INCREMENT,
  `news_admin_id` int NOT NULL,
  `news_title` varchar(50) NOT NULL,
  `news_content` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `news_like_num` int NOT NULL DEFAULT '0',
  `news_comment_num` int NOT NULL DEFAULT '0',
  `news_create_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `news_statues` tinyint NOT NULL DEFAULT '1',
  `news_delete_datetime` tinyint DEFAULT NULL,
  `字段 10` varchar(50) DEFAULT NULL,
  `字段 11` varchar(50) DEFAULT NULL,
  `字段 12` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 数据导出被取消选择。

-- 导出  表 gcs_db.gcs_quiz_info 结构
CREATE TABLE IF NOT EXISTS `gcs_quiz_info` (
  `quiz_id` int NOT NULL AUTO_INCREMENT,
  `quiz_info` varchar(50) NOT NULL,
  `quiz_ans` varchar(50) NOT NULL,
  `quiz_opt` varchar(50) NOT NULL,
  `quiz_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `quiz_status` tinyint NOT NULL DEFAULT '1',
  `quiz_delete_datetime` datetime DEFAULT NULL,
  `字段 8` varchar(50) DEFAULT NULL,
  `字段 9` varchar(50) DEFAULT NULL,
  `字段 10` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 数据导出被取消选择。

-- 导出  表 gcs_db.gcs_user_info 结构
CREATE TABLE IF NOT EXISTS `gcs_user_info` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_profile` varchar(50) DEFAULT NULL,
  `user_point` int NOT NULL DEFAULT '0',
  `user_answer_count` int NOT NULL DEFAULT '0',
  `user_comment_num` int NOT NULL DEFAULT '0',
  `user_like_num` int NOT NULL DEFAULT '0',
  `user_register_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `字段 9` varchar(50) DEFAULT NULL,
  `字段 10` varchar(50) DEFAULT NULL,
  `字段 11` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 数据导出被取消选择。

-- 导出  表 gcs_db.gcs_user_search_info 结构
CREATE TABLE IF NOT EXISTS `gcs_user_search_info` (
  `search_id` int NOT NULL AUTO_INCREMENT,
  `search_type` tinyint NOT NULL,
  `search_content` varchar(50) NOT NULL,
  `user_id` int NOT NULL,
  `garbage_id` int NOT NULL,
  `user_register_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `字段 7` varchar(50) DEFAULT NULL,
  `字段 8` varchar(50) DEFAULT NULL,
  `字段 9` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`search_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 数据导出被取消选择。

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
