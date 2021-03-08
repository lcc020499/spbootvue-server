/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : spbootvue05263esjywz

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2021-01-23 22:00:18
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '帐号',
  `pwd` varchar(50) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'admin', 'admin', '2021-01-23 11:43:20');

-- ----------------------------
-- Table structure for `dingdanqueren`
-- ----------------------------
DROP TABLE IF EXISTS `dingdanqueren`;
CREATE TABLE `dingdanqueren` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wupindingdanid` int(10) unsigned NOT NULL COMMENT '物品订单id',
  `dingdanbianhao` varchar(50) NOT NULL COMMENT '订单编号',
  `wupinbianhao` varchar(50) NOT NULL COMMENT '物品编号',
  `wupinmingcheng` varchar(255) NOT NULL COMMENT '物品名称',
  `wupintupian` varchar(255) NOT NULL COMMENT '物品图片',
  `wupinjiage` decimal(18,2) NOT NULL COMMENT '物品价格',
  `maijia` varchar(50) NOT NULL COMMENT '卖家',
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `xiadanren` varchar(50) NOT NULL COMMENT '下单人',
  `querenzhuangtai` varchar(255) NOT NULL COMMENT '确认状态',
  `beizhu` text NOT NULL COMMENT '备注',
  `querenren` varchar(50) NOT NULL COMMENT '确认人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `dingdanqueren_wupindingdanid_index` (`wupindingdanid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dingdanqueren
-- ----------------------------
INSERT INTO `dingdanqueren` VALUES ('3', '11', '12121947352', '121121376412', '联想(Lenovo)天逸510S锐龙版', 'upload/20201211/e4268c5a-a0dc-48c7-a4c8-0626e55258bd.png', '1500.00', '003', '张三', '001', '已确认', 'qq', '001', '2021-01-23 19:48:14');
INSERT INTO `dingdanqueren` VALUES ('4', '15', '012321494390', '121121327716', '爱玛（AIMA门店直通车）', 'upload/20210123/f276ac43-c1ff-4ff2-905f-77076c1d1919.png', '1500.00', '003', '里奎斯', '002', '已确认', 'fewf', '002', '2021-01-23 21:51:30');

-- ----------------------------
-- Table structure for `huifuzixun`
-- ----------------------------
DROP TABLE IF EXISTS `huifuzixun`;
CREATE TABLE `huifuzixun` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zaixianzixunid` int(10) unsigned NOT NULL COMMENT '在线咨询id',
  `zixunneirong` text NOT NULL COMMENT '咨询内容',
  `zixunren` varchar(50) NOT NULL COMMENT '咨询人',
  `huifu` text NOT NULL COMMENT '回复',
  `maijia` varchar(50) NOT NULL COMMENT '卖家',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `huifuzixun_zaixianzixunid_index` (`zaixianzixunid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huifuzixun
-- ----------------------------
INSERT INTO `huifuzixun` VALUES ('1', '1', '你好', '001', '好啊', '002', '2021-01-23 10:32:21');
INSERT INTO `huifuzixun` VALUES ('2', '1', '你好', '001', 'q\'q\'q\'q\'q', '002', '2021-01-23 10:33:33');
INSERT INTO `huifuzixun` VALUES ('3', '1', '你好', '001', 'wwwwwww', '002', '2021-01-23 10:35:26');
INSERT INTO `huifuzixun` VALUES ('4', '1', '你好', '001', '333333333333', '002', '2021-01-23 10:36:36');
INSERT INTO `huifuzixun` VALUES ('5', '1', '你好', '001', 'q', '002', '2021-01-23 10:55:53');
INSERT INTO `huifuzixun` VALUES ('6', '1', '你好', '001', '1', '002', '2021-01-23 10:57:31');
INSERT INTO `huifuzixun` VALUES ('7', '1', '你好', '001', '0', '002', '2021-01-23 11:14:28');
INSERT INTO `huifuzixun` VALUES ('8', '5', '4444', '001', '44', '002', '2021-01-23 11:22:27');
INSERT INTO `huifuzixun` VALUES ('9', '6', '88', '003', '88', '002', '2021-01-23 11:22:36');
INSERT INTO `huifuzixun` VALUES ('10', '7', '11111111111', '001', 'qq', '003', '2021-01-23 17:11:06');
INSERT INTO `huifuzixun` VALUES ('11', '7', '11111111111', '001', 'ww', '003', '2021-01-23 17:13:26');
INSERT INTO `huifuzixun` VALUES ('12', '8', 'sdfe', '001', 'aaaaaaaaa', '002', '2021-01-23 17:32:12');
INSERT INTO `huifuzixun` VALUES ('13', '9', '你好', '001', '好', '003', '2021-01-23 19:38:30');
INSERT INTO `huifuzixun` VALUES ('14', '10', 'wsrewfwe', '003', 'dfwegewr', '001', '2021-01-23 19:50:08');
INSERT INTO `huifuzixun` VALUES ('15', '12', '你好', '666', '你好啊', '888', '2021-01-23 21:30:21');
INSERT INTO `huifuzixun` VALUES ('16', '11', '你好', '001', '你好', '002', '2021-01-23 21:09:05');

-- ----------------------------
-- Table structure for `jiaoyishenqing`
-- ----------------------------
DROP TABLE IF EXISTS `jiaoyishenqing`;
CREATE TABLE `jiaoyishenqing` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wupinxinxiid` int(10) unsigned NOT NULL COMMENT '物品信息id',
  `wupinbianhao` varchar(50) NOT NULL COMMENT '物品编号',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `wupinmingcheng` varchar(255) NOT NULL COMMENT '物品名称',
  `wupintupian` varchar(255) NOT NULL COMMENT '物品图片',
  `wupinjiage` decimal(18,2) NOT NULL COMMENT '物品价格',
  `jiaoyididian` varchar(255) NOT NULL COMMENT '交易地点',
  `maijia` varchar(50) NOT NULL COMMENT '卖家',
  `jiaoyishijian` varchar(25) NOT NULL COMMENT '交易时间',
  `shenqingzhuangtai` varchar(255) NOT NULL COMMENT '申请状态',
  `beizhu` text NOT NULL COMMENT '备注',
  `shenqingren` varchar(50) NOT NULL COMMENT '申请人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `jiaoyishenqing_wupinxinxiid_index` (`wupinxinxiid`),
  KEY `jiaoyishenqing_fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiaoyishenqing
-- ----------------------------
INSERT INTO `jiaoyishenqing` VALUES ('18', '7', '121121376412', '1', '联想(Lenovo)天逸510S锐龙版', 'upload/20201211/e4268c5a-a0dc-48c7-a4c8-0626e55258bd.png', '1500.00', '宿舍区B栋 一楼', '003', '2020-12-12T16:00:00.000Z', '同意', '11', '001', '2021-01-23 19:37:48');
INSERT INTO `jiaoyishenqing` VALUES ('20', '8', '121121426764', '1', '佳能（Canon）PowerShot G7 X', 'upload/20201211/84bd388d-ab07-48f8-9e55-fc9fa31ac217.png', '3000.00', '宿舍区A栋一楼', '001', '2020-12-12T11:57:51.000Z', '不同意', '1111111111111', '003', '2021-01-23 19:57:55');
INSERT INTO `jiaoyishenqing` VALUES ('21', '8', '121121426764', '1', '佳能（Canon）PowerShot G7 X', 'upload/20201211/84bd388d-ab07-48f8-9e55-fc9fa31ac217.png', '3000.00', '宿舍区A栋一楼', '001', '2020-12-12T11:59:00.000Z', '同意', '2222222222222', '003', '2021-01-23 19:59:03');
INSERT INTO `jiaoyishenqing` VALUES ('22', '2', '121120493451', '3', '斯伯丁Spalding篮球', 'upload/20210123/ce1778ac-9283-4dd3-8655-8494791a75e1.png', '100.00', '篮球场1号场', '002', '2021-01-23 21:09:26', '同意', 'xxx', '001', '2021-01-23 21:09:28');
INSERT INTO `jiaoyishenqing` VALUES ('23', '6', '121121327716', '4', '爱玛（AIMA门店直通车）', 'upload/20210123/f276ac43-c1ff-4ff2-905f-77076c1d1919.png', '1500.00', '宿舍区B栋一楼', '003', '2021-01-23 21:48:36', '同意', 'fewf', '002', '2021-01-23 21:48:37');

