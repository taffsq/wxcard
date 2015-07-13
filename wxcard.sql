/*
Navicat MySQL Data Transfer

Source Server         : db
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : wxcard

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2015-07-13 17:54:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address_table
-- ----------------------------
DROP TABLE IF EXISTS `address_table`;
CREATE TABLE `address_table` (
  `address_id` varchar(50) NOT NULL,
  `address_detail` varchar(100) DEFAULT NULL,
  `streets_id` int(20) unsigned NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `foreign_address` (`streets_id`),
  CONSTRAINT `foreign_address` FOREIGN KEY (`streets_id`) REFERENCES `streets_table` (`streets_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地址表';

-- ----------------------------
-- Records of address_table
-- ----------------------------

-- ----------------------------
-- Table structure for all_category_table
-- ----------------------------
DROP TABLE IF EXISTS `all_category_table`;
CREATE TABLE `all_category_table` (
  `all_category_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `all_category_name` varchar(30) NOT NULL,
  PRIMARY KEY (`all_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of all_category_table
-- ----------------------------
INSERT INTO `all_category_table` VALUES ('1', '\r\n美食');
INSERT INTO `all_category_table` VALUES ('2', '酒店');
INSERT INTO `all_category_table` VALUES ('3', '电影');
INSERT INTO `all_category_table` VALUES ('4', 'KTV');
INSERT INTO `all_category_table` VALUES ('5', '休闲娱乐');
INSERT INTO `all_category_table` VALUES ('6', '周边游/旅游');
INSERT INTO `all_category_table` VALUES ('7', '生活服务');
INSERT INTO `all_category_table` VALUES ('8', '购物');
INSERT INTO `all_category_table` VALUES ('9', '丽人');

-- ----------------------------
-- Table structure for category_table
-- ----------------------------
DROP TABLE IF EXISTS `category_table`;
CREATE TABLE `category_table` (
  `category_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `catagory_name` varchar(30) DEFAULT NULL,
  `all_category_id` int(3) unsigned NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `foreign_category` (`all_category_id`),
  CONSTRAINT `foreign_category` FOREIGN KEY (`all_category_id`) REFERENCES `all_category_table` (`all_category_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category_table
-- ----------------------------
INSERT INTO `category_table` VALUES ('1', '代金券', '1');
INSERT INTO `category_table` VALUES ('3', '火锅', '1');
INSERT INTO `category_table` VALUES ('5', '自助餐', '1');
INSERT INTO `category_table` VALUES ('6', '蛋糕', '1');
INSERT INTO `category_table` VALUES ('7', '日本料理', '1');
INSERT INTO `category_table` VALUES ('8', '西餐', '1');
INSERT INTO `category_table` VALUES ('9', '川湘菜', '1');
INSERT INTO `category_table` VALUES ('10', '鲁菜/北京菜', '1');
INSERT INTO `category_table` VALUES ('11', '江浙菜', '1');
INSERT INTO `category_table` VALUES ('12', '粤港菜', '1');
INSERT INTO `category_table` VALUES ('13', '海鲜', '1');
INSERT INTO `category_table` VALUES ('14', '烧烤烤肉', '1');

-- ----------------------------
-- Table structure for city_table
-- ----------------------------
DROP TABLE IF EXISTS `city_table`;
CREATE TABLE `city_table` (
  `city_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city_name` varchar(10) DEFAULT NULL,
  `province_id` int(5) unsigned NOT NULL,
  PRIMARY KEY (`city_id`),
  KEY `foreign_city` (`province_id`),
  CONSTRAINT `foreign_city` FOREIGN KEY (`province_id`) REFERENCES `province_table` (`province_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='市';

-- ----------------------------
-- Records of city_table
-- ----------------------------
INSERT INTO `city_table` VALUES ('1', '三亚', '1');

-- ----------------------------
-- Table structure for county_table
-- ----------------------------
DROP TABLE IF EXISTS `county_table`;
CREATE TABLE `county_table` (
  `county_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `county_name` varchar(20) DEFAULT NULL,
  `city_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`county_id`),
  KEY `foreign_county` (`city_id`),
  CONSTRAINT `foreign_county` FOREIGN KEY (`city_id`) REFERENCES `city_table` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='区';

-- ----------------------------
-- Records of county_table
-- ----------------------------
INSERT INTO `county_table` VALUES ('1', ' ', '1');

-- ----------------------------
-- Table structure for province_table
-- ----------------------------
DROP TABLE IF EXISTS `province_table`;
CREATE TABLE `province_table` (
  `province_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `province_name` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='省';

-- ----------------------------
-- Records of province_table
-- ----------------------------
INSERT INTO `province_table` VALUES ('1', '海南');

-- ----------------------------
-- Table structure for streets_table
-- ----------------------------
DROP TABLE IF EXISTS `streets_table`;
CREATE TABLE `streets_table` (
  `streets_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `streets_name` varchar(20) DEFAULT NULL,
  `county_id` int(20) unsigned NOT NULL,
  PRIMARY KEY (`streets_id`),
  KEY `foreign_streets` (`county_id`),
  CONSTRAINT `foreign_streets` FOREIGN KEY (`county_id`) REFERENCES `county_table` (`county_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='街道';

-- ----------------------------
-- Records of streets_table
-- ----------------------------
INSERT INTO `streets_table` VALUES ('1', '河西区街道', '1');
INSERT INTO `streets_table` VALUES ('2', '吉阳镇', '1');
INSERT INTO `streets_table` VALUES ('4', '海棠湾镇', '1');
INSERT INTO `streets_table` VALUES ('5', '凤凰镇', '1');
INSERT INTO `streets_table` VALUES ('6', '崖城镇', '1');
INSERT INTO `streets_table` VALUES ('7', '天涯镇', '1');
INSERT INTO `streets_table` VALUES ('8', '育才镇', '1');
