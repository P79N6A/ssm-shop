/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : 127.0.0.1:3306
Source Database       : manong

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2019-04-15 15:24:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `category_id` smallint(5) NOT NULL COMMENT '分类id',
  `name` varchar(25) NOT NULL COMMENT '商品名称',
  `image` varchar(135) NOT NULL COMMENT '商品主图',
  `maket_price` decimal(10,0) NOT NULL COMMENT '市场价格',
  `price` decimal(10,0) NOT NULL COMMENT '原价',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1：上架 0：下架',
  `description` varchar(2048) NOT NULL COMMENT '商品描述',
  `product_number` varchar(25) NOT NULL COMMENT '商品编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='商品';

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('2', '19', '我爱java', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '500000', '33300', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', '4234234');
INSERT INTO `product` VALUES ('3', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('4', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('5', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('6', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('7', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('8', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('9', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('10', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('11', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('12', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('13', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('14', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('15', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('16', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('17', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('18', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('19', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('20', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('21', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('22', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('23', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('24', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('25', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('26', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');
INSERT INTO `product` VALUES ('27', '19', '我爱java01', 'group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg', '5555', '4444', '1', '<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>', 'asdasd');

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(25) NOT NULL COMMENT '分类名称',
  `sorderorder` smallint(5) NOT NULL DEFAULT '999' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0:不删除 1:删除',
  `parent_id` smallint(5) NOT NULL DEFAULT '0' COMMENT '父级的id （0就代表是父级）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='商品分类表';

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO `product_category` VALUES ('9', 'java se', '999', '0', '0');
INSERT INTO `product_category` VALUES ('10', 'java ee', '999', '0', '0');
INSERT INTO `product_category` VALUES ('17', '从入门到放弃', '999', '0', '9');
INSERT INTO `product_category` VALUES ('18', '从放弃到坚持', '999', '0', '9');
INSERT INTO `product_category` VALUES ('19', '从坚持到牛逼', '999', '0', '9');
INSERT INTO `product_category` VALUES ('20', 'java cool', '999', '0', '10');
INSERT INTO `product_category` VALUES ('21', 'java 666', '999', '0', '10');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'wistbean');