-- ----------------------------
-- Table structure for `lunbotu`
-- ----------------------------
DROP TABLE IF EXISTS `lunbotu`;
CREATE TABLE `lunbotu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `image` varchar(255) NOT NULL COMMENT '图片',
  `url` varchar(255) NOT NULL COMMENT '连接地址',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lunbotu
-- ----------------------------
INSERT INTO `lunbotu` VALUES ('1', '1', 'upload/20210123/d4ce8af3-c608-4c89-bd62-05d3cd75a5b7.png', '#', '2021-01-23 20:31:05');
INSERT INTO `lunbotu` VALUES ('2', '2', 'upload/20210123/515426b3-b9a9-4daf-9d6a-7260dc61f67c.png', '#', '2021-01-23 20:31:19');

-- ----------------------------
-- Table structure for `quxiaodingdan`
-- ----------------------------
DROP TABLE IF EXISTS `quxiaodingdan`;
CREATE TABLE `quxiaodingdan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wupindingdanid` int(10) unsigned NOT NULL COMMENT '物品订单id',
  `dingdanbianhao` varchar(50) NOT NULL COMMENT '订单编号',
  `wupinbianhao` varchar(50) NOT NULL COMMENT '物品编号',
  `wupinmingcheng` varchar(255) NOT NULL COMMENT '物品名称',
  `wupintupian` varchar(255) NOT NULL COMMENT '物品图片',
  `wupinjiage` decimal(18,2) NOT NULL COMMENT '物品价格',
  `jiaoyididian` varchar(255) NOT NULL COMMENT '交易地点',
  `jiaoyishijian` varchar(25) NOT NULL COMMENT '交易时间',
  `maijia` varchar(50) NOT NULL COMMENT '卖家',
  `xiadanren` varchar(50) NOT NULL COMMENT '下单人',
  `quxiaoyuanyin` text NOT NULL COMMENT '取消原因',
  `quxiaoren` varchar(50) NOT NULL COMMENT '取消人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `quxiaodingdan_wupindingdanid_index` (`wupindingdanid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quxiaodingdan
-- ----------------------------
INSERT INTO `quxiaodingdan` VALUES ('5', '13', '121219599237', '121121426764', '佳能（Canon）PowerShot G7 X', 'upload/20201211/84bd388d-ab07-48f8-9e55-fc9fa31ac217.png', '3000.00', '宿舍区A栋一楼', '2020-12-12T11:59:00.000Z', '001', '003', '不要了', '003', '2021-01-23 20:00:49');

-- ----------------------------
-- Table structure for `shenqingqueren`
-- ----------------------------
DROP TABLE IF EXISTS `shenqingqueren`;
CREATE TABLE `shenqingqueren` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jiaoyishenqingid` int(10) unsigned NOT NULL COMMENT '交易申请id',
  `wupinbianhao` varchar(50) NOT NULL COMMENT '物品编号',
  `wupinmingcheng` varchar(255) NOT NULL COMMENT '物品名称',
  `wupintupian` varchar(255) NOT NULL COMMENT '物品图片',
  `wupinjiage` decimal(18,2) NOT NULL COMMENT '物品价格',
  `jiaoyididian` varchar(255) NOT NULL COMMENT '交易地点',
  `maijia` varchar(50) NOT NULL COMMENT '卖家',
  `jiaoyishijian` varchar(25) NOT NULL COMMENT '交易时间',
  `shenqingren` varchar(50) NOT NULL COMMENT '申请人',
  `queren` varchar(255) NOT NULL COMMENT '确认',
  `beizhu` text NOT NULL COMMENT '备注',
  `querenren` varchar(50) NOT NULL COMMENT '确认人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `shenqingqueren_jiaoyishenqingid_index` (`jiaoyishenqingid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shenqingqueren
-- ----------------------------
INSERT INTO `shenqingqueren` VALUES ('13', '18', '121121376412', '联想(Lenovo)天逸510S锐龙版', 'upload/20201211/e4268c5a-a0dc-48c7-a4c8-0626e55258bd.png', '1500.00', '宿舍区B栋 一楼', '003', '2020-12-12T16:00:00.000Z', '001', '同意', '22', '003', '2021-01-23 19:38:47');
INSERT INTO `shenqingqueren` VALUES ('15', '20', '121121426764', '佳能（Canon）PowerShot G7 X', 'upload/20201211/84bd388d-ab07-48f8-9e55-fc9fa31ac217.png', '3000.00', '宿舍区A栋一楼', '001', '2020-12-12T11:57:51.000Z', '003', '不同意', '1111111111111', '001', '2021-01-23 19:58:17');
INSERT INTO `shenqingqueren` VALUES ('16', '21', '121121426764', '佳能（Canon）PowerShot G7 X', 'upload/20201211/84bd388d-ab07-48f8-9e55-fc9fa31ac217.png', '3000.00', '宿舍区A栋一楼', '001', '2020-12-12T11:59:00.000Z', '003', '同意', '2222222222222', '001', '2021-01-23 19:59:24');
INSERT INTO `shenqingqueren` VALUES ('17', '22', '121120493451', '斯伯丁Spalding篮球', 'upload/20210123/ce1778ac-9283-4dd3-8655-8494791a75e1.png', '100.00', '篮球场1号场', '002', '2021-01-23 21:09:26', '001', '同意', 'xxx', '002', '2021-01-23 21:18:29');
INSERT INTO `shenqingqueren` VALUES ('18', '23', '121121327716', '爱玛（AIMA门店直通车）', 'upload/20210123/f276ac43-c1ff-4ff2-905f-77076c1d1919.png', '1500.00', '宿舍区B栋一楼', '003', '2021-01-23 21:48:36', '002', '同意', 'fewf', '003', '2021-01-23 21:48:57');

