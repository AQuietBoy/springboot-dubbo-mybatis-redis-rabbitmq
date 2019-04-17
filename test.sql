/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-04-16 17:03:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `commodity_Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `commodity_Name` varchar(255) NOT NULL,
  `commodity_Price` double(10,2) NOT NULL,
  `commodity_Inventory` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`commodity_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('1', '华为P30', '19999.00', '97');
INSERT INTO `commodity` VALUES ('2', 'IPhone', '9999.00', '100');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `permission_Id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_Name` varchar(255) DEFAULT NULL,
  `permission_String` varchar(255) DEFAULT NULL,
  `permission_URL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`permission_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '测试权限', 'test', '/test');
INSERT INTO `permission` VALUES ('2', '管理员增删改查测试权限', 'admin:curd', '/admin_index');
INSERT INTO `permission` VALUES ('3', '管理员Redis测试权限', 'admin:redis', '/gotoRedis');
INSERT INTO `permission` VALUES ('4', '管理员秒杀测试权限', 'admin:seckill', '/gotoSeckill');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_Id` int(11) NOT NULL AUTO_INCREMENT,
  `role_Name` varchar(255) DEFAULT NULL COMMENT '角色名称\r\n',
  `role_Description` varchar(255) DEFAULT NULL COMMENT '角色的描述',
  `role_Available` tinyint(1) DEFAULT NULL COMMENT '角色的状态 1-可用 0-不可用',
  PRIMARY KEY (`role_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin', '管理员', '1');
