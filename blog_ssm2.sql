/*
Navicat MySQL Data Transfer

Source Server         : LOCAHOST
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : blog_ssm2

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-06-29 17:11:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adm
-- ----------------------------
DROP TABLE IF EXISTS `adm`;
CREATE TABLE `adm` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `pass` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adm
-- ----------------------------
INSERT INTO `adm` VALUES ('1', 'admin', 'admin');
INSERT INTO `adm` VALUES ('2', 'abc', 'abc');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL DEFAULT '0',
  `userId` int NOT NULL DEFAULT '0',
  `sysCategoryId` int NOT NULL DEFAULT '0',
  `categoryId` int NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `summary` mediumtext NOT NULL,
  `publishTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isTop` bit(1) NOT NULL DEFAULT b'0',
  `isDelete` bit(1) NOT NULL DEFAULT b'0',
  `count` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_artical` (`userId`),
  KEY `fk_scategory` (`sysCategoryId`),
  KEY `fc_category` (`categoryId`),
  CONSTRAINT `fc_category` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`),
  CONSTRAINT `fk_artical` FOREIGN KEY (`userId`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_scategory` FOREIGN KEY (`sysCategoryId`) REFERENCES `syscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('40', 'MVC', '4', '2', '1', 'CXXVXFBTD', 'VFBXBXNB', '2020-05-05 18:19:43', '\0', '\0', '15');
INSERT INTO `article` VALUES ('44', 'MYBATIS', '4', '5', '1', 'CFGRDTN', 'VFBXXGN', '2020-04-28 16:03:17', '\0', '\0', '4');
INSERT INTO `article` VALUES ('60', 'javascript', '2', '5', '1', 'fvvgfb', 'dfbghnmhc', '2020-04-07 20:44:54', '\0', '\0', '8');
INSERT INTO `article` VALUES ('67', 'C语言', '1', '1', '1', 'dddddddddddddddd', 'ddddddd', '2020-04-22 19:35:51', '\0', '', '3');
INSERT INTO `article` VALUES ('71', 'Java', '1', '1', '1', 'dddddddddddddd', 'dddddddd', '2020-04-17 19:47:09', '\0', '', '70');
INSERT INTO `article` VALUES ('93', 'php', '1', '1', '3', '	                    0000000000\r\n	                    ', '	                    0000000\r\n	                    ', '2020-05-15 09:26:43', '\0', '', '0');
INSERT INTO `article` VALUES ('94', 'jsp', '1', '1', '3', '	                    0000000000\r\n	                    ', '	                    0000000\r\n	                    ', '2020-05-08 09:28:19', '\0', '', '0');
INSERT INTO `article` VALUES ('95', 'bootstarp', '1', '1', '3', '	                    0000000000\r\n	                    ', '	                    0000000\r\n	                    ', '2020-05-13 09:30:29', '\0', '', '0');
INSERT INTO `article` VALUES ('96', '33333333333', '1', '1', '3', '	                    0000000000\r\n	                    ', '	                    0000000\r\n	                    ', '2020-06-10 09:37:05', '\0', '', '1');
INSERT INTO `article` VALUES ('97', 'spring MVC', '1', '4', '12', '', '	                    	                    Spring MVC属于SpringFrameWork的后续产品，已经融合在Spring Web Flow里面。Spring 框架提供了构建 Web 应用程序的全功能 MVC 模块。使用 Spring 可插入的 MVC 架构，从而在使用Spring进行WEB开发时，可以选择使用Spring的SpringMVC框架或集成其他MVC开发框架，如Struts1(现在一般不用)，Struts2(一般老项目使用)等。	   \r\n通过策略接口，Spring 框架是高度可配置的，而且包含多种视图技术，例如 JavaServer Pages（JSP）技术、Velocity、Tiles、iText和POI。Spring MVC 框架并不知道使用的视图，所以不会强迫开发者只使用 JSP 技术。Spring MVC 分离了控制器、模型对象、过滤器以及处理程序对象的角色，这种分离让它们更容易进行定制。                 	                    f\r\n	                    \r\n	                    \r\n	                    \r\n	                    ', '2020-06-10 11:08:06', '\0', '', '121');
INSERT INTO `article` VALUES ('100', 'MySQL', '5', '5', '12', '夫人根本', '等等v放不下不', '2020-06-10 11:08:06', '\0', '\0', '8');
INSERT INTO `article` VALUES ('102', 'MyBatis', '1', '5', '3', '德法尔', '法国和身体如何', '2020-06-10 11:08:06', '\0', '', '102');
INSERT INTO `article` VALUES ('103', 'Spring', '1', '5', '3', '周润发', '分布广泛吸纳', '2020-06-10 11:08:06', '\0', '', '239');
INSERT INTO `article` VALUES ('104', 'Bootstrap', '2', '5', '1', '的各种辅导班', 'v想不想你和他说', '2020-06-10 11:08:06', '\0', '\0', '21');
INSERT INTO `article` VALUES ('105', 'Spring Boot', '1', '5', '3', '而是在官方', '分公司v方法', '2020-06-10 11:08:06', '\0', '', '27');
INSERT INTO `article` VALUES ('108', '好好学习', '1', '1', '3', '	                    \r\n	      土土土土土土土土土ff              ', '得肺癌', '2020-06-10 11:08:06', '\0', '', '7');
INSERT INTO `article` VALUES ('109', 'LayUI', '1', '2', '58', '	                    内容	                    \r\n	                    \r\n	                    ', '	                    摘要	                    \r\n	                    \r\n	                    ', '2020-06-10 11:08:06', '\0', '', '5');
INSERT INTO `article` VALUES ('110', '新文章', '1', '2', '60', '内容	                    \r\n	                    ', '摘要	                    \r\n	                    ', '2020-06-10 11:08:06', '\0', '', '1');
INSERT INTO `article` VALUES ('111', 'testrrrr', '1', '2', '3', '	                    \r\n	                    dwdwdw', '	                    \r\n	                    wweerf', '2020-06-28 07:50:36', '\0', '\0', '15');
INSERT INTO `article` VALUES ('112', '鱼鱼', '29', '1', '63', '	                    	                    \r\n	                急急急蒋介石    哈哈哈\r\n	                    ', '	                    	                    \r\n	    永远永远                \r\n	                    ', '2020-06-28 14:39:54', '\0', '\0', '2');
INSERT INTO `article` VALUES ('113', 'eerr', '29', '2', '63', '	                    \r\n	                急急急蒋介石    ', '	                    \r\n	    永远永远                ', '2020-06-28 14:40:20', '\0', '\0', '5');
INSERT INTO `article` VALUES ('114', '失忆', '1', '5', '62', '	                    \r\n	          明月几时有，把酒问青天          ', '	        不曾忘记你            \r\n	                    ', '2020-06-29 10:40:30', '\0', '\0', '4');
INSERT INTO `article` VALUES ('115', 'test111', '9', '1', '1', '	                    \r\n	                    4433发v发vv', '	                    \r\n	      332222              ', '2020-06-29 14:08:43', '\0', '\0', '1');
INSERT INTO `article` VALUES ('116', '发表博文测试版', '1', '4', '1', '	                    \r\n	       Spring +Spring MVC+Mybatis部署maven项目', '	                    \r\n	                 测试一下，可还行！  ', '2020-06-29 15:50:56', '\0', '\0', '2');

-- ----------------------------
-- Table structure for blog_info
-- ----------------------------
DROP TABLE IF EXISTS `blog_info`;
CREATE TABLE `blog_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL DEFAULT '0',
  `blogName` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `description` text,
  `annoucement` mediumtext,
  PRIMARY KEY (`id`),
  KEY `fk_bloginfo` (`userId`),
  CONSTRAINT `fk_bloginfo` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_info
-- ----------------------------
INSERT INTO `blog_info` VALUES ('7', '1', '星辰变', ' 好好学习', '07878\r\n实现加薪');
INSERT INTO `blog_info` VALUES ('8', '28', '都落萧自', '暴风雨前的宁静', '努力冲吧');
INSERT INTO `blog_info` VALUES ('9', '3', '余锡玉', '不曾旺季', '愿得一心人');
INSERT INTO `blog_info` VALUES ('12', '4', '月至山手', '失误', '书中黄金屋');
INSERT INTO `blog_info` VALUES ('35', '5', '源码小崽', '技术好的我', '买车买房天天快乐');
INSERT INTO `blog_info` VALUES ('36', '32', '芝士蛋糕', '描述', '好吃哦');
INSERT INTO `blog_info` VALUES ('37', '33', '名称', '描述', '公告');
INSERT INTO `blog_info` VALUES ('38', '35', '测试', '申请博客', '申请成功，敲开心');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL DEFAULT '0',
  `categoryName` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `articles` int NOT NULL DEFAULT '0',
  `isDelete` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `fk_category` (`userId`),
  CONSTRAINT `fk_category` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '1', 'Spring', '8', '');
INSERT INTO `category` VALUES ('3', '1', 'java', '10', '');
INSERT INTO `category` VALUES ('12', '1', 'Mysql', '2', '');
INSERT INTO `category` VALUES ('58', '1', 'Bootstrap', '1', '');
INSERT INTO `category` VALUES ('59', '1', 'python', '0', '');
INSERT INTO `category` VALUES ('60', '1', 'C++', '1', '');
INSERT INTO `category` VALUES ('61', '1', 'Mybatis', '0', '');
INSERT INTO `category` VALUES ('62', '1', 'Jsp', '1', '\0');
INSERT INTO `category` VALUES ('63', '29', 'html', '2', '\0');
INSERT INTO `category` VALUES ('64', '1', '生活1', '0', '\0');
INSERT INTO `category` VALUES ('65', '1', '测试版', '0', '\0');

-- ----------------------------
-- Table structure for com
-- ----------------------------
DROP TABLE IF EXISTS `com`;
CREATE TABLE `com` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL DEFAULT '0',
  `articalId` int NOT NULL DEFAULT '0',
  `content` varchar(128) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDelete` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `fk_comment1` (`userId`),
  KEY `fk_comment2` (`articalId`),
  CONSTRAINT `fk_comment1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_comment2` FOREIGN KEY (`articalId`) REFERENCES `article` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com
-- ----------------------------
INSERT INTO `com` VALUES ('40', '1', '40', '值得一看', '2020-04-16 12:50:34', '\0');
INSERT INTO `com` VALUES ('44', '1', '40', '强烈推荐', '2020-05-06 10:46:01', '\0');
INSERT INTO `com` VALUES ('45', '1', '67', '博主真666', '2020-05-06 14:22:12', '\0');
INSERT INTO `com` VALUES ('59', '1', '103', '学到了', '2020-06-10 10:13:44', '\0');
INSERT INTO `com` VALUES ('60', '1', '103', '博主厉害', '2020-06-11 10:15:44', '\0');
INSERT INTO `com` VALUES ('61', '1', '105', '评论加转发，双击666', '2020-06-06 10:20:43', '\0');
INSERT INTO `com` VALUES ('62', '2', '105', '评论加转发，双击666', '2020-09-02 10:21:13', '\0');
INSERT INTO `com` VALUES ('63', '1', '108', '不虚此行', '2020-05-20 19:25:21', '\0');
INSERT INTO `com` VALUES ('64', '2', '108', '差得很', '2020-05-28 19:59:46', '\0');
INSERT INTO `com` VALUES ('65', '2', '108', '全是混子', '2020-04-27 20:01:07', '\0');
INSERT INTO `com` VALUES ('66', '1', '109', '有源码吗', '2020-05-06 20:07:33', '\0');
INSERT INTO `com` VALUES ('67', '1', '109', '6666666666666666', '2020-04-29 20:11:02', '\0');
INSERT INTO `com` VALUES ('68', '1', '97', '学习使我快乐', '2020-05-06 20:35:31', '\0');
INSERT INTO `com` VALUES ('71', '1', '105', '666\r\n', '2020-04-15 20:46:54', '\0');
INSERT INTO `com` VALUES ('72', '1', '111', 'hello  good', '2020-05-13 07:51:43', '\0');
INSERT INTO `com` VALUES ('73', '29', '111', '加油哦', '2020-06-28 14:36:00', '\0');
INSERT INTO `com` VALUES ('74', '1', '111', '有问题问我就行', '2020-06-29 10:39:38', '\0');
INSERT INTO `com` VALUES ('75', '29', '114', '诗情画意', '2020-06-29 10:43:46', '\0');
INSERT INTO `com` VALUES ('76', '1', '113', '不可小觑哟！博主这篇博文真66667', '2020-06-29 15:52:44', '\0');

-- ----------------------------
-- Table structure for counter
-- ----------------------------
DROP TABLE IF EXISTS `counter`;
CREATE TABLE `counter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of counter
-- ----------------------------
INSERT INTO `counter` VALUES ('1', '672');

-- ----------------------------
-- Table structure for girl
-- ----------------------------
DROP TABLE IF EXISTS `girl`;
CREATE TABLE `girl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of girl
-- ----------------------------
INSERT INTO `girl` VALUES ('1', '99999');
INSERT INTO `girl` VALUES ('2', '/9.jsp');
INSERT INTO `girl` VALUES ('3', '/images/ec574667a7734432b2f64562f6b6cf48.jpeg');
INSERT INTO `girl` VALUES ('4', '/images/611f25fc40284cd0ba2460c86e5feb1b.jpeg');
INSERT INTO `girl` VALUES ('5', '/images/fca5e140c13745dda169f2d5809c1918.jpeg');
INSERT INTO `girl` VALUES ('6', '/images/60d992200d0e43b9b477103e77091c80.jpeg');
INSERT INTO `girl` VALUES ('7', '/images/08396da1c9b346cf8d5e047c2d1ed6fa.jpeg');
INSERT INTO `girl` VALUES ('8', '/images/27e4315d577f40948aae8d3d14bc749c.jpeg');
INSERT INTO `girl` VALUES ('9', '/images/75403829610c41fc85b06f4d54590f40.jpeg');
INSERT INTO `girl` VALUES ('10', '/images/2b401994a4c84dcdaaac0d5e8b234d20.jpeg');
INSERT INTO `girl` VALUES ('11', '/images/bd740b61dee04b5b8fb229b75443b1f2.jpeg');
INSERT INTO `girl` VALUES ('12', '/images/6639933de96f4463bdfa6bd97439e8a5.jpeg');
INSERT INTO `girl` VALUES ('13', '/images/fef4c0dac59b48a797816fad9d9e983d.jpeg');
INSERT INTO `girl` VALUES ('14', '/img/ed559d9884124b478c5e18955c388084.jpeg');
INSERT INTO `girl` VALUES ('15', '/img/a40ef446138d4c66ad40d9f6ea7d49b1.jpeg');
INSERT INTO `girl` VALUES ('16', '/img/e0df9400c47b46d2b38b14e91678feb6.jpeg');
INSERT INTO `girl` VALUES ('17', '/img/f37e6dd9ef234138b817a90599a8da45.jpeg');
INSERT INTO `girl` VALUES ('18', '/img/540f6e4590ea481897f089c75b85e649.jpeg');
INSERT INTO `girl` VALUES ('19', '/img/f403f9959fde44b4baff969149371e61.jpeg');
INSERT INTO `girl` VALUES ('20', '/img/116f7b2bb775495ea0cd72cd69e04a47.jpeg');

-- ----------------------------
-- Table structure for log_table
-- ----------------------------
DROP TABLE IF EXISTS `log_table`;
CREATE TABLE `log_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `operate` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `operateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- ----------------------------
-- Records of log_table
-- ----------------------------
INSERT INTO `log_table` VALUES ('1', 'java', '登录', '2020-04-24 22:19:19');
INSERT INTO `log_table` VALUES ('13', '艾莉', '注册', '2020-02-25 14:37:16');
INSERT INTO `log_table` VALUES ('21', '宋云', '进入博文管理界面', '2020-05-06 14:37:53');

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL DEFAULT '0',
  `firstName` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `lastName` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `gender` bit(1) NOT NULL DEFAULT b'0',
  `telephone` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_profile` (`id`) USING BTREE,
  KEY `fk_profile` (`userId`),
  CONSTRAINT `fk_profile` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('11', '9', '明', '兰', '', '12345');
INSERT INTO `profile` VALUES ('14', '1', '付', '初', '\0', '119123');

-- ----------------------------
-- Table structure for syscategory
-- ----------------------------
DROP TABLE IF EXISTS `syscategory`;
CREATE TABLE `syscategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `articals` int DEFAULT '0',
  `isDelete` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syscategory
-- ----------------------------
INSERT INTO `syscategory` VALUES ('1', '技术', '120', '\0');
INSERT INTO `syscategory` VALUES ('2', '娱乐', '345', '\0');
INSERT INTO `syscategory` VALUES ('4', '学习', '0', '\0');
INSERT INTO `syscategory` VALUES ('5', '生活', '1', '\0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `pass` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `email` varchar(32) NOT NULL DEFAULT '0',
  `isApplied` bit(1) NOT NULL DEFAULT b'0',
  `isDelete` bit(1) NOT NULL DEFAULT b'0',
  `isProfile` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `index_user` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '艾莉', 'aili', '1234@qq.com', '', '\0', '');
INSERT INTO `user` VALUES ('2', '鲁班', 'ssm', 'admin@china.com', '', '\0', '');
INSERT INTO `user` VALUES ('3', '宋云', 'ssm', 'huan@wb.com', '', '\0', '');
INSERT INTO `user` VALUES ('4', '燕丽', 'ssm', 'g@wbkit.com', '', '\0', '\0');
INSERT INTO `user` VALUES ('5', '含羞草', 'ssm', 'cdu@ccdu.com', '', '\0', '\0');
INSERT INTO `user` VALUES ('9', 'java', 'ssm', 'test@test.com', '', '\0', '');
INSERT INTO `user` VALUES ('10', 'starlee', 'ssm', 'starlee@163.com', '', '\0', '\0');
INSERT INTO `user` VALUES ('15', '苏越', 'ssm', 'suyue@yuo.com', '', '\0', '\0');
INSERT INTO `user` VALUES ('22', '池新', 'ssm', '123344@qq.com', '\0', '\0', '\0');
INSERT INTO `user` VALUES ('28', '聂浩', 'ssm', 'fhffkl@d.com', '', '\0', '\0');
INSERT INTO `user` VALUES ('29', '郑浩', 'ssm', 'java@a.com', '', '\0', '\0');
INSERT INTO `user` VALUES ('32', '明月', 'ssm', 'ssm@c.com', '', '\0', '\0');
INSERT INTO `user` VALUES ('33', '海阔天空', 'ssm', '000000000', '', '\0', '\0');
INSERT INTO `user` VALUES ('34', 'test', 'test', '123@test', '\0', '\0', '\0');
INSERT INTO `user` VALUES ('35', '测试1号', 'ceshi1hao', 'ceshi@.com', '', '\0', '\0');