-- ----------------------------
-- Table structure for `shoucangjilu`
-- ----------------------------
DROP TABLE IF EXISTS `shoucangjilu`;
CREATE TABLE `shoucangjilu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `xwid` int(10) unsigned NOT NULL,
  `biao` varchar(255) NOT NULL,
  `biaoti` varchar(255) NOT NULL,
  `url` varchar(512) NOT NULL,
  `ziduan` varchar(255) NOT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoucangjilu
-- ----------------------------
INSERT INTO `shoucangjilu` VALUES ('1', '001', '7', 'wupinxinxi', '联想(Lenovo)天逸510S锐龙版', 'http://localhost:8080/', 'wupinmingcheng', '2021-01-23 10:09:38');
INSERT INTO `shoucangjilu` VALUES ('2', '001', '6', 'wupinxinxi', '爱玛（AIMA门店直通车）', 'http://localhost:8080/', 'wupinmingcheng', '2021-01-23 17:07:35');
INSERT INTO `shoucangjilu` VALUES ('3', '001', '8', 'wupinxinxi', '佳能（Canon）PowerShot G7 X', 'http://localhost:8080/', 'wupinmingcheng', '2021-01-23 20:13:29');
INSERT INTO `shoucangjilu` VALUES ('4', '003', '8', 'wupinxinxi', '佳能（Canon）PowerShot G7 X', 'http://localhost:8080/', 'wupinmingcheng', '2021-01-23 21:52:09');

-- ----------------------------
-- Table structure for `token`
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `token` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'token值',
  `session` text COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `cx` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `login` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `valueid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `token_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'token有效期',
  PRIMARY KEY (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('8TR3G8WMYS5O3H4G5SLRBGQVQ9OQ82W3', '{\"cx\":\"管理员\",\"addtime\":\"2020-12-11 11:43:20.0\",\"id\":1,\"pwd\":\"admin\",\"login\":\"管理员\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2021-01-23 21:52:26');
INSERT INTO `token` VALUES ('NI9I81PHIVG9KZ4IDXLGQLGPOGIMMG0B', '{\"touxiang\":\"upload/20201211/4e88e407-f007-42eb-a7e2-ca86475e490e.jpg\",\"mima\":\"003\",\"xingbie\":\"男\",\"login\":\"用户\",\"issh\":\"是\",\"xingming\":\"李四\",\"yonghuming\":\"003\",\"shouji\":\"13145612332\",\"cx\":\"用户\",\"addtime\":\"2020-12-11 21:18:51.0\",\"id\":3,\"youxiang\":\"4569874563@qq.com\",\"username\":\"003\"}', '用户', '用户', '003', '3', '2021-01-23 21:51:51');
INSERT INTO `token` VALUES ('AI82MTFPARGMDI0SDN08EXAWTROAI979', '{\"touxiang\":\"upload/20201211/cf5d6a56-8e2d-4313-8dbd-70121c14107c.jpg\",\"mima\":\"002\",\"xingbie\":\"女\",\"login\":\"用户\",\"issh\":\"是\",\"xingming\":\"小丽\",\"yonghuming\":\"002\",\"shouji\":\"13545612345\",\"cx\":\"用户\",\"addtime\":\"2020-12-11 20:37:59.0\",\"id\":2,\"youxiang\":\"4589654256@qq.com\",\"username\":\"002\"}', '用户', '用户', '002', '2', '2021-01-23 21:49:17');
INSERT INTO `token` VALUES ('0WS2R2YFZ2I0U0ZS1TE9464CQ4038W33', '{\"touxiang\":\"upload/20201211/4e88e407-f007-42eb-a7e2-ca86475e490e.jpg\",\"mima\":\"003\",\"xingbie\":\"男\",\"login\":\"用户\",\"issh\":\"是\",\"xingming\":\"李四\",\"yonghuming\":\"003\",\"shouji\":\"13145612332\",\"cx\":\"用户\",\"addtime\":\"2020-12-11 21:18:51.0\",\"id\":3,\"youxiang\":\"4569874563@qq.com\",\"username\":\"003\"}', '用户', '用户', '003', '3', '2021-01-23 21:48:47');
INSERT INTO `token` VALUES ('253F1XS2SSIA8F45SHW2Q3DO50CZHH99', '{\"touxiang\":\"upload/20201211/cf5d6a56-8e2d-4313-8dbd-70121c14107c.jpg\",\"mima\":\"002\",\"xingbie\":\"女\",\"login\":\"用户\",\"issh\":\"是\",\"xingming\":\"小丽\",\"yonghuming\":\"002\",\"shouji\":\"13545612345\",\"cx\":\"用户\",\"addtime\":\"2020-12-11 20:37:59.0\",\"id\":2,\"youxiang\":\"4589654256@qq.com\",\"username\":\"002\"}', '用户', '用户', '002', '2', '2021-01-23 21:48:21');
INSERT INTO `token` VALUES ('WKR6DG4FXSOFNN4FQH2KQUF7XXRG6V3C', '{\"cx\":\"管理员\",\"addtime\":\"2020-12-11 11:43:20.0\",\"id\":1,\"pwd\":\"admin\",\"login\":\"管理员\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2021-01-23 21:47:26');
INSERT INTO `token` VALUES ('GX7T69DKMH9R36GW72G6P5PQDB3ESCNB', '{\"touxiang\":\"upload/20201211/7d6c9b53-8fc6-44fb-ad7d-f9adca41595b.jpg\",\"mima\":\"001\",\"xingbie\":\"男\",\"login\":\"用户\",\"issh\":\"是\",\"xingming\":\"张三\",\"yonghuming\":\"001\",\"shouji\":\"13312345621\",\"cx\":\"用户\",\"addtime\":\"2020-12-11 20:37:05.0\",\"id\":1,\"youxiang\":\"54564666@qq.com\",\"username\":\"001\"}', '用户', '用户', '001', '1', '2021-01-23 21:46:14');
INSERT INTO `token` VALUES ('335TDVRG8DZGUPV690IZALYBYQN3N8RX', '{\"addtime\":\"2020-12-11 11:43:20.0\",\"id\":1,\"pwd\":\"admin\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2021-01-23 21:39:23');
INSERT INTO `token` VALUES ('7TIK7ISQGDUYGEMN8S6N6K397E8YSWCW', '{\"cx\":\"管理员\",\"addtime\":\"2020-12-11 11:43:20.0\",\"id\":1,\"pwd\":\"admin\",\"login\":\"管理员\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2021-01-23 21:44:40');
INSERT INTO `token` VALUES ('SORL1BE506G18YGL7T0UD2VR2VAWPA2I', '{\"cx\":\"管理员\",\"addtime\":\"2020-12-11 11:43:20.0\",\"id\":1,\"pwd\":\"admin\",\"login\":\"管理员\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2021-01-23 21:27:26');
INSERT INTO `token` VALUES ('F8VLC5YVZYV0RT4572Z40I2HP23GFY0E', '{\"addtime\":\"2020-12-11 20:37:05.0\",\"id\":1,\"issh\":\"是\",\"mima\":\"001\",\"shouji\":\"13312345621\",\"touxiang\":\"upload/20201211/7d6c9b53-8fc6-44fb-ad7d-f9adca41595b.jpg\",\"xingbie\":\"男\",\"xingming\":\"张三\",\"yonghuming\":\"001\",\"youxiang\":\"54564666@qq.com\"}', '用户', '用户', '001', '1', '2021-01-23 21:27:00');
INSERT INTO `token` VALUES ('UAD3QSKXUIBDMZ3HM9H144F3PG5YNG5T', '{\"touxiang\":\"upload/20201211/cf5d6a56-8e2d-4313-8dbd-70121c14107c.jpg\",\"mima\":\"002\",\"xingbie\":\"女\",\"login\":\"用户\",\"issh\":\"是\",\"xingming\":\"小丽\",\"yonghuming\":\"002\",\"shouji\":\"13545612345\",\"cx\":\"用户\",\"addtime\":\"2020-12-11 20:37:59.0\",\"id\":2,\"youxiang\":\"4589654256@qq.com\",\"username\":\"002\"}', '用户', '用户', '002', '2', '2021-01-23 21:19:05');
INSERT INTO `token` VALUES ('TNNRGMFOMQ2QTENC1GK1F9SBFOZWF7FI', '{\"touxiang\":\"upload/20201211/7d6c9b53-8fc6-44fb-ad7d-f9adca41595b.jpg\",\"mima\":\"001\",\"xingbie\":\"男\",\"login\":\"用户\",\"issh\":\"是\",\"xingming\":\"张三\",\"yonghuming\":\"001\",\"shouji\":\"13312345621\",\"cx\":\"用户\",\"addtime\":\"2020-12-11 20:37:05.0\",\"id\":1,\"youxiang\":\"54564666@qq.com\",\"username\":\"001\"}', '用户', '用户', '001', '1', '2021-01-23 21:18:46');
INSERT INTO `token` VALUES ('FQWFNOM3NZ66P38YIY8ZSEGGR3AESN52', '{\"touxiang\":\"upload/20201211/cf5d6a56-8e2d-4313-8dbd-70121c14107c.jpg\",\"mima\":\"002\",\"xingbie\":\"女\",\"login\":\"用户\",\"issh\":\"是\",\"xingming\":\"小丽\",\"yonghuming\":\"002\",\"shouji\":\"13545612345\",\"cx\":\"用户\",\"addtime\":\"2020-12-11 20:37:59.0\",\"id\":2,\"youxiang\":\"4589654256@qq.com\",\"username\":\"002\"}', '用户', '用户', '002', '2', '2021-01-23 21:18:17');
INSERT INTO `token` VALUES ('O6SCTF1DV71MZGMVNC0CHWR7M2F1VG8A', '{\"addtime\":\"2020-12-11 20:37:05.0\",\"id\":1,\"issh\":\"是\",\"mima\":\"001\",\"shouji\":\"13312345621\",\"touxiang\":\"upload/20201211/7d6c9b53-8fc6-44fb-ad7d-f9adca41595b.jpg\",\"xingbie\":\"男\",\"xingming\":\"张三\",\"yonghuming\":\"001\",\"youxiang\":\"54564666@qq.com\"}', '用户', '用户', '001', '1', '2021-01-23 21:11:40');
INSERT INTO `token` VALUES ('X8FTZPGF1ZYENMB1CXSKEH5LEZXGCH8M', '{\"touxiang\":\"upload/20201211/cf5d6a56-8e2d-4313-8dbd-70121c14107c.jpg\",\"mima\":\"002\",\"xingbie\":\"女\",\"login\":\"用户\",\"issh\":\"是\",\"xingming\":\"小丽\",\"yonghuming\":\"002\",\"shouji\":\"13545612345\",\"cx\":\"用户\",\"addtime\":\"2020-12-11 20:37:59.0\",\"id\":2,\"youxiang\":\"4589654256@qq.com\",\"username\":\"002\"}', '用户', '用户', '002', '2', '2021-01-23 21:08:18');
INSERT INTO `token` VALUES ('ZQTM4KD5Z8ODFEPZB8PRV53HTG2WXMGO', '{\"addtime\":\"2020-12-11 20:37:05.0\",\"id\":1,\"issh\":\"是\",\"mima\":\"001\",\"shouji\":\"13312345621\",\"touxiang\":\"upload/20201211/7d6c9b53-8fc6-44fb-ad7d-f9adca41595b.jpg\",\"xingbie\":\"男\",\"xingming\":\"张三\",\"yonghuming\":\"001\",\"youxiang\":\"54564666@qq.com\"}', '用户', '用户', '001', '1', '2021-01-23 21:07:35');
INSERT INTO `token` VALUES ('TY8M0C4LGGBHHS7P4E319038UXOE993I', '{\"addtime\":\"2020-12-11 11:43:20.0\",\"id\":1,\"pwd\":\"admin\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2021-01-23 21:05:00');

-- ----------------------------
-- Table structure for `wupindingdan`
-- ----------------------------
DROP TABLE IF EXISTS `wupindingdan`;
CREATE TABLE `wupindingdan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shenqingquerenid` int(10) unsigned NOT NULL COMMENT '申请确认id',
  `dingdanbianhao` varchar(50) NOT NULL COMMENT '订单编号',
  `wupinbianhao` varchar(50) NOT NULL COMMENT '物品编号',
  `wupinmingcheng` varchar(255) NOT NULL COMMENT '物品名称',
  `wupintupian` varchar(255) NOT NULL COMMENT '物品图片',
  `wupinjiage` decimal(18,2) NOT NULL COMMENT '物品价格',
  `jiaoyididian` varchar(255) NOT NULL COMMENT '交易地点',
  `jiaoyishijian` varchar(25) NOT NULL COMMENT '交易时间',
  `maijia` varchar(50) NOT NULL COMMENT '卖家',
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `dianhua` varchar(50) NOT NULL COMMENT '电话',
  `dingdanzhuangtai` varchar(255) NOT NULL COMMENT '订单状态',
  `beizhu` text NOT NULL COMMENT '备注',
  `xiadanren` varchar(50) NOT NULL COMMENT '下单人',
  `iszf` varchar(10) NOT NULL DEFAULT '否' COMMENT '是否支付',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `wupindingdan_shenqingquerenid_index` (`shenqingquerenid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wupindingdan