INSERT INTO `role` VALUES ('2', 'user', '用户', '1');
INSERT INTO `role` VALUES ('3', 'vip', 'VIP会员', '1');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `role_permission_Id` int(11) NOT NULL AUTO_INCREMENT,
  `role_Id` int(11) DEFAULT NULL,
  `permission_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_permission_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1', '1');
INSERT INTO `role_permission` VALUES ('2', '1', '2');
INSERT INTO `role_permission` VALUES ('3', '1', '3');
INSERT INTO `role_permission` VALUES ('4', '1', '4');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_Id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_Name` varchar(255) NOT NULL,
  `user_Tel` varchar(255) NOT NULL,
  `user_Password` varchar(255) NOT NULL,
  `user_Age` int(11) DEFAULT NULL,
  `user_Sex` varchar(255) DEFAULT NULL,
  `user_Identity` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `user_Salt` varchar(255) DEFAULT NULL COMMENT '密码盐',
  PRIMARY KEY (`user_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('6', '陈振辉', '15031209623', 'chenzhenhui', '7', '男', '管理员', null);
INSERT INTO `user` VALUES ('7', '尔东', '19733922763', 'erdong', '26', '女', '用户', null);
INSERT INTO `user` VALUES ('10', '木子', '15755294714', 'muzi', '4', '男', '用户', null);
INSERT INTO `user` VALUES ('17', '李逵', '18558449697', '666666', '13', '女', '用户', null);
INSERT INTO `user` VALUES ('19', '诸葛亮', '14129637625', '123456', '9', '女', '用户', null);
INSERT INTO `user` VALUES ('20', '刘邦', '13292304625', 'liubang', '53', '女', '用户', null);
INSERT INTO `user` VALUES ('21', '项羽', '17432087010', '777777', '66', '女', '用户', null);
INSERT INTO `user` VALUES ('22', '孔明', '17254839519', '777777', '19', '男', '用户', null);
INSERT INTO `user` VALUES ('25', '悟空', '15722644162', '000000', '98', '女', '用户', null);
INSERT INTO `user` VALUES ('26', '猪八戒', '19610883772', '789456', '14', '男', '用户', null);
INSERT INTO `user` VALUES ('29', '沙悟净', '16499618512', '789475', '42', '女', '用户', null);
INSERT INTO `user` VALUES ('30', '唐僧', '15596959546', '7895757456', '86', '女', '用户', null);
INSERT INTO `user` VALUES ('31', '张宇', '19242393749', '7868679456', '38', '女', '用户', null);
INSERT INTO `user` VALUES ('32', '刘备', '18911004323', '78957456', '96', '女', '用户', null);
INSERT INTO `user` VALUES ('33', '张飞', '16395191214', '789456', '93', '女', '用户', null);
INSERT INTO `user` VALUES ('34', '孔明', '16232212103', '58757', '43', '男', '用户', null);
INSERT INTO `user` VALUES ('35', '牛魔王', '19339482044', '877767', '53', '女', '用户', null);
INSERT INTO `user` VALUES ('36', '红孩儿', '19040478819', '6876768', '82', '男', '用户', null);
INSERT INTO `user` VALUES ('37', '铁扇公主', '16246569039', '3746765', '17', '女', '用户', null);
INSERT INTO `user` VALUES ('38', '红孩儿', '16927277420', '876767', '9', '男', '用户', null);
INSERT INTO `user` VALUES ('39', '白龙马', '18695947877', '6767657', '65', '女', '用户', null);
INSERT INTO `user` VALUES ('40', '如来佛祖', '16862306679', '7658757', '33', '男', '用户', null);
INSERT INTO `user` VALUES ('41', '金角大王', '18997222477', '789456', '20', '女', '用户', null);
INSERT INTO `user` VALUES ('42', '银角大王', '19674379915', '123456', '32', '男', '用户', null);
INSERT INTO `user` VALUES ('43', '金毛狮王', '19410808757', '55555558', '30', '男', '用户', null);
INSERT INTO `user` VALUES ('44', '迅捷斥候', '17928923717', 'timobixusi', '3', '男', '用户', null);
INSERT INTO `user` VALUES ('45', '盖伦', '16523568945', 'gailun', '20', '男', '用户', null);
INSERT INTO `user` VALUES ('46', '亚索', '14589652452', 'yasuo', '20', '男', '用户', null);
INSERT INTO `user` VALUES ('63', '潮汐海灵', '15645895621', 'chaoxihailing', '3', '男', '用户', null);
INSERT INTO `user` VALUES ('64', '诡术妖姬', '15648569856', 'guishuyaoji', '20', '女', '用户', null);
INSERT INTO `user` VALUES ('65', '影流之主', '15623548569', 'yingliuzhizhu', '30', '男', '用户', null);
INSERT INTO `user` VALUES ('66', '九尾妖狐', '15789564152', 'jiuweiyaohu', '18', '女', '用户', null);
INSERT INTO `user` VALUES ('67', '艾瑞莉娅', '15645126389', 'airuiliya', '20', '女', '用户', null);
INSERT INTO `user` VALUES ('68', '疾风剑豪', '15689457585', 'jifengjianhao', '20', '男', '用户', null);
INSERT INTO `user` VALUES ('69', '暗黑元首', '15645859652', 'anheiyuanshou', '20', '女', '用户', null);
INSERT INTO `user` VALUES ('70', '无极剑圣', '15465854512', 'wujijiansheng', '26', '男', '用户', null);
INSERT INTO `user` VALUES ('71', '大发明家', '15645859656', 'dafamingjia', '20', '男', '用户', null);
INSERT INTO `user` VALUES ('72', '洛克萨斯之手', '15645895214', 'luokesasizhishou', '50', '男', '用户', null);
INSERT INTO `user` VALUES ('73', '男爵', '15463254875', 'nanjue', '100', '男', '用户', null);
INSERT INTO `user` VALUES ('74', '熊本熊', '14568956214', 'xiongbenxiong', '3', '男', '用户', null);
INSERT INTO `user` VALUES ('75', '哈士奇', '15478965427', 'hashiqi', '12', '男', '用户', null);
INSERT INTO `user` VALUES ('76', '小金毛', '15645689541', 'xiaojinmao', '3', '男', '用户', null);
INSERT INTO `user` VALUES ('77', '沙漠皇帝', '15645284785', 'shamohuangdi', '20', '女', '用户', null);
INSERT INTO `user` VALUES ('78', '复仇之矛', '15648589645', 'fuchouzhimao', '20', '女', '用户', null);
INSERT INTO `user` VALUES ('79', '皮城女警', '15245698547', 'pichengnvjing', '18', '女', '用户', null);
INSERT INTO `user` VALUES ('80', '亡灵战神', '15989452563', 'wanglingzhanshen', '65', '男', '用户', null);
INSERT INTO `user` VALUES ('81', '刀锋之影', '18945621752', 'daofengzhiying', '56', '男', '用户', null);
INSERT INTO `user` VALUES ('82', '伊泽瑞尔', '15648521689', 'yizeruier', '10', '男', '用户', null);
INSERT INTO `user` VALUES ('83', '提伯斯', '15648521456', 'tibosi', '3', '男', '用户', null);
INSERT INTO `user` VALUES ('84', '菲兹', '15689589641', 'feizi', '19', '男', '用户', null);
INSERT INTO `user` VALUES ('85', '吴广', '15623654896', 'wuguang', '26', '男', '用户', null);

-- ----------------------------
-- Table structure for user_order
-- ----------------------------
DROP TABLE IF EXISTS `user_order`;
CREATE TABLE `user_order` (
  `order_Id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_Id` bigint(11) DEFAULT NULL,
  `commodity_Id` bigint(11) DEFAULT NULL,
  `total_Number` bigint(11) DEFAULT NULL,
  `total_Prices` double(10,2) DEFAULT NULL,
  `order_Time` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`order_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_order
-- ----------------------------
INSERT INTO `user_order` VALUES ('1', '6', '1', '1', '19999.00', 'Mon Apr 15 14:34:38 CST 2019');
INSERT INTO `user_order` VALUES ('2', '6', '1', '1', '19999.00', 'Mon Apr 15 14:34:45 CST 2019');
INSERT INTO `user_order` VALUES ('3', '6', '1', '1', '19999.00', 'Mon Apr 15 19:39:41 CST 2019');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_role_Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_Id` int(11) DEFAULT NULL,
  `role_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_role_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '6', '1');
INSERT INTO `user_role` VALUES ('2', '7', '2');
INSERT INTO `user_role` VALUES ('3', '10', '3');
