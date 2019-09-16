/*
Navicat MySQL Data Transfer

Source Server         : localhost-mysql
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : relnet-test

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-09-16 11:37:40
*/

CREATE DATABASE  `toker-test` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER 'toker'@'%' IDENTIFIED BY  'toker';
GRANT ALL PRIVILEGES ON  `toker-test` . * TO  'toker'@'%' WITH GRANT OPTION ;
flush privileges;
-- ----------------------------
-- Table structure for ordercron
-- ----------------------------
DROP TABLE IF EXISTS `ordercron`;
CREATE TABLE `ordercron` (
  `cron_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL COMMENT '用户名',
  `cron` varchar(255) NOT NULL COMMENT '定时规则',
  `corpAddressUniqueId` varchar(64) NOT NULL DEFAULT 'fd0fe03de52b',
  `userAddressUniqueId` varchar(64) NOT NULL DEFAULT 'fd0fe03de52b',
  `dishId` varchar(64) NOT NULL COMMENT 'sku',
  `tabUniqueId` varchar(64) NOT NULL DEFAULT '51954a88-a837-4fe7-a8b7-6a2247e24235' COMMENT '中餐或晚餐',
  PRIMARY KEY (`cron_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