-- ----------------------------
INSERT INTO `wupindingdan` VALUES ('11', '13', '12121947352', '121121376412', '联想(Lenovo)天逸510S锐龙版', 'upload/20201211/e4268c5a-a0dc-48c7-a4c8-0626e55258bd.png', '1500.00', '宿舍区B栋 一楼', '2020-12-12T16:00:00.000Z', '003', '张三', '13112345678', '已完成', 'qq', '001', '是', '2021-01-23 19:47:45');
INSERT INTO `wupindingdan` VALUES ('13', '16', '121219599237', '121121426764', '佳能（Canon）PowerShot G7 X', 'upload/20201211/84bd388d-ab07-48f8-9e55-fc9fa31ac217.png', '3000.00', '宿舍区A栋一楼', '2020-12-12T11:59:00.000Z', '001', '李四', '13456456123', '已取消', '2222222222222', '003', '否', '2021-01-23 20:00:12');
INSERT INTO `wupindingdan` VALUES ('14', '17', '012321192063', '121120493451', '斯伯丁Spalding篮球', 'upload/20210123/ce1778ac-9283-4dd3-8655-8494791a75e1.png', '100.00', '篮球场1号场', '2021-01-23 21:09:26', '002', '张三', '13600000000', '已支付', 'xxx', '001', '是', '2021-01-23 21:19:54');
INSERT INTO `wupindingdan` VALUES ('15', '18', '012321494390', '121121327716', '爱玛（AIMA门店直通车）', 'upload/20210123/f276ac43-c1ff-4ff2-905f-77076c1d1919.png', '1500.00', '宿舍区B栋一楼', '2021-01-23 21:48:36', '003', '里奎斯', '13852326650', '已完成', 'fewf', '002', '是', '2021-01-23 21:49:42');

