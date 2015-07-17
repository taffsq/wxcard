/*
Navicat MySQL Data Transfer

Source Server         : db
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : wxcard

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2015-07-17 17:45:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address_table
-- ----------------------------
DROP TABLE IF EXISTS `address_table`;
CREATE TABLE `address_table` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `address_detail` varchar(100) DEFAULT NULL,
  `streets_id` int(20) unsigned NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `foreign_address` (`streets_id`),
  CONSTRAINT `foreign_address` FOREIGN KEY (`streets_id`) REFERENCES `streets_table` (`streets_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='地址表';

-- ----------------------------
-- Records of address_table
-- ----------------------------
INSERT INTO `address_table` VALUES ('1', '春园二巷22号左侧（春园二巷路口）', '1');
INSERT INTO `address_table` VALUES ('2', '解放路590号（市财政综合楼一楼左边第三间铺面）', '1');
INSERT INTO `address_table` VALUES ('3', '港门村二路21号宏亮大厦', '9');
INSERT INTO `address_table` VALUES ('4', '三亚湾吉祥街35-37号', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category_table
-- ----------------------------
INSERT INTO `category_table` VALUES ('1', '代金券', '1');
INSERT INTO `category_table` VALUES ('2', '火锅', '1');
INSERT INTO `category_table` VALUES ('3', '自助餐', '1');
INSERT INTO `category_table` VALUES ('4', '聚餐宴请', '1');
INSERT INTO `category_table` VALUES ('5', '蛋糕', '1');
INSERT INTO `category_table` VALUES ('6', '日本料理', '1');
INSERT INTO `category_table` VALUES ('7', '西餐', '1');
INSERT INTO `category_table` VALUES ('8', '川湘菜', '1');
INSERT INTO `category_table` VALUES ('9', '鲁菜/北京菜', '1');
INSERT INTO `category_table` VALUES ('10', '江浙菜', '1');
INSERT INTO `category_table` VALUES ('11', '粤港菜', '1');
INSERT INTO `category_table` VALUES ('12', '海鲜', '1');
INSERT INTO `category_table` VALUES ('13', '烧烤烤肉', '1');
INSERT INTO `category_table` VALUES ('14', '东南亚菜', '1');
INSERT INTO `category_table` VALUES ('15', '咖啡酒吧茶馆', '1');
INSERT INTO `category_table` VALUES ('16', '小吃快餐', '1');
INSERT INTO `category_table` VALUES ('17', '其他美食', '1');
INSERT INTO `category_table` VALUES ('18', '西北菜', '1');
INSERT INTO `category_table` VALUES ('19', '东北菜', '1');
INSERT INTO `category_table` VALUES ('20', '云贵菜', '1');
INSERT INTO `category_table` VALUES ('21', '香锅烤鱼', '1');
INSERT INTO `category_table` VALUES ('22', '食品饮料', '1');
INSERT INTO `category_table` VALUES ('23', '甜点饮品', '1');
INSERT INTO `category_table` VALUES ('24', '韩国料理', '1');
INSERT INTO `category_table` VALUES ('25', '素食', '1');
INSERT INTO `category_table` VALUES ('26', '清真菜', '1');
INSERT INTO `category_table` VALUES ('27', '台湾菜/客家菜', '1');
INSERT INTO `category_table` VALUES ('28', '创意菜', '1');
INSERT INTO `category_table` VALUES ('29', '汤/粥/炖菜', '1');
INSERT INTO `category_table` VALUES ('30', '家常菜', '1');
INSERT INTO `category_table` VALUES ('31', '新疆菜', '1');
INSERT INTO `category_table` VALUES ('32', '经济型酒店', '2');
INSERT INTO `category_table` VALUES ('33', '度假酒店', '2');
INSERT INTO `category_table` VALUES ('34', '温泉酒店', '2');
INSERT INTO `category_table` VALUES ('35', '豪华酒店', '2');
INSERT INTO `category_table` VALUES ('36', '公寓式酒店', '2');
INSERT INTO `category_table` VALUES ('37', '主题酒店', '2');
INSERT INTO `category_table` VALUES ('38', '客栈', '2');
INSERT INTO `category_table` VALUES ('39', '青年旅舍', '2');
INSERT INTO `category_table` VALUES ('40', '捉妖记', '3');
INSERT INTO `category_table` VALUES ('41', '煎饼侠', '3');
INSERT INTO `category_table` VALUES ('42', '西游记之大圣归来', '3');
INSERT INTO `category_table` VALUES ('43', '栀子花开', '3');
INSERT INTO `category_table` VALUES ('44', '命中注定', '3');
INSERT INTO `category_table` VALUES ('45', '小时代4：灵魂尽...', '3');
INSERT INTO `category_table` VALUES ('46', '杀破狼2', '3');
INSERT INTO `category_table` VALUES ('47', '小羊肖恩', '3');
INSERT INTO `category_table` VALUES ('48', '猪猪侠之终极决战', '3');
INSERT INTO `category_table` VALUES ('49', '道士下山', '3');
INSERT INTO `category_table` VALUES ('50', '万达影城', '3');
INSERT INTO `category_table` VALUES ('51', '明珠电影城', '3');
INSERT INTO `category_table` VALUES ('52', '足疗按摩', '5');
INSERT INTO `category_table` VALUES ('53', '亲子游玩', '5');
INSERT INTO `category_table` VALUES ('54', '温泉', '5');
INSERT INTO `category_table` VALUES ('55', '洗浴/汗蒸', '5');
INSERT INTO `category_table` VALUES ('56', '游泳/水上乐园', '5');
INSERT INTO `category_table` VALUES ('57', '运动健身', '5');
INSERT INTO `category_table` VALUES ('58', '咖啡/酒吧', '5');
INSERT INTO `category_table` VALUES ('59', '桌游/电玩', '5');
INSERT INTO `category_table` VALUES ('60', '景点郊游', '5');
INSERT INTO `category_table` VALUES ('61', '主题公园/游乐园', '5');
INSERT INTO `category_table` VALUES ('62', '儿童乐园', '5');
INSERT INTO `category_table` VALUES ('63', '采摘/农家乐', '5');
INSERT INTO `category_table` VALUES ('64', '演出/赛事/展览', '5');
INSERT INTO `category_table` VALUES ('65', 'DIY手工', '5');
INSERT INTO `category_table` VALUES ('66', '真人CS', '5');
INSERT INTO `category_table` VALUES ('67', '私人影院', '5');
INSERT INTO `category_table` VALUES ('68', '4D/5D电影', '5');
INSERT INTO `category_table` VALUES ('69', '密室逃脱', '5');
INSERT INTO `category_table` VALUES ('70', '其他娱乐', '5');
INSERT INTO `category_table` VALUES ('71', '景点', '6');
INSERT INTO `category_table` VALUES ('72', '农家乐', '6');
INSERT INTO `category_table` VALUES ('73', '动植物园', '6');
INSERT INTO `category_table` VALUES ('74', '真人CS', '6');
INSERT INTO `category_table` VALUES ('75', '海洋馆', '6');
INSERT INTO `category_table` VALUES ('76', '展览馆', '6');
INSERT INTO `category_table` VALUES ('77', '高空观景', '6');
INSERT INTO `category_table` VALUES ('78', '游船', '6');
INSERT INTO `category_table` VALUES ('79', '主题公园', '6');
INSERT INTO `category_table` VALUES ('80', '温泉', '6');
INSERT INTO `category_table` VALUES ('81', '漂流', '6');
INSERT INTO `category_table` VALUES ('82', '水上乐园', '6');
INSERT INTO `category_table` VALUES ('83', '租车/单车', '6');
INSERT INTO `category_table` VALUES ('84', '其他', '6');
INSERT INTO `category_table` VALUES ('85', '旅游', '6');
INSERT INTO `category_table` VALUES ('86', '景点门票', '6');
INSERT INTO `category_table` VALUES ('87', '本地/周边游', '6');
INSERT INTO `category_table` VALUES ('88', '国内游', '6');
INSERT INTO `category_table` VALUES ('89', '境外游', '6');
INSERT INTO `category_table` VALUES ('90', '婚纱摄影', '7');
INSERT INTO `category_table` VALUES ('91', '个性写真', '7');
INSERT INTO `category_table` VALUES ('92', '儿童摄影', '7');
INSERT INTO `category_table` VALUES ('93', '其他摄影', '7');
INSERT INTO `category_table` VALUES ('94', '照片冲印', '7');
INSERT INTO `category_table` VALUES ('95', '汽车服务', '7');
INSERT INTO `category_table` VALUES ('96', '配镜', '7');
INSERT INTO `category_table` VALUES ('97', '体检保健', '7');
INSERT INTO `category_table` VALUES ('98', '母婴亲子', '7');
INSERT INTO `category_table` VALUES ('99', '培训课程', '7');
INSERT INTO `category_table` VALUES ('100', '鲜花婚庆', '7');
INSERT INTO `category_table` VALUES ('101', '商场购物卡', '7');
INSERT INTO `category_table` VALUES ('102', '其他生活', '7');
INSERT INTO `category_table` VALUES ('103', '女装', '8');
INSERT INTO `category_table` VALUES ('104', '男装', '8');
INSERT INTO `category_table` VALUES ('105', '内衣', '8');
INSERT INTO `category_table` VALUES ('106', '女士鞋包', '8');
INSERT INTO `category_table` VALUES ('107', '男士鞋包', '8');
INSERT INTO `category_table` VALUES ('108', '运动户外', '8');
INSERT INTO `category_table` VALUES ('109', '配饰手表', '8');
INSERT INTO `category_table` VALUES ('110', '美妆', '8');
INSERT INTO `category_table` VALUES ('111', '食品', '8');
INSERT INTO `category_table` VALUES ('112', '母婴玩具', '8');
INSERT INTO `category_table` VALUES ('113', '家纺', '8');
INSERT INTO `category_table` VALUES ('114', '家居', '8');
INSERT INTO `category_table` VALUES ('115', '数码电器', '8');
INSERT INTO `category_table` VALUES ('116', '家具家装', '8');
INSERT INTO `category_table` VALUES ('117', '汽车用品', '8');
INSERT INTO `category_table` VALUES ('118', '本地购物', '8');
INSERT INTO `category_table` VALUES ('119', '美发', '9');
INSERT INTO `category_table` VALUES ('120', '美容美体', '9');
INSERT INTO `category_table` VALUES ('121', '美甲', '9');
INSERT INTO `category_table` VALUES ('122', '瑜伽/舞蹈', '9');
INSERT INTO `category_table` VALUES ('123', '个性写真', '9');

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
-- Table structure for goods_table
-- ----------------------------
DROP TABLE IF EXISTS `goods_table`;
CREATE TABLE `goods_table` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(40) NOT NULL COMMENT '产品名称',
  `goods_img` varchar(255) NOT NULL COMMENT '产品图片',
  `goods_desc` varchar(255) NOT NULL COMMENT '产品描述',
  `goods_before_price` float(7,2) unsigned DEFAULT NULL COMMENT '产品之前的价格',
  `goods_price` float(7,2) unsigned NOT NULL COMMENT '产品折后现价',
  `goods_tel` varchar(100) NOT NULL,
  `address_id` int(10) unsigned NOT NULL COMMENT '地址id',
  `category_id` int(4) unsigned NOT NULL,
  `goods_qrcode` varchar(255) NOT NULL,
  `goods_add_time` datetime NOT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `foreign_goods_cate` (`category_id`),
  KEY `foreign_goods_address` (`address_id`),
  KEY `UNIQUE_good_name` (`goods_name`) USING BTREE,
  CONSTRAINT `foreign_goods_address` FOREIGN KEY (`address_id`) REFERENCES `address_table` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `foreign_goods_cate` FOREIGN KEY (`category_id`) REFERENCES `category_table` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_table
-- ----------------------------
INSERT INTO `goods_table` VALUES ('1', '瑞可爷爷起司蛋糕店', 'images/test.jpg', '仅售29.9元！价值39元的起司蛋糕1个，约7英寸，圆形。', '39.00', '29.00', '0898-88360968/88866066', '1', '5', 'images/qrcode_test.jpg', '2015-07-16 14:50:57');
INSERT INTO `goods_table` VALUES ('2', '欣圆蛋糕店', 'http://p0.meituan.net/460.280/deal/__46088786__3539904.jpg', '仅售88元！价值128元的鲜果奶油蛋糕1个，约8英寸，圆形/方形/心形。', '128.00', '88.00', '0898-88259655', '2', '5', 'images/qrcode_test.jpg', '2015-07-16 14:50:57');
INSERT INTO `goods_table` VALUES ('3', '万喜蛋糕坊', 'http://p1.meituan.net/460.280/deal/7c227c55dcc14eb784d5cb3af3de8e7081385.jpg', '仅售78元！最高价值128元的万喜蛋糕坊10英寸蛋糕3选1，可免费写字10个，赠送卡片1张，市区范围内可配送。', '128.00', '78.00', '0898-31807108/15109880634/13976799285', '3', '5', 'images/qrcode_test.jpg', '2015-07-16 14:50:57');
INSERT INTO `goods_table` VALUES ('4', '7天连锁酒店', 'http://p1.meituan.net/460.280/deal/__41253290__4112090.jpg', '仅售87元！价值977元的自主大床房入住1晚，可连续入住，免费wifi。周围商圈繁华，吃行十分便利，离海仅70米。', '977.00', '77.00', '0898-88253607', '4', '36', 'images/qrcode_test.jpg', '2015-07-16 14:50:57');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='街道';

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
INSERT INTO `streets_table` VALUES ('9', '河东区', '1');
