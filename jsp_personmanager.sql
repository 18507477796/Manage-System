/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : jsp_personmanager

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2020-06-24 21:15:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for allusers
-- ----------------------------
DROP TABLE IF EXISTS `allusers`;
CREATE TABLE `allusers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `cx` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of allusers
-- ----------------------------
INSERT INTO `allusers` VALUES ('2', 'admin', 'admin', '超级管理员', '2020-04-04 15:15:04');
INSERT INTO `allusers` VALUES ('6', 'user', '123456', '员工', '2020-04-04 12:22:35');
INSERT INTO `allusers` VALUES ('8', 'zhangsan', '123456', '超级管理员', '2020-06-19 21:47:38');

-- ----------------------------
-- Table structure for bumenxinxi
-- ----------------------------
DROP TABLE IF EXISTS `bumenxinxi`;
CREATE TABLE `bumenxinxi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `bumen` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bumenxinxi
-- ----------------------------
INSERT INTO `bumenxinxi` VALUES ('3', '销售部', '2020-04-04 12:22:35');
INSERT INTO `bumenxinxi` VALUES ('4', '技术部', '2020-04-04 12:22:35');
INSERT INTO `bumenxinxi` VALUES ('5', '人事部', '2020-04-04 12:22:35');
INSERT INTO `bumenxinxi` VALUES ('6', '测试部', '2020-04-04 12:22:35');
INSERT INTO `bumenxinxi` VALUES ('7', '生产部', '2020-06-17 20:58:24');
INSERT INTO `bumenxinxi` VALUES ('8', '生产部', '2020-06-19 21:44:32');

-- ----------------------------
-- Table structure for gonggaoxinxi
-- ----------------------------
DROP TABLE IF EXISTS `gonggaoxinxi`;
CREATE TABLE `gonggaoxinxi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `biaoti` varchar(255) DEFAULT NULL,
  `neirong` longtext,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gonggaoxinxi
-- ----------------------------
INSERT INTO `gonggaoxinxi` VALUES ('6', '全体员工参加了系统使用培训', '全体员工参加了系统使用培训', '2020-04-04 15:57:20');
INSERT INTO `gonggaoxinxi` VALUES ('7', '培训', '培训', '2020-06-19 21:48:57');

-- ----------------------------
-- Table structure for gongzixinxi
-- ----------------------------
DROP TABLE IF EXISTS `gongzixinxi`;
CREATE TABLE `gongzixinxi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `gonghao` varchar(50) DEFAULT NULL,
  `bumen` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `yuefen` varchar(50) DEFAULT NULL,
  `jibengongzi` varchar(50) DEFAULT NULL,
  `jiabanfei` varchar(50) DEFAULT NULL,
  `jiangjin` varchar(50) DEFAULT NULL,
  `chengjin` varchar(50) DEFAULT NULL,
  `kouchuqingjiafeiyong` varchar(50) DEFAULT NULL,
  `kouchukuanggongfeiyong` varchar(50) DEFAULT NULL,
  `kouchushuifei` varchar(50) DEFAULT NULL,
  `kouchubaoxianfei` varchar(50) DEFAULT NULL,
  `kouchugongjijin` varchar(50) DEFAULT NULL,
  `shifagongzi` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gongzixinxi
-- ----------------------------
INSERT INTO `gongzixinxi` VALUES ('1', '002', 'B部门', '员工B', '1月', '2500', '500', '600', '50', '60', '70', '80', '90', '100', '3150.0', '2020-04-04 12:22:35');
INSERT INTO `gongzixinxi` VALUES ('2', '001', 'A部门', '员工A', '1月', '6000', '500', '200', '50', '100', '100', '100', '100', '100', '6150.0', '2020-04-04 12:22:35');
INSERT INTO `gongzixinxi` VALUES ('3', '003', 'C部门', '视频录像', '1月', '5000', '600', '500', '200', '300', '50', '560', '60', '70', '4860.0', '2020-04-04 12:22:35');
INSERT INTO `gongzixinxi` VALUES ('4', '004', 'D部门', '陈先生', '1月', '5000', '300', '500', '300', '200', '500', '300', '20', '30', '4450.0', '2020-04-04 12:22:35');
INSERT INTO `gongzixinxi` VALUES ('5', '222', '人事部', '一二三', '6月', '2000', '200', '0', '50', '0', '0', '0', '10', '0', '2140.0', '2020-04-04 12:22:35');
INSERT INTO `gongzixinxi` VALUES ('6', 'user', '销售部', '张三', '1月', '3000', '1000', '1000', '0', '0', '0', '0', '0', '0', '5000.0', '2020-04-04 15:41:39');