-- ----------------------------
-- Table structure for `wupinfenlei`
-- ----------------------------
DROP TABLE IF EXISTS `wupinfenlei`;
CREATE TABLE `wupinfenlei` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fenleimingcheng` varchar(255) NOT NULL COMMENT '分类名称',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wupinfenlei
-- ----------------------------
INSERT INTO `wupinfenlei` VALUES ('1', '电子产品', '2021-01-23 20:14:03');
INSERT INTO `wupinfenlei` VALUES ('2', '学习用品', '2021-01-23 20:14:11');
INSERT INTO `wupinfenlei` VALUES ('3', '体育用品', '2021-01-23 20:14:25');
INSERT INTO `wupinfenlei` VALUES ('4', '骑行运动', '2021-01-23 20:14:39');
INSERT INTO `wupinfenlei` VALUES ('5', '测试分类', '2021-01-23 21:45:58');

-- ----------------------------
-- Table structure for `wupinxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `wupinxinxi`;
CREATE TABLE `wupinxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wupinbianhao` varchar(50) NOT NULL COMMENT '物品编号',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `wupinmingcheng` varchar(255) NOT NULL COMMENT '物品名称',
  `wupintupian` varchar(255) NOT NULL COMMENT '物品图片',
  `wupinjiage` decimal(18,2) NOT NULL COMMENT '物品价格',
  `lianxidianhua` varchar(50) NOT NULL COMMENT '联系电话',
  `lianxiren` varchar(50) NOT NULL COMMENT '联系人',
  `jiaoyididian` varchar(255) NOT NULL COMMENT '交易地点',
  `xinjiuchengdu` varchar(255) NOT NULL COMMENT '新旧程度',
  `wupinzhuangtai` varchar(255) NOT NULL COMMENT '物品状态',
  `wupinjieshao` longtext NOT NULL COMMENT '物品介绍',
  `maijia` varchar(50) NOT NULL COMMENT '卖家',
  `issh` varchar(10) NOT NULL DEFAULT '否' COMMENT '是否审核',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `wupinxinxi_fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wupinxinxi
-- ----------------------------
INSERT INTO `wupinxinxi` VALUES ('1', '121120414856', '4', '永久自行车山地车', 'upload/20210123/0c0a1073-f7d3-47c6-b027-1b08ee4d73ab.png', '800.00', '13212345678', '张三', '宿舍区A栋一楼', '8成新', '在售', '<ul class=\"parameter2 p-parameter-list\">\n<li title=\"永久自行车山地车男女铝合金单车公路车中小学生少年成人运动越野赛车旅行车24寸/26寸变速山地自行车 顶配【十刀轮】黑红色 30速26英寸【155cm-185cm】\">商品名称：永久自行车山地车男女铝合金单车公路车中小学生少年成人运动越野赛车旅行车24寸/26寸变速山地自行车 顶配【十刀轮】黑红色 30速26英寸【155cm-185cm】</li>\n<li title=\"63181433073\">商品编号：63181433073</li>\n<li title=\"永久专卖店\">店铺：&nbsp;<a href=\"https://foreveryj.jd.com/\" target=\"_blank\" rel=\"noopener\">永久专卖店</a></li>\n<li title=\"15.0kg\">商品毛重：15.0kg</li>\n<li title=\"中国大陆\">商品产地：中国大陆</li>\n<li title=\"MX770\">货号：MX770</li>\n<li title=\"碟刹\">制动系统：碟刹</li>\n<li title=\"铝合金\">轮圈材质：铝合金</li>\n<li title=\"不可锁死避震前叉\">前叉类型：不可锁死避震前叉</li>\n<li title=\"2019年冬季\">上市时间：2019年冬季</li>\n<li title=\"硬尾车架\">车架类型：硬尾车架</li>\n<li title=\"16-20kg\">重量：16-20kg</li>\n<li title=\"不可折叠\">是否可折叠：不可折叠</li>\n<li title=\"铝合金\">车架材质：铝合金</li>\n<li title=\"男士\">适用人群：男士</li>\n<li title=\"直/平把\">车把类型：直/平把</li>\n<li title=\"日常通勤\">产品定位：日常通勤</li>\n<li title=\"日常通勤\"><img src=\"/upload/20210123/7d71fdda-f7c3-4fae-8078-7c758321c3ed.png\" /></li>\n</ul>', '001', '是', '2021-01-23 20:45:24');
INSERT INTO `wupinxinxi` VALUES ('2', '121120493451', '3', '斯伯丁Spalding篮球', 'upload/20210123/ce1778ac-9283-4dd3-8655-8494791a75e1.png', '100.00', '13612345678', '小丽', '篮球场1号场', '9成新', '交易中', '<ul class=\"parameter2 p-parameter-list\">\n<li title=\"斯伯丁74-716A\">商品名称：斯伯丁74-716A</li>\n<li title=\"1340335\">商品编号：1340335</li>\n<li title=\"0.61kg\">商品毛重：0.61kg</li>\n<li title=\"福建省\">商品产地：福建省</li>\n<li title=\"74-716A\">货号：74-716A</li>\n<li title=\"室内篮球\">类别：室内篮球</li>\n<li title=\"PU\">材质：PU</li>\n<li title=\"7号/标准\">规格：7号/标准</li>\n<li title=\"7号/标准\"><img src=\"/upload/20210123/383d3f39-3c3c-4a4e-9891-10e5931fa44e.png\" /></li>\n</ul>', '002', '是', '2021-01-23 20:52:05');
INSERT INTO `wupinxinxi` VALUES ('3', '121120531034', '1', '联想(Lenovo)小新Air14', 'upload/20210123/c666d893-fb9a-4731-97a8-551999361eba.png', '3000.00', '13512345678', '小丽', '教学楼A栋一楼', '9成新', '在售', '<ul class=\"parameter2 p-parameter-list\">\n<li title=\"联想小新Air14\">商品名称：联想小新Air14</li>\n<li title=\"100007218425\">商品编号：100007218425</li>\n<li title=\"2.15kg\">商品毛重：2.15kg</li>\n<li title=\"中国大陆\">商品产地：中国大陆</li>\n<li title=\"集成显卡\">显卡类别：集成显卡</li>\n<li title=\"全高清屏（1920&times;1080）\">分辨率：全高清屏（1920&times;1080）</li>\n<li title=\"轻薄笔记本\">类型：轻薄笔记本</li>\n<li title=\"windows 10 带Office\">系统：windows 10 带Office</li>\n<li title=\"15.1mm&mdash;18.0mm\">厚度：15.1mm&mdash;18.0mm</li>\n<li title=\"金属材质\">机身材质：金属材质</li>\n<li title=\"AMD\">显卡芯片供应商：AMD</li>\n<li title=\"14.0英寸-14.9英寸\">屏幕尺寸：14.0英寸-14.9英寸</li>\n<li title=\"联想 - 小新Air\">系列：联想 - 小新Air</li>\n<li title=\"1-1.5KG\">裸机重量：1-1.5KG</li>\n<li title=\"100%sRGB\">屏幕色域：100%sRGB</li>\n<li title=\"无机械硬盘\">机械硬盘：无机械硬盘</li>\n<li title=\"无机械硬盘\"><img src=\"/upload/20210123/7223f0c1-f791-4d68-8fa5-923c3cf4973f.png\" /></li>\n</ul>', '002', '是', '2021-01-23 21:12:29');
INSERT INTO `wupinxinxi` VALUES ('4', '121121125911', '1', 'Apple 苹果 iPhone 11', 'upload/20210123/2413681f-68fa-4453-96fe-152f5e50a0b3.png', '3500.00', '13512345678', '小丽', '宿舍区B栋三楼', '8成新', '在售', '<ul class=\"parameter2 p-parameter-list\">\n<li title=\"AppleiPhone 11\">商品名称：AppleiPhone 11</li>\n<li title=\"56649697483\">商品编号：56649697483</li>\n<li title=\"0.9kg\">商品毛重：0.9kg</li>\n<li title=\"其他\">CPU型号：其他</li>\n<li title=\"其他\">运行内存：其他</li>\n<li title=\"256GB\">机身存储：256GB</li>\n<li title=\"不支持存储卡\">存储卡：不支持存储卡</li>\n<li title=\"后置双摄\">摄像头数量：后置双摄</li>\n<li title=\"1200万像素\">后摄主摄像素：1200万像素</li>\n<li title=\"1200万像素\">前摄主摄像素：1200万像素</li>\n<li title=\"6.1英寸\">主屏幕尺寸（英寸）：6.1英寸</li>\n<li title=\"全高清FHD+\">分辨率：全高清FHD+</li>\n<li title=\"其它屏幕比例\">屏幕比例：其它屏幕比例</li>\n<li title=\"刘海屏\">屏幕前摄组合：刘海屏</li>\n<li title=\"其他\">充电器：其他</li>\n<li title=\"iOS(Apple)\">操作系统：iOS(Apple)</li>\n<li title=\"iOS(Apple)\"><img src=\"/upload/20210123/8a37a5bb-7a46-4d70-a49f-4c4006ee37fb.png\" /></li>\n</ul>', '002', '是', '2021-01-23 21:17:25');
INSERT INTO `wupinxinxi` VALUES ('5', '121121208884', '2', '小米 翻译机', 'upload/20210123/ef759c6a-d970-4515-a056-13dc9b6b9878.png', '800.00', '13212345678', '李四', '教学楼A栋一楼', '8成新', '在售', '<ul class=\"parameter2 p-parameter-list\">\n<li title=\"小米小爱老师4G黑色F6M1AB\">商品名称：小米小爱老师4G黑色F6M1AB</li>\n<li title=\"100003688219\">商品编号：100003688219</li>\n<li title=\"230.00g\">商品毛重：230.00g</li>\n<li title=\"中国大陆\">商品产地：中国大陆</li>\n<li title=\"4英寸\">屏幕尺寸：4英寸</li>\n<li title=\"翻译机\">硬件形态：翻译机</li>\n<li title=\"英语，日语，韩语，德语\">离线语种：英语，日语，韩语，德语</li>\n<li title=\"双麦\">收音方案：双麦</li>\n<li title=\"随身WiFi，全球上网，蓝牙连接\">产品特性：随身WiFi，全球上网，蓝牙连接</li>\n<li title=\"31-40种\">在线语种：31-40种</li>\n<li title=\"离线翻译\">拍照翻译：离线翻译</li>\n<li title=\"WIFI，SIM卡（国内），SIM卡（国外 ），手机热点\">联网方式：WIFI，SIM卡（国内）</li>\n<li title=\"WIFI，SIM卡（国内），SIM卡（国外 ），手机热点\"><img src=\"/upload/20210123/2ac645de-ccd7-4b95-ba3c-16996c139024.png\" /></li>\n</ul>', '003', '是', '2021-01-23 21:32:39');
INSERT INTO `wupinxinxi` VALUES ('6', '121121327716', '4', '爱玛（AIMA门店直通车）', 'upload/20210123/f276ac43-c1ff-4ff2-905f-77076c1d1919.png', '1500.00', '13456456321', '李四', '宿舍区B栋一楼', '8成新', '已售', '<ul class=\"parameter2 p-parameter-list\">\n<li title=\"爱玛（AIMA）小蜜豆\">商品名称：爱玛（AIMA）小蜜豆</li>\n<li title=\"69386122011\">商品编号：69386122011</li>\n<li title=\"爱玛电动车官方旗舰店\">店铺：&nbsp;<a href=\"https://aimatech.jd.com/\" target=\"_blank\" rel=\"noopener\">爱玛电动车官方旗舰店</a></li>\n<li title=\"45.0kg\">商品毛重：45.0kg</li>\n<li title=\"中国大陆\">商品产地：中国大陆</li>\n<li title=\"TDT1109Z\">货号：TDT1109Z</li>\n<li title=\"非上门维修\">维修方式：非上门维修</li>\n<li title=\"两轮\">款式：两轮</li>\n<li title=\"不可折叠\">是否可折叠：不可折叠</li>\n<li title=\"其它\">变速档位：其它</li>\n<li title=\"支持脚踏\">是否支持脚踏：支持脚踏</li>\n<li title=\"铅酸电池\">电池类型：铅酸电池</li>\n<li title=\"2020年春季\">上市时间：2020年春季</li>\n<li title=\"40-55kg\">重量：40-55kg</li>\n<li title=\"通用\">适用人群：通用</li>\n<li title=\"48V\">电池电压：48V</li>\n<li title=\"不可拆卸\">电池能否拆卸：不可拆卸</li>\n<li title=\"CCC认证\">标准认证：CCC认证</li>\n<li title=\"31-40km\">理论续航：31-40km</li>\n<li title=\"电动自行车\">车型：电动自行车</li>\n<li title=\"25km/h以下\">理论时速：25km/h以下</li>\n<li title=\"25km/h以下\"><img src=\"/upload/20210123/54c8f623-1cbd-43f6-a6a9-52fe11bb3e89.png\" /></li>\n</ul>', '003', '是', '2021-01-23 21:36:48');
INSERT INTO `wupinxinxi` VALUES ('7', '121121376412', '1', '联想(Lenovo)天逸510S锐龙版', 'upload/20210123/0bd65295-f902-4ccc-a537-43b023258abb.png', '1500.00', '13512345678', '李四', '宿舍区B栋 一楼', '7成新', '已售', '<ul class=\"parameter2 p-parameter-list\">\n<li title=\"联想联想(Lenovo)天逸510S\">商品名称：联想联想(Lenovo)天逸510S</li>\n<li title=\"100007238653\">商品编号：100007238653</li>\n<li title=\"5.18kg\">商品毛重：5.18kg</li>\n<li title=\"中国大陆\">商品产地：中国大陆</li>\n<li title=\"8G\">内存容量：8G</li>\n<li title=\"20-21.5英寸\">显示器尺寸：20-21.5英寸</li>\n<li title=\"主机+显示器\">电脑形态：主机+显示器</li>\n<li title=\"10L以下\">机箱大小：10L以下</li>\n<li title=\"AMD\">处理器：AMD</li>\n<li title=\"集成显卡\">显卡：集成显卡</li>\n<li title=\"1TB HDD\">硬盘容量：1TB HDD</li>\n<li title=\"商用办公\">用途：商用办公</li>\n<li title=\"Windows 10\">系统：Windows 10</li>\n</ul>\n<p>&nbsp;</p>\n<p><img src=\"/upload/20210123/cd1a66d6-b3ae-4e4a-8b03-9f7de856b526.png\" /></p>', '003', '是', '2021-01-23 21:38:43');
INSERT INTO `wupinxinxi` VALUES ('8', '121121426764', '1', '佳能（Canon）PowerShot G7 X', 'upload/20210123/b92ade64-ee9b-49dd-ba19-9393b98edb76.png', '3000.00', '13112345678', '张三', '宿舍区A栋一楼', '8成新', '在售', '<ul id=\"parameter-brand\" class=\"p-parameter-list\">\n<li title=\"佳能（Canon）\">品牌：&nbsp;<a href=\"https://list.jd.com/list.html?cat=652,654,831&amp;ev=exbrand_8983\" target=\"_blank\" rel=\"noopener\">佳能（Canon）</a></li>\n</ul>\n<ul class=\"parameter2 p-parameter-list\">\n<li title=\"佳能PowerShot G7 X Mark II\">商品名称：佳能PowerShot G7 X Mark II</li>\n<li title=\"3114622\">商品编号：3114622</li>\n<li title=\"0.57kg\">商品毛重：0.57kg</li>\n<li title=\"日本\">商品产地：日本</li>\n<li title=\"黑色\">颜色：黑色</li>\n<li title=\"1英寸\">传感器尺寸：1英寸</li>\n<li title=\"大底卡片，WIFI连接，经典复古\">特点：大底卡片，WIFI连接，经典复古</li>\n<li title=\"2001万以上\">像素：2001万以上</li>\n<li title=\"2001万以上\"><img src=\"/upload/20210123/c544312e-e65c-4cfd-9563-7d03376fba35.png\" /></li>\n</ul>', '001', '是', '2021-01-23 21:44:34');

-- ----------------------------
-- Table structure for `xinwenfenlei`
-- ----------------------------
DROP TABLE IF EXISTS `xinwenfenlei`;
CREATE TABLE `xinwenfenlei` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fenleimingcheng` varchar(50) NOT NULL COMMENT '分类名称',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xinwenfenlei
-- ----------------------------
INSERT INTO `xinwenfenlei` VALUES ('1', '站内新闻', '2021-01-23 11:52:12');
INSERT INTO `xinwenfenlei` VALUES ('2', '行业资讯', '2021-01-23 12:01:29');
INSERT INTO `xinwenfenlei` VALUES ('3', '测试', '2021-01-23 21:47:47');

