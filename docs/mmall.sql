/*
 Navicat MySQL Data Transfer

 Source Server         : tx-centos
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : tx-centos:3306
 Source Schema         : mmall

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 28/08/2021 16:14:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost` float(11,0) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productId` (`product_id`),
  KEY `userId` (`user_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_id` int(11) NOT NULL COMMENT '订单主键',
  `product_id` int(11) NOT NULL COMMENT '商品主键',
  `quantity` int(11) NOT NULL COMMENT '数量',
  `cost` float NOT NULL COMMENT '消费',
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK__EASYBUY___66E1BD8E2F10007B` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '用户主键',
  `login_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `user_address` varchar(255) DEFAULT NULL COMMENT '用户地址',
  `cost` float DEFAULT NULL COMMENT '总金额',
  `serialnumber` varchar(255) DEFAULT NULL COMMENT '订单号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `description` varchar(1024) DEFAULT NULL COMMENT '描述',
  `price` float NOT NULL COMMENT '价格',
  `stock` int(11) NOT NULL COMMENT '库存',
  `categorylevelone_id` int(11) DEFAULT NULL COMMENT '分类1',
  `categoryleveltwo_id` int(11) DEFAULT NULL COMMENT '分类2',
  `categorylevelthree_id` int(11) DEFAULT NULL COMMENT '分类3',
  `file_name` varchar(200) DEFAULT NULL COMMENT '文件名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK__EASYBUY___94F6E55132E0915F` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=777 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
BEGIN;
INSERT INTO `product` VALUES (733, '香奈儿', '订单', 152, 7, 548, 654, 655, 'baby_1.jpg');
INSERT INTO `product` VALUES (734, '洗面奶', '', 152, 997, 548, 654, 655, 'baby_2.jpg');
INSERT INTO `product` VALUES (735, '水啫喱水', '', 152, 997, 548, 654, 655, 'baby_3.jpg');
INSERT INTO `product` VALUES (736, '香水', '', 152, 1000, 548, 654, 655, 'baby_4.jpg');
INSERT INTO `product` VALUES (737, '香水', '', 152, 111, 548, 654, 655, 'baby_5.jpg');
INSERT INTO `product` VALUES (738, '润肤露', '', 45, 109, 548, 654, 655, 'baby_6.jpg');
INSERT INTO `product` VALUES (739, '洁面装', '', 156, 99, 548, 654, 655, 'bk_2.jpg');
INSERT INTO `product` VALUES (740, '电饭锅', '', 158, 93, 628, 656, 659, 'bk_1.jpg');
INSERT INTO `product` VALUES (741, '婴儿喂奶装', '', 569, 100, 632, 637, 653, 'bk_3.jpg');
INSERT INTO `product` VALUES (742, '坚果套餐', '', 158, 996, 660, 661, 662, 'bk_4.jpg');
INSERT INTO `product` VALUES (743, '超甜蜜崭', '', 589, 994, 660, 661, 663, 'bk_5.jpg');
INSERT INTO `product` VALUES (744, '华为2566', '', 589, 997, 670, 671, 672, 'de1.jpg');
INSERT INTO `product` VALUES (745, '荣耀3C', '', 589, 98, 670, 671, 672, 'de2.jpg');
INSERT INTO `product` VALUES (746, '小米手环', '', 963, 100, 670, 674, 675, 'de3.jpg');
INSERT INTO `product` VALUES (747, '华为2265', '', 896, 1000, 670, 671, 673, 'de4.jpg');
INSERT INTO `product` VALUES (748, '越南坚果', '', 520, 100, 660, 661, 662, 'de5.jpg');
INSERT INTO `product` VALUES (749, '日本进口马桶', '', 5866, 98, 628, 657, 0, 'food_1.jpg');
INSERT INTO `product` VALUES (750, '联想Y系列', '', 569, 1000, 670, 690, 691, 'food_2.jpg');
INSERT INTO `product` VALUES (751, '脑白金1号', '', 589, 1000, 676, 677, 680, 'food_3.jpg');
INSERT INTO `product` VALUES (752, '莫里斯按', '', 589, 1000, 676, 678, 0, 'food_4.jpg');
INSERT INTO `product` VALUES (753, '三鹿好奶粉', '', 859, 99, 676, 679, 0, 'food_5.jpg');
INSERT INTO `product` VALUES (754, '儿童牛奶', '', 5896, 100, 676, 679, 0, 'food_6.jpg');
INSERT INTO `product` VALUES (755, '软沙发', '', 8596, 99, 628, 696, 0, 'food_b1.jpg');
INSERT INTO `product` VALUES (756, '收纳盒', '', 5966, 100, 628, 696, 0, 'food_b2.jpg');
INSERT INTO `product` VALUES (757, '洗衣液', '', 58, 1000, 628, 696, 0, 'food_r.jpg');
INSERT INTO `product` VALUES (758, '红短沙发', '', 596, 123, 628, 696, 0, 'fre_1.jpg');
INSERT INTO `product` VALUES (759, '新西兰奶粉', '', 5896, 100, 676, 679, 0, 'fre_2.jpg');
INSERT INTO `product` VALUES (760, '婴儿车', '', 11000, 100, 681, 682, 687, 'fre_3.jpg');
INSERT INTO `product` VALUES (761, '夏款婴儿车', '', 963, 100, 681, 682, 688, 'fre_4.jpg');
INSERT INTO `product` VALUES (762, '抗压旅行箱', '', 569, 1000, 681, 683, 685, 'fre_5.jpg');
INSERT INTO `product` VALUES (763, '透明手提箱', '', 8596, 1000, 681, 683, 684, 'fre_6.jpg');
INSERT INTO `product` VALUES (764, '婴儿果粉', '', 5896, 1000, 660, 661, 662, 'milk_1.jpg');
INSERT INTO `product` VALUES (765, '椰子粉', '', 5963, 1000, 660, 661, 662, 'milk_2.jpg');
INSERT INTO `product` VALUES (766, '坚果蛋糕', '', 200, 999, 660, 661, 663, 'milk_3.jpg');
INSERT INTO `product` VALUES (767, '编制手提箱', '', 5896, 1000, 681, 682, 688, 'milk_4.jpg');
INSERT INTO `product` VALUES (768, '纸箱', '', 5896, 100, 681, 682, 687, 'milk_5.jpg');
INSERT INTO `product` VALUES (769, '健胃液', '', 152, 1000, 676, 679, 0, 'milk_6.jpg');
INSERT INTO `product` VALUES (770, '联想NTC', '', 8596, 100, 670, 671, 673, 'milk_7.jpg');
INSERT INTO `product` VALUES (771, '香水1', NULL, 100, 100, 548, 654, 655, 'milk_8.jpg');
INSERT INTO `product` VALUES (772, '香水2', NULL, 100, 100, 548, 654, 655, 'pro1.jpg');
INSERT INTO `product` VALUES (773, '香水3', NULL, 100, 100, 548, 654, 655, 'pro2.jpg');
INSERT INTO `product` VALUES (774, '香水4', NULL, 100, 100, 548, 654, 655, 'pro3.jpg');
INSERT INTO `product` VALUES (775, '香水5', NULL, 100, 100, 548, 654, 655, 'pro4.jpg');
INSERT INTO `product` VALUES (776, '香水6', NULL, 1, 1, 548, 654, 655, 'pro5.jpg');
COMMIT;

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `parent_id` int(11) NOT NULL COMMENT '父级目录id',
  `type` int(11) DEFAULT NULL COMMENT '级别(1:一级 2：二级 3：三级)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK__EASYBUY___9EC2A4E236B12243` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=697 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_category
-- ----------------------------
BEGIN;
INSERT INTO `product_category` VALUES (548, '化妆品', 0, 1);
INSERT INTO `product_category` VALUES (628, '家用商品', 0, 1);
INSERT INTO `product_category` VALUES (654, '面部护理', 548, 2);
INSERT INTO `product_category` VALUES (655, '少女派', 654, 3);
INSERT INTO `product_category` VALUES (656, '餐具', 628, 2);
INSERT INTO `product_category` VALUES (657, '卫具', 628, 2);
INSERT INTO `product_category` VALUES (658, '叉子', 656, 3);
INSERT INTO `product_category` VALUES (659, '锅', 656, 3);
INSERT INTO `product_category` VALUES (660, '进口食品', 0, 1);
INSERT INTO `product_category` VALUES (661, '零食/糖果/巧克力', 660, 2);
INSERT INTO `product_category` VALUES (662, '坚果', 661, 3);
INSERT INTO `product_category` VALUES (663, '蜜饯', 661, 3);
INSERT INTO `product_category` VALUES (669, '孕期教育', 546, 3);
INSERT INTO `product_category` VALUES (670, '电子商品', 0, 1);
INSERT INTO `product_category` VALUES (671, '手机', 670, 2);
INSERT INTO `product_category` VALUES (672, '华为手机', 671, 3);
INSERT INTO `product_category` VALUES (673, '联想手机', 671, 3);
INSERT INTO `product_category` VALUES (674, '手环', 670, 2);
INSERT INTO `product_category` VALUES (675, '小米手环', 674, 3);
INSERT INTO `product_category` VALUES (676, '保健食品', 0, 1);
INSERT INTO `product_category` VALUES (677, '老年保健品', 676, 2);
INSERT INTO `product_category` VALUES (678, '中年营养品', 676, 2);
INSERT INTO `product_category` VALUES (679, '儿童保健品', 676, 2);
INSERT INTO `product_category` VALUES (680, '脑白金', 677, 3);
INSERT INTO `product_category` VALUES (681, '箱包', 0, 1);
INSERT INTO `product_category` VALUES (682, '旅行箱', 681, 2);
INSERT INTO `product_category` VALUES (683, '手提箱', 681, 2);
INSERT INTO `product_category` VALUES (684, '大型', 683, 3);
INSERT INTO `product_category` VALUES (685, '小型', 683, 3);
INSERT INTO `product_category` VALUES (686, '中型', 683, 3);
INSERT INTO `product_category` VALUES (687, '大型', 682, 3);
INSERT INTO `product_category` VALUES (688, '中型', 682, 3);
INSERT INTO `product_category` VALUES (689, '小型', 682, 3);
INSERT INTO `product_category` VALUES (690, '电脑', 670, 2);
INSERT INTO `product_category` VALUES (691, '联想电脑', 690, 3);
INSERT INTO `product_category` VALUES (692, '刀叉', 656, 3);
INSERT INTO `product_category` VALUES (693, '碗筷', 656, 3);
INSERT INTO `product_category` VALUES (696, '客厅专用', 628, 2);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `login_name` varchar(255) NOT NULL COMMENT '登录名',
  `user_name` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `gender` int(11) NOT NULL DEFAULT '1' COMMENT '性别(1:男 0：女)',
  `identity_code` varchar(60) DEFAULT NULL COMMENT '身份证号',
  `email` varchar(80) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机',
  `file_name` varchar(255) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK__EASYBUY___C96109CC3A81B327` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (2, 'admin', '系统管理员', '123123', 0, '130406198302141869', 'hello11@bdqn.com', '1583233515', '7.jpg', '2020-05-18 06:22:27', '2020-05-18 06:22:32');
INSERT INTO `user` VALUES (10, 'cgn', '程广宁', '123', 1, '140225189987854589', '1044732267@qq.com', '13366055011', '2.jpg', '2020-05-18 06:22:34', '2020-05-18 06:22:37');
INSERT INTO `user` VALUES (11, 'hyl', '韩语良', '1231', 1, '140225198874584539', '1044732267@qq.com', '13366055010', '3.jpg', '2020-05-18 06:22:35', '2020-05-18 06:22:37');
INSERT INTO `user` VALUES (12, 'ck', '陈康', '123', 1, '140225189987854589', '1044732267@qq.com', '13366055010', '4.jpg', '2020-05-18 06:22:36', '2020-05-18 06:22:38');
COMMIT;

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户主键',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `isdefault` int(11) DEFAULT '0' COMMENT '是否是默认地址（1:是 0否）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_address
-- ----------------------------
BEGIN;
INSERT INTO `user_address` VALUES (11, 10, '北京市海淀区大有庄', '朋友家', 0, '2019-06-03 02:32:39', '2021-02-16 22:17:00');
INSERT INTO `user_address` VALUES (12, 2, '北京市海淀区大有庄', '女朋友公司', 0, '2019-06-03 02:32:38', '2021-03-08 21:38:26');
INSERT INTO `user_address` VALUES (13, 23, '北京市西直门大桥芬兰国际大厦', '女朋友地址', 1, '2019-06-03 02:32:37', '2021-02-16 22:17:09');
INSERT INTO `user_address` VALUES (14, 23, '北京市花园路小区', '家里', 0, '2019-06-03 02:32:33', '2021-02-16 22:17:13');
INSERT INTO `user_address` VALUES (34, 10, '小寨西路', '学校', 0, '2019-05-30 20:21:32', '2021-02-16 22:17:18');
INSERT INTO `user_address` VALUES (35, 10, '软件园', '公司', 1, '2019-06-02 20:06:41', '2021-02-16 22:17:22');
INSERT INTO `user_address` VALUES (37, 23, '小寨西路', '学校', 0, '2019-06-20 23:26:46', '2021-02-16 22:17:26');
INSERT INTO `user_address` VALUES (41, 28, '软件园', '公司', 1, '2019-06-21 03:03:37', '2021-02-16 22:17:30');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