-- ----------------------------
-- Table structure for kaoqinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `kaoqinxinxi`;
CREATE TABLE `kaoqinxinxi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `gonghao` varchar(50) DEFAULT NULL,
  `bumen` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `yuefen` varchar(50) DEFAULT NULL,
  `zhengchangshangban` varchar(50) DEFAULT NULL,
  `jiaban` varchar(50) DEFAULT NULL,
  `qingjia` varchar(50) DEFAULT NULL,
  `kuanggong` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kaoqinxinxi
-- ----------------------------
INSERT INTO `kaoqinxinxi` VALUES ('1', '002', 'B部门', '员工B', '1月', '30', '20', '10', '50', '2020-04-04 12:22:35');
INSERT INTO `kaoqinxinxi` VALUES ('2', '003', 'C部门', '视频录像', '1月', '30', '20', '10', '5', '2020-04-04 12:22:35');
INSERT INTO `kaoqinxinxi` VALUES ('3', '004', 'D部门', '陈先生', '2月', '500', '20', '60', '50', '2020-04-04 12:22:35');
INSERT INTO `kaoqinxinxi` VALUES ('11', 'user', '销售部', '张三', '1月', '500', '10', '0', '0', '2020-04-04 15:40:54');
INSERT INTO `kaoqinxinxi` VALUES ('12', '123', '生产部', '123', '1月', '300', '300', '0', '0', '2020-06-19 21:45:57');
INSERT INTO `kaoqinxinxi` VALUES ('13', '001', '生产部', '123', '1月', '240', '0', '0', '0', '2020-06-19 21:48:42');

-- ----------------------------
-- Table structure for qingjiaxinxi
-- ----------------------------
DROP TABLE IF EXISTS `qingjiaxinxi`;
CREATE TABLE `qingjiaxinxi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `gonghao` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `kaishishijian` varchar(50) DEFAULT NULL,
  `jieshushijian` varchar(50) DEFAULT NULL,
  `tianshu` varchar(50) DEFAULT NULL,
  `shiyou` varchar(50) DEFAULT NULL,
  `zhuangtai` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qingjiaxinxi
-- ----------------------------
INSERT INTO `qingjiaxinxi` VALUES ('6', '001', '张三', '2019-05-07', '2019-05-09', '3', '病假', '批准', '2020-04-04 12:22:35');
INSERT INTO `qingjiaxinxi` VALUES ('7', '004', '王先生', '2019-05-08', '2019-05-15', '8', '事假', '批准', '2020-04-04 12:22:35');

-- ----------------------------
-- Table structure for wenjianxinxi
-- ----------------------------
DROP TABLE IF EXISTS `wenjianxinxi`;
CREATE TABLE `wenjianxinxi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `wenjianbianhao` varchar(50) DEFAULT NULL,
  `wenjianmingcheng` varchar(50) DEFAULT NULL,
  `wenjian` varchar(50) DEFAULT NULL,
  `wenjianjianjie` varchar(255) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wenjianxinxi
-- ----------------------------
INSERT INTO `wenjianxinxi` VALUES ('10', '04041544061412', '需求分析', 'upload/1585986284212.png', '需求分析', '2020-04-04 15:44:53');
INSERT INTO `wenjianxinxi` VALUES ('11', '04041547362145', '需求分析', 'upload/1585986464367.png', '需求分析', '2020-04-04 15:47:50');
INSERT INTO `wenjianxinxi` VALUES ('12', '04041550071701', '需求分析', 'upload/1585986620476.png', '哦', '2020-04-04 15:50:27');

-- ----------------------------
-- Table structure for yuangongweihu
-- ----------------------------
DROP TABLE IF EXISTS `yuangongweihu`;
CREATE TABLE `yuangongweihu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `gonghao` varchar(50) DEFAULT NULL,
  `bumen` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `xingbie` varchar(50) DEFAULT NULL,
  `chushengriqi` varchar(50) DEFAULT NULL,
  `xueli` varchar(50) DEFAULT NULL,
  `shouji` varchar(50) DEFAULT NULL,
  `youxiang` varchar(50) DEFAULT NULL,
  `dizhi` varchar(50) DEFAULT NULL,
  `hetonghao` varchar(50) DEFAULT NULL,
  `ruzhishijian` varchar(50) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  `lizhishijian` varchar(50) DEFAULT NULL,
  `lizhiyuanyin` varchar(255) DEFAULT NULL,
  `beizhu` varchar(255) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yuangongweihu
