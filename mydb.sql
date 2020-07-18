/*
Navicat MySQL Data Transfer

Source Server         : MYSQL
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : mydb

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-06-08 17:04:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for log_table
-- ----------------------------
DROP TABLE IF EXISTS `log_table`;
CREATE TABLE `log_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `operate` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `operateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of log_table
-- ----------------------------
INSERT INTO `log_table` VALUES ('1', 'ring', '用户登录', '2020-06-02 17:57:06');
INSERT INTO `log_table` VALUES ('2', 'admin', '用户登录', '2020-06-08 16:18:31');
INSERT INTO `log_table` VALUES ('4', 'admin', '删除用户', '2020-06-08 16:33:28');
INSERT INTO `log_table` VALUES ('5', 'admin', '查询用户列表', '2020-06-08 16:33:28');
INSERT INTO `log_table` VALUES ('6', 'tony', '用户登录', '2020-06-08 16:36:40');
INSERT INTO `log_table` VALUES ('7', 'tony', '查询用户列表', '2020-06-08 16:36:42');
INSERT INTO `log_table` VALUES ('9', 'tony', '查询用户列表', '2020-06-08 16:39:08');
INSERT INTO `log_table` VALUES ('12', 'poppy', '用户登录', '2020-06-08 16:41:46');
INSERT INTO `log_table` VALUES ('14', 'yoyo', '用户登录', '2020-06-08 16:44:06');
INSERT INTO `log_table` VALUES ('15', 'yoyo', '查询用户列表', '2020-06-08 16:44:08');
INSERT INTO `log_table` VALUES ('16', 'yoyo', '用户登录', '2020-06-08 16:45:53');
INSERT INTO `log_table` VALUES ('17', 'yoyo', '查询用户列表', '2020-06-08 16:45:54');
INSERT INTO `log_table` VALUES ('18', 'admin', '用户登录', '2020-06-08 16:51:16');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户ID 自动增长',
  `username` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户姓名 不能为空',
  `password` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int NOT NULL COMMENT '用户年龄 不能为空',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户地址',
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户性别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'poppy', '111111', '25', '四川', '女');
INSERT INTO `tb_user` VALUES ('2', 'ring', '222222', '24', '北京', '男');
INSERT INTO `tb_user` VALUES ('7', '黑诗歌', '333444', '18', '美国', '男');
INSERT INTO `tb_user` VALUES ('9', 'admin', 'admin', '32', '黑龙江', '女');
INSERT INTO `tb_user` VALUES ('10', '芊芊', 'qianqian', '18', '东北', '女');
INSERT INTO `tb_user` VALUES ('15', 'Test修改1', 'Test', '19', '宜宾', '男');
INSERT INTO `tb_user` VALUES ('17', 'Test123', 'Test123', '19', '台湾', '男');
INSERT INTO `tb_user` VALUES ('21', 'tony', 'tony111', '15', '蒙古', '男');
INSERT INTO `tb_user` VALUES ('22', 'yoyo', 'yoyo123', '23', '海南', '男');

-- ----------------------------
-- Table structure for user_table
-- ----------------------------
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_table
-- ----------------------------
INSERT INTO `user_table` VALUES ('1', 'Liu', '123');
INSERT INTO `user_table` VALUES ('2', 'Wang', '111111');