-- ----------------------------
-- Table structure for `xinwenxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `xinwenxinxi`;
CREATE TABLE `xinwenxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `biaoti` varchar(255) NOT NULL COMMENT '标题',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `tianjiaren` varchar(50) NOT NULL COMMENT '添加人',
  `neirong` longtext NOT NULL COMMENT '内容',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `dianjilv` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xinwenxinxi_fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xinwenxinxi
-- ----------------------------
INSERT INTO `xinwenxinxi` VALUES ('1', '惊呆了！看看\"别人的老师\"是啥样1', '2', 'upload/20210123/93fdf4c7-0030-426b-bfec-cb7998ede486.png', 'admin', '<div>&emsp;&emsp;你还记得你的恩师们吗？我们总是羡慕&ldquo;别人的老师&rdquo;，但是当这些或有才或美貌的老师都来教你时，你可会认真<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_82.html\" target=\"_blank\" rel=\"noopener\">学习</a>？</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>&emsp;&emsp;<strong>别人的语文老师</strong></div>\n<div>&nbsp;</div>\n<div>&emsp;&emsp;传说中会让学生听课上瘾的语文老师，同样是一个<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_79.html\" target=\"_blank\" rel=\"noopener\">阅读</a>写作教育专家。人称是个智慧、博学、风趣、有思想、语文教育天才。</div>\n<div>&nbsp;</div>\n<div>&emsp;&emsp;现在的学生对老师的要求越来越高了，博学多才只能算是基础技能，关键如果能像个&ldquo;逗比&rdquo;可能才会受学生欢迎。</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>&emsp;&emsp;<strong>别人的数学老师</strong></div>\n<div>&nbsp;</div>\n<div>&emsp;&emsp;最近在网络上很红的数学老师，是韩国首尔世宗高中的一位暖男数学老师，身高186cm。</div>\n<div>&nbsp;</div>\n<div>&emsp;&emsp;长着大长腿且帅的数学老师的课很受欢迎，说明这果然是个看脸的世界。不过你们真的是去上课的？</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>&emsp;&emsp;<strong>别人的英语老师</strong></div>\n<div>&nbsp;</div>\n<div>&emsp;&emsp;近日，一组<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_112.html\" target=\"_blank\" rel=\"noopener\">福建</a>工程学院英语老师照片遭曝光，因其清秀可人迅速在网络爆红，网友纷纷追捧，很多人戏称其为&ldquo;女神张&rdquo;。据了解，&ldquo;女神张&rdquo;23岁，1991年出生，身高160cm，体重42公斤，金牛座，还是一位骨灰级的DOTA粉。</div>\n<div>&nbsp;</div>\n<div>&emsp;&emsp;有网友评论，有这样的老师还怕四<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_78.html\" target=\"_blank\" rel=\"noopener\">六级</a>不过？小编想问，你确定你会按时上课保过四六级？</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>&emsp;&emsp;<strong>别人的物理老师</strong></div>\n<div>&nbsp;</div>\n<div>&emsp;&emsp;去年万圣节某物理老师花了两周自制了小黄人装备，如此有童心的且手工能力超强的老师被大家认为简直是开挂了。</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>&nbsp;</div>\n<div>&emsp;&emsp;<strong>别人的化学老师</strong></div>\n<div>&nbsp;</div>\n<div>&emsp;&emsp;国外的一位化学教授为了提高学生们对化学的兴趣，结果就穿成这样给同学们上课。</div>\n<div>&nbsp;</div>\n<div>&emsp;&emsp;这一点国内的老师真的可以学习一下，身临其境有木有！</div>\n<div>&nbsp;</div>\n<div><img title=\"惊呆了！看看&quot;别人的老师&quot;是啥样\" src=\"./upload/1607689067208.png\" alt=\"惊呆了！看看&quot;别人的老师&quot;是啥样\" border=\"0\" /></div>', '2021-01-23 20:17:47', '0');
INSERT INTO `xinwenxinxi` VALUES ('2', '熄灯后的大学『夜』生活，你都在干啥呢？1', '1', 'upload/20210123/288e3c47-995b-4737-b54d-999b22adf819.png', 'admin', '<div>熄灯后的大学『夜』生活，你都在干啥呢？</div>\n<div>&nbsp;</div>\n<div>　　时间一到，寝室熄灯，断电断网。对于每一个<a class=\"keyWord\" href=\"https://www.dxsbb.com/\" target=\"_blank\" rel=\"noopener\">大学生</a>来说，所有的娱乐活动都在此刻被终止。不管你是痛心疾首、鬼哭狼嚎，还是对着宿管大妈撒娇讨好，断电断网这事是大学校园里每天雷打不动的规则。那么，熄灯后，你都在干啥呢？是煲电话粥？玩手机？聊八卦？吃宵夜？还是&hellip;&hellip;</div>\n<p><strong>&nbsp;</strong></p>\n<p><strong>1、享受最清净的刷屏时光</strong></p>\n<div>&nbsp;</div>\n<div>　　熄灯后，如果你突然看见黑暗中冒着几簇微弱的灯光的话，那一定在离灯光不远处还有一张或傻笑或专注的脸。没错，这就是大家耳熟能详的手机族，也叫&ldquo;低头族&rdquo;。刷微博微信、人人网、QQ，逛各种论坛、帖吧。据说，熄灯后是最佳的刷新时间，只是流量有点伤不起而已。不管朋友圈里多热闹，寝室里总是悄无声息的，只有无线电波在运动着。</div>\n<div>　　</div>\n<div><strong>2、狗仔和星探的摇篮</strong></div>\n<div>&nbsp;</div>\n<div>　　说到八卦，男生寝室里女孩和<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_18.html\" target=\"_blank\" rel=\"noopener\">爱情</a>永远是不变的主题。给班级女生的容貌、身材排个名，聊聊各种女生身上的八卦都是常有的事儿。足球和游戏也是要的，几个哥们在一起谈论自己的那队，甚至因为支持不同的球队而发生一场&ldquo;厮杀&rdquo;。或者约好联合打游戏，分析今天的战绩，明早继续。</div>\n<div>&nbsp;</div>\n<div>　　女生们的八卦当然也包括爱情了。某某女生和男友吵架了，和寝室姐妹诉苦。这时，男生肯定会受到全寝室的攻击，纵使她男友身处千里之外，纵使她男友听不到，也要骂！最后得出一个所谓的&ldquo;真理&rdquo;：全天下的男人没有一个好东西。</div>\n<div>&nbsp;</div>\n<div>　　聊到某某和某某在一起了，女生则发挥了狗仔和星探的天赋，抖出各种料，来一句&ldquo;其实我早就发现他们在一起了！&rdquo;又或者淘宝、京东上逛到啥好的，寝室分享一下，&ldquo;这件衣服好评很多，要不要大家都来一件，还省邮费&rdquo;。</div>\n<div>&nbsp;</div>\n<div>　　谈论将来的前途也是有的，<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_41.html\" target=\"_blank\" rel=\"noopener\">考研</a>还是保研，出国还是留下，考<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_41.html\" target=\"_blank\" rel=\"noopener\">公务员</a>还是去<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_37.html\" target=\"_blank\" rel=\"noopener\">工作</a>，这些都是不久将要面对的问题。</div>\n<div>　　</div>\n<div><strong>3、吃货总是成对出现的</strong></div>\n<div>&nbsp;</div>\n<div>　　夜半时分，总是饿的，于是食物分享成为了中华<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_202.html\" target=\"_blank\" rel=\"noopener\">民族</a>的传统&ldquo;美德&rdquo;。话不多说，直接上图。</div>\n<div>&nbsp;</div>\n<div>　　常见的对话有：&ldquo;明天早饭吃什么呢？&rdquo;&ldquo;明天午饭吃什么呢？&rdquo;&ldquo;明天晚饭吃什么呢？&rdquo;&ldquo;集体打包吧&rdquo;&ldquo;明天好像下雨，一起点外卖吧&rdquo;&ldquo;我上午没课，要不要一起吃？&rdquo;。</div>\n<div>&nbsp;</div>\n<div>　　发挥想象力猜一下，上图是个啥？</div>\n<div>&nbsp;</div>\n<div>　　没错，这就是瓜子壳，千万别以为是小虫哦。别以为只有女生爱嗑瓜子，男生也很喜欢哦。</div>\n<div>&nbsp;</div>\n<div>　　亲，还记得红遍全国的《舌尖上的<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_159.html\" target=\"_blank\" rel=\"noopener\">宿舍</a>：泡面篇》吗？&ldquo;卤肉干拌面，入口润滑幼嫩，滋味浓郁；老坛酸菜面，口感爽脆，滋味酸辣，是大学生寝室中必备的看家菜肴&hellip;&hellip;&rdquo;</div>\n<div>&nbsp;</div>\n<div>　　泡面恒久远，一盆永流传！</div>', '2021-01-23 20:22:20', '2');
INSERT INTO `xinwenxinxi` VALUES ('4', '大学里，有这样一群人1', '2', 'upload/20210123/f43086fc-751a-47b6-a8ce-baa699eb490a.png', 'admin', '<div>　　大学里有这样一群人：他们重复着和高中一样的生活，日出而出，日落而归。&ldquo;教室&mdash;食堂&mdash;图<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_79.html\" target=\"_blank\" rel=\"noopener\">书</a>馆&mdash;<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_159.html\" target=\"_blank\" rel=\"noopener\">宿舍</a>&rdquo;四点一线，这是他们的一天。他们每天做着课本上大家认为单调无趣的习题，啃着大家认为都落满灰尘的图书馆<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_79.html\" target=\"_blank\" rel=\"noopener\">书籍</a>，他们将课本知识学的得滚瓜烂熟。大家认为他们的生活又回到了高中时代，就一个书呆子，没有一点乐趣；可是一到<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_17.html\" target=\"_blank\" rel=\"noopener\">考试</a>，他们便&ldquo;成为焦点&rdquo;成为其他同学眼中的&ldquo;大神&rdquo;，国家奖学金、一等奖学金总是花落他们家。他们喜欢做研究、做学问！<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_37.html\" target=\"_blank\" rel=\"noopener\">毕业</a>之后，顺利考上清华、北大、同济、浙大&hellip;&hellip;的<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_41.html\" target=\"_blank\" rel=\"noopener\">研究生</a>。</div>\n<div>&nbsp;</div>\n<div>　　大学里有这样一群人：<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_16.html\" target=\"_blank\" rel=\"noopener\">学生会</a>、<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_16.html\" target=\"_blank\" rel=\"noopener\">社团</a>是他们大展身手的地方，他们做了干事、部长、主席，他们拿学生会当成锻炼个人能力的地方，每一个小小的机会，他们都为之付出许多许多。在学校里，他们是风云人物，每个学院、每个系的人他们也认识很多很多人，毕业之后朋友遍天下。就这样他们毕业了，毕业后他们继续着大学的激情，不错过任何机会，<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_32.html\" target=\"_blank\" rel=\"noopener\">努力</a>开创自己的事业，或者进入<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_41.html\" target=\"_blank\" rel=\"noopener\">公务员</a>系统，不出几年略有名声&hellip;&hellip;</div>\n<div>&nbsp;</div>\n<div>　　大学里有这样一群人：他们忙于<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_36.html\" target=\"_blank\" rel=\"noopener\">兼职</a>、各种校园代理，将<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_36.html\" target=\"_blank\" rel=\"noopener\">赚钱</a>当成乐趣，将赚钱看成是一种本事，把接触不同的<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_37.html\" target=\"_blank\" rel=\"noopener\">工作</a>当成是每一个历练的机会，当然这些也占用了他们太多的时间，他们有时候也在思考：这样做值得吗。思考着思考着，就毕业了&hellip;&hellip;他们活的很现实，也很充实，他们也确实学到了课本上没有的东西。他们在自己&ldquo;工作&rdquo;的时候已经慢慢的了解了社会的冷暖以及所谓的潜规则，他们也算早一步踏入了社会。</div>\n<div>&nbsp;</div>\n<div>　　大学里有这样一群人：一开始，他们激情澎湃、斗志昂扬，学生会、社团、班委等等各种活动中都能看到他们的身影，但是他们看到了所谓的黑暗，或者认为自己就是一个打杂的，为了前途明智的&ldquo;全身而退&rdquo;，他们重新把重心放在了<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_82.html\" target=\"_blank\" rel=\"noopener\">学习</a>上，忙于专业学习，忙于GRE、雅思、托福等等，他们准备着另一条与众不同的路，对待身边的种种<a class=\"keyWord\" href=\"https://www.dxsbb.com/\" target=\"_blank\" rel=\"noopener\">大学生</a>为之趋之若鹜的诱惑、荣誉不为所动。他们有的只是坚定的目标和为之而不懈<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_32.html\" target=\"_blank\" rel=\"noopener\">奋斗</a>的毅力。大学毕业后，他们去了美国、法国、英国&hellip;&hellip;</div>\n<div>&nbsp;</div>\n<div>　　大学里有这样一群人：他们每天按时上下课，按时吃饭，按时回宿舍，按时做完老师布置的作业，参加学校以及学院硬性规定的事情。除此之外，学生工作、社团、兼职等等他们都不踏入一步，什么事情都与他们无关，闲暇之余在宿舍看看<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_45.html\" target=\"_blank\" rel=\"noopener\">电影</a>、看看小说，但是按时睡觉。也说不出他们哪儿不好，也说不出他们哪儿好。考试前他们也会熬夜看书，成绩不高不低，没有挂科也没有优秀。毕业时，他们忽然发现大学里没有留下他们的足迹，就这样他们拿着毕业<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_17.html\" target=\"_blank\" rel=\"noopener\">证书</a>走出了校门。</div>\n<div>&nbsp;</div>\n<div>　　大学里有这样一群人：他们认为来到了大学，就是来到了天堂，没有了父母&ldquo;讨厌逆耳&rdquo;的唠叨，没有了高中沉重的学业负担，大学就是他们&ldquo;自由飞翔&rdquo;的地方。宿舍是他们唯一活动的地方，一个豪华的网吧，电脑成了他们生活的全部，CS、CF、DOTA、魔兽世界等等才是他们的最爱，课堂对他们来说变得那么陌生，甚至没有见过某些课程的老师一眼，挂科也是他们的家常便饭。毕业的时候，他们两手空空走出大学之门-包括毕业证书。</div>\n<div>&nbsp;</div>\n<div>　　大学里有这样一群人：他们一来大学，为了摆脱寂寞、为了满足心理生理需求、为了找到一个共同奋斗的伴侣、为了&hellip;&hellip;很自然、也很容易地找到一个伴侣。于是，<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_18.html\" target=\"_blank\" rel=\"noopener\">情侣</a>的事情成了他们的所有，他们每天黏在一起，做着别人&ldquo;羡慕&rdquo;&ldquo;嫉妒&rdquo;的事情，就这样两个人怀着美好的憧憬、<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_32.html\" target=\"_blank\" rel=\"noopener\">梦想</a>到了毕业的时候&hellip;&hellip;当然在现实面前，很多时候，他们还是say goodbye 了。</div>\n<div>&nbsp;</div>\n<div>　　大学里有这样一群人，他们在高中是那么的向往<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_46.html\" target=\"_blank\" rel=\"noopener\">大学生活</a>，可是真正地来到了大学，却发现大学不是他们心目中的那个样，总是感觉自己被大学所欺骗，被生活所欺骗！就这样他们总是羡慕他的同学，羡慕别的大学，羡慕别的专业，其实他们连自己的专业<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_90.html\" target=\"_blank\" rel=\"noopener\">就业方向</a>，<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_90.html\" target=\"_blank\" rel=\"noopener\">就业前景</a>都不知道，<a class=\"keyWord\" href=\"https://www.dxsbb.com/news/list_4.html\" target=\"_blank\" rel=\"noopener\">大学四年</a>，就在这样羡慕着，自卑着完了.....</div>', '2021-01-23 20:27:54', '2');

