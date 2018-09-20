/*
Navicat MySQL Data Transfer

Source Server         : english
Source Server Version : 50637
Source Host           : localhost:3306
Source Database       : english

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2018-09-20 17:13:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) NOT NULL,
  `wordId` int(11) NOT NULL,
  `correctAnswer` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for word
-- ----------------------------
DROP TABLE IF EXISTS `word`;
CREATE TABLE `word` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(100) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `pronounce` varchar(100) DEFAULT NULL,
  `meaning` varchar(1000) DEFAULT NULL,
  `meaning_in_english` varchar(1000) DEFAULT NULL,
  `etc` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `word` (`word`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
