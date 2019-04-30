/*
Navicat MariaDB Data Transfer

Source Server         : liuyanqi
Source Server Version : 50560
Source Host           : 188.131.174.115:3306
Source Database       : desgin

Target Server Type    : MariaDB
Target Server Version : 50560
File Encoding         : 65001

Date: 2019-04-30 11:41:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '猫鼠寓');
INSERT INTO `category` VALUES ('2', '业主直租');
INSERT INTO `category` VALUES ('3', '整租');
INSERT INTO `category` VALUES ('4', '合租');

-- ----------------------------
-- Table structure for order_
-- ----------------------------
DROP TABLE IF EXISTS `order_`;
CREATE TABLE `order_` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderCode` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `userMessage` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `payDate` datetime DEFAULT NULL,
  `deliveryDate` datetime DEFAULT NULL,
  `confirmDate` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_
-- ----------------------------
INSERT INTO `order_` VALUES ('1', '201904292029169583817', '', '', '', '', '', '2019-04-29 20:29:16', '2019-04-29 20:29:22', null, null, '1', 'delete');
INSERT INTO `order_` VALUES ('2', '201904292030350873179', '', '', '', '', '', '2019-04-29 20:30:35', '2019-04-29 20:30:42', '2019-04-29 20:56:34', '2019-04-29 20:57:03', '1', 'finish');
INSERT INTO `order_` VALUES ('3', '201904292111503526924', '', '', '', '', '', '2019-04-29 21:11:50', '2019-04-29 21:14:58', null, null, '1', 'waitDelivery');
INSERT INTO `order_` VALUES ('4', '20190429212020995342', '', '', '', '', '', '2019-04-29 21:20:20', '2019-04-29 21:20:25', null, null, '1', 'waitDelivery');
INSERT INTO `order_` VALUES ('5', '201904292139396813400', '', '', '', '', '', '2019-04-29 21:39:39', '2019-04-29 21:39:54', null, null, '1', 'waitDelivery');
INSERT INTO `order_` VALUES ('6', '201904292153552411090', '', '', '', '', '', '2019-04-29 21:53:55', '2019-04-29 21:54:04', null, null, '1', 'waitDelivery');
INSERT INTO `order_` VALUES ('7', '201904292201410995909', '', '', '', '', '', '2019-04-29 22:01:41', '2019-04-29 22:01:45', null, null, '1', 'waitDelivery');

-- ----------------------------
-- Table structure for orderItem
-- ----------------------------
DROP TABLE IF EXISTS `orderItem`;
CREATE TABLE `orderItem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orderitem_user` (`uid`),
  KEY `fk_orderitem_product` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderItem
-- ----------------------------
INSERT INTO `orderItem` VALUES ('1', '5', '2', '1', '2');
INSERT INTO `orderItem` VALUES ('2', '4', '3', '1', '1');
INSERT INTO `orderItem` VALUES ('3', '4', '4', '1', '2');
INSERT INTO `orderItem` VALUES ('4', '5', '5', '1', '2');
INSERT INTO `orderItem` VALUES ('5', '3', '6', '1', '3');
INSERT INTO `orderItem` VALUES ('6', '2', '7', '1', '1');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `subTitle` varchar(255) DEFAULT NULL,
  `originalPrice` float DEFAULT NULL,
  `promotePrice` float DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '中信泰富又一城3居室-03卧', '嘉定 嘉定新城', '1960', '1000', '12', '4', '2019-04-29 19:41:49');
INSERT INTO `product` VALUES ('2', '中信泰富又一城3居室-03卧', '嘉定 嘉定新城', '1000', '1000', '12', '4', '2019-04-29 19:42:19');
INSERT INTO `product` VALUES ('3', '中信泰富又一城3居室-03卧', '嘉定 嘉定新城', '1960', '1000', '12', '4', '2019-04-29 19:43:49');
INSERT INTO `product` VALUES ('4', '路劲上海派2居室', '嘉定 安亭', '3390', '2000', '12', '3', '2019-04-29 20:07:22');
INSERT INTO `product` VALUES ('5', '妙栏小区3居室-01卧', '浦东 川沙', '1930', '1000', '12', '3', '2019-04-29 20:08:32');
INSERT INTO `product` VALUES ('6', '塔城路800弄2居室 ', '嘉定 嘉定老城 ', '3260', '1600', '12', '3', '2019-04-30 10:32:35');
INSERT INTO `product` VALUES ('7', '鸿基公寓3居室 ', '浦东 川沙', '5050', '2500', '12', '3', '2019-04-30 10:33:45');
INSERT INTO `product` VALUES ('8', '北九峰小区2居室', '松江 松江老城 ', '3360', '1600', '12', '3', '2019-04-30 10:34:46');
INSERT INTO `product` VALUES ('9', '金汇花园一街坊4居室-01卧', '闵行 金汇', '3290', '1600', '12', '4', '2019-04-30 10:42:06');
INSERT INTO `product` VALUES ('10', '瑞和城叁街区(汇臻路815弄)3居室-03卧', '闵行 浦江', '1490', '800', '12', '4', '2019-04-30 10:42:56');
INSERT INTO `product` VALUES ('11', '虹一小区2居室', '长宁 虹桥 ', '6390', '2000', '12', '2', '2019-04-30 10:46:16');
INSERT INTO `product` VALUES ('12', '安东小区1居室', '长宁 新华路', '4960', '2000', '12', '2', '2019-04-30 10:47:19');
INSERT INTO `product` VALUES ('13', '柿子湾小区2居室 ', '徐汇 徐家汇 ', '6180', '2000', '12', '2', '2019-04-30 10:47:46');
INSERT INTO `product` VALUES ('14', '柿子湾小区2居室 ', '徐汇 徐家汇 ', '6180', '2000', '12', '2', '2019-04-30 10:47:46');
INSERT INTO `product` VALUES ('15', '柿子湾小区2居室 ', '徐汇 徐家汇 ', '6180', '2000', '12', '2', '2019-04-30 10:47:46');
INSERT INTO `product` VALUES ('16', '上海长寿路拾光公寓', '上海市普陀区长寿路', '5500', '0', '12', '1', '2019-04-30 11:15:42');
INSERT INTO `product` VALUES ('17', '上海长寿路拾光公寓', '上海市普陀区长寿路', '5500', '0', '12', '1', '2019-04-30 11:15:42');
INSERT INTO `product` VALUES ('18', '上海长寿路拾光公寓', '上海市普陀区长寿路', '5500', '0', '12', '1', '2019-04-30 11:15:42');
INSERT INTO `product` VALUES ('19', '上海长寿路拾光公寓', '上海市普陀区长寿路', '5500', '0', '12', '1', '2019-04-30 11:15:42');
INSERT INTO `product` VALUES ('20', '上海长寿路拾光公寓', '上海市普陀区长寿路', '5500', '0', '12', '1', '2019-04-30 11:15:42');

-- ----------------------------
-- Table structure for productImage
-- ----------------------------
DROP TABLE IF EXISTS `productImage`;
CREATE TABLE `productImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_productimage_product` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of productImage
-- ----------------------------
INSERT INTO `productImage` VALUES ('1', '3', 'single');
INSERT INTO `productImage` VALUES ('2', '3', 'single');
INSERT INTO `productImage` VALUES ('3', '3', 'single');
INSERT INTO `productImage` VALUES ('4', '3', 'detail');
INSERT INTO `productImage` VALUES ('5', '3', 'detail');
INSERT INTO `productImage` VALUES ('6', '3', 'detail');
INSERT INTO `productImage` VALUES ('7', '3', 'detail');
INSERT INTO `productImage` VALUES ('8', '2', 'single');
INSERT INTO `productImage` VALUES ('9', '2', 'single');
INSERT INTO `productImage` VALUES ('10', '2', 'detail');
INSERT INTO `productImage` VALUES ('11', '2', 'detail');
INSERT INTO `productImage` VALUES ('12', '2', 'detail');
INSERT INTO `productImage` VALUES ('13', '1', 'single');
INSERT INTO `productImage` VALUES ('14', '1', 'single');
INSERT INTO `productImage` VALUES ('15', '1', 'detail');
INSERT INTO `productImage` VALUES ('16', '1', 'detail');
INSERT INTO `productImage` VALUES ('17', '1', 'detail');
INSERT INTO `productImage` VALUES ('18', '1', 'detail');
INSERT INTO `productImage` VALUES ('19', '5', 'single');
INSERT INTO `productImage` VALUES ('20', '5', 'single');
INSERT INTO `productImage` VALUES ('21', '5', 'detail');
INSERT INTO `productImage` VALUES ('22', '5', 'detail');
INSERT INTO `productImage` VALUES ('23', '5', 'detail');
INSERT INTO `productImage` VALUES ('24', '4', 'single');
INSERT INTO `productImage` VALUES ('25', '4', 'single');
INSERT INTO `productImage` VALUES ('26', '4', 'detail');
INSERT INTO `productImage` VALUES ('27', '4', 'detail');
INSERT INTO `productImage` VALUES ('28', '4', 'detail');

-- ----------------------------
-- Table structure for property
-- ----------------------------
DROP TABLE IF EXISTS `property`;
CREATE TABLE `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_property_category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of property
-- ----------------------------
INSERT INTO `property` VALUES ('1', '4', '面积');
INSERT INTO `property` VALUES ('2', '4', '朝向');
INSERT INTO `property` VALUES ('3', '4', '户型');
INSERT INTO `property` VALUES ('4', '4', '楼层');
INSERT INTO `property` VALUES ('5', '4', '交通');
INSERT INTO `property` VALUES ('6', '3', '面积');
INSERT INTO `property` VALUES ('7', '3', '朝向');
INSERT INTO `property` VALUES ('8', '3', '户型');
INSERT INTO `property` VALUES ('9', '3', '楼层');
INSERT INTO `property` VALUES ('10', '3', '交通');
INSERT INTO `property` VALUES ('11', '2', '面积');
INSERT INTO `property` VALUES ('12', '2', '朝向');
INSERT INTO `property` VALUES ('13', '2', '户型');
INSERT INTO `property` VALUES ('14', '2', '楼层');
INSERT INTO `property` VALUES ('15', '2', '交通');
INSERT INTO `property` VALUES ('16', '1', '面积');
INSERT INTO `property` VALUES ('17', '1', '朝向');
INSERT INTO `property` VALUES ('18', '1', '户型');
INSERT INTO `property` VALUES ('19', '1', '楼层');
INSERT INTO `property` VALUES ('20', '1', '交通');

-- ----------------------------
-- Table structure for propertyvalue
-- ----------------------------
DROP TABLE IF EXISTS `propertyvalue`;
CREATE TABLE `propertyvalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `ptid` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_propertyvalue_property` (`ptid`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of propertyvalue
-- ----------------------------
INSERT INTO `propertyvalue` VALUES ('1', '3', '1', '12.8');
INSERT INTO `propertyvalue` VALUES ('2', '3', '2', '南');
INSERT INTO `propertyvalue` VALUES ('3', '3', '3', '3室1厅');
INSERT INTO `propertyvalue` VALUES ('4', '3', '4', ' 02/6层');
INSERT INTO `propertyvalue` VALUES ('5', '3', '5', '距11号线三林东243米');
INSERT INTO `propertyvalue` VALUES ('6', '2', '1', '12.8');
INSERT INTO `propertyvalue` VALUES ('7', '2', '2', '南');
INSERT INTO `propertyvalue` VALUES ('8', '2', '3', '三室一厅');
INSERT INTO `propertyvalue` VALUES ('9', '2', '4', '02/6层');
INSERT INTO `propertyvalue` VALUES ('10', '2', '5', '距11号线三林东243米');
INSERT INTO `propertyvalue` VALUES ('11', '1', '1', '12.35');
INSERT INTO `propertyvalue` VALUES ('12', '1', '2', '南');
INSERT INTO `propertyvalue` VALUES ('13', '1', '3', '3室1厅 ');
INSERT INTO `propertyvalue` VALUES ('14', '1', '4', '16/37层');
INSERT INTO `propertyvalue` VALUES ('15', '1', '5', ' 距11号线嘉定新城1793米');
INSERT INTO `propertyvalue` VALUES ('16', '4', '6', ' 49.31');
INSERT INTO `propertyvalue` VALUES ('17', '4', '7', '南');
INSERT INTO `propertyvalue` VALUES ('18', '4', '8', ' 2室1厅');
INSERT INTO `propertyvalue` VALUES ('19', '4', '9', '06/6层');
INSERT INTO `propertyvalue` VALUES ('20', '4', '10', ' 距9号线松江体育中心229米');
INSERT INTO `propertyvalue` VALUES ('21', '5', '6', ' 49.31');
INSERT INTO `propertyvalue` VALUES ('22', '5', '7', '南');
INSERT INTO `propertyvalue` VALUES ('23', '5', '8', ' 2室1厅');
INSERT INTO `propertyvalue` VALUES ('24', '5', '9', '06/6层');
INSERT INTO `propertyvalue` VALUES ('25', '5', '10', ' 距9号线松江体育中心229米');
INSERT INTO `propertyvalue` VALUES ('26', '6', '6', ' 49.31');
INSERT INTO `propertyvalue` VALUES ('27', '6', '7', '南');
INSERT INTO `propertyvalue` VALUES ('28', '6', '8', ' 2室1厅');
INSERT INTO `propertyvalue` VALUES ('29', '6', '9', '06/6层');
INSERT INTO `propertyvalue` VALUES ('30', '6', '10', ' 距9号线松江体育中心229米');
INSERT INTO `propertyvalue` VALUES ('31', '7', '6', ' 49.31');
INSERT INTO `propertyvalue` VALUES ('32', '7', '7', '南');
INSERT INTO `propertyvalue` VALUES ('33', '7', '8', ' 2室1厅');
INSERT INTO `propertyvalue` VALUES ('34', '7', '9', '07/7层');
INSERT INTO `propertyvalue` VALUES ('35', '7', '10', ' 距9号线松江体育中心229米');
INSERT INTO `propertyvalue` VALUES ('36', '8', '6', ' 49.31');
INSERT INTO `propertyvalue` VALUES ('37', '8', '7', '南');
INSERT INTO `propertyvalue` VALUES ('38', '8', '8', ' 2室1厅');
INSERT INTO `propertyvalue` VALUES ('39', '8', '9', '08/8层');
INSERT INTO `propertyvalue` VALUES ('40', '8', '10', ' 距9号线松江体育中心229米');
INSERT INTO `propertyvalue` VALUES ('41', '9', '1', '  14.9');
INSERT INTO `propertyvalue` VALUES ('42', '9', '2', '南');
INSERT INTO `propertyvalue` VALUES ('43', '9', '3', ' 2室1厅');
INSERT INTO `propertyvalue` VALUES ('44', '9', '4', '08/8层');
INSERT INTO `propertyvalue` VALUES ('45', '9', '5', ' 距9号线松江体育中心229米');
INSERT INTO `propertyvalue` VALUES ('46', '10', '1', '  14.10');
INSERT INTO `propertyvalue` VALUES ('47', '10', '2', '南');
INSERT INTO `propertyvalue` VALUES ('48', '10', '3', ' 2室1厅');
INSERT INTO `propertyvalue` VALUES ('49', '10', '4', '08/8层');
INSERT INTO `propertyvalue` VALUES ('50', '10', '5', ' 距10号线松江体育中心2210米');
INSERT INTO `propertyvalue` VALUES ('51', '11', '11', '  14.10');
INSERT INTO `propertyvalue` VALUES ('52', '11', '12', '南');
INSERT INTO `propertyvalue` VALUES ('53', '11', '13', ' 2室1厅');
INSERT INTO `propertyvalue` VALUES ('54', '11', '14', '08/8层');
INSERT INTO `propertyvalue` VALUES ('55', '11', '15', ' 距10号线松江体育中心2210米');
INSERT INTO `propertyvalue` VALUES ('56', '12', '11', '  14.10');
INSERT INTO `propertyvalue` VALUES ('57', '12', '12', '南');
INSERT INTO `propertyvalue` VALUES ('58', '12', '13', ' 2室1厅');
INSERT INTO `propertyvalue` VALUES ('59', '12', '14', '08/8层');
INSERT INTO `propertyvalue` VALUES ('60', '12', '15', ' 距10号线松江体育中心2210米');
INSERT INTO `propertyvalue` VALUES ('61', '13', '11', '  14.10');
INSERT INTO `propertyvalue` VALUES ('62', '13', '12', '南');
INSERT INTO `propertyvalue` VALUES ('63', '13', '13', ' 2室1厅');
INSERT INTO `propertyvalue` VALUES ('64', '13', '14', '08/8层');
INSERT INTO `propertyvalue` VALUES ('65', '13', '15', ' 距10号线松江体育中心2210米');
INSERT INTO `propertyvalue` VALUES ('66', '14', '11', '  14.10');
INSERT INTO `propertyvalue` VALUES ('67', '14', '12', '南');
INSERT INTO `propertyvalue` VALUES ('68', '14', '13', ' 2室1厅');
INSERT INTO `propertyvalue` VALUES ('69', '14', '14', '08/8层');
INSERT INTO `propertyvalue` VALUES ('70', '14', '15', ' 距10号线松江体育中心2210米');
INSERT INTO `propertyvalue` VALUES ('71', '15', '11', '  14.10');
INSERT INTO `propertyvalue` VALUES ('72', '15', '12', '南');
INSERT INTO `propertyvalue` VALUES ('73', '15', '13', ' 2室1厅');
INSERT INTO `propertyvalue` VALUES ('74', '15', '14', '08/8层');
INSERT INTO `propertyvalue` VALUES ('75', '15', '15', ' 距10号线松江体育中心2210米');
INSERT INTO `propertyvalue` VALUES ('76', '16', '16', '15.30');
INSERT INTO `propertyvalue` VALUES ('77', '16', '17', '南');
INSERT INTO `propertyvalue` VALUES ('78', '16', '18', ' 1室1卫');
INSERT INTO `propertyvalue` VALUES ('79', '16', '19', '08/8层');
INSERT INTO `propertyvalue` VALUES ('80', '16', '20', ' 距10号线松江体育中心2210米');
INSERT INTO `propertyvalue` VALUES ('81', '17', '16', '15.30');
INSERT INTO `propertyvalue` VALUES ('82', '17', '17', '南');
INSERT INTO `propertyvalue` VALUES ('83', '17', '18', ' 1室1卫');
INSERT INTO `propertyvalue` VALUES ('84', '17', '19', '08/8层');
INSERT INTO `propertyvalue` VALUES ('85', '17', '20', ' 距10号线松江体育中心2210米');
INSERT INTO `propertyvalue` VALUES ('86', '18', '16', '15.30');
INSERT INTO `propertyvalue` VALUES ('87', '18', '17', '南');
INSERT INTO `propertyvalue` VALUES ('88', '18', '18', ' 1室1卫');
INSERT INTO `propertyvalue` VALUES ('89', '18', '19', '08/8层');
INSERT INTO `propertyvalue` VALUES ('90', '18', '20', ' 距10号线松江体育中心2210米');
INSERT INTO `propertyvalue` VALUES ('91', '19', '16', '15.30');
INSERT INTO `propertyvalue` VALUES ('92', '19', '17', '南');
INSERT INTO `propertyvalue` VALUES ('93', '19', '18', ' 1室1卫');
INSERT INTO `propertyvalue` VALUES ('94', '19', '19', '08/8层');
INSERT INTO `propertyvalue` VALUES ('95', '19', '20', ' 距10号线松江体育中心2210米');
INSERT INTO `propertyvalue` VALUES ('96', '20', '16', '15.30');
INSERT INTO `propertyvalue` VALUES ('97', '20', '17', '南');
INSERT INTO `propertyvalue` VALUES ('98', '20', '18', ' 1室1卫');
INSERT INTO `propertyvalue` VALUES ('99', '20', '19', '08/8层');
INSERT INTO `propertyvalue` VALUES ('100', '20', '20', ' 距10号线松江体育中心2210米');

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(4000) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_review_product` (`pid`),
  KEY `fk_review_user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES ('1', 'hao', '1', '5', '2019-04-29 22:08:33');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'liuyanqi', '611406ef5c8e43000a916a0f3a99e200', 'qeTMRiJpf1J9hLy3bJbu/w==');
