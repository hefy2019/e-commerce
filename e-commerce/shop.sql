/*
Navicat MySQL Data Transfer

Source Server         : mo
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2019-07-08 18:07:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ausertable
-- ----------------------------
DROP TABLE IF EXISTS `ausertable`;
CREATE TABLE `ausertable` (
  `aname` varchar(50) NOT NULL,
  `apwd` varchar(50) NOT NULL,
  PRIMARY KEY (`aname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ausertable
-- ----------------------------
INSERT INTO `ausertable` VALUES ('admin', 'admin');

-- ----------------------------
-- Table structure for busertable
-- ----------------------------
DROP TABLE IF EXISTS `busertable`;
CREATE TABLE `busertable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bemail` varchar(50) NOT NULL,
  `bpwd` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of busertable
-- ----------------------------
INSERT INTO `busertable` VALUES ('1', '123456@qq.com', '123456');
INSERT INTO `busertable` VALUES ('2', '282971962@qq.com', 'yUaN0424.');

-- ----------------------------
-- Table structure for carttable
-- ----------------------------
DROP TABLE IF EXISTS `carttable`;
CREATE TABLE `carttable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `busertable_id` int(11) NOT NULL,
  `goodstable_id` int(11) NOT NULL,
  `shoppingnum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carttable
-- ----------------------------

-- ----------------------------
-- Table structure for focustable
-- ----------------------------
DROP TABLE IF EXISTS `focustable`;
CREATE TABLE `focustable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodstable_id` int(11) NOT NULL,
  `busertable_id` int(11) NOT NULL,
  `focustime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of focustable
-- ----------------------------
INSERT INTO `focustable` VALUES ('1', '6', '1', '2019-06-26 22:10:56');
INSERT INTO `focustable` VALUES ('2', '1', '1', '2019-06-26 22:12:07');
INSERT INTO `focustable` VALUES ('3', '1', '2', '2019-06-26 22:18:05');
INSERT INTO `focustable` VALUES ('4', '6', '2', '2019-06-26 22:18:14');

-- ----------------------------
-- Table structure for goodstable
-- ----------------------------
DROP TABLE IF EXISTS `goodstable`;
CREATE TABLE `goodstable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(50) NOT NULL,
  `goprice` double(10,2) NOT NULL,
  `grprice` double(10,2) NOT NULL,
  `gstore` int(11) NOT NULL,
  `gpicture` varchar(50) DEFAULT NULL,
  `goodstype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodstable
-- ----------------------------
INSERT INTO `goodstable` VALUES ('1', '女神新款', '1000.00', '888.00', '-5', '20190626205621574.jpg', '8');
INSERT INTO `goodstable` VALUES ('2', '连衣裙', '108.00', '78.00', '100', '20190626213811877.webp', '8');
INSERT INTO `goodstable` VALUES ('3', '2019年夏季棉麻新款衬衫款开叉', '158.00', '128.00', '100', '20190626214159679.webp', '8');
INSERT INTO `goodstable` VALUES ('4', '2019蠢装新款复古气质中长款系带收腰七分袖', '178.00', '158.00', '100', '20190626214424299.webp', '8');
INSERT INTO `goodstable` VALUES ('5', '2019夏新款法国小众衬衫鱼尾连衣裙', '158.00', '108.00', '98', '20190626214601863.webp', '8');
INSERT INTO `goodstable` VALUES ('6', '2019夏装新款韩版排扣收腰显瘦气质连衣裙', '178.00', '128.00', '120', '20190626214839361.webp', '8');
INSERT INTO `goodstable` VALUES ('7', '牛仔背带裙女2019夏季新款女装两件套裙子套装裙连衣裙潮', '219.00', '159.00', '119', '20190626215521662.jpg', '8');
INSERT INTO `goodstable` VALUES ('8', '2019夏新款荷叶边小个子碎花雪纺连衣裙小清新短款修身系带仙女裙', '143.00', '120.00', '100', '20190626215757825.jpg', '8');
INSERT INTO `goodstable` VALUES ('9', '狗活幼体哈士奇宠物狗狗纯种二哈幼犬真狗大型2哈金毛犬真的小狗', '1688.00', '1388.00', '7', '20190626220028548.jpg', '6');
INSERT INTO `goodstable` VALUES ('10', '哈士奇幼崽 宠物狗活体二哈纯种幼犬 狗狗家养小型犬雪橇犬狗狗', '1588.00', '1358.00', '5', '20190626220154314.jpg', '6');
INSERT INTO `goodstable` VALUES ('11', '纯种萨摩耶狗狗 萨摩耶犬 萨摩幼犬活体', '900.00', '788.00', '9', '20190626220338139.jpg', '6');
INSERT INTO `goodstable` VALUES ('12', '纯种阿拉斯加幼崽', '900.00', '788.00', '4', '20190626220517830.jpg', '6');
INSERT INTO `goodstable` VALUES ('13', '平板电脑', '5500.00', '4988.00', '7', '20190626220934807.jpg', '7');

-- ----------------------------
-- Table structure for goodstype
-- ----------------------------
DROP TABLE IF EXISTS `goodstype`;
CREATE TABLE `goodstype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodstype
-- ----------------------------
INSERT INTO `goodstype` VALUES ('6', '宠物');
INSERT INTO `goodstype` VALUES ('7', '电子产品');
INSERT INTO `goodstype` VALUES ('8', '时尚女装');

-- ----------------------------
-- Table structure for noticetable
-- ----------------------------
DROP TABLE IF EXISTS `noticetable`;
CREATE TABLE `noticetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ntitle` varchar(100) NOT NULL,
  `ncontent` varchar(500) NOT NULL,
  `ntime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of noticetable
-- ----------------------------
INSERT INTO `noticetable` VALUES ('1', '2019女神的样子', '回头率百分百的女神装扮', '2019-06-26 21:51:09');

-- ----------------------------
-- Table structure for orderbasetable
-- ----------------------------
DROP TABLE IF EXISTS `orderbasetable`;
CREATE TABLE `orderbasetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `busertable_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `status` tinyint(4) NOT NULL,
  `orderdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderbasetable
-- ----------------------------
INSERT INTO `orderbasetable` VALUES ('1', '1', '24084', '1', '2019-06-26 22:12:51');
INSERT INTO `orderbasetable` VALUES ('2', '2', '5776', '1', '2019-06-26 22:19:11');
INSERT INTO `orderbasetable` VALUES ('3', '2', '159', '0', '2019-06-27 22:21:09');
INSERT INTO `orderbasetable` VALUES ('4', '2', '0', '1', '2019-06-27 22:21:32');

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderbasetable_id` int(11) NOT NULL,
  `goodstable_id` int(11) NOT NULL,
  `shoppingnum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('1', '1', '13', '2');
INSERT INTO `orderdetail` VALUES ('2', '1', '12', '1');
INSERT INTO `orderdetail` VALUES ('3', '1', '1', '15');
INSERT INTO `orderdetail` VALUES ('4', '2', '13', '1');
INSERT INTO `orderdetail` VALUES ('5', '2', '11', '1');
INSERT INTO `orderdetail` VALUES ('7', '3', '7', '1');
