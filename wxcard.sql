/*
Navicat MySQL Data Transfer

Source Server         : db
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : wxcard

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2015-07-28 14:23:01
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
) ENGINE=InnoDB AUTO_INCREMENT=438 DEFAULT CHARSET=utf8 COMMENT='地址表';

-- ----------------------------
-- Records of address_table
-- ----------------------------
INSERT INTO `address_table` VALUES ('1', '春园二巷22号左侧（春园二巷路口）', '1');
INSERT INTO `address_table` VALUES ('2', '解放路590号（市财政综合楼一楼左边第三间铺面）', '1');
INSERT INTO `address_table` VALUES ('3', '港门村二路21号宏亮大厦', '9');
INSERT INTO `address_table` VALUES ('4', '三亚湾吉祥街35-37号', '1');
INSERT INTO `address_table` VALUES ('5', '三亚不仔客海鲜加工的地址', '11');
INSERT INTO `address_table` VALUES ('6', '万丽度假酒店鸿星荟餐厅的地址', '12');
INSERT INTO `address_table` VALUES ('7', '泽香海鲜加工店的地址', '11');
INSERT INTO `address_table` VALUES ('8', '汉堡王的地址', '13');
INSERT INTO `address_table` VALUES ('9', '小扇贝海鲜加工店的地址', '11');
INSERT INTO `address_table` VALUES ('10', '小美海鲜的地址', '10');
INSERT INTO `address_table` VALUES ('11', 'N多寿司的地址', '10');
INSERT INTO `address_table` VALUES ('12', '鞑鞑炭烤羊腿的地址', '14');
INSERT INTO `address_table` VALUES ('13', '海米海鲜加工店的地址', '11');
INSERT INTO `address_table` VALUES ('14', '瑞可爷爷起司蛋糕店的地址', '1');
INSERT INTO `address_table` VALUES ('15', '海峡情缘台湾涮涮锅的地址', '14');
INSERT INTO `address_table` VALUES ('16', '凉都风情杨梅汤的地址', '14');
INSERT INTO `address_table` VALUES ('17', '六号海鲜加工店的地址', '11');
INSERT INTO `address_table` VALUES ('18', '麻辣香锅的地址', '1');
INSERT INTO `address_table` VALUES ('19', '亿百度烤肉的地址', '10');
INSERT INTO `address_table` VALUES ('20', '食为先海鲜加工店的地址', '11');
INSERT INTO `address_table` VALUES ('21', '旭记黄焖鸡米饭的地址', '1');
INSERT INTO `address_table` VALUES ('22', '千古情贵宾位门票的地址', '15');
INSERT INTO `address_table` VALUES ('23', '千古情景区表演贵宾席门票的地址', '16');
INSERT INTO `address_table` VALUES ('24', '麦克风KTV的地址', '17');
INSERT INTO `address_table` VALUES ('25', '唛嘟量贩式KTV的地址', '1');
INSERT INTO `address_table` VALUES ('26', '蜈支洲岛的地址', '18');
INSERT INTO `address_table` VALUES ('27', '宝乐迪量版式KTV的地址', '19');
INSERT INTO `address_table` VALUES ('28', '维景国际度假酒店的地址', '20');
INSERT INTO `address_table` VALUES ('29', '重庆富侨三亚第一家的地址', '21');
INSERT INTO `address_table` VALUES ('30', '海呈人文阁书吧的地址', '19');
INSERT INTO `address_table` VALUES ('31', 'M2酒吧的地址', '22');
INSERT INTO `address_table` VALUES ('32', '珠江南田温泉的地址', '23');
INSERT INTO `address_table` VALUES ('33', '三亚亲亲鱼疗馆的地址', '10');
INSERT INTO `address_table` VALUES ('34', '中视国际影城IMAX的地址', '17');
INSERT INTO `address_table` VALUES ('35', '明珠电影城的地址', '24');
INSERT INTO `address_table` VALUES ('36', '陵水都乐国际影城的地址', '25');
INSERT INTO `address_table` VALUES ('37', '阿罗哈电影城的地址', '26');
INSERT INTO `address_table` VALUES ('38', '浪淘沙驿站的地址', '7');
INSERT INTO `address_table` VALUES ('39', '三亚海滨海度假海景公寓的地址', '27');
INSERT INTO `address_table` VALUES ('40', '三亚湾红洋度假公寓的地址', '19');
INSERT INTO `address_table` VALUES ('41', '蜈支洲岛珊瑚酒店的地址', '28');
INSERT INTO `address_table` VALUES ('42', '如家快捷酒店的地址', '10');
INSERT INTO `address_table` VALUES ('43', '小海丫的地址', '19');
INSERT INTO `address_table` VALUES ('44', 'En mer的地址', '17');
INSERT INTO `address_table` VALUES ('45', '语心鲜花坊的地址', '17');
INSERT INTO `address_table` VALUES ('46', '小风车电瓶车租赁的地址', '1');
INSERT INTO `address_table` VALUES ('47', '嘀嘀哥，韩式电动车租赁浪漫骑行的地址', '19');
INSERT INTO `address_table` VALUES ('48', '三亚骑仕租车的地址', '29');
INSERT INTO `address_table` VALUES ('49', '车无限租车的地址', '29');
INSERT INTO `address_table` VALUES ('50', '张太太发绳100件的地址', '30');
INSERT INTO `address_table` VALUES ('51', '俞兆林夏季防晒衣的地址', '30');
INSERT INTO `address_table` VALUES ('52', '小不点美甲工作室的地址', '14');
INSERT INTO `address_table` VALUES ('53', '美汇源的地址', '17');
INSERT INTO `address_table` VALUES ('54', '格格屋美甲的地址', '14');
INSERT INTO `address_table` VALUES ('55', '天域养生的地址', '17');
INSERT INTO `address_table` VALUES ('56', '东门造型的地址', '9');
INSERT INTO `address_table` VALUES ('57', '我甲我秀的地址', '10');
INSERT INTO `address_table` VALUES ('58', '东匠造型品质形象沙龙的地址', '31');
INSERT INTO `address_table` VALUES ('59', '粤港澳的地址', '14');
INSERT INTO `address_table` VALUES ('62', '三亚蜈支洲岛一日游的地址', '32');
INSERT INTO `address_table` VALUES ('66', '南波湾快乐时光户外潜水俱乐部的地址', '33');
INSERT INTO `address_table` VALUES ('67', '拾味馆的地址', '1');
INSERT INTO `address_table` VALUES ('68', '晓全寿司的地址', '1');
INSERT INTO `address_table` VALUES ('69', '华莱士的地址', '1');
INSERT INTO `address_table` VALUES ('70', '世纪豪庭度假酒店的地址', '1');
INSERT INTO `address_table` VALUES ('71', '三亚亿海租车的地址', '1');
INSERT INTO `address_table` VALUES ('72', '全能租行的地址', '1');
INSERT INTO `address_table` VALUES ('73', '精功眼镜的地址', '1');
INSERT INTO `address_table` VALUES ('74', '利铺面包干10g的地址', '1');
INSERT INTO `address_table` VALUES ('75', '蔻乐芝瘦身排毒足贴的地址', '1');
INSERT INTO `address_table` VALUES ('76', '浪莎包芯丝连裤袜的地址', '1');
INSERT INTO `address_table` VALUES ('77', '多彩生活感应小夜灯的地址', '1');
INSERT INTO `address_table` VALUES ('78', '玻尿酸滋养保湿面膜的地址', '1');
INSERT INTO `address_table` VALUES ('79', '怡浓单粒燕麦的地址', '1');
INSERT INTO `address_table` VALUES ('80', '三亚宝宏大酒店的地址', '17');
INSERT INTO `address_table` VALUES ('81', '三亚宝宏大酒店的地址', '17');
INSERT INTO `address_table` VALUES ('82', '三亚宝宏大酒店的地址', '17');
INSERT INTO `address_table` VALUES ('83', '三亚宝宏大酒店的地址', '17');
INSERT INTO `address_table` VALUES ('84', '三亚宝宏大酒店的地址', '17');
INSERT INTO `address_table` VALUES ('85', '三亚宝宏大酒店的地址', '17');
INSERT INTO `address_table` VALUES ('86', '三亚宝宏大酒店的地址', '17');
INSERT INTO `address_table` VALUES ('87', '三亚宝宏大酒店的地址', '17');
INSERT INTO `address_table` VALUES ('88', '三亚宝宏大酒店的地址', '17');
INSERT INTO `address_table` VALUES ('89', '三亚宝宏大酒店的地址', '17');
INSERT INTO `address_table` VALUES ('90', '韩雅烤肉的地址', '34');
INSERT INTO `address_table` VALUES ('91', '新天地海南菜的地址', '20');
INSERT INTO `address_table` VALUES ('92', '聚湘福海鲜大排档的地址', '12');
INSERT INTO `address_table` VALUES ('93', '拾味馆（海景花园店）的地址', '19');
INSERT INTO `address_table` VALUES ('94', '明润海鲜排挡的地址', '21');
INSERT INTO `address_table` VALUES ('95', '柠檬草泰式餐厅的地址', '19');
INSERT INTO `address_table` VALUES ('96', '黄记煌三汁闷锅（渔人码头店）的地址', '35');
INSERT INTO `address_table` VALUES ('97', '东北饺子城（解放二路店）的地址', '10');
INSERT INTO `address_table` VALUES ('98', '匠子烤鱼的地址', '17');
INSERT INTO `address_table` VALUES ('99', '三亚7岁家庭餐厅（三亚湾店）的地址', '19');
INSERT INTO `address_table` VALUES ('100', '三姐海鲜加工店的地址', '11');
INSERT INTO `address_table` VALUES ('101', '焰遇烤肉的地址', '36');
INSERT INTO `address_table` VALUES ('102', '刘一手火锅（跃进街店）的地址', '19');
INSERT INTO `address_table` VALUES ('103', '香港佬港茶餐厅的地址', '10');
INSERT INTO `address_table` VALUES ('104', '壹加壹（商品街店）的地址', '14');
INSERT INTO `address_table` VALUES ('105', '风波庄的地址', '14');
INSERT INTO `address_table` VALUES ('106', '蕉叶餐厅的地址', '9');
INSERT INTO `address_table` VALUES ('107', '重庆南山火锅的地址', '14');
INSERT INTO `address_table` VALUES ('108', '打铁豆花（团结店）的地址', '10');
INSERT INTO `address_table` VALUES ('109', '柏瑞海鲜超市餐厅的地址', '17');
INSERT INTO `address_table` VALUES ('110', '小米川味海鲜加工店的地址', '11');
INSERT INTO `address_table` VALUES ('111', '花姐好再来海鲜加工店的地址', '11');
INSERT INTO `address_table` VALUES ('112', '丰尚堂砂锅老汤的地址', '19');
INSERT INTO `address_table` VALUES ('113', '重庆刘一手火锅（商品街店）的地址', '14');
INSERT INTO `address_table` VALUES ('114', '林姐香味海鲜的地址', '11');
INSERT INTO `address_table` VALUES ('115', '来是福海鲜的地址', '1');
INSERT INTO `address_table` VALUES ('116', '天下客海鲜的地址', '21');
INSERT INTO `address_table` VALUES ('117', '三亚凤凰相缘海鲜排挡的地址', '19');
INSERT INTO `address_table` VALUES ('118', '三亚7岁家庭餐厅（海坡店）的地址', '27');
INSERT INTO `address_table` VALUES ('119', '一块豆腐（友谊路店）的地址', '37');
INSERT INTO `address_table` VALUES ('120', '海棠湾渔海鲜味园的地址', '12');
INSERT INTO `address_table` VALUES ('121', '一分利海鲜店的地址', '17');
INSERT INTO `address_table` VALUES ('122', '实味海鲜的地址', '11');
INSERT INTO `address_table` VALUES ('123', '胜意大酒店海鲜自助餐厅的地址', '19');
INSERT INTO `address_table` VALUES ('124', '雪姐海鲜的地址', '1');
INSERT INTO `address_table` VALUES ('125', '亲嘴螺海鲜加工店的地址', '11');
INSERT INTO `address_table` VALUES ('126', '吴小胖海鲜加工店的地址', '11');
INSERT INTO `address_table` VALUES ('127', '亚龙湾红树林度假酒店的地址', '20');
INSERT INTO `address_table` VALUES ('128', '湛龙海鲜的地址', '21');
INSERT INTO `address_table` VALUES ('129', '陈萍海鲜的地址', '1');
INSERT INTO `address_table` VALUES ('130', '侨源海鲜农家饭庄的地址', '27');
INSERT INTO `address_table` VALUES ('131', '7天海鲜排档的地址', '19');
INSERT INTO `address_table` VALUES ('132', '川顺海鲜大排档的地址', '17');
INSERT INTO `address_table` VALUES ('133', '御厨自助火锅烧烤的地址', '38');
INSERT INTO `address_table` VALUES ('134', '爵士牛排（商品街店）的地址', '14');
INSERT INTO `address_table` VALUES ('135', '亨美乐（解放二路步行街店）的地址', '38');
INSERT INTO `address_table` VALUES ('136', '杨小贤的地址', '14');
INSERT INTO `address_table` VALUES ('137', 'TheDay-故事是从一家蛋糕店开始的的地址', '10');
INSERT INTO `address_table` VALUES ('138', '黑钻石法式蛋糕的地址', '10');
INSERT INTO `address_table` VALUES ('139', '玳思琳Dazzling Cafe Sanya Ocean的地址', '17');
INSERT INTO `address_table` VALUES ('140', 'Clover coffee 四叶草咖啡的地址', '10');
INSERT INTO `address_table` VALUES ('141', '三亚湾红树林度假世界珊瑚吧的地址', '9');
INSERT INTO `address_table` VALUES ('142', '鲜福记老关东涮羊肉的地址', '1');
INSERT INTO `address_table` VALUES ('143', '卡浓面包店的地址', '39');
INSERT INTO `address_table` VALUES ('144', '梦里蜀香的地址', '17');
INSERT INTO `address_table` VALUES ('145', '上岛咖啡西餐厅的地址', '40');
INSERT INTO `address_table` VALUES ('146', '夜宴（明珠广场店）的地址', '24');
INSERT INTO `address_table` VALUES ('147', '唐轩DIY甜品屋的地址', '41');
INSERT INTO `address_table` VALUES ('148', '逗丁咖啡的地址', '14');
INSERT INTO `address_table` VALUES ('149', 'Mlamlai美拉美来的地址', '14');
INSERT INTO `address_table` VALUES ('150', '43#蘭咖啡生活馆的地址', '24');
INSERT INTO `address_table` VALUES ('151', '黎客国际酒店（我是一只鱼西餐厅）的地址', '1');
INSERT INTO `address_table` VALUES ('152', '瑞可爷爷的店的地址', '25');
INSERT INTO `address_table` VALUES ('153', '艾龄西餐吧的地址', '17');
INSERT INTO `address_table` VALUES ('154', '观澜海景酒楼的地址', '17');
INSERT INTO `address_table` VALUES ('155', '吾饮良品的地址', '10');
INSERT INTO `address_table` VALUES ('156', '甜蜜转身的地址', '14');
INSERT INTO `address_table` VALUES ('157', '文昌糟粕醋海鲜加工店的地址', '10');
INSERT INTO `address_table` VALUES ('158', '仙Q甜品（明珠广场店）的地址', '24');
INSERT INTO `address_table` VALUES ('159', '蜗·咖啡的地址', '38');
INSERT INTO `address_table` VALUES ('160', '三亚湾仙居府酒店的地址', '19');
INSERT INTO `address_table` VALUES ('161', '芭缇雅泰菜馆的地址', '20');
INSERT INTO `address_table` VALUES ('162', '三亚湾仙居府-泰菜茶餐厅的地址', '19');
INSERT INTO `address_table` VALUES ('163', '花屿海餐厅的地址', '20');
INSERT INTO `address_table` VALUES ('164', '三亚万丽度假酒店星海渔坊的地址', '12');
INSERT INTO `address_table` VALUES ('165', '海棠湾喜来登亚萃餐厅的地址', '12');
INSERT INTO `address_table` VALUES ('166', '安纳塔拉度假酒店（水岸阁泰餐厅）的地址', '42');
INSERT INTO `address_table` VALUES ('167', '神州半岛褔朋喜来登酒店宜客乐西餐厅的地址', '41');
INSERT INTO `address_table` VALUES ('168', '亚龙湾红树林泰菜馆的地址', '20');
INSERT INTO `address_table` VALUES ('169', '斑兰叶风味餐厅的地址', '19');
INSERT INTO `address_table` VALUES ('170', '红树林度假世界泰餐厅的地址', '43');
INSERT INTO `address_table` VALUES ('171', '半山半岛洲际度假酒店临海亚洲风味餐厅的地址', '17');
INSERT INTO `address_table` VALUES ('172', '美程汽车租赁（三亚湾店）的地址', '19');
INSERT INTO `address_table` VALUES ('173', '三亚乐骑小电驴电动车出租（大东海店）的地址', '17');
INSERT INTO `address_table` VALUES ('174', '海南去兜风商旅服务有限公司的地址', '29');
INSERT INTO `address_table` VALUES ('175', '安顺自驾租车的地址', '19');
INSERT INTO `address_table` VALUES ('176', '易捷租车的地址', '27');
INSERT INTO `address_table` VALUES ('177', '三亚金程汽车租赁有限公司的地址', '31');
INSERT INTO `address_table` VALUES ('178', '三亚启程租车的地址', '5');
INSERT INTO `address_table` VALUES ('179', '三亚神马租车自驾（机场店）的地址', '29');
INSERT INTO `address_table` VALUES ('180', '快乐行租车的地址', '43');
INSERT INTO `address_table` VALUES ('181', '林邦租车的地址', '1');
INSERT INTO `address_table` VALUES ('182', '亿海租车的地址', '17');
INSERT INTO `address_table` VALUES ('183', '腾越租车（商品街店）的地址', '14');
INSERT INTO `address_table` VALUES ('184', '有木有汽车租赁公司的地址', '44');
INSERT INTO `address_table` VALUES ('185', '丰正华丰田租车的地址', '45');
INSERT INTO `address_table` VALUES ('186', '三亚子龙旅业服务有限公司的地址', '46');
INSERT INTO `address_table` VALUES ('187', '鹿城三亚旅游包车服务（三亚湘投银泰度假酒店服务点）的地址', '17');
INSERT INTO `address_table` VALUES ('188', '海南启乘户外拓展有限公司的地址', '26');
INSERT INTO `address_table` VALUES ('189', '同洀租车（迎宾路店）的地址', '39');
INSERT INTO `address_table` VALUES ('190', '海南旺科自行车俱乐部的地址', '47');
INSERT INTO `address_table` VALUES ('191', '美捷达租车的地址', '29');
INSERT INTO `address_table` VALUES ('192', '金舜租车的地址', '34');
INSERT INTO `address_table` VALUES ('193', '乐途一站式汽车服务的地址', '39');
INSERT INTO `address_table` VALUES ('194', '三亚互邦自驾车租赁的地址', '39');
INSERT INTO `address_table` VALUES ('195', '标旗租车（下洋田店）的地址', '48');
INSERT INTO `address_table` VALUES ('196', '小叮咚电动车租赁的地址', '17');
INSERT INTO `address_table` VALUES ('197', '吉吉岛汽车租凭的地址', '20');
INSERT INTO `address_table` VALUES ('198', '美程汽车租赁的地址', '14');
INSERT INTO `address_table` VALUES ('199', '启航租车的地址', '19');
INSERT INTO `address_table` VALUES ('200', '金达租车的地址', '5');
INSERT INTO `address_table` VALUES ('201', '海陵汽车租赁有限公司的地址', '1');
INSERT INTO `address_table` VALUES ('202', '华人租车（凤凰岛店）的地址', '19');
INSERT INTO `address_table` VALUES ('203', '快乐行租车（大东海店）的地址', '17');
INSERT INTO `address_table` VALUES ('204', '海南海韵假日旅行社的地址', '34');
INSERT INTO `address_table` VALUES ('205', '三亚水晶湾汽车租赁的地址', '1');
INSERT INTO `address_table` VALUES ('206', '凯普达汽车租赁的地址', '19');
INSERT INTO `address_table` VALUES ('207', '逍遥游汽车租赁的地址', '29');
INSERT INTO `address_table` VALUES ('208', '三亚木鱼商旅服务有限公司的地址', '34');
INSERT INTO `address_table` VALUES ('209', '合盛三亚租车的地址', '29');
INSERT INTO `address_table` VALUES ('210', '鹿城三亚旅游包车服务（三亚凤凰水城凯莱度假酒店服务点）的地址', '9');
INSERT INTO `address_table` VALUES ('211', '旅途中租车的地址', '9');
INSERT INTO `address_table` VALUES ('212', '联顺汽车租赁的地址', '5');
INSERT INTO `address_table` VALUES ('213', '三亚Freedom电动车租赁商行的地址', '49');
INSERT INTO `address_table` VALUES ('214', '合盛汽车租赁有限公司的地址', '19');
INSERT INTO `address_table` VALUES ('215', '三亚洛丽塔婚纱摄影店的地址', '27');
INSERT INTO `address_table` VALUES ('216', '罗马风情（三亚店）的地址', '19');
INSERT INTO `address_table` VALUES ('217', '拉阔视觉婚纱摄影的地址', '19');
INSERT INTO `address_table` VALUES ('218', 'IDO国际婚纱摄影的地址', '36');
INSERT INTO `address_table` VALUES ('219', '东方新娘婚纱摄影（新建街店）的地址', '1');
INSERT INTO `address_table` VALUES ('220', '三亚自由空气摄影的地址', '17');
INSERT INTO `address_table` VALUES ('221', '三亚简爱婚纱摄影的地址', '21');
INSERT INTO `address_table` VALUES ('222', '鑫怡视觉摄影的地址', '19');
INSERT INTO `address_table` VALUES ('223', '可可里拉环球旅拍的地址', '24');
INSERT INTO `address_table` VALUES ('224', '罗亚婚纱摄影的地址', '19');
INSERT INTO `address_table` VALUES ('225', '三亚绽美摄影工作室的地址', '9');
INSERT INTO `address_table` VALUES ('226', '西奈婚纱摄影工作室的地址', '9');
INSERT INTO `address_table` VALUES ('227', '维也妠婚纱摄影的地址', '34');
INSERT INTO `address_table` VALUES ('228', '贝拉印象婚纱摄影工作室的地址', '36');
INSERT INTO `address_table` VALUES ('229', '红视觉的地址', '10');
INSERT INTO `address_table` VALUES ('230', '摩卡婚纱摄影工作室的地址', '1');
INSERT INTO `address_table` VALUES ('231', '苏菲亚映像婚纱摄影的地址', '19');
INSERT INTO `address_table` VALUES ('232', '拓璞柯国际婚纱摄影（金鸡岭旗舰店）的地址', '19');
INSERT INTO `address_table` VALUES ('233', '三亚第一夫人婚纱摄影的地址', '19');
INSERT INTO `address_table` VALUES ('234', '够爱婚纱摄影的地址', '34');
INSERT INTO `address_table` VALUES ('235', '果曼国际婚纱摄影的地址', '19');
INSERT INTO `address_table` VALUES ('236', '米兰婚纱摄影的地址', '10');
INSERT INTO `address_table` VALUES ('237', '三亚金曼丽莎婚纱摄影的地址', '10');
INSERT INTO `address_table` VALUES ('238', '三亚爱菲斯国际婚纱摄影机构的地址', '9');
INSERT INTO `address_table` VALUES ('239', 'IDO婚纱摄影的地址', '20');
INSERT INTO `address_table` VALUES ('240', '三亚婚纱摄影WZ工作室的地址', '19');
INSERT INTO `address_table` VALUES ('241', '三亚梦芭比婚纱摄影的地址', '19');
INSERT INTO `address_table` VALUES ('242', '米兰春天婚纱摄影（三亚总部基地）的地址', '19');
INSERT INTO `address_table` VALUES ('243', 'A派婚纱摄影（金鸡岭店）的地址', '34');
INSERT INTO `address_table` VALUES ('244', '三亚最美婚纱摄影的地址', '34');
INSERT INTO `address_table` VALUES ('245', '三亚nami婚纱摄影的地址', '9');
INSERT INTO `address_table` VALUES ('246', '三亚爱琴海国际婚纱摄影机构的地址', '10');
INSERT INTO `address_table` VALUES ('247', '三亚伊尚婚纱摄影的地址', '21');
INSERT INTO `address_table` VALUES ('248', '爱久久国际婚纱摄影的地址', '24');
INSERT INTO `address_table` VALUES ('249', '巴黎恋人三亚旗舰店的地址', '27');
INSERT INTO `address_table` VALUES ('250', '18度C婚纱摄影工作室的地址', '10');
INSERT INTO `address_table` VALUES ('251', '维纳斯国际婚纱摄影的地址', '19');
INSERT INTO `address_table` VALUES ('252', '哆哆婚纱儿童摄影的地址', '40');
INSERT INTO `address_table` VALUES ('253', '三亚诠释婚纱摄影工作室的地址', '42');
INSERT INTO `address_table` VALUES ('254', '三亚卡布奇诺时光婚纱摄影工作室的地址', '39');
INSERT INTO `address_table` VALUES ('255', '诺曼婚纱摄影的地址', '15');
INSERT INTO `address_table` VALUES ('256', '钟爱一生婚纱摄影的地址', '35');
INSERT INTO `address_table` VALUES ('257', '高端私人定制婚纱摄影的地址', '34');
INSERT INTO `address_table` VALUES ('258', 'AngeL婚纱摄影工作室的地址', '36');
INSERT INTO `address_table` VALUES ('259', '佳伟国际婚纱摄影的地址', '10');
INSERT INTO `address_table` VALUES ('260', '名爵婚纱摄影工作室的地址', '10');
INSERT INTO `address_table` VALUES ('261', '玛莎迪奥写真的地址', '10');
INSERT INTO `address_table` VALUES ('262', '爱拉婚纱摄影的地址', '10');
INSERT INTO `address_table` VALUES ('263', '名人视觉婚纱摄影的地址', '34');
INSERT INTO `address_table` VALUES ('264', '甜蜜假日婚纱摄影的地址', '1');
INSERT INTO `address_table` VALUES ('265', '798国际街区婚纱摄影（海坡店）的地址', '19');
INSERT INTO `address_table` VALUES ('266', '三亚百合经典婚纱摄影的地址', '10');
INSERT INTO `address_table` VALUES ('267', '爱特婚纱摄影的地址', '10');
INSERT INTO `address_table` VALUES ('268', '三亚飞歌摄影工作室的地址', '10');
INSERT INTO `address_table` VALUES ('269', '蝴蝶婚纱摄影的地址', '19');
INSERT INTO `address_table` VALUES ('270', '菲映像摄影的地址', '19');
INSERT INTO `address_table` VALUES ('271', '最爱婚纱摄影（三亚新风街店）的地址', '10');
INSERT INTO `address_table` VALUES ('272', '稀区韩式美学婚纱摄影的地址', '10');
INSERT INTO `address_table` VALUES ('273', '阿朵拉婚纱摄影的地址', '1');
INSERT INTO `address_table` VALUES ('274', '凯西婚纱摄影的地址', '15');
INSERT INTO `address_table` VALUES ('275', '倾禾婚纱的地址', '39');
INSERT INTO `address_table` VALUES ('276', '爱尚蜜月婚纱摄影机构的地址', '1');
INSERT INTO `address_table` VALUES ('277', '爱美视觉婚纱摄影的地址', '39');
INSERT INTO `address_table` VALUES ('278', '海朵婚纱摄影的地址', '19');
INSERT INTO `address_table` VALUES ('279', '提拉米苏国际婚纱摄影会馆的地址', '10');
INSERT INTO `address_table` VALUES ('280', '0898国际婚纱摄影的地址', '10');
INSERT INTO `address_table` VALUES ('281', '三亚薇爱影像纪实婚纱摄影的地址', '19');
INSERT INTO `address_table` VALUES ('282', '费罗蒙婚纱摄影的地址', '1');
INSERT INTO `address_table` VALUES ('283', '赫柏婚礼婚纱摄影的地址', '10');
INSERT INTO `address_table` VALUES ('284', '三亚乐尚婚纱摄影的地址', '34');
INSERT INTO `address_table` VALUES ('285', '巴黎婚纱（三亚）的地址', '1');
INSERT INTO `address_table` VALUES ('286', '色色婚纱摄影的地址', '38');
INSERT INTO `address_table` VALUES ('287', '椰林滩婚纱的地址', '1');
INSERT INTO `address_table` VALUES ('288', '薇薇新娘婚纱摄影（光明路店）的地址', '10');
INSERT INTO `address_table` VALUES ('289', '公爵婚纱摄影的地址', '38');
INSERT INTO `address_table` VALUES ('290', '博钰婚纱摄影工作室的地址', '19');
INSERT INTO `address_table` VALUES ('291', '海之爱婚纱摄影的地址', '10');
INSERT INTO `address_table` VALUES ('292', 'V9环球婚纱摄影的地址', '19');
INSERT INTO `address_table` VALUES ('293', '绽放爱婚纱摄影的地址', '34');
INSERT INTO `address_table` VALUES ('294', '罗马假日婚纱摄影的地址', '9');
INSERT INTO `address_table` VALUES ('295', 'v6纯爱婚纱摄影的地址', '10');
INSERT INTO `address_table` VALUES ('296', '绝色摄影的地址', '39');
INSERT INTO `address_table` VALUES ('297', '海语摄婚纱摄影的地址', '48');
INSERT INTO `address_table` VALUES ('298', '三亚维也纳婚纱摄影的地址', '21');
INSERT INTO `address_table` VALUES ('299', '永美相像部的地址', '9');
INSERT INTO `address_table` VALUES ('300', '茵爱婚纱摄影的地址', '9');
INSERT INTO `address_table` VALUES ('301', '三亚兰蔻视觉婚纱摄影的地址', '24');
INSERT INTO `address_table` VALUES ('302', '尚爵婚纱摄影的地址', '9');
INSERT INTO `address_table` VALUES ('303', '三亚苏摄影工作室的地址', '10');
INSERT INTO `address_table` VALUES ('304', '现代经典婚纱摄影的地址', '19');
INSERT INTO `address_table` VALUES ('305', '嘻嘻婚纱摄影的地址', '10');
INSERT INTO `address_table` VALUES ('306', '玫瑰海水下婚纱摄影基地的地址', '1');
INSERT INTO `address_table` VALUES ('307', '依依视觉婚纱摄影的地址', '24');
INSERT INTO `address_table` VALUES ('308', '靡尚视觉婚纱摄影的地址', '34');
INSERT INTO `address_table` VALUES ('309', 'OY视觉婚纱摄影的地址', '19');
INSERT INTO `address_table` VALUES ('310', '唯品视觉婚纱摄影的地址', '19');
INSERT INTO `address_table` VALUES ('311', '三亚娜美婚纱摄影的地址', '9');
INSERT INTO `address_table` VALUES ('312', '艾玛皇后婚纱摄影的地址', '34');
INSERT INTO `address_table` VALUES ('313', '金宝贝摄影会馆的地址', '39');
INSERT INTO `address_table` VALUES ('314', '爱丽丝梦幻婚纱摄影的地址', '43');
INSERT INTO `address_table` VALUES ('315', '巴黎公主婚纱摄影公馆的地址', '34');
INSERT INTO `address_table` VALUES ('316', '唯爱婚纱摄影（河东路店）的地址', '34');
INSERT INTO `address_table` VALUES ('317', '新青年的地址', '10');
INSERT INTO `address_table` VALUES ('318', 'InnLove婚纱的地址', '19');
INSERT INTO `address_table` VALUES ('319', '金宝贝婴童会馆的地址', '9');
INSERT INTO `address_table` VALUES ('320', '运动宝贝国际早教中心的地址', '10');
INSERT INTO `address_table` VALUES ('321', '快乐宝贝儿童乐园（龙岭路店）的地址', '9');
INSERT INTO `address_table` VALUES ('322', '七彩阳光早教的地址', '21');
INSERT INTO `address_table` VALUES ('323', '乐仕堡椰林探险乐园的地址', '20');
INSERT INTO `address_table` VALUES ('324', '赫柏婚礼的地址', '36');
INSERT INTO `address_table` VALUES ('325', '芙洛拉花园（解放二路店）的地址', '10');
INSERT INTO `address_table` VALUES ('326', '珍爱鲜花连锁（文明路店）的地址', '1');
INSERT INTO `address_table` VALUES ('327', '中礼鲜花（海之恋鲜花店 ）的地址', '10');
INSERT INTO `address_table` VALUES ('328', '爱赏鲜花的地址', '1');
INSERT INTO `address_table` VALUES ('329', '惠馨花坊（和平街店）的地址', '5');
INSERT INTO `address_table` VALUES ('330', '绿林仙踪的地址', '14');
INSERT INTO `address_table` VALUES ('331', '红豆花艺（文明路店）的地址', '36');
INSERT INTO `address_table` VALUES ('332', '春色满园鲜花店的地址', '1');
INSERT INTO `address_table` VALUES ('333', '绿韵花艺鲜花店（南国骏园店）的地址', '50');
INSERT INTO `address_table` VALUES ('334', '天韵花艺轩的地址', '1');
INSERT INTO `address_table` VALUES ('335', '云卉鲜花坊的地址', '19');
INSERT INTO `address_table` VALUES ('336', '花开相爱（中心大道店）的地址', '51');
INSERT INTO `address_table` VALUES ('337', '爱上鲜花（文明路店）的地址', '1');
INSERT INTO `address_table` VALUES ('338', '怡心鲜花批发坊（团结路店）的地址', '10');
INSERT INTO `address_table` VALUES ('339', '我爱你花艺的地址', '36');
INSERT INTO `address_table` VALUES ('340', '吾爱鲜花（心愿花屋店）的地址', '5');
INSERT INTO `address_table` VALUES ('341', '瑞园花艺（认黎花店）的地址', '14');
INSERT INTO `address_table` VALUES ('342', '亲爱的店的地址', '1');
INSERT INTO `address_table` VALUES ('343', '情缘鲜花连锁店（親宜花屋）的地址', '10');
INSERT INTO `address_table` VALUES ('344', '自然派高端花艺的地址', '9');
INSERT INTO `address_table` VALUES ('345', '心仪花坊（百卉花屋）的地址', '1');
INSERT INTO `address_table` VALUES ('346', '馨媛花店的地址', '14');
INSERT INTO `address_table` VALUES ('347', '云花鲜花（海之恋鲜花店）的地址', '10');
INSERT INTO `address_table` VALUES ('348', '花艺生活馆的地址', '10');
INSERT INTO `address_table` VALUES ('349', '难忘花朵的地址', '10');
INSERT INTO `address_table` VALUES ('350', '彬馨花园（城区花店）的地址', '5');
INSERT INTO `address_table` VALUES ('351', '勿忘我鲜花店（海之恋鲜花店）的地址', '10');
INSERT INTO `address_table` VALUES ('352', '花样年华（南绣花店）的地址', '5');
INSERT INTO `address_table` VALUES ('353', '乐爱花坊的地址', '17');
INSERT INTO `address_table` VALUES ('354', '嘻嘻CC主题量版式KTV（创业店）的地址', '52');
INSERT INTO `address_table` VALUES ('355', '瓦依娜时尚歌城的地址', '53');
INSERT INTO `address_table` VALUES ('356', '爆米花主题量贩KTV—I MUSE的地址', '54');
INSERT INTO `address_table` VALUES ('357', '歌库KTV的地址', '55');
INSERT INTO `address_table` VALUES ('358', '凡尔赛量贩式KTV（旗舰店）的地址', '56');
INSERT INTO `address_table` VALUES ('359', '凡尔赛量贩式KTV（国际购物中心店）的地址', '57');
INSERT INTO `address_table` VALUES ('360', '宝乐迪量贩式KTV的地址', '58');
INSERT INTO `address_table` VALUES ('361', 'agogo时尚量贩KTV的地址', '59');
INSERT INTO `address_table` VALUES ('362', '家乐迪量贩式KTV的地址', '60');
INSERT INTO `address_table` VALUES ('363', '佰嘉乐量贩式KTV旗舰店的地址', '61');
INSERT INTO `address_table` VALUES ('364', '宝乐迪量版式KTV（兰天购物广场店）的地址', '62');
INSERT INTO `address_table` VALUES ('365', '星光奥斯卡KTV的地址', '63');
INSERT INTO `address_table` VALUES ('366', '好乐迪ktv的地址', '64');
INSERT INTO `address_table` VALUES ('367', '海棠七仙好乐迪KTV的地址', '65');
INSERT INTO `address_table` VALUES ('368', '纯KKTV的地址', '66');
INSERT INTO `address_table` VALUES ('369', '佰嘉乐酒吧式音乐广场（港华店）的地址', '67');
INSERT INTO `address_table` VALUES ('370', '金典时代的地址', '68');
INSERT INTO `address_table` VALUES ('371', '科宝KTV的地址', '69');
INSERT INTO `address_table` VALUES ('372', '凯莱仙人掌度假酒店KTV的地址', '70');
INSERT INTO `address_table` VALUES ('373', '都市KTV的地址', '71');
INSERT INTO `address_table` VALUES ('374', '国艺堂（河西路店）的地址', '36');
INSERT INTO `address_table` VALUES ('375', '富侨足疗按摩的地址', '21');
INSERT INTO `address_table` VALUES ('376', '椰林滩大酒店SPA的地址', '27');
INSERT INTO `address_table` VALUES ('377', '贵足堂的地址', '34');
INSERT INTO `address_table` VALUES ('378', '重庆富侨（三亚湾店）的地址', '19');
INSERT INTO `address_table` VALUES ('379', '海之梦美容美发的地址', '22');
INSERT INTO `address_table` VALUES ('380', '三亚国际饭店“源”养生休闲会馆的地址', '1');
INSERT INTO `address_table` VALUES ('381', '木易百年自然养生馆（娇俏女人店）的地址', '10');
INSERT INTO `address_table` VALUES ('382', '唯美度美容SPA会所的地址', '15');
INSERT INTO `address_table` VALUES ('383', '天宝养生堂的地址', '19');
INSERT INTO `address_table` VALUES ('384', '泰国圣荷国际美体美颜养生会所（三亚总店）的地址', '10');
INSERT INTO `address_table` VALUES ('385', '金尊按摩养生的地址', '19');
INSERT INTO `address_table` VALUES ('386', '天泉养生堂的地址', '1');
INSERT INTO `address_table` VALUES ('387', '天馨美根丝公馆康乐园的地址', '34');
INSERT INTO `address_table` VALUES ('388', '十二愿SPA空间（老机场路店）的地址', '19');
INSERT INTO `address_table` VALUES ('389', '首足富侨（中医理疗）的地址', '36');
INSERT INTO `address_table` VALUES ('390', '河南侯氏按摩的地址', '14');
INSERT INTO `address_table` VALUES ('391', '誉肤堂的地址', '10');
INSERT INTO `address_table` VALUES ('392', '美根丝造型（总店）的地址', '34');
INSERT INTO `address_table` VALUES ('393', '水悦康SPA养生会所的地址', '17');
INSERT INTO `address_table` VALUES ('394', '重庆富侨（胜利路贵宾店）的地址', '19');
INSERT INTO `address_table` VALUES ('395', '砭石理疗中心的地址', '34');
INSERT INTO `address_table` VALUES ('396', '福源堂休闲会所的地址', '14');
INSERT INTO `address_table` VALUES ('397', '重庆富侨（保亭店）的地址', '72');
INSERT INTO `address_table` VALUES ('398', '景山玉龙保健中心的地址', '20');
INSERT INTO `address_table` VALUES ('399', '丽康源盲人按摩的地址', '14');
INSERT INTO `address_table` VALUES ('400', '权健汗蒸天下养生馆的地址', '1');
INSERT INTO `address_table` VALUES ('401', '太极养生中心的地址', '20');
INSERT INTO `address_table` VALUES ('402', '荟好美容美体机构的地址', '14');
INSERT INTO `address_table` VALUES ('403', '韩蒸天下养生馆的地址', '14');
INSERT INTO `address_table` VALUES ('404', '金玛萨国际美容美体（解放路店）的地址', '10');
INSERT INTO `address_table` VALUES ('405', '姣丽美容养生会所（商品街店）的地址', '14');
INSERT INTO `address_table` VALUES ('406', '吉成健美（总统店）的地址', '73');
INSERT INTO `address_table` VALUES ('407', '立业台球的地址', '36');
INSERT INTO `address_table` VALUES ('408', '遇见台球俱乐部的地址', '74');
INSERT INTO `address_table` VALUES ('409', '大东海健英台球吧的地址', '75');
INSERT INTO `address_table` VALUES ('410', '三亚海岛风情旅行社有限公司的地址', '9');
INSERT INTO `address_table` VALUES ('411', '世纪宝迪健身会所（三亚店）的地址', '31');
INSERT INTO `address_table` VALUES ('412', '金维健身的地址', '76');
INSERT INTO `address_table` VALUES ('413', '吉成健美（明珠广场旗舰店）的地址', '24');
INSERT INTO `address_table` VALUES ('414', '吉成健美健身俱乐部（大东海店）的地址', '77');
INSERT INTO `address_table` VALUES ('415', 'D8台球俱乐部的地址', '34');
INSERT INTO `address_table` VALUES ('416', '三亚太阳湾海洋运动有限公司的地址', '9');
INSERT INTO `address_table` VALUES ('417', '百乐国际潜水的地址', '17');
INSERT INTO `address_table` VALUES ('418', '一念瑜伽的地址', '10');
INSERT INTO `address_table` VALUES ('419', '纯粹瑜伽（金鸡岭店）的地址', '34');
INSERT INTO `address_table` VALUES ('420', '三亚乐程旅业有限公司的地址', '9');
INSERT INTO `address_table` VALUES ('421', '民间旅行社的地址', '14');
INSERT INTO `address_table` VALUES ('422', '宝笑台球厅的地址', '78');
INSERT INTO `address_table` VALUES ('423', '汇融海景酒店游泳池的地址', '21');
INSERT INTO `address_table` VALUES ('424', '精英台球吧的地址', '79');
INSERT INTO `address_table` VALUES ('425', '金维健身（鹿回头广场店）的地址', '9');
INSERT INTO `address_table` VALUES ('426', '澜瑜伽的地址', '9');
INSERT INTO `address_table` VALUES ('427', '健英台球室的地址', '80');
INSERT INTO `address_table` VALUES ('428', '大东海国际潜水俱乐部的地址', '71');
INSERT INTO `address_table` VALUES ('429', '亚龙湾高尔夫球会的地址', '71');
INSERT INTO `address_table` VALUES ('430', '安纳塔拉度假酒店流水泳池吧的地址', '42');
INSERT INTO `address_table` VALUES ('431', '球力量台球音乐烧烤清吧的地址', '10');
INSERT INTO `address_table` VALUES ('432', '乔氏台球（商品街店）的地址', '81');
INSERT INTO `address_table` VALUES ('433', '德贝潜水（亚龙湾店）的地址', '82');
INSERT INTO `address_table` VALUES ('434', '神马驿站的地址', '20');
INSERT INTO `address_table` VALUES ('435', '若那瑜伽（JnanaYoga）的地址', '34');
INSERT INTO `address_table` VALUES ('436', '广州南部假期国际的地址', '83');
INSERT INTO `address_table` VALUES ('437', '同发酒店（温泉游泳池）的地址', '84');

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
INSERT INTO `county_table` VALUES ('1', ' 三亚', '1');

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
  KEY `UNIQUE_good_name` (`goods_name`) USING BTREE,
  KEY `foreign_goods_address` (`address_id`),
  CONSTRAINT `foreign_goods_address` FOREIGN KEY (`address_id`) REFERENCES `address_table` (`address_id`),
  CONSTRAINT `foreign_goods_cate` FOREIGN KEY (`category_id`) REFERENCES `category_table` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_table
-- ----------------------------
INSERT INTO `goods_table` VALUES ('1', '瑞可爷爷起司蛋糕店', 'images/test.jpg', '仅售29.9元！价值39元的起司蛋糕1个，约7英寸，圆形。', '39.00', '29.00', '0898-88360968/88866066', '1', '5', 'images/qrcode_test.jpg', '2015-07-16 14:50:57');
INSERT INTO `goods_table` VALUES ('2', '欣圆蛋糕店', 'http://p0.meituan.net/460.280/deal/__46088786__3539904.jpg', '仅售88元！价值128元的鲜果奶油蛋糕1个，约8英寸，圆形/方形/心形。', '128.00', '88.00', '0898-88259655', '2', '5', 'images/qrcode_test.jpg', '2015-07-16 14:50:57');
INSERT INTO `goods_table` VALUES ('3', '万喜蛋糕坊', 'http://p1.meituan.net/460.280/deal/7c227c55dcc14eb784d5cb3af3de8e7081385.jpg', '仅售78元！最高价值128元的万喜蛋糕坊10英寸蛋糕3选1，可免费写字10个，赠送卡片1张，市区范围内可配送。', '128.00', '78.00', '0898-31807108/15109880634/13976799285', '3', '5', 'images/qrcode_test.jpg', '2015-07-16 14:50:57');
INSERT INTO `goods_table` VALUES ('4', '7天连锁酒店', 'http://p1.meituan.net/460.280/deal/__41253290__4112090.jpg', '仅售87元！价值977元的自主大床房入住1晚，可连续入住，免费wifi。周围商圈繁华，吃行十分便利，离海仅70米。', '977.00', '77.00', '0898-88253607', '4', '36', 'images/qrcode_test.jpg', '2015-07-16 14:50:57');
INSERT INTO `goods_table` VALUES ('5', '三亚不仔客海鲜加工', 'images/goods/14376320850.jpg', '蒜蓉蒸生耗1个，提供免费WiFi，美味随心萦绕', '10.00', '3.00', '13838438', '5', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('6', '万丽度假酒店鸿星荟餐厅', 'images/goods/14376320851.jpg', '椰子鸡汤套餐1份，提供免费WiFi', '240.00', '190.00', '13838438', '6', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('7', '泽香海鲜加工店', 'images/goods/14376320852.jpg', '100元代金券1张，除酒水外全场通用', '100.00', '70.00', '13838438', '7', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('8', '汉堡王', 'images/goods/14376320863.jpg', '汉堡王 WOW! 草莓新地2份，精致美味，幸福滋味', '16.00', '8.00', '13838438', '8', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('9', '小扇贝海鲜加工店', 'images/goods/14376320864.jpg', '50元代金券1张，仅适用于海鲜加工费，可叠加使用', '50.00', '39.00', '13838438', '9', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('10', '小美海鲜', 'images/goods/14376320866.jpg', '50元海鲜加工代金券1张，仅适用于海鲜加工', '50.00', '45.00', '13838438', '10', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('11', 'N多寿司', 'images/goods/14376320877.jpg', '招牌寿司1份，美味随心萦绕', '12.00', '7.00', '13838438', '11', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('12', '鞑鞑炭烤羊腿', 'images/goods/14376320878.jpg', '4-6人烤羊排腿，享受美味，从此开始', '250.00', '158.00', '13838438', '12', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('13', '海米海鲜加工店', 'images/goods/14376320889.jpg', '100元海鲜加工代金券1张，仅适用于海鲜加工', '100.00', '50.00', '13838438', '13', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('15', '海峡情缘台湾涮涮锅', 'images/goods/143763208811.jpg', '50元代金券1张，除饮料、酒水外全场通用', '50.00', '1.00', '13838438', '15', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('16', '凉都风情杨梅汤', 'images/goods/143763208812.jpg', '饮品4选1，有赠品，提供免费WiFi，尽享精致美味', '8.00', '5.00', '13838438', '16', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('17', '六号海鲜加工店', 'images/goods/143763208813.jpg', '50元代金券1张，仅适用于海鲜加工，可叠加使用', '50.00', '28.00', '13838438', '17', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('18', '麻辣香锅', 'images/goods/143763208915.jpg', '双人餐，提供免费WiFi，分享美味，不错的体会', '95.00', '65.00', '13838438', '18', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('19', '亿百度烤肉', 'images/goods/143763208917.jpg', '100元100代金券1张，全场通用，可叠加使用', '100.00', '79.00', '13838438', '19', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('20', '食为先海鲜加工店', 'images/goods/143763208918.jpg', '椰子冻1份，包间免费，提供免费WiFi，美味不停歇', '30.00', '24.00', '13838438', '20', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('21', '旭记黄焖鸡米饭', 'images/goods/143763208919.jpg', '黄焖鸡套餐，建议1人使用，提供免费WiFi', '18.00', '17.00', '13838438', '21', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('22', '千古情贵宾位门票', 'images/goods/143763209020.jpg', '千古情贵宾位门票1个', '260.00', '229.00', '13838438', '22', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('23', '千古情景区表演贵宾席门票', 'images/goods/143763209021.jpg', '千古情表演贵宾席门票1张', '288.00', '230.00', '13838438', '23', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('24', '麦克风KTV', 'images/goods/143763209022.jpg', '周一至周日欢唱3小时，大包厢及以下可用', '195.00', '19.00', '13838438', '24', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('25', '唛嘟量贩式KTV', 'images/goods/143763209123.jpg', '任选4小时欢唱套餐，多种包厢可用', '620.00', '48.00', '13838438', '25', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('26', '蜈支洲岛', 'images/goods/143763209124.jpg', '蜈支洲岛门票+船票1次', '168.00', '150.00', '13838438', '26', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('27', '宝乐迪量版式KTV', 'images/goods/143763209125.jpg', '周一至周五3小时欢乐套餐', '300.00', '19.00', '13838438', '27', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('28', '维景国际度假酒店', 'images/goods/143763209126.jpg', '维景国际度假酒店，提供免费WiFi', '4128.00', '1899.00', '13838438', '28', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('29', '重庆富侨三亚第一家', 'images/goods/143763209227.jpg', '足疗保健单人套餐1次，男女不限', '108.00', '96.00', '13838438', '29', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('30', '海呈人文阁书吧', 'images/goods/143763209228.jpg', '福山咖啡1杯，提供免费WiFi，精致美味，幸福滋味', '28.00', '9.00', '13838438', '30', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('31', 'M2酒吧', 'images/goods/143763209229.jpg', '超值3-4人餐，提供免费WiFi，尽享精致美味', '660.00', '300.00', '13838438', '31', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('32', '珠江南田温泉', 'images/goods/143763209330.jpg', '温泉票（儿童）1次，提供免费WiFi', '99.00', '49.00', '13838438', '32', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('33', '三亚亲亲鱼疗馆', 'images/goods/143763209331.jpg', '亲亲鱼疗养生足疗一次1次，男女不限', '30.00', '16.00', '13838438', '33', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('34', '中视国际影城IMAX', 'images/goods/143763209332.jpg', '【不含电影票】影院卖品单人套餐，提供免费WiFi', '23.00', '12.00', '13838438', '34', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('35', '明珠电影城', 'images/goods/143763209333.jpg', '全场通兑单人电影票1张，可观看2D/3D', '70.00', '32.00', '13838438', '35', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('36', '陵水都乐国际影城', 'images/goods/143763209434.jpg', '2D电影票1张，可观看2D，提供免费WiFi', '60.00', '35.00', '13838438', '36', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('37', '阿罗哈电影城', 'images/goods/143763209435.jpg', '阿罗哈电影城单人2D电影票1张，可观看2D', '60.00', '38.00', '13838438', '37', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('38', '浪淘沙驿站', 'images/goods/143763209436.jpg', '民俗风情标准间入住1晚，温馨入住，尽享舒适！', '198.00', '118.00', '13838438', '38', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('39', '三亚海滨海度假海景公寓', 'images/goods/143763209537.jpg', '豪华海景蜜月大床房入住1晚，可连续入住', '999.00', '98.00', '13838438', '39', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('40', '三亚湾红洋度假公寓', 'images/goods/143763209638.jpg', '入住1晚，大床房/双标房2选1，可连续入住', '398.00', '68.00', '13838438', '40', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('41', '蜈支洲岛珊瑚酒店', 'images/goods/143763209639.jpg', '蜈支洲岛珊瑚酒店，提供免费WiFi', '4159.00', '1649.00', '13838438', '41', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('42', '如家快捷酒店', 'images/goods/143763209740.jpg', '钟点大床房钟点房4小时，位置绝佳，近步行街，汽车总站，第一市场', '199.00', '60.00', '13838438', '42', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('43', '小海丫', 'images/goods/143763209742.jpg', '假日阳光大床房入住1晚，可连续入住，免费WiFi', '1460.00', '153.00', '13838438', '43', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('44', 'En mer', 'images/goods/143763209743.jpg', '阳台园景房入住1晚，可连续入住，免费WiFi', '428.00', '198.00', '13838438', '44', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('45', '语心鲜花坊', 'images/goods/143763209845.jpg', '11朵玫瑰1小熊', '210.00', '88.00', '13838438', '45', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('46', '小风车电瓶车租赁', 'images/goods/143763209946.jpg', '电动车租赁1小时，提供免费WiFi', '20.00', '10.00', '13838438', '46', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('47', '嘀嘀哥，韩式电动车租赁浪漫骑行', 'images/goods/143763209948.jpg', '韩式电动车租赁1次', '69.00', '9.00', '13838438', '47', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('48', '三亚骑仕租车', 'images/goods/143763210049.jpg', '租车1天，雪佛兰新赛欧/现代瑞纳/起亚K2可选', '298.00', '48.00', '13838438', '48', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('49', '车无限租车', 'images/goods/143763210050.jpg', '租车，提供免费WiFi', '268.00', '48.00', '13838438', '49', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('50', '张太太发绳100件', 'images/goods/143763210053.jpg', '活动期间下单即送小礼物！', '69.00', '29.00', '13838438', '50', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('51', '俞兆林夏季防晒衣', 'images/goods/143763210158.jpg', '舒适透气，夏季防晒，外出旅游必备！', '98.00', '39.00', '13838438', '51', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('52', '小不点美甲工作室', 'images/goods/143763210160.jpg', '时尚美甲套餐，提供免费WiFi', '148.00', '39.00', '13838438', '52', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('53', '美汇源', 'images/goods/143763210161.jpg', '设计造型洗剪吹1次，男女不限，发长不限', '58.00', '28.00', '13838438', '53', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('54', '格格屋美甲', 'images/goods/143763210162.jpg', '芭比胶纯色美甲1次，男女不限', '39.00', '9.00', '13838438', '54', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('55', '天域养生', 'images/goods/143763210363.jpg', '韩国美容护理，男女不限', '490.00', '85.00', '13838438', '55', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('56', '东门造型', 'images/goods/143763210464.jpg', '洗剪吹1次，男女不限，发长不限', '31.00', '28.00', '13838438', '56', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('57', '我甲我秀', 'images/goods/143763210465.jpg', '修手，修脚套系，女士专享', '30.00', '10.00', '13838438', '57', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('58', '东匠造型品质形象沙龙', 'images/goods/143763210466.jpg', '洗剪吹1次，男女不限，发长不限', '38.00', '25.00', '13838438', '58', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('59', '粤港澳', 'images/goods/143763210767.jpg', '洗剪吹，男女不限，发长不限', '83.00', '36.00', '13838438', '59', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('62', '三亚蜈支洲岛一日游', 'images/goods/143763210871.jpg', '三亚蜈支洲岛一日游含船票，每日发团，不限出团人数', '248.00', '125.00', '13838438', '62', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('66', '南波湾快乐时光户外潜水俱乐部', 'images/goods/143763210975.jpg', '南波湾户外潜水俱乐部1次，含餐，大巴接送', '498.00', '198.00', '13838438', '66', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('67', '拾味馆', 'images/goods/14376338765.jpg', '100元代金券1张，全场通用，可叠加使用', '100.00', '88.00', '13838438', '67', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('68', '晓全寿司', 'images/goods/143763387614.jpg', '招牌海苔寿司1份，滋味鲜美，邀您品鉴', '12.00', '9.00', '13838438', '68', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('69', '华莱士', 'images/goods/143763387616.jpg', '单人套餐，提供免费WiFi，美味随心萦绕', '19.00', '9.00', '13838438', '69', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('70', '世纪豪庭度假酒店', 'images/goods/143763387741.jpg', '豪华雅士房1晚+2份早餐+免费WiFi', '2300.00', '230.00', '13838438', '70', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('71', '三亚亿海租车', 'images/goods/143763387844.jpg', '阳光、花冠、悦动，亿海租车', '298.00', '135.00', '13838438', '71', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('72', '全能租行', 'images/goods/143763387947.jpg', '吊床出租1次，提供免费WiFi', '40.00', '19.00', '13838438', '72', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('73', '精功眼镜', 'images/goods/143763387951.jpg', '配镜套餐，提供免费验光1次，无需预约', '498.00', '88.00', '13838438', '73', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('74', '利铺面包干10g', 'images/goods/143763387952.jpg', '越南进口，超好吃的零食面包片约10g', '50.00', '34.00', '13838438', '74', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('75', '蔻乐芝瘦身排毒足贴', 'images/goods/143763388054.jpg', '排毒美容、舒筋祛湿、塑身美体、安眠解疲、美足除臭。', '53.00', '33.00', '13838438', '75', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('76', '浪莎包芯丝连裤袜', 'images/goods/143763388055.jpg', '浪莎包芯丝连裤袜1双，4色可选', '111.00', '24.00', '13838438', '76', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('77', '多彩生活感应小夜灯', 'images/goods/143763388056.jpg', '多彩生活智能光控感应小夜灯', '64.00', '21.00', '13838438', '77', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('78', '玻尿酸滋养保湿面膜', 'images/goods/143763388057.jpg', '仅售1.88元！满15片包邮，30片送5片', '86.00', '13.00', '13838438', '78', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('79', '怡浓单粒燕麦', 'images/goods/143763388159.jpg', '独立包装，简单便捷，口感独特', '62.00', '23.00', '13838438', '79', '1', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('80', '三亚宝宏大酒店', 'images/goods/14376413770.jpg', '三亚宝宏大酒店的描述', '108.00', '19.00', '138384383', '89', '35', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('81', '韩雅烤肉', 'images/goods/14376413781.jpg', '韩雅烤肉的描述', '85.00', '16.00', '138384383', '90', '24', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('82', '新天地海南菜', 'images/goods/14376413782.jpg', '新天地海南菜的描述', '113.00', '19.00', '138384383', '91', '17', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('83', '聚湘福海鲜大排档', 'images/goods/14376413793.jpg', '聚湘福海鲜大排档的描述', '60.00', '32.00', '138384383', '92', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('84', '拾味馆（海景花园店）', 'images/goods/14376413794.jpg', '拾味馆（海景花园店）的描述', '76.00', '22.00', '138384383', '93', '17', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('85', '明润海鲜排挡', 'images/goods/14376413795.jpg', '明润海鲜排挡的描述', '54.00', '11.00', '138384383', '94', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('86', '柠檬草泰式餐厅', 'images/goods/14376413806.jpg', '柠檬草泰式餐厅的描述', '59.00', '23.00', '138384383', '95', '14', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('87', '黄记煌三汁闷锅（渔人码头店）', 'images/goods/14376413807.jpg', '黄记煌三汁闷锅（渔人码头店）的描述', '117.00', '37.00', '138384383', '96', '21', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('88', '东北饺子城（解放二路店）', 'images/goods/14376413808.jpg', '东北饺子城（解放二路店）的描述', '129.00', '16.00', '138384383', '97', '19', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('89', '匠子烤鱼', 'images/goods/14376413819.jpg', '匠子烤鱼的描述', '63.00', '15.00', '138384383', '98', '21', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('90', '三亚7岁家庭餐厅（三亚湾店）', 'images/goods/143764138110.jpg', '三亚7岁家庭餐厅（三亚湾店）的描述', '79.00', '18.00', '138384383', '99', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('91', '三姐海鲜加工店', 'images/goods/143764138111.jpg', '三姐海鲜加工店的描述', '80.00', '39.00', '138384383', '100', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('92', '焰遇烤肉', 'images/goods/143764138212.jpg', '焰遇烤肉的描述', '118.00', '18.00', '138384383', '101', '13', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('93', '刘一手火锅（跃进街店）', 'images/goods/143764138213.jpg', '刘一手火锅（跃进街店）的描述', '113.00', '14.00', '138384383', '102', '2', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('94', '香港佬港茶餐厅', 'images/goods/143764138214.jpg', '香港佬港茶餐厅的描述', '85.00', '31.00', '138384383', '103', '11', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('95', '壹加壹（商品街店）', 'images/goods/143764138215.jpg', '壹加壹（商品街店）的描述', '65.00', '35.00', '138384383', '104', '19', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('96', '风波庄', 'images/goods/143764138316.jpg', '风波庄的描述', '104.00', '35.00', '138384383', '105', '28', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('97', '蕉叶餐厅', 'images/goods/143764138317.jpg', '蕉叶餐厅的描述', '61.00', '16.00', '138384383', '106', '14', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('98', '重庆南山火锅', 'images/goods/143764138318.jpg', '重庆南山火锅的描述', '102.00', '28.00', '138384383', '107', '2', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('99', '打铁豆花（团结店）', 'images/goods/143764138419.jpg', '打铁豆花（团结店）的描述', '60.00', '34.00', '138384383', '108', '23', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('100', '柏瑞海鲜超市餐厅', 'images/goods/143764138420.jpg', '柏瑞海鲜超市餐厅的描述', '100.00', '32.00', '138384383', '109', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('101', '小米川味海鲜加工店', 'images/goods/143764138421.jpg', '小米川味海鲜加工店的描述', '118.00', '11.00', '138384383', '110', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('102', '花姐好再来海鲜加工店', 'images/goods/143764138422.jpg', '花姐好再来海鲜加工店的描述', '102.00', '14.00', '138384383', '111', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('103', '丰尚堂砂锅老汤', 'images/goods/143764138523.jpg', '丰尚堂砂锅老汤的描述', '113.00', '25.00', '138384383', '112', '8', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('104', '重庆刘一手火锅（商品街店）', 'images/goods/143764138624.jpg', '重庆刘一手火锅（商品街店）的描述', '65.00', '22.00', '138384383', '113', '2', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('105', '林姐香味海鲜', 'images/goods/143764138625.jpg', '林姐香味海鲜的描述', '95.00', '26.00', '138384383', '114', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('106', '来是福海鲜', 'images/goods/14376432240.jpg', '来是福海鲜的描述', '119.00', '98.00', '138384383', '115', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('107', '天下客海鲜', 'images/goods/14376432251.jpg', '天下客海鲜的描述', '101.00', '80.00', '138384383', '116', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('108', '三亚凤凰相缘海鲜排挡', 'images/goods/14376432262.jpg', '三亚凤凰相缘海鲜排挡的描述', '100.00', '78.00', '138384383', '117', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('109', '三亚7岁家庭餐厅（海坡店）', 'images/goods/14376432263.jpg', '三亚7岁家庭餐厅（海坡店）的描述', '31.00', '7.00', '138384383', '118', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('110', '一块豆腐（友谊路店）', 'images/goods/14376432274.jpg', '一块豆腐（友谊路店）的描述', '617.00', '588.00', '138384383', '119', '19', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('111', '海棠湾渔海鲜味园', 'images/goods/14376432275.jpg', '海棠湾渔海鲜味园的描述', '21.00', '0.00', '138384383', '120', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('112', '一分利海鲜店', 'images/goods/14376432276.jpg', '一分利海鲜店的描述', '182.00', '168.00', '138384383', '121', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('113', '实味海鲜', 'images/goods/14376432277.jpg', '实味海鲜的描述', '53.00', '25.00', '138384383', '122', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('114', '胜意大酒店海鲜自助餐厅', 'images/goods/14376432288.jpg', '胜意大酒店海鲜自助餐厅的描述', '132.00', '108.00', '138384383', '123', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('115', '雪姐海鲜', 'images/goods/14376432299.jpg', '雪姐海鲜的描述', '100.00', '88.00', '138384383', '124', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('116', '亲嘴螺海鲜加工店', 'images/goods/143764322910.jpg', '亲嘴螺海鲜加工店的描述', '30.00', '2.00', '138384383', '125', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('117', '吴小胖海鲜加工店', 'images/goods/143764323011.jpg', '吴小胖海鲜加工店的描述', '87.00', '76.00', '138384383', '126', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('118', '亚龙湾红树林度假酒店', 'images/goods/143764323012.jpg', '亚龙湾红树林度假酒店的描述', '166.00', '148.00', '138384383', '127', '35', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('119', '湛龙海鲜', 'images/goods/143764323013.jpg', '湛龙海鲜的描述', '98.00', '70.00', '138384383', '128', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('120', '陈萍海鲜', 'images/goods/143764323114.jpg', '陈萍海鲜的描述', '175.00', '148.00', '138384383', '129', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('121', '侨源海鲜农家饭庄', 'images/goods/143764323115.jpg', '侨源海鲜农家饭庄的描述', '101.00', '79.00', '138384383', '130', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('122', '7天海鲜排档', 'images/goods/143764323116.jpg', '7天海鲜排档的描述', '15.00', '1.00', '138384383', '131', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('123', '川顺海鲜大排档', 'images/goods/143764323217.jpg', '川顺海鲜大排档的描述', '179.00', '168.00', '138384383', '132', '12', 'images/qrcode_test.jpg', '0000-00-00 00:00:00');
INSERT INTO `goods_table` VALUES ('124', '御厨自助火锅烧烤', 'images/goods/14376436140.jpg', '御厨自助火锅烧烤的描述', '21.00', '9.00', '138384383', '133', '2', 'images/qrcode_test.jpg', '2015-07-23 17:26:54');
INSERT INTO `goods_table` VALUES ('125', '爵士牛排（商品街店）', 'images/goods/14376436141.jpg', '爵士牛排（商品街店）的描述', '43.00', '18.00', '138384383', '134', '7', 'images/qrcode_test.jpg', '2015-07-23 17:26:55');
INSERT INTO `goods_table` VALUES ('126', '亨美乐（解放二路步行街店）', 'images/goods/14376436152.jpg', '亨美乐（解放二路步行街店）的描述', '28.00', '6.00', '138384383', '135', '16', 'images/qrcode_test.jpg', '2015-07-23 17:26:56');
INSERT INTO `goods_table` VALUES ('127', 'Clover coffee 四叶草咖啡', 'images/goods/14376436187.jpg', 'Clover coffee 四叶草咖啡的描述', '45.00', '16.00', '138384383', '140', '15', 'images/qrcode_test.jpg', '2015-07-23 17:26:59');
INSERT INTO `goods_table` VALUES ('128', '鲜福记老关东涮羊肉', 'images/goods/14376436209.jpg', '鲜福记老关东涮羊肉的描述', '15.00', '1.00', '138384383', '142', '2', 'images/qrcode_test.jpg', '2015-07-23 17:27:03');
INSERT INTO `goods_table` VALUES ('129', '梦里蜀香', 'images/goods/143764362311.jpg', '梦里蜀香的描述', '13.00', '1.00', '138384383', '144', '8', 'images/qrcode_test.jpg', '2015-07-23 17:27:04');
INSERT INTO `goods_table` VALUES ('130', '上岛咖啡西餐厅', 'images/goods/143764362412.jpg', '上岛咖啡西餐厅的描述', '27.00', '5.00', '138384383', '145', '7', 'images/qrcode_test.jpg', '2015-07-23 17:27:05');
INSERT INTO `goods_table` VALUES ('131', '夜宴（明珠广场店）', 'images/goods/143764362513.jpg', '夜宴（明珠广场店）的描述', '89.00', '68.00', '138384383', '146', '15', 'images/qrcode_test.jpg', '2015-07-23 17:27:05');
INSERT INTO `goods_table` VALUES ('132', '逗丁咖啡', 'images/goods/143764362615.jpg', '逗丁咖啡的描述', '18.00', '4.00', '138384383', '148', '15', 'images/qrcode_test.jpg', '2015-07-23 17:27:06');
INSERT INTO `goods_table` VALUES ('133', '黎客国际酒店（我是一只鱼西餐厅）', 'images/goods/143764362818.jpg', '黎客国际酒店（我是一只鱼西餐厅）的描述', '21.00', '9.00', '138384383', '151', '7', 'images/qrcode_test.jpg', '2015-07-23 17:27:09');
INSERT INTO `goods_table` VALUES ('134', '艾龄西餐吧', 'images/goods/143764362920.jpg', '艾龄西餐吧的描述', '108.00', '78.00', '138384383', '153', '7', 'images/qrcode_test.jpg', '2015-07-23 17:27:09');
INSERT INTO `goods_table` VALUES ('135', '观澜海景酒楼', 'images/goods/143764362921.jpg', '观澜海景酒楼的描述', '37.00', '9.00', '138384383', '154', '12', 'images/qrcode_test.jpg', '2015-07-23 17:27:10');
INSERT INTO `goods_table` VALUES ('136', '文昌糟粕醋海鲜加工店', 'images/goods/143764363224.jpg', '文昌糟粕醋海鲜加工店的描述', '53.00', '25.00', '138384383', '157', '12', 'images/qrcode_test.jpg', '2015-07-23 17:27:12');
INSERT INTO `goods_table` VALUES ('137', '三亚湾仙居府酒店', 'images/goods/14376437390.jpg', '三亚湾仙居府酒店的描述', '175.00', '158.00', '138384383', '160', '35', 'images/qrcode_test.jpg', '2015-07-23 17:29:00');
INSERT INTO `goods_table` VALUES ('138', '芭缇雅泰菜馆', 'images/goods/14376437401.jpg', '芭缇雅泰菜馆的描述', '39.00', '9.00', '138384383', '161', '14', 'images/qrcode_test.jpg', '2015-07-23 17:29:01');
INSERT INTO `goods_table` VALUES ('139', '三亚湾仙居府-泰菜茶餐厅', 'images/goods/14376437422.jpg', '三亚湾仙居府-泰菜茶餐厅的描述', '174.00', '158.00', '138384383', '162', '14', 'images/qrcode_test.jpg', '2015-07-23 17:29:03');
INSERT INTO `goods_table` VALUES ('140', '花屿海餐厅', 'images/goods/14376437433.jpg', '花屿海餐厅的描述', '399.00', '388.00', '138384383', '163', '8', 'images/qrcode_test.jpg', '2015-07-23 17:29:03');
INSERT INTO `goods_table` VALUES ('141', '三亚万丽度假酒店星海渔坊', 'images/goods/14376437444.jpg', '三亚万丽度假酒店星海渔坊的描述', '464.00', '446.00', '138384383', '164', '12', 'images/qrcode_test.jpg', '2015-07-23 17:29:04');
INSERT INTO `goods_table` VALUES ('142', '海棠湾喜来登亚萃餐厅', 'images/goods/14376437445.jpg', '海棠湾喜来登亚萃餐厅的描述', '297.00', '280.00', '138384383', '165', '14', 'images/qrcode_test.jpg', '2015-07-23 17:29:04');
INSERT INTO `goods_table` VALUES ('143', '安纳塔拉度假酒店（水岸阁泰餐厅）', 'images/goods/14376437446.jpg', '安纳塔拉度假酒店（水岸阁泰餐厅）的描述', '224.00', '200.00', '138384383', '166', '14', 'images/qrcode_test.jpg', '2015-07-23 17:29:04');
INSERT INTO `goods_table` VALUES ('144', '神州半岛褔朋喜来登酒店宜客乐西餐厅', 'images/goods/14376437457.jpg', '神州半岛褔朋喜来登酒店宜客乐西餐厅的描述', '260.00', '238.00', '138384383', '167', '7', 'images/qrcode_test.jpg', '2015-07-23 17:29:05');
INSERT INTO `goods_table` VALUES ('145', '亚龙湾红树林泰菜馆', 'images/goods/14376437458.jpg', '亚龙湾红树林泰菜馆的描述', '410.00', '388.00', '138384383', '168', '14', 'images/qrcode_test.jpg', '2015-07-23 17:29:05');
INSERT INTO `goods_table` VALUES ('146', '斑兰叶风味餐厅', 'images/goods/14376437459.jpg', '斑兰叶风味餐厅的描述', '99.00', '88.00', '138384383', '169', '7', 'images/qrcode_test.jpg', '2015-07-23 17:29:07');
INSERT INTO `goods_table` VALUES ('147', '红树林度假世界泰餐厅', 'images/goods/143764374710.jpg', '红树林度假世界泰餐厅的描述', '463.00', '439.00', '138384383', '170', '14', 'images/qrcode_test.jpg', '2015-07-23 17:29:08');
INSERT INTO `goods_table` VALUES ('148', '半山半岛洲际度假酒店临海亚洲风味餐厅', 'images/goods/143764374811.jpg', '半山半岛洲际度假酒店临海亚洲风味餐厅的描述', '63.00', '48.00', '138384383', '171', '12', 'images/qrcode_test.jpg', '2015-07-23 17:29:09');
INSERT INTO `goods_table` VALUES ('149', '美程汽车租赁（三亚湾店）', 'images/goods/14376438130.jpg', '美程汽车租赁（三亚湾店）的描述', '105.00', '88.00', '138384383', '172', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:13');
INSERT INTO `goods_table` VALUES ('150', '三亚乐骑小电驴电动车出租（大东海店）', 'images/goods/14376438131.jpg', '三亚乐骑小电驴电动车出租（大东海店）的描述', '61.00', '38.00', '138384383', '173', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:14');
INSERT INTO `goods_table` VALUES ('151', '海南去兜风商旅服务有限公司', 'images/goods/14376438142.jpg', '海南去兜风商旅服务有限公司的描述', '188.00', '168.00', '138384383', '174', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:14');
INSERT INTO `goods_table` VALUES ('152', '安顺自驾租车', 'images/goods/14376438143.jpg', '安顺自驾租车的描述', '97.00', '80.00', '138384383', '175', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:14');
INSERT INTO `goods_table` VALUES ('153', '易捷租车', 'images/goods/14376438144.jpg', '易捷租车的描述', '117.00', '98.00', '138384383', '176', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:14');
INSERT INTO `goods_table` VALUES ('154', '三亚金程汽车租赁有限公司', 'images/goods/14376438145.jpg', '三亚金程汽车租赁有限公司的描述', '100.00', '89.00', '138384383', '177', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:15');
INSERT INTO `goods_table` VALUES ('155', '三亚启程租车', 'images/goods/14376438156.jpg', '三亚启程租车的描述', '140.00', '118.00', '138384383', '178', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:15');
INSERT INTO `goods_table` VALUES ('156', '三亚神马租车自驾（机场店）', 'images/goods/14376438157.jpg', '三亚神马租车自驾（机场店）的描述', '109.00', '88.00', '138384383', '179', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:16');
INSERT INTO `goods_table` VALUES ('157', '快乐行租车', 'images/goods/14376438168.jpg', '快乐行租车的描述', '75.00', '60.00', '138384383', '180', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:16');
INSERT INTO `goods_table` VALUES ('158', '林邦租车', 'images/goods/14376438169.jpg', '林邦租车的描述', '113.00', '88.00', '138384383', '181', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:17');
INSERT INTO `goods_table` VALUES ('159', '亿海租车', 'images/goods/143764381710.jpg', '亿海租车的描述', '148.00', '135.00', '138384383', '182', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:17');
INSERT INTO `goods_table` VALUES ('160', '腾越租车（商品街店）', 'images/goods/143764381711.jpg', '腾越租车（商品街店）的描述', '130.00', '119.00', '138384383', '183', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:17');
INSERT INTO `goods_table` VALUES ('161', '有木有汽车租赁公司', 'images/goods/143764381812.jpg', '有木有汽车租赁公司的描述', '80.00', '58.00', '138384383', '184', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:18');
INSERT INTO `goods_table` VALUES ('162', '丰正华丰田租车', 'images/goods/143764381813.jpg', '丰正华丰田租车的描述', '151.00', '128.00', '138384383', '185', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:18');
INSERT INTO `goods_table` VALUES ('163', '三亚子龙旅业服务有限公司', 'images/goods/143764381814.jpg', '三亚子龙旅业服务有限公司的描述', '324.00', '298.00', '138384383', '186', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:18');
INSERT INTO `goods_table` VALUES ('164', '鹿城三亚旅游包车服务（三亚湘投银泰度假酒店服务点）', 'images/goods/143764381815.jpg', '鹿城三亚旅游包车服务（三亚湘投银泰度假酒店服务点）的描述', '33.00', '10.00', '138384383', '187', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:18');
INSERT INTO `goods_table` VALUES ('165', '海南启乘户外拓展有限公司', 'images/goods/143764381916.jpg', '海南启乘户外拓展有限公司的描述', '38.00', '11.00', '138384383', '188', '108', 'images/qrcode_test.jpg', '2015-07-23 17:30:19');
INSERT INTO `goods_table` VALUES ('166', '同洀租车（迎宾路店）', 'images/goods/143764381917.jpg', '同洀租车（迎宾路店）的描述', '173.00', '158.00', '138384383', '189', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:19');
INSERT INTO `goods_table` VALUES ('167', '美捷达租车', 'images/goods/143764382019.jpg', '美捷达租车的描述', '69.00', '50.00', '138384383', '191', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:20');
INSERT INTO `goods_table` VALUES ('168', '金舜租车', 'images/goods/143764382020.jpg', '金舜租车的描述', '126.00', '99.00', '138384383', '192', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:21');
INSERT INTO `goods_table` VALUES ('169', '乐途一站式汽车服务', 'images/goods/143764382121.jpg', '乐途一站式汽车服务的描述', '90.00', '68.00', '138384383', '193', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:23');
INSERT INTO `goods_table` VALUES ('170', '三亚互邦自驾车租赁', 'images/goods/143764382322.jpg', '三亚互邦自驾车租赁的描述', '198.00', '168.00', '138384383', '194', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:23');
INSERT INTO `goods_table` VALUES ('171', '标旗租车（下洋田店）', 'images/goods/143764382323.jpg', '标旗租车（下洋田店）的描述', '275.00', '260.00', '138384383', '195', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:23');
INSERT INTO `goods_table` VALUES ('172', '小叮咚电动车租赁', 'images/goods/143764382324.jpg', '小叮咚电动车租赁的描述', '38.00', '9.00', '138384383', '196', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:25');
INSERT INTO `goods_table` VALUES ('173', '吉吉岛汽车租凭', 'images/goods/143764382525.jpg', '吉吉岛汽车租凭的描述', '110.00', '99.00', '138384383', '197', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:25');
INSERT INTO `goods_table` VALUES ('174', '美程汽车租赁', 'images/goods/143764382526.jpg', '美程汽车租赁的描述', '103.00', '88.00', '138384383', '198', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:25');
INSERT INTO `goods_table` VALUES ('175', '启航租车', 'images/goods/143764382527.jpg', '启航租车的描述', '93.00', '78.00', '138384383', '199', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:25');
INSERT INTO `goods_table` VALUES ('176', '金达租车', 'images/goods/14376438570.jpg', '金达租车的描述', '159.00', '130.00', '138384383', '200', '102', 'images/qrcode_test.jpg', '2015-07-23 17:30:57');
INSERT INTO `goods_table` VALUES ('177', '海陵汽车租赁有限公司', 'images/goods/14376438571.jpg', '海陵汽车租赁有限公司的描述', '192.00', '169.00', '138384383', '201', '95', 'images/qrcode_test.jpg', '2015-07-23 17:30:59');
INSERT INTO `goods_table` VALUES ('178', '华人租车（凤凰岛店）', 'images/goods/14376438592.jpg', '华人租车（凤凰岛店）的描述', '118.00', '88.00', '138384383', '202', '95', 'images/qrcode_test.jpg', '2015-07-23 17:31:00');
INSERT INTO `goods_table` VALUES ('179', '快乐行租车（大东海店）', 'images/goods/14376438603.jpg', '快乐行租车（大东海店）的描述', '92.00', '78.00', '138384383', '203', '95', 'images/qrcode_test.jpg', '2015-07-23 17:31:01');
INSERT INTO `goods_table` VALUES ('180', '海南海韵假日旅行社', 'images/goods/14376438614.jpg', '海南海韵假日旅行社的描述', '272.00', '258.00', '138384383', '204', '88', 'images/qrcode_test.jpg', '2015-07-23 17:31:01');
INSERT INTO `goods_table` VALUES ('181', '三亚水晶湾汽车租赁', 'images/goods/14376438615.jpg', '三亚水晶湾汽车租赁的描述', '125.00', '98.00', '138384383', '205', '95', 'images/qrcode_test.jpg', '2015-07-23 17:31:03');
INSERT INTO `goods_table` VALUES ('182', '凯普达汽车租赁', 'images/goods/14376438636.jpg', '凯普达汽车租赁的描述', '121.00', '108.00', '138384383', '206', '95', 'images/qrcode_test.jpg', '2015-07-23 17:31:03');
INSERT INTO `goods_table` VALUES ('183', '逍遥游汽车租赁', 'images/goods/14376438637.jpg', '逍遥游汽车租赁的描述', '153.00', '138.00', '138384383', '207', '95', 'images/qrcode_test.jpg', '2015-07-23 17:31:05');
INSERT INTO `goods_table` VALUES ('184', '三亚木鱼商旅服务有限公司', 'images/goods/14376438658.jpg', '三亚木鱼商旅服务有限公司的描述', '151.00', '129.00', '138384383', '208', '95', 'images/qrcode_test.jpg', '2015-07-23 17:31:05');
INSERT INTO `goods_table` VALUES ('185', '合盛三亚租车', 'images/goods/14376438659.jpg', '合盛三亚租车的描述', '140.00', '118.00', '138384383', '209', '95', 'images/qrcode_test.jpg', '2015-07-23 17:31:06');
INSERT INTO `goods_table` VALUES ('186', '鹿城三亚旅游包车服务（三亚凤凰水城凯莱度假酒店服务点）', 'images/goods/143764386610.jpg', '鹿城三亚旅游包车服务（三亚凤凰水城凯莱度假酒店服务点）的描述', '29.00', '10.00', '138384383', '210', '95', 'images/qrcode_test.jpg', '2015-07-23 17:31:06');
INSERT INTO `goods_table` VALUES ('187', '旅途中租车', 'images/goods/143764386611.jpg', '旅途中租车的描述', '92.00', '78.00', '138384383', '211', '95', 'images/qrcode_test.jpg', '2015-07-23 17:31:07');
INSERT INTO `goods_table` VALUES ('188', '联顺汽车租赁', 'images/goods/143764386712.jpg', '联顺汽车租赁的描述', '139.00', '120.00', '138384383', '212', '95', 'images/qrcode_test.jpg', '2015-07-23 17:31:07');
INSERT INTO `goods_table` VALUES ('189', '合盛汽车租赁有限公司', 'images/goods/143764386714.jpg', '合盛汽车租赁有限公司的描述', '148.00', '118.00', '138384383', '214', '95', 'images/qrcode_test.jpg', '2015-07-23 17:31:08');
INSERT INTO `goods_table` VALUES ('190', '三亚洛丽塔婚纱摄影店', 'images/goods/14376438810.jpg', '三亚洛丽塔婚纱摄影店的描述', '3415.00', '3399.00', '138384383', '215', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:21');
INSERT INTO `goods_table` VALUES ('191', '罗马风情（三亚店）', 'images/goods/14376438811.jpg', '罗马风情（三亚店）的描述', '124.00', '99.00', '138384383', '216', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:21');
INSERT INTO `goods_table` VALUES ('192', '拉阔视觉婚纱摄影', 'images/goods/14376438812.jpg', '拉阔视觉婚纱摄影的描述', '1902.00', '1888.00', '138384383', '217', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:22');
INSERT INTO `goods_table` VALUES ('193', 'IDO国际婚纱摄影', 'images/goods/14376438823.jpg', 'IDO国际婚纱摄影的描述', '418.00', '388.00', '138384383', '218', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:22');
INSERT INTO `goods_table` VALUES ('194', '东方新娘婚纱摄影（新建街店）', 'images/goods/14376438824.jpg', '东方新娘婚纱摄影（新建街店）的描述', '2724.00', '2699.00', '138384383', '219', '93', 'images/qrcode_test.jpg', '2015-07-23 17:31:22');
INSERT INTO `goods_table` VALUES ('195', '三亚自由空气摄影', 'images/goods/14376438825.jpg', '三亚自由空气摄影的描述', '2529.00', '2499.00', '138384383', '220', '93', 'images/qrcode_test.jpg', '2015-07-23 17:31:22');
INSERT INTO `goods_table` VALUES ('196', '三亚简爱婚纱摄影', 'images/goods/14376438836.jpg', '三亚简爱婚纱摄影的描述', '118.00', '88.00', '138384383', '221', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:23');
INSERT INTO `goods_table` VALUES ('197', '鑫怡视觉摄影', 'images/goods/14376438837.jpg', '鑫怡视觉摄影的描述', '2006.00', '1988.00', '138384383', '222', '91', 'images/qrcode_test.jpg', '2015-07-23 17:31:23');
INSERT INTO `goods_table` VALUES ('198', '可可里拉环球旅拍', 'images/goods/14376438838.jpg', '可可里拉环球旅拍的描述', '515.00', '499.00', '138384383', '223', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:24');
INSERT INTO `goods_table` VALUES ('199', '罗亚婚纱摄影', 'images/goods/14376438849.jpg', '罗亚婚纱摄影的描述', '370.00', '349.00', '138384383', '224', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:26');
INSERT INTO `goods_table` VALUES ('200', '三亚绽美摄影工作室', 'images/goods/143764388610.jpg', '三亚绽美摄影工作室的描述', '2216.00', '2199.00', '138384383', '225', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:26');
INSERT INTO `goods_table` VALUES ('201', '西奈婚纱摄影工作室', 'images/goods/143764388611.jpg', '西奈婚纱摄影工作室的描述', '129.00', '99.00', '138384383', '226', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:27');
INSERT INTO `goods_table` VALUES ('202', '维也妠婚纱摄影', 'images/goods/143764388712.jpg', '维也妠婚纱摄影的描述', '3016.00', '2998.00', '138384383', '227', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:27');
INSERT INTO `goods_table` VALUES ('203', '贝拉印象婚纱摄影工作室', 'images/goods/143764388713.jpg', '贝拉印象婚纱摄影工作室的描述', '2009.00', '1999.00', '138384383', '228', '93', 'images/qrcode_test.jpg', '2015-07-23 17:31:27');
INSERT INTO `goods_table` VALUES ('204', '红视觉', 'images/goods/143764388714.jpg', '红视觉的描述', '419.00', '399.00', '138384383', '229', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:28');
INSERT INTO `goods_table` VALUES ('205', '摩卡婚纱摄影工作室', 'images/goods/143764388815.jpg', '摩卡婚纱摄影工作室的描述', '529.00', '500.00', '138384383', '230', '93', 'images/qrcode_test.jpg', '2015-07-23 17:31:28');
INSERT INTO `goods_table` VALUES ('206', '苏菲亚映像婚纱摄影', 'images/goods/143764388816.jpg', '苏菲亚映像婚纱摄影的描述', '327.00', '299.00', '138384383', '231', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:29');
INSERT INTO `goods_table` VALUES ('207', '拓璞柯国际婚纱摄影（金鸡岭旗舰店）', 'images/goods/143764388917.jpg', '拓璞柯国际婚纱摄影（金鸡岭旗舰店）的描述', '2904.00', '2888.00', '138384383', '232', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:29');
INSERT INTO `goods_table` VALUES ('208', '三亚第一夫人婚纱摄影', 'images/goods/143764389018.jpg', '三亚第一夫人婚纱摄影的描述', '530.00', '520.00', '138384383', '233', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:30');
INSERT INTO `goods_table` VALUES ('209', '够爱婚纱摄影', 'images/goods/143764389019.jpg', '够爱婚纱摄影的描述', '1344.00', '1314.00', '138384383', '234', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:30');
INSERT INTO `goods_table` VALUES ('210', '果曼国际婚纱摄影', 'images/goods/143764389120.jpg', '果曼国际婚纱摄影的描述', '3010.00', '2999.00', '138384383', '235', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:31');
INSERT INTO `goods_table` VALUES ('211', '米兰婚纱摄影', 'images/goods/143764389121.jpg', '米兰婚纱摄影的描述', '2026.00', '1999.00', '138384383', '236', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:31');
INSERT INTO `goods_table` VALUES ('212', '三亚金曼丽莎婚纱摄影', 'images/goods/143764389122.jpg', '三亚金曼丽莎婚纱摄影的描述', '528.00', '499.00', '138384383', '237', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:32');
INSERT INTO `goods_table` VALUES ('213', '三亚爱菲斯国际婚纱摄影机构', 'images/goods/143764389223.jpg', '三亚爱菲斯国际婚纱摄影机构的描述', '3305.00', '3288.00', '138384383', '238', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:32');
INSERT INTO `goods_table` VALUES ('214', 'IDO婚纱摄影', 'images/goods/143764389224.jpg', 'IDO婚纱摄影的描述', '4594.00', '4567.00', '138384383', '239', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:32');
INSERT INTO `goods_table` VALUES ('215', '三亚婚纱摄影WZ工作室', 'images/goods/143764389225.jpg', '三亚婚纱摄影WZ工作室的描述', '1211.00', '1188.00', '138384383', '240', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:32');
INSERT INTO `goods_table` VALUES ('216', '三亚梦芭比婚纱摄影', 'images/goods/143764389326.jpg', '三亚梦芭比婚纱摄影的描述', '117.00', '88.00', '138384383', '241', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:33');
INSERT INTO `goods_table` VALUES ('217', '米兰春天婚纱摄影（三亚总部基地）', 'images/goods/143764389327.jpg', '米兰春天婚纱摄影（三亚总部基地）的描述', '527.00', '500.00', '138384383', '242', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:33');
INSERT INTO `goods_table` VALUES ('218', 'A派婚纱摄影（金鸡岭店）', 'images/goods/143764389328.jpg', 'A派婚纱摄影（金鸡岭店）的描述', '318.00', '299.00', '138384383', '243', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:35');
INSERT INTO `goods_table` VALUES ('219', '三亚最美婚纱摄影', 'images/goods/143764389529.jpg', '三亚最美婚纱摄影的描述', '3011.00', '2999.00', '138384383', '244', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:36');
INSERT INTO `goods_table` VALUES ('220', '三亚nami婚纱摄影', 'images/goods/143764389630.jpg', '三亚nami婚纱摄影的描述', '3409.00', '3399.00', '138384383', '245', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:36');
INSERT INTO `goods_table` VALUES ('221', '三亚爱琴海国际婚纱摄影机构', 'images/goods/143764389631.jpg', '三亚爱琴海国际婚纱摄影机构的描述', '2019.00', '1999.00', '138384383', '246', '90', 'images/qrcode_test.jpg', '2015-07-23 17:31:37');
INSERT INTO `goods_table` VALUES ('222', '三亚伊尚婚纱摄影', 'images/goods/14376439430.jpg', '三亚伊尚婚纱摄影的描述', '1615.00', '1588.00', '138384383', '247', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:23');
INSERT INTO `goods_table` VALUES ('223', '爱久久国际婚纱摄影', 'images/goods/14376439431.jpg', '爱久久国际婚纱摄影的描述', '1304.00', '1288.00', '138384383', '248', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:24');
INSERT INTO `goods_table` VALUES ('224', '巴黎恋人三亚旗舰店', 'images/goods/14376439442.jpg', '巴黎恋人三亚旗舰店的描述', '528.00', '500.00', '138384383', '249', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:24');
INSERT INTO `goods_table` VALUES ('225', '18度C婚纱摄影工作室', 'images/goods/14376439443.jpg', '18度C婚纱摄影工作室的描述', '512.00', '498.00', '138384383', '250', '93', 'images/qrcode_test.jpg', '2015-07-23 17:32:24');
INSERT INTO `goods_table` VALUES ('226', '维纳斯国际婚纱摄影', 'images/goods/14376439444.jpg', '维纳斯国际婚纱摄影的描述', '403.00', '388.00', '138384383', '251', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:24');
INSERT INTO `goods_table` VALUES ('227', '哆哆婚纱儿童摄影', 'images/goods/14376439445.jpg', '哆哆婚纱儿童摄影的描述', '4023.00', '3999.00', '138384383', '252', '93', 'images/qrcode_test.jpg', '2015-07-23 17:32:25');
INSERT INTO `goods_table` VALUES ('228', '三亚诠释婚纱摄影工作室', 'images/goods/14376439456.jpg', '三亚诠释婚纱摄影工作室的描述', '3701.00', '3680.00', '138384383', '253', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:25');
INSERT INTO `goods_table` VALUES ('229', '三亚卡布奇诺时光婚纱摄影工作室', 'images/goods/14376439457.jpg', '三亚卡布奇诺时光婚纱摄影工作室的描述', '4010.00', '3999.00', '138384383', '254', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:25');
INSERT INTO `goods_table` VALUES ('230', '诺曼婚纱摄影', 'images/goods/14376439468.jpg', '诺曼婚纱摄影的描述', '1022.00', '999.00', '138384383', '255', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:26');
INSERT INTO `goods_table` VALUES ('231', '钟爱一生婚纱摄影', 'images/goods/14376439469.jpg', '钟爱一生婚纱摄影的描述', '1012.00', '999.00', '138384383', '256', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:26');
INSERT INTO `goods_table` VALUES ('232', '高端私人定制婚纱摄影', 'images/goods/143764394710.jpg', '高端私人定制婚纱摄影的描述', '1321.00', '1299.00', '138384383', '257', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:27');
INSERT INTO `goods_table` VALUES ('233', 'AngeL婚纱摄影工作室', 'images/goods/143764394711.jpg', 'AngeL婚纱摄影工作室的描述', '916.00', '888.00', '138384383', '258', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:27');
INSERT INTO `goods_table` VALUES ('234', '佳伟国际婚纱摄影', 'images/goods/143764394712.jpg', '佳伟国际婚纱摄影的描述', '415.00', '399.00', '138384383', '259', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:29');
INSERT INTO `goods_table` VALUES ('235', '名爵婚纱摄影工作室', 'images/goods/143764394913.jpg', '名爵婚纱摄影工作室的描述', '312.00', '298.00', '138384383', '260', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:29');
INSERT INTO `goods_table` VALUES ('236', '玛莎迪奥写真', 'images/goods/143764394914.jpg', '玛莎迪奥写真的描述', '1701.00', '1688.00', '138384383', '261', '91', 'images/qrcode_test.jpg', '2015-07-23 17:32:30');
INSERT INTO `goods_table` VALUES ('237', '爱拉婚纱摄影', 'images/goods/143764395015.jpg', '爱拉婚纱摄影的描述', '6026.00', '5999.00', '138384383', '262', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:30');
INSERT INTO `goods_table` VALUES ('238', '名人视觉婚纱摄影', 'images/goods/143764395016.jpg', '名人视觉婚纱摄影的描述', '1010.00', '999.00', '138384383', '263', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:30');
INSERT INTO `goods_table` VALUES ('239', '甜蜜假日婚纱摄影', 'images/goods/143764395017.jpg', '甜蜜假日婚纱摄影的描述', '425.00', '398.00', '138384383', '264', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:31');
INSERT INTO `goods_table` VALUES ('240', '798国际街区婚纱摄影（海坡店）', 'images/goods/143764395118.jpg', '798国际街区婚纱摄影（海坡店）的描述', '1262.00', '1234.00', '138384383', '265', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:31');
INSERT INTO `goods_table` VALUES ('241', '三亚百合经典婚纱摄影', 'images/goods/143764395119.jpg', '三亚百合经典婚纱摄影的描述', '622.00', '599.00', '138384383', '266', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:31');
INSERT INTO `goods_table` VALUES ('242', '爱特婚纱摄影', 'images/goods/143764395120.jpg', '爱特婚纱摄影的描述', '715.00', '699.00', '138384383', '267', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:31');
INSERT INTO `goods_table` VALUES ('243', '三亚飞歌摄影工作室', 'images/goods/143764395121.jpg', '三亚飞歌摄影工作室的描述', '2619.00', '2599.00', '138384383', '268', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:31');
INSERT INTO `goods_table` VALUES ('244', '蝴蝶婚纱摄影', 'images/goods/143764395222.jpg', '蝴蝶婚纱摄影的描述', '613.00', '588.00', '138384383', '269', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:33');
INSERT INTO `goods_table` VALUES ('245', '菲映像摄影', 'images/goods/143764395423.jpg', '菲映像摄影的描述', '4019.00', '3999.00', '138384383', '270', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:34');
INSERT INTO `goods_table` VALUES ('246', '最爱婚纱摄影（三亚新风街店）', 'images/goods/143764395424.jpg', '最爱婚纱摄影（三亚新风街店）的描述', '4026.00', '3999.00', '138384383', '271', '93', 'images/qrcode_test.jpg', '2015-07-23 17:32:34');
INSERT INTO `goods_table` VALUES ('247', '稀区韩式美学婚纱摄影', 'images/goods/143764395425.jpg', '稀区韩式美学婚纱摄影的描述', '2012.00', '1999.00', '138384383', '272', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:34');
INSERT INTO `goods_table` VALUES ('248', '阿朵拉婚纱摄影', 'images/goods/143764395426.jpg', '阿朵拉婚纱摄影的描述', '617.00', '599.00', '138384383', '273', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:34');
INSERT INTO `goods_table` VALUES ('249', '凯西婚纱摄影', 'images/goods/143764395427.jpg', '凯西婚纱摄影的描述', '1012.00', '999.00', '138384383', '274', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:35');
INSERT INTO `goods_table` VALUES ('250', '倾禾婚纱', 'images/goods/143764395528.jpg', '倾禾婚纱的描述', '509.00', '499.00', '138384383', '275', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:35');
INSERT INTO `goods_table` VALUES ('251', '爱尚蜜月婚纱摄影机构', 'images/goods/143764395529.jpg', '爱尚蜜月婚纱摄影机构的描述', '2014.00', '1999.00', '138384383', '276', '93', 'images/qrcode_test.jpg', '2015-07-23 17:32:36');
INSERT INTO `goods_table` VALUES ('252', '爱美视觉婚纱摄影', 'images/goods/143764395630.jpg', '爱美视觉婚纱摄影的描述', '4717.00', '4688.00', '138384383', '277', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:36');
INSERT INTO `goods_table` VALUES ('253', '海朵婚纱摄影', 'images/goods/14376439700.jpg', '海朵婚纱摄影的描述', '5013.00', '4999.00', '138384383', '278', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:51');
INSERT INTO `goods_table` VALUES ('254', '提拉米苏国际婚纱摄影会馆', 'images/goods/14376439711.jpg', '提拉米苏国际婚纱摄影会馆的描述', '5417.00', '5395.00', '138384383', '279', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:51');
INSERT INTO `goods_table` VALUES ('255', '0898国际婚纱摄影', 'images/goods/14376439712.jpg', '0898国际婚纱摄影的描述', '1612.00', '1599.00', '138384383', '280', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:51');
INSERT INTO `goods_table` VALUES ('256', '三亚薇爱影像纪实婚纱摄影', 'images/goods/14376439713.jpg', '三亚薇爱影像纪实婚纱摄影的描述', '2913.00', '2899.00', '138384383', '281', '100', 'images/qrcode_test.jpg', '2015-07-23 17:32:52');
INSERT INTO `goods_table` VALUES ('257', '费罗蒙婚纱摄影', 'images/goods/14376439724.jpg', '费罗蒙婚纱摄影的描述', '1918.00', '1888.00', '138384383', '282', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:52');
INSERT INTO `goods_table` VALUES ('258', '赫柏婚礼婚纱摄影', 'images/goods/14376439725.jpg', '赫柏婚礼婚纱摄影的描述', '616.00', '598.00', '138384383', '283', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:52');
INSERT INTO `goods_table` VALUES ('259', '三亚乐尚婚纱摄影', 'images/goods/14376439726.jpg', '三亚乐尚婚纱摄影的描述', '3598.00', '3580.00', '138384383', '284', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:52');
INSERT INTO `goods_table` VALUES ('260', '巴黎婚纱（三亚）', 'images/goods/14376439737.jpg', '巴黎婚纱（三亚）的描述', '3906.00', '3888.00', '138384383', '285', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:53');
INSERT INTO `goods_table` VALUES ('261', '色色婚纱摄影', 'images/goods/14376439738.jpg', '色色婚纱摄影的描述', '5925.00', '5899.00', '138384383', '286', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:53');
INSERT INTO `goods_table` VALUES ('262', '椰林滩婚纱', 'images/goods/14376439739.jpg', '椰林滩婚纱的描述', '1024.00', '1000.00', '138384383', '287', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:53');
INSERT INTO `goods_table` VALUES ('263', '薇薇新娘婚纱摄影（光明路店）', 'images/goods/143764397310.jpg', '薇薇新娘婚纱摄影（光明路店）的描述', '3010.00', '2999.00', '138384383', '288', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:53');
INSERT INTO `goods_table` VALUES ('264', '公爵婚纱摄影', 'images/goods/143764397311.jpg', '公爵婚纱摄影的描述', '5009.00', '4999.00', '138384383', '289', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:54');
INSERT INTO `goods_table` VALUES ('265', '博钰婚纱摄影工作室', 'images/goods/143764397412.jpg', '博钰婚纱摄影工作室的描述', '4016.00', '3999.00', '138384383', '290', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:54');
INSERT INTO `goods_table` VALUES ('266', '海之爱婚纱摄影', 'images/goods/143764397413.jpg', '海之爱婚纱摄影的描述', '2026.00', '1999.00', '138384383', '291', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:54');
INSERT INTO `goods_table` VALUES ('267', 'V9环球婚纱摄影', 'images/goods/143764397414.jpg', 'V9环球婚纱摄影的描述', '6022.00', '5999.00', '138384383', '292', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:54');
INSERT INTO `goods_table` VALUES ('268', '绽放爱婚纱摄影', 'images/goods/143764397515.jpg', '绽放爱婚纱摄影的描述', '1713.00', '1699.00', '138384383', '293', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:55');
INSERT INTO `goods_table` VALUES ('269', '罗马假日婚纱摄影', 'images/goods/143764397516.jpg', '罗马假日婚纱摄影的描述', '1615.00', '1588.00', '138384383', '294', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:56');
INSERT INTO `goods_table` VALUES ('270', 'v6纯爱婚纱摄影', 'images/goods/143764397617.jpg', 'v6纯爱婚纱摄影的描述', '1022.00', '999.00', '138384383', '295', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:56');
INSERT INTO `goods_table` VALUES ('271', '绝色摄影', 'images/goods/143764397618.jpg', '绝色摄影的描述', '800.00', '788.00', '138384383', '296', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:56');
INSERT INTO `goods_table` VALUES ('272', '海语摄婚纱摄影', 'images/goods/143764397619.jpg', '海语摄婚纱摄影的描述', '1821.00', '1799.00', '138384383', '297', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:57');
INSERT INTO `goods_table` VALUES ('273', '三亚维也纳婚纱摄影', 'images/goods/143764397720.jpg', '三亚维也纳婚纱摄影的描述', '2898.00', '2888.00', '138384383', '298', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:58');
INSERT INTO `goods_table` VALUES ('274', '永美相像部', 'images/goods/143764397821.jpg', '永美相像部的描述', '4018.00', '3999.00', '138384383', '299', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:58');
INSERT INTO `goods_table` VALUES ('275', '茵爱婚纱摄影', 'images/goods/143764397822.jpg', '茵爱婚纱摄影的描述', '217.00', '188.00', '138384383', '300', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:58');
INSERT INTO `goods_table` VALUES ('276', '三亚兰蔻视觉婚纱摄影', 'images/goods/143764397823.jpg', '三亚兰蔻视觉婚纱摄影的描述', '413.00', '399.00', '138384383', '301', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:59');
INSERT INTO `goods_table` VALUES ('277', '尚爵婚纱摄影', 'images/goods/143764397924.jpg', '尚爵婚纱摄影的描述', '5010.00', '4999.00', '138384383', '302', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:59');
INSERT INTO `goods_table` VALUES ('278', '三亚苏摄影工作室', 'images/goods/143764397925.jpg', '三亚苏摄影工作室的描述', '301.00', '288.00', '138384383', '303', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:59');
INSERT INTO `goods_table` VALUES ('279', '现代经典婚纱摄影', 'images/goods/143764397926.jpg', '现代经典婚纱摄影的描述', '110.00', '100.00', '138384383', '304', '90', 'images/qrcode_test.jpg', '2015-07-23 17:32:59');
INSERT INTO `goods_table` VALUES ('280', '嘻嘻婚纱摄影', 'images/goods/14376440220.jpg', '嘻嘻婚纱摄影的描述', '1023.00', '999.00', '138384383', '305', '90', 'images/qrcode_test.jpg', '2015-07-23 17:33:43');
INSERT INTO `goods_table` VALUES ('281', '玫瑰海水下婚纱摄影基地', 'images/goods/14376440231.jpg', '玫瑰海水下婚纱摄影基地的描述', '412.00', '388.00', '138384383', '306', '93', 'images/qrcode_test.jpg', '2015-07-23 17:33:43');
INSERT INTO `goods_table` VALUES ('282', '依依视觉婚纱摄影', 'images/goods/14376440232.jpg', '依依视觉婚纱摄影的描述', '199.00', '188.00', '138384383', '307', '90', 'images/qrcode_test.jpg', '2015-07-23 17:33:45');
INSERT INTO `goods_table` VALUES ('283', '靡尚视觉婚纱摄影', 'images/goods/14376440253.jpg', '靡尚视觉婚纱摄影的描述', '728.00', '699.00', '138384383', '308', '90', 'images/qrcode_test.jpg', '2015-07-23 17:33:45');
INSERT INTO `goods_table` VALUES ('284', 'OY视觉婚纱摄影', 'images/goods/14376440254.jpg', 'OY视觉婚纱摄影的描述', '411.00', '399.00', '138384383', '309', '93', 'images/qrcode_test.jpg', '2015-07-23 17:33:46');
INSERT INTO `goods_table` VALUES ('285', '唯品视觉婚纱摄影', 'images/goods/14376440265.jpg', '唯品视觉婚纱摄影的描述', '513.00', '499.00', '138384383', '310', '90', 'images/qrcode_test.jpg', '2015-07-23 17:33:46');
INSERT INTO `goods_table` VALUES ('286', '三亚娜美婚纱摄影', 'images/goods/14376440266.jpg', '三亚娜美婚纱摄影的描述', '208.00', '198.00', '138384383', '311', '90', 'images/qrcode_test.jpg', '2015-07-23 17:33:46');
INSERT INTO `goods_table` VALUES ('287', '艾玛皇后婚纱摄影', 'images/goods/14376440277.jpg', '艾玛皇后婚纱摄影的描述', '579.00', '558.00', '138384383', '312', '90', 'images/qrcode_test.jpg', '2015-07-23 17:33:47');
INSERT INTO `goods_table` VALUES ('288', '金宝贝摄影会馆', 'images/goods/14376440278.jpg', '金宝贝摄影会馆的描述', '299.00', '288.00', '138384383', '313', '98', 'images/qrcode_test.jpg', '2015-07-23 17:33:47');
INSERT INTO `goods_table` VALUES ('289', '爱丽丝梦幻婚纱摄影', 'images/goods/14376440279.jpg', '爱丽丝梦幻婚纱摄影的描述', '713.00', '699.00', '138384383', '314', '90', 'images/qrcode_test.jpg', '2015-07-23 17:33:48');
INSERT INTO `goods_table` VALUES ('290', '巴黎公主婚纱摄影公馆', 'images/goods/143764402810.jpg', '巴黎公主婚纱摄影公馆的描述', '2216.00', '2199.00', '138384383', '315', '90', 'images/qrcode_test.jpg', '2015-07-23 17:33:48');
INSERT INTO `goods_table` VALUES ('291', '唯爱婚纱摄影（河东路店）', 'images/goods/143764402811.jpg', '唯爱婚纱摄影（河东路店）的描述', '1317.00', '1299.00', '138384383', '316', '90', 'images/qrcode_test.jpg', '2015-07-23 17:33:50');
INSERT INTO `goods_table` VALUES ('292', '新青年', 'images/goods/143764403012.jpg', '新青年的描述', '322.00', '299.00', '138384383', '317', '90', 'images/qrcode_test.jpg', '2015-07-23 17:33:50');
INSERT INTO `goods_table` VALUES ('293', 'InnLove婚纱', 'images/goods/143764403013.jpg', 'InnLove婚纱的描述', '698.00', '688.00', '138384383', '318', '91', 'images/qrcode_test.jpg', '2015-07-23 17:33:50');
INSERT INTO `goods_table` VALUES ('294', '金宝贝婴童会馆', 'images/goods/14376440880.jpg', '金宝贝婴童会馆的描述', '46.00', '18.00', '138384383', '319', '98', 'images/qrcode_test.jpg', '2015-07-23 17:34:48');
INSERT INTO `goods_table` VALUES ('295', '运动宝贝国际早教中心', 'images/goods/14376440881.jpg', '运动宝贝国际早教中心的描述', '43.00', '19.00', '138384383', '320', '99', 'images/qrcode_test.jpg', '2015-07-23 17:34:48');
INSERT INTO `goods_table` VALUES ('296', '快乐宝贝儿童乐园（龙岭路店）', 'images/goods/14376440882.jpg', '快乐宝贝儿童乐园（龙岭路店）的描述', '47.00', '20.00', '138384383', '321', '98', 'images/qrcode_test.jpg', '2015-07-23 17:34:48');
INSERT INTO `goods_table` VALUES ('297', '七彩阳光早教', 'images/goods/14376440893.jpg', '七彩阳光早教的描述', '38.00', '9.00', '138384383', '322', '99', 'images/qrcode_test.jpg', '2015-07-23 17:34:49');
INSERT INTO `goods_table` VALUES ('298', '乐仕堡椰林探险乐园', 'images/goods/14376440894.jpg', '乐仕堡椰林探险乐园的描述', '64.00', '49.00', '138384383', '323', '98', 'images/qrcode_test.jpg', '2015-07-23 17:34:49');
INSERT INTO `goods_table` VALUES ('299', '赫柏婚礼', 'images/goods/14376441320.jpg', '赫柏婚礼的描述', '92.00', '79.00', '138384383', '324', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:32');
INSERT INTO `goods_table` VALUES ('300', '芙洛拉花园（解放二路店）', 'images/goods/14376441321.jpg', '芙洛拉花园（解放二路店）的描述', '114.00', '99.00', '138384383', '325', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:32');
INSERT INTO `goods_table` VALUES ('301', '珍爱鲜花连锁（文明路店）', 'images/goods/14376441322.jpg', '珍爱鲜花连锁（文明路店）的描述', '116.00', '96.00', '138384383', '326', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:33');
INSERT INTO `goods_table` VALUES ('302', '中礼鲜花（海之恋鲜花店 ）', 'images/goods/14376441333.jpg', '中礼鲜花（海之恋鲜花店 ）的描述', '102.00', '79.00', '138384383', '327', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:34');
INSERT INTO `goods_table` VALUES ('303', '爱赏鲜花', 'images/goods/14376441344.jpg', '爱赏鲜花的描述', '22.00', '5.00', '138384383', '328', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:34');
INSERT INTO `goods_table` VALUES ('304', '惠馨花坊（和平街店）', 'images/goods/14376441345.jpg', '惠馨花坊（和平街店）的描述', '110.00', '88.00', '138384383', '329', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:34');
INSERT INTO `goods_table` VALUES ('305', '绿林仙踪', 'images/goods/14376441346.jpg', '绿林仙踪的描述', '111.00', '96.00', '138384383', '330', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:35');
INSERT INTO `goods_table` VALUES ('306', '红豆花艺（文明路店）', 'images/goods/14376441357.jpg', '红豆花艺（文明路店）的描述', '222.00', '198.00', '138384383', '331', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:35');
INSERT INTO `goods_table` VALUES ('307', '春色满园鲜花店', 'images/goods/14376441358.jpg', '春色满园鲜花店的描述', '109.00', '88.00', '138384383', '332', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:35');
INSERT INTO `goods_table` VALUES ('308', '绿韵花艺鲜花店（南国骏园店）', 'images/goods/14376441359.jpg', '绿韵花艺鲜花店（南国骏园店）的描述', '151.00', '135.00', '138384383', '333', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:36');
INSERT INTO `goods_table` VALUES ('309', '天韵花艺轩', 'images/goods/143764413610.jpg', '天韵花艺轩的描述', '383.00', '368.00', '138384383', '334', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:38');
INSERT INTO `goods_table` VALUES ('310', '云卉鲜花坊', 'images/goods/143764413811.jpg', '云卉鲜花坊的描述', '90.00', '68.00', '138384383', '335', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:41');
INSERT INTO `goods_table` VALUES ('311', '花开相爱（中心大道店）', 'images/goods/143764414112.jpg', '花开相爱（中心大道店）的描述', '151.00', '128.00', '138384383', '336', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:41');
INSERT INTO `goods_table` VALUES ('312', '爱上鲜花（文明路店）', 'images/goods/143764414213.jpg', '爱上鲜花（文明路店）的描述', '94.00', '79.00', '138384383', '337', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:42');
INSERT INTO `goods_table` VALUES ('313', '怡心鲜花批发坊（团结路店）', 'images/goods/143764414214.jpg', '怡心鲜花批发坊（团结路店）的描述', '89.00', '78.00', '138384383', '338', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:43');
INSERT INTO `goods_table` VALUES ('314', '我爱你花艺', 'images/goods/143764414315.jpg', '我爱你花艺的描述', '90.00', '78.00', '138384383', '339', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:43');
INSERT INTO `goods_table` VALUES ('315', '吾爱鲜花（心愿花屋店）', 'images/goods/143764414316.jpg', '吾爱鲜花（心愿花屋店）的描述', '107.00', '79.00', '138384383', '340', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:44');
INSERT INTO `goods_table` VALUES ('316', '瑞园花艺（认黎花店）', 'images/goods/143764414417.jpg', '瑞园花艺（认黎花店）的描述', '137.00', '127.00', '138384383', '341', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:44');
INSERT INTO `goods_table` VALUES ('317', '亲爱的店', 'images/goods/143764414418.jpg', '亲爱的店的描述', '155.00', '127.00', '138384383', '342', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:45');
INSERT INTO `goods_table` VALUES ('318', '情缘鲜花连锁店（親宜花屋）', 'images/goods/143764414519.jpg', '情缘鲜花连锁店（親宜花屋）的描述', '145.00', '125.00', '138384383', '343', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:45');
INSERT INTO `goods_table` VALUES ('319', '自然派高端花艺', 'images/goods/143764414520.jpg', '自然派高端花艺的描述', '18.00', '4.00', '138384383', '344', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:46');
INSERT INTO `goods_table` VALUES ('320', '心仪花坊（百卉花屋）', 'images/goods/143764414621.jpg', '心仪花坊（百卉花屋）的描述', '140.00', '119.00', '138384383', '345', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:46');
INSERT INTO `goods_table` VALUES ('321', '馨媛花店', 'images/goods/143764414622.jpg', '馨媛花店的描述', '102.00', '88.00', '138384383', '346', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:47');
INSERT INTO `goods_table` VALUES ('322', '云花鲜花（海之恋鲜花店）', 'images/goods/143764414723.jpg', '云花鲜花（海之恋鲜花店）的描述', '157.00', '139.00', '138384383', '347', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:47');
INSERT INTO `goods_table` VALUES ('323', '花艺生活馆', 'images/goods/143764414724.jpg', '花艺生活馆的描述', '34.00', '5.00', '138384383', '348', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:47');
INSERT INTO `goods_table` VALUES ('324', '难忘花朵', 'images/goods/143764414725.jpg', '难忘花朵的描述', '101.00', '86.00', '138384383', '349', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:48');
INSERT INTO `goods_table` VALUES ('325', '彬馨花园（城区花店）', 'images/goods/143764414826.jpg', '彬馨花园（城区花店）的描述', '85.00', '72.00', '138384383', '350', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:48');
INSERT INTO `goods_table` VALUES ('326', '勿忘我鲜花店（海之恋鲜花店）', 'images/goods/143764414827.jpg', '勿忘我鲜花店（海之恋鲜花店）的描述', '90.00', '79.00', '138384383', '351', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:49');
INSERT INTO `goods_table` VALUES ('327', '花样年华（南绣花店）', 'images/goods/143764414928.jpg', '花样年华（南绣花店）的描述', '105.00', '76.00', '138384383', '352', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:49');
INSERT INTO `goods_table` VALUES ('328', '乐爱花坊', 'images/goods/143764414929.jpg', '乐爱花坊的描述', '25.00', '12.00', '138384383', '353', '100', 'images/qrcode_test.jpg', '2015-07-23 17:35:49');
INSERT INTO `goods_table` VALUES ('329', '国艺堂（河西路店）', 'images/goods/14376445720.jpg', '国艺堂（河西路店）的描述', '71.00', '58.00', '138384383', '374', '52', 'images/qrcode_test.jpg', '2015-07-23 17:42:52');
INSERT INTO `goods_table` VALUES ('330', '富侨足疗按摩', 'images/goods/14376445721.jpg', '富侨足疗按摩的描述', '70.00', '55.00', '138384383', '375', '52', 'images/qrcode_test.jpg', '2015-07-23 17:42:52');
INSERT INTO `goods_table` VALUES ('331', '椰林滩大酒店SPA', 'images/goods/14376445722.jpg', '椰林滩大酒店SPA的描述', '182.00', '158.00', '138384383', '376', '120', 'images/qrcode_test.jpg', '2015-07-23 17:42:53');
INSERT INTO `goods_table` VALUES ('332', '贵足堂', 'images/goods/14376445733.jpg', '贵足堂的描述', '71.00', '58.00', '138384383', '377', '52', 'images/qrcode_test.jpg', '2015-07-23 17:42:53');
INSERT INTO `goods_table` VALUES ('333', '重庆富侨（三亚湾店）', 'images/goods/14376445734.jpg', '重庆富侨（三亚湾店）的描述', '56.00', '39.00', '138384383', '378', '52', 'images/qrcode_test.jpg', '2015-07-23 17:42:54');
INSERT INTO `goods_table` VALUES ('334', '海之梦美容美发', 'images/goods/14376445745.jpg', '海之梦美容美发的描述', '73.00', '45.00', '138384383', '379', '119', 'images/qrcode_test.jpg', '2015-07-23 17:42:54');
INSERT INTO `goods_table` VALUES ('335', '三亚国际饭店“源”养生休闲会馆', 'images/goods/14376445746.jpg', '三亚国际饭店“源”养生休闲会馆的描述', '161.00', '138.00', '138384383', '380', '120', 'images/qrcode_test.jpg', '2015-07-23 17:42:55');
INSERT INTO `goods_table` VALUES ('336', '木易百年自然养生馆（娇俏女人店）', 'images/goods/14376445757.jpg', '木易百年自然养生馆（娇俏女人店）的描述', '84.00', '68.00', '138384383', '381', '52', 'images/qrcode_test.jpg', '2015-07-23 17:42:55');
INSERT INTO `goods_table` VALUES ('337', '唯美度美容SPA会所', 'images/goods/14376445758.jpg', '唯美度美容SPA会所的描述', '94.00', '68.00', '138384383', '382', '120', 'images/qrcode_test.jpg', '2015-07-23 17:42:55');
INSERT INTO `goods_table` VALUES ('338', '天宝养生堂', 'images/goods/14376445759.jpg', '天宝养生堂的描述', '81.00', '66.00', '138384383', '383', '52', 'images/qrcode_test.jpg', '2015-07-23 17:42:56');
INSERT INTO `goods_table` VALUES ('339', '泰国圣荷国际美体美颜养生会所（三亚总店）', 'images/goods/143764457610.jpg', '泰国圣荷国际美体美颜养生会所（三亚总店）的描述', '90.00', '68.00', '138384383', '384', '120', 'images/qrcode_test.jpg', '2015-07-23 17:42:57');
INSERT INTO `goods_table` VALUES ('340', '金尊按摩养生', 'images/goods/143764457711.jpg', '金尊按摩养生的描述', '84.00', '68.00', '138384383', '385', '52', 'images/qrcode_test.jpg', '2015-07-23 17:42:57');
INSERT INTO `goods_table` VALUES ('341', '天泉养生堂', 'images/goods/143764457712.jpg', '天泉养生堂的描述', '60.00', '46.00', '138384383', '386', '52', 'images/qrcode_test.jpg', '2015-07-23 17:42:57');
INSERT INTO `goods_table` VALUES ('342', '天馨美根丝公馆康乐园', 'images/goods/143764457713.jpg', '天馨美根丝公馆康乐园的描述', '57.00', '39.00', '138384383', '387', '52', 'images/qrcode_test.jpg', '2015-07-23 17:42:58');
INSERT INTO `goods_table` VALUES ('343', '十二愿SPA空间（老机场路店）', 'images/goods/143764457814.jpg', '十二愿SPA空间（老机场路店）的描述', '78.00', '68.00', '138384383', '388', '120', 'images/qrcode_test.jpg', '2015-07-23 17:42:58');
INSERT INTO `goods_table` VALUES ('344', '首足富侨（中医理疗）', 'images/goods/143764457815.jpg', '首足富侨（中医理疗）的描述', '95.00', '68.00', '138384383', '389', '52', 'images/qrcode_test.jpg', '2015-07-23 17:42:58');
INSERT INTO `goods_table` VALUES ('345', '河南侯氏按摩', 'images/goods/143764457916.jpg', '河南侯氏按摩的描述', '29.00', '18.00', '138384383', '390', '52', 'images/qrcode_test.jpg', '2015-07-23 17:43:00');
INSERT INTO `goods_table` VALUES ('346', '誉肤堂', 'images/goods/143764458017.jpg', '誉肤堂的描述', '63.00', '38.00', '138384383', '391', '120', 'images/qrcode_test.jpg', '2015-07-23 17:43:00');
INSERT INTO `goods_table` VALUES ('347', '美根丝造型（总店）', 'images/goods/143764458018.jpg', '美根丝造型（总店）的描述', '60.00', '48.00', '138384383', '392', '119', 'images/qrcode_test.jpg', '2015-07-23 17:43:00');
INSERT INTO `goods_table` VALUES ('348', '水悦康SPA养生会所', 'images/goods/143764458019.jpg', '水悦康SPA养生会所的描述', '80.00', '68.00', '138384383', '393', '52', 'images/qrcode_test.jpg', '2015-07-23 17:43:01');
INSERT INTO `goods_table` VALUES ('349', '重庆富侨（胜利路贵宾店）', 'images/goods/143764458120.jpg', '重庆富侨（胜利路贵宾店）的描述', '91.00', '78.00', '138384383', '394', '52', 'images/qrcode_test.jpg', '2015-07-23 17:43:01');
INSERT INTO `goods_table` VALUES ('350', '砭石理疗中心', 'images/goods/143764458121.jpg', '砭石理疗中心的描述', '54.00', '38.00', '138384383', '395', '52', 'images/qrcode_test.jpg', '2015-07-23 17:43:02');
INSERT INTO `goods_table` VALUES ('351', '福源堂休闲会所', 'images/goods/143764458322.jpg', '福源堂休闲会所的描述', '87.00', '69.00', '138384383', '396', '52', 'images/qrcode_test.jpg', '2015-07-23 17:43:03');
INSERT INTO `goods_table` VALUES ('352', '重庆富侨（保亭店）', 'images/goods/143764458323.jpg', '重庆富侨（保亭店）的描述', '124.00', '96.00', '138384383', '397', '52', 'images/qrcode_test.jpg', '2015-07-23 17:43:04');
INSERT INTO `goods_table` VALUES ('353', '景山玉龙保健中心', 'images/goods/143764458424.jpg', '景山玉龙保健中心的描述', '125.00', '98.00', '138384383', '398', '120', 'images/qrcode_test.jpg', '2015-07-23 17:43:04');
INSERT INTO `goods_table` VALUES ('354', '丽康源盲人按摩', 'images/goods/143764458425.jpg', '丽康源盲人按摩的描述', '65.00', '45.00', '138384383', '399', '52', 'images/qrcode_test.jpg', '2015-07-23 17:43:04');
INSERT INTO `goods_table` VALUES ('355', '权健汗蒸天下养生馆', 'images/goods/143764458426.jpg', '权健汗蒸天下养生馆的描述', '98.00', '88.00', '138384383', '400', '120', 'images/qrcode_test.jpg', '2015-07-23 17:43:04');
INSERT INTO `goods_table` VALUES ('356', '太极养生中心', 'images/goods/143764458427.jpg', '太极养生中心的描述', '129.00', '112.00', '138384383', '401', '120', 'images/qrcode_test.jpg', '2015-07-23 17:43:05');
INSERT INTO `goods_table` VALUES ('357', '荟好美容美体机构', 'images/goods/143764458528.jpg', '荟好美容美体机构的描述', '97.00', '68.00', '138384383', '402', '120', 'images/qrcode_test.jpg', '2015-07-23 17:43:05');
INSERT INTO `goods_table` VALUES ('358', '韩蒸天下养生馆', 'images/goods/143764458529.jpg', '韩蒸天下养生馆的描述', '34.00', '18.00', '138384383', '403', '55', 'images/qrcode_test.jpg', '2015-07-23 17:43:06');
INSERT INTO `goods_table` VALUES ('359', '金玛萨国际美容美体（解放路店）', 'images/goods/143764458630.jpg', '金玛萨国际美容美体（解放路店）的描述', '90.00', '68.00', '138384383', '404', '120', 'images/qrcode_test.jpg', '2015-07-23 17:43:06');
INSERT INTO `goods_table` VALUES ('360', '姣丽美容养生会所（商品街店）', 'images/goods/143764458631.jpg', '姣丽美容养生会所（商品街店）的描述', '44.00', '29.00', '138384383', '405', '120', 'images/qrcode_test.jpg', '2015-07-23 17:43:06');
INSERT INTO `goods_table` VALUES ('361', '立业台球', 'images/goods/14376446911.jpg', '立业台球的描述', '28.00', '14.00', '138384383', '407', '59', 'images/qrcode_test.jpg', '2015-07-23 17:44:51');
INSERT INTO `goods_table` VALUES ('362', '三亚海岛风情旅行社有限公司', 'images/goods/14376446924.jpg', '三亚海岛风情旅行社有限公司的描述', '96.00', '80.00', '138384383', '410', '88', 'images/qrcode_test.jpg', '2015-07-23 17:44:52');
INSERT INTO `goods_table` VALUES ('363', '世纪宝迪健身会所（三亚店）', 'images/goods/14376446925.jpg', '世纪宝迪健身会所（三亚店）的描述', '14.00', '1.00', '138384383', '411', '122', 'images/qrcode_test.jpg', '2015-07-23 17:44:53');
INSERT INTO `goods_table` VALUES ('364', '吉成健美（明珠广场旗舰店）', 'images/goods/14376446947.jpg', '吉成健美（明珠广场旗舰店）的描述', '324.00', '300.00', '138384383', '413', '122', 'images/qrcode_test.jpg', '2015-07-23 17:44:54');
INSERT INTO `goods_table` VALUES ('365', 'D8台球俱乐部', 'images/goods/14376446949.jpg', 'D8台球俱乐部的描述', '39.00', '15.00', '138384383', '415', '61', 'images/qrcode_test.jpg', '2015-07-23 17:44:55');
INSERT INTO `goods_table` VALUES ('366', '三亚太阳湾海洋运动有限公司', 'images/goods/143764469510.jpg', '三亚太阳湾海洋运动有限公司的描述', '210.00', '198.00', '138384383', '416', '56', 'images/qrcode_test.jpg', '2015-07-23 17:44:55');
INSERT INTO `goods_table` VALUES ('367', '百乐国际潜水', 'images/goods/143764469511.jpg', '百乐国际潜水的描述', '93.00', '80.00', '138384383', '417', '88', 'images/qrcode_test.jpg', '2015-07-23 17:44:55');
INSERT INTO `goods_table` VALUES ('368', '一念瑜伽', 'images/goods/143764469512.jpg', '一念瑜伽的描述', '38.00', '8.00', '138384383', '418', '122', 'images/qrcode_test.jpg', '2015-07-23 17:44:55');
INSERT INTO `goods_table` VALUES ('369', '纯粹瑜伽（金鸡岭店）', 'images/goods/143764469613.jpg', '纯粹瑜伽（金鸡岭店）的描述', '32.00', '8.00', '138384383', '419', '122', 'images/qrcode_test.jpg', '2015-07-23 17:44:56');
INSERT INTO `goods_table` VALUES ('370', '三亚乐程旅业有限公司', 'images/goods/143764469614.jpg', '三亚乐程旅业有限公司的描述', '182.00', '168.00', '138384383', '420', '88', 'images/qrcode_test.jpg', '2015-07-23 17:44:56');
INSERT INTO `goods_table` VALUES ('371', '民间旅行社', 'images/goods/143764469615.jpg', '民间旅行社的描述', '245.00', '216.00', '138384383', '421', '88', 'images/qrcode_test.jpg', '2015-07-23 17:44:57');
INSERT INTO `goods_table` VALUES ('372', '汇融海景酒店游泳池', 'images/goods/143764469717.jpg', '汇融海景酒店游泳池的描述', '32.00', '9.00', '138384383', '423', '70', 'images/qrcode_test.jpg', '2015-07-23 17:44:57');
INSERT INTO `goods_table` VALUES ('373', '金维健身（鹿回头广场店）', 'images/goods/143764469819.jpg', '金维健身（鹿回头广场店）的描述', '113.00', '99.00', '138384383', '425', '122', 'images/qrcode_test.jpg', '2015-07-23 17:44:58');
INSERT INTO `goods_table` VALUES ('374', '澜瑜伽', 'images/goods/143764469820.jpg', '澜瑜伽的描述', '36.00', '10.00', '138384383', '426', '122', 'images/qrcode_test.jpg', '2015-07-23 17:44:58');
INSERT INTO `goods_table` VALUES ('375', '安纳塔拉度假酒店流水泳池吧', 'images/goods/143764469924.jpg', '安纳塔拉度假酒店流水泳池吧的描述', '220.00', '200.00', '138384383', '430', '56', 'images/qrcode_test.jpg', '2015-07-23 17:44:59');
INSERT INTO `goods_table` VALUES ('376', '球力量台球音乐烧烤清吧', 'images/goods/143764470025.jpg', '球力量台球音乐烧烤清吧的描述', '95.00', '68.00', '138384383', '431', '15', 'images/qrcode_test.jpg', '2015-07-23 17:45:00');
INSERT INTO `goods_table` VALUES ('377', '若那瑜伽（JnanaYoga）', 'images/goods/143764470129.jpg', '若那瑜伽（JnanaYoga）的描述', '29.00', '9.00', '138384383', '435', '122', 'images/qrcode_test.jpg', '2015-07-23 17:45:02');
INSERT INTO `goods_table` VALUES ('378', '同发酒店（温泉游泳池）', 'images/goods/143764470231.jpg', '同发酒店（温泉游泳池）的描述', '36.00', '9.00', '138384383', '437', '56', 'images/qrcode_test.jpg', '2015-07-23 17:45:02');

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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='街道';

-- ----------------------------
-- Records of streets_table
-- ----------------------------
INSERT INTO `streets_table` VALUES ('1', '河西区', '1');
INSERT INTO `streets_table` VALUES ('2', '吉阳镇', '1');
INSERT INTO `streets_table` VALUES ('4', '海棠湾镇', '1');
INSERT INTO `streets_table` VALUES ('5', '凤凰镇', '1');
INSERT INTO `streets_table` VALUES ('6', '崖城镇', '1');
INSERT INTO `streets_table` VALUES ('7', '天涯镇', '1');
INSERT INTO `streets_table` VALUES ('8', '育才镇', '1');
INSERT INTO `streets_table` VALUES ('9', '河东区', '1');
INSERT INTO `streets_table` VALUES ('10', '解放路', '1');
INSERT INTO `streets_table` VALUES ('11', '第一市场', '1');
INSERT INTO `streets_table` VALUES ('12', '海棠湾国家海岸旅游区', '1');
INSERT INTO `streets_table` VALUES ('13', '亚龙湾百花谷', '1');
INSERT INTO `streets_table` VALUES ('14', '商品街', '1');
INSERT INTO `streets_table` VALUES ('15', '丹州小区', '1');
INSERT INTO `streets_table` VALUES ('16', '三亚', '1');
INSERT INTO `streets_table` VALUES ('17', '大东海渡假区', '1');
INSERT INTO `streets_table` VALUES ('18', '分界洲岛', '1');
INSERT INTO `streets_table` VALUES ('19', '三亚湾', '1');
INSERT INTO `streets_table` VALUES ('20', '亚龙湾度假区', '1');
INSERT INTO `streets_table` VALUES ('21', '春园海鲜广场', '1');
INSERT INTO `streets_table` VALUES ('22', '酒吧一条街', '1');
INSERT INTO `streets_table` VALUES ('23', '海棠湾区', '1');
INSERT INTO `streets_table` VALUES ('24', '明珠广场', '1');
INSERT INTO `streets_table` VALUES ('25', '海韵广场', '1');
INSERT INTO `streets_table` VALUES ('26', '陵水县', '1');
INSERT INTO `streets_table` VALUES ('27', '海坡度假区', '1');
INSERT INTO `streets_table` VALUES ('28', '多区域', '1');
INSERT INTO `streets_table` VALUES ('29', '凤凰机场', '1');
INSERT INTO `streets_table` VALUES ('30', '包邮', '1');
INSERT INTO `streets_table` VALUES ('31', '荔枝沟', '1');
INSERT INTO `streets_table` VALUES ('32', '三亚出发', '1');
INSERT INTO `streets_table` VALUES ('33', '其它', '1');
INSERT INTO `streets_table` VALUES ('34', '金鸡岭', '1');
INSERT INTO `streets_table` VALUES ('35', '渔人码头', '1');
INSERT INTO `streets_table` VALUES ('36', '河西路', '1');
INSERT INTO `streets_table` VALUES ('37', '友谊路海鲜', '1');
INSERT INTO `streets_table` VALUES ('38', '步行街', '1');
INSERT INTO `streets_table` VALUES ('39', '月川社区', '1');
INSERT INTO `streets_table` VALUES ('40', '文化路', '1');
INSERT INTO `streets_table` VALUES ('41', '万宁市', '1');
INSERT INTO `streets_table` VALUES ('42', '鹿回头', '1');
INSERT INTO `streets_table` VALUES ('43', '三亚湾红树林', '1');
INSERT INTO `streets_table` VALUES ('44', '南边海', '1');
INSERT INTO `streets_table` VALUES ('45', '吉阳', '1');
INSERT INTO `streets_table` VALUES ('46', '吉阳大道', '1');
INSERT INTO `streets_table` VALUES ('47', '1人评价', '1');
INSERT INTO `streets_table` VALUES ('48', '下洋田', '1');
INSERT INTO `streets_table` VALUES ('49', '12人评价', '1');
INSERT INTO `streets_table` VALUES ('50', '国际购物中心', '1');
INSERT INTO `streets_table` VALUES ('51', '乐东县', '1');
INSERT INTO `streets_table` VALUES ('52', '864人评价', '1');
INSERT INTO `streets_table` VALUES ('53', '8404人评价', '1');
INSERT INTO `streets_table` VALUES ('54', '1482人评价', '1');
INSERT INTO `streets_table` VALUES ('55', '7971人评价', '1');
INSERT INTO `streets_table` VALUES ('56', '2435人评价', '1');
INSERT INTO `streets_table` VALUES ('57', '45人评价', '1');
INSERT INTO `streets_table` VALUES ('58', '998人评价', '1');
INSERT INTO `streets_table` VALUES ('59', '2348人评价', '1');
INSERT INTO `streets_table` VALUES ('60', '64人评价', '1');
INSERT INTO `streets_table` VALUES ('61', '1385人评价', '1');
INSERT INTO `streets_table` VALUES ('62', '1557人评价', '1');
INSERT INTO `streets_table` VALUES ('63', '1568人评价', '1');
INSERT INTO `streets_table` VALUES ('64', '953人评价', '1');
INSERT INTO `streets_table` VALUES ('65', '58人评价', '1');
INSERT INTO `streets_table` VALUES ('66', '1000人评价', '1');
INSERT INTO `streets_table` VALUES ('67', '516人评价', '1');
INSERT INTO `streets_table` VALUES ('68', '5人评价', '1');
INSERT INTO `streets_table` VALUES ('69', '111人评价', '1');
INSERT INTO `streets_table` VALUES ('70', '30人评价', '1');
INSERT INTO `streets_table` VALUES ('71', '', '1');
INSERT INTO `streets_table` VALUES ('72', '保亭县', '1');
INSERT INTO `streets_table` VALUES ('73', '134人评价', '1');
INSERT INTO `streets_table` VALUES ('74', '32人评价', '1');
INSERT INTO `streets_table` VALUES ('75', '204人评价', '1');
INSERT INTO `streets_table` VALUES ('76', '57人评价', '1');
INSERT INTO `streets_table` VALUES ('77', '77人评价', '1');
INSERT INTO `streets_table` VALUES ('78', '211人评价', '1');
INSERT INTO `streets_table` VALUES ('79', '611人评价', '1');
INSERT INTO `streets_table` VALUES ('80', '200人评价', '1');
INSERT INTO `streets_table` VALUES ('81', '38人评价', '1');
INSERT INTO `streets_table` VALUES ('82', '49人评价', '1');
INSERT INTO `streets_table` VALUES ('83', '3人评价', '1');
INSERT INTO `streets_table` VALUES ('84', '兴隆', '1');
