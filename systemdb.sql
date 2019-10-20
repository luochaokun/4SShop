/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50133
Source Host           : localhost:3306
Source Database       : systemdb

Target Server Type    : MYSQL
Target Server Version : 50133
File Encoding         : 65001

Date: 2019-06-14 16:42:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for apply
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply` (
  `aId` int(11) NOT NULL AUTO_INCREMENT,
  `appName` varchar(20) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `money` decimal(10,0) NOT NULL,
  `outmoney` decimal(10,0) DEFAULT '0',
  `inmoney` decimal(10,0) DEFAULT '0',
  `appTime` datetime DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `state` varchar(10) DEFAULT '未审核',
  `exaName` varchar(20) DEFAULT '未有审核人',
  PRIMARY KEY (`aId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES ('5', '李四', '12345678901', '202202', '0', '0', '2019-02-01 00:00:00', null, '未审核', '');
INSERT INTO `apply` VALUES ('7', '王东', '18008593641', '1000000', '255000', '745000', '2019-06-14 00:00:00', '购买汽车', '已审核', '王东');
INSERT INTO `apply` VALUES ('8', '罗成', '18008593641', '3500000', '453600', '3046400', '2019-01-14 00:00:00', '', '已审核', '罗成');
INSERT INTO `apply` VALUES ('9', '小美', '18008593641', '3500000', '2000000', '1500000', '2019-03-14 00:00:00', '', '已审核', '小美');
INSERT INTO `apply` VALUES ('10', '穆镖', '18008593641', '100000', '70000', '30000', '2019-06-14 00:00:00', '购车', '已审核', '穆镖');

