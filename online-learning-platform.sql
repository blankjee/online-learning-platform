/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : online-learning-platform

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2020-02-18 11:44:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `context` varchar(500) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `hour` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'Python', 'Python', '1', '0', '一般', '20');
INSERT INTO `course` VALUES ('2', 'Python入门', 'Python入门', '0', '0', '还行', '10');
INSERT INTO `course` VALUES ('3', '1024设计', '1024设计', '1', '0', '还行', '5');
INSERT INTO `course` VALUES ('4', 'Python爬虫', 'Python爬虫技巧', '0', '0', '还行', '12');
INSERT INTO `course` VALUES ('5', 'java', 'java基础入门', '1', '0', '一般', '14');
INSERT INTO `course` VALUES ('6', 'Python爬虫2', 'Python爬虫2', '0', '0', '一般', '15');
INSERT INTO `course` VALUES ('7', '123', '123123', '1', '1', null, null);
INSERT INTO `course` VALUES ('8', '12123', '123123', '1', '1', null, null);

-- ----------------------------
-- Table structure for `ipset`
-- ----------------------------
DROP TABLE IF EXISTS `ipset`;
CREATE TABLE `ipset` (
  `ip` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `firsttime` datetime DEFAULT NULL,
  `bantime` datetime DEFAULT NULL,
  `totime` datetime DEFAULT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipset
-- ----------------------------
INSERT INTO `ipset` VALUES ('0:0:0:0:0:0:0:1', null, null, '2020-02-18 11:39:14', null, '2020-02-18 11:43:43');

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `executor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('127', '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-02-18 11:29:22', 'admin');
INSERT INTO `log` VALUES ('128', '201808100710171565', 'admin1', '屏蔽用户登录', '0:0:0:0:0:0:0:1', '2020-02-18 11:31:07', 'admin');
INSERT INTO `log` VALUES ('129', '201808100710171565', 'admin1', '恢复用户登录', '0:0:0:0:0:0:0:1', '2020-02-18 11:31:08', 'admin');
INSERT INTO `log` VALUES ('130', '201808100710171565', null, '修改用户信息', '0:0:0:0:0:0:0:1', '2020-02-18 11:31:19', 'admin');
INSERT INTO `log` VALUES ('131', null, null, '上架课程：Python', '0:0:0:0:0:0:0:1', '2020-02-18 11:31:52', 'admin');
INSERT INTO `log` VALUES ('132', '20151612204', 'admin', '注销', '0:0:0:0:0:0:0:1', '2020-02-18 11:41:37', null);
INSERT INTO `log` VALUES ('133', '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-02-18 11:41:50', null);

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `courseid` int(100) NOT NULL DEFAULT '0',
  `userid` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '20151612204');
INSERT INTO `message` VALUES ('3', '201808240857431128');
INSERT INTO `message` VALUES ('6', '201808231058301205');
INSERT INTO `message` VALUES ('4', '20151612204');
INSERT INTO `message` VALUES ('5', '20151612204');
INSERT INTO `message` VALUES ('2', '201809030750151429');
INSERT INTO `message` VALUES ('2', '20151612204');
INSERT INTO `message` VALUES ('2', '201809061049051592');
INSERT INTO `message` VALUES ('2', '201808240857431128');
INSERT INTO `message` VALUES ('6', '201808240857431128');
INSERT INTO `message` VALUES ('4', '201809030750151429');
INSERT INTO `message` VALUES ('5', '201808240857431128');
INSERT INTO `message` VALUES ('1', '201809061049051592');
INSERT INTO `message` VALUES ('3', '201808231058301205');
INSERT INTO `message` VALUES ('4', '201808231058301205');
INSERT INTO `message` VALUES ('2', '201810161045371069');
INSERT INTO `message` VALUES ('6', '201810161901381601');

-- ----------------------------
-- Table structure for `review`
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `reviewid` char(255) NOT NULL,
  `context` char(255) DEFAULT NULL,
  `courseid` int(50) DEFAULT NULL,
  `username` char(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `lable` char(255) DEFAULT NULL,
  `sex` char(50) DEFAULT NULL,
  `vip` int(50) DEFAULT NULL,
  PRIMARY KEY (`reviewid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES ('201809060327341776', 'fgfdgdsgg', '2', 'zzz', '2020-02-06 15:00:21', '4', 'Female', '1');
INSERT INTO `review` VALUES ('201809060414381493', '钱花的有点多', '1', '雷宇锋', '2020-02-06 15:00:21', '0', null, '1');
INSERT INTO `review` VALUES ('201809060423031483', '这课不错', '4', 'admin', '2020-02-06 15:00:21', '2', 'Male', '1');
INSERT INTO `review` VALUES ('201809060444041617', '刷好评', '4', 'adm', '2020-02-06 15:00:21', '4', null, '0');
INSERT INTO `review` VALUES ('201809060450041302', '刷好评', '4', 'adm', '2020-02-06 15:00:21', '4', null, '0');
INSERT INTO `review` VALUES ('201809060452031217', '这还不错', '4', 'adm', '2020-02-06 15:00:21', '3', null, '0');
INSERT INTO `review` VALUES ('201809060457021559', '这课不错', '5', 'admin', '2020-02-06 15:00:21', '2', 'Male', '1');
INSERT INTO `review` VALUES ('201810151532321876', '测试测试！！！', '6', '1823544517', '2020-02-06 15:00:21', '3', 'Male', '1');
INSERT INTO `review` VALUES ('201810151554191404', 'en ?', '3', '1823544517', '2020-02-06 15:00:21', '2', 'Male', '1');
INSERT INTO `review` VALUES ('201810161036391342', '美太太', '3', 'abc', '2020-02-06 15:00:21', '4', 'Female', '1');
INSERT INTO `review` VALUES ('201810161522301059', '测试', '4', '1823544517', '2020-02-06 15:00:21', '4', 'Male', '1');
INSERT INTO `review` VALUES ('201810161530351701', 'en    很不错', '3', 'abc', '2020-02-06 15:00:21', '0', 'Female', '1');
INSERT INTO `review` VALUES ('201810161545271907', '测试测试', '4', '1823544517', '2020-02-06 15:00:21', '4', 'Male', '1');
INSERT INTO `review` VALUES ('201810161902561206', '', '2', '96321', '2020-02-06 15:00:21', '4', 'Male', '1');
INSERT INTO `review` VALUES ('201810161903551373', '6666', '6', '96321', '2020-02-06 15:00:21', '4', 'Male', '1');
INSERT INTO `review` VALUES ('201810291609501589', '还行', '2', 'admin', '2020-02-06 15:00:21', '4', 'Male', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(100) NOT NULL DEFAULT '',
  `sex` varchar(50) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `vx` varchar(200) DEFAULT NULL,
  `nickname` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `mission` varchar(500) DEFAULT NULL,
  `buycase` varchar(200) DEFAULT NULL,
  `mycase` varchar(200) DEFAULT NULL,
  `collect` varchar(200) DEFAULT NULL,
  `education` varchar(200) DEFAULT NULL,
  `vip` datetime DEFAULT NULL,
  `fristtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('20151612204', 'Male', '18235447109', '54@qq.com', '1111', '管理员', 'admin', 'admin', 'admin', null, null, '458500', '高中/中专', '2033-10-01 19:57:53', null);
INSERT INTO `user` VALUES ('201808100710171565', 'Female', '18235447109', '59124@qq.com', null, null, 'admin1', 'admin', null, '0', null, '500', '高中/中专', null, '2018-08-10 19:17:10');
INSERT INTO `user` VALUES ('201808100930501831', 'Male', '18235447109', '34209@qq.com', '1111111111111111111', '张三', 'zhangsan', 'asdasd', null, null, null, '0', '本科/大专', '2019-09-01 20:41:04', '2018-08-10 09:50:30');
INSERT INTO `user` VALUES ('201808101154331492', 'Female', '1111111111111', '33900@qq.com', null, null, 'zhazhabi', 'zxcvbnm', null, null, null, '500', null, null, '2018-08-10 11:33:54');
INSERT INTO `user` VALUES ('201808230425131682', null, '123456789', '125486', '15846', 'bad', 'bb', '123456', null, null, null, '500', '研究生以上', null, '2018-08-23 16:13:25');
INSERT INTO `user` VALUES ('201808230439101712', null, null, null, null, null, '18235445172', '1111', null, null, null, '500', null, null, '2018-08-23 16:10:39');
INSERT INTO `user` VALUES ('201808231058301205', 'Male', '12345689', '789@qq.com', '784554asdd', '小猫', '1823544517', '123654', null, '0', null, '7000', '本科/大专', '2019-10-15 15:31:58', '2018-08-23 10:30:58');
INSERT INTO `user` VALUES ('201808240857431128', 'Female', '12345678907assa', '33333354@qq.com', '4dgde', 'zzzgf', 'zzz', '12345', null, null, null, '0', '研究生以上', '2023-01-06 15:33:03', '2018-08-24 08:43:57');
INSERT INTO `user` VALUES ('201808241105291520', null, null, null, null, null, '1823544517111111111111', '123456', null, null, null, '500', null, null, '2018-08-24 11:29:05');
INSERT INTO `user` VALUES ('201808241117291016', null, null, null, null, null, '182354451722222222222', '123456', null, null, null, '500', null, null, '2018-08-24 11:29:17');
INSERT INTO `user` VALUES ('201808241149281125', null, null, null, null, null, '18235445171111', '123456', null, null, null, '500', null, null, '2018-08-24 11:28:49');
INSERT INTO `user` VALUES ('201809030750151429', null, null, null, null, null, 'adm', '123', null, null, null, '500', null, null, '2018-09-03 19:15:50');
INSERT INTO `user` VALUES ('201809061018111546', 'Male', '110', '22253@qq.com', 'js666', 'js', 'js', 'js666', null, null, null, '10000', '研究生以上', '2020-03-06 10:15:16', '2018-09-06 10:11:18');
INSERT INTO `user` VALUES ('201809061049051592', null, null, null, null, null, 'sss', '110', null, null, null, '0', null, '2018-12-06 16:37:39', '2018-09-06 10:05:49');
INSERT INTO `user` VALUES ('201809061051011416', null, null, null, null, null, 'sdsd', '123', null, null, null, '500', null, null, '2018-09-06 10:01:51');
INSERT INTO `user` VALUES ('201809061055001264', null, null, null, null, null, 'aaa', '123', null, null, null, '500', null, null, '2018-09-06 10:00:55');
INSERT INTO `user` VALUES ('201809061108071033', 'Female', '12123', '222220@qq.com', null, null, '111', 'qweqwe', null, null, null, '500', null, null, '2018-09-06 11:07:08');
INSERT INTO `user` VALUES ('201810161045371069', 'Female', '13096613748', '872486471', '1223', '去玩儿', 'abc', '123456', null, '0', null, '0', '研究生以上', '2021-05-16 10:38:27', '2018-10-16 10:37:45');
INSERT INTO `user` VALUES ('201810161901381601', 'Male', '96321', '96321', '96321', '96321', '96321', '96321', null, '0', null, '0', '研究生以上', '2018-11-16 19:03:40', '2018-10-16 19:01:38');