-- ----------------------------
-- Table structure for `yonghu`
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `yonghuming` varchar(50) NOT NULL COMMENT '用户名',
  `mima` varchar(50) NOT NULL COMMENT '密码',
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `xingbie` varchar(255) NOT NULL COMMENT '性别',
  `shouji` varchar(50) NOT NULL COMMENT '手机',
  `youxiang` varchar(50) NOT NULL COMMENT '邮箱',
  `touxiang` varchar(255) NOT NULL COMMENT '头像',
  `issh` varchar(10) NOT NULL DEFAULT '否' COMMENT '是否审核',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', '001', '001', '张三', '男', '13312345621', '54564666@qq.com', 'upload/20201211/7d6c9b53-8fc6-44fb-ad7d-f9adca41595b.jpg', '是', '2021-01-23 20:37:05');
INSERT INTO `yonghu` VALUES ('2', '002', '002', '小丽', '女', '13545612345', '4589654256@qq.com', 'upload/20201211/cf5d6a56-8e2d-4313-8dbd-70121c14107c.jpg', '是', '2021-01-23 20:37:59');
INSERT INTO `yonghu` VALUES ('3', '003', '003', '李四', '男', '13145612332', '4569874563@qq.com', 'upload/20201211/4e88e407-f007-42eb-a7e2-ca86475e490e.jpg', '是', '2021-01-23 21:18:51');
INSERT INTO `yonghu` VALUES ('4', '666', '666', '张里', '男', '138999999999', '1244545515@qq.com', 'upload/20210123/6ead3cc5-1ba1-4c66-8ca3-7c42f945a91c.png', '否', '2021-01-23 21:51:05');