-- ----------------------------
-- Table structure for carbuying
-- ----------------------------
DROP TABLE IF EXISTS `carbuying`;
CREATE TABLE `carbuying` (
  `cId` int(11) NOT NULL AUTO_INCREMENT,
  `aId` int(11) NOT NULL,
  `carId` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `buyTime` datetime NOT NULL,
  `totalPrice` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`cId`),
  KEY `carId` (`carId`),
  KEY `aId` (`aId`),
  CONSTRAINT `carbuying_ibfk_1` FOREIGN KEY (`carId`) REFERENCES `carinfo` (`cid`),
  CONSTRAINT `carbuying_ibfk_2` FOREIGN KEY (`aId`) REFERENCES `apply` (`aId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carbuying
-- ----------------------------
INSERT INTO `carbuying` VALUES ('8', '8', '2', '1', '2019-04-14 00:00:00', '453600');
INSERT INTO `carbuying` VALUES ('9', '9', '1', '10', '2019-02-14 00:00:00', '2000000');
INSERT INTO `carbuying` VALUES ('10', '10', '15', '1', '2019-06-14 00:00:00', '50000');
INSERT INTO `carbuying` VALUES ('11', '10', '18', '1', '2019-06-14 00:00:00', '10000');

-- ----------------------------
-- Table structure for carinfo
-- ----------------------------
DROP TABLE IF EXISTS `carinfo`;
CREATE TABLE `carinfo` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `wid` int(11) DEFAULT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `length` varchar(20) DEFAULT NULL,
  `width` varchar(20) DEFAULT NULL,
  `height` varchar(20) DEFAULT NULL,
  `wheelbase` varchar(20) DEFAULT NULL,
  `Tread` varchar(20) DEFAULT NULL,
  `curbWeight` varchar(20) DEFAULT NULL,
  `tyre` varchar(20) DEFAULT NULL,
  `tankVolume` varchar(20) DEFAULT NULL,
  `enginea` varchar(20) DEFAULT NULL,
  `displacement` varchar(20) DEFAULT NULL,
  `imga` varchar(20) DEFAULT NULL,
  `imgb` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `sid` (`sid`),
  KEY `wid` (`wid`),
  CONSTRAINT `carinfo_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `vehicle_system` (`sid`),
  CONSTRAINT `carinfo_ibfk_2` FOREIGN KEY (`wid`) REFERENCES `warehouse` (`kid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carinfo
-- ----------------------------
INSERT INTO `carinfo` VALUES ('1', '1', '1', 'CR-V2018款', '28', '5', '2000', '1500', '1500', '1', '1', 'Z', 'Z', 'Q', 'Z', 'Z', 'a', 'b');
INSERT INTO `carinfo` VALUES ('2', '1', '1', 'CR-V2019款', '30', '5', '2000', '1500', '1500', '1855', '1', 'Z', 'Z', 'Q', 'Z', 'Z', 'a', 'b');
INSERT INTO `carinfo` VALUES ('3', '2', '1', '大众cc2019', '28', '10', '1980', '2500', '1600', '2000', '2000', '2500', '245/45R19', '20', '2.0T可变缸涡轮增压发动机', '19980', 'a', 'b');
INSERT INTO `carinfo` VALUES ('14', '1', '1', '帕萨特2018', '28', '10', '1980', '2500', '1600', '2000', '2000', '2500', '245/45R19', '20', '2.0T可变缸涡轮增压发动机', '1998', 'a', 'b');
INSERT INTO `carinfo` VALUES ('15', '2', '1', '大众cc', '28', '10', '1980', '2500', '1600', '2000', '1980', '2500', '245/45R19', '20', '2.0T可变缸涡轮增压发动机', '1998', 'img', 'b');
INSERT INTO `carinfo` VALUES ('16', '2', '1', '大众cc', '28', '10', '1980', '2500', '1600', '2000', '1980', '2500', '245/45R19', '20', '2.0T可变缸涡轮增压发动机', '1998', 'img', 'b');
INSERT INTO `carinfo` VALUES ('18', '6', '1', '大众', '28', '10', '1980', '2500', '1600', '2000', '1980', '2500', '245/45R19', '20', '2.0T可变缸涡轮增压发动机', '1998', 'img', 'b');
INSERT INTO `carinfo` VALUES ('19', '5', '1', '大众cc2019', '28', '10', '1980', '2500', '1600', '2000', '1980', '2500', '245/45R19', '20', '2.0T可变缸涡轮增压发动机', '1998', 'img', 'b');

-- ----------------------------
-- Table structure for customerinfo
-- ----------------------------
DROP TABLE IF EXISTS `customerinfo`;
CREATE TABLE `customerinfo` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `idcard` varchar(50) DEFAULT NULL,
  `consumption` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customerinfo
-- ----------------------------
INSERT INTO `customerinfo` VALUES ('1', '李碧华', '17263645382', '123456', '上海', '未录入', '0.00');
INSERT INTO `customerinfo` VALUES ('2', '张福鼎', '18846375624', '123456', '北京', '未录入', '0.00');
INSERT INTO `customerinfo` VALUES ('3', '梨实', '18883647564', '123456', '遵义', '未录入', '0.00');
INSERT INTO `customerinfo` VALUES ('4', '李觉福', '18887546322', '123456', '贵阳', '未录入', '0.00');
INSERT INTO `customerinfo` VALUES ('5', '王二', '31234124312', '12321312', '遵义', '3421412312', '0.00');
INSERT INTO `customerinfo` VALUES ('7', '王任', '18885647564', '123456', '遵义', '522425199606246059', '0.00');
INSERT INTO `customerinfo` VALUES ('10', '李素', '14735647365', '123456', '贵阳', '522425199906231283', '0.00');
INSERT INTO `customerinfo` VALUES ('12', '李自雄', '15746574622', '123456', '遵义', '522435566493745362', '0.00');

-- ----------------------------
-- Table structure for departmentinfo
-- ----------------------------
DROP TABLE IF EXISTS `departmentinfo`;
CREATE TABLE `departmentinfo` (
  `deptId` int(11) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(20) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`deptId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of departmentinfo
-- ----------------------------
INSERT INTO `departmentinfo` VALUES ('1', '前台部', '负责接待客户');
INSERT INTO `departmentinfo` VALUES ('2', '人事部', '负责招聘、员工的入职和离职、员工职位的分配、出勤等');
INSERT INTO `departmentinfo` VALUES ('3', '仓管部', '负责管理仓库的');
INSERT INTO `departmentinfo` VALUES ('4', '财务部', '负责员工的工资发放与采购及收入');
INSERT INTO `departmentinfo` VALUES ('5', '删除', '222');

-- ----------------------------
-- Table structure for employeeinfo
-- ----------------------------
DROP TABLE IF EXISTS `employeeinfo`;
CREATE TABLE `employeeinfo` (
  `empId` int(11) NOT NULL AUTO_INCREMENT,
  `empName` varchar(20) NOT NULL,
  `pid` int(11) NOT NULL,
  `salary` decimal(10,0) DEFAULT NULL,
  `sex` int(11) NOT NULL,
  `inTime` date NOT NULL,
  `outTime` date DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `cardId` varchar(20) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `state` int(11) NOT NULL,
  `diploma` varchar(20) NOT NULL,
  `sadmin` varchar(20) NOT NULL,
  `sPwd` varchar(20) NOT NULL,
  `remark` varchar(200) DEFAULT '员工信息',
  PRIMARY KEY (`empId`),
  KEY `FK_employeeInfo_pid` (`pid`),
  CONSTRAINT `FK_employeeInfo_pid` FOREIGN KEY (`pid`) REFERENCES `positioninfo` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employeeinfo
-- ----------------------------
INSERT INTO `employeeinfo` VALUES ('1', '王东', '1', '999', '0', '2015-01-12', '2019-06-13', '1990-03-12', '522325199707084817', '18008593641', '15795362178@qq.com', '贵阳', '0', '本科', 'wangdong1', '123456', '员工信息');
INSERT INTO `employeeinfo` VALUES ('2', '罗伟', '10', '1253', '1', '2015-09-21', '2019-06-13', '1997-04-12', '522325199707084817', '18008593641', '15795362178@qq.com', '遵义', '0', '本科', '罗伟', '123456', '员工信息');
INSERT INTO `employeeinfo` VALUES ('3', '王建', '3', '2253', '1', '2016-10-11', null, '1995-07-20', '522325199707084817', '18008593641', '15795362178@qq.com', '重庆', '0', '硕士', '王建', '123456', '员工信息');
INSERT INTO `employeeinfo` VALUES ('4', '穆镖', '4', '3253', '0', '2016-04-28', '2019-06-13', '1995-05-11', '522325199707084817', '18008593641', '15795362178@qq.com', '成都', '0', '本科', '穆镖', '123456', '员工信息');
INSERT INTO `employeeinfo` VALUES ('5', '李宇鹏', '5', '4253', '1', '2015-01-12', '2019-06-13', '1990-03-12', '522325199707084817', '18008593641', '15795362178@qq.com', '上海', '0', '本科', '李宇鹏', '123456', '员工信息');
INSERT INTO `employeeinfo` VALUES ('6', '李子璇', '12', '11111111', '0', '2017-02-06', '2019-06-13', '2019-06-11', '522628199712141836', '18785575489', '243@qq.com', '11111', '0', '小学', '1111111111', '123456', '员工信息');
INSERT INTO `employeeinfo` VALUES ('7', '罗朝坤', '4', '10000', '1', '2019-02-03', '2019-06-14', '1997-06-02', '522628199712141839', '18785575478', '243@qq.com', '贵州遵义', '0', '博士后', 'luochaokun', '123456', '员工信息');
INSERT INTO `employeeinfo` VALUES ('8', '罗朝坤', '1', '15000', '1', '2019-06-12', '2019-06-14', '2019-06-12', '522628199712141839', '18785575478', '1213@qq.com', '贵州遵义', '0', '博士后', '123456', '12134546', '员工信息');

-- ----------------------------
-- Table structure for expenditure
-- ----------------------------
DROP TABLE IF EXISTS `expenditure`;
CREATE TABLE `expenditure` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `typeId` int(11) NOT NULL,
  `money` decimal(10,0) DEFAULT NULL,
  `emPid` int(11) NOT NULL,
  `expTime` datetime DEFAULT NULL,
  `account` varchar(20) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`eid`),
  KEY `typeId` (`typeId`),
  KEY `emPid` (`emPid`),
  CONSTRAINT `expenditure_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `outtype` (`typeId`),
  CONSTRAINT `expenditure_ibfk_2` FOREIGN KEY (`emPid`) REFERENCES `employeeinfo` (`empId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of expenditure
-- ----------------------------
INSERT INTO `expenditure` VALUES ('1', '1', '565656', '1', '2019-06-13 17:18:29', '456156', '办公用品耗材');
INSERT INTO `expenditure` VALUES ('2', '3', '200000', '1', '2019-02-13 17:18:51', '415454', '办公用品耗材');
INSERT INTO `expenditure` VALUES ('3', '1', '100000', '1', '2019-03-09 00:00:00', '2131', '办公用品耗材');
INSERT INTO `expenditure` VALUES ('4', '2', '100', '3', '2019-01-13 18:34:56', '451214545522', '办公用品耗材');
INSERT INTO `expenditure` VALUES ('5', '6', '885', '2', '2019-06-13 18:36:30', '45454512', '办公用品耗材');
INSERT INTO `expenditure` VALUES ('6', '1', '1545', '1', '2019-06-14 08:58:52', '54442456565', '办公用品耗材');
INSERT INTO `expenditure` VALUES ('7', '1', '566', '3', '2019-06-14 08:59:12', '12121454566555', '办公用品耗材');
INSERT INTO `expenditure` VALUES ('8', '7', '2000', '5', '2019-06-14 15:34:37', '5454545', '办公用品耗材');

-- ----------------------------
-- Table structure for hireinfo
-- ----------------------------
DROP TABLE IF EXISTS `hireinfo`;
CREATE TABLE `hireinfo` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone` char(11) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `diploma` varchar(20) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`hid`),
  KEY `FK_HireInfo_rid` (`rid`),
  CONSTRAINT `FK_HireInfo_rid` FOREIGN KEY (`rid`) REFERENCES `recruitmentinfo` (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hireinfo
-- ----------------------------
INSERT INTO `hireinfo` VALUES ('1', '1', '罗威', '18886054786', '2328695712@qq.com', '专科', '1', '应届生');
INSERT INTO `hireinfo` VALUES ('2', '3', '李穗', '1478374657', '4657385743@qq.com', '本科', '0', '三年工作经验');

-- ----------------------------
-- Table structure for kaoqininfo
-- ----------------------------
DROP TABLE IF EXISTS `kaoqininfo`;
CREATE TABLE `kaoqininfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empId` int(11) NOT NULL,
  `time` date NOT NULL,
  `startJobTime` datetime DEFAULT NULL,
  `startCardTime` datetime DEFAULT NULL,
  `stopJobTime` datetime DEFAULT NULL,
  `stopCardTime` datetime DEFAULT NULL,
  `jobState` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empId` (`empId`),
  CONSTRAINT `kaoqininfo_ibfk_1` FOREIGN KEY (`empId`) REFERENCES `employeeinfo` (`empId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kaoqininfo
-- ----------------------------
INSERT INTO `kaoqininfo` VALUES ('1', '3', '2019-06-13', '2019-06-13 08:30:00', '2019-06-13 19:27:53', '2019-06-13 17:30:00', '2019-06-13 19:27:58', '迟到');
INSERT INTO `kaoqininfo` VALUES ('2', '3', '2019-06-14', '2019-06-14 08:30:00', '2019-06-14 09:03:37', '2019-06-14 17:30:00', '2019-06-14 09:03:45', '迟到,早退');
INSERT INTO `kaoqininfo` VALUES ('3', '1', '2019-06-14', '2019-06-14 08:30:00', '2019-06-14 09:16:42', '2019-06-14 17:30:00', '2019-06-14 09:16:46', '迟到,早退');
INSERT INTO `kaoqininfo` VALUES ('4', '4', '2019-06-14', '2019-06-14 08:30:00', '2019-06-14 15:20:55', '2019-06-14 17:30:00', '2019-06-14 07:21:57', '迟到,早退');

-- ----------------------------
-- Table structure for leaveinfo
-- ----------------------------
DROP TABLE IF EXISTS `leaveinfo`;
CREATE TABLE `leaveinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeId` int(11) NOT NULL,
  `empId` int(11) NOT NULL,
  `beginTime` date NOT NULL,
  `endTime` date NOT NULL,
  `submitTime` date NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `checkName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_leaveInfo_typeId` (`typeId`),
  KEY `FK_leaveInfo_empId` (`empId`),
  CONSTRAINT `FK_leaveInfo_empId` FOREIGN KEY (`empId`) REFERENCES `employeeinfo` (`empId`),
  CONSTRAINT `FK_leaveInfo_typeId` FOREIGN KEY (`typeId`) REFERENCES `leavetype` (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leaveinfo
-- ----------------------------
INSERT INTO `leaveinfo` VALUES ('1', '2', '3', '2019-06-06', '2019-06-10', '2019-06-13', '', '1', '王东');
INSERT INTO `leaveinfo` VALUES ('2', '1', '3', '2019-06-15', '2019-06-16', '2019-06-14', 'hsadgfh', '1', '王东');
INSERT INTO `leaveinfo` VALUES ('3', '1', '1', '2019-06-05', '2019-06-18', '2019-06-14', '备注信息', '1', '王东');
INSERT INTO `leaveinfo` VALUES ('4', '1', '1', '1997-12-13', '2019-06-15', '2019-06-14', '', '1', '小花');
INSERT INTO `leaveinfo` VALUES ('5', '2', '4', '2019-06-15', '2019-06-16', '2019-06-14', '的', '1', '穆镖');

-- ----------------------------
-- Table structure for leavetype
-- ----------------------------
DROP TABLE IF EXISTS `leavetype`;
CREATE TABLE `leavetype` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(20) NOT NULL,
  `remark` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`typeId`),
  UNIQUE KEY `typeName` (`typeName`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leavetype
-- ----------------------------
INSERT INTO `leavetype` VALUES ('1', '事假', '事假期间，用人单位不用支付工资');
INSERT INTO `leavetype` VALUES ('2', '病假', '工资照发');
INSERT INTO `leavetype` VALUES ('3', '婚假', '工资照发');
INSERT INTO `leavetype` VALUES ('4', '丧假', '工资照发');
INSERT INTO `leavetype` VALUES ('5', '产假', '工资照发');

-- ----------------------------
-- Table structure for makeanappointment
-- ----------------------------
DROP TABLE IF EXISTS `makeanappointment`;
CREATE TABLE `makeanappointment` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `sid` int(11) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `sid` (`sid`),
  CONSTRAINT `makeanappointment_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `storeinfo` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of makeanappointment
-- ----------------------------
INSERT INTO `makeanappointment` VALUES ('1', '李四', '14732144123', '1', '2019-06-04 00:00:00');
INSERT INTO `makeanappointment` VALUES ('2', '张三', '14732144123', '1', '2019-06-04 00:00:00');

-- ----------------------------
-- Table structure for outboundorder
-- ----------------------------
DROP TABLE IF EXISTS `outboundorder`;
CREATE TABLE `outboundorder` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `kid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `Operator` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`wid`),
  KEY `kid` (`kid`),
  KEY `cid` (`cid`),
  CONSTRAINT `outboundorder_ibfk_1` FOREIGN KEY (`kid`) REFERENCES `warehouse` (`kid`),
  CONSTRAINT `outboundorder_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `carinfo` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outboundorder
-- ----------------------------
INSERT INTO `outboundorder` VALUES ('1', '1', '1', '12', '2019-02-03 00:00:00', '李宇鹏');
INSERT INTO `outboundorder` VALUES ('2', '1', '2', '22', '2019-03-04 00:00:00', '罗伟');

-- ----------------------------
-- Table structure for outtype
-- ----------------------------
DROP TABLE IF EXISTS `outtype`;
CREATE TABLE `outtype` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(20) NOT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outtype
-- ----------------------------
INSERT INTO `outtype` VALUES ('1', '购车 ');
INSERT INTO `outtype` VALUES ('2', '工资');
INSERT INTO `outtype` VALUES ('3', '其他');
INSERT INTO `outtype` VALUES ('6', '保洁');
INSERT INTO `outtype` VALUES ('7', '消耗品');

-- ----------------------------
-- Table structure for positioninfo
-- ----------------------------
DROP TABLE IF EXISTS `positioninfo`;
CREATE TABLE `positioninfo` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `deptId` int(11) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `pids` varchar(20) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FK_positioninfo_pid` (`deptId`),
  CONSTRAINT `FK_positioninfo_pid` FOREIGN KEY (`deptId`) REFERENCES `departmentinfo` (`deptId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of positioninfo
-- ----------------------------
INSERT INTO `positioninfo` VALUES ('1', '1', '总经理', '', '负责公司的日常管理工作');
INSERT INTO `positioninfo` VALUES ('2', '1', '接待员', '', '服务员');
INSERT INTO `positioninfo` VALUES ('3', '1', '顾问', '', '客服');
INSERT INTO `positioninfo` VALUES ('4', '2', '总监', '', '构建高效实用的人力资源管理系统，人才选拔，建立科学的考核与激励机制，最大限度地激发人才潜能，创建优秀团队');
INSERT INTO `positioninfo` VALUES ('5', '2', '经理', '', '负责全面主持本部的劳资、人事方面的管理工作');
INSERT INTO `positioninfo` VALUES ('6', '2', '主管', '', '负责按用人标准配备齐全各类人才，人尽其才');
INSERT INTO `positioninfo` VALUES ('7', '2', '专员', '', '指执行并完善公司的人事制度与招聘计划，员工培训与发展规划，绩效评估，员工住房公积金、社会保障福利等方面的专业从业人员');
INSERT INTO `positioninfo` VALUES ('8', '3', '配件经理', '', '仓库管理员的头头');
INSERT INTO `positioninfo` VALUES ('9', '3', '仓库管理员', '', '员工');
INSERT INTO `positioninfo` VALUES ('10', '4', '财务经理', '', '提供财务分析报告、编制预算、成本和资金');
INSERT INTO `positioninfo` VALUES ('11', '4', '会计', '', '算钱');
INSERT INTO `positioninfo` VALUES ('12', '4', '出纳', '', '出即支出,纳即收入');
INSERT INTO `positioninfo` VALUES ('13', '1', '删除', null, '2222222222222');

-- ----------------------------
-- Table structure for recruitmentinfo
-- ----------------------------
DROP TABLE IF EXISTS `recruitmentinfo`;
CREATE TABLE `recruitmentinfo` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `deptId` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `requires` varchar(200) NOT NULL,
  `describes` varchar(200) NOT NULL,
  `beginTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `count` int(11) NOT NULL,
  `diploma` varchar(20) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recruitmentinfo
-- ----------------------------
INSERT INTO `recruitmentinfo` VALUES ('1', '1', '1', '要求3年以上的工作经验', '在前台收银', '2019-03-21 00:00:00', '2019-04-01 00:00:00', '1', '本科', '工资面谈');
INSERT INTO `recruitmentinfo` VALUES ('2', '1', '2', '要求3年以上的工作经验', '算账', '2019-03-21 00:00:00', '2019-04-01 00:00:00', '1', '本科', '工资面谈');
INSERT INTO `recruitmentinfo` VALUES ('3', '2', '1', '要求3年以上的工作经验', '收款支出', '2019-03-21 00:00:00', '2019-04-01 00:00:00', '1', '本科', '工资面谈');

-- ----------------------------
-- Table structure for salary
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `empId` int(11) DEFAULT NULL,
  `smonth` varchar(10) DEFAULT NULL,
  `financial` decimal(10,2) DEFAULT NULL,
  `deduction` decimal(10,2) DEFAULT NULL,
  `answer` decimal(10,2) DEFAULT NULL,
  `reals` decimal(10,2) DEFAULT NULL,
  `modes` varchar(20) DEFAULT NULL,
  `outTime` datetime DEFAULT NULL,
  `state` int(11) NOT NULL,
  `namea` varchar(20) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `empId` (`empId`),
  CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`empId`) REFERENCES `employeeinfo` (`empId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salary
-- ----------------------------
INSERT INTO `salary` VALUES ('1', '1', '2019-04', null, '105.00', '999.00', '894.00', '银行转账', '2019-04-13 19:46:25', '1', '小花', null);
INSERT INTO `salary` VALUES ('3', '5', '2019-02', null, '105.00', '4253.00', '4148.00', '银行转账', '2019-02-13 19:46:39', '1', '小花', null);
INSERT INTO `salary` VALUES ('4', '1', '2019-06', null, '105.00', '999.00', '894.00', '银行转账', '2019-06-14 16:00:26', '1', '穆镖', null);
INSERT INTO `salary` VALUES ('5', '3', '2019-06', '863.59', '105.00', '2253.00', '1284.41', '银行转账', '2019-06-14 09:19:17', '1', '小美', '迟到共2次，未打卡共0次，早退共1次，请假共5天，旷工共7次');
INSERT INTO `salary` VALUES ('6', '4', '2019-06', null, '105.00', '3253.00', '3148.00', '银行转账', '2019-06-14 16:17:19', '1', '穆镖', null);
INSERT INTO `salary` VALUES ('7', '7', '2019-06', null, '105.00', '10000.00', '9895.00', '银行转账', '2019-07-14 19:22:54', '1', '穆镖', null);
INSERT INTO `salary` VALUES ('8', '8', '2019-06', null, '105.00', '15000.00', '14895.00', '银行转账', '2019-06-14 16:16:59', '1', '穆镖', null);
INSERT INTO `salary` VALUES ('9', '4', '2019-07', null, '105.00', '3253.00', '3148.00', '银行转账', '2019-07-17 19:25:02', '1', '穆镖', null);

-- ----------------------------
-- Table structure for sale
-- ----------------------------
DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `empId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `carId` int(11) DEFAULT NULL,
  `saleTime` datetime DEFAULT NULL,
  `advance` decimal(10,0) DEFAULT NULL,
  `receipts` decimal(10,0) DEFAULT NULL,
  `receivable` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `empId` (`empId`),
  KEY `userId` (`userId`),
  KEY `carId` (`carId`),
  CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`empId`) REFERENCES `employeeinfo` (`empId`),
  CONSTRAINT `sale_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `customerinfo` (`cid`),
  CONSTRAINT `sale_ibfk_3` FOREIGN KEY (`carId`) REFERENCES `carinfo` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sale
-- ----------------------------
INSERT INTO `sale` VALUES ('1', '1', '1', '1', '2019-02-03 00:00:00', '10000', '20000', '1000000');
INSERT INTO `sale` VALUES ('3', '5', '5', '2', '2019-06-13 00:00:00', '1190000', '10000', '1200000');
INSERT INTO `sale` VALUES ('4', '7', '1', '2', '2019-05-14 00:00:00', '3900000', '350000', '4250000');
INSERT INTO `sale` VALUES ('5', '3', '3', '14', '2019-06-14 00:00:00', '20000', '25000', '45000');
INSERT INTO `sale` VALUES ('6', '4', '5', '14', '2019-01-14 00:00:00', '37000', '13000', '50000');
INSERT INTO `sale` VALUES ('7', '4', '5', '14', '2019-03-14 00:00:00', '37000', '13000', '50000');
INSERT INTO `sale` VALUES ('8', '8', '1', '14', '2019-06-14 00:00:00', '800000', '200000', '1000000');

-- ----------------------------
-- Table structure for storeinfo
-- ----------------------------
DROP TABLE IF EXISTS `storeinfo`;
CREATE TABLE `storeinfo` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `img` varchar(100) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storeinfo
-- ----------------------------
INSERT INTO `storeinfo` VALUES ('1', '大众维修门店', '14725801230', 'asda', '遵义红换岗区');
INSERT INTO `storeinfo` VALUES ('2', '4s汽车维修店', '15208529630', 'qw', '遵义');

-- ----------------------------
-- Table structure for transfer
-- ----------------------------
DROP TABLE IF EXISTS `transfer`;
CREATE TABLE `transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empId` int(11) NOT NULL,
  `jdep` varchar(20) NOT NULL,
  `jformer` varchar(20) NOT NULL,
  `former` int(11) NOT NULL,
  `expendTime` datetime NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empId` (`empId`),
  KEY `former` (`former`),
  CONSTRAINT `transfer_ibfk_1` FOREIGN KEY (`empId`) REFERENCES `employeeinfo` (`empId`),
  CONSTRAINT `transfer_ibfk_2` FOREIGN KEY (`former`) REFERENCES `positioninfo` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transfer
-- ----------------------------
INSERT INTO `transfer` VALUES ('1', '1', '前台', '经理', '1', '2019-06-12 00:00:00', '1111111111');
INSERT INTO `transfer` VALUES ('2', '2', '仓管部', '仓库管理员', '10', '2019-06-13 00:00:00', 'asdasd');
INSERT INTO `transfer` VALUES ('3', '6', '前台部', '接待员', '12', '2019-06-13 00:00:00', '11111111111');
INSERT INTO `transfer` VALUES ('4', '8', '人事部', '总监', '1', '2019-06-14 00:00:00', '撒打算');

-- ----------------------------
-- Table structure for vehicle_system
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_system`;
CREATE TABLE `vehicle_system` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) DEFAULT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `vid` (`vid`),
  CONSTRAINT `vehicle_system_ibfk_1` FOREIGN KEY (`vid`) REFERENCES `vehicle_type` (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicle_system
-- ----------------------------
INSERT INTO `vehicle_system` VALUES ('1', '1', 'CR-V', 'A');
INSERT INTO `vehicle_system` VALUES ('2', '2', '雅阁', 'b');
INSERT INTO `vehicle_system` VALUES ('3', '1', 'CR-Z', 'C');
INSERT INTO `vehicle_system` VALUES ('4', '1', '新高尔夫R-Line', 'A');
INSERT INTO `vehicle_system` VALUES ('5', '1', '新高尔夫GTI', 'b');
INSERT INTO `vehicle_system` VALUES ('6', '1', '新高尔夫', null);
INSERT INTO `vehicle_system` VALUES ('7', '2', '全新凌渡', null);
INSERT INTO `vehicle_system` VALUES ('8', '2', '新桑塔纳', null);
INSERT INTO `vehicle_system` VALUES ('9', '2', '全新一代朗逸', null);
INSERT INTO `vehicle_system` VALUES ('10', '2', '全新一代速腾', null);
INSERT INTO `vehicle_system` VALUES ('11', '2', '全新一代宝来', null);
INSERT INTO `vehicle_system` VALUES ('12', '1', 'Cross Polo', null);

-- ----------------------------
-- Table structure for vehicle_type
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_type`;
CREATE TABLE `vehicle_type` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `vname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicle_type
-- ----------------------------
INSERT INTO `vehicle_type` VALUES ('1', 'SUV');
INSERT INTO `vehicle_type` VALUES ('2', '轿车');

-- ----------------------------
-- Table structure for warehouse
-- ----------------------------
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `wname` varchar(20) DEFAULT NULL,
  `remark` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`kid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse
-- ----------------------------
INSERT INTO `warehouse` VALUES ('1', '1号库', '汽车一号仓库');

-- ----------------------------
-- Table structure for warehousereceipt
-- ----------------------------
DROP TABLE IF EXISTS `warehousereceipt`;
CREATE TABLE `warehousereceipt` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `kid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `Operator` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`wid`),
  KEY `kid` (`kid`),
  KEY `cid` (`cid`),
  CONSTRAINT `warehousereceipt_ibfk_1` FOREIGN KEY (`kid`) REFERENCES `warehouse` (`kid`),
  CONSTRAINT `warehousereceipt_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `carinfo` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehousereceipt
-- ----------------------------
INSERT INTO `warehousereceipt` VALUES ('1', '1', '1', '30', '2019-03-05 00:00:00', '罗维');
INSERT INTO `warehousereceipt` VALUES ('2', '1', '2', '11', '2019-04-01 00:00:00', '张建');

-- ----------------------------
-- Procedure structure for pro_jobState
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_jobState`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_jobState`(in V_id int)
begin
		update kaoQinInfo set jobState=
		IF(((SELECT * FROM (SELECT startCardTime FROM kaoQinInfo where empId=V_id and time=curdate()) tb) is not null and (SELECT * FROM (SELECT stopCardTime FROM kaoQinInfo where empId=V_id and time=curdate()) tb) is null OR  (SELECT * FROM (SELECT startCardTime FROM kaoQinInfo where empId=V_id and time=curdate()) tb) is null and (SELECT * FROM (SELECT stopCardTime FROM kaoQinInfo where empId=V_id and time=curdate()) tb)is not null) AND (SELECT TIMESTAMPDIFF(MINUTE ,(SELECT * FROM (SELECT startJobTime FROM kaoQinInfo where empId=V_id and time=curdate()) ty),(SELECT * FROM (SELECT startCardTime FROM kaoQinInfo where empId=V_id and time=curdate()) ty)))>0 ,'一次未打卡,迟到',
		IF((SELECT * FROM (SELECT startCardTime FROM kaoQinInfo where empId=V_id and time=curdate()) tb) is not null and (SELECT * FROM (SELECT stopCardTime FROM kaoQinInfo where empId=V_id and time=curdate()) tb) is null OR  (SELECT * FROM (SELECT startCardTime FROM kaoQinInfo where empId=V_id and time=curdate()) tb) is null and (SELECT * FROM (SELECT stopCardTime FROM kaoQinInfo where empId=V_id and time=curdate()) tb)is not null,'一次未打卡',
		IF((SELECT TIMESTAMPDIFF(MINUTE ,(SELECT * FROM (SELECT startJobTime FROM kaoQinInfo where empId=V_id and time=curdate()) tq),(SELECT * FROM (SELECT startCardTime FROM kaoQinInfo where empId=V_id and time=curdate()) tt)))<=0 and  (SELECT TIMESTAMPDIFF(MINUTE ,(SELECT * FROM (SELECT stopJobTime FROM kaoQinInfo where empId=V_id and time=curdate()) tb),(SELECT * FROM (SELECT stopCardTime FROM kaoQinInfo where empId=V_id and time=curdate())tk)))>=0,'到勤',
		IF((SELECT TIMESTAMPDIFF(MINUTE ,(SELECT * FROM (SELECT startJobTime FROM kaoQinInfo where empId=V_id and time=curdate())tq),(SELECT * FROM (SELECT startCardTime FROM kaoQinInfo where empId=V_id and time=curdate()) ty)))>0 and  (SELECT TIMESTAMPDIFF(MINUTE ,(SELECT * FROM (SELECT stopJobTime FROM kaoQinInfo where empId=V_id and time=curdate())tl),(SELECT * FROM (SELECT stopCardTime FROM kaoQinInfo where empId=V_id and time=curdate())ts)))<0,'迟到,早退',
		IF((SELECT TIMESTAMPDIFF(MINUTE ,(SELECT * FROM (SELECT startJobTime FROM kaoQinInfo where empId=V_id and time=curdate()) ty),(SELECT * FROM (SELECT startCardTime FROM kaoQinInfo where empId=V_id and time=curdate()) ty)))>0,'迟到',
		IF((SELECT TIMESTAMPDIFF(MINUTE ,(SELECT * FROM (SELECT stopJobTime FROM kaoQinInfo where empId=V_id and time=curdate()) ty),(SELECT * FROM (SELECT stopCardTime FROM kaoQinInfo where empId=V_id and time=curdate()) ty)))<0,'早退','旷工'))))))
		where  empId=V_id and time=curdate();
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_pro_salary
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_pro_salary`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_pro_salary`(in V_id int)
begin
		update salary set financial=
		(SELECT SUM((SELECT count(*) from kaoQinInfo where empId=V_id and jobState like '%迟到%' and time LIKE CONCAT('%',YEAR(CURDATE()),'-','%',MONTH(CURDATE()),'%'))*20+
    (SELECT count(*) from kaoQinInfo where empId=V_id and jobState like '%未打卡%' and time LIKE CONCAT('%',YEAR(CURDATE()),'-','%',MONTH(CURDATE()),'%'))*10+
    (SELECT count(*) from kaoQinInfo where empId=V_id and jobState like '%早退%' and time LIKE CONCAT('%',YEAR(CURDATE()),'-','%',MONTH(CURDATE()),'%'))*20+
		(SELECT SUM((select SUM(DATEDIFF(endTime,beginTime)) from leaveInfo where  empId=V_id and typeId=1 and state=1 and beginTime LIKE CONCAT('%',YEAR(CURDATE()),'-','%',MONTH(CURDATE()),'%') and endTime LIKE CONCAT('%',YEAR(CURDATE()),'-','%',MONTH(CURDATE()),'%'))*(SELECT SUM((SELECT salary FROM employeeInfo where empId=V_id)/21.75))))+
		(SELECT SUM((SELECT DATEDIFF(DATE(CURDATE()),CONCAT(YEAR(CURDATE()),'-',MONTH(CURDATE()),'-','01'))+1)-(SELECT count(*) from kaoQinInfo where empId=V_id and  time LIKE CONCAT('%',YEAR(CURDATE()),'-','%',MONTH(CURDATE()),'%'))-(select SUM(DATEDIFF(endTime,beginTime)) from leaveInfo where  empId=V_id  and state=1)))*100)),
		remark= CONCAT('迟到共',(SELECT count(*) from kaoQinInfo where empId=V_id and jobState like '%迟到%' and time LIKE CONCAT('%',YEAR(CURDATE()),'-','%',MONTH(CURDATE()),'%'))
		,'次，未打卡共',(SELECT count(*) from kaoQinInfo where empId=V_id and jobState like '%未打卡%' and time LIKE CONCAT('%',YEAR(CURDATE()),'-','%',MONTH(CURDATE()),'%'))
		,'次，早退共',(SELECT count(*) from kaoQinInfo where empId=V_id and jobState like '%早退%' and time LIKE CONCAT('%',YEAR(CURDATE()),'-','%',MONTH(CURDATE()),'%')),'次，请假共',
		(select SUM(DATEDIFF(endTime,beginTime)) from leaveInfo where  empId=V_id and beginTime LIKE CONCAT('%',YEAR(CURDATE()),'-','%',MONTH(CURDATE()),'%') and endTime LIKE CONCAT('%',YEAR(CURDATE()),'-','%',MONTH(CURDATE()),'%')),'天，旷工共',
		(SELECT SUM((SELECT DATEDIFF(DATE(CURDATE()),CONCAT(YEAR(CURDATE()),'-',MONTH(CURDATE()),'-','01'))+1)-(SELECT count(*) from kaoQinInfo where empId=V_id and  time LIKE CONCAT('%',YEAR(CURDATE()),'-','%',MONTH(CURDATE()),'%'))-(select SUM(DATEDIFF(endTime,beginTime)) from leaveInfo where  empId=V_id and state=1))),'次'),
		deduction=105,answer=(SELECT salary FROM employeeInfo where empId=V_id)
		where  empId=V_id  and smonth=CONCAT(YEAR(CURDATE()),'-',IF(MONTH(CURDATE())<10,CONCAT('0',MONTH(CURDATE())),MONTH(CURDATE())));
end
;;
DELIMITER ;