-- ----------------------------
INSERT INTO `yuangongweihu` VALUES ('6', '001', '销售部', '张三', '女', '2019-5-29', '本科', '13769548711', '2352352@qq.com', '鑫和锦园2栋', '001', '2019-5-22', '离职', '2019-04-30', '阿萨德阿萨德阿萨德', '阿萨德阿萨德阿萨德', '2020-04-04 12:22:35');
INSERT INTO `yuangongweihu` VALUES ('7', '004', '人事部', '王先生', '男', '2019-04-01', '本科', '13658996477', '132456@qq.com', '车站大道888号', '0098984', '2019-04-03', '离职', '2019-04-30', '和伽伽加上给大家按时', '阿萨德阿萨德阿斯达四大', '2020-04-04 12:22:35');
INSERT INTO `yuangongweihu` VALUES ('8', '222', '人事部', '一二三', '男', '1998-03-05', '初中', '', '', '农村路乡', '1234', '2019-06-03', '离职', '', '', '', '2020-04-04 12:22:35');

-- ----------------------------
-- Table structure for yuangongxinxi
-- ----------------------------
DROP TABLE IF EXISTS `yuangongxinxi`;
CREATE TABLE `yuangongxinxi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `gonghao` varchar(50) DEFAULT NULL,
  `mima` varchar(50) DEFAULT NULL,
  `bumen` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `xingbie` varchar(50) DEFAULT NULL,
  `chushengriqi` varchar(50) DEFAULT NULL,
  `xueli` varchar(50) DEFAULT NULL,
  `shouji` varchar(50) DEFAULT NULL,
  `youxiang` varchar(50) DEFAULT NULL,
  `dizhi` varchar(255) DEFAULT NULL,
  `hetonghao` varchar(50) DEFAULT NULL,
  `zhuangtai` varchar(50) DEFAULT NULL,
  `ruzhishijian` varchar(50) DEFAULT NULL,
  `jianjie` varchar(255) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yuangongxinxi
-- ----------------------------
INSERT INTO `yuangongxinxi` VALUES ('5', 'user', '123456', '销售部', '张三', '女', '2019-5-29', '本科', '13769548711', '2352352@qq.com', '鑫和锦园2栋', '001', '离职', '2019-05-22', '无', '2020-04-04 12:22:35');
INSERT INTO `yuangongxinxi` VALUES ('7', '003', '003', '人事部', '李四', '男', '2019-04-03', '硕士', '18888888888', 'grorti@qq.com', '车站大道888号', '0078967987', '离职', '2019-04-16', '阿萨德阿萨德阿萨德', '2020-04-04 18:05:11');
INSERT INTO `yuangongxinxi` VALUES ('8', '004', '004', '人事部', '王先生', '男', '2019-04-01', '专科', '13658996477', '132456@qq.com', '集美大道', '0098984', '离职', '2019-04-03', '冲', '2020-04-04 12:22:35');
INSERT INTO `yuangongxinxi` VALUES ('12', '1', '1', '测试部', '1', '男', '2020-04-04', '1', '18854801553', '874690625@qq.com', '1', '1', '在职', '2020-04-04', '1', '2020-04-04 18:05:53');
INSERT INTO `yuangongxinxi` VALUES ('13', '123', '123', '生产部', '123', '男', '2020-06-19', '本科', '18854801553', '2483558@qq.com', '山东', '001', '在职', '2020-06-19', '11', '2020-06-19 21:45:35');
INSERT INTO `yuangongxinxi` VALUES ('14', '001', '001', '生产部', '李四', '男', '2020-06-19', '本科', '18854801553', '2483558@qq.com', '山东', '001', '在职', '2020-06-19', '001', '2020-06-19 21:48:23');