-- ----------------------------
-- Table structure for `youqinglianjie`
-- ----------------------------
DROP TABLE IF EXISTS `youqinglianjie`;
CREATE TABLE `youqinglianjie` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wangzhanmingcheng` varchar(50) NOT NULL COMMENT '网站名称',
  `wangzhi` varchar(50) NOT NULL COMMENT '网址',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of youqinglianjie
-- ----------------------------
INSERT INTO `youqinglianjie` VALUES ('1', '百度', 'http://www.baidu.com', '2021-01-23 11:50:59');
INSERT INTO `youqinglianjie` VALUES ('2', '谷歌', 'http://www.google.cn', '2021-01-23 11:50:59');
INSERT INTO `youqinglianjie` VALUES ('3', '新浪', 'http://www.sina.com', '2021-01-23 11:50:59');
INSERT INTO `youqinglianjie` VALUES ('4', 'QQ', 'http://www.qq.com', '2021-01-23 11:50:59');
INSERT INTO `youqinglianjie` VALUES ('5', '网易', 'http://www.163.com', '2021-01-23 11:50:59');

-- ----------------------------
-- Table structure for `zaixianzixun`
-- ----------------------------
DROP TABLE IF EXISTS `zaixianzixun`;
CREATE TABLE `zaixianzixun` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wupinxinxiid` int(10) unsigned NOT NULL COMMENT '物品信息id',
  `wupinbianhao` varchar(50) NOT NULL COMMENT '物品编号',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `wupinmingcheng` varchar(255) NOT NULL COMMENT '物品名称',
  `wupintupian` varchar(255) NOT NULL COMMENT '物品图片',
  `wupinjiage` decimal(18,2) NOT NULL COMMENT '物品价格',
  `maijia` varchar(50) NOT NULL COMMENT '卖家',
  `zixunneirong` text NOT NULL COMMENT '咨询内容',
  `maijiahuifu` text NOT NULL COMMENT '卖家回复',
  `zixunren` varchar(50) NOT NULL COMMENT '咨询人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `zaixianzixun_wupinxinxiid_index` (`wupinxinxiid`),
  KEY `zaixianzixun_fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zaixianzixun
-- ----------------------------
INSERT INTO `zaixianzixun` VALUES ('9', '7', '121121376412', '1', '联想(Lenovo)天逸510S锐龙版', 'upload/20201211/e4268c5a-a0dc-48c7-a4c8-0626e55258bd.png', '1500.00', '003', '你好', '好', '001', '2021-01-23 19:37:26');
INSERT INTO `zaixianzixun` VALUES ('10', '8', '121121426764', '1', '佳能（Canon）PowerShot G7 X', 'upload/20201211/84bd388d-ab07-48f8-9e55-fc9fa31ac217.png', '3000.00', '001', 'wsrewfwe', 'dfwegewr', '003', '2021-01-23 19:49:48');
INSERT INTO `zaixianzixun` VALUES ('11', '2', '121120493451', '3', '斯伯丁Spalding篮球', 'upload/20210123/ce1778ac-9283-4dd3-8655-8494791a75e1.png', '100.00', '002', '你好', '你好', '001', '2021-01-23 21:08:04');
INSERT INTO `zaixianzixun` VALUES ('12', '6', '121121327716', '4', '爱玛（AIMA门店直通车）', 'upload/20210123/f276ac43-c1ff-4ff2-905f-77076c1d1919.png', '1500.00', '003', 'fretf', '', '002', '2021-01-23 21:48:31');
