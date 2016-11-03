SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tp_access
-- ----------------------------
DROP TABLE IF EXISTS `tp_access`;
CREATE TABLE `tp_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_access
-- ----------------------------

-- ----------------------------
-- Table structure for tp_access_count
-- ----------------------------
DROP TABLE IF EXISTS `tp_access_count`;
CREATE TABLE `tp_access_count` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT 'alltoken',
  `module` varchar(50) NOT NULL,
  `controller` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `update_time` int(10) unsigned NOT NULL,
  `create_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`) USING BTREE,
  KEY `module` (`module`) USING BTREE,
  KEY `controller` (`controller`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `count` (`count`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_access_count
-- ----------------------------

-- ----------------------------
-- Table structure for tp_activity
-- ----------------------------
DROP TABLE IF EXISTS `tp_activity`;
CREATE TABLE `tp_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joinnum` int(11) NOT NULL COMMENT '参与人数',
  `click` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `starpicurl` varchar(100) NOT NULL COMMENT '活动开始图片',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `txt` varchar(60) NOT NULL COMMENT '兑奖信息',
  `sttxt` varchar(200) NOT NULL COMMENT '活动主题',
  `statdate` int(11) NOT NULL COMMENT '活动开始时间',
  `enddate` int(11) NOT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `aginfo` varchar(200) NOT NULL COMMENT '活动规则',
  `endtite` varchar(60) NOT NULL COMMENT '结束公告',
  `endpicurl` varchar(100) NOT NULL COMMENT '结束图片地址',
  `endinfo` varchar(60) NOT NULL,
  `fist` varchar(50) NOT NULL COMMENT '一等奖奖品',
  `fistnums` int(4) NOT NULL COMMENT '一等奖奖品数量',
  `fistlucknums` int(1) NOT NULL COMMENT '一等奖中奖人数',
  `second` varchar(50) NOT NULL COMMENT '二等奖奖品',
  `type` tinyint(1) NOT NULL,
  `secondnums` int(4) NOT NULL COMMENT '二等奖奖品数量',
  `secondlucknums` int(1) NOT NULL COMMENT '三等奖中奖人数',
  `third` varchar(50) NOT NULL,
  `thirdnums` int(4) NOT NULL,
  `thirdlucknums` int(1) NOT NULL,
  `allpeople` int(11) NOT NULL COMMENT '预计参与人数',
  `canrqnums` int(2) NOT NULL COMMENT '个人抽奖次数限制',
  `parssword` int(15) NOT NULL,
  `renamesn` varchar(50) NOT NULL DEFAULT '',
  `renametel` varchar(60) NOT NULL,
  `displayjpnums` int(1) NOT NULL,
  `createtime` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `four` varchar(50) NOT NULL COMMENT '四等奖奖品',
  `fournums` int(11) NOT NULL COMMENT '四等奖奖品数量',
  `fourlucknums` int(11) NOT NULL COMMENT '四等奖中奖人数',
  `five` varchar(50) NOT NULL COMMENT '五等奖奖品',
  `fivenums` int(11) NOT NULL COMMENT '5奖品数量',
  `fivelucknums` int(11) NOT NULL COMMENT '5中间人数',
  `six` varchar(50) NOT NULL COMMENT '六等奖奖品',
  `sixnums` int(11) NOT NULL COMMENT '6奖品数量',
  `sixlucknums` int(11) NOT NULL COMMENT '6中奖人数',
  `zjpic` varchar(150) NOT NULL DEFAULT '',
  `daynums` mediumint(4) NOT NULL DEFAULT '0',
  `maxgetprizenum` mediumint(4) NOT NULL DEFAULT '1',
  `needreg` tinyint(1) NOT NULL DEFAULT '0',
  `backmp3` varchar(100) NOT NULL COMMENT '背景音乐',
  `hpic` varchar(150) NOT NULL COMMENT '首页背景图片',
  `xpic` varchar(150) NOT NULL COMMENT '兑奖页面宣传图片',
  `mpic` varchar(150) NOT NULL COMMENT '我的盒子背景图片',
  `optime` int(11) NOT NULL COMMENT '需要分享的次数',
  `focus` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_activity
-- ----------------------------

-- ----------------------------
-- Table structure for tp_adma
-- ----------------------------
DROP TABLE IF EXISTS `tp_adma`;
CREATE TABLE `tp_adma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `url` varchar(100) NOT NULL,
  `copyright` varchar(50) NOT NULL,
  `info` varchar(120) NOT NULL,
  `title` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_adma
-- ----------------------------

-- ----------------------------
-- Table structure for tp_agent
-- ----------------------------
DROP TABLE IF EXISTS `tp_agent`;
CREATE TABLE `tp_agent` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(800) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `usercount` int(10) NOT NULL DEFAULT '0',
  `wxusercount` int(10) NOT NULL DEFAULT '0',
  `sitename` varchar(50) NOT NULL DEFAULT '',
  `sitelogo` varchar(200) NOT NULL DEFAULT '',
  `qrcode` varchar(100) NOT NULL DEFAULT '',
  `sitetitle` varchar(60) NOT NULL DEFAULT '',
  `siteurl` varchar(100) NOT NULL DEFAULT '',
  `robotname` varchar(40) NOT NULL DEFAULT '',
  `connectouttip` varchar(50) NOT NULL DEFAULT '',
  `needcheckuser` tinyint(1) NOT NULL DEFAULT '0',
  `regneedmp` tinyint(1) NOT NULL DEFAULT '1',
  `reggid` int(10) NOT NULL DEFAULT '0',
  `regvaliddays` mediumint(4) NOT NULL DEFAULT '30',
  `qq` varchar(12) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `metades` varchar(300) NOT NULL DEFAULT '',
  `metakeywords` varchar(200) NOT NULL DEFAULT '',
  `statisticcode` varchar(300) NOT NULL DEFAULT '',
  `copyright` varchar(100) NOT NULL DEFAULT '',
  `alipayaccount` varchar(50) NOT NULL DEFAULT '',
  `alipaypid` varchar(100) NOT NULL DEFAULT '',
  `alipaykey` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `salt` varchar(6) NOT NULL DEFAULT '',
  `money` int(10) NOT NULL DEFAULT '0',
  `moneybalance` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `lastloginip` varchar(26) NOT NULL DEFAULT '',
  `lastlogintime` int(11) NOT NULL DEFAULT '0',
  `wxacountprice` mediumint(4) NOT NULL DEFAULT '0',
  `monthprice` mediumint(4) NOT NULL DEFAULT '0',
  `appid` varchar(50) NOT NULL DEFAULT '',
  `appsecret` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(40) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `isnav` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_agent
-- ----------------------------

-- ----------------------------
-- Table structure for tp_agent_expenserecords
-- ----------------------------
DROP TABLE IF EXISTS `tp_agent_expenserecords`;
CREATE TABLE `tp_agent_expenserecords` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `amount` int(10) NOT NULL DEFAULT '0',
  `orderid` varchar(60) NOT NULL DEFAULT '',
  `des` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_agent_expenserecords
-- ----------------------------

-- ----------------------------
-- Table structure for tp_agent_function
-- ----------------------------
DROP TABLE IF EXISTS `tp_agent_function`;
CREATE TABLE `tp_agent_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL,
  `usenum` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `funname` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `isserve` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`),
  KEY `agentid` (`agentid`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_agent_function
-- ----------------------------
INSERT INTO `tp_agent_function` VALUES ('1', '1', '0', '天气查询', 'tianqi', '天气查询服务:例  城市名+天气', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('2', '1', '0', '糗事', 'qiushi', '糗事　直接发送糗事', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('3', '1', '0', '计算器', 'jishuan', '计算器使用方法　例：计算50-50　，计算100*100', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('4', '4', '0', '朗读', 'langdu', '朗读＋关键词　例：朗读pigcms多用户营销系统', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('5', '3', '0', '健康指数查询', 'jiankang', '健康指数查询　健康＋高，＋重　例：健康170,65', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('6', '1', '0', '快递查询', 'kuaidi', '快递＋快递名＋快递号　例：快递顺丰117215889174', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('7', '1', '0', '笑话', 'xiaohua', '笑话　直接发送笑话', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('8', '2', '0', '藏头诗', 'changtoushi', ' 藏头诗+关键词　例：藏头诗我爱你', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('9', '1', '0', '陪聊', 'peiliao', '聊天　直接输入聊天关键词即可', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('10', '1', '0', '聊天', 'liaotian', '聊天　直接输入聊天关键词即可', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('11', '3', '0', '周公解梦', 'mengjian', '周公解梦　梦见+关键词　例如:梦见父母', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('12', '2', '0', '语音翻译', 'yuyinfanyi', '翻译＋关键词 例：翻译你好', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('13', '2', '0', '火车查询', 'huoche', '火车查询　火车＋城市＋目的地　例火车上海南京', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('14', '2', '0', '公交查询', 'gongjiao', '公交＋城市＋公交编号　例：上海公交774', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('15', '2', '0', '身份证查询', 'shenfenzheng', '身份证＋号码　　例：身份证342423198803015568', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('16', '1', '0', '手机归属地查询', 'shouji', '手机归属地查询(吉凶 运势) 手机＋手机号码　例：手机13856017160', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('17', '3', '0', '音乐查询', 'yinle', '音乐＋音乐名  例：音乐爱你一万年', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('18', '1', '0', '附近周边信息查询', 'fujin', '附近周边信息查询(ＬＢＳ） 回复:附近+关键词  例:附近酒店', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('19', '4', '0', '公众小秘书', 'Paper', '公众小秘书', '2', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('20', '3', '0', '淘宝店铺', 'taobao', '输入淘宝＋关键词　即可访问淘宝3g手机店铺', '2', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('21', '4', '0', '会员资料管理', 'userinfo', '会员资料管理　输入会员　即可参与', '2', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('22', '1', '0', '翻译', 'fanyi', '翻译＋关键词 例：翻译你好', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('23', '4', '0', '第三方接口', 'api', '第三方接口整合模块，请在管理平台下载接口文件并配置接口信息，', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('24', '1', '0', '姓名算命', 'suanming', '姓名算命 算命＋关键词　例：算命李白', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('25', '3', '0', '百度百科', 'baike', '百度百科　使用方法：百科＋关键词　例：百科北京', '2', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('26', '2', '0', '彩票查询', 'caipiao', '回复内容:彩票+彩种即可查询彩票中奖信息,例：彩票双色球', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('27', '4', '0', '照片墙', 'Zhaopianwall', '活动开启后，在聊天窗口中直接发送图片，即可图片上墙！', '2', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('28', '4', '0', 'RippleOS', 'RippleOS', 'RippleOS路由器', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('29', '1', '0', '3G首页', 'shouye', '输入首页,访问微3g 网站', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('30', '1', '0', 'DIY宣传页', 'adma', 'DIY宣传页,用于创建二维码宣传页权限开启', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('31', '4', '0', '会员卡', 'huiyuanka', '尊贵享受vip会员卡,回复会员卡即可领取会员卡', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('32', '4', '0', '微名片', 'Vcard', '微名片', '2', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('33', '4', '0', '账号审核', 'usernameCheck', '正确的审核帐号方式是：审核+帐号', '2', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('34', '1', '0', '歌词查询', 'geci', '歌词查询 回复歌词＋歌名即可查询一首歌曲的歌词,例：歌词醉清风', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('35', '2', '0', '域名whois查询', 'whois', '域名whois查询　回复域名＋域名 可查询网站备案信息,域名whois注册时间等等\r\n 例：域名pigcms.com', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('36', '1', '0', '通用预订系统', 'host_kev', '通用预订系统 可用于酒店预订，ktv订房，旅游预订等。', '2', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('37', '4', '0', '自定义表单', 'diyform', '自定义表单(用于报名，预约,留言)等', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('38', '2', '0', '无线网络订餐', 'dx', '无线网络订餐', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('39', '2', '0', '在线商城', 'shop', '在线商城,购买系统', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('40', '2', '0', '在线团购系统', 'etuan', '在线团购系统', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('41', '4', '0', '自定义菜单', 'diymen_set', '自定义菜单,一键生成轻app', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('42', '4', '0', '幸运大转盘', 'choujiang', '输入抽奖　即可参加幸运大转盘抽奖活动', '2', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('43', '4', '0', '抽奖', 'lottery', '抽奖,输入抽奖即可参加幸运大转盘', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('44', '4', '0', '刮刮卡', 'gua2', '刮刮卡抽奖活动', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('45', '4', '0', '全景', 'panorama', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('46', '4', '0', '婚庆喜帖', 'Wedding', '', '2', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('47', '4', '0', '投票', 'Vote', '', '2', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('48', '4', '0', '房产', 'estate', '', '2', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('49', '4', '0', '3G相册', 'album', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('50', '4', '0', '砸金蛋', 'GoldenEgg', '', '2', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('51', '4', '0', '水果机', 'LuckyFruit', '', '2', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('52', '4', '0', '留言板', 'messageboard', '', '2', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('53', '4', '0', '微汽车', 'car', '', '2', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('54', '4', '0', '微信墙', 'wall', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('55', '4', '0', '摇一摇', 'shake', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('56', '4', '0', '微论坛', 'forum', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('57', '4', '0', '微医疗', 'medical', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('58', '4', '0', '群发消息', 'groupmessage', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('59', '4', '0', '分享统计', 'share', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('60', '4', '0', '酒店宾馆', 'hotel', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('61', '4', '0', '微教育', 'school', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('62', '4', '0', '微场景', 'Live', '', '2', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('63', '1', '0', '微街景', 'Jiejing', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('64', '1', '0', '中秋吃月饼', 'Autumn', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('65', '1', '0', '摁死小情侣游戏', 'Lovers', '回复 “小情侣” 即可参加', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('66', '1', '0', '七夕走鹊桥', 'AppleGame', '回复 “走鹊桥” 即可参与', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('67', '1', '0', '微调研', 'Research', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('68', '1', '0', '一战到底', 'Problem', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('69', '1', '0', '微信签到', 'Signin', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('70', '1', '0', '现场活动', 'Scene', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('71', '1', '0', '微商圈', 'Market', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('72', '1', '0', '微预约', 'Custom', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('73', '1', '0', '祝福贺卡', 'Greeting_card', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('74', '1', '0', '微美容', 'beauty', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('75', '1', '0', '微健身', 'fitness', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('76', '1', '0', '微政务', 'gover', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('77', '1', '0', '微食品', 'food', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('78', '1', '0', '微旅游', 'travel', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('79', '1', '0', '微花店', 'flower', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('80', '1', '0', '微物业', 'property', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('81', '1', '0', '微KTV', 'ktv', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('82', '1', '0', '微酒吧', 'bar', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('83', '1', '0', '微装修', 'fitment', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('84', '1', '0', '微婚庆', 'buswedd', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('85', '1', '0', '微宠物', 'affections', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('86', '1', '0', '微家政', 'housekeeper', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('87', '1', '0', '微租赁', 'lease', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('88', '1', '0', '微游戏', 'Gamecenter', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('89', '1', '0', '百度直达号', 'Zhida', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('90', '1', '0', '微信红包', 'Red_packet', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('91', '1', '0', '惩罚台', 'Punish', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('92', '1', '0', '邀请函', 'Invite', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('93', '1', '0', '拆礼盒', 'Autumns', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('94', '1', '0', '高级模板', 'AdvanceTpl', '', '1', '1', '1');
INSERT INTO `tp_agent_function` VALUES ('95', '1', '0', '群发消息', 'Message', '', '1', '1', '1');

-- ----------------------------
-- Table structure for tp_agent_price
-- ----------------------------
DROP TABLE IF EXISTS `tp_agent_price`;
CREATE TABLE `tp_agent_price` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `minaccount` int(10) NOT NULL DEFAULT '0',
  `maxaccount` int(10) NOT NULL DEFAULT '0',
  `price` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_agent_price
-- ----------------------------

-- ----------------------------
-- Table structure for tp_alipay_config
-- ----------------------------
DROP TABLE IF EXISTS `tp_alipay_config`;
CREATE TABLE `tp_alipay_config` (
  `token` varchar(60) NOT NULL,
  `paytype` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `pid` varchar(40) NOT NULL DEFAULT '',
  `key` varchar(200) NOT NULL DEFAULT '',
  `partnerkey` varchar(100) NOT NULL DEFAULT '',
  `appsecret` varchar(200) NOT NULL DEFAULT '',
  `appid` varchar(60) NOT NULL DEFAULT '',
  `paysignkey` varchar(200) NOT NULL DEFAULT '',
  `partnerid` varchar(200) NOT NULL DEFAULT '',
  `mchid` varchar(100) NOT NULL,
  `open` tinyint(1) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_alipay_config
-- ----------------------------

-- ----------------------------
-- Table structure for tp_api
-- ----------------------------
DROP TABLE IF EXISTS `tp_api`;
CREATE TABLE `tp_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `token` varchar(60) NOT NULL,
  `url` varchar(100) NOT NULL,
  `apitoken` varchar(100) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL,
  `is_colation` tinyint(1) NOT NULL,
  `colation_keyword` varchar(100) NOT NULL,
  `number` tinyint(1) NOT NULL,
  `order` tinyint(1) NOT NULL,
  `time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `noanswer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_api
-- ----------------------------

-- ----------------------------
-- Table structure for tp_areply
-- ----------------------------
DROP TABLE IF EXISTS `tp_areply`;
CREATE TABLE `tp_areply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `token` char(30) NOT NULL,
  `home` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_areply
-- ----------------------------

-- ----------------------------
-- Table structure for tp_article
-- ----------------------------
DROP TABLE IF EXISTS `tp_article`;
CREATE TABLE `tp_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(90) NOT NULL,
  `description` char(255) NOT NULL,
  `author` varchar(15) NOT NULL,
  `form` varchar(30) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `content` text NOT NULL,
  `imgs` char(40) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_article
-- ----------------------------

-- ----------------------------
-- Table structure for tp_attribute
-- ----------------------------
DROP TABLE IF EXISTS `tp_attribute`;
CREATE TABLE `tp_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(50) NOT NULL,
  `catid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`catid`),
  KEY `catid` (`catid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for tp_autumns_box
-- ----------------------------
DROP TABLE IF EXISTS `tp_autumns_box`;
CREATE TABLE `tp_autumns_box` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `bid` int(11) NOT NULL COMMENT '活动ID',
  `invite` int(11) NOT NULL,
  `boxdate` int(11) NOT NULL COMMENT '领取盒子的时间',
  `box` int(11) NOT NULL COMMENT '盒子样式',
  `wecha_id` varchar(60) NOT NULL,
  `prize` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `isprize` int(11) NOT NULL COMMENT '是否中奖',
  `isprizes` int(11) NOT NULL COMMENT '是否领奖',
  `prizedate` varchar(20) NOT NULL COMMENT '兑奖起始时间',
  `prizedates` varchar(20) NOT NULL COMMENT '兑奖结束时间',
  `lvprize` varchar(30) NOT NULL,
  `sn` varchar(13) NOT NULL,
  `sntime` int(11) NOT NULL COMMENT '奖品发放时间',
  `sendstutas` int(11) NOT NULL DEFAULT '0' COMMENT '是否发奖',
  `prtime` int(11) NOT NULL COMMENT '领奖时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_autumns_box
-- ----------------------------

-- ----------------------------
-- Table structure for tp_autumns_ip
-- ----------------------------
DROP TABLE IF EXISTS `tp_autumns_ip`;
CREATE TABLE `tp_autumns_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  `bid` int(11) NOT NULL COMMENT '盒子ID',
  `lid` int(11) NOT NULL COMMENT '活动ID',
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_autumns_ip
-- ----------------------------

-- ----------------------------
-- Table structure for tp_autumns_open
-- ----------------------------
DROP TABLE IF EXISTS `tp_autumns_open`;
CREATE TABLE `tp_autumns_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `bid` int(11) NOT NULL COMMENT '盒子ID',
  `lid` int(11) NOT NULL COMMENT '活动ID',
  `time` int(11) NOT NULL COMMENT '分享次数',
  `isopen` int(11) NOT NULL COMMENT '是否打开',
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_autumns_open
-- ----------------------------

-- ----------------------------
-- Table structure for tp_banners
-- ----------------------------
DROP TABLE IF EXISTS `tp_banners`;
CREATE TABLE `tp_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` char(200) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_banners
-- ----------------------------

-- ----------------------------
-- Table structure for tp_bargain
-- ----------------------------
DROP TABLE IF EXISTS `tp_bargain`;
CREATE TABLE `tp_bargain` (
  `pigcms_id` int(100) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT '商品名称',
  `keyword` varchar(100) NOT NULL COMMENT '关键词',
  `wxtitle` varchar(100) NOT NULL COMMENT '图文回复标题',
  `wxpic` varchar(100) NOT NULL COMMENT '图文回复图片',
  `wxinfo` varchar(200) DEFAULT NULL COMMENT '图文回复简单描述',
  `logoimg1` varchar(100) NOT NULL COMMENT '商品图片1',
  `logourl1` varchar(200) NOT NULL COMMENT '商品图片链接1',
  `logoimg2` varchar(100) DEFAULT NULL COMMENT '商品图片2',
  `logourl2` varchar(200) DEFAULT NULL COMMENT '商品图片链接2',
  `logoimg3` varchar(100) DEFAULT NULL COMMENT '商品图片3',
  `logourl3` varchar(200) DEFAULT NULL COMMENT '商品图片链接3',
  `info` mediumtext COMMENT '商品描述',
  `guize` mediumtext,
  `original` int(20) NOT NULL COMMENT '原价',
  `minimum` int(20) NOT NULL COMMENT '底价',
  `starttime` int(20) NOT NULL COMMENT '开始时间',
  `inventory` int(20) NOT NULL COMMENT '库存',
  `qdao` int(11) DEFAULT NULL COMMENT '前n刀',
  `qprice` int(20) DEFAULT NULL COMMENT '前n刀砍去多少钱',
  `dao` int(11) NOT NULL COMMENT '总共需要n刀',
  `pv` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '开始-关闭',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`pigcms_id`),
  KEY `token` (`token`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `state` (`state`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_bargain
-- ----------------------------

-- ----------------------------
-- Table structure for tp_bargain_kanuser
-- ----------------------------
DROP TABLE IF EXISTS `tp_bargain_kanuser`;
CREATE TABLE `tp_bargain_kanuser` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `bargain_id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `friend` varchar(100) NOT NULL,
  `dao` int(20) NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`),
  KEY `token` (`token`) USING BTREE,
  KEY `wecha_id` (`wecha_id`) USING BTREE,
  KEY `bargain_id` (`bargain_id`) USING BTREE,
  KEY `orderid` (`orderid`) USING BTREE,
  KEY `friend` (`friend`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_bargain_kanuser
-- ----------------------------

-- ----------------------------
-- Table structure for tp_bargain_order
-- ----------------------------
DROP TABLE IF EXISTS `tp_bargain_order`;
CREATE TABLE `tp_bargain_order` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `paytype` varchar(50) DEFAULT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `third_id` varchar(100) DEFAULT NULL,
  `bargain_id` int(11) NOT NULL,
  `bargain_name` varchar(100) DEFAULT NULL,
  `bargain_logoimg` varchar(100) DEFAULT NULL,
  `bargain_original` int(20) DEFAULT NULL,
  `bargain_minimum` int(20) DEFAULT NULL,
  `bargain_nowprice` int(20) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `endtime` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) DEFAULT NULL,
  `orderid` varchar(255) NOT NULL,
  `state2` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pigcms_id`),
  KEY `token` (`token`) USING BTREE,
  KEY `wecha_id` (`wecha_id`) USING BTREE,
  KEY `paid` (`paid`) USING BTREE,
  KEY `bargain_id` (`bargain_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_bargain_order
-- ----------------------------

-- ----------------------------
-- Table structure for tp_behavior
-- ----------------------------
DROP TABLE IF EXISTS `tp_behavior`;
CREATE TABLE `tp_behavior` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `date` varchar(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `model` varchar(60) NOT NULL,
  `num` int(11) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_behavior
-- ----------------------------

-- ----------------------------
-- Table structure for tp_broker
-- ----------------------------
DROP TABLE IF EXISTS `tp_broker`;
CREATE TABLE `tp_broker` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `keyword` varchar(20) CHARACTER SET utf8 NOT NULL,
  `token` varchar(50) CHARACTER SET utf8 NOT NULL,
  `picurl` varchar(250) CHARACTER SET utf8 NOT NULL,
  `imgreply` varchar(250) CHARACTER SET utf8 NOT NULL COMMENT '消息回复图片',
  `invitecode` char(16) CHARACTER SET utf8 NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `ruledesc` text CHARACTER SET utf8 NOT NULL,
  `registration` text CHARACTER SET utf8 NOT NULL,
  `isdel` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1表示已删除',
  `addtime` int(11) NOT NULL,
  `uptime` int(11) NOT NULL COMMENT '更新时间',
  `bgimg` varchar(250) CHARACTER SET utf8 NOT NULL COMMENT '背景图片',
  `rinfo` varchar(500) CHARACTER SET utf8 NOT NULL COMMENT '消息回复简介',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_broker
-- ----------------------------

-- ----------------------------
-- Table structure for tp_broker_client
-- ----------------------------
DROP TABLE IF EXISTS `tp_broker_client`;
CREATE TABLE `tp_broker_client` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) CHARACTER SET utf8 NOT NULL,
  `bid` int(10) unsigned NOT NULL,
  `tjuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推挤人id 推挤人idbroker_user表id',
  `verifyuid` int(11) NOT NULL DEFAULT '0' COMMENT '顾问id 推挤人idbroker_user表id',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `cname` varchar(90) CHARACTER SET utf8 NOT NULL COMMENT '客户名称',
  `ctel` varchar(15) CHARACTER SET utf8 NOT NULL COMMENT '客户手机号',
  `proid` int(11) NOT NULL DEFAULT '0' COMMENT 'broker_item表id',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '备注',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `uptime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `wecha_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_broker_client
-- ----------------------------

-- ----------------------------
-- Table structure for tp_broker_commission
-- ----------------------------
DROP TABLE IF EXISTS `tp_broker_commission`;
CREATE TABLE `tp_broker_commission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bid` int(11) unsigned NOT NULL,
  `tjuid` int(11) unsigned NOT NULL,
  `tjname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `clientid` int(11) unsigned NOT NULL,
  `client_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `client_tel` varchar(20) CHARACTER SET utf8 NOT NULL,
  `client_status` tinyint(1) unsigned NOT NULL COMMENT '客户目前状态',
  `proid` int(11) unsigned NOT NULL,
  `proname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `verifyname` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '置业顾问名字',
  `verifytel` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '置业顾问电话',
  `money` decimal(10,2) unsigned NOT NULL COMMENT '金额',
  `status` tinyint(1) unsigned NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_broker_commission
-- ----------------------------

-- ----------------------------
-- Table structure for tp_broker_item
-- ----------------------------
DROP TABLE IF EXISTS `tp_broker_item`;
CREATE TABLE `tp_broker_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bid` int(10) unsigned NOT NULL COMMENT 'broker表id',
  `xmname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `xmtype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1现金2百分比',
  `xmnum` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '佣金额度',
  `xmimg` varchar(300) CHARACTER SET utf8 NOT NULL COMMENT '图片url',
  `tourl` varchar(300) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL COMMENT '跳转地址url',
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_broker_item
-- ----------------------------

-- ----------------------------
-- Table structure for tp_broker_optionlog
-- ----------------------------
DROP TABLE IF EXISTS `tp_broker_optionlog`;
CREATE TABLE `tp_broker_optionlog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) CHARACTER SET utf8 NOT NULL,
  `bid` int(10) unsigned NOT NULL,
  `tjuid` int(11) NOT NULL COMMENT '推荐人',
  `logstr` varchar(100) CHARACTER SET utf8 NOT NULL,
  `addtime` int(11) NOT NULL,
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_broker_optionlog
-- ----------------------------

-- ----------------------------
-- Table structure for tp_broker_translation
-- ----------------------------
DROP TABLE IF EXISTS `tp_broker_translation`;
CREATE TABLE `tp_broker_translation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '身份介绍',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0普通1经纪人2其他',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_broker_translation
-- ----------------------------
INSERT INTO `tp_broker_translation` VALUES ('1', '公司员工', '0');
INSERT INTO `tp_broker_translation` VALUES ('2', '大众经纪人', '0');
INSERT INTO `tp_broker_translation` VALUES ('3', '中介公司', '0');
INSERT INTO `tp_broker_translation` VALUES ('4', '代理公司', '0');
INSERT INTO `tp_broker_translation` VALUES ('5', '合作伙伴', '0');
INSERT INTO `tp_broker_translation` VALUES ('6', '老业主', '1');
INSERT INTO `tp_broker_translation` VALUES ('7', '产品顾问', '2');

-- ----------------------------
-- Table structure for tp_broker_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_broker_user`;
CREATE TABLE `tp_broker_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(255) CHARACTER SET utf8 NOT NULL,
  `bid` int(11) NOT NULL,
  `tel` varchar(12) CHARACTER SET utf8 NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `identity` tinyint(1) unsigned NOT NULL COMMENT 'broker_translation表id',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0正常1禁用',
  `is_verify` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置业顾问',
  `identitylog` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '身份变更记录',
  `identitycode` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '身份证号',
  `company` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '公司名称',
  `recommendnum` int(10) unsigned NOT NULL COMMENT '推荐人数',
  `totalcash` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '可提取佣金',
  `extractcash` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '以提取出的佣金',
  `bank_truename` varchar(30) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL COMMENT '银行开户姓名',
  `bank_cardnum` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '银行卡号',
  `bank_name` varchar(60) CHARACTER SET utf8 NOT NULL COMMENT '银行名称',
  `wecha_id` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT 'openid',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_broker_user
-- ----------------------------

-- ----------------------------
-- Table structure for tp_busines
-- ----------------------------
DROP TABLE IF EXISTS `tp_busines`;
CREATE TABLE `tp_busines` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `mtitle` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `album_id` int(11) NOT NULL,
  `toppicurl` varchar(200) NOT NULL DEFAULT '',
  `roompicurl` varchar(200) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `longitude` char(11) NOT NULL DEFAULT '',
  `latitude` char(11) NOT NULL DEFAULT '',
  `business_desc` text NOT NULL,
  `type` char(15) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `blogo` varchar(200) NOT NULL,
  `businesphone` char(13) NOT NULL DEFAULT '',
  `orderInfo` varchar(800) NOT NULL DEFAULT '',
  `compyphone` char(50) NOT NULL DEFAULT '',
  `path` varchar(3000) DEFAULT '0',
  `tpid` int(11) DEFAULT '36',
  `conttpid` int(11) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_busines
-- ----------------------------

-- ----------------------------
-- Table structure for tp_busines_comment
-- ----------------------------
DROP TABLE IF EXISTS `tp_busines_comment`;
CREATE TABLE `tp_busines_comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` varchar(50) NOT NULL DEFAULT '',
  `face_picurl` varchar(200) NOT NULL,
  `face_desc` varchar(1000) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_busines_comment
-- ----------------------------

-- ----------------------------
-- Table structure for tp_busines_main
-- ----------------------------
DROP TABLE IF EXISTS `tp_busines_main`;
CREATE TABLE `tp_busines_main` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `main_desc` text NOT NULL,
  `type` char(15) NOT NULL,
  `telphone` char(12) NOT NULL DEFAULT '',
  `maddress` varchar(50) NOT NULL DEFAULT '',
  `desc_pic` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_busines_main
-- ----------------------------

-- ----------------------------
-- Table structure for tp_busines_pic
-- ----------------------------
DROP TABLE IF EXISTS `tp_busines_pic`;
CREATE TABLE `tp_busines_pic` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `bid_id` int(11) NOT NULL,
  `picurl_1` varchar(200) NOT NULL DEFAULT '',
  `picurl_2` varchar(200) NOT NULL DEFAULT '',
  `picurl_3` varchar(200) NOT NULL DEFAULT '',
  `picurl_4` varchar(200) NOT NULL DEFAULT '',
  `picurl_5` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL,
  `ablum_id` int(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_busines_pic
-- ----------------------------

-- ----------------------------
-- Table structure for tp_busines_second
-- ----------------------------
DROP TABLE IF EXISTS `tp_busines_second`;
CREATE TABLE `tp_busines_second` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mid_id` int(11) NOT NULL,
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `learntime` varchar(100) NOT NULL,
  `datatype` varchar(100) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `second_desc` text NOT NULL,
  `oneprice` decimal(10,2) DEFAULT '0.00',
  `googsnumber` bigint(20) NOT NULL DEFAULT '0',
  `havenumber` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_busines_second
-- ----------------------------

-- ----------------------------
-- Table structure for tp_car
-- ----------------------------
DROP TABLE IF EXISTS `tp_car`;
CREATE TABLE `tp_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `www` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `sort` int(11) DEFAULT NULL,
  `info` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_car
-- ----------------------------

-- ----------------------------
-- Table structure for tp_carcat
-- ----------------------------
DROP TABLE IF EXISTS `tp_carcat`;
CREATE TABLE `tp_carcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `name` char(50) NOT NULL,
  `img` char(150) NOT NULL,
  `icon` char(150) NOT NULL,
  `sort` int(11) NOT NULL,
  `is_show` int(11) NOT NULL,
  `url` varchar(300) NOT NULL,
  `system` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_carcat
-- ----------------------------

-- ----------------------------
-- Table structure for tp_cards
-- ----------------------------
DROP TABLE IF EXISTS `tp_cards`;
CREATE TABLE `tp_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(11) NOT NULL DEFAULT '0',
  `picurl` varchar(160) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(500) NOT NULL DEFAULT '',
  `selfinfo` varchar(5000) NOT NULL DEFAULT '',
  `token` varchar(20) NOT NULL DEFAULT '',
  `viewcount` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_cards
-- ----------------------------

-- ----------------------------
-- Table structure for tp_carmodel
-- ----------------------------
DROP TABLE IF EXISTS `tp_carmodel`;
CREATE TABLE `tp_carmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand_serise` varchar(50) NOT NULL,
  `model_year` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `panorama_id` int(11) DEFAULT '0',
  `guide_price` varchar(50) NOT NULL DEFAULT '',
  `dealer_price` varchar(50) NOT NULL DEFAULT '',
  `emission` double NOT NULL,
  `stalls` tinyint(4) DEFAULT NULL,
  `box` tinyint(4) NOT NULL,
  `pic_url` varchar(200) NOT NULL,
  `s_id` int(11) NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_carmodel
-- ----------------------------

-- ----------------------------
-- Table structure for tp_carnews
-- ----------------------------
DROP TABLE IF EXISTS `tp_carnews`;
CREATE TABLE `tp_carnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `news_id` int(11) NOT NULL,
  `pre_id` int(11) NOT NULL,
  `usedcar_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_carnews
-- ----------------------------

-- ----------------------------
-- Table structure for tp_carowner
-- ----------------------------
DROP TABLE IF EXISTS `tp_carowner`;
CREATE TABLE `tp_carowner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '''''',
  `head_url` varchar(200) NOT NULL DEFAULT '''''',
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_carowner
-- ----------------------------

-- ----------------------------
-- Table structure for tp_carsaler
-- ----------------------------
DROP TABLE IF EXISTS `tp_carsaler`;
CREATE TABLE `tp_carsaler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `mobile` char(13) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `salestype` tinyint(4) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_carsaler
-- ----------------------------

-- ----------------------------
-- Table structure for tp_carseries
-- ----------------------------
DROP TABLE IF EXISTS `tp_carseries`;
CREATE TABLE `tp_carseries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `shortname` varchar(50) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_carseries
-- ----------------------------

-- ----------------------------
-- Table structure for tp_carset
-- ----------------------------
DROP TABLE IF EXISTS `tp_carset`;
CREATE TABLE `tp_carset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `head_url` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL,
  `title1` varchar(50) NOT NULL DEFAULT '',
  `title2` varchar(50) NOT NULL DEFAULT '',
  `title3` varchar(50) NOT NULL DEFAULT '',
  `title4` varchar(50) NOT NULL DEFAULT '',
  `title5` varchar(50) NOT NULL DEFAULT '',
  `title6` varchar(50) NOT NULL DEFAULT '',
  `head_url_1` varchar(200) NOT NULL DEFAULT '',
  `head_url_2` varchar(200) NOT NULL DEFAULT '',
  `head_url_3` varchar(200) NOT NULL DEFAULT '',
  `head_url_4` varchar(200) NOT NULL DEFAULT '',
  `head_url_5` varchar(200) NOT NULL DEFAULT '',
  `head_url_6` varchar(200) NOT NULL DEFAULT '',
  `url1` varchar(200) NOT NULL DEFAULT '',
  `url2` varchar(200) NOT NULL DEFAULT '',
  `url3` varchar(200) NOT NULL DEFAULT '',
  `url4` varchar(200) NOT NULL DEFAULT '',
  `url5` varchar(200) NOT NULL DEFAULT '',
  `url6` varchar(200) NOT NULL DEFAULT '',
  `path` varchar(3000) DEFAULT '0',
  `tpid` int(11) DEFAULT '23',
  `conttpid` int(11) DEFAULT NULL,
  `title7` varchar(50) DEFAULT NULL,
  `title8` varchar(50) DEFAULT NULL,
  `title9` varchar(50) DEFAULT NULL,
  `title10` varchar(50) DEFAULT NULL,
  `title11` varchar(50) DEFAULT NULL,
  `head_url_7` varchar(200) DEFAULT NULL,
  `head_url_8` varchar(200) DEFAULT NULL,
  `head_url_9` varchar(200) DEFAULT NULL,
  `head_url_10` varchar(200) DEFAULT NULL,
  `head_url_11` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_carset
-- ----------------------------

-- ----------------------------
-- Table structure for tp_caruser
-- ----------------------------
DROP TABLE IF EXISTS `tp_caruser`;
CREATE TABLE `tp_caruser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `brand_serise` varchar(50) NOT NULL,
  `car_no` varchar(20) NOT NULL,
  `car_userName` varchar(50) NOT NULL,
  `car_startTime` varchar(50) NOT NULL,
  `car_insurance_lastDate` varchar(50) NOT NULL,
  `car_insurance_lastCost` decimal(10,2) NOT NULL,
  `car_care_mileage` int(11) NOT NULL,
  `user_tel` char(11) NOT NULL,
  `car_care_lastDate` varchar(50) NOT NULL,
  `car_care_lastCost` decimal(10,2) NOT NULL,
  `kfinfo` varchar(200) NOT NULL DEFAULT '',
  `insurance_Date` varchar(50) DEFAULT NULL,
  `insurance_Cost` decimal(10,2) DEFAULT NULL,
  `care_mileage` int(11) DEFAULT NULL,
  `car_care_Date` varchar(50) DEFAULT NULL,
  `car_care_Cost` decimal(10,2) DEFAULT NULL,
  `car_buyTime` varchar(50) NOT NULL DEFAULT '',
  `car_care_inspection` varchar(50) NOT NULL DEFAULT '',
  `care_next_mileage` int(11) NOT NULL DEFAULT '0',
  `next_care_inspection` varchar(50) NOT NULL DEFAULT '',
  `next_insurance_Date` varchar(50) NOT NULL DEFAULT '',
  `carmodel` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_caruser
-- ----------------------------

-- ----------------------------
-- Table structure for tp_car_utility
-- ----------------------------
DROP TABLE IF EXISTS `tp_car_utility`;
CREATE TABLE `tp_car_utility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_car_utility
-- ----------------------------

-- ----------------------------
-- Table structure for tp_case
-- ----------------------------
DROP TABLE IF EXISTS `tp_case`;
CREATE TABLE `tp_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `url` char(255) NOT NULL,
  `img` char(200) NOT NULL,
  `status` varchar(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `timg` char(200) NOT NULL,
  `classid` varchar(200) NOT NULL,
  `class` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_case
-- ----------------------------

-- ----------------------------
-- Table structure for tp_caseclass
-- ----------------------------
DROP TABLE IF EXISTS `tp_caseclass`;
CREATE TABLE `tp_caseclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `counts` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_caseclass
-- ----------------------------

-- ----------------------------
-- Table structure for tp_catemenu
-- ----------------------------
DROP TABLE IF EXISTS `tp_catemenu`;
CREATE TABLE `tp_catemenu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `name` varchar(120) NOT NULL,
  `orderss` varchar(10) NOT NULL DEFAULT '0',
  `picurl` varchar(120) NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '0',
  `status` varchar(10) NOT NULL,
  `RadioGroup1` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`orderss`,`status`) USING BTREE,
  KEY `token_2` (`token`,`orderss`,`status`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_catemenu
-- ----------------------------

-- ----------------------------
-- Table structure for tp_classify
-- ----------------------------
DROP TABLE IF EXISTS `tp_classify`;
CREATE TABLE `tp_classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `info` varchar(90) NOT NULL COMMENT '分类描述',
  `sorts` int(6) NOT NULL COMMENT '显示顺序',
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `token` varchar(30) NOT NULL,
  `path` varchar(3000) DEFAULT '0',
  `tpid` int(10) DEFAULT '1',
  `conttpid` int(10) DEFAULT '1',
  `pc_cat_id` int(11) NOT NULL,
  `pc_web_id` int(11) NOT NULL,
  `sonpagesize` int(2) NOT NULL DEFAULT '5' COMMENT '子类手机每页显示数',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `IDX_TO_FI_ID` (`token`,`fid`,`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_classify
-- ----------------------------

-- ----------------------------
-- Table structure for tp_company
-- ----------------------------
DROP TABLE IF EXISTS `tp_company`;
CREATE TABLE `tp_company` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `amapid` varchar(50) NOT NULL DEFAULT '',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(60) NOT NULL,
  `password` varchar(32) NOT NULL,
  `shortname` varchar(50) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `tel` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL DEFAULT '',
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `intro` text NOT NULL,
  `catid` mediumint(3) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `isbranch` tinyint(1) NOT NULL DEFAULT '0',
  `logourl` varchar(180) NOT NULL DEFAULT '',
  `area_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) NOT NULL DEFAULT '0',
  `market_id` int(11) NOT NULL DEFAULT '0',
  `mark_url` varchar(200) NOT NULL DEFAULT '',
  `add_time` char(10) NOT NULL DEFAULT '0',
  `province` char(30) NOT NULL,
  `city` char(30) NOT NULL,
  `district` char(30) NOT NULL,
  `location_id` int(11) NOT NULL,
  `cat_name` char(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_company
-- ----------------------------

-- ----------------------------
-- Table structure for tp_company_staff
-- ----------------------------
DROP TABLE IF EXISTS `tp_company_staff`;
CREATE TABLE `tp_company_staff` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `companyid` int(10) NOT NULL,
  `token` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `tel` varchar(11) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  `func` varchar(1000) NOT NULL,
  `pcorwap` enum('pc','wap') NOT NULL,
  `wecha_id` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `companyid` (`companyid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_company_staff
-- ----------------------------

-- ----------------------------
-- Table structure for tp_cosmetology
-- ----------------------------
DROP TABLE IF EXISTS `tp_cosmetology`;
CREATE TABLE `tp_cosmetology` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `piccover` varchar(500) NOT NULL,
  `registrationtoppic` varchar(500) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lat` varchar(30) NOT NULL,
  `lng` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sms` varchar(100) NOT NULL,
  `open_email` varchar(50) NOT NULL,
  `open_sms` varchar(50) NOT NULL,
  `checked` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_cosmetology
-- ----------------------------

-- ----------------------------
-- Table structure for tp_cosmetology_departments
-- ----------------------------
DROP TABLE IF EXISTS `tp_cosmetology_departments`;
CREATE TABLE `tp_cosmetology_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_cosmetology_departments
-- ----------------------------

-- ----------------------------
-- Table structure for tp_cosmetology_setup
-- ----------------------------
DROP TABLE IF EXISTS `tp_cosmetology_setup`;
CREATE TABLE `tp_cosmetology_setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` varchar(20) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `scheduled_date` datetime NOT NULL,
  `address` varchar(500) NOT NULL,
  `departments` varchar(200) NOT NULL,
  `expert` varchar(200) NOT NULL,
  `disease` varchar(500) NOT NULL,
  `process` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_cosmetology_setup
-- ----------------------------

-- ----------------------------
-- Table structure for tp_cosmetology_setup_control
-- ----------------------------
DROP TABLE IF EXISTS `tp_cosmetology_setup_control`;
CREATE TABLE `tp_cosmetology_setup_control` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` varchar(20) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `scheduled_date` varchar(200) NOT NULL,
  `address` varchar(500) NOT NULL,
  `departments` varchar(200) NOT NULL,
  `expert` varchar(200) NOT NULL,
  `disease` varchar(500) NOT NULL,
  `process` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_cosmetology_setup_control
-- ----------------------------

-- ----------------------------
-- Table structure for tp_crowdfunding
-- ----------------------------
DROP TABLE IF EXISTS `tp_crowdfunding`;
CREATE TABLE `tp_crowdfunding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `keyword` char(30) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(200) NOT NULL,
  `pic` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `fund` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `day` smallint(5) unsigned NOT NULL,
  `start` char(15) NOT NULL,
  `detail` text NOT NULL,
  `is_attention` tinyint(4) NOT NULL,
  `is_reg` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `praise` int(11) NOT NULL,
  `focus` int(11) NOT NULL,
  `supports` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_crowdfunding
-- ----------------------------

-- ----------------------------
-- Table structure for tp_crowdfunding_focus
-- ----------------------------
DROP TABLE IF EXISTS `tp_crowdfunding_focus`;
CREATE TABLE `tp_crowdfunding_focus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `wecha_id` char(40) NOT NULL,
  `token` char(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`cid`) USING BTREE,
  KEY `wecha_id` (`wecha_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_crowdfunding_focus
-- ----------------------------

-- ----------------------------
-- Table structure for tp_crowdfunding_order
-- ----------------------------
DROP TABLE IF EXISTS `tp_crowdfunding_order`;
CREATE TABLE `tp_crowdfunding_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_name` char(50) NOT NULL,
  `orderid` char(50) NOT NULL,
  `token` char(40) NOT NULL,
  `pid` int(11) NOT NULL,
  `reward_id` int(11) NOT NULL,
  `wecha_id` char(40) NOT NULL,
  `address` varchar(300) NOT NULL,
  `add_time` char(15) NOT NULL,
  `pay_time` char(15) NOT NULL,
  `price` double(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `username` char(20) NOT NULL,
  `tel` char(20) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `paytype` varchar(50) NOT NULL,
  `paid` tinyint(4) NOT NULL,
  `third_id` varchar(100) NOT NULL,
  `is_delete` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_crowdfunding_order
-- ----------------------------

-- ----------------------------
-- Table structure for tp_crowdfunding_reward
-- ----------------------------
DROP TABLE IF EXISTS `tp_crowdfunding_reward`;
CREATE TABLE `tp_crowdfunding_reward` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `money` float NOT NULL,
  `content` text NOT NULL,
  `img` varchar(250) NOT NULL,
  `people` int(11) NOT NULL,
  `back_day` smallint(6) NOT NULL,
  `carriage` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_crowdfunding_reward
-- ----------------------------

-- ----------------------------
-- Table structure for tp_customer
-- ----------------------------
DROP TABLE IF EXISTS `tp_customer`;
CREATE TABLE `tp_customer` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT '',
  `sex` varchar(4) DEFAULT '',
  `mobile` varchar(200) DEFAULT '',
  `tel` varchar(200) DEFAULT '',
  `email` varchar(200) DEFAULT '',
  `company` varchar(100) DEFAULT '',
  `job` varchar(20) DEFAULT '',
  `address` varchar(120) DEFAULT '',
  `website` varchar(200) DEFAULT '',
  `qq` varchar(16) DEFAULT '',
  `weixin` varchar(50) DEFAULT '',
  `yixin` varchar(50) DEFAULT '',
  `weibo` varchar(50) DEFAULT '',
  `laiwang` varchar(50) DEFAULT '',
  `remark` varchar(255) DEFAULT '',
  `origin` bigint(20) unsigned NOT NULL DEFAULT '0',
  `originName` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `createUser` varchar(32) NOT NULL DEFAULT '',
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  `groupId` varchar(20) NOT NULL DEFAULT '',
  `groupName` varchar(200) DEFAULT '',
  `group` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_customer
-- ----------------------------

-- ----------------------------
-- Table structure for tp_customs
-- ----------------------------
DROP TABLE IF EXISTS `tp_customs`;
CREATE TABLE `tp_customs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fc` char(150) NOT NULL,
  `price` char(150) NOT NULL,
  `about` char(150) NOT NULL,
  `common` char(150) NOT NULL,
  `login` char(150) NOT NULL,
  `help` char(150) NOT NULL,
  `fcname` varchar(80) NOT NULL,
  `pricename` varchar(80) NOT NULL,
  `loginname` varchar(80) NOT NULL,
  `helpname` varchar(80) NOT NULL,
  `aboutname` varchar(80) NOT NULL,
  `commonname` varchar(80) NOT NULL,
  `fc_open` int(11) NOT NULL DEFAULT '0',
  `about_open` int(11) NOT NULL DEFAULT '0',
  `common_open` int(11) NOT NULL DEFAULT '0',
  `help_open` int(11) NOT NULL DEFAULT '0',
  `login_open` int(11) NOT NULL DEFAULT '0',
  `price_open` int(11) NOT NULL DEFAULT '0',
  `fc_dspl` int(11) NOT NULL DEFAULT '0',
  `common_dspl` int(11) NOT NULL DEFAULT '0',
  `about_dspl` int(11) NOT NULL DEFAULT '0',
  `login_dspl` int(11) NOT NULL DEFAULT '0',
  `price_dspl` int(11) NOT NULL DEFAULT '0',
  `help_dspl` int(11) NOT NULL DEFAULT '0',
  `agentid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_customs
-- ----------------------------

-- ----------------------------
-- Table structure for tp_custom_field
-- ----------------------------
DROP TABLE IF EXISTS `tp_custom_field`;
CREATE TABLE `tp_custom_field` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` char(15) NOT NULL,
  `filed_option` varchar(500) NOT NULL,
  `field_type` char(10) NOT NULL,
  `item_name` char(15) NOT NULL,
  `field_match` char(80) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `is_empty` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `err_info` char(35) NOT NULL,
  `set_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_custom_field
-- ----------------------------

-- ----------------------------
-- Table structure for tp_custom_info
-- ----------------------------
DROP TABLE IF EXISTS `tp_custom_info`;
CREATE TABLE `tp_custom_info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(20) NOT NULL,
  `wecha_id` char(30) NOT NULL,
  `set_id` int(11) NOT NULL,
  `add_time` char(11) NOT NULL,
  `user_name` char(35) NOT NULL,
  `phone` char(11) NOT NULL,
  `sub_info` text NOT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_custom_info
-- ----------------------------

-- ----------------------------
-- Table structure for tp_custom_limit
-- ----------------------------
DROP TABLE IF EXISTS `tp_custom_limit`;
CREATE TABLE `tp_custom_limit` (
  `limit_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `enddate` char(10) NOT NULL,
  `sub_total` smallint(6) NOT NULL,
  `today_total` smallint(6) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`limit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_custom_limit
-- ----------------------------

-- ----------------------------
-- Table structure for tp_custom_set
-- ----------------------------
DROP TABLE IF EXISTS `tp_custom_set`;
CREATE TABLE `tp_custom_set` (
  `set_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(30) NOT NULL,
  `keyword` char(25) NOT NULL,
  `intro` varchar(100) NOT NULL,
  `addtime` char(10) NOT NULL,
  `top_pic` char(100) NOT NULL,
  `succ_info` char(35) NOT NULL,
  `err_info` char(35) NOT NULL,
  `detail` text NOT NULL,
  `limit_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  `tel` char(20) NOT NULL,
  `address` char(80) NOT NULL,
  `longitude` char(20) NOT NULL,
  `latitude` char(20) NOT NULL,
  PRIMARY KEY (`set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_custom_set
-- ----------------------------

-- ----------------------------
-- Table structure for tp_cutprice
-- ----------------------------
DROP TABLE IF EXISTS `tp_cutprice`;
CREATE TABLE `tp_cutprice` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `wxtitle` varchar(100) NOT NULL,
  `wxpic` varchar(100) NOT NULL,
  `wxinfo` varchar(500) DEFAULT NULL,
  `starttime` int(11) NOT NULL,
  `original` varchar(100) NOT NULL,
  `startprice` varchar(100) NOT NULL,
  `stopprice` varchar(100) NOT NULL,
  `cuttime` int(11) NOT NULL,
  `cutprice` varchar(100) NOT NULL,
  `inventory` int(11) NOT NULL,
  `logoimg1` varchar(100) NOT NULL,
  `logourl1` varchar(200) DEFAULT NULL,
  `logoimg2` varchar(100) DEFAULT NULL,
  `logourl2` varchar(200) DEFAULT NULL,
  `logoimg3` varchar(100) DEFAULT NULL,
  `logourl3` varchar(200) DEFAULT NULL,
  `info` text,
  `guize` text,
  `state` int(11) NOT NULL DEFAULT '0',
  `state_subscribe` int(11) NOT NULL DEFAULT '0',
  `state_userinfo` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  `onebuynum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_cutprice
-- ----------------------------

-- ----------------------------
-- Table structure for tp_cutprice_order
-- ----------------------------
DROP TABLE IF EXISTS `tp_cutprice_order`;
CREATE TABLE `tp_cutprice_order` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL,
  `orderid` varchar(200) NOT NULL,
  `num` int(11) NOT NULL,
  `nowprice` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `address` varchar(500) NOT NULL,
  `endtime` int(11) NOT NULL,
  `addtime` int(11) NOT NULL,
  `wecha_id` varchar(200) NOT NULL,
  `transactionid` varchar(200) DEFAULT NULL,
  `paytype` varchar(100) DEFAULT NULL,
  `third_id` varchar(100) DEFAULT NULL,
  `paid` int(11) NOT NULL DEFAULT '0',
  `paystate` int(11) NOT NULL DEFAULT '0',
  `fahuo` int(11) NOT NULL DEFAULT '0',
  `fahuoid` varchar(100) DEFAULT NULL,
  `fahuoname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_cutprice_order
-- ----------------------------

-- ----------------------------
-- Table structure for tp_czzreply_info
-- ----------------------------
DROP TABLE IF EXISTS `tp_czzreply_info`;
CREATE TABLE `tp_czzreply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `picurls1` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `bg` varchar(120) NOT NULL,
  `wx` varchar(120) NOT NULL,
  `zz` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_czzreply_info
-- ----------------------------

-- ----------------------------
-- Table structure for tp_deliemail
-- ----------------------------
DROP TABLE IF EXISTS `tp_deliemail`;
CREATE TABLE `tp_deliemail` (
  `token` varchar(60) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `smtpserver` varchar(40) NOT NULL DEFAULT '',
  `port` varchar(40) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(60) NOT NULL DEFAULT '',
  `receive` varchar(60) NOT NULL DEFAULT '',
  `shangcheng` tinyint(1) NOT NULL DEFAULT '0',
  `yuyue` tinyint(1) NOT NULL DEFAULT '0',
  `baom` tinyint(1) NOT NULL DEFAULT '0',
  `zxyy` tinyint(1) NOT NULL DEFAULT '0',
  `toupiao` tinyint(1) NOT NULL DEFAULT '0',
  `dingcan` tinyint(1) NOT NULL,
  `car` tinyint(1) NOT NULL,
  `yiliao` tinyint(1) NOT NULL,
  `jdbg` tinyint(1) NOT NULL,
  `beauty` tinyint(1) NOT NULL,
  `fitness` tinyint(1) NOT NULL,
  `gover` tinyint(1) NOT NULL,
  `zhaopin` tinyint(1) NOT NULL,
  `jianli` tinyint(1) NOT NULL,
  `fangchan` tinyint(1) NOT NULL,
  `food` tinyint(1) NOT NULL,
  `travel` tinyint(1) NOT NULL,
  `flower` tinyint(1) NOT NULL,
  `property` tinyint(1) NOT NULL,
  `bar` tinyint(1) NOT NULL,
  `fitment` tinyint(1) NOT NULL,
  `wedding` tinyint(1) NOT NULL,
  `affections` tinyint(1) NOT NULL,
  `housekeeper` tinyint(1) NOT NULL,
  `lease` tinyint(1) NOT NULL,
  `wn` tinyint(1) NOT NULL,
  PRIMARY KEY (`token`),
  KEY `token` (`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_deliemail
-- ----------------------------

-- ----------------------------
-- Table structure for tp_dining_table
-- ----------------------------
DROP TABLE IF EXISTS `tp_dining_table`;
CREATE TABLE `tp_dining_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `image` varchar(200) NOT NULL,
  `isbox` tinyint(1) unsigned NOT NULL,
  `isorder` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `catid` int(8) NOT NULL COMMENT '店铺id',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `isbox` (`isbox`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_dining_table
-- ----------------------------

-- ----------------------------
-- Table structure for tp_dish
-- ----------------------------
DROP TABLE IF EXISTS `tp_dish`;
CREATE TABLE `tp_dish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `unit` varchar(3) NOT NULL,
  `price` float NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `isopen` tinyint(1) unsigned NOT NULL,
  `image` varchar(200) NOT NULL COMMENT '片',
  `des` varchar(500) NOT NULL,
  `creattime` int(10) unsigned NOT NULL,
  `catid` int(8) NOT NULL COMMENT '店铺id',
  `sort` int(10) unsigned NOT NULL COMMENT '排序，数字越小排的越前',
  `istakeout` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否支持外卖',
  `isdiscount` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否支持会员折扣',
  `instock` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '库存',
  `refreshstock` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '刷新库存',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`),
  KEY `isopen` (`isopen`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_dish
-- ----------------------------

-- ----------------------------
-- Table structure for tp_dishout_manage
-- ----------------------------
DROP TABLE IF EXISTS `tp_dishout_manage`;
CREATE TABLE `tp_dishout_manage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT 'company表id',
  `token` varchar(255) NOT NULL,
  `zc_sdate` int(10) unsigned NOT NULL DEFAULT '0',
  `zc_edate` int(10) unsigned NOT NULL DEFAULT '0',
  `wc_sdate` int(10) unsigned NOT NULL DEFAULT '0',
  `wc_edate` int(10) unsigned NOT NULL DEFAULT '0',
  `permin` tinyint(3) unsigned NOT NULL DEFAULT '15',
  `removing` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '服务半径',
  `area` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '配送区域',
  `sendtime` tinyint(3) NOT NULL COMMENT '送达时间(分)',
  `shopimg` text CHARACTER SET utf8 NOT NULL COMMENT '门店幻灯图片',
  `stype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '外送方式类型',
  `pricing` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '外送相关金额设定',
  `keyword` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '关键词',
  `rtitle` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT '回复标题',
  `rinfo` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '回复描述',
  `picurl` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '回复封面图片',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_dishout_manage
-- ----------------------------

-- ----------------------------
-- Table structure for tp_dishout_salelog
-- ----------------------------
DROP TABLE IF EXISTS `tp_dishout_salelog`;
CREATE TABLE `tp_dishout_salelog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(250) CHARACTER SET utf8 NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '商店id',
  `did` int(10) unsigned NOT NULL COMMENT 'dish表id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'dish_order表id',
  `money` decimal(10,2) unsigned NOT NULL COMMENT '下单时此菜总金额',
  `nums` int(10) unsigned NOT NULL COMMENT '下单时份数',
  `unitprice` decimal(10,2) unsigned NOT NULL COMMENT '下单时此菜单价',
  `dname` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT '下单时菜名',
  `paytype` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '支付方式',
  `addtime` int(10) unsigned NOT NULL COMMENT '下单时间',
  `addtimestr` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '下单时间',
  `comefrom` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0外卖1微餐饮',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_dishout_salelog
-- ----------------------------

-- ----------------------------
-- Table structure for tp_dish_company
-- ----------------------------
DROP TABLE IF EXISTS `tp_dish_company`;
CREATE TABLE `tp_dish_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `istakeaway` tinyint(1) unsigned NOT NULL,
  `price` float NOT NULL,
  `payonline` tinyint(1) unsigned NOT NULL,
  `subscription` float NOT NULL,
  `discount` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '折扣',
  `kconoff` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '开启库存',
  `autoref` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '营业开始时间',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '营业结束时间',
  `imgs` varchar(250) NOT NULL COMMENT '餐厅图片',
  `bookingtime` varchar(255) NOT NULL COMMENT '餐桌选择时间段',
  `nowpay` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否立刻支付',
  `advancepay` int(10) unsigned NOT NULL COMMENT '预付定金',
  `dishsame` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '分店统一菜品',
  `offtable` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '关闭选择餐桌',
  `starttime2` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '营业开始时间',
  `endtime2` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '营业结束时间',
  `token` varchar(50) NOT NULL DEFAULT '',
  `catid` mediumint(3) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL COMMENT '店铺状态',
  `category` varchar(10) NOT NULL COMMENT '店铺分类',
  `time` varchar(12) NOT NULL COMMENT '营业时间',
  `money` double(10,2) NOT NULL COMMENT '起送价格',
  `radius` varchar(10) NOT NULL COMMENT '服务半径',
  `scope` varchar(100) NOT NULL COMMENT '配送范围',
  `bulletin` text NOT NULL COMMENT '店铺公告',
  `memberCode` varchar(50) NOT NULL,
  `feiyin_key` varchar(50) NOT NULL,
  `deviceNo` varchar(20) NOT NULL,
  `print_status` int(1) NOT NULL,
  `print_total` int(4) NOT NULL COMMENT '打印份数',
  `phone_authorize` int(1) NOT NULL COMMENT '手机订单短信验证开关',
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_status` int(1) NOT NULL,
  `email_status` int(1) NOT NULL,
  `printer` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_dish_company
-- ----------------------------

-- ----------------------------
-- Table structure for tp_dish_like
-- ----------------------------
DROP TABLE IF EXISTS `tp_dish_like`;
CREATE TABLE `tp_dish_like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `did` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_dish_like
-- ----------------------------

-- ----------------------------
-- Table structure for tp_dish_name
-- ----------------------------
DROP TABLE IF EXISTS `tp_dish_name`;
CREATE TABLE `tp_dish_name` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `token` varchar(250) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_dish_name
-- ----------------------------

-- ----------------------------
-- Table structure for tp_dish_order
-- ----------------------------
DROP TABLE IF EXISTS `tp_dish_order`;
CREATE TABLE `tp_dish_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `price` float NOT NULL,
  `nums` smallint(3) unsigned NOT NULL,
  `info` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `tel` varchar(13) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL,
  `tableid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `reservetime` int(11) NOT NULL,
  `isuse` tinyint(1) NOT NULL,
  `paid` tinyint(1) unsigned NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `printed` tinyint(1) unsigned NOT NULL,
  `des` varchar(500) NOT NULL,
  `takeaway` tinyint(1) unsigned NOT NULL,
  `paytype` varchar(50) NOT NULL DEFAULT '',
  `third_id` varchar(100) NOT NULL DEFAULT '',
  `comefrom` varchar(50) NOT NULL DEFAULT 'dish' COMMENT '表明来源字母全小写',
  `stype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '外送方式类型',
  `isdel` tinyint(1) unsigned DEFAULT '0',
  `allmark` text NOT NULL COMMENT '购物车备注',
  `havepaid` float unsigned NOT NULL DEFAULT '0' COMMENT '二次支付时记录已经支付的金额',
  `paycount` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '支付的次数',
  `advancepay` float unsigned NOT NULL DEFAULT '0' COMMENT '预付金额',
  `isover` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '订单支付是否结束1进行2结束',
  `tmporderid` varchar(100) NOT NULL COMMENT '临时订单id支持多次付款',
  `catid` int(8) NOT NULL COMMENT '店铺id',
  `send_email` char(1) NOT NULL DEFAULT '0' COMMENT '1已发0失败',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`wecha_id`),
  KEY `token` (`token`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_dish_order
-- ----------------------------

-- ----------------------------
-- Table structure for tp_dish_reply
-- ----------------------------
DROP TABLE IF EXISTS `tp_dish_reply`;
CREATE TABLE `tp_dish_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT 'company表id',
  `token` varchar(250) CHARACTER SET utf8 NOT NULL,
  `tableid` int(10) unsigned NOT NULL COMMENT 'dining_table表id',
  `keyword` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '关键词',
  `cf` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '来源',
  `addtime` int(10) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1餐厅2餐桌后台0餐桌',
  `reg_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'recognition表id',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`) USING BTREE,
  KEY `reg_id` (`reg_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_dish_reply
-- ----------------------------

-- ----------------------------
-- Table structure for tp_dish_sort
-- ----------------------------
DROP TABLE IF EXISTS `tp_dish_sort`;
CREATE TABLE `tp_dish_sort` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `des` varchar(500) NOT NULL,
  `image` varchar(200) NOT NULL,
  `num` smallint(3) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `catid` int(8) NOT NULL COMMENT '店铺id',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_dish_sort
-- ----------------------------

-- ----------------------------
-- Table structure for tp_dish_table
-- ----------------------------
DROP TABLE IF EXISTS `tp_dish_table`;
CREATE TABLE `tp_dish_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `tableid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `reservetime` int(10) unsigned NOT NULL,
  `creattime` int(10) unsigned NOT NULL,
  `orderid` int(10) unsigned NOT NULL,
  `isuse` tinyint(1) unsigned NOT NULL,
  `dn_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'dish_name表id',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `wecha_id` (`wecha_id`,`reservetime`),
  KEY `tableid` (`tableid`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_dish_table
-- ----------------------------

-- ----------------------------
-- Table structure for tp_distribution_setting
-- ----------------------------
DROP TABLE IF EXISTS `tp_distribution_setting`;
CREATE TABLE `tp_distribution_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `commission_type` varchar(10) NOT NULL DEFAULT '' COMMENT '佣金类型 fixed 固定 float 百分比',
  `commission` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '佣金',
  `multi_distribution` char(1) NOT NULL DEFAULT '0' COMMENT '多级分销 0, 1',
  `upgrade_channel_commission` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '升级渠道商奖励',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT '主站唯一标识',
  `agreement` text NOT NULL COMMENT '加盟协议',
  `is_check` char(1) NOT NULL DEFAULT '0' COMMENT '分销申请是否要审核',
  `level_max` int(3) NOT NULL DEFAULT '0' COMMENT '最大分销级别',
  `paid_day` tinyint(3) DEFAULT '2' COMMENT '佣金支付处理（工作日）',
  `ad_img` varchar(200) NOT NULL DEFAULT '' COMMENT '分销引导广告（图片）',
  `home_banner_img` varchar(200) NOT NULL DEFAULT '' COMMENT '分销店铺首页banner图片',
  `logo` varchar(200) NOT NULL DEFAULT '' COMMENT '分销店铺logo图片',
  `allow_distribution` char(1) NOT NULL DEFAULT '0' COMMENT '是否允许分销 0不允许 0允许',
  PRIMARY KEY (`id`),
  KEY `token` (`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_distribution_setting
-- ----------------------------

-- ----------------------------
-- Table structure for tp_distributor
-- ----------------------------
DROP TABLE IF EXISTS `tp_distributor`;
CREATE TABLE `tp_distributor` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '分销商id',
  `uid` int(10) NOT NULL COMMENT '用户id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `addr` varchar(500) NOT NULL DEFAULT '' COMMENT '地址',
  `latitude` double NOT NULL DEFAULT '0' COMMENT '经度',
  `longitude` double NOT NULL DEFAULT '0' COMMENT '纬度',
  `intro` text NOT NULL COMMENT '简介',
  `ischannel` char(1) NOT NULL DEFAULT '0' COMMENT '渠道商 0,1',
  `status` char(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `balance` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '未提现金额',
  `paid` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '已提现金额',
  `checked` char(1) NOT NULL DEFAULT '0' COMMENT '审核 0,1',
  `regtime` varchar(20) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `wecha_id` varchar(60) NOT NULL DEFAULT '0' COMMENT '粉丝识别码',
  `token` varchar(50) NOT NULL DEFAULT '0' COMMENT '主商城识别码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wecha_id` (`wecha_id`) USING BTREE,
  KEY `token` (`token`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_distributor
-- ----------------------------

-- ----------------------------
-- Table structure for tp_distributor_commission_record
-- ----------------------------
DROP TABLE IF EXISTS `tp_distributor_commission_record`;
CREATE TABLE `tp_distributor_commission_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `did` int(10) NOT NULL DEFAULT '0' COMMENT '分销商id',
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '买家id 0为游客结算',
  `product_id` int(10) NOT NULL DEFAULT '0' COMMENT '商品id 0为升级渠道商奖励',
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '佣金',
  `bak` text NOT NULL COMMENT '备注',
  `addtime` varchar(20) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `did` (`did`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_distributor_commission_record
-- ----------------------------

-- ----------------------------
-- Table structure for tp_distributor_order
-- ----------------------------
DROP TABLE IF EXISTS `tp_distributor_order`;
CREATE TABLE `tp_distributor_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL DEFAULT '0' COMMENT '订单id',
  `did` int(10) NOT NULL DEFAULT '0' COMMENT '分销商id',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_distributor_order
-- ----------------------------

-- ----------------------------
-- Table structure for tp_distributor_product
-- ----------------------------
DROP TABLE IF EXISTS `tp_distributor_product`;
CREATE TABLE `tp_distributor_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '商品id',
  `did` int(10) NOT NULL DEFAULT '0' COMMENT '分销商id',
  `soldout` char(1) NOT NULL DEFAULT '0' COMMENT '商品下架 0，1',
  `salesnum` int(5) NOT NULL DEFAULT '0' COMMENT '销售量',
  `salestotal` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '销售额',
  `time` varchar(20) NOT NULL DEFAULT '' COMMENT '操作时间(上架、下架)',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`) USING BTREE,
  KEY `did` (`did`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_distributor_product
-- ----------------------------

-- ----------------------------
-- Table structure for tp_distributor_receipt
-- ----------------------------
DROP TABLE IF EXISTS `tp_distributor_receipt`;
CREATE TABLE `tp_distributor_receipt` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `did` int(10) NOT NULL DEFAULT '0' COMMENT '分销商id',
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `paidtime` varchar(20) NOT NULL DEFAULT '0' COMMENT '打款时间',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态 0 已打款 , 1 已收款',
  `receipttime` varchar(20) NOT NULL DEFAULT '0' COMMENT '收款时间',
  `time` varchar(20) NOT NULL DEFAULT '0' COMMENT '申请提现时间',
  PRIMARY KEY (`id`),
  KEY `did` (`did`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_distributor_receipt
-- ----------------------------

-- ----------------------------
-- Table structure for tp_distributor_relation
-- ----------------------------
DROP TABLE IF EXISTS `tp_distributor_relation`;
CREATE TABLE `tp_distributor_relation` (
  `did` int(10) NOT NULL DEFAULT '0' COMMENT '分销商id',
  `supdid` int(10) NOT NULL DEFAULT '0' COMMENT '所属分销商id',
  `supdids` varchar(3000) NOT NULL DEFAULT '0' COMMENT '上级分销商id列表',
  `level` int(5) NOT NULL DEFAULT '1' COMMENT '级别',
  KEY `did` (`did`) USING BTREE,
  KEY `supdid` (`supdid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_distributor_relation
-- ----------------------------

-- ----------------------------
-- Table structure for tp_distributor_store
-- ----------------------------
DROP TABLE IF EXISTS `tp_distributor_store`;
CREATE TABLE `tp_distributor_store` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `did` int(10) NOT NULL DEFAULT '0' COMMENT '分销商id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '店铺名称',
  `tpid` int(10) NOT NULL DEFAULT '0' COMMENT '首页模板',
  `footerid` int(10) NOT NULL DEFAULT '0' COMMENT '底部导航',
  `headerid` int(10) NOT NULL DEFAULT '0' COMMENT '顶部导航',
  `payee` varchar(50) NOT NULL DEFAULT '' COMMENT '收款人',
  `bankcard` varchar(50) NOT NULL DEFAULT '' COMMENT '银行卡',
  `logourl` varchar(200) NOT NULL DEFAULT '' COMMENT '店铺logo',
  `intro` text NOT NULL COMMENT '图文详细页内容',
  `bankname` varchar(50) NOT NULL DEFAULT '' COMMENT '开户银行',
  `notice` varchar(200) NOT NULL DEFAULT '' COMMENT '店铺公告',
  `noticetime` varchar(20) NOT NULL DEFAULT '' COMMENT '公告时间',
  `banner` varchar(200) NOT NULL DEFAULT '' COMMENT '首页banner',
  `allow_distribution` char(1) NOT NULL DEFAULT '0' COMMENT '是否允许分销加盟 0,1',
  `commission_rate` float NOT NULL DEFAULT '0' COMMENT '佣金分成',
  `product_source` char(1) NOT NULL DEFAULT '1' COMMENT '分销商品来源 0, 1 不限, 本店铺',
  `ad_img` varchar(200) NOT NULL DEFAULT '' COMMENT '分销引导广告（图片）',
  PRIMARY KEY (`id`),
  KEY `did` (`did`) USING BTREE,
  KEY `tpid` (`tpid`) USING BTREE,
  KEY `footerid` (`footerid`) USING BTREE,
  KEY `headerid` (`headerid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_distributor_store
-- ----------------------------

-- ----------------------------
-- Table structure for tp_diyform
-- ----------------------------
DROP TABLE IF EXISTS `tp_diyform`;
CREATE TABLE `tp_diyform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `age` tinyint(2) NOT NULL,
  `qq` int(11) NOT NULL,
  `photo` int(11) NOT NULL,
  `tel` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_diyform
-- ----------------------------

-- ----------------------------
-- Table structure for tp_diyform_set
-- ----------------------------
DROP TABLE IF EXISTS `tp_diyform_set`;
CREATE TABLE `tp_diyform_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `jion_num` int(5) NOT NULL,
  `select_name` varchar(200) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_diyform_set
-- ----------------------------

-- ----------------------------
-- Table structure for tp_diymen_class
-- ----------------------------
DROP TABLE IF EXISTS `tp_diymen_class`;
CREATE TABLE `tp_diymen_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `url` varchar(300) NOT NULL DEFAULT '',
  `is_show` tinyint(1) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `wxsys` char(40) NOT NULL,
  `text` varchar(500) NOT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `nav` varchar(200) DEFAULT NULL,
  `emoji_code` varchar(16) NOT NULL COMMENT '图标码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_diymen_class
-- ----------------------------

-- ----------------------------
-- Table structure for tp_diymen_set
-- ----------------------------
DROP TABLE IF EXISTS `tp_diymen_set`;
CREATE TABLE `tp_diymen_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `appid` varchar(18) NOT NULL,
  `appsecret` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_diymen_set
-- ----------------------------

-- ----------------------------
-- Table structure for tp_dream
-- ----------------------------
DROP TABLE IF EXISTS `tp_dream`;
CREATE TABLE `tp_dream` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `content` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_dream
-- ----------------------------
INSERT INTO `tp_dream` VALUES ('1', '梦见父母', '梦见自己成了幼儿与父母相处  幸运的事情即将发生。可以尝到美昧可口的咖啡、得到电影招待券等等。你将不觉莞尔一笑。梦见和父母快乐地有说有笑  家中将起波澜。对父母将感觉厌烦，会有离家出走的行为。你还未成年，不要因轻率急躁而遗恨终身，要多多自重。梦见父母离婚  朋友运不如意。你无心的一句话，将引起误解。如果置之不理，朋友将离你而去，要设法解释清楚才好。梦见受母亲疼爱  在爱情方面将有乐事。约会的地方最好尽量选择幽静的地方，诸如图书馆、博物馆、黄昏的公园等等。梦见被父亲大骂一顿  健康方面有不良征兆。尤其要注意的是意外事故，在上下车、横穿车道时要特别小心哪。梦见离开父母而成孤苦伶仃  爱情方面将有很大的幸运。如果有意中人，不必迟疑可以进攻，绝对不会被封杀出局。因为这是梦中注定的');
INSERT INTO `tp_dream` VALUES ('2', '梦见护士', ' 已婚女子梦见护士  不久会怀孕，得贵子。 少女梦见有一群美貌的护士  很快要出嫁。 少女梦见和护士争吵  婚事不顺利，迟迟不能出嫁。 病人梦见护士  痛苦很快要过去。');
INSERT INTO `tp_dream` VALUES ('3', '梦见老师', ' 梦见受老师称赞  在学业方面乌云密布。由于连日的熬夜，在课堂上竟开始打陀结果受到老师批评。这就是所谓反梦。 梦见受老师责骂  家人关系极佳。对双亲能克尽孝道，你将令人刮目相看。也许每个月的零用钱会大幅度增加呢。 梦见到老师家里拜访  人际关系的运势衰退的预兆。头顶上有一颗争执之星，要注意你的言行举止，防止争执，尤其脾气不可暴躁。 梦见正在上课  读书运渐入佳境。将有指点迷津的同学出现，以此为契机，你的读书欲将大增。也就是说，你将会有很大的干劲。要努力喔! 梦见遇见校长  这是上学恐惧症。不要一天到晚抱着书本，过分拘泥于成绩，有时也要放松心情，尽量参加其他活动。否则你的神经将很快衰弱。 梦见异性老师向你亲密攀谈  爱情运将下降，情人之间的感情开始变得索然无味，最好改变一下约会的方式');
INSERT INTO `tp_dream` VALUES ('4', '梦见男孩', '梦见男孩，是祥兆。女人梦见男孩，会生病。梦见漂亮的男孩，朋友会忘恩负义。梦见生男孩，生活会幸福、恬适。梦见男孩夭亡，大难将降临。女人梦见自己将要生一个男孩，意味着会过上幸福舒畅的生活');
INSERT INTO `tp_dream` VALUES ('5', '梦见皇后', ' 男人梦见皇后  会经济受损。 女人梦见皇后  丈夫会心情愉快。 囚犯梦见皇后  很快能恢复自由。 叛国者梦见皇后  不久会成为国家领导人的宠儿。 商人梦见皇后  出国做生意能发大财。 已婚女人梦见自己成了皇后  很快会与丈夫分离，或孩子生病，或者由于丈夫失业，左支右绌。 未婚女子梦见自己当了皇后  嫁到一个有名望富有的家庭。 男人梦见同皇后握手  会受到国家尊重，官运亨通。 男人梦见同皇后握手  会娶富人家的小姐为妻。 已婚女人梦见和皇后握手  会身居高位。 未婚女子梦见和皇后握手  想与意中人结为伴侣，但却会遭到父母的阻拦。 梦见和皇后争吵  能发大财');
INSERT INTO `tp_dream` VALUES ('6', '梦见朋友', ' 梦见大伙儿一起去旅行  最近，很可能发生快乐的事。如亲友参加电视猜谜得奖；老师临时有事，自习时间增加等等。 梦见与朋友一起挨老师责骂  考试运极度好转。考试前所看的复习题，全部出现在试卷中，必将获得近于满分的成绩。 梦见与朋友一起旷课到处游荡  在健康方面乌云密布。放学途中买东西吃，将食物中毒；咬紧牙关熬夜，眼睛将出毛病、只好去看医生，不料医生临时休业真是霉运当头! 梦见有朋友来玩  异性运上升。将有新的浪漫史产生。爱情战的武器，不外乎是电话。最幸运的黄金时段将是晚上八点到九点。 梦见与朋友一起又吃又喝  在金钱方面要多加小心。不要花无谓的钱，搞得囊空如洗。 梦见与朋友并排读书  进行新尝试的最好时机。参加社团、练技习艺，只要是日常想做的事，立刻开始行动吧。 梦见与朋友一起工作  人际关系好。没有钱的时候；有事情必须要别人帮忙时候，朋友一定会伸出援助的手。 梦见朋友与异性很要好  爱情运将停滞。与情人之间总是格格不入，波折迭起。选一处喝咖啡的地方，也争执不休。 梦见与朋友玩笑嬉戏  在异性方面将有问题出现。对性的诱惑千万要小心，要保持清醒与理智。 梦见一群好友反目而分裂  人际关系将不如意。无意间发觉最信赖的朋友在背后说你，因此受到莫大的打击。要治愈这心里的创伤，要一段很长的时间');
INSERT INTO `tp_dream` VALUES ('7', '梦见守财奴', ' 梦见一毛不拔的人  朋友会吵嘴。 梦见与吝啬鬼交朋友  要遭不幸。 男人梦见自己成了铁公鸡  一毛不拔，生意能赚大钱。 已婚女人梦见自己小气  婆婆家的处境会很令人担忧。 梦见和吝啬人吵架  预示要交新朋友。 梦见偷拿守财奴的东西  会身居高位。 梦见铁公鸡送钱给自己家  会被偷窃');
INSERT INTO `tp_dream` VALUES ('8', '梦见尼姑', ' 男人梦见女出家人  无数的灾难会临头。 女人梦见与出家人交谈  丈夫家的人能和睦相处，生活愉快。 少女梦见与女出家人发生争吵  是凶兆，亲人会受辱。');
INSERT INTO `tp_dream` VALUES ('9', '梦见小孩', ' 梦见抱起婴儿  财运相当顺利的象征。你的存款将大幅度增加，但绝对不可借给别人，因为要不回来的可能性很大。 梦见欺负小孩儿  人际关系有阴影。你的隐私将被周围的人发觉。必须小心加以防范，别忘了隔墙有耳! 梦见与儿童一起游戏  学校里将发生快乐的事。新近成为会员的后生小辈，竟是英俊无比的异性每天都盼望快点下课');
INSERT INTO `tp_dream` VALUES ('10', '梦见人群', ' 梦见许多穿着华贵服装的人聚集在一起  未婚者将会喜结良缘。 梦到穿脏衣服的人聚集在一起  做梦人的亲属会有人与世长辞');
INSERT INTO `tp_dream` VALUES ('11', '梦见疯子', ' 少女梦见与女出家人发生争吵  是凶兆，亲人会受辱。 姑娘梦见疯子  会嫁给一个富有、如意的男子。 跛子梦见疯子  会找到忠诚的仆人。 梦见妻子疯了  她会把家安排得井井有条');
INSERT INTO `tp_dream` VALUES ('12', '梦见兄弟姊妹', ' 梦见受兄或姊欺负而心有不甘  兄弟运蕴酿着波折。仅仅为了一支铅笔、或一块橡皮，就要起一场争执。这时，最好由父母出面做公道人。 梦见兄弟或妹妹将出去游玩  在人际关系中将有幸运来临。可能由于趣味相投，将结识新朋友。只要坦诚相待，必然可以成为心腹之交。 梦见兄弟吵架  比赛运衰减。围棋、象棋、电视娱乐比赛不管参加任何一种比赛，准输无疑。这种状态将持续半年，要有心理准备! 梦见与兄弟姊妹合力做些事情  学业方面将有进步。以往难缠的科目，也将全部都有好分数。有可能得到老师当众表扬，使你神采飞扬。 梦见与兄弟或姊妹远离  在异性方面将有幸运。可能接到某同学写的热情洋溢的情书。这时将如何应付?这是你个人的事。 梦见与兄弟姊妹同盖一床被子  雨过天睛，健康运上升。今后一个月，虽然有一点不如意，但过后将精力充沛，可以过一段无病无痛的日子');
INSERT INTO `tp_dream` VALUES ('13', '梦见军队', '梦见军队开来或军队处于立定姿势，这是好的征兆。梦见军队离去，意味着将遭不幸。梦见军队打败了，倒霉的日子将要到来。梦见军队胜利了，寓意着要交好运。');
INSERT INTO `tp_dream` VALUES ('14', '梦见清道夫', ' 梦见清洁夫  要遭厄运。 女人梦见清扫人  会忍受丈夫分离的痛苦。 梦见当了清道夫  前途无量。 商人梦见做清道夫的工作  生意会兴旺，能发大财。 梦见与清扫工吵架  会臭名远扬。 梦见和清洁工交朋友  会名声大噪，得财进宝');
INSERT INTO `tp_dream` VALUES ('15', '梦见祖父母', ' 梦见祖父母给你零用钱  将有极佳的金钱运。但仍有浪费的倾向，所以出去逛街购物时要有节制。 梦见祖父母责骂母亲  健康方面亮起红灯。虽有强健的身体，也不可过信自己的体力。 必须保持良好的生活规律，要经常运动，加上充分的营养及休息才可保持健康。 梦见帮祖父母捶背  技能方面将进步。这将是练习弹奏吉他的良机，每天加紧练习吧! 梦见祖父母躺在病床上  家中可能发生纠葛。你与双亲及兄弟强能发生争执，注意不要任性。');
INSERT INTO `tp_dream` VALUES ('16', '梦见婴儿', ' 孕妇梦见婴儿，则无象征意义。 梦见抱着婴儿，象征着梦者将会有所收获，不久之后将会得到对于来说很重要的东西。 梦见婴儿笑，象征着人际关系的良好，您能以诚待人，且身边会有很多。 梦见婴儿长牙，象征着计划的顺利实施，您能得到贵人的帮助，不久之后就会有好消息。 梦见婴儿说话，可能是在提醒您最近您会遇到麻烦，总有人从中做怪，也就是犯小人。 梦见婴儿死了，是不详之梦，表明自己计划和希望的破灭，您已经或者将要失去对自己来说很重要的东西。 梦见婴儿哭，表示当前有些压抑的情绪，使得自己心烦意乱，这时候最好静下心来，不要主动出击，做事低调些。');
INSERT INTO `tp_dream` VALUES ('17', '梦见野蛮人', '男人梦见野蛮人，小心啊女人梦见野蛮人，丈夫家里会发生吵架。梦见与野蛮人打斗，是不祥之兆，灾祸会降临。商人梦见会见未开化的人，不久要出国，能发大财。受指控的人梦见未开化的人，会被驱逐出境。旅游者梦见野蛮人，旅行会愉快');
INSERT INTO `tp_dream` VALUES ('18', '梦见邻居', '梦见邻人出现，有火难之灾。火灾固然要小心，也要注意开水、火柴等烫伤。但所梦见的如果是隔壁的邻居，就不会有危险，尽可放心。梦见与邻居同辈的异性，爱情将有新局面。表示你对爱情已有美好憧憬，一定会对某一个人产生爱情。');
INSERT INTO `tp_dream` VALUES ('19', '梦见王子公主', ' 一般梦中的王子、公主多代表着自己或兄弟姐妹。而梦中的国王、女王则代表你的双亲。 梦见王子或公主，则象征着这些日子，也许会与善意的人吵架');
INSERT INTO `tp_dream` VALUES ('20', '梦见小贩', ' 男人梦见小贩  会与朋友分道扬镳。 已婚女人梦见小贩  会与丈夫家的人分开另过，独自操持家务。 梦见与小贩交谈  是好的征兆，丈夫会勤俭持家。 女人梦见与小贩交谈  会有一个装饰豪华具有现代化的住宅、华贵的服装、舒适的生活，一切应有尽有。 梦见与小贩吵架  陌生人会骗走自己的财产。 梦见和小贩交朋友  生意会好转，发大财。 官员梦见自己成了小贩  会被降职，最后只好提出辞职。 商人梦见自己成了小贩  生意会萧条，有可能倒闭。 病人梦见自己成了小贩  要遭厄运，尽管请西医大夫和中医治疗，但病情仍不见好转。 大学教师梦见自己成了小贩  是祥兆，会扬名天下，世界许多国家会邀请他发表演说。失业者梦见自己成了小贩  会接到好几个机构的聘书，但是都难以胜任');
INSERT INTO `tp_dream` VALUES ('21', '梦见医生', ' 梦见医生  亲人会卧床不起。 病人和久病痊愈的人梦见医生  病情会加重，或突然病倒。 梦见与医生交谈，或向医生咨询  会身体健康，延年益寿。 病人梦见和医生谈话，或请教医生  不久病情会好转。 梦见与医生争吵，是不祥之兆  要遭受重大损失。 梦见自己当了医生或西医大夫  不久会被辞退，或生意受到冲击。 梦见去请医生  会与德高望众、受人民尊重的人建立友好关系。 梦见与医生交朋友  不用求人送礼，就能发财。 女人梦见丈夫当了医生  会患子宫病。 梦见侍候医护人员  生意会起伏不定，生活动荡不安');
INSERT INTO `tp_dream` VALUES ('22', '梦见丈夫', ' 梦见担心丈夫头发掉落变成秃顶，这是用梦境体现了对 丈夫 的无能、软弱的嫌恶和怨恨。 梦见丈夫有第三者,可能是你对你们的婚姻在潜意识中总觉得有压力。也许是你的丈夫很优秀，也许是你总是看低自己的魅力，所以你在内心深处总会有危机感，总有着隐隐约约的压力和担心。梦仅仅是现实在我们脑海中扭曲的反映，梦反映什么不重要，重要的是通过梦境我们可以更多地了解自己的内心，更好的改进自己心理状况。 梦见丈夫睡在别人的床上,有这样的梦,实质上说明的情况是你爱老公的程度比不了他爱你的程度. 另外,你已经很习惯有他的日子了,但有的时候,他说不定比你还喜欢吃醋.......呵呵.既然这样,梦见这个,就不是坏事,好好珍惜这份感情吧.');
INSERT INTO `tp_dream` VALUES ('23', '梦见烈士', ' 梦见烈士  会受到人们的尊重，不断进步。 梦见女烈士  要发大财。 梦见受到烈士的责骂  处境对自己极为不利。 梦见自己成了烈士  会灾难临头');
INSERT INTO `tp_dream` VALUES ('24', '梦见警察', ' 梦见警察站着  是危险的兆头。 梦见自己被逮捕  会成为政府官员所喜欢的人物。 惯犯梦见警察抓人  多次作案，能发大财。梦见与警察交谈  会被提升。 女人梦见与警察交谈  丈夫的保镖会受伤。 囚犯梦见与警察谈话  很快会被释放。 商人梦见与警察交谈  要提防竞争对手。 领导人梦见与警察交谈  政府和警察会非常尊重自己。 梦见与警察吵架  是凶兆，预示仇人和强盗在威胁着自己。 未婚男子梦见与警察争吵  会带着自己的情侣逃跑。 男人梦见请求援助  作梦人会幸福安全。 女人梦见求助于警察帮助  很快要出狱。 梦见挨警察的打  会贪污公款，损失惨重。 梦见自己当了警察  会威信扫地。梦见自己穿着警服  会受到刑事案件的牵连');
INSERT INTO `tp_dream` VALUES ('25', '梦见导师', ' 男人梦见自己的 导师 ，一切都会顺心如意。 女人梦见自己的 导师 ，要遭欺辱。梦见新的 导师 ，会遭受损失。 老叟梦见与自己的 导师 交谈，不久要与世长辞。 商人梦见和自己的 导师 谈话，吸收新的合股人，能发大财。 梦见与 导师 吵架，会家破人亡。 学生梦见和 导师 交谈，会因生活困难。中途辍学');
INSERT INTO `tp_dream` VALUES ('26', '梦见队伍', ' 梦见迎亲的队伍  家里要死人。 女人梦见迎亲队伍  丈夫家里要吵架。 已婚男人梦见参加迎亲队伍  会身居高位，人们都有求于自己。 已婚女人梦见参加迎亲队伍  不久会怀孕，能生一个漂亮的男孩。 未婚男女梦见迎亲队伍  会喜结良缘。 未婚男子梦见参加迎亲队伍  会与恋人各奔东西。 囚犯梦见加入迎亲队伍  很快会获得自由。 病人梦见参加迎亲队伍  病情会恶化。 梦见参加政治或宗教游行  会有好消息。 政治领导人梦见加入政治或宗教游行  会受到国家领导人的尊重。旅游者梦见参加政治或宗教游行  会发生车祸');
INSERT INTO `tp_dream` VALUES ('27', '梦见名人', ' 梦见接到喜欢的朋友来信  在异性关系上，将有快乐事发生。在朋友的生日派对中，被介绍认识几个异性，其中也许有上个喜欢你的人。爱情可能就此萌芽 梦见受著名的运动选手指导  健康方面将有不韦。尤其社团活动时，发生事故或受伤的可能性很大。 这个时候，最好避免练球练得太晚。 梦见与最喜欢的明星亲密相处  财运将大幅度好转。多余的支出减少，零用钱到了月底还有很多。借给朋友的钱，也一定可以收回。 梦见与外国电影明星交谈  朋友运上升的前兆。这时可以和几个要好的朋友计划郊游。这段快乐的时光将可以增强你与朋友之间的友谊。 梦见与首相握手  遭受意外事故的可能性极大。譬如向摇着尾巴走来的狗伸出友谊的手，却被咬等倒霉到了极点。 梦见与历史上的名人会见  亲友将遭受病难的预兆。要给予病痛缠身或体弱多病的朋友婉转的安慰');
INSERT INTO `tp_dream` VALUES ('28', '梦见同学', ' 梦见同性的同学反映你现在人际关系上出现了问题。 梦见异性同学则表示你对朋友有不满的态度，反映了你现在被孤立而寂寞的心态。 梦见与同学打架，人际关系运上升。你跟任何人都可以大胆而积极地交往，周围的人对你也必然坦诚相待，绝不会发生冲突');
INSERT INTO `tp_dream` VALUES ('29', '梦见英雄', ' 中年人梦见自己成了英雄  是身强力壮的兆头。 老年人梦见自己成英雄  会溘然而逝。应该尽早立遗嘱，分家产。 病人梦见自己成了英雄  病情会恶化，如果他的八字好，会得救');
INSERT INTO `tp_dream` VALUES ('30', '梦见上司', '梦见上司，现实生活中想发挥自己的能力但受到阻挠。梦到这个梦时还要注意工作上可能将会惹麻烦梦见上司不批准自已请求，预示工作或工作环境有小麻烦。梦见与上司同行就是与麻烦同行。梦见上司生病，预示麻烦会没有。梦见上司来访，表示缺乏自信。');
INSERT INTO `tp_dream` VALUES ('31', '梦见同事', '梦见和工作伙伴商讨事情，暗示计画可能受到阻挠或是会停滞不前。梦见商讨或交涉成功的话，表示你现实生活中将遭遇困难');
INSERT INTO `tp_dream` VALUES ('32', '梦见小偷', '原版周公解梦内与小偷相关的内容：赶贼入市不出凶；强贼入宅主家破；与贼同行大吉利；赶贼行见者大吉。现代释梦：梦见小偷，暗示你最近情绪不太稳定，财运有起落。但是商人梦见小偷，预示生意兴隆。梦见自己成了小偷，预示有财运，钱财上会有意想不到的收获。梦见发现小偷偷东西，表示你可能正一步步制订某项计划，接近某个目标。另外，梦见小偷，还可能表示你有不正当的性行为。梦见自己和小偷同行，预示你将发财。梦见你是个小偷并被警察追赶，预示你进行的事业将陷入困境，你开展的社交关系也将陷入僵局。梦见你追赶或抓获一个小偷，意味着你将最终在较量中赢得对手的尊重。梦见自己认识的某个人成了小偷，则表示潜意识中你不信任那个人，虽然在生活中，你可能并未家常到这一点。梦见有小偷到自己家入室行窃，提醒你近期一定要小心谨慎，家里可能有会遇到祸事。梦见小偷入室窥视，环视屋内，表示你对性的好奇心很重，有偷窥欲。如果小偷没有发现你就离开了，表示你曾有一段不为人知的秘密性关系。如果小偷发现了你并攻击你，则暗示你最近有强烈的欲望。');
INSERT INTO `tp_dream` VALUES ('33', '梦见孤儿', '梦中的孤儿，是人性脆弱一面的代表，往往表示你内心孤独渴望被关爱。如果梦见自己变成了孤儿，这是提醒做梦人必须要摆脱内心的依赖，独立自主，自力更生。如果梦见自己在照顾孤儿，预示你可能会得到他人的帮助。如果梦里看见街边的流浪儿，意味着工作上会有困难。梦见慰问孤儿，预示他人的忧虑将触动你的同情心，并将最终促使你牺牲掉个人的享乐。梦见与你有关的孤儿，预示你的生活将增添新的责任，并将由此导致你与某个朋友或某个爱好相同的人之间产生疏远。');
INSERT INTO `tp_dream` VALUES ('34', '梦见妻子', '梦见拥抱妻子，是不祥之兆，会与妻子分居。梦见与妻子拌嘴，夫妻恩爱，生活幸福、美满。囚犯梦见与妻吵架，很快能见到妻子。梦见和妻分离，会更加宠爱妻子。梦见找了一位好吵闹的妻子，生活会幸福、舒适。梦见妻子疯了，寓意着妻子会把家安排得井井有条。梦见妻子十分疲乏，会与妻子分离。丈夫梦见妻子年青了许多，预示家庭幸福、美满。丈夫梦见援助妻子，夫妻生活会很幸福美满。梦见受到妻子的表扬，妻子会行为不轨，令人厌恶。');
INSERT INTO `tp_dream` VALUES ('35', '梦见和尚', '梦见僧人或和尚，吉兆，会有好运。梦见僧侣念经，是死亡的暗示。梦到自己出家，表示重生或疾病可好转。遇高僧说教，表示将开拓人生大道。梦见出家人的画，生活富裕安逸。梦见听和尚或僧人说教，自己的事业会走上正轨。');
INSERT INTO `tp_dream` VALUES ('36', '梦见军人', '梦见自己成为军人，预示梦者生活会出现新的转机。梦见别人成为军人，意味着梦者事业征途上一切井然有序。梦见军人在站岗，意味着梦者在未来的工作中需要提高警惕，防止小人捣乱。梦见军人休假，表示梦者已完全处于一种安全和谐的环境之中。女人梦见军人，表示潜意识内对婚姻的担忧。');
INSERT INTO `tp_dream` VALUES ('37', '梦见病人', '梦见自己成了病人，预示计划被延迟，或你会得到别人的帮助。梦见别人是病人，表示你会有机会寻求朋友、长辈的帮助。梦见家里有麻疯病病人来访，意味着将会有人登门拜访贵府，向你进行宣传。梦见自己成为精病患者，将跨过障碍和难关，生活越来越安定、富裕的征兆。梦见病人逐渐恢复健康，暗示梦者进行中的事情或计划的事情一帆顺的祥梦。梦见病人在歌唱，这是家里发生等不吉利的事情的征兆。梦见患上传染病的人吃后痊愈，这是将脱离某种组织或团体的意思。梦见精神病病人查看自己的，这是患病或诸事不顺的征兆。梦见病人出院回家，这是暗示梦者祈求一切安好，身体健康的梦。梦见去探望某个病人，梦中的病人即将获得痊愈的征兆。');
INSERT INTO `tp_dream` VALUES ('38', '梦见婴儿', '梦见婴儿，一方面，暗示了你自己内心中脆弱、渴望被爱的一面；另一方面，则预示你的自我发展，生活进展中将会转运，得到新机会和好运，之前的辛勤有回报等等。梦见漂亮可爱的婴儿，预示你会有好运气。梦见非常难看的婴儿，则象征可能会有信任的人捣鬼欺骗你。梦见自己抱起婴儿，象征着梦者将会有所收获，不久之后将会得到对于自己来说很重要的东西。梦见婴儿笑，象征着人际关系的良好，您能以诚待人，且身边会有很多。梦见婴儿长牙，象征着计划的顺利实施，您能得到贵人的帮助，不久之后就会有好消息。梦见婴儿说话，可能是在提醒您最近您会遇到麻烦，总有人从中做怪，也就是犯小人.梦见婴儿死亡的梦境，是不详之梦，表明自己计划和希望的破灭，您已经或者将要失去对自己来说很重要的东西。梦见婴儿哭，表示当前有些压抑的情绪，使得自己心烦意乱，这时候最好静下心来，不要主动出击，做事低调些。梦见婴儿哭，并且导致梦者心烦意乱，则预示将有不愉快的事情发生，也可能是你最近身体欠佳。梦见刚出生的孩子就开始直立行走，预示你的工作成绩，将得到赞誉好评。梦见生病的婴儿，表示你在工作或恋爱中可能会遭受挫折。如果梦见小孩丢失，则表示你现在遇到的麻烦或者担心，将会消除，心绪将重获安定，走上逐渐发展的正轨。梦见刚出生的婴儿在大小便，预示可能会遇到不吉利的事，也可能你信赖的人，会令你陷入尴尬境地。已婚但还没有孩子的人来说，梦见婴儿，有时则可能仅仅是表示心中想要孩子的愿望。初为父母的人，梦见婴儿要窒息或在危险中，通常表示了对孩子的强烈关心。孕妇梦见婴儿，则无象征意义。梦见自己的孩子出生，是将要怀孕，或发财、有丰厚进项的预兆。梦见有陌生人抚摩婴儿，暗示你近期运气不佳，会遇到倒霉事儿。');
INSERT INTO `tp_dream` VALUES ('39', '梦见姐姐', '男人梦见自己的姐姐，是祥兆，能长寿；女人梦见未婚的姐姐，额外开销会突然增多。女人梦见已婚的姐姐，会与丈夫家的一个女性发生争吵。梦见给姐姐礼物，侵吞公款，会破财。梦见与姐姐吵嘴，会越来越富。梦见去姐姐的家，贵客会登门。梦见与姐姐交谈，会有好消息。梦见姐姐去世，她会长寿。梦见死去的姐姐，会有好运气，家庭和睦。');
INSERT INTO `tp_dream` VALUES ('40', '梦见陌生人', '梦见陌生人或者不认识的人是一种好的暗示，如果你梦到从未见过的人的话，这暗示着在最近的将来，你将有恋爱的机会。(但是婴儿则例外)梦见陌生小男孩，或许会有一见钟情发生，但可惜的是和他似乎无法顺利发展。梦见陌生小女孩，会有你喜欢的人已有恋人的传言。但单纯为误传的可能性很高，所以请仔细去确认两者事实上的关系。梦见陌生年轻男孩，会有花花公子型的男孩接近你。但是如果你答应的话，将来可能会后悔。梦见陌生年轻女孩，似乎会在街上巧遇喜欢的男孩。外出时，请打扮得漂亮一点。梦见陌生男性中年，经由朋友的介绍，似乎会有发展成美丽恋情的机遇。梦见陌生女性中年，会得到自己所喜欢的男孩的消息。若能把握机会展开攻势的话，会有好结果产生。梦见陌生男性老年，似乎会得到从未和他讲过话、意想不到的男孩的青睐。梦见陌生女性老年，和不怎么样的男孩的关系，似乎会引起谣传。要控制自己容易招惹误会的言行举止。梦见请求陌生人原谅，预示将经历悲伤，遭受挫折。梦见陌生人表扬自己，寓意着会受到侮辱。梦见陌生人皱眉，预示你可能会结交新朋友。梦见躺在陌生人的床上，夫妻将要离婚。');
INSERT INTO `tp_dream` VALUES ('41', '梦见舅舅', '梦见舅舅，会受到人们的尊重。女孩梦见舅舅，会陷入困境。犯人梦见舅舅，很快会获得自由');
INSERT INTO `tp_dream` VALUES ('42', '梦见裁缝', '裁缝代表了辛勤劳作与生活转机，是好的预示，梦见裁缝通常表示前一段的时间的努力会有所回报或者有好事即将发生。男人梦见裁缝，预示将发财致富，事业会上个新台阶。女人梦见裁缝，预示娘家或夫家会有大办婚礼这样的喜事。梦见自己成了裁缝，预示收入增加，经济条件转好。梦见请裁缝做新衬衣，预示家里可能将举行婚礼。梦见把裁缝叫到家里，预示子女将独立，长大成人，成家立业。梦见和裁缝交朋友，预示家里会增加额外的开销。梦见自己和裁缝吵架，预示经济上可能会承担损失。梦见与裁缝发生误会，表示你将对某项计划的结果感到不满与失望。梦见裁缝给你量尺寸，预示你将会因某事与他人发生争吵，从而使你们的关系趋于紧张。');
INSERT INTO `tp_dream` VALUES ('43', '梦见双胞胎', '梦见双胞胎，反映做梦人互相对立的个性以及矛盾的心理；梦见双胞胎在打架，表示内心中有强烈对立的自我。梦见双胞胎一起快乐地玩耍，表示你的内心中，虽然有不同的自我，但不同自我之间相处都很和谐。梦中的双胞胎身体瘦弱，表示你将亲临失望和痛苦的第一线。梦见四胞胎，则预示你可能要承受困难，但依然充满希望。男子梦见双胞胎，通常表示经过思虑和内心的斗争后，成家立业，事业成功。商人梦见双胞胎，预示最终会财源广进。病人梦见双胞胎，预示身体正慢慢恢复健康。');
INSERT INTO `tp_dream` VALUES ('44', '梦见寡妇', '梦见寡妇，通常预示你会有损失或内心悲伤。女人梦见寡妇，暗示自己对目前的生活状况表示担忧，对未来没有信心。男人梦见寡妇，表现了对女性的渴望，同时又想得到一位独立自主的女性青睐，能在事业上帮助自己。男子梦见和寡妇交谈，要小心有人造谣中伤你。梦见自己给寡妇钱，或帮助寡妇，预示你会有好运气，或者得到意外的回报。梦见和寡妇吵架，预示你会倒霉。如果梦见了披麻戴孝的寡妇，则象征你自己心中对死亡的恐惧。');
INSERT INTO `tp_dream` VALUES ('45', '梦见警察', '警察是具有典型男性特征的形象，有权威、规范、良心的含义。梦见警察站着，是危险的兆头。梦见与警察吵架，要多加小心，预示你会有强盗或仇人威胁你。梦见挨警察的打，预示你可能会发生营私舞弊，贪污渎职的事情，造成严重损失。梦见自己当了警察，或是当侦探去调查案件，预示你在人际关系方面将遇到挫折，可能会受到别人的造谣中伤，名誉受损，或威信扫地，陷入困境，要细致冷静地应付。梦见自己穿着警服，会受到刑事案件的牵连梦见被警察追捕，表示你可能有有些想法和冲动，在内心深处感觉是道德准则或社会规范所反对的，会受到责备，因此感到不安。这个时候的警察是超我的象征，也就是良心的化身。也有可能表示你内心中一直压抑的，少年时代对生活中那个独裁专制的父亲的怨恨。梦见和警察交谈，暗示你会得到重视和提升。梦见接受警察的盘问或问讯，提醒你要提防自己的身体健康，你可能会患病。尤其要注意饮食，对食物中毒、痢疾、便秘等消化疾病更要格外当心。梦见向警察求助，预示你会安全幸福，克服困难。梦见自己被警察抓住，预示工作将取得显着成绩，或是学习成绩进步惊人，会受到领导、上司、老师的重视，令人刮目相看。梦见犯了罪被警察抓住，读书运最好的时刻。在全班的成绩普遍低的情况下，只有你一个人是九十分以上的好成绩，必能一鸣惊人。未婚男子梦见与警察争吵，会带着自己的情侣逃跑。男人梦见请求援助，作梦人会幸福安全。女人梦见求助于警察帮助，很快要出狱。女人梦见与警察交谈，丈夫的保镖会受伤。妻子梦见和警察谈话，可能表示丈夫将遇到危险。商人梦见和警察谈话，警告你要小心提防竞争对手。官员梦见和警察谈话，预示会得到政府和警察的尊重。囚犯梦见与警察谈话，很快会被释放。惯犯梦见警察抓人，多次作案，能发大财。');
INSERT INTO `tp_dream` VALUES ('46', '梦见哑巴', '梦见自己成为哑巴，不祥之兆，要提防小人。梦见自己突然变成哑巴，想要张嘴却说不出话来，暗示可能有小人中伤你，你却找不出原因，让你举步艰难。梦见自己成为哑巴然后又好了，预示着自己最终战胜小人。');
INSERT INTO `tp_dream` VALUES ('47', '梦见明星', '名歌星出现于梦中时，则暗示与朋友有口角之争，人际关系亦将有麻烦产生。要多留意朋友嫉妒、吃醋的心理。');
INSERT INTO `tp_dream` VALUES ('48', '梦见弓箭手', '梦中的弓箭手，是恋爱与婚姻的代表。梦见弓弩手/弓箭手，预示你即将找到生命中的另一半，要好好珍惜。已婚人士梦见弓箭手，预示你的婚姻幸福美满，将与你的伴侣携手走过人生。');
INSERT INTO `tp_dream` VALUES ('49', '梦见孕妇', '预示着梦者所进行的事情非常顺利，而且金钱上会有好的运气。 　　未婚女人梦见孕妇，预示难以出嫁，或出嫁后婚姻会出现问题，如争吵分歧等，让家庭不和。');
INSERT INTO `tp_dream` VALUES ('50', '梦见妓女', '梦见自己是妓女，预示你将因自己表现恶劣，让正直的朋友看不起你。年轻女子梦见妓女，预示她会欺骗她心爱的人，让其相信自己是纯洁的，坦诚的。对于已婚女人，此梦过后，她将开始怀疑丈夫，因此不断地争吵。梦见与妓女相殴，梦主得情助势，门户昌荣气象之兆。技艺之人争长夺色。老者梦此，主有虚症，不祥。梦见与妓女为夫妻，大吉，梦此者夫妻昌吉也。未配者主得技艺美色之妻。如素爱烟花之人，为与妓女合心。梦见与妓女相别，吉，此梦阴事之非远离之象。凡事得理，疾病脱身。其占为浪子回头，花凋蝶散。');
INSERT INTO `tp_dream` VALUES ('51', '梦见已故的祖父母', '梦见已故的祖父带着农具去种地，父亲或家里的其他人会调动工作岗位或搬家。梦见已故的祖父赶着一头母牛来到院里或将牛栓在牛棚，预示即将迎来儿媳、家庭主妇或妻子，或者得到意外的财物。梦见已故的祖父抚摸孙子，在现实中里的孙子会患病。梦见已故的祖父背着孙子或领到屋外，预示近期内孙子会死亡。梦见已故的祖父母欲向自己说什么话，这是预示有事情将发生，需要倍加小心。梦见已故的祖父母再世后准备带着自己外出，这是警告你有可能由于意外的事故或疾病而死亡，又或者面临严重的忧患。');
INSERT INTO `tp_dream` VALUES ('52', '梦见坏人', '梦见坏人预示者你似乎正向往着危险的恋爱。例如想抢夺朋友的男友，或是想和有妇之夫的他度过危险偷情的一夜等等。如果你已有男朋友的话，梦见坏人预示着是否浮动的心正开始萌芽。');
INSERT INTO `tp_dream` VALUES ('53', '梦见犯人', '梦见与犯人交谈，要遭厄运，要提高警惕，避免灾祸。梦见与犯人交朋友，暗示你可能会结交品行不良的朋友，给你造成严重损失。梦见与囚犯吵架，烦恼和灾祸会过去，将要过上称心如意的日子。梦见犯人逃走，病患即将好转。犯人梦见获得大赦或无罪释放，家里的房屋有危险');
INSERT INTO `tp_dream` VALUES ('54', '梦见帅哥', '梦见一帅哥被我打了，这是你潜意识的作用，在现实上，你可能比较在意这样的帅哥，有想接近的冲动，但你把这种冲动压抑在内心深处它，然后在梦中把压抑释放了出来，成一个暴力动作。梦中知道对方是个帅哥，但模模糊糊地看不清样子，好幸福的感觉。代表你的内心深处已经厌倦了你男朋友。哎！解铃还需系铃人，是因为你的男朋友和你太少的接触，所以你会在梦里面梦不到他。你们要是天天都在一起做一些有意义的事。做一些比较开心的事。我想你晚上也能梦到他的。女人若梦见帅哥的话一般意味着以后可能会被人追求或代表着你希望有人来爱你，真诚对待你。');
INSERT INTO `tp_dream` VALUES ('55', '梦见日本人', '梦见日本人，预示能从敌人的魔爪中逃跑出来。未婚者梦见日本人，预兆您的爱情可成功。但双方不可我行我素。待业者梦见日本人，说明您的财运不顺，需待时机。');
INSERT INTO `tp_dream` VALUES ('56', '梦见处女', '梦见处女，预示你的事业将会福星高照。已婚女人梦见自己仍是处女，表示她会对自己曾经做过的某些事情感到羞愧和后悔，但悔过的心并不会给她带来好运。一个年轻女子梦见自己已不再是处女，预示她与男性之间行为的不失检点会损及自己的名誉。男人梦见和一个处女保持不正当关系，预示他不管如何努力也将无法完成原定的某项计划，别人的行为倒会给他带来很多麻烦；或预示他的理想会由于合作缺乏保障而无法实现。');
INSERT INTO `tp_dream` VALUES ('57', '梦见老情人', '很多人都会梦到老情人，(即过去的男女朋友或自己曾爱慕的对象)首先说明你在心中还留有他的位置，不管这个位置是好是坏，至少他还占着一点分量。梦见老情人，表示一些消极的态度，和令你困扰的人际关系。梦见和对方关系很差，代表你的人际关系会转好，还有你和对方的关系有可能以另一种形式出现。梦见和对方关系很好、相处得很开心，是反映了你现在寂寞的心态。梦见和对方结婚，则代表你和他的关系已经划清界线，你是完全决绝的了。已有伴侣的朋友梦见老情人，往往显示梦者对身边伴侣有所不满，而伴侣无意作出迁就。梦者在现实生活中已有异心，但未找到可以取代伴侣的人，因而令脑海产生找寻旧档案的讯息。一些从前曾经爱慕而无结果的爱情，成为暂代品。但这却不足以表示你们即将分手，相反等你醒来好好考虑一下现实情况，会更加珍惜身边人，为对方做出改变。经常梦见老情人，这时就该检讨与爱侣的感情，若让情况持续，梦者一旦在现实生活遇到投缘的异性，多会不能自制，出现三角关系。梦见老情人再次伤害或背叛你，让你在梦中痛不欲生，这或许则是在提醒你，不要在感情上再犯相同的愚蠢错误，小心审视身边伴侣。单身的朋友梦见老情人，或许你真的觉得寂寞了，很想渴望爱情的到来。而在没有具体想象对象的时候，老情人就出现在梦中。这时候你就该好好调整下自己的状态，时刻准备着，抓住任何爱情的机会哦。');
INSERT INTO `tp_dream` VALUES ('58', '梦见第三者', '梦见第三者，吉兆，预示着爱情会很甜蜜。');
INSERT INTO `tp_dream` VALUES ('59', '梦见白马王子', '女人梦见白马王子，说明心里极度缺乏爱的感觉，有滥交的可能性。少女梦见白马王子，即将要交到男朋友，但一定不是自己称心如意或者能过一辈子的那种。未婚女子梦见白马王子，将和男朋友分手，婚姻大事将会无限期拖延。已婚女子梦见白马王子，家庭关系要出现危机，和丈夫将有离婚的危险，有外遇的可能性大于百分之六十。');
INSERT INTO `tp_dream` VALUES ('60', '梦见仇人', '梦见仇人，预示你将取得成就，困难将过去，未来会有好运，值得期待。梦见和仇人交朋友，预示你将结交很多新朋友，帮助你获得成功。梦见和仇人争吵，则预示你会遭受损失。梦见仇人难过，预示你会打赢官司，或是战胜敌手。梦见收到了仇人死亡的消息，预示你会有宽容又忠实可靠的朋友。商人梦见仇人，预示你能打败对手占领市场。商人梦见仇人攻击自己，预示生意上会遇到挫折。女人梦见丈夫的情妇，预示你将赢得丈夫。');
INSERT INTO `tp_dream` VALUES ('61', '梦见美女', '梦见与美貌女子交往，为破财之兆。 　　梦见跟一个陌生的同龄美女长成了好朋友，说明交朋友，希望自己的快乐苦恼能和别人分享和承担，可能现实中缺少这种朋友关系，有什么事情都是自己扛。');
INSERT INTO `tp_dream` VALUES ('62', '梦见喜欢的人', '');
INSERT INTO `tp_dream` VALUES ('63', '梦见外星人', '梦见外星人就在自己眼前，预示你有好运气，可能会有意想不到的收获。梦见外星人可能暗示着生活被某种外来因素所左右，或者对自己所处的环境还不太了解。');
INSERT INTO `tp_dream` VALUES ('64', '梦见毛主席', '梦见毛主席，朋友运好转。与朋友将有顺利的交往；与双亲和兄弟之间的关系也将非常好。梦见和毛主席握手，表示健康良好，将会变得越来越健康。二，三天连续熬夜看手也无所谓，加油吧!未婚的人梦见和毛主席握手，您的恋情性急则不成，耐心则成功。未婚男女梦见毛主席，您的恋情问题会有，但要主动去解决，好运才会来。老人梦见毛主席预示出远门，佳，可获得利益。生意人梦见毛主席，说明您的财运可聚财。求学者梦见和毛主席握手，说明考试成绩一般。病人梦见和毛主席握手，说明这段时间您的运气：外表美观而内在空虚，所以要先充实内在，才有好运气。要提防小人诽谤。');
INSERT INTO `tp_dream` VALUES ('65', '梦见陆军 ', '梦见整齐的陆军队列向你开来或立在原地，暗示你有勇往直前积极进取的精神，并会踏踏实实，稳步追求事业的发展。梦见壮观的陆军队列，或挺拔的陆军战士，有时也可能仅仅表示你对军人阳刚气质的向往，或是过去有过参军的愿望。男人梦见陆军，预示事业要大步向前，稳定发展。女人梦见陆军，预示生活舒适，生活质量稳步提高。');
INSERT INTO `tp_dream` VALUES ('66', '梦见风骚女子', '梦见看到一位风骚的女子，表示你有狡猾的敌人需要你去征服。梦见你杀死一名风骚女子，意味着你的欲望会实现。年轻女性梦见风骚女人，梦到她的行径快要比得上风骚女子的行径了，意味着她需要男人的保护。');
INSERT INTO `tp_dream` VALUES ('67', '梦见久未见面的人', '梦见久未见面的人时，寓意着此人将会很快归来。');
INSERT INTO `tp_dream` VALUES ('68', '梦见工人', '通常来说梦中的男建筑工人，有父亲的意味，充满力量，搭建遮风避雨的房屋。梦见有一个建筑工或维修工修理你的房子，预示你将反思出你生活中的问题，并对它加以解决。梦中的房子象征自我。梦见一个工人在疏通管道，预示你将解决情感积郁的问题。梦见技工，或技工面对着一堆拆零的零件，象征自己面对着生活中一摊乱麻般的局面，并为要理清头绪，解决现状，感到异常苦恼。梦见井下作业的矿工，则有可能暗示你正在探索自己幽暗的内心深处。梦见管道工，则表示你对内心精神或情感的摸索。孕妇梦见管道工，还有可能是妇道医生的形象在梦里的显现。');
INSERT INTO `tp_dream` VALUES ('69', '梦见厨师', '梦见厨师在准备宴会，喜庆的日子将要到来。梦见厨师教你烹调，在金钱方面有暗影出现。 这时很容在路上或公共汽车上遗失钱财，小心不要带太多的钱出门。');
INSERT INTO `tp_dream` VALUES ('70', '梦见陆军', '梦见整齐的陆军队列向你开来或立在原地，暗示你有勇往直前积极进取的精神，并会踏踏实实，稳步追求事业的发展。梦见壮观的陆军队列，或挺拔的陆军战士，有时也可能仅仅表示你对军人阳刚气质的向往，或是过去有过参军的愿望。男人梦见陆军，预示事业要大步向前，稳定发展。女人梦见陆军，预示生活舒适，生活质量稳步提高。');
INSERT INTO `tp_dream` VALUES ('71', '梦见烧香的人', '梦见烧香的人，表示你的感情已经成熟，你的另一半也很优秀，很受到肯定，在不久之后你们就能共结礼堂。');
INSERT INTO `tp_dream` VALUES ('72', '梦见神秘人', '梦中你看见很神秘的人，则意味着你的运气会变好或变坏，而这也要看个人的长相是不是好看或难看，有没有畸形而定。');
INSERT INTO `tp_dream` VALUES ('73', '梦见亿万富豪', '梦见成为亿万富豪，则近日营业将会损失惨重。');
INSERT INTO `tp_dream` VALUES ('74', '梦见跛子', '梦见跛子，在遇到困境时你不会知道求助于朋友。梦见自己成了跛子，会遇到难以克服的困难。梦见爬墙时摔跛了腿，会取得成功。');
INSERT INTO `tp_dream` VALUES ('75', '梦见虐待狂', '虐待狂象征着被误导的生命力，也暗示着清醒状态下的受虐天性。梦见自己变成虐待狂，人际上将出现大的问题，须学会自我反顾。梦见自己被虐待狂虐待，暗示着梦者在现实心里上渴望被虐待。');
INSERT INTO `tp_dream` VALUES ('76', '梦见贵人', '梦见贵人表示你能够出人头地的机会很大，未来有一番作为。梦见领袖，则表示心灵上得到安详;如果梦见领袖在行事，则会受到赏识。一般人梦见自己在贵人面前，表示将会出人头地;但若梦中与贵人为对等地位，则有忧事将至。');
INSERT INTO `tp_dream` VALUES ('77', '梦见窃贼', '梦见窃贼进入梦境，表示梦者经历着个人氛围的损害。产生的原因可能在外部，可是造成了愈来愈大的内心恐惧和困难的感觉。梦见窃贼在搜你的身，你将遇到强劲的竞争对手，在和陌生人交往时要万分小心，否则你将被对手打垮。梦见家或公司被人室盗窃。你在社会上和事业上的名望会受到质疑，但你直面困难的勇气将保护你。此梦后，可能由于疏忽而发生事故。');
INSERT INTO `tp_dream` VALUES ('78', '梦见赤裸的男人', '梦见赤裸的男人，将会感到忧愁和悲伤。梦到男人浑身赤裸，在清清的水中游泳，预示将有许多人爱(羡)慕她；如果水很浑浊，仰慕者将因为嫉妒而恶意造谣。');
INSERT INTO `tp_dream` VALUES ('79', '梦见两性人', '梦见两性人或雌雄同体的生物表示梦者对自己的性别角色存在疑问或者不满意。此外，如果梦者希望对本身有进一步的了解，他就必须努力在自己理性的一面和感性的一面作出平衡，而这种心理状态会在他的梦中以两性人的形式表现出来。梦中出现的两性人表示一种完全的平衡。');
INSERT INTO `tp_dream` VALUES ('80', '梦见嫂子', '经常梦见我嫂子，有可能和植物神经功能紊乱有关。建议注意休息，避免精神紧张，放松心情，药物方面可以给与谷维素片口服治疗。梦见跟嫂子发生关系，亲情缺乏和渴望的表现。梦见怀孕的嫂子遇难，梦中的死亡多与新生有关。你的嫂子和她的宝宝会平安无事，不久之后你将会听到宝宝出世的消息。');
INSERT INTO `tp_dream` VALUES ('81', '梦见工人', '通常来说梦中的男建筑工人，有父亲的意味，充满力量，搭建遮风避雨的房屋。梦见有一个建筑工或维修工修理你的房子，预示你将反思出你生活中的问题，并对它加以解决。梦中的房子象征自我。梦见一个工作在疏通管道，预示你将解决情感积郁的问题。梦见技工，或技工面对着一堆拆零的零件，象征自己面对着生活中一摊乱麻般的局面，并为要理清头绪，解决现状，感到异常苦恼。梦见井下作业的矿工，则有可能暗示你正在探索自己幽暗的内心深处。梦见管道工，则表示你对内心精神或情感的摸索。孕妇梦见管道工，还有可能是妇道医生的形象在梦里的显现。');
INSERT INTO `tp_dream` VALUES ('82', '梦见国王', '国王是统帅全国，为民排忧解难的形象。梦见国王，预示你将有机会面对富贵荣耀，但同时也意味着你会有忧愁烦闷，承担责任，为此你将奋力与现实博斗，并需要保持充足的自信心。梦见自己和国王对话，预示你勇于承担责任，不畏惧矛盾或痛苦，最终必将功成名就。');
INSERT INTO `tp_dream` VALUES ('83', '梦见老太太', '梦见个老太太送小孩给我，非孕妇的梦中可能表过潜意识中想要个孩子的愿望。梦见和老太太结婚，会得到遗产。');
INSERT INTO `tp_dream` VALUES ('84', '梦见皇帝', '梦中的皇帝，按照心理分析的观点，象征父权。通常来说，男人梦见如在电视剧中的情景一般，在金碧辉煌的房间里，看见黄袍加身的皇帝，预示会加官晋爵，发财兴旺。梦见被皇帝召见，对官场中人预示要升官。除此之外，做这个梦还可能预示工作中可能会遇到风波，尤其是要注意涉及大宗财务支出方面的事情。梦见被皇帝责罚，象征家业昌盛，人丁兴旺，子孙满堂。梦见与帝王对话、交谈，则暗示你凭借长辈指点或贵人相助，将走上荣身之路，梦想总有一天能够实现，将来定会功成名就。梦见自己是皇帝，则是在提醒你做事要多听各方面的意见，顾全大局，切忌独断专行。女人梦见皇帝，预示生活幸福，衣食无忧。商人梦见皇帝，预示财源广进，生意兴隆。');
INSERT INTO `tp_dream` VALUES ('85', '梦见陌生男人', '梦见男性老年 似乎会得到从未和他讲过话、意想不到的男孩的青睐。');
INSERT INTO `tp_dream` VALUES ('86', '梦见老伯伯', '梦见一位老伯伯变成小孩子，要小心提防，比你年长的人会陷害你。');
INSERT INTO `tp_dream` VALUES ('87', '梦见小人', '梦见小人，预示身边有人正隐瞒一些对于你很重要的事情，可能会有不顺利的事情发生。也意味着要调动工作，财源会旺盛。女性梦见小人预兆有机会旅行，一路平安，有友相伴。待业者梦见小人主钱财方面：佳，但防投资错误。老人梦见小人则您的运气平平，安守本份，可保平安，否则会招致坏运。');
INSERT INTO `tp_dream` VALUES ('88', '梦见木匠', '梦见木匠，寓意创造奇迹，生活美好。梦见和木匠吵架，是提示你某项预算花销太大，要开源节流。梦见木匠盖新房子，表示你会在政绩、学术或艺术领域等方面取得杰出成绩。梦见自己家请木匠做工，并且木匠手艺高超，做工精致，表示你是个很会享受生活的人，日子安逸舒适。梦见木匠在干木工活，预示你将从事正当诚实的劳动，排斥自私的消遣和娱乐活动，踏踏实实地改变自己的生活。男人梦见木匠，预示不久会收到好消息。女人梦见木匠，会成为精明能干的持家能手。');
INSERT INTO `tp_dream` VALUES ('89', '梦见故人', '梦见故人，孩子要成亲。梦见故人死亡，朋友运下降。因为你的竞争意识太强，所以让别人敬而远之。尤其在考试之后，这种现象特别明显，实在有反省的必要。梦见故人哭，服刑期间会做苦力待业者梦见故人哭主财运：初运佳，但防后运衰退。梦见故人借钱，人际关系方面运气上升的可能性很大。你与亲友的交情将更加深厚，有什么困难，都可以与之商量，对方一定可以替你分忧已婚者梦见故人借钱要出远门，最好不要立刻出发，等待好时机吧!梦见故人被追打，努力拼搏能赚钱。同时，在异性方面也会有所收获。将会有一次新的交际，相逢的地方是朋友家。但这次交往是否会发展成为恋爱，要看以后的进展情况。老人梦见故人则近期运势运程，运气不通，诸事不如意，避免与人发生纠纷，及家庭不和。老人梦见故人被追打则您的运势，万事如意。如果不谦虚，反而骄傲横行，则容易招到祸害。病人梦见故人死亡则近期运程，困难多，万事不如意。有小人加害，须小心谨慎。但不要悲观，要退一步想，以待好运来。未婚的人梦见故人哭预兆您的爱情：成功。待业者梦见故人被追打说明您的财运佳。未婚男女梦见故人被追打解释：最近爱情方面耐心则成功。');
INSERT INTO `tp_dream` VALUES ('90', '梦见小朋友', '梦见一位很可爱、趣致的小朋友，你会收到年终的奖金、双薪。');

-- ----------------------------
-- Table structure for tp_dxsreply_info
-- ----------------------------
DROP TABLE IF EXISTS `tp_dxsreply_info`;
CREATE TABLE `tp_dxsreply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `sharepicurl` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `ad` int(11) NOT NULL,
  `wxname` varchar(255) NOT NULL,
  `tip` varchar(255) NOT NULL,
  `url` char(255) NOT NULL,
  `shareurl` char(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_dxsreply_info
-- ----------------------------

-- ----------------------------
-- Table structure for tp_estate
-- ----------------------------
DROP TABLE IF EXISTS `tp_estate`;
CREATE TABLE `tp_estate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `matchtype` tinyint(11) NOT NULL COMMENT '关键词匹配模式：',
  `cover` varchar(200) NOT NULL COMMENT '图文消息封面',
  `panorama_id` int(11) NOT NULL,
  `classify_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `banner` varchar(200) NOT NULL,
  `video` varchar(200) DEFAULT NULL,
  `house_banner` varchar(200) NOT NULL,
  `place` varchar(80) NOT NULL DEFAULT '',
  `lng` varchar(15) NOT NULL,
  `lat` varchar(15) NOT NULL,
  `estate_desc` text NOT NULL,
  `project_brief` text NOT NULL,
  `traffic_desc` text NOT NULL,
  `path` varchar(3000) DEFAULT '0',
  `tpid` int(11) DEFAULT '36',
  `conttpid` int(11) DEFAULT NULL,
  `slide1` char(100) NOT NULL,
  `slide2` char(100) NOT NULL,
  `slide3` char(100) NOT NULL,
  `slide4` char(100) NOT NULL,
  `slide5` char(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `token_2` (`token`),
  FULLTEXT KEY `token` (`token`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_estate
-- ----------------------------

-- ----------------------------
-- Table structure for tp_estate_album
-- ----------------------------
DROP TABLE IF EXISTS `tp_estate_album`;
CREATE TABLE `tp_estate_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `poid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_estate_album
-- ----------------------------

-- ----------------------------
-- Table structure for tp_estate_expert
-- ----------------------------
DROP TABLE IF EXISTS `tp_estate_expert`;
CREATE TABLE `tp_estate_expert` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `face` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_estate_expert
-- ----------------------------

-- ----------------------------
-- Table structure for tp_estate_housetype
-- ----------------------------
DROP TABLE IF EXISTS `tp_estate_housetype`;
CREATE TABLE `tp_estate_housetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `panorama_id` int(10) NOT NULL DEFAULT '0',
  `son_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `floor_num` varchar(20) NOT NULL,
  `area` varchar(50) NOT NULL,
  `fang` int(11) NOT NULL,
  `ting` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `abid` varchar(200) NOT NULL,
  `type1` varchar(200) NOT NULL,
  `type2` varchar(200) NOT NULL,
  `type3` varchar(200) NOT NULL,
  `type4` varchar(200) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `panorama_id` (`panorama_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_estate_housetype
-- ----------------------------

-- ----------------------------
-- Table structure for tp_estate_impress
-- ----------------------------
DROP TABLE IF EXISTS `tp_estate_impress`;
CREATE TABLE `tp_estate_impress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `is_show` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_estate_impress
-- ----------------------------

-- ----------------------------
-- Table structure for tp_estate_impress_add
-- ----------------------------
DROP TABLE IF EXISTS `tp_estate_impress_add`;
CREATE TABLE `tp_estate_impress_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `imp_id` int(11) NOT NULL,
  `imp_user` char(20) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_estate_impress_add
-- ----------------------------

-- ----------------------------
-- Table structure for tp_estate_nav
-- ----------------------------
DROP TABLE IF EXISTS `tp_estate_nav`;
CREATE TABLE `tp_estate_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(35) NOT NULL,
  `pic` char(100) NOT NULL,
  `url` varchar(120) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `is_system` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_estate_nav
-- ----------------------------

-- ----------------------------
-- Table structure for tp_estate_son
-- ----------------------------
DROP TABLE IF EXISTS `tp_estate_son`;
CREATE TABLE `tp_estate_son` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_estate_son
-- ----------------------------

-- ----------------------------
-- Table structure for tp_files
-- ----------------------------
DROP TABLE IF EXISTS `tp_files`;
CREATE TABLE `tp_files` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `size` int(10) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `wecha_id` varchar(200) NOT NULL DEFAULT '0',
  `upload_ip` varchar(100) NOT NULL DEFAULT '0.0.0.0',
  `state` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_files
-- ----------------------------

-- ----------------------------
-- Table structure for tp_flash
-- ----------------------------
DROP TABLE IF EXISTS `tp_flash`;
CREATE TABLE `tp_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `info` varchar(90) NOT NULL,
  `tip` smallint(2) NOT NULL DEFAULT '1',
  `did` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `fid` int(11) NOT NULL DEFAULT '0' COMMENT '子分类ID',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `tip` (`tip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_flash
-- ----------------------------

-- ----------------------------
-- Table structure for tp_forum_comment
-- ----------------------------
DROP TABLE IF EXISTS `tp_forum_comment`;
CREATE TABLE `tp_forum_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `content` varchar(3000) NOT NULL,
  `createtime` int(11) NOT NULL,
  `favourid` varchar(3000) DEFAULT NULL,
  `replyid` varchar(3000) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `token` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_forum_comment
-- ----------------------------

-- ----------------------------
-- Table structure for tp_forum_config
-- ----------------------------
DROP TABLE IF EXISTS `tp_forum_config`;
CREATE TABLE `tp_forum_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bgurl` varchar(200) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `comcheck` varchar(4) NOT NULL DEFAULT '',
  `intro` varchar(600) NOT NULL DEFAULT '',
  `ischeck` tinyint(4) NOT NULL DEFAULT '0',
  `pv` float NOT NULL DEFAULT '0',
  `forumname` char(60) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `token` varchar(50) NOT NULL,
  `isopen` tinyint(4) DEFAULT '1',
  `notice_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_forum_config
-- ----------------------------

-- ----------------------------
-- Table structure for tp_forum_message
-- ----------------------------
DROP TABLE IF EXISTS `tp_forum_message`;
CREATE TABLE `tp_forum_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(3000) NOT NULL,
  `createtime` int(11) NOT NULL,
  `fromuid` varchar(50) NOT NULL,
  `touid` varchar(40) NOT NULL,
  `fromuname` varchar(60) DEFAULT NULL,
  `touname` varchar(60) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `isread` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_forum_message
-- ----------------------------

-- ----------------------------
-- Table structure for tp_forum_topics
-- ----------------------------
DROP TABLE IF EXISTS `tp_forum_topics`;
CREATE TABLE `tp_forum_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `content` varchar(1500) NOT NULL,
  `likeid` varchar(3000) DEFAULT NULL,
  `commentid` varchar(3000) DEFAULT NULL,
  `favourid` varchar(3000) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `photos` varchar(10000) DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_forum_topics
-- ----------------------------

-- ----------------------------
-- Table structure for tp_funclass
-- ----------------------------
DROP TABLE IF EXISTS `tp_funclass`;
CREATE TABLE `tp_funclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `counts` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_funclass
-- ----------------------------

-- ----------------------------
-- Table structure for tp_function
-- ----------------------------
DROP TABLE IF EXISTS `tp_function`;
CREATE TABLE `tp_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` tinyint(3) NOT NULL,
  `usenum` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `funname` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `isserve` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_function
-- ----------------------------
INSERT INTO `tp_function` VALUES ('1', '1', '0', '天气查询', 'tianqi', '天气查询服务:例  城市名+天气', '1', '1');
INSERT INTO `tp_function` VALUES ('2', '1', '0', '糗事', 'qiushi', '糗事　直接发送糗事', '1', '1');
INSERT INTO `tp_function` VALUES ('3', '1', '0', '计算器', 'jishuan', '计算器使用方法　例：计算50-50　，计算100*100', '1', '1');
INSERT INTO `tp_function` VALUES ('4', '4', '0', '朗读', 'langdu', '朗读＋关键词　例：朗读pigcms多用户营销系统', '1', '1');
INSERT INTO `tp_function` VALUES ('5', '3', '0', '健康指数查询', 'jiankang', '健康指数查询　健康＋高，＋重　例：健康170,65', '1', '1');
INSERT INTO `tp_function` VALUES ('6', '1', '0', '快递查询', 'kuaidi', '快递＋快递名＋快递号　例：快递顺丰117215889174', '1', '1');
INSERT INTO `tp_function` VALUES ('7', '1', '0', '笑话', 'xiaohua', '笑话　直接发送笑话', '1', '1');
INSERT INTO `tp_function` VALUES ('8', '2', '0', '藏头诗', 'changtoushi', ' 藏头诗+关键词　例：藏头诗我爱你', '1', '1');
INSERT INTO `tp_function` VALUES ('9', '1', '0', '陪聊', 'peiliao', '聊天　直接输入聊天关键词即可', '1', '1');
INSERT INTO `tp_function` VALUES ('10', '1', '0', '聊天', 'liaotian', '聊天　直接输入聊天关键词即可', '1', '1');
INSERT INTO `tp_function` VALUES ('11', '3', '0', '周公解梦', 'mengjian', '周公解梦　梦见+关键词　例如:梦见父母', '1', '1');
INSERT INTO `tp_function` VALUES ('12', '2', '0', '语音翻译', 'yuyinfanyi', '翻译＋关键词 例：翻译你好', '1', '1');
INSERT INTO `tp_function` VALUES ('13', '2', '0', '火车查询', 'huoche', '火车查询　火车＋城市＋目的地　例火车上海南京', '1', '1');
INSERT INTO `tp_function` VALUES ('14', '2', '0', '公交查询', 'gongjiao', '公交＋城市＋公交编号　例：上海公交774', '1', '1');
INSERT INTO `tp_function` VALUES ('15', '2', '0', '身份证查询', 'shenfenzheng', '身份证＋号码　　例：身份证342423198803015568', '1', '1');
INSERT INTO `tp_function` VALUES ('16', '1', '0', '手机归属地查询', 'shouji', '手机归属地查询(吉凶 运势) 手机＋手机号码　例：手机13856017160', '1', '1');
INSERT INTO `tp_function` VALUES ('17', '3', '0', '音乐查询', 'yinle', '音乐＋音乐名  例：音乐爱你一万年', '1', '1');
INSERT INTO `tp_function` VALUES ('18', '1', '0', '附近周边信息查询', 'fujin', '附近周边信息查询(ＬＢＳ） 回复:附近+关键词  例:附近酒店', '1', '1');
INSERT INTO `tp_function` VALUES ('19', '4', '0', '公众小秘书', 'Paper', '公众小秘书', '2', '1');
INSERT INTO `tp_function` VALUES ('20', '3', '0', '淘宝店铺', 'taobao', '输入淘宝＋关键词　即可访问淘宝3g手机店铺', '2', '1');
INSERT INTO `tp_function` VALUES ('21', '4', '0', '会员资料管理', 'userinfo', '会员资料管理　输入会员　即可参与', '2', '1');
INSERT INTO `tp_function` VALUES ('22', '1', '0', '翻译', 'fanyi', '翻译＋关键词 例：翻译你好', '1', '1');
INSERT INTO `tp_function` VALUES ('23', '4', '0', '第三方接口', 'api', '第三方接口整合模块，请在管理平台下载接口文件并配置接口信息，', '1', '1');
INSERT INTO `tp_function` VALUES ('24', '1', '0', '姓名算命', 'suanming', '姓名算命 算命＋关键词　例：算命李白', '1', '1');
INSERT INTO `tp_function` VALUES ('25', '3', '0', '百度百科', 'baike', '百度百科　使用方法：百科＋关键词　例：百科北京', '2', '1');
INSERT INTO `tp_function` VALUES ('26', '2', '0', '彩票查询', 'caipiao', '回复内容:彩票+彩种即可查询彩票中奖信息,例：彩票双色球', '1', '1');
INSERT INTO `tp_function` VALUES ('27', '4', '0', '照片墙', 'Zhaopianwall', '活动开启后，在聊天窗口中直接发送图片，即可图片上墙！', '2', '1');
INSERT INTO `tp_function` VALUES ('28', '4', '0', 'RippleOS', 'RippleOS', 'RippleOS路由器', '1', '1');
INSERT INTO `tp_function` VALUES ('29', '1', '0', '3G首页', 'shouye', '输入首页,访问微3g 网站', '1', '1');
INSERT INTO `tp_function` VALUES ('30', '1', '0', 'DIY宣传页', 'adma', 'DIY宣传页,用于创建二维码宣传页权限开启', '1', '1');
INSERT INTO `tp_function` VALUES ('31', '4', '0', '会员卡', 'huiyuanka', '尊贵享受vip会员卡,回复会员卡即可领取会员卡', '1', '1');
INSERT INTO `tp_function` VALUES ('120', '1', '0', '微名片', 'Person_card', '', '1', '1');
INSERT INTO `tp_function` VALUES ('33', '4', '0', '账号审核', 'usernameCheck', '正确的审核帐号方式是：审核+帐号', '2', '1');
INSERT INTO `tp_function` VALUES ('34', '1', '0', '歌词查询', 'geci', '歌词查询 回复歌词＋歌名即可查询一首歌曲的歌词,例：歌词醉清风', '1', '1');
INSERT INTO `tp_function` VALUES ('35', '2', '0', '域名whois查询', 'whois', '域名whois查询　回复域名＋域名 可查询网站备案信息,域名whois注册时间等等\r\n 例：域名pigcms.com', '1', '1');
INSERT INTO `tp_function` VALUES ('36', '1', '0', '通用预订系统', 'host_kev', '通用预订系统 可用于酒店预订，ktv订房，旅游预订等。', '2', '1');
INSERT INTO `tp_function` VALUES ('37', '4', '0', '自定义表单', 'diyform', '自定义表单(用于报名，预约,留言)等', '1', '1');
INSERT INTO `tp_function` VALUES ('38', '2', '0', '无线网络订餐', 'dx', '无线网络订餐', '1', '1');
INSERT INTO `tp_function` VALUES ('39', '2', '0', '在线商城', 'shop', '在线商城,购买系统', '1', '1');
INSERT INTO `tp_function` VALUES ('40', '2', '0', '在线团购系统', 'etuan', '在线团购系统', '1', '1');
INSERT INTO `tp_function` VALUES ('41', '4', '0', '自定义菜单', 'diymen_set', '自定义菜单,一键生成轻app', '1', '1');
INSERT INTO `tp_function` VALUES ('42', '4', '0', '幸运大转盘', 'choujiang', '输入抽奖　即可参加幸运大转盘抽奖活动', '2', '1');
INSERT INTO `tp_function` VALUES ('43', '4', '0', '抽奖', 'lottery', '抽奖,输入抽奖即可参加幸运大转盘', '1', '1');
INSERT INTO `tp_function` VALUES ('44', '4', '0', '刮刮卡', 'gua2', '刮刮卡抽奖活动', '1', '1');
INSERT INTO `tp_function` VALUES ('45', '4', '0', '全景', 'panorama', '', '1', '1');
INSERT INTO `tp_function` VALUES ('46', '4', '0', '婚庆喜帖', 'Wedding', '', '2', '1');
INSERT INTO `tp_function` VALUES ('47', '4', '0', '投票', 'Vote', '', '2', '1');
INSERT INTO `tp_function` VALUES ('48', '4', '0', '房产', 'estate', '', '2', '1');
INSERT INTO `tp_function` VALUES ('49', '4', '0', '3G相册', 'album', '', '1', '1');
INSERT INTO `tp_function` VALUES ('50', '4', '0', '砸金蛋', 'GoldenEgg', '', '2', '1');
INSERT INTO `tp_function` VALUES ('51', '4', '0', '水果机', 'LuckyFruit', '', '2', '1');
INSERT INTO `tp_function` VALUES ('52', '4', '0', '留言板', 'messageboard', '', '2', '1');
INSERT INTO `tp_function` VALUES ('53', '4', '0', '微汽车', 'car', '', '2', '1');
INSERT INTO `tp_function` VALUES ('54', '4', '0', '微信墙', 'wall', '', '1', '1');
INSERT INTO `tp_function` VALUES ('55', '4', '0', '摇一摇', 'shake', '', '1', '1');
INSERT INTO `tp_function` VALUES ('56', '4', '0', '微论坛', 'forum', '', '1', '1');
INSERT INTO `tp_function` VALUES ('57', '4', '0', '微医疗', 'medical', '', '1', '1');
INSERT INTO `tp_function` VALUES ('58', '4', '0', '群发消息', 'groupmessage', '', '1', '1');
INSERT INTO `tp_function` VALUES ('59', '4', '0', '分享统计', 'share', '', '1', '1');
INSERT INTO `tp_function` VALUES ('60', '4', '0', '酒店宾馆', 'hotel', '', '1', '1');
INSERT INTO `tp_function` VALUES ('61', '4', '0', '微教育', 'school', '', '1', '1');
INSERT INTO `tp_function` VALUES ('62', '4', '0', '微场景', 'Live', '', '2', '1');
INSERT INTO `tp_function` VALUES ('63', '1', '0', '微街景', 'Jiejing', '', '1', '1');
INSERT INTO `tp_function` VALUES ('64', '1', '0', '中秋吃月饼', 'Autumn', '', '1', '1');
INSERT INTO `tp_function` VALUES ('65', '1', '0', '摁死小情侣游戏', 'Lovers', '回复 “小情侣” 即可参加', '1', '1');
INSERT INTO `tp_function` VALUES ('66', '1', '0', '七夕走鹊桥', 'AppleGame', '回复 “走鹊桥” 即可参与', '1', '1');
INSERT INTO `tp_function` VALUES ('67', '1', '0', '微调研', 'Research', '', '1', '1');
INSERT INTO `tp_function` VALUES ('68', '1', '0', '一战到底', 'Problem', '', '1', '1');
INSERT INTO `tp_function` VALUES ('69', '1', '0', '微信签到', 'Signin', '', '1', '1');
INSERT INTO `tp_function` VALUES ('70', '1', '0', '现场活动', 'Scene', '', '1', '1');
INSERT INTO `tp_function` VALUES ('71', '1', '0', '微商圈', 'Market', '', '1', '1');
INSERT INTO `tp_function` VALUES ('72', '1', '0', '微预约', 'Custom', '', '1', '1');
INSERT INTO `tp_function` VALUES ('73', '1', '0', '祝福贺卡', 'Greeting_card', '', '1', '1');
INSERT INTO `tp_function` VALUES ('74', '1', '0', '微美容', 'beauty', '', '1', '1');
INSERT INTO `tp_function` VALUES ('75', '1', '0', '微健身', 'fitness', '', '1', '1');
INSERT INTO `tp_function` VALUES ('76', '1', '0', '微政务', 'gover', '', '1', '1');
INSERT INTO `tp_function` VALUES ('77', '1', '0', '微食品', 'food', '', '1', '1');
INSERT INTO `tp_function` VALUES ('78', '1', '0', '微旅游', 'travel', '', '1', '1');
INSERT INTO `tp_function` VALUES ('79', '1', '0', '微花店', 'flower', '', '1', '1');
INSERT INTO `tp_function` VALUES ('80', '1', '0', '微物业', 'property', '', '1', '1');
INSERT INTO `tp_function` VALUES ('81', '1', '0', '微KTV', 'ktv', '', '1', '1');
INSERT INTO `tp_function` VALUES ('82', '1', '0', '微酒吧', 'bar', '', '1', '1');
INSERT INTO `tp_function` VALUES ('83', '1', '0', '微装修', 'fitment', '', '1', '1');
INSERT INTO `tp_function` VALUES ('84', '1', '0', '微婚庆', 'buswedd', '', '1', '1');
INSERT INTO `tp_function` VALUES ('85', '1', '0', '微宠物', 'affections', '', '1', '1');
INSERT INTO `tp_function` VALUES ('86', '1', '0', '微家政', 'housekeeper', '', '1', '1');
INSERT INTO `tp_function` VALUES ('87', '1', '0', '微租赁', 'lease', '', '1', '1');
INSERT INTO `tp_function` VALUES ('88', '1', '0', '微游戏', 'Gamecenter', '', '1', '1');
INSERT INTO `tp_function` VALUES ('89', '1', '0', '百度直达号', 'Zhida', '', '1', '1');
INSERT INTO `tp_function` VALUES ('90', '1', '0', '微信红包', 'Red_packet', '', '1', '1');
INSERT INTO `tp_function` VALUES ('91', '1', '0', '惩罚台', 'Punish', '', '1', '1');
INSERT INTO `tp_function` VALUES ('92', '1', '0', '邀请函', 'Invite', '', '1', '1');
INSERT INTO `tp_function` VALUES ('93', '1', '0', '拆礼盒', 'Autumns', '', '1', '1');
INSERT INTO `tp_function` VALUES ('94', '1', '0', '高级模板', 'AdvanceTpl', '', '1', '1');
INSERT INTO `tp_function` VALUES ('95', '1', '0', '群发消息', 'Message', '', '1', '1');
INSERT INTO `tp_function` VALUES ('96', '1', '0', '分享助力', 'Helping', '', '1', '1');
INSERT INTO `tp_function` VALUES ('97', '1', '0', '人气冲榜', 'Popularity', '', '1', '1');
INSERT INTO `tp_function` VALUES ('98', '1', '0', '幸运九宫格', 'Jiugong', '幸运九宫格', '1', '1');
INSERT INTO `tp_function` VALUES ('99', '1', '0', '微招聘', 'Zhaopin', '微招聘主要为求职者和企业搭建沟通桥梁', '1', '1');
INSERT INTO `tp_function` VALUES ('100', '1', '0', '全民经纪人', 'MicroBroker', '全民经纪人', '1', '1');
INSERT INTO `tp_function` VALUES ('101', '1', '0', '一元夺宝', 'Unitary', '只需一元就能拿走大奖', '1', '1');
INSERT INTO `tp_function` VALUES ('102', '1', '0', '微众筹', 'Crowdfunding', '实现梦想，一起奋斗', '1', '1');
INSERT INTO `tp_function` VALUES ('103', '1', '0', '微砍价', 'Bargain', '一起来砍价', '1', '1');
INSERT INTO `tp_function` VALUES ('104', '1', '0', '微外卖', 'DishOut', '新版外卖', '1', '1');
INSERT INTO `tp_function` VALUES ('105', '1', '0', '手机站', 'Phone', '手机独立网站', '1', '1');
INSERT INTO `tp_function` VALUES ('106', '1', '0', '微场景', 'SeniorScene', '高级场景', '1', '1');
INSERT INTO `tp_function` VALUES ('107', '1', '0', '支付宝服务窗', 'Fuwu', '', '1', '1');
INSERT INTO `tp_function` VALUES ('108', '1', '0', '微信公众号', 'Weixin', '', '1', '1');
INSERT INTO `tp_function` VALUES ('109', '1', '0', '合体红包', 'Hongbao', '合体红包', '1', '1');
INSERT INTO `tp_function` VALUES ('110', '1', '0', '微贺卡', 'Card', '新版微贺卡，更多贺卡等你拿', '1', '1');
INSERT INTO `tp_function` VALUES ('111', '1', '0', '微秒杀', 'Seckill', '微信秒杀活动，看谁手快', '1', '1');
INSERT INTO `tp_function` VALUES ('112', '1', '0', '微客服', 'Service', '微信客服功能', '1', '1');
INSERT INTO `tp_function` VALUES ('113', '1', '0', '图文投票', 'Voteimg', '', '1', '1');
INSERT INTO `tp_function` VALUES ('114', '1', '0', '微店系统', 'Micrstore', '', '1', '1');
INSERT INTO `tp_function` VALUES ('115', '0', '0', '婚庆喜帖', 'wedding', '', '0', '1');
INSERT INTO `tp_function` VALUES ('116', '0', '0', '摇一摇，周边', 'Shakearound', '', '0', '1');
INSERT INTO `tp_function` VALUES ('117', '0', '0', '投票', 'vote', '', '0', '1');
INSERT INTO `tp_function` VALUES ('118', '0', '0', '降价拍', 'Cutprice', '', '0', '1');
INSERT INTO `tp_function` VALUES ('119', '0', '0', '人工客服', 'ServiceUser', '', '0', '1');
INSERT INTO `tp_function` VALUES ('121', '1', '0', '微排号', 'Numqueue', '', '1', '1');
INSERT INTO `tp_function` VALUES ('122', '1', '0', 'H5动态模板', 'CustomTmpls', 'H5动态自定义模板', '1', '1');

-- ----------------------------
-- Table structure for tp_funintro
-- ----------------------------
DROP TABLE IF EXISTS `tp_funintro`;
CREATE TABLE `tp_funintro` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '',
  `isnew` tinyint(1) NOT NULL DEFAULT '0',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `type` smallint(4) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `time` int(10) NOT NULL DEFAULT '0',
  `img1` char(200) NOT NULL,
  `img2` char(200) NOT NULL,
  `img3` char(200) NOT NULL,
  `img4` char(200) NOT NULL,
  `img5` char(200) NOT NULL,
  `img6` char(200) NOT NULL,
  `img7` char(200) NOT NULL,
  `img8` char(200) NOT NULL,
  `name1` varchar(200) NOT NULL,
  `name2` varchar(200) NOT NULL,
  `name3` varchar(200) NOT NULL,
  `name4` varchar(200) NOT NULL,
  `name5` varchar(200) NOT NULL,
  `name6` varchar(200) NOT NULL,
  `name7` varchar(200) NOT NULL,
  `name8` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  `classid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_funintro
-- ----------------------------

-- ----------------------------
-- Table structure for tp_fuwuuser
-- ----------------------------
DROP TABLE IF EXISTS `tp_fuwuuser`;
CREATE TABLE `tp_fuwuuser` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `user_id` varchar(512) DEFAULT NULL COMMENT '用户的userId',
  `user_type_value` int(1) DEFAULT NULL COMMENT '用户类型（1/2） 1代表公司账户； 2代表个人账户',
  `user_status` varchar(1) DEFAULT NULL COMMENT '用户状态（Q/T/B/W）。 Q代表快速注册用户；T代表已认证用户；B代表被冻结账户；W代表已注册，未激活的账户',
  `firm_name` varchar(100) DEFAULT NULL COMMENT '公司名称（用户类型是公司类型时公司名称才有此字段）。',
  `real_name` varchar(100) DEFAULT NULL COMMENT '用户的真实姓名。',
  `avatar` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `cert_no` varchar(100) DEFAULT NULL COMMENT '证件号码',
  `gender` varchar(1) DEFAULT NULL COMMENT '性别（F：女性；M：男性）',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话号码。',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号码。',
  `is_certified` varchar(1) DEFAULT NULL COMMENT '是否通过实名认证。T是通过 F是没有实名认证',
  `is_student_certified` varchar(1) DEFAULT NULL COMMENT '是否是学生。T表示是学生，F表示不是学生',
  `is_bank_auth` varchar(1) DEFAULT NULL COMMENT 'T为是银行卡认证，F为非银行卡认证。',
  `is_id_auth` varchar(1) DEFAULT NULL COMMENT 'T为是身份证认证，F为非身份证认证。',
  `is_mobile_auth` varchar(1) DEFAULT NULL COMMENT 'T为是手机认证，F为非手机认证。',
  `is_licence_auth` varchar(1) DEFAULT NULL COMMENT 'T为通过营业执照认证，F为没有通过',
  `cert_type_value` int(3) DEFAULT NULL COMMENT '0:身份证；1:护照；2:军官证；3:士兵证；4:回乡证；5:临时身份证；6:户口簿；7:警官证；8:台胞证；9:营业执照；10其它证件',
  `province` varchar(20) DEFAULT NULL COMMENT '省份名称。',
  `city` varchar(20) DEFAULT NULL COMMENT '市名称。',
  `area` varchar(20) DEFAULT NULL COMMENT '区县名称。',
  `address` varchar(200) DEFAULT NULL COMMENT '详细地址。',
  `zip` int(20) DEFAULT NULL COMMENT '邮政编码。',
  `address_code` int(100) DEFAULT NULL COMMENT '区域编码，暂时不返回值',
  `type` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_fuwuuser
-- ----------------------------

-- ----------------------------
-- Table structure for tp_games
-- ----------------------------
DROP TABLE IF EXISTS `tp_games`;
CREATE TABLE `tp_games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(40) NOT NULL DEFAULT '',
  `gameid` int(11) NOT NULL DEFAULT '0',
  `picurl` varchar(160) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(500) NOT NULL DEFAULT '',
  `selfinfo` varchar(5000) NOT NULL DEFAULT '',
  `token` varchar(20) NOT NULL DEFAULT '',
  `playcount` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_games
-- ----------------------------

-- ----------------------------
-- Table structure for tp_gametreply_info
-- ----------------------------
DROP TABLE IF EXISTS `tp_gametreply_info`;
CREATE TABLE `tp_gametreply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `picurls1` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `ad` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_gametreply_info
-- ----------------------------

-- ----------------------------
-- Table structure for tp_gamettreply_info
-- ----------------------------
DROP TABLE IF EXISTS `tp_gamettreply_info`;
CREATE TABLE `tp_gamettreply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `picurls1` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `ad` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_gamettreply_info
-- ----------------------------

-- ----------------------------
-- Table structure for tp_game_config
-- ----------------------------
DROP TABLE IF EXISTS `tp_game_config`;
CREATE TABLE `tp_game_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `wxid` varchar(40) NOT NULL DEFAULT '',
  `wxname` varchar(50) NOT NULL DEFAULT '',
  `wxlogo` varchar(150) NOT NULL DEFAULT '',
  `link` varchar(150) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  `key` varchar(40) NOT NULL DEFAULT '',
  `attentionText` char(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_game_config
-- ----------------------------

-- ----------------------------
-- Table structure for tp_game_records
-- ----------------------------
DROP TABLE IF EXISTS `tp_game_records`;
CREATE TABLE `tp_game_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameid` int(11) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `score` float(7,2) NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `gameid` (`gameid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_game_records
-- ----------------------------

-- ----------------------------
-- Table structure for tp_greeting_card
-- ----------------------------
DROP TABLE IF EXISTS `tp_greeting_card`;
CREATE TABLE `tp_greeting_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `num` int(11) NOT NULL,
  `click` int(11) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `bakcground_url` varchar(200) NOT NULL,
  `mp3` varchar(200) NOT NULL,
  `style` tinyint(2) NOT NULL,
  `name` varchar(60) NOT NULL,
  `zfname` varchar(60) NOT NULL,
  `copy` varchar(200) NOT NULL,
  `info` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_greeting_card
-- ----------------------------

-- ----------------------------
-- Table structure for tp_helping
-- ----------------------------
DROP TABLE IF EXISTS `tp_helping`;
CREATE TABLE `tp_helping` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(40) NOT NULL,
  `title` char(40) NOT NULL,
  `keyword` char(20) NOT NULL,
  `intro` varchar(250) NOT NULL,
  `info` text NOT NULL,
  `reply_pic` varchar(250) NOT NULL,
  `top_pic` varchar(250) NOT NULL,
  `start` char(15) NOT NULL,
  `end` char(15) NOT NULL,
  `add_time` char(15) NOT NULL,
  `is_open` tinyint(4) NOT NULL,
  `is_reg` tinyint(4) NOT NULL,
  `is_attention` tinyint(4) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_helping
-- ----------------------------

-- ----------------------------
-- Table structure for tp_helping_record
-- ----------------------------
DROP TABLE IF EXISTS `tp_helping_record`;
CREATE TABLE `tp_helping_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(35) NOT NULL,
  `pid` int(11) NOT NULL,
  `share_key` char(40) NOT NULL,
  `addtime` char(35) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_helping_record
-- ----------------------------

-- ----------------------------
-- Table structure for tp_helping_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_helping_user`;
CREATE TABLE `tp_helping_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(40) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `help_count` int(11) NOT NULL,
  `add_time` char(15) NOT NULL,
  `share_key` char(40) NOT NULL,
  `help_num` int(100) NOT NULL,
  `help_rank` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `tel` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of tp_helping_user
-- ----------------------------

-- ----------------------------
-- Table structure for tp_home
-- ----------------------------
DROP TABLE IF EXISTS `tp_home`;
CREATE TABLE `tp_home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL,
  `picurl` varchar(120) NOT NULL,
  `apiurl` varchar(150) NOT NULL,
  `homeurl` varchar(120) NOT NULL,
  `info` varchar(120) NOT NULL,
  `musicurl` varchar(180) NOT NULL DEFAULT '',
  `plugmenucolor` varchar(10) NOT NULL DEFAULT '',
  `copyright` varchar(200) NOT NULL DEFAULT '',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `radiogroup` mediumint(4) NOT NULL DEFAULT '0',
  `advancetpl` tinyint(1) NOT NULL DEFAULT '0',
  `gzhurl` char(255) DEFAULT NULL COMMENT '公众号链接地址',
  `start` int(11) NOT NULL COMMENT '开场动画',
  `stpic` varchar(200) NOT NULL COMMENT '开场动画图片',
  `switch` int(11) NOT NULL DEFAULT '0',
  `pinglun` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启微站全站评论',
  `uyanid` varchar(50) NOT NULL DEFAULT '' COMMENT '友言官网注册的uid',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_home
-- ----------------------------

-- ----------------------------
-- Table structure for tp_home_background
-- ----------------------------
DROP TABLE IF EXISTS `tp_home_background`;
CREATE TABLE `tp_home_background` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `taxis` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_home_background
-- ----------------------------

-- ----------------------------
-- Table structure for tp_hongbao
-- ----------------------------
DROP TABLE IF EXISTS `tp_hongbao`;
CREATE TABLE `tp_hongbao` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `keyword` char(30) NOT NULL,
  `action_name` char(40) NOT NULL COMMENT '红包活动名称',
  `sharetimes` int(10) NOT NULL COMMENT '最小合体次数',
  `min_money` float(6,2) NOT NULL COMMENT '随机数最小值',
  `max_money` float(6,2) NOT NULL COMMENT '随机数最大值',
  `total_money` float(6,2) DEFAULT NULL,
  `start_time` char(11) NOT NULL COMMENT '活动开始时间',
  `end_time` char(11) NOT NULL COMMENT '活动结束时间',
  `need_phone` enum('1','2') NOT NULL COMMENT '是否需要注册手机号',
  `need_follow` enum('1','2') NOT NULL COMMENT '是否需要关注',
  `action_desc` varchar(256) NOT NULL COMMENT '活动介绍',
  `reply_pic` varchar(100) NOT NULL,
  `status` enum('1','2') NOT NULL COMMENT '是否开启',
  `reply_title` varchar(20) NOT NULL,
  `reply_content` varchar(200) NOT NULL,
  `remind_word` varchar(255) NOT NULL,
  `remind_link` varchar(255) NOT NULL,
  `getway` tinyint(1) NOT NULL DEFAULT '1',
  `timeline_hide` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_hongbao
-- ----------------------------

-- ----------------------------
-- Table structure for tp_hongbao_grabber
-- ----------------------------
DROP TABLE IF EXISTS `tp_hongbao_grabber`;
CREATE TABLE `tp_hongbao_grabber` (
  `grabber_id` int(11) NOT NULL AUTO_INCREMENT,
  `hongbao_id` int(11) NOT NULL COMMENT '抢到的红包id',
  `money` float(6,2) unsigned NOT NULL COMMENT '抢到的红包金额',
  `grabber_nickname` varchar(20) DEFAULT '' COMMENT '抢红包者昵称',
  `grabber_headimgurl` varchar(255) DEFAULT NULL COMMENT '抢红包者头像',
  `grabber_shareid` varchar(100) DEFAULT '' COMMENT '抢红包者分享的key',
  `grabber_wechaid` varchar(100) DEFAULT '' COMMENT '抢红包者wcha_id',
  `grabber_sex` enum('0','1') DEFAULT '0' COMMENT '抢红包者性别',
  `grabber_tel` varchar(20) DEFAULT '' COMMENT '抢红包者电话',
  `grabber_qq` varchar(20) DEFAULT '' COMMENT '抢红包者QQ',
  `grabber_address` varchar(50) DEFAULT '' COMMENT '抢红包者address',
  `grabber_province` varchar(50) DEFAULT '' COMMENT '抢红包者province',
  `grabber_city` varchar(50) DEFAULT '' COMMENT '抢红包者city',
  `share_money` int(11) DEFAULT '0' COMMENT '抢红包者合体奖励的金额',
  `share_content` int(11) DEFAULT '0' COMMENT '抢红包者分享语',
  `token` varchar(50) DEFAULT NULL COMMENT 'token',
  `grabber_time` int(11) NOT NULL,
  `isgrabbed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`grabber_id`),
  KEY `hongbao_id` (`hongbao_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_hongbao_grabber
-- ----------------------------

-- ----------------------------
-- Table structure for tp_hongbao_share
-- ----------------------------
DROP TABLE IF EXISTS `tp_hongbao_share`;
CREATE TABLE `tp_hongbao_share` (
  `share_id` int(11) NOT NULL AUTO_INCREMENT,
  `hongbao_id` int(11) NOT NULL COMMENT '红包id',
  `add_money` float(6,2) unsigned NOT NULL COMMENT '为合体者贡献的金额',
  `share_key` varchar(50) NOT NULL COMMENT '分享code',
  `share_nickname` varchar(50) DEFAULT '' COMMENT '分享者昵称',
  `share_pic` varchar(255) DEFAULT '' COMMENT '分享者头像',
  `is_opened` tinyint(4) DEFAULT '0' COMMENT '是否进入分享页',
  `share_time` int(11) DEFAULT '0' COMMENT '分享时间',
  `share_wechaid` varchar(50) DEFAULT '' COMMENT '分享者openid',
  PRIMARY KEY (`share_id`),
  KEY `hongbao_id` (`hongbao_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_hongbao_share
-- ----------------------------

-- ----------------------------
-- Table structure for tp_host
-- ----------------------------
DROP TABLE IF EXISTS `tp_host`;
CREATE TABLE `tp_host` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL COMMENT '关键词',
  `title` varchar(50) NOT NULL COMMENT '商家名称',
  `address` varchar(50) NOT NULL COMMENT '商家地',
  `tel` varchar(13) NOT NULL COMMENT '商家电话',
  `tel2` varchar(13) NOT NULL COMMENT '手机号',
  `ppicurl` varchar(250) NOT NULL COMMENT '订房封面图片',
  `headpic` varchar(250) NOT NULL COMMENT '订单页头部图片',
  `name` varchar(50) NOT NULL COMMENT '文字描述',
  `sort` int(11) NOT NULL COMMENT '排序',
  `picurl` varchar(100) NOT NULL COMMENT '图片地址',
  `url` varchar(50) NOT NULL COMMENT '图片跳转地址以http',
  `info` text NOT NULL COMMENT '商家介绍：',
  `info2` text NOT NULL COMMENT '订房说明u',
  `creattime` int(11) NOT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_host
-- ----------------------------

-- ----------------------------
-- Table structure for tp_host_list_add
-- ----------------------------
DROP TABLE IF EXISTS `tp_host_list_add`;
CREATE TABLE `tp_host_list_add` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hid` int(11) NOT NULL COMMENT '商家id',
  `token` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL COMMENT '房间类型',
  `typeinfo` varchar(100) NOT NULL COMMENT '简要说明',
  `price` decimal(10,2) NOT NULL COMMENT '原价：',
  `yhprice` decimal(10,2) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '文字描述',
  `picurl` varchar(110) NOT NULL COMMENT '图片地址',
  `url` varchar(500) NOT NULL COMMENT '图片跳转地址以http',
  `info` text NOT NULL COMMENT '配套设施',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_host_list_add
-- ----------------------------

-- ----------------------------
-- Table structure for tp_host_order
-- ----------------------------
DROP TABLE IF EXISTS `tp_host_order`;
CREATE TABLE `tp_host_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `book_people` varchar(50) NOT NULL COMMENT '预订人',
  `tel` varchar(13) NOT NULL COMMENT '电话',
  `check_in` int(11) NOT NULL COMMENT '入住时间',
  `check_out` int(11) NOT NULL COMMENT '离开时间',
  `room_type` varchar(50) NOT NULL COMMENT '房间类型',
  `book_time` int(11) NOT NULL COMMENT '预订时间',
  `book_num` int(11) NOT NULL COMMENT '预订数量',
  `price` decimal(10,2) NOT NULL COMMENT ' 价格',
  `order_status` int(11) NOT NULL COMMENT '订单状态 1 成功,2 失败,3 未处理',
  `hid` int(11) NOT NULL COMMENT '订房商家id',
  `remarks` varchar(250) NOT NULL COMMENT '留言备注',
  `orderid` varchar(100) NOT NULL,
  `paytype` varchar(100) NOT NULL,
  `third_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_host_order
-- ----------------------------

-- ----------------------------
-- Table structure for tp_hotels_house
-- ----------------------------
DROP TABLE IF EXISTS `tp_hotels_house`;
CREATE TABLE `tp_hotels_house` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(80) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `sid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `sid` (`sid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_hotels_house
-- ----------------------------

-- ----------------------------
-- Table structure for tp_hotels_house_sort
-- ----------------------------
DROP TABLE IF EXISTS `tp_hotels_house_sort`;
CREATE TABLE `tp_hotels_house_sort` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `vprice` float NOT NULL,
  `note` varchar(500) NOT NULL,
  `num` tinyint(1) unsigned NOT NULL,
  `houses` smallint(3) unsigned NOT NULL,
  `area` float NOT NULL,
  `bed` varchar(100) NOT NULL,
  `floor` varchar(100) NOT NULL,
  `bedwidth` varchar(100) NOT NULL,
  `network` varchar(100) NOT NULL,
  `smoke` varchar(100) NOT NULL,
  `image_1` varchar(200) NOT NULL,
  `image_2` varchar(200) NOT NULL,
  `image_3` varchar(200) NOT NULL,
  `image_4` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_hotels_house_sort
-- ----------------------------

-- ----------------------------
-- Table structure for tp_hotels_image
-- ----------------------------
DROP TABLE IF EXISTS `tp_hotels_image`;
CREATE TABLE `tp_hotels_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(80) NOT NULL,
  `image` varchar(200) NOT NULL,
  `info` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_hotels_image
-- ----------------------------

-- ----------------------------
-- Table structure for tp_hotels_order
-- ----------------------------
DROP TABLE IF EXISTS `tp_hotels_order`;
CREATE TABLE `tp_hotels_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `nums` smallint(3) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `time` int(11) NOT NULL,
  `startdate` int(8) unsigned NOT NULL,
  `enddate` int(8) unsigned NOT NULL,
  `paid` tinyint(1) unsigned NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `printed` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `paytype` varchar(100) NOT NULL,
  `third_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`wecha_id`),
  KEY `token` (`token`),
  KEY `orderid` (`orderid`),
  KEY `enddate` (`enddate`),
  KEY `sid` (`sid`),
  KEY `stardate` (`startdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_hotels_order
-- ----------------------------

-- ----------------------------
-- Table structure for tp_images
-- ----------------------------
DROP TABLE IF EXISTS `tp_images`;
CREATE TABLE `tp_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fc` char(250) NOT NULL,
  `about` char(250) NOT NULL,
  `price` char(250) NOT NULL,
  `login` char(250) NOT NULL,
  `help` char(250) NOT NULL,
  `common` char(250) NOT NULL,
  `agentid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_images
-- ----------------------------

-- ----------------------------
-- Table structure for tp_img
-- ----------------------------
DROP TABLE IF EXISTS `tp_img`;
CREATE TABLE `tp_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `keyword` char(255) NOT NULL,
  `precisions` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL COMMENT '简介',
  `classid` int(11) NOT NULL,
  `classname` varchar(60) NOT NULL,
  `pic` char(255) NOT NULL COMMENT '封面图片',
  `showpic` varchar(1) NOT NULL COMMENT '图片是否显示封面',
  `info` longtext NOT NULL,
  `url` char(255) NOT NULL COMMENT '图文外链地址',
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `token` char(30) NOT NULL,
  `title` varchar(60) NOT NULL,
  `usort` int(11) NOT NULL DEFAULT '1',
  `longitude` varchar(20) NOT NULL DEFAULT '0',
  `latitude` varchar(20) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `writer` varchar(200) DEFAULT NULL COMMENT '作者',
  `texttype` int(11) NOT NULL DEFAULT '1' COMMENT '文本类型',
  `usorts` int(11) NOT NULL DEFAULT '1' COMMENT '分类文章排列顺序',
  `is_focus` tinyint(4) NOT NULL,
  `wechat_group` varchar(500) NOT NULL,
  `pinglun` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启当前图文评论',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_img
-- ----------------------------

-- ----------------------------
-- Table structure for tp_img_multi
-- ----------------------------
DROP TABLE IF EXISTS `tp_img_multi`;
CREATE TABLE `tp_img_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` varchar(100) DEFAULT '',
  `imgs` varchar(100) DEFAULT '',
  `token` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_img_multi
-- ----------------------------

-- ----------------------------
-- Table structure for tp_indent
-- ----------------------------
DROP TABLE IF EXISTS `tp_indent`;
CREATE TABLE `tp_indent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `gid` tinyint(2) NOT NULL,
  `month` mediumint(5) NOT NULL DEFAULT '0',
  `uname` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `info` int(11) NOT NULL,
  `indent_id` char(20) NOT NULL,
  `widtrade_no` varchar(20) NOT NULL,
  `price` float NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_indent
-- ----------------------------

-- ----------------------------
-- Table structure for tp_invite
-- ----------------------------
DROP TABLE IF EXISTS `tp_invite`;
CREATE TABLE `tp_invite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `title` varchar(30) NOT NULL,
  `content` varchar(360) NOT NULL,
  `replypic` varchar(200) NOT NULL,
  `cover` varchar(150) NOT NULL,
  `meetpic` varchar(150) NOT NULL,
  `photo` varchar(20) NOT NULL,
  `linkman` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `site` varchar(100) NOT NULL,
  `twopic` varchar(150) NOT NULL,
  `theme` varchar(50) NOT NULL,
  `themeurl` varchar(150) NOT NULL,
  `warn` varchar(100) NOT NULL,
  `inback` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_invite
-- ----------------------------

-- ----------------------------
-- Table structure for tp_invites
-- ----------------------------
DROP TABLE IF EXISTS `tp_invites`;
CREATE TABLE `tp_invites` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `picurl` varchar(120) NOT NULL,
  `type` int(3) NOT NULL,
  `brief` varchar(200) NOT NULL,
  `content` varchar(300) NOT NULL,
  `statdate` varchar(30) NOT NULL,
  `address` varchar(120) NOT NULL,
  `lng` double NOT NULL,
  `lat` double NOT NULL,
  `qr_code` varchar(120) NOT NULL,
  `copyrite` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_invites
-- ----------------------------

-- ----------------------------
-- Table structure for tp_invites_info
-- ----------------------------
DROP TABLE IF EXISTS `tp_invites_info`;
CREATE TABLE `tp_invites_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `username` varchar(20) NOT NULL,
  `telphone` varchar(15) NOT NULL,
  `rdo_go` int(2) NOT NULL,
  `content` varchar(200) NOT NULL,
  `type` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_invites_info
-- ----------------------------

-- ----------------------------
-- Table structure for tp_invite_enroll
-- ----------------------------
DROP TABLE IF EXISTS `tp_invite_enroll`;
CREATE TABLE `tp_invite_enroll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yid` int(1) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `post` varchar(50) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `comp` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_invite_enroll
-- ----------------------------

-- ----------------------------
-- Table structure for tp_invite_meeting
-- ----------------------------
DROP TABLE IF EXISTS `tp_invite_meeting`;
CREATE TABLE `tp_invite_meeting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yid` int(1) NOT NULL,
  `token` varchar(60) NOT NULL,
  `time` int(11) NOT NULL,
  `ytime` int(11) NOT NULL,
  `xtime` int(11) NOT NULL,
  `content` text NOT NULL,
  `guest` varchar(200) NOT NULL,
  `call` varchar(20) NOT NULL,
  `site` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_invite_meeting
-- ----------------------------

-- ----------------------------
-- Table structure for tp_invite_partner
-- ----------------------------
DROP TABLE IF EXISTS `tp_invite_partner`;
CREATE TABLE `tp_invite_partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yid` int(1) NOT NULL,
  `token` varchar(30) NOT NULL,
  `partnertype` varchar(50) NOT NULL COMMENT '合作伙伴类型',
  `typepic` varchar(200) NOT NULL COMMENT '类型图片',
  `company` varchar(200) NOT NULL COMMENT '公司',
  `photo` varchar(100) NOT NULL COMMENT '服务热线',
  `scheme` text NOT NULL COMMENT '方案',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_invite_partner
-- ----------------------------

-- ----------------------------
-- Table structure for tp_invite_plan
-- ----------------------------
DROP TABLE IF EXISTS `tp_invite_plan`;
CREATE TABLE `tp_invite_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yid` int(1) NOT NULL,
  `token` varchar(50) NOT NULL,
  `month` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `call` varchar(20) NOT NULL,
  `site` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_invite_plan
-- ----------------------------

-- ----------------------------
-- Table structure for tp_invite_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_invite_user`;
CREATE TABLE `tp_invite_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` char(60) NOT NULL,
  `yid` int(1) NOT NULL,
  `headpic` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `synopsis` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_invite_user
-- ----------------------------

-- ----------------------------
-- Table structure for tp_jiejing
-- ----------------------------
DROP TABLE IF EXISTS `tp_jiejing`;
CREATE TABLE `tp_jiejing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(50) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `pano` varchar(200) NOT NULL,
  `text` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_jiejing
-- ----------------------------

-- ----------------------------
-- Table structure for tp_kefu
-- ----------------------------
DROP TABLE IF EXISTS `tp_kefu`;
CREATE TABLE `tp_kefu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(50) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `info2` varchar(200) NOT NULL,
  `text` varchar(50) NOT NULL,
  `status` text NOT NULL,
  `sc` text NOT NULL,
  `cy` text NOT NULL,
  `lt` text NOT NULL,
  `yy` text NOT NULL,
  `zp` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_kefu
-- ----------------------------

-- ----------------------------
-- Table structure for tp_keyword
-- ----------------------------
DROP TABLE IF EXISTS `tp_keyword`;
CREATE TABLE `tp_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` char(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `module` varchar(15) NOT NULL,
  `precision` tinyint(1) NOT NULL DEFAULT '0',
  `precisions` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_keyword
-- ----------------------------

-- ----------------------------
-- Table structure for tp_leave
-- ----------------------------
DROP TABLE IF EXISTS `tp_leave`;
CREATE TABLE `tp_leave` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `token` varchar(60) NOT NULL,
  `time` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1;

-- ----------------------------
-- Records of tp_leave
-- ----------------------------

-- ----------------------------
-- Table structure for tp_links
-- ----------------------------
DROP TABLE IF EXISTS `tp_links`;
CREATE TABLE `tp_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8 NOT NULL,
  `url` char(255) CHARACTER SET utf8 NOT NULL,
  `status` varchar(1) CHARACTER SET utf8 NOT NULL,
  `agentid` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_links
-- ----------------------------

-- ----------------------------
-- Table structure for tp_live
-- ----------------------------
DROP TABLE IF EXISTS `tp_live`;
CREATE TABLE `tp_live` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `show_company` enum('0','1') NOT NULL,
  `name` char(50) NOT NULL,
  `keyword` char(40) NOT NULL,
  `open_pic` char(120) NOT NULL,
  `is_masking` enum('0','1') NOT NULL,
  `masking_pic` char(120) NOT NULL,
  `intro` varchar(500) NOT NULL,
  `music` char(120) NOT NULL,
  `end_pic` char(120) NOT NULL,
  `share_bg` char(120) NOT NULL,
  `share_button` char(120) NOT NULL,
  `add_time` char(11) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `token` char(25) CHARACTER SET cp1251 COLLATE cp1251_bin NOT NULL,
  `warn` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_live
-- ----------------------------

-- ----------------------------
-- Table structure for tp_live_company
-- ----------------------------
DROP TABLE IF EXISTS `tp_live_company`;
CREATE TABLE `tp_live_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `name` char(50) NOT NULL,
  `bg_pic` char(120) NOT NULL,
  `top_pic` char(120) NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `live_id` int(10) unsigned NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `show_map` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_live_company
-- ----------------------------

-- ----------------------------
-- Table structure for tp_live_content
-- ----------------------------
DROP TABLE IF EXISTS `tp_live_content`;
CREATE TABLE `tp_live_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `bg_pic` char(120) NOT NULL,
  `movie_pic` char(120) NOT NULL,
  `movie_link` char(200) NOT NULL,
  `type` enum('1','2') NOT NULL,
  `sort` tinyint(4) unsigned NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `token` char(25) NOT NULL,
  `add_time` char(11) NOT NULL,
  `live_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_live_content
-- ----------------------------

-- ----------------------------
-- Table structure for tp_livingcircle
-- ----------------------------
DROP TABLE IF EXISTS `tp_livingcircle`;
CREATE TABLE `tp_livingcircle` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `wxtitle` varchar(100) NOT NULL,
  `wxpic` varchar(100) NOT NULL,
  `wxinfo` text,
  `fistpic` varchar(100) NOT NULL,
  `secondpic` varchar(100) DEFAULT NULL,
  `thirdpic` varchar(100) DEFAULT NULL,
  `fourpic` varchar(100) DEFAULT NULL,
  `fivepic` varchar(100) DEFAULT NULL,
  `sixpic` varchar(100) DEFAULT NULL,
  `navpic` varchar(100) NOT NULL,
  `mysellerpic` varchar(100) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_livingcircle
-- ----------------------------

-- ----------------------------
-- Table structure for tp_livingcircle_comment
-- ----------------------------
DROP TABLE IF EXISTS `tp_livingcircle_comment`;
CREATE TABLE `tp_livingcircle_comment` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `star` int(11) NOT NULL,
  `info` text NOT NULL,
  `addtime` int(11) NOT NULL,
  `sellerid` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_livingcircle_comment
-- ----------------------------

-- ----------------------------
-- Table structure for tp_livingcircle_favorite
-- ----------------------------
DROP TABLE IF EXISTS `tp_livingcircle_favorite`;
CREATE TABLE `tp_livingcircle_favorite` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `sellerid` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_livingcircle_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for tp_livingcircle_mysellercart
-- ----------------------------
DROP TABLE IF EXISTS `tp_livingcircle_mysellercart`;
CREATE TABLE `tp_livingcircle_mysellercart` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `sellerid` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `orderid` int(11) NOT NULL DEFAULT '0',
  `goodsid` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_livingcircle_mysellercart
-- ----------------------------

-- ----------------------------
-- Table structure for tp_livingcircle_mysellergoods
-- ----------------------------
DROP TABLE IF EXISTS `tp_livingcircle_mysellergoods`;
CREATE TABLE `tp_livingcircle_mysellergoods` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `sellerid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  `num` int(11) NOT NULL DEFAULT '1',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_livingcircle_mysellergoods
-- ----------------------------

-- ----------------------------
-- Table structure for tp_livingcircle_mysellerorder
-- ----------------------------
DROP TABLE IF EXISTS `tp_livingcircle_mysellerorder`;
CREATE TABLE `tp_livingcircle_mysellerorder` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `sellerid` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `price` varchar(100) NOT NULL,
  `addtime` int(11) NOT NULL,
  `paytype` varchar(50) DEFAULT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `third_id` varchar(100) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `orderid` varchar(255) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_livingcircle_mysellerorder
-- ----------------------------

-- ----------------------------
-- Table structure for tp_livingcircle_sellcircle
-- ----------------------------
DROP TABLE IF EXISTS `tp_livingcircle_sellcircle`;
CREATE TABLE `tp_livingcircle_sellcircle` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `num` int(11) NOT NULL DEFAULT '1',
  `display` int(11) NOT NULL DEFAULT '1',
  `sellcircleid` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_livingcircle_sellcircle
-- ----------------------------

-- ----------------------------
-- Table structure for tp_livingcircle_seller
-- ----------------------------
DROP TABLE IF EXISTS `tp_livingcircle_seller`;
CREATE TABLE `tp_livingcircle_seller` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `num` int(11) NOT NULL DEFAULT '1',
  `typeid` int(11) NOT NULL,
  `zitypeid` int(11) NOT NULL DEFAULT '0',
  `sellcircleid` int(11) NOT NULL,
  `zisellcircleid` int(11) NOT NULL DEFAULT '0',
  `fistpic` varchar(100) NOT NULL,
  `secondpic` varchar(100) DEFAULT NULL,
  `thirdpic` varchar(100) DEFAULT NULL,
  `fourpic` varchar(100) DEFAULT NULL,
  `fivepic` varchar(100) DEFAULT NULL,
  `sixpic` varchar(100) DEFAULT NULL,
  `qrcode` varchar(100) DEFAULT NULL,
  `weurl` varchar(512) DEFAULT NULL,
  `recommend` int(11) NOT NULL DEFAULT '0',
  `pv` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_livingcircle_seller
-- ----------------------------

-- ----------------------------
-- Table structure for tp_livingcircle_type
-- ----------------------------
DROP TABLE IF EXISTS `tp_livingcircle_type`;
CREATE TABLE `tp_livingcircle_type` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '分类名称',
  `pic` varchar(100) DEFAULT NULL,
  `num` int(11) NOT NULL DEFAULT '1',
  `typeid` int(11) NOT NULL DEFAULT '0' COMMENT '父类id',
  `display` int(11) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `fistpic` varchar(100) NOT NULL,
  `secondpic` varchar(100) DEFAULT NULL,
  `thirdpic` varchar(100) DEFAULT NULL,
  `fourpic` varchar(100) DEFAULT NULL,
  `fivepic` varchar(100) DEFAULT NULL,
  `sixpic` varchar(100) DEFAULT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_livingcircle_type
-- ----------------------------

-- ----------------------------
-- Table structure for tp_livingcircle_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_livingcircle_user`;
CREATE TABLE `tp_livingcircle_user` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `token` varchar(100) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_livingcircle_user
-- ----------------------------

-- ----------------------------
-- Table structure for tp_lottery
-- ----------------------------
DROP TABLE IF EXISTS `tp_lottery`;
CREATE TABLE `tp_lottery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `infotxt` text NOT NULL,
  `joinnum` int(11) NOT NULL COMMENT '参与人数',
  `click` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `starpicurl` varchar(100) NOT NULL COMMENT '填写活动开始图片网址',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `txt` varchar(60) NOT NULL COMMENT '用户输入兑奖时候的显示信息',
  `sttxt` varchar(200) NOT NULL COMMENT '简介',
  `statdate` int(11) NOT NULL COMMENT '活动开始时间',
  `enddate` int(11) NOT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `aginfo` varchar(200) NOT NULL COMMENT '重复抽奖回复',
  `endtite` varchar(60) NOT NULL COMMENT '活动结束公告主题',
  `endpicurl` varchar(100) NOT NULL,
  `endinfo` varchar(60) NOT NULL,
  `fist` varchar(50) NOT NULL COMMENT '一等奖奖品设置',
  `fistnums` int(4) NOT NULL COMMENT '一等奖奖品数量',
  `fistlucknums` int(1) NOT NULL COMMENT '一等奖中奖号码',
  `second` varchar(50) NOT NULL COMMENT '二等奖奖品设置',
  `type` tinyint(1) NOT NULL,
  `secondnums` int(4) NOT NULL,
  `secondlucknums` int(1) NOT NULL,
  `third` varchar(50) NOT NULL,
  `thirdnums` int(4) NOT NULL,
  `thirdlucknums` int(1) NOT NULL,
  `allpeople` int(11) NOT NULL,
  `canrqnums` int(2) NOT NULL COMMENT '个人限制抽奖次数',
  `parssword` int(15) NOT NULL,
  `renamesn` varchar(50) NOT NULL DEFAULT '',
  `renametel` varchar(60) NOT NULL,
  `displayjpnums` int(1) NOT NULL,
  `createtime` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `four` varchar(50) NOT NULL,
  `fournums` int(11) NOT NULL,
  `fourlucknums` int(11) NOT NULL,
  `five` varchar(50) NOT NULL,
  `fivenums` int(11) NOT NULL,
  `fivelucknums` int(11) NOT NULL,
  `six` varchar(50) NOT NULL COMMENT '六等奖',
  `sixnums` int(11) NOT NULL,
  `sixlucknums` int(11) NOT NULL,
  `zjpic` varchar(150) NOT NULL DEFAULT '',
  `daynums` mediumint(4) NOT NULL DEFAULT '0',
  `maxgetprizenum` mediumint(4) NOT NULL DEFAULT '1',
  `needreg` tinyint(1) NOT NULL DEFAULT '0',
  `guanzhu` int(11) DEFAULT NULL COMMENT '是否关注',
  `fistpic` varchar(100) DEFAULT NULL,
  `secondpic` varchar(100) DEFAULT NULL,
  `thirdpic` varchar(100) DEFAULT NULL,
  `fourpic` varchar(100) DEFAULT NULL,
  `fivepic` varchar(100) DEFAULT NULL,
  `sixpic` varchar(100) DEFAULT NULL,
  `bg` varchar(100) DEFAULT NULL,
  `bgtype` int(11) NOT NULL DEFAULT '0',
  `timespan` int(11) NOT NULL DEFAULT '0',
  `isdaylottery` int(11) NOT NULL DEFAULT '0',
  `cardid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `zjpic` (`zjpic`) USING BTREE,
  KEY `zjpic_2` (`zjpic`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_lottery
-- ----------------------------

-- ----------------------------
-- Table structure for tp_lottery_cheat
-- ----------------------------
DROP TABLE IF EXISTS `tp_lottery_cheat`;
CREATE TABLE `tp_lottery_cheat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lid` int(10) NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `prizetype` mediumint(4) NOT NULL DEFAULT '0',
  `intro` varchar(60) NOT NULL DEFAULT '',
  `code` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_lottery_cheat
-- ----------------------------

-- ----------------------------
-- Table structure for tp_lottery_record
-- ----------------------------
DROP TABLE IF EXISTS `tp_lottery_record`;
CREATE TABLE `tp_lottery_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL,
  `usenums` int(10) NOT NULL DEFAULT '0' COMMENT '用户使用次数',
  `wecha_id` varchar(60) NOT NULL COMMENT '微信唯一识别码',
  `token` varchar(30) NOT NULL,
  `islottery` int(1) NOT NULL COMMENT '是否中奖',
  `wecha_name` varchar(60) NOT NULL COMMENT '微信号',
  `phone` varchar(15) NOT NULL,
  `sn` varchar(13) NOT NULL COMMENT '中奖后序列号',
  `time` int(11) NOT NULL,
  `prize` varchar(50) NOT NULL DEFAULT '' COMMENT '已中奖项',
  `sendstutas` int(11) NOT NULL DEFAULT '0',
  `sendtime` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  PRIMARY KEY (`id`,`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_lottery_record
-- ----------------------------

-- ----------------------------
-- Table structure for tp_market
-- ----------------------------
DROP TABLE IF EXISTS `tp_market`;
CREATE TABLE `tp_market` (
  `market_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  `title` char(30) NOT NULL,
  `keyword` char(20) NOT NULL,
  `tel` char(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `longitude` char(20) NOT NULL,
  `latitude` char(20) NOT NULL,
  `line` varchar(100) NOT NULL,
  `intro` text NOT NULL,
  `logo_pic` char(100) NOT NULL,
  `token` char(20) NOT NULL,
  `market_index_tpl` mediumint(9) NOT NULL,
  `tenant_index_tpl` mediumint(9) NOT NULL,
  `tenant_list_tpl` mediumint(9) NOT NULL,
  PRIMARY KEY (`market_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_market
-- ----------------------------

-- ----------------------------
-- Table structure for tp_market_area
-- ----------------------------
DROP TABLE IF EXISTS `tp_market_area`;
CREATE TABLE `tp_market_area` (
  `area_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area_name` char(35) NOT NULL,
  `manage` char(50) NOT NULL,
  `area_pic` char(100) NOT NULL,
  `area_intro` text NOT NULL,
  `is_use` enum('0','1') NOT NULL,
  `add_time` char(10) NOT NULL,
  `sort` tinyint(2) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_market_area
-- ----------------------------

-- ----------------------------
-- Table structure for tp_market_cate
-- ----------------------------
DROP TABLE IF EXISTS `tp_market_cate`;
CREATE TABLE `tp_market_cate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` char(35) NOT NULL,
  `cate_pic` char(100) NOT NULL,
  `cate_intro` varchar(200) NOT NULL,
  `cate_pid` int(11) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_market_cate
-- ----------------------------

-- ----------------------------
-- Table structure for tp_market_nav
-- ----------------------------
DROP TABLE IF EXISTS `tp_market_nav`;
CREATE TABLE `tp_market_nav` (
  `nav_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nav_name` char(35) NOT NULL,
  `nav_pic` varchar(200) NOT NULL,
  `nav_link` varchar(200) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  `is_system` enum('0','1') NOT NULL,
  PRIMARY KEY (`nav_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_market_nav
-- ----------------------------

-- ----------------------------
-- Table structure for tp_market_park
-- ----------------------------
DROP TABLE IF EXISTS `tp_market_park`;
CREATE TABLE `tp_market_park` (
  `park_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `park_name` char(35) NOT NULL,
  `park_num` int(11) NOT NULL,
  `park_intro` text NOT NULL,
  `is_use` enum('0','1') NOT NULL,
  `add_time` char(10) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`park_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_market_park
-- ----------------------------

-- ----------------------------
-- Table structure for tp_market_slide
-- ----------------------------
DROP TABLE IF EXISTS `tp_market_slide`;
CREATE TABLE `tp_market_slide` (
  `slide_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_title` char(35) NOT NULL DEFAULT '',
  `slide_url` char(100) NOT NULL,
  `slide_link` char(200) NOT NULL,
  `market_id` int(11) NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_market_slide
-- ----------------------------

-- ----------------------------
-- Table structure for tp_medical
-- ----------------------------
DROP TABLE IF EXISTS `tp_medical`;
CREATE TABLE `tp_medical` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `piccover` varchar(500) NOT NULL,
  `registrationtoppic` varchar(500) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lat` varchar(30) NOT NULL,
  `lng` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sms` varchar(100) NOT NULL,
  `open_email` varchar(50) NOT NULL,
  `open_sms` varchar(50) NOT NULL,
  `checked` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_medical
-- ----------------------------

-- ----------------------------
-- Table structure for tp_medical_departments
-- ----------------------------
DROP TABLE IF EXISTS `tp_medical_departments`;
CREATE TABLE `tp_medical_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_medical_departments
-- ----------------------------

-- ----------------------------
-- Table structure for tp_medical_set
-- ----------------------------
DROP TABLE IF EXISTS `tp_medical_set`;
CREATE TABLE `tp_medical_set` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `head_url` varchar(200) NOT NULL DEFAULT '',
  `album_id` int(11) DEFAULT NULL,
  `menu1` varchar(20) NOT NULL DEFAULT '',
  `menu2` varchar(20) NOT NULL DEFAULT '',
  `menu3` varchar(20) NOT NULL DEFAULT '',
  `menu4` varchar(20) NOT NULL DEFAULT '',
  `menu5` varchar(20) NOT NULL DEFAULT '',
  `menu6` varchar(20) NOT NULL DEFAULT '',
  `menu7` varchar(20) NOT NULL DEFAULT '',
  `menu8` varchar(20) NOT NULL DEFAULT '',
  `menu9` varchar(50) DEFAULT '',
  `menu10` varchar(50) DEFAULT '',
  `picurl1` varchar(200) DEFAULT '',
  `picurl2` varchar(200) DEFAULT '',
  `picurl3` varchar(200) DEFAULT '',
  `picurl4` varchar(200) DEFAULT '',
  `picurl5` varchar(200) DEFAULT '',
  `picurl6` varchar(200) DEFAULT '',
  `picurl7` varchar(200) DEFAULT '',
  `picurl8` varchar(200) DEFAULT '',
  `picurl9` varchar(200) DEFAULT '',
  `picurl10` varchar(200) DEFAULT '',
  `hotfocus_id` int(11) NOT NULL,
  `experts_id` int(11) NOT NULL,
  `ceem_id` int(11) NOT NULL,
  `Rcase_id` int(11) NOT NULL,
  `technology_id` int(11) NOT NULL,
  `drug_id` int(11) NOT NULL,
  `evants_id` int(11) NOT NULL,
  `video` text NOT NULL,
  `symptoms_id` int(11) NOT NULL,
  `info` char(200) NOT NULL DEFAULT '',
  `path` varchar(3000) DEFAULT '0',
  `tpid` int(11) DEFAULT NULL,
  `conttpid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_medical_set
-- ----------------------------

-- ----------------------------
-- Table structure for tp_medical_setup
-- ----------------------------
DROP TABLE IF EXISTS `tp_medical_setup`;
CREATE TABLE `tp_medical_setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` varchar(20) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `scheduled_date` datetime NOT NULL,
  `address` varchar(500) NOT NULL,
  `departments` varchar(200) NOT NULL,
  `expert` varchar(200) NOT NULL,
  `disease` varchar(500) NOT NULL,
  `process` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_medical_setup
-- ----------------------------

-- ----------------------------
-- Table structure for tp_medical_setup_control
-- ----------------------------
DROP TABLE IF EXISTS `tp_medical_setup_control`;
CREATE TABLE `tp_medical_setup_control` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` varchar(20) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `scheduled_date` char(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `departments` varchar(200) NOT NULL,
  `expert` varchar(200) NOT NULL,
  `disease` varchar(500) NOT NULL,
  `Process` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_medical_setup_control
-- ----------------------------

-- ----------------------------
-- Table structure for tp_medical_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_medical_user`;
CREATE TABLE `tp_medical_user` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `rid` int(11) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `truename` varchar(50) NOT NULL DEFAULT '',
  `utel` char(13) NOT NULL,
  `dateline` varchar(50) NOT NULL,
  `sex` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `txt33` varchar(50) NOT NULL DEFAULT '',
  `txt44` varchar(50) NOT NULL DEFAULT '',
  `txt55` varchar(50) NOT NULL DEFAULT '',
  `yyks` varchar(50) NOT NULL DEFAULT '',
  `yyzj` varchar(50) NOT NULL DEFAULT '',
  `yybz` varchar(50) NOT NULL DEFAULT '',
  `yy4` varchar(50) NOT NULL DEFAULT '',
  `yy5` varchar(50) NOT NULL DEFAULT '',
  `uinfo` varchar(50) NOT NULL DEFAULT '',
  `kfinfo` varchar(100) NOT NULL DEFAULT '',
  `remate` int(10) NOT NULL DEFAULT '0',
  `booktime` int(11) DEFAULT NULL,
  `paid` tinyint(4) DEFAULT '0',
  `orderid` bigint(20) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `orderName` varchar(200) NOT NULL DEFAULT '',
  `txt3name` varchar(50) NOT NULL DEFAULT '',
  `txt4name` varchar(50) NOT NULL DEFAULT '',
  `txt5name` varchar(50) NOT NULL DEFAULT '',
  `select4name` varchar(50) NOT NULL DEFAULT '',
  `select5name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`iid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_medical_user
-- ----------------------------

-- ----------------------------
-- Table structure for tp_member
-- ----------------------------
DROP TABLE IF EXISTS `tp_member`;
CREATE TABLE `tp_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `isopen` int(1) NOT NULL,
  `homepic` varchar(100) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member
-- ----------------------------

-- ----------------------------
-- Table structure for tp_member_card_contact
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_contact`;
CREATE TABLE `tp_member_card_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `sort` tinyint(1) NOT NULL,
  `info` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_contact
-- ----------------------------

-- ----------------------------
-- Table structure for tp_member_card_coupon
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_coupon`;
CREATE TABLE `tp_member_card_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` char(150) NOT NULL,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `attr` enum('0','1') NOT NULL,
  `price` int(11) NOT NULL,
  `people` int(3) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `card_id` char(50) NOT NULL,
  `is_weixin` tinyint(4) NOT NULL,
  `color` char(10) NOT NULL,
  `is_check` tinyint(4) NOT NULL,
  `least_cost` decimal(10,2) NOT NULL,
  `reduce_cost` decimal(10,2) NOT NULL,
  `gift_name` char(30) NOT NULL,
  `integral` int(11) NOT NULL,
  `brand_name` char(20) NOT NULL,
  `logourl` char(150) NOT NULL,
  `is_delete` tinyint(4) NOT NULL,
  `is_huodong` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for tp_member_card_coupon_record
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_coupon_record`;
CREATE TABLE `tp_member_card_coupon_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `wecha_id` char(40) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `coupon_type` enum('1','2','3') NOT NULL,
  `is_use` enum('0','1') NOT NULL,
  `cardid` int(11) NOT NULL,
  `add_time` char(11) NOT NULL,
  `use_time` char(11) NOT NULL,
  `coupon_attr` text NOT NULL,
  `card_id` char(45) NOT NULL,
  `cancel_code` char(15) NOT NULL,
  `company_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `whereid` int(11) NOT NULL DEFAULT '0',
  `iswhere` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_coupon_record
-- ----------------------------

-- ----------------------------
-- Table structure for tp_member_card_create
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_create`;
CREATE TABLE `tp_member_card_create` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `number` varchar(20) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `is_bind` tinyint(4) NOT NULL,
  `old_number` char(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_create
-- ----------------------------

-- ----------------------------
-- Table structure for tp_member_card_custom
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_custom`;
CREATE TABLE `tp_member_card_custom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(40) NOT NULL,
  `wechaname` tinyint(4) NOT NULL DEFAULT '1',
  `tel` tinyint(4) NOT NULL DEFAULT '1',
  `truename` tinyint(4) NOT NULL DEFAULT '0',
  `qq` tinyint(4) NOT NULL DEFAULT '0',
  `paypass` tinyint(4) NOT NULL DEFAULT '1',
  `portrait` tinyint(4) NOT NULL DEFAULT '0',
  `sex` tinyint(4) NOT NULL DEFAULT '0',
  `bornyear` tinyint(4) NOT NULL DEFAULT '0',
  `bornmonth` tinyint(4) NOT NULL DEFAULT '0',
  `bornday` tinyint(4) NOT NULL DEFAULT '0',
  `is_wechaname` tinyint(1) NOT NULL DEFAULT '1',
  `is_tel` tinyint(1) NOT NULL DEFAULT '1',
  `is_truename` tinyint(1) NOT NULL DEFAULT '0',
  `is_qq` tinyint(1) NOT NULL DEFAULT '0',
  `is_paypass` tinyint(1) NOT NULL DEFAULT '1',
  `is_portrait` tinyint(1) NOT NULL DEFAULT '1',
  `is_sex` tinyint(1) NOT NULL DEFAULT '0',
  `is_bornyear` tinyint(1) NOT NULL DEFAULT '0',
  `is_bornmonth` tinyint(1) NOT NULL DEFAULT '0',
  `is_bornday` tinyint(1) NOT NULL DEFAULT '0',
  `carnumber` tinyint(4) NOT NULL,
  `is_carnumber` tinyint(1) NOT NULL,
  `cart` tinyint(4) NOT NULL DEFAULT '0',
  `is_cart` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_custom
-- ----------------------------

-- ----------------------------
-- Table structure for tp_member_card_donate
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_donate`;
CREATE TABLE `tp_member_card_donate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(45) NOT NULL,
  `cardid` int(11) NOT NULL,
  `min_price` decimal(10,2) NOT NULL,
  `max_price` decimal(10,2) NOT NULL,
  `donate_price` decimal(10,2) NOT NULL,
  `is_open` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_donate
-- ----------------------------

-- ----------------------------
-- Table structure for tp_member_card_exchange
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_exchange`;
CREATE TABLE `tp_member_card_exchange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` mediumint(8) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `everyday` tinyint(4) NOT NULL,
  `continuation` tinyint(4) NOT NULL,
  `reward` tinyint(4) NOT NULL,
  `cardinfo` text NOT NULL,
  `cardinfo2` text NOT NULL,
  `create_time` int(11) NOT NULL,
  `discount` int(4) NOT NULL COMMENT '充值折扣',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_exchange
-- ----------------------------

-- ----------------------------
-- Table structure for tp_member_card_focus
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_focus`;
CREATE TABLE `tp_member_card_focus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `info` varchar(300) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `token` char(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_focus
-- ----------------------------

-- ----------------------------
-- Table structure for tp_member_card_gifts
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_gifts`;
CREATE TABLE `tp_member_card_gifts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `type` enum('1','2') NOT NULL,
  `item_value` int(11) NOT NULL,
  `item_attr` char(50) NOT NULL,
  `start` char(11) NOT NULL,
  `end` char(11) NOT NULL,
  `token` char(25) NOT NULL,
  `cardid` int(11) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_gifts
-- ----------------------------

-- ----------------------------
-- Table structure for tp_member_card_info
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_info`;
CREATE TABLE `tp_member_card_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `description` varchar(12) NOT NULL,
  `class` tinyint(1) NOT NULL,
  `password` varchar(11) NOT NULL,
  `crate_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_info
-- ----------------------------

-- ----------------------------
-- Table structure for tp_member_card_integral
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_integral`;
CREATE TABLE `tp_member_card_integral` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `integral` int(8) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `pic` char(150) NOT NULL,
  `people` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_integral
-- ----------------------------

-- ----------------------------
-- Table structure for tp_member_card_notice
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_notice`;
CREATE TABLE `tp_member_card_notice` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `endtime` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_notice
-- ----------------------------

-- ----------------------------
-- Table structure for tp_member_card_pay_record
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_pay_record`;
CREATE TABLE `tp_member_card_pay_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` char(30) NOT NULL,
  `ordername` varchar(1000) NOT NULL,
  `transactionid` varchar(100) DEFAULT NULL,
  `paytype` char(30) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  `paytime` int(11) DEFAULT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT '0',
  `price` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `token` char(50) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `module` varchar(30) NOT NULL DEFAULT 'Card',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `company_id` int(11) NOT NULL,
  `cardid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_pay_record
-- ----------------------------

-- ----------------------------
-- Table structure for tp_member_card_rule
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_rule`;
CREATE TABLE `tp_member_card_rule` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `percent_rule` varchar(100) NOT NULL COMMENT '百分比返还',
  `fixed_rule` text NOT NULL COMMENT '固定返还',
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_rule
-- ----------------------------

-- ----------------------------
-- Table structure for tp_member_card_set
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_set`;
CREATE TABLE `tp_member_card_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `cardname` varchar(60) NOT NULL,
  `showname` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '显示卡名称',
  `miniscore` int(10) NOT NULL DEFAULT '0',
  `logo` varchar(200) NOT NULL,
  `showlogo` int(1) NOT NULL DEFAULT '1' COMMENT '显示logo',
  `bg` varchar(100) NOT NULL,
  `diybg` varchar(200) NOT NULL,
  `info` text NOT NULL,
  `msg` varchar(100) NOT NULL,
  `numbercolor` varchar(10) NOT NULL,
  `vipnamecolor` varchar(10) NOT NULL,
  `Lastmsg` varchar(100) NOT NULL,
  `vip` varchar(100) NOT NULL,
  `qiandao` varchar(100) NOT NULL,
  `shopping` varchar(100) NOT NULL,
  `memberinfo` varchar(100) NOT NULL,
  `membermsg` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  `recharge` varchar(100) NOT NULL DEFAULT '/tpl/User/default/common/images/cart_info/recharge.jpg',
  `payrecord` varchar(100) NOT NULL DEFAULT '/tpl/User/default/common/images/cart_info/payrecord.jpg',
  `company_pwd` char(32) NOT NULL,
  `is_check` enum('0','1') NOT NULL,
  `donate_intro` text NOT NULL,
  `is_donate` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `miniscore` (`miniscore`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_set
-- ----------------------------

-- ----------------------------
-- Table structure for tp_member_card_sign
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_sign`;
CREATE TABLE `tp_member_card_sign` (
  `id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `sign_time` int(11) NOT NULL,
  `is_sign` int(11) NOT NULL,
  `score_type` int(11) NOT NULL,
  `expense` int(11) NOT NULL,
  `sell_expense` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_sign
-- ----------------------------

-- ----------------------------
-- Table structure for tp_member_card_use_record
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_use_record`;
CREATE TABLE `tp_member_card_use_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `itemid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `staffid` int(10) NOT NULL DEFAULT '0',
  `cat` smallint(4) NOT NULL DEFAULT '0',
  `expense` mediumint(4) NOT NULL DEFAULT '0',
  `score` mediumint(4) NOT NULL DEFAULT '0',
  `usecount` mediumint(4) NOT NULL DEFAULT '1',
  `time` int(10) NOT NULL DEFAULT '0',
  `notes` varchar(300) NOT NULL,
  `company_id` int(11) NOT NULL,
  `cardid` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `orderid` char(35) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itemid` (`itemid`,`cat`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_use_record
-- ----------------------------

-- ----------------------------
-- Table structure for tp_member_card_vip
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_vip`;
CREATE TABLE `tp_member_card_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_vip
-- ----------------------------

-- ----------------------------
-- Table structure for tp_microsoft_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `tp_microsoft_withdraw`;
CREATE TABLE `tp_microsoft_withdraw` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pigcms_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `opening_bank` varchar(100) NOT NULL DEFAULT '' COMMENT '开户行',
  `bank_card` varchar(100) NOT NULL DEFAULT '' COMMENT '卡号',
  `bank_card_user` varchar(100) NOT NULL DEFAULT '' COMMENT '开户名',
  `withdrawal_type` tinyint(1) NOT NULL,
  `add_time` int(11) NOT NULL,
  `status` char(30) NOT NULL DEFAULT '',
  `amount` float(6,2) NOT NULL,
  `complate_time` int(11) NOT NULL,
  `bank` char(30) NOT NULL,
  `tel` char(30) NOT NULL,
  `nickname` varchar(100) NOT NULL DEFAULT '' COMMENT '昵称',
  `store` varchar(100) NOT NULL DEFAULT '',
  `user` varchar(100) NOT NULL DEFAULT '',
  `token` char(30) NOT NULL,
  `is_show` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_microsoft_withdraw
-- ----------------------------

-- ----------------------------
-- Table structure for tp_micrstore
-- ----------------------------
DROP TABLE IF EXISTS `tp_micrstore`;
CREATE TABLE `tp_micrstore` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paid` tinyint(4) NOT NULL,
  `third_id` varchar(50) DEFAULT NULL,
  `orderid` varchar(50) NOT NULL,
  `price` float unsigned NOT NULL,
  `token` char(50) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `trade_no` char(50) DEFAULT NULL,
  `paytype` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_micrstore
-- ----------------------------

-- ----------------------------
-- Table structure for tp_micrstore_reply
-- ----------------------------
DROP TABLE IF EXISTS `tp_micrstore_reply`;
CREATE TABLE `tp_micrstore_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` char(20) NOT NULL,
  `description` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `img` varchar(300) NOT NULL,
  `token` varchar(100) NOT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_micrstore_reply
-- ----------------------------

-- ----------------------------
-- Table structure for tp_mobilesite
-- ----------------------------
DROP TABLE IF EXISTS `tp_mobilesite`;
CREATE TABLE `tp_mobilesite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) CHARACTER SET utf8 NOT NULL,
  `owndomain` varchar(150) CHARACTER SET utf8 NOT NULL COMMENT '自己站点域名',
  `admindomain` varchar(150) CHARACTER SET utf8 NOT NULL COMMENT '后台域名',
  `tjscript` text CHARACTER SET utf8 NOT NULL COMMENT '第三方js脚本字符创',
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_mobilesite
-- ----------------------------

-- ----------------------------
-- Table structure for tp_moopha_article
-- ----------------------------
DROP TABLE IF EXISTS `tp_moopha_article`;
CREATE TABLE `tp_moopha_article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `channel_id` int(10) NOT NULL,
  `token` varchar(50) NOT NULL,
  `site` int(4) NOT NULL DEFAULT '1',
  `title` varchar(200) NOT NULL,
  `titles` varchar(400) NOT NULL DEFAULT '',
  `subtitle` varchar(200) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `externallink` tinyint(1) NOT NULL DEFAULT '0',
  `thumb` varchar(100) DEFAULT NULL,
  `content` longtext,
  `intro` varchar(2000) NOT NULL,
  `author` varchar(20) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `keywords` varchar(300) DEFAULT NULL,
  `uid` varchar(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  `last_update` int(10) NOT NULL,
  `viewcount` int(10) NOT NULL DEFAULT '0',
  `template` varchar(50) DEFAULT NULL,
  `pagecount` tinyint(2) NOT NULL DEFAULT '1',
  `disagree` int(10) NOT NULL DEFAULT '0',
  `cancomment` tinyint(1) NOT NULL DEFAULT '1',
  `commentcount` int(10) NOT NULL DEFAULT '0',
  `agree` int(10) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `lastcreate` int(10) NOT NULL DEFAULT '1400000000',
  `sourcetype` smallint(2) NOT NULL DEFAULT '0',
  `ex` tinyint(1) DEFAULT '0',
  `pubed` tinyint(1) NOT NULL DEFAULT '1',
  `geoid` mediumint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channel_id` (`channel_id`),
  KEY `channel_id_2` (`channel_id`,`thumb`),
  KEY `time` (`time`),
  KEY `taxis` (`taxis`),
  KEY `ex` (`ex`),
  KEY `geoid` (`geoid`),
  KEY `uid` (`uid`),
  KEY `keywords` (`keywords`),
  KEY `sourcetype` (`sourcetype`),
  KEY `pubed` (`pubed`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_moopha_article
-- ----------------------------

-- ----------------------------
-- Table structure for tp_moopha_attachement
-- ----------------------------
DROP TABLE IF EXISTS `tp_moopha_attachement`;
CREATE TABLE `tp_moopha_attachement` (
  `url` varchar(150) NOT NULL DEFAULT '',
  `pubid` smallint(3) NOT NULL DEFAULT '1',
  `filetype` varchar(10) NOT NULL DEFAULT 'picture',
  `cat` varchar(20) NOT NULL DEFAULT '',
  `catid` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  KEY `cat` (`cat`,`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_moopha_attachement
-- ----------------------------

-- ----------------------------
-- Table structure for tp_moopha_channel
-- ----------------------------
DROP TABLE IF EXISTS `tp_moopha_channel`;
CREATE TABLE `tp_moopha_channel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `shortname` varchar(50) NOT NULL DEFAULT '',
  `isnav` tinyint(1) NOT NULL DEFAULT '1',
  `channeltype` tinyint(1) NOT NULL DEFAULT '1',
  `cindex` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL,
  `externallink` tinyint(1) NOT NULL DEFAULT '0',
  `des` mediumtext NOT NULL,
  `thumb` varchar(100) DEFAULT NULL,
  `metatitle` varchar(100) DEFAULT NULL,
  `metakeyword` varchar(100) DEFAULT NULL,
  `metades` varchar(200) DEFAULT NULL,
  `thumbwidth` int(4) NOT NULL,
  `thumbheight` int(4) NOT NULL,
  `thumb2width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb2height` mediumint(4) NOT NULL DEFAULT '0',
  `thumb3width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb3height` mediumint(4) NOT NULL DEFAULT '0',
  `thumb4width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb4height` mediumint(4) NOT NULL DEFAULT '0',
  `parentid` int(10) NOT NULL DEFAULT '0',
  `channeltemplate` int(10) DEFAULT '1',
  `contenttemplate` int(10) DEFAULT '1',
  `autotype` varchar(10) NOT NULL DEFAULT '',
  `ex` tinyint(1) NOT NULL DEFAULT '0',
  `iscity` tinyint(1) NOT NULL DEFAULT '0',
  `site` int(4) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `lastcreate` int(10) NOT NULL DEFAULT '1400000000',
  `pagesize` smallint(3) NOT NULL DEFAULT '30',
  `specialid` mediumint(4) NOT NULL DEFAULT '0',
  `homepicturechannel` tinyint(1) NOT NULL DEFAULT '0',
  `hometextchannel` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `site` (`site`),
  KEY `taxis` (`taxis`),
  KEY `time` (`time`),
  KEY `specialid` (`specialid`),
  KEY `token` (`token`),
  KEY `isnav` (`isnav`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_moopha_channel
-- ----------------------------

-- ----------------------------
-- Table structure for tp_moopha_channel_contentattribute
-- ----------------------------
DROP TABLE IF EXISTS `tp_moopha_channel_contentattribute`;
CREATE TABLE `tp_moopha_channel_contentattribute` (
  `channelid` int(4) NOT NULL,
  `attributeid` int(4) NOT NULL,
  `taxis` int(4) NOT NULL DEFAULT '0',
  KEY `channelid` (`channelid`),
  KEY `taxis` (`taxis`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_moopha_channel_contentattribute
-- ----------------------------

-- ----------------------------
-- Table structure for tp_moopha_keywords
-- ----------------------------
DROP TABLE IF EXISTS `tp_moopha_keywords`;
CREATE TABLE `tp_moopha_keywords` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `link` varchar(150) NOT NULL DEFAULT '',
  `title` varchar(150) NOT NULL DEFAULT '',
  `target` varchar(15) NOT NULL DEFAULT '_blank',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_moopha_keywords
-- ----------------------------

-- ----------------------------
-- Table structure for tp_moopha_picture
-- ----------------------------
DROP TABLE IF EXISTS `tp_moopha_picture`;
CREATE TABLE `tp_moopha_picture` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `contentid` int(10) NOT NULL,
  `url` varchar(100) NOT NULL,
  `intro` text NOT NULL,
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contentid` (`contentid`),
  KEY `taxis` (`taxis`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_moopha_picture
-- ----------------------------

-- ----------------------------
-- Table structure for tp_moopha_site
-- ----------------------------
DROP TABLE IF EXISTS `tp_moopha_site`;
CREATE TABLE `tp_moopha_site` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `intro` varchar(600) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `logourl` varchar(120) NOT NULL DEFAULT '',
  `siteindex` varchar(50) NOT NULL,
  `taxis` int(4) NOT NULL,
  `main` int(1) NOT NULL,
  `abspath` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(100) DEFAULT NULL,
  `statisticcode` varchar(600) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `siteindex` (`siteindex`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_moopha_site
-- ----------------------------

-- ----------------------------
-- Table structure for tp_moopha_template
-- ----------------------------
DROP TABLE IF EXISTS `tp_moopha_template`;
CREATE TABLE `tp_moopha_template` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `path` varchar(200) NOT NULL,
  `generate_path` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1-index,2-channel,3-template,4-singlepage',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `createhtml` tinyint(1) NOT NULL DEFAULT '1',
  `site` int(4) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `isdefault` (`isdefault`),
  KEY `site` (`site`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_moopha_template
-- ----------------------------

-- ----------------------------
-- Table structure for tp_moopha_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_moopha_user`;
CREATE TABLE `tp_moopha_user` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `password` char(32) NOT NULL,
  `salt` char(6) NOT NULL,
  `mp` char(11) DEFAULT NULL,
  `qq` varchar(15) DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `regip` varchar(30) DEFAULT NULL,
  `regtime` int(10) DEFAULT NULL,
  `lastloginip` varchar(30) DEFAULT NULL,
  `lastlogintime` int(10) DEFAULT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_moopha_user
-- ----------------------------

-- ----------------------------
-- Table structure for tp_msg
-- ----------------------------
DROP TABLE IF EXISTS `tp_msg`;
CREATE TABLE `tp_msg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `qq` int(11) NOT NULL,
  `domain` varchar(60) NOT NULL,
  `time` int(11) NOT NULL,
  `price` int(5) NOT NULL,
  `info` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_msg
-- ----------------------------

-- ----------------------------
-- Table structure for tp_nearby_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_nearby_user`;
CREATE TABLE `tp_nearby_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_nearby_user
-- ----------------------------

-- ----------------------------
-- Table structure for tp_news
-- ----------------------------
DROP TABLE IF EXISTS `tp_news`;
CREATE TABLE `tp_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wxname` varchar(200) NOT NULL,
  `token` char(150) NOT NULL,
  `class1` int(11) NOT NULL,
  `class2` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `agentid` int(11) NOT NULL DEFAULT '0',
  `agentind` int(11) NOT NULL DEFAULT '0',
  `class3` int(11) NOT NULL,
  `name1` varchar(200) NOT NULL,
  `name2` varchar(200) NOT NULL,
  `name3` varchar(200) NOT NULL,
  `title` varchar(90) NOT NULL,
  `key` varchar(120) NOT NULL,
  `description` char(60) NOT NULL,
  `category` int(1) NOT NULL COMMENT '1:动态，2：公告，3：其他',
  `content` text NOT NULL,
  `imgs` char(120) NOT NULL,
  `showtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_news
-- ----------------------------

-- ----------------------------
-- Table structure for tp_node
-- ----------------------------
DROP TABLE IF EXISTS `tp_node`;
CREATE TABLE `tp_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '节点名称',
  `title` varchar(50) NOT NULL COMMENT '菜单名称',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否激活 1：是 2：否',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `pid` smallint(6) unsigned NOT NULL COMMENT '父ID',
  `level` tinyint(1) unsigned NOT NULL COMMENT '节点等级',
  `data` varchar(255) DEFAULT NULL COMMENT '附加参数',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '菜单显示类型 0:不显示 1:导航菜单 2:左侧菜单',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_node
-- ----------------------------
INSERT INTO `tp_node` VALUES ('125', 'upsave', '更新数据库', '1', '0', '88', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('124', 'del', '删除功能', '1', '0', '88', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('123', 'upsave', '更新数据库', '1', '0', '117', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('122', 'insert', '写入数据库', '1', '0', '117', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('121', 'edit', '编辑横幅', '1', '0', '117', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('120', 'add', '添加横幅', '1', '0', '117', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('119', 'index', '图片列表', '1', '0', '117', '3', '', '0', '2');
INSERT INTO `tp_node` VALUES ('118', 'insert', '写入数据库', '1', '0', '111', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('117', 'Images', '横幅图片', '1', '0', '4', '2', '', '0', '2');
INSERT INTO `tp_node` VALUES ('116', 'add', '添加新闻', '1', '0', '111', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('115', 'upsave', '更新数据库', '1', '0', '111', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('114', 'del', '删除新闻', '1', '0', '111', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('113', 'edit', '编辑新闻', '1', '0', '111', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('112', 'index', '新闻列表', '1', '0', '111', '3', '', '0', '2');
INSERT INTO `tp_node` VALUES ('111', 'News', '新闻管理', '1', '0', '4', '2', '', '0', '2');
INSERT INTO `tp_node` VALUES ('110', 'upsave', '更新数据库', '1', '0', '104', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('109', 'insert', '写入数据库', '1', '0', '104', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('108', 'del', '删除更新', '1', '0', '104', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('107', 'edit', '编辑更新', '1', '0', '104', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('106', 'add', '添加功能', '1', '0', '104', '3', '', '0', '2');
INSERT INTO `tp_node` VALUES ('105', 'index', '功能列表', '1', '0', '104', '3', '', '0', '2');
INSERT INTO `tp_node` VALUES ('104', 'Renew', '功能更新进程', '1', '0', '4', '2', '', '0', '2');
INSERT INTO `tp_node` VALUES ('103', 'del', '删除幻灯片', '1', '0', '97', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('102', 'upsave', '更新数据库', '1', '0', '97', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('101', 'insert', '插入数据库', '1', '0', '97', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('100', 'edit', '编辑幻灯片', '1', '0', '97', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('99', 'add', '添加幻灯片', '1', '0', '97', '3', '', '0', '2');
INSERT INTO `tp_node` VALUES ('98', 'index', '幻灯片列表', '1', '0', '97', '3', '', '0', '2');
INSERT INTO `tp_node` VALUES ('97', 'Banners', '首页幻灯片', '1', '0', '4', '2', '', '0', '2');
INSERT INTO `tp_node` VALUES ('96', 'add', '添加', '1', '0', '88', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('95', 'Aboutus', '关于我们', '1', '0', '45', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('94', 'platform', '平台支付配置', '1', '0', '6', '3', null, '9', '2');
INSERT INTO `tp_node` VALUES ('93', 'index', '对帐列表', '1', '0', '92', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('92', 'Platform', '平台支付', '1', '0', '4', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('88', 'Funintro', '功能介绍', '1', '0', '45', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('87', 'sms', '短信接口', '1', '', '6', '3', null, '6', '2');
INSERT INTO `tp_node` VALUES ('83', 'alipay', '在线支付接口', '1', '0', '6', '3', null, '5', '2');
INSERT INTO `tp_node` VALUES ('81', 'Token', '公众号管理', '1', '0', '80', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('79', 'del', '删除友情链接', '1', '0', '73', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('78', 'upsave', '更新数据库', '1', '0', '73', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('77', 'insert', '插入数据库', '1', '0', '73', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('75', 'add', '添加链接', '1', '0', '73', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('76', 'edit', '编辑链接', '1', '0', '73', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('74', 'index', '友情链接', '1', '0', '73', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('73', 'Links', '友情链接', '1', '0', '4', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('72', 'upsave', '更新数据库', '1', '0', '66', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('71', 'insert', '写入数据库', '1', '0', '66', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('70', 'del', '删除案例', '1', '0', '66', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('69', 'edit', '编辑案例', '1', '0', '66', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('68', 'add', '添加案例', '1', '0', '66', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('67', 'index', '案例列表', '1', '0', '66', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('65', 'index', '充值列表', '1', '0', '64', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('66', 'Case', '客户案例', '1', '0', '4', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('64', 'Records', '充值记录', '1', '0', '4', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('62', 'edit', '编辑', '1', '0', '60', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('63', 'del', '删除', '1', '0', '60', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('61', 'index', '列表', '1', '0', '60', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('60', 'Custom', '自定义页面', '1', '0', '5', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('59', 'del', '删除', '1', '0', '57', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('58', 'index', '文本列表', '1', '0', '57', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('57', 'Text', '微信文本', '1', '0', '5', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('56', 'upsave', '更新客户', '1', '0', '50', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('55', 'insert', '写入数据库', '1', '0', '50', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('54', 'del', '删除客户', '1', '0', '50', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('53', 'edit', '编辑客户', '1', '0', '50', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('52', 'add', '添加客户', '1', '0', '50', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('51', 'index', '客户列表', '1', '0', '50', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('50', 'Users', '客户管理', '1', '0', '3', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('49', 'add', '添加套餐', '1', '0', '48', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('48', 'User_group', '套餐管理', '1', '0', '3', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('47', 'add', '添加模块', '1', '0', '46', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('46', 'Function', '功能模块', '1', '0', '45', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('45', 'Function', '功能模块', '1', '0', '1', '0', null, '5', '1');
INSERT INTO `tp_node` VALUES ('80', 'token', '公众号管理', '1', '0', '1', '0', null, '3', '1');
INSERT INTO `tp_node` VALUES ('42', 'del', '微信图文删除', '1', '0', '38', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('41', 'edit', '微信图文编辑', '1', '0', '38', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('39', 'index', '图文列表', '1', '0', '38', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('40', 'add', '图文添加', '1', '0', '38', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('38', 'Article', '微信图文', '1', '0', '5', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('37', 'main', '右侧栏目', '1', '0', '35', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('35', 'System', '首页', '1', '0', '2', '2', null, '0', '0');
INSERT INTO `tp_node` VALUES ('36', 'menu', '左侧栏', '1', '0', '35', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('32', 'insert', '保存', '1', '0', '6', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('148', 'role_sort', '排序', '1', null, '25', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('30', 'insert', '写入数据库', '1', '0', '25', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('29', 'del', '删除套餐', '1', '0', '25', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('28', 'edit', '编辑套餐', '1', '0', '25', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('27', 'index', '管理组列表', '1', '0', '25', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('26', 'add', '创建管理组', '1', '0', '25', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('25', 'Group', '管理组', '1', '0', '3', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('24', 'del', '删除客户', '1', '0', '18', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('23', 'update', '更新客户', '1', '0', '18', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('22', 'insert', '写入数据库', '1', '0', '18', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('21', 'edit', '编辑客户', '1', '0', '18', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('20', 'index', '站长列表', '1', '0', '18', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('19', 'add', '添加站长', '1', '0', '18', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('18', 'User', '站长管理', '1', '0', '3', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('17', 'del', '删除节点', '1', '0', '11', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('16', 'update', '更新节点', '1', '0', '11', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('15', 'edit', '编辑节点', '1', '0', '11', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('14', 'insert', '写入', '1', '0', '11', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('13', 'index', '节点列表', '1', '', '11', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('12', 'add', '添加节点', '1', '', '11', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('11', 'Node', '节点管理', '1', null, '2', '2', null, '2', '2');
INSERT INTO `tp_node` VALUES ('10', 'upfile', '附件设置', '1', '', '6', '3', null, '4', '2');
INSERT INTO `tp_node` VALUES ('9', 'email', '邮箱设置', '1', '', '6', '3', null, '3', '2');
INSERT INTO `tp_node` VALUES ('8', 'safe', '安全设置', '1', '', '6', '3', null, '2', '2');
INSERT INTO `tp_node` VALUES ('7', 'index', '基本信息设置', '1', '', '6', '3', null, '1', '2');
INSERT INTO `tp_node` VALUES ('6', 'Site', '站点设置', '1', '', '2', '2', null, '1', '2');
INSERT INTO `tp_node` VALUES ('5', 'article', '内容管理', '1', '', '1', '0', null, '4', '1');
INSERT INTO `tp_node` VALUES ('4', 'extent', '扩展管理', '1', '', '1', '0', null, '6', '1');
INSERT INTO `tp_node` VALUES ('3', 'User', '客户管理', '1', '', '1', '0', null, '2', '1');
INSERT INTO `tp_node` VALUES ('2', 'Site', '站点管理', '1', '', '1', '0', null, '1', '1');
INSERT INTO `tp_node` VALUES ('1', 'cms', '根节点', '1', '', '0', '1', null, '0', '0');
INSERT INTO `tp_node` VALUES ('126', 'insert', '写入数据库', '1', '0', '88', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('127', 'index', '功能列表', '1', '0', '88', '3', '', '1', '2');
INSERT INTO `tp_node` VALUES ('128', 'edit', '修改功能', '1', '0', '88', '3', '', '0', '0');
INSERT INTO `tp_node` VALUES ('129', 'addclass', '添加分类', '1', '0', '88', '3', '', '2', '2');
INSERT INTO `tp_node` VALUES ('130', 'indexs', '分类管理', '1', '0', '88', '3', '', '3', '2');
INSERT INTO `tp_node` VALUES ('131', 'indexs', '分类管理', '1', '0', '66', '3', '', '0', '2');
INSERT INTO `tp_node` VALUES ('132', 'addclass', '添加分类', '1', '0', '66', '3', '', '0', '2');
INSERT INTO `tp_node` VALUES ('133', 'SystemIndex', '后台首页', '1', '0', '2', '2', null, '4', '2');
INSERT INTO `tp_node` VALUES ('134', 'Agent', '代理商管理', '1', '0', '1', '2', null, '5', '1');
INSERT INTO `tp_node` VALUES ('135', 'Agent', '代理商管理', '1', '0', '134', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('136', 'add', '添加', '1', '0', '135', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('137', 'AgentPrice', '优惠套餐包', '1', '0', '134', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('138', 'add', '添加', '1', '0', '137', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('139', 'AgentBuyRecords', '消费记录', '1', '0', '134', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('140', 'add', '添加', '1', '0', '95', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('141', 'index', '后台管理', '1', null, '35', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('142', 'Index', '回滚', '1', null, '35', '2', null, '0', '0');
INSERT INTO `tp_node` VALUES ('143', 'rollback', '回滚程序', '1', null, '142', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('144', 'checkUpdate', '升级程序', '1', null, '35', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('145', 'doSqlUpdate', '升级数据库', '1', null, '35', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('146', 'index', '后台管理', '1', null, '133', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('147', 'mysqlajax', '优化修复数据库', '1', null, '6', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('149', 'access', '权限浏览', '1', null, '25', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('150', 'access_edit', '权限编辑', '1', null, '25', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('151', 'index', '管理组列表', '1', null, '48', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('152', 'edit', '修改套餐', '1', null, '48', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('153', 'del', '删除套餐', '1', null, '48', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('154', 'search', '客户搜索', '1', null, '50', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('155', 'syname', '设为系统用户', '1', null, '50', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('156', 'sysname', '取消系统用户', '1', null, '50', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('157', 'index', '公众号列表', '1', null, '81', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('158', 'del', '公众号删除', '1', null, '81', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('159', 'index', '列表', '1', null, '95', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('160', 'edit', '修改', '1', null, '95', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('161', 'del', '删除', '1', null, '95', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('162', 'adds', '执行添加分类', '1', null, '88', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('163', 'edits', '分类修改', '1', null, '88', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('164', 'dels', '分类删除', '1', null, '88', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('165', 'upsaves', '执行分类修改', '1', null, '88', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('166', 'search', '确认设置分类', '1', null, '88', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('167', 'index', '列表', '1', null, '46', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('168', 'edit', '修改', '1', null, '46', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('169', 'del', '删除', '1', null, '46', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('170', 'paid', '处理账单', '1', null, '92', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('171', 'paid_all', '一键处理', '1', null, '92', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('172', 'add', '添加', '1', null, '92', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('173', 'del', '删除', '1', null, '92', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('174', 'edit', '修改', '1', null, '92', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('175', 'insert', '插入数据库', '1', null, '92', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('176', 'upsave', '更新数据库', '1', null, '92', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('177', 'adds', '执行分类添加', '1', null, '66', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('178', 'edits', '分类修改', '1', null, '66', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('179', 'upsaves', '执行分类修改', '1', null, '66', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('180', 'dels', '分类删除', '1', null, '66', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('181', 'send', '确认充值', '1', null, '64', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('185', 'Database', '数据库维护', '1', '0', '2', '2', null, '3', '2');
INSERT INTO `tp_node` VALUES ('186', 'themes', '模板设置', '1', '0', '6', '3', null, '7', '2');
INSERT INTO `tp_node` VALUES ('187', 'rippleos_key', '微WIFI', '1', '0', '6', '3', null, '8', '2');
INSERT INTO `tp_node` VALUES ('188', 'wechat_api', '登录授权', '1', '0', '6', '3', null, '10', '2');
INSERT INTO `tp_node` VALUES ('189', 'Examine_image', '图片审核', '1', null, '4', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('190', 'index', '图片列表', '1', null, '189', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('191', 'del', '删除', '1', null, '189', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('192', 'set', '审核', '1', null, '189', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('193', 'set_all', '一键审核', '1', null, '189', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('194', 'Susceptible', '敏感词过滤', '1', null, '4', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('195', 'index', '列表', '1', null, '194', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('196', 'add', '添加', '1', null, '194', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('197', 'adds', '批量添加', '1', null, '194', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('198', 'del', '删除', '1', null, '194', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('199', 'set', '开启关闭', '1', null, '194', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('200', 'set_all', '一键开启关闭', '1', null, '194', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('201', 'edit', '修改', '1', null, '194', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('202', 'CheckUpdate', '更新程序', '1', null, '2', '2', null, '0', '0');
INSERT INTO `tp_node` VALUES ('203', 'DoSqlUpdate', '更新数据库', '1', null, '2', '2', null, '0', '0');
INSERT INTO `tp_node` VALUES ('204', 'info', '查看详情', '1', null, '189', '3', null, '0', '0');

-- ----------------------------
-- Table structure for tp_norms
-- ----------------------------
DROP TABLE IF EXISTS `tp_norms`;
CREATE TABLE `tp_norms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL,
  `catid` int(10) unsigned NOT NULL,
  `value` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_norms
-- ----------------------------

-- ----------------------------
-- Table structure for tp_notice_record
-- ----------------------------
DROP TABLE IF EXISTS `tp_notice_record`;
CREATE TABLE `tp_notice_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `n_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `n_id` (`n_id`) USING BTREE,
  KEY `customerid` (`userid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_notice_record
-- ----------------------------
INSERT INTO `tp_notice_record` VALUES ('1', '8', '1');

-- ----------------------------
-- Table structure for tp_numqueue_action
-- ----------------------------
DROP TABLE IF EXISTS `tp_numqueue_action`;
CREATE TABLE `tp_numqueue_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reply_keyword` char(30) NOT NULL,
  `reply_pic` varchar(100) NOT NULL,
  `reply_title` varchar(20) NOT NULL,
  `reply_content` varchar(200) NOT NULL,
  `is_open` tinyint(1) NOT NULL DEFAULT '1',
  `token` char(25) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_numqueue_action
-- ----------------------------

-- ----------------------------
-- Table structure for tp_numqueue_admin
-- ----------------------------
DROP TABLE IF EXISTS `tp_numqueue_admin`;
CREATE TABLE `tp_numqueue_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '登陆密码',
  `wecha_id` char(50) NOT NULL DEFAULT '',
  `store_id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT '' COMMENT '所属权限',
  `token` char(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_numqueue_admin
-- ----------------------------

-- ----------------------------
-- Table structure for tp_numqueue_receive
-- ----------------------------
DROP TABLE IF EXISTS `tp_numqueue_receive`;
CREATE TABLE `tp_numqueue_receive` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `queue_type` char(5) NOT NULL DEFAULT 'A' COMMENT '等待类型',
  `queue_number` char(30) NOT NULL DEFAULT '' COMMENT '排队号码',
  `numbers` int(11) NOT NULL DEFAULT '0',
  `phone` char(30) NOT NULL DEFAULT '0' COMMENT '手机号',
  `status` tinyint(1) NOT NULL COMMENT '号码状态',
  `wecha_id` char(50) NOT NULL,
  `token` char(25) NOT NULL,
  `add_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of tp_numqueue_receive
-- ----------------------------

-- ----------------------------
-- Table structure for tp_numqueue_store
-- ----------------------------
DROP TABLE IF EXISTS `tp_numqueue_store`;
CREATE TABLE `tp_numqueue_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `store_type` tinyint(1) NOT NULL,
  `opentime` tinyint(4) NOT NULL DEFAULT '0',
  `closetime` tinyint(4) NOT NULL DEFAULT '0',
  `logo` varchar(255) NOT NULL COMMENT 'logo',
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `remark` char(50) NOT NULL,
  `price` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `type_value` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `tel` varchar(20) NOT NULL DEFAULT '',
  `privilege_link` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `action_id` int(11) NOT NULL,
  `token` char(50) NOT NULL,
  `jump_name` varchar(255) NOT NULL,
  `hankowthames` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL,
  `wait_time` int(11) NOT NULL DEFAULT '0',
  `allow_distance` float(6,2) NOT NULL,
  `need_numbers` tinyint(1) NOT NULL DEFAULT '0',
  `need_wait` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_numqueue_store
-- ----------------------------

-- ----------------------------
-- Table structure for tp_ordering_class
-- ----------------------------
DROP TABLE IF EXISTS `tp_ordering_class`;
CREATE TABLE `tp_ordering_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `name` varchar(10) NOT NULL,
  `sort` tinyint(2) NOT NULL,
  `info` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_ordering_class
-- ----------------------------

-- ----------------------------
-- Table structure for tp_ordering_set
-- ----------------------------
DROP TABLE IF EXISTS `tp_ordering_set`;
CREATE TABLE `tp_ordering_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `title` varchar(60) NOT NULL,
  `info` varchar(120) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `flash` text NOT NULL,
  `create_time` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_ordering_set
-- ----------------------------

-- ----------------------------
-- Table structure for tp_orderprinter
-- ----------------------------
DROP TABLE IF EXISTS `tp_orderprinter`;
CREATE TABLE `tp_orderprinter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(20) NOT NULL DEFAULT '',
  `companyid` int(10) NOT NULL DEFAULT '0',
  `mcode` varchar(60) NOT NULL DEFAULT '',
  `mkey` varchar(60) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `count` mediumint(5) NOT NULL DEFAULT '1',
  `modules` varchar(100) NOT NULL DEFAULT '',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `qr` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_orderprinter
-- ----------------------------

-- ----------------------------
-- Table structure for tp_other
-- ----------------------------
DROP TABLE IF EXISTS `tp_other`;
CREATE TABLE `tp_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_other
-- ----------------------------

-- ----------------------------
-- Table structure for tp_panorama
-- ----------------------------
DROP TABLE IF EXISTS `tp_panorama`;
CREATE TABLE `tp_panorama` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(300) NOT NULL DEFAULT '',
  `music` varchar(100) NOT NULL DEFAULT '',
  `frontpic` varchar(100) NOT NULL DEFAULT '',
  `rightpic` varchar(100) NOT NULL DEFAULT '',
  `backpic` varchar(100) NOT NULL DEFAULT '',
  `leftpic` varchar(100) NOT NULL DEFAULT '',
  `toppic` varchar(100) NOT NULL DEFAULT '',
  `bottompic` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_panorama
-- ----------------------------

-- ----------------------------
-- Table structure for tp_paper
-- ----------------------------
DROP TABLE IF EXISTS `tp_paper`;
CREATE TABLE `tp_paper` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(40) NOT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `message` text NOT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_paper
-- ----------------------------

-- ----------------------------
-- Table structure for tp_pc_config
-- ----------------------------
DROP TABLE IF EXISTS `tp_pc_config`;
CREATE TABLE `tp_pc_config` (
  `token` varchar(50) NOT NULL,
  `site_name` varchar(50) NOT NULL,
  `site_logo` varchar(150) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_address` varchar(200) NOT NULL,
  `site_qq` varchar(100) NOT NULL,
  `site_phone` varchar(100) NOT NULL,
  `site_email` varchar(100) NOT NULL,
  `site_count` text NOT NULL,
  `site_icp` varchar(100) NOT NULL,
  `seo_title` varchar(200) NOT NULL,
  `seo_keywords` varchar(200) NOT NULL,
  `seo_description` text NOT NULL,
  `site_tpl` text NOT NULL,
  `other_info` text NOT NULL COMMENT '模板自定义配置项，序列化存储',
  PRIMARY KEY (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_pc_config
-- ----------------------------

-- ----------------------------
-- Table structure for tp_pc_down
-- ----------------------------
DROP TABLE IF EXISTS `tp_pc_down`;
CREATE TABLE `tp_pc_down` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `key` varchar(50) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `hits` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`) USING BTREE,
  KEY `time` (`time`) USING BTREE,
  KEY `key` (`key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_pc_down
-- ----------------------------

-- ----------------------------
-- Table structure for tp_pc_down_category
-- ----------------------------
DROP TABLE IF EXISTS `tp_pc_down_category`;
CREATE TABLE `tp_pc_down_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `cat_key` varchar(50) NOT NULL,
  `cat_sort` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_key` (`cat_key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_pc_down_category
-- ----------------------------

-- ----------------------------
-- Table structure for tp_pc_flash
-- ----------------------------
DROP TABLE IF EXISTS `tp_pc_flash`;
CREATE TABLE `tp_pc_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `key` varchar(50) NOT NULL,
  `pic` varchar(200) NOT NULL,
  `url` varchar(255) NOT NULL,
  `token` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `key` (`key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_pc_flash
-- ----------------------------

-- ----------------------------
-- Table structure for tp_pc_flash_cat
-- ----------------------------
DROP TABLE IF EXISTS `tp_pc_flash_cat`;
CREATE TABLE `tp_pc_flash_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `cat_key` varchar(50) NOT NULL COMMENT '分类Key,使用Key调用轮播图',
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_key` (`cat_key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_pc_flash_cat
-- ----------------------------

-- ----------------------------
-- Table structure for tp_pc_nav
-- ----------------------------
DROP TABLE IF EXISTS `tp_pc_nav`;
CREATE TABLE `tp_pc_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `key` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_pc_nav
-- ----------------------------

-- ----------------------------
-- Table structure for tp_pc_news
-- ----------------------------
DROP TABLE IF EXISTS `tp_pc_news`;
CREATE TABLE `tp_pc_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `key` varchar(50) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `hits` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`) USING BTREE,
  KEY `time` (`time`) USING BTREE,
  KEY `key` (`key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_pc_news
-- ----------------------------

-- ----------------------------
-- Table structure for tp_pc_news_category
-- ----------------------------
DROP TABLE IF EXISTS `tp_pc_news_category`;
CREATE TABLE `tp_pc_news_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `cat_key` varchar(50) NOT NULL,
  `cat_sort` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_key` (`cat_key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_pc_news_category
-- ----------------------------

-- ----------------------------
-- Table structure for tp_pc_page
-- ----------------------------
DROP TABLE IF EXISTS `tp_pc_page`;
CREATE TABLE `tp_pc_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `s_title` varchar(100) NOT NULL,
  `key` varchar(50) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `key` (`key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_pc_page
-- ----------------------------

-- ----------------------------
-- Table structure for tp_pc_product
-- ----------------------------
DROP TABLE IF EXISTS `tp_pc_product`;
CREATE TABLE `tp_pc_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `key` varchar(50) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `hits` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`) USING BTREE,
  KEY `time` (`time`) USING BTREE,
  KEY `key` (`key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_pc_product
-- ----------------------------

-- ----------------------------
-- Table structure for tp_pc_product_category
-- ----------------------------
DROP TABLE IF EXISTS `tp_pc_product_category`;
CREATE TABLE `tp_pc_product_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `cat_key` varchar(50) NOT NULL,
  `cat_sort` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_key` (`cat_key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_pc_product_category
-- ----------------------------

-- ----------------------------
-- Table structure for tp_pc_site
-- ----------------------------
DROP TABLE IF EXISTS `tp_pc_site`;
CREATE TABLE `tp_pc_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `site` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site` (`site`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_pc_site
-- ----------------------------

-- ----------------------------
-- Table structure for tp_photo
-- ----------------------------
DROP TABLE IF EXISTS `tp_photo`;
CREATE TABLE `tp_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(20) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `isshoinfo` tinyint(1) NOT NULL,
  `num` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `info` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_photo
-- ----------------------------

-- ----------------------------
-- Table structure for tp_photography
-- ----------------------------
DROP TABLE IF EXISTS `tp_photography`;
CREATE TABLE `tp_photography` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '相册id',
  `token` varchar(60) NOT NULL COMMENT '所属公众号',
  `keyword` varchar(60) NOT NULL COMMENT '关键字',
  `tpl` varchar(30) NOT NULL DEFAULT 'index' COMMENT '模板名',
  `title` varchar(150) NOT NULL COMMENT '标题',
  `picurl` varchar(200) NOT NULL COMMENT '封面图',
  `openpic` varchar(200) NOT NULL COMMENT '开场图',
  `toppic` varchar(200) NOT NULL COMMENT '顶部图',
  `man` varchar(30) NOT NULL COMMENT '男方姓名',
  `woman` varchar(30) NOT NULL COMMENT '女方姓名',
  `who_first` tinyint(1) NOT NULL COMMENT '谁名字在先',
  `video` varchar(200) NOT NULL COMMENT '视频',
  `mp3url` varchar(200) NOT NULL COMMENT '背景音乐',
  `word` varchar(200) NOT NULL COMMENT '留言',
  `firstvote` varchar(20) NOT NULL COMMENT '第一个投票内容',
  `firstvotenum` int(1) NOT NULL COMMENT '第一个投票票数',
  `secondvote` varchar(20) NOT NULL COMMENT '第二个投票内容',
  `secondvotenum` int(1) NOT NULL COMMENT '第二个投票票数',
  `thirdvote` varchar(20) NOT NULL COMMENT '第三个投票内容',
  `thirdvotenum` int(1) NOT NULL COMMENT '第三个投票票数',
  `first` varchar(100) NOT NULL COMMENT '第一个奖品',
  `firstnum` int(1) NOT NULL COMMENT '第一个奖品需要的助力数量',
  `second` varchar(100) NOT NULL COMMENT '第二个奖品',
  `secondnum` int(1) NOT NULL COMMENT '第二个奖品数量',
  `nownum` int(1) NOT NULL COMMENT '当前助力数量',
  `success` varchar(100) NOT NULL COMMENT '报名成功提示',
  `bottompic` varchar(200) NOT NULL COMMENT '底部图片',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `toolbar` tinyint(1) NOT NULL DEFAULT '1' COMMENT '显示分类按钮',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_photography
-- ----------------------------

-- ----------------------------
-- Table structure for tp_photography_info
-- ----------------------------
DROP TABLE IF EXISTS `tp_photography_info`;
CREATE TABLE `tp_photography_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL COMMENT '主表id',
  `phone` varchar(11) NOT NULL COMMENT '电话',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_photography_info
-- ----------------------------

-- ----------------------------
-- Table structure for tp_photography_ip
-- ----------------------------
DROP TABLE IF EXISTS `tp_photography_ip`;
CREATE TABLE `tp_photography_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL COMMENT '主表id',
  `ip` varchar(32) NOT NULL COMMENT 'ip',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_photography_ip
-- ----------------------------

-- ----------------------------
-- Table structure for tp_photo_list
-- ----------------------------
DROP TABLE IF EXISTS `tp_photo_list`;
CREATE TABLE `tp_photo_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `info` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_photo_list
-- ----------------------------

-- ----------------------------
-- Table structure for tp_photo_log
-- ----------------------------
DROP TABLE IF EXISTS `tp_photo_log`;
CREATE TABLE `tp_photo_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `openid` varchar(100) NOT NULL DEFAULT '',
  `printed` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_photo_log
-- ----------------------------

-- ----------------------------
-- Table structure for tp_pic_wall
-- ----------------------------
DROP TABLE IF EXISTS `tp_pic_wall`;
CREATE TABLE `tp_pic_wall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joinnum` int(11) NOT NULL COMMENT '参与人数',
  `click` int(11) NOT NULL COMMENT '点击次数',
  `token` varchar(30) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `starpicurl` varchar(100) NOT NULL COMMENT '填写活动开始图片网址',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `sttxt` varchar(200) NOT NULL COMMENT '简介',
  `statdate` int(11) NOT NULL COMMENT '活动开始时间',
  `enddate` int(11) NOT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `endtite` varchar(60) NOT NULL COMMENT '活动结束公告主题',
  `endpicurl` varchar(100) NOT NULL COMMENT '活动结束图片网址',
  `endinfo` varchar(60) NOT NULL COMMENT '活动结束说明',
  `status` int(1) NOT NULL,
  `createtime` int(11) NOT NULL,
  `ischeck` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_pic_wall
-- ----------------------------

-- ----------------------------
-- Table structure for tp_pic_walllog
-- ----------------------------
DROP TABLE IF EXISTS `tp_pic_walllog`;
CREATE TABLE `tp_pic_walllog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '活动id',
  `token` varchar(60) NOT NULL COMMENT '公众账号token',
  `picurl` varchar(100) NOT NULL COMMENT '照片链接',
  `wecha_id` varchar(30) NOT NULL COMMENT '微信用户id',
  `username` varchar(30) NOT NULL COMMENT '微信用户名字',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `state` int(1) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_pic_walllog
-- ----------------------------

-- ----------------------------
-- Table structure for tp_platform_pay
-- ----------------------------
DROP TABLE IF EXISTS `tp_platform_pay`;
CREATE TABLE `tp_platform_pay` (
  `platform_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(60) NOT NULL,
  `price` float NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `from` varchar(50) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`platform_id`),
  KEY `time` (`time`),
  KEY `orderid` (`orderid`,`from`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_platform_pay
-- ----------------------------

-- ----------------------------
-- Table structure for tp_popularity
-- ----------------------------
DROP TABLE IF EXISTS `tp_popularity`;
CREATE TABLE `tp_popularity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `keyword` char(35) NOT NULL,
  `title` char(45) NOT NULL,
  `pic` char(200) NOT NULL,
  `top_pic` varchar(250) NOT NULL,
  `start` char(15) NOT NULL,
  `end` char(15) NOT NULL,
  `addr` varchar(150) NOT NULL,
  `longitude` char(20) NOT NULL,
  `latitude` char(20) NOT NULL,
  `info` text NOT NULL,
  `is_open` tinyint(4) NOT NULL,
  `add_time` char(15) NOT NULL,
  `show_num` tinyint(4) NOT NULL,
  `is_reg` tinyint(4) NOT NULL,
  `is_attention` tinyint(4) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_popularity
-- ----------------------------

-- ----------------------------
-- Table structure for tp_popularity_prize
-- ----------------------------
DROP TABLE IF EXISTS `tp_popularity_prize`;
CREATE TABLE `tp_popularity_prize` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` char(45) NOT NULL,
  `img` char(200) NOT NULL,
  `num` int(11) NOT NULL,
  `use_num` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `gt` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of tp_popularity_prize
-- ----------------------------

-- ----------------------------
-- Table structure for tp_popularity_share
-- ----------------------------
DROP TABLE IF EXISTS `tp_popularity_share`;
CREATE TABLE `tp_popularity_share` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `wecha_id` char(40) NOT NULL,
  `share_key` char(32) NOT NULL,
  `add_time` char(15) NOT NULL,
  `num` int(11) NOT NULL,
  `share_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_popularity_share
-- ----------------------------

-- ----------------------------
-- Table structure for tp_popularity_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_popularity_user`;
CREATE TABLE `tp_popularity_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wecha_id` char(40) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` char(35) NOT NULL,
  `add_time` char(15) NOT NULL,
  `share_count` int(11) NOT NULL,
  `share_key` char(40) NOT NULL,
  `is_real` tinyint(4) NOT NULL,
  `share_num` int(100) NOT NULL,
  `share_code` varchar(100) NOT NULL,
  `is_see` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of tp_popularity_user
-- ----------------------------

-- ----------------------------
-- Table structure for tp_present
-- ----------------------------
DROP TABLE IF EXISTS `tp_present`;
CREATE TABLE `tp_present` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `class` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `info` varchar(300) NOT NULL,
  `img` char(250) NOT NULL,
  `classname` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_present
-- ----------------------------

-- ----------------------------
-- Table structure for tp_problem_game
-- ----------------------------
DROP TABLE IF EXISTS `tp_problem_game`;
CREATE TABLE `tp_problem_game` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(60) NOT NULL,
  `title` char(60) NOT NULL,
  `keyword` char(20) NOT NULL,
  `logo_pic` char(120) NOT NULL,
  `token` char(25) NOT NULL,
  `banner` char(120) NOT NULL,
  `explain` varchar(600) NOT NULL,
  `rule` text NOT NULL,
  `add_time` char(10) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `answer_time` char(5) NOT NULL,
  `sub_limit` smallint(5) unsigned NOT NULL,
  `over_hint` varchar(500) NOT NULL,
  `question_num` mediumint(9) NOT NULL,
  `score` mediumint(9) NOT NULL,
  `end_day` smallint(6) NOT NULL,
  `start_time` char(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_problem_game
-- ----------------------------

-- ----------------------------
-- Table structure for tp_problem_option
-- ----------------------------
DROP TABLE IF EXISTS `tp_problem_option`;
CREATE TABLE `tp_problem_option` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `answer` varchar(500) NOT NULL,
  `is_true` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_problem_option
-- ----------------------------

-- ----------------------------
-- Table structure for tp_problem_question
-- ----------------------------
DROP TABLE IF EXISTS `tp_problem_question`;
CREATE TABLE `tp_problem_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(20) NOT NULL,
  `title` varchar(500) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `problem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_problem_question
-- ----------------------------

-- ----------------------------
-- Table structure for tp_problem_question_log
-- ----------------------------
DROP TABLE IF EXISTS `tp_problem_question_log`;
CREATE TABLE `tp_problem_question_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(20) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `expend_time` char(5) NOT NULL,
  `add_time` char(10) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_problem_question_log
-- ----------------------------

-- ----------------------------
-- Table structure for tp_problem_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_problem_user`;
CREATE TABLE `tp_problem_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(20) NOT NULL,
  `wecha_id` char(100) NOT NULL,
  `user_name` char(50) NOT NULL,
  `phone` char(11) NOT NULL,
  `nickname` char(50) NOT NULL,
  `add_time` char(10) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `score_count` int(11) NOT NULL,
  `expend_count` mediumint(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_problem_user
-- ----------------------------

-- ----------------------------
-- Table structure for tp_product
-- ----------------------------
DROP TABLE IF EXISTS `tp_product`;
CREATE TABLE `tp_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `sort` int(10) NOT NULL DEFAULT '0',
  `catid` mediumint(4) NOT NULL DEFAULT '0',
  `gid` int(10) unsigned NOT NULL,
  `storeid` mediumint(4) NOT NULL DEFAULT '0',
  `name` varchar(150) NOT NULL DEFAULT '',
  `price` float NOT NULL DEFAULT '0',
  `vprice` float NOT NULL,
  `oprice` float NOT NULL DEFAULT '0',
  `mailprice` float NOT NULL,
  `discount` float NOT NULL DEFAULT '10',
  `intro` text NOT NULL,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `salecount` mediumint(4) NOT NULL DEFAULT '0',
  `logourl` varchar(150) NOT NULL DEFAULT '',
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `groupon` tinyint(1) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `fakemembercount` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `num` int(10) unsigned NOT NULL,
  `commission_type` varchar(10) NOT NULL DEFAULT '' COMMENT '佣金类型 固定金额fixed, 百分比 float',
  `commission` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '分销佣金',
  `allow_distribution` char(1) NOT NULL DEFAULT '0' COMMENT '允许分销 0, 1',
  `sn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sn_name` varchar(200) DEFAULT NULL,
  `sn_pass` varchar(200) DEFAULT NULL,
  `groupon_num` int(10) unsigned NOT NULL DEFAULT '200',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`storeid`),
  KEY `catid_2` (`catid`),
  KEY `storeid` (`storeid`),
  KEY `token` (`token`),
  KEY `price` (`price`),
  KEY `oprice` (`oprice`),
  KEY `discount` (`discount`),
  KEY `dining` (`dining`),
  KEY `groupon` (`groupon`,`endtime`),
  KEY `cid` (`cid`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product
-- ----------------------------

-- ----------------------------
-- Table structure for tp_product_attribute
-- ----------------------------
DROP TABLE IF EXISTS `tp_product_attribute`;
CREATE TABLE `tp_product_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for tp_product_cart
-- ----------------------------
DROP TABLE IF EXISTS `tp_product_cart`;
CREATE TABLE `tp_product_cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `transactionid` varchar(100) NOT NULL DEFAULT '',
  `paytype` varchar(30) NOT NULL DEFAULT '',
  `productid` int(10) NOT NULL DEFAULT '0',
  `code` varchar(50) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `diningtype` mediumint(2) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `total` mediumint(4) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `tel` varchar(14) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `ordertype` mediumint(2) NOT NULL DEFAULT '0',
  `tableid` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `buytime` varchar(100) NOT NULL DEFAULT '',
  `groupon` tinyint(1) NOT NULL DEFAULT '0',
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `year` mediumint(4) NOT NULL DEFAULT '0',
  `month` mediumint(4) NOT NULL DEFAULT '0',
  `day` mediumint(4) NOT NULL DEFAULT '0',
  `hour` smallint(4) NOT NULL DEFAULT '0',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `orderid` varchar(40) NOT NULL DEFAULT '',
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `logistics` varchar(70) NOT NULL DEFAULT '',
  `logisticsid` varchar(50) NOT NULL DEFAULT '',
  `printed` tinyint(1) NOT NULL DEFAULT '0',
  `handled` tinyint(1) NOT NULL DEFAULT '0',
  `handledtime` int(10) NOT NULL DEFAULT '0',
  `handleduid` int(10) NOT NULL DEFAULT '0',
  `score` int(10) unsigned NOT NULL,
  `paymode` tinyint(1) unsigned NOT NULL,
  `comment` varchar(300) NOT NULL DEFAULT '' COMMENT '买家留言',
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '买家id',
  `twid` varchar(20) NOT NULL COMMENT '来源推广人的推广ID',
  `totalprice` float NOT NULL COMMENT '购买商品的订单总价',
  `sn` tinyint(1) NOT NULL DEFAULT '0',
  `sn_content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`time`),
  KEY `groupon` (`groupon`),
  KEY `dining` (`dining`),
  KEY `printed` (`printed`),
  KEY `year` (`year`,`month`,`day`,`hour`),
  KEY `diningtype` (`diningtype`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product_cart
-- ----------------------------

-- ----------------------------
-- Table structure for tp_product_cart_list
-- ----------------------------
DROP TABLE IF EXISTS `tp_product_cart_list`;
CREATE TABLE `tp_product_cart_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `cartid` int(10) NOT NULL DEFAULT '0',
  `productid` int(10) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `total` mediumint(4) NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `shipping` float NOT NULL DEFAULT '0' COMMENT '运费',
  `sku_id` int(10) NOT NULL DEFAULT '0' COMMENT '库存id',
  `comment` varchar(300) NOT NULL DEFAULT '0' COMMENT '买家留言',
  PRIMARY KEY (`id`),
  KEY `cartid` (`cartid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product_cart_list
-- ----------------------------

-- ----------------------------
-- Table structure for tp_product_cat
-- ----------------------------
DROP TABLE IF EXISTS `tp_product_cat`;
CREATE TABLE `tp_product_cat` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `sort` int(10) NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL,
  `des` varchar(500) NOT NULL DEFAULT '',
  `parentid` mediumint(4) NOT NULL,
  `logourl` varchar(100) NOT NULL,
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  `norms` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `isfinal` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pc_cat_id` int(11) NOT NULL,
  `pc_web_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `token` (`token`),
  KEY `dining` (`dining`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product_cat
-- ----------------------------

-- ----------------------------
-- Table structure for tp_product_comment
-- ----------------------------
DROP TABLE IF EXISTS `tp_product_comment`;
CREATE TABLE `tp_product_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(50) NOT NULL,
  `cartid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `detailid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `truename` varchar(20) NOT NULL,
  `tel` varchar(14) NOT NULL,
  `content` varchar(500) NOT NULL,
  `productinfo` varchar(80) NOT NULL,
  `score` tinyint(1) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `isdelete` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `wecha_id` (`wecha_id`),
  KEY `token` (`token`),
  KEY `cartid` (`cartid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product_comment
-- ----------------------------

-- ----------------------------
-- Table structure for tp_product_detail
-- ----------------------------
DROP TABLE IF EXISTS `tp_product_detail`;
CREATE TABLE `tp_product_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `format` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `price` float NOT NULL,
  `vprice` float NOT NULL,
  `logo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tp_product_diningtable
-- ----------------------------
DROP TABLE IF EXISTS `tp_product_diningtable`;
CREATE TABLE `tp_product_diningtable` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(500) NOT NULL DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product_diningtable
-- ----------------------------

-- ----------------------------
-- Table structure for tp_product_group
-- ----------------------------
DROP TABLE IF EXISTS `tp_product_group`;
CREATE TABLE `tp_product_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product_group
-- ----------------------------

-- ----------------------------
-- Table structure for tp_product_image
-- ----------------------------
DROP TABLE IF EXISTS `tp_product_image`;
CREATE TABLE `tp_product_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product_image
-- ----------------------------

-- ----------------------------
-- Table structure for tp_product_mail_price
-- ----------------------------
DROP TABLE IF EXISTS `tp_product_mail_price`;
CREATE TABLE `tp_product_mail_price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product_mail_price
-- ----------------------------

-- ----------------------------
-- Table structure for tp_product_relation
-- ----------------------------
DROP TABLE IF EXISTS `tp_product_relation`;
CREATE TABLE `tp_product_relation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product_relation
-- ----------------------------

-- ----------------------------
-- Table structure for tp_product_setting
-- ----------------------------
DROP TABLE IF EXISTS `tp_product_setting`;
CREATE TABLE `tp_product_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(100) NOT NULL,
  `price` float NOT NULL DEFAULT '-1' COMMENT '满多少元免邮费',
  `score` float NOT NULL,
  `paymode` tinyint(1) unsigned NOT NULL,
  `tpid` int(10) unsigned NOT NULL,
  `footerid` int(10) unsigned NOT NULL,
  `headerbackgroud` text NOT NULL,
  `headerid` int(10) unsigned NOT NULL,
  `isgroup` tinyint(1) unsigned NOT NULL,
  `email` varchar(64) NOT NULL DEFAULT '',
  `email_status` char(1) NOT NULL DEFAULT '0',
  `shop_send_sms` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product_setting
-- ----------------------------

-- ----------------------------
-- Table structure for tp_product_sn
-- ----------------------------
DROP TABLE IF EXISTS `tp_product_sn`;
CREATE TABLE `tp_product_sn` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL COMMENT '微信唯一识别码',
  `token` varchar(30) NOT NULL,
  `sn` varchar(200) NOT NULL COMMENT '中奖后序列号',
  `pass` varchar(200) NOT NULL,
  `sendstutas` int(10) unsigned NOT NULL DEFAULT '0',
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_product_sn
-- ----------------------------

-- ----------------------------
-- Table structure for tp_punish
-- ----------------------------
DROP TABLE IF EXISTS `tp_punish`;
CREATE TABLE `tp_punish` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `title` char(40) NOT NULL,
  `keyword` char(20) NOT NULL,
  `pic` char(120) NOT NULL,
  `name` char(10) NOT NULL,
  `use_num` int(11) NOT NULL,
  `info` varchar(500) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_punish
-- ----------------------------

-- ----------------------------
-- Table structure for tp_punish_item
-- ----------------------------
DROP TABLE IF EXISTS `tp_punish_item`;
CREATE TABLE `tp_punish_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_punish_item
-- ----------------------------

-- ----------------------------
-- Table structure for tp_qcloud_sendout
-- ----------------------------
DROP TABLE IF EXISTS `tp_qcloud_sendout`;
CREATE TABLE `tp_qcloud_sendout` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `suborderid` varchar(1000) DEFAULT NULL,
  `orderid` varchar(1000) DEFAULT NULL,
  `packageid` varchar(1000) DEFAULT NULL,
  `payprice` varchar(100) DEFAULT NULL,
  `openid` varchar(1000) DEFAULT NULL,
  `paynum` varchar(100) DEFAULT NULL,
  `freedays` varchar(100) DEFAULT NULL,
  `servicedays` varchar(100) DEFAULT NULL,
  `payunit` char(100) DEFAULT NULL,
  `service` char(50) DEFAULT 'site',
  `serviceId` varchar(1000) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `providerId` char(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qcloud_sendout
-- ----------------------------

-- ----------------------------
-- Table structure for tp_qcloud_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_qcloud_user`;
CREATE TABLE `tp_qcloud_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` char(100) NOT NULL,
  `token` char(255) NOT NULL,
  `mpname` char(60) NOT NULL,
  `mporiginalid` char(60) NOT NULL,
  `mpid` char(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_qcloud_user
-- ----------------------------

-- ----------------------------
-- Table structure for tp_question_bank
-- ----------------------------
DROP TABLE IF EXISTS `tp_question_bank`;
CREATE TABLE `tp_question_bank` (
  `id` int(11) NOT NULL,
  `figure` varchar(2) DEFAULT NULL,
  `question_types` varchar(2) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `option_num` int(11) DEFAULT NULL,
  `optionA` varchar(100) DEFAULT NULL,
  `optionB` varchar(100) DEFAULT NULL,
  `optionC` varchar(100) DEFAULT NULL,
  `optionD` varchar(100) DEFAULT NULL,
  `optionE` varchar(100) DEFAULT NULL,
  `optionF` varchar(100) DEFAULT NULL,
  `answer` varchar(6) DEFAULT NULL,
  `classify` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_question_bank
-- ----------------------------

-- ----------------------------
-- Table structure for tp_recipe
-- ----------------------------
DROP TABLE IF EXISTS `tp_recipe`;
CREATE TABLE `tp_recipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `begintime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `monday` text NOT NULL,
  `tuesday` text NOT NULL,
  `wednesday` text NOT NULL,
  `thursday` text NOT NULL,
  `friday` text NOT NULL,
  `saturday` text NOT NULL,
  `sunday` text NOT NULL,
  `ishow` int(1) NOT NULL DEFAULT '1' COMMENT '1:显示,2隐藏,默认1',
  `sort` int(11) NOT NULL DEFAULT '1',
  `type` char(15) NOT NULL DEFAULT '',
  `headpic` varchar(200) NOT NULL,
  `infos` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_recipe
-- ----------------------------

-- ----------------------------
-- Table structure for tp_recognition
-- ----------------------------
DROP TABLE IF EXISTS `tp_recognition`;
CREATE TABLE `tp_recognition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `attention_num` int(5) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `code_url` varchar(200) NOT NULL,
  `scene_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `groupid` int(11) NOT NULL DEFAULT '0',
  `fuwu_code_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_recognition
-- ----------------------------

-- ----------------------------
-- Table structure for tp_recognition_data
-- ----------------------------
DROP TABLE IF EXISTS `tp_recognition_data`;
CREATE TABLE `tp_recognition_data` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `rid` int(11) NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL DEFAULT '0',
  `month` int(11) NOT NULL DEFAULT '0',
  `day` int(11) NOT NULL DEFAULT '0',
  `is_ali` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_recognition_data
-- ----------------------------

-- ----------------------------
-- Table structure for tp_red_packet
-- ----------------------------
DROP TABLE IF EXISTS `tp_red_packet`;
CREATE TABLE `tp_red_packet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `title` char(40) NOT NULL,
  `keyword` char(30) NOT NULL,
  `msg_pic` char(120) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `info` text NOT NULL,
  `start_time` char(11) NOT NULL,
  `end_time` char(11) NOT NULL,
  `ext_total` mediumint(8) unsigned NOT NULL,
  `get_number` smallint(5) unsigned NOT NULL,
  `value_count` mediumint(8) unsigned NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `item_num` mediumint(9) NOT NULL,
  `item_sum` mediumint(9) NOT NULL,
  `item_max` mediumint(9) NOT NULL,
  `item_unit` varchar(30) NOT NULL,
  `packet_type` enum('1','2') NOT NULL,
  `deci` smallint(6) NOT NULL,
  `people` mediumint(9) NOT NULL,
  `password` char(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_red_packet
-- ----------------------------

-- ----------------------------
-- Table structure for tp_red_packet_exchange
-- ----------------------------
DROP TABLE IF EXISTS `tp_red_packet_exchange`;
CREATE TABLE `tp_red_packet_exchange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `packet_id` int(11) NOT NULL,
  `price` char(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `type_name` char(45) NOT NULL,
  `time` char(11) NOT NULL,
  `log_id` text NOT NULL,
  `mobile` char(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_red_packet_exchange
-- ----------------------------

-- ----------------------------
-- Table structure for tp_red_packet_log
-- ----------------------------
DROP TABLE IF EXISTS `tp_red_packet_log`;
CREATE TABLE `tp_red_packet_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `add_time` char(11) NOT NULL,
  `token` char(25) NOT NULL,
  `packet_id` int(11) NOT NULL,
  `prize_id` int(11) NOT NULL,
  `prize_name` char(40) NOT NULL,
  `worth` decimal(10,2) NOT NULL,
  `is_reward` enum('0','1','2') NOT NULL,
  `type` enum('1','2') NOT NULL,
  `code` char(40) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_red_packet_log
-- ----------------------------

-- ----------------------------
-- Table structure for tp_red_packet_prize
-- ----------------------------
DROP TABLE IF EXISTS `tp_red_packet_prize`;
CREATE TABLE `tp_red_packet_prize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `type` enum('1','2') NOT NULL,
  `name` char(40) NOT NULL,
  `worth` int(11) NOT NULL,
  `num` mediumint(9) NOT NULL,
  `odds` decimal(10,0) NOT NULL,
  `sue` mediumint(9) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `packet_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_red_packet_prize
-- ----------------------------

-- ----------------------------
-- Table structure for tp_red_packet_reward
-- ----------------------------
DROP TABLE IF EXISTS `tp_red_packet_reward`;
CREATE TABLE `tp_red_packet_reward` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `mobile` char(11) NOT NULL,
  `wxname` char(40) NOT NULL,
  `packet_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `add_time` char(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_red_packet_reward
-- ----------------------------

-- ----------------------------
-- Table structure for tp_renew
-- ----------------------------
DROP TABLE IF EXISTS `tp_renew`;
CREATE TABLE `tp_renew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` char(255) NOT NULL,
  `img_x` char(200) NOT NULL,
  `img_w` char(200) NOT NULL,
  `time` varchar(13) NOT NULL,
  `status` int(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `imgs` char(250) NOT NULL,
  `color` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_renew
-- ----------------------------

-- ----------------------------
-- Table structure for tp_reply
-- ----------------------------
DROP TABLE IF EXISTS `tp_reply`;
CREATE TABLE `tp_reply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `differ` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `message_id` int(11) NOT NULL,
  `reply` varchar(1000) NOT NULL,
  `time` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `message_id` (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1;

-- ----------------------------
-- Records of tp_reply
-- ----------------------------

-- ----------------------------
-- Table structure for tp_reply_info
-- ----------------------------
DROP TABLE IF EXISTS `tp_reply_info`;
CREATE TABLE `tp_reply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `infotype` varchar(20) NOT NULL DEFAULT '',
  `diningyuding` tinyint(1) NOT NULL DEFAULT '1',
  `diningwaimai` tinyint(1) NOT NULL DEFAULT '1',
  `config` text NOT NULL,
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `apiurl` varchar(50) NOT NULL DEFAULT '',
  `readpass` char(40) DEFAULT NULL,
  `banner` varchar(500) NOT NULL DEFAULT '',
  `money_chg_send_sms` int(1) NOT NULL,
  `integral_chg_send_sms` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_reply_info
-- ----------------------------

-- ----------------------------
-- Table structure for tp_requestdata
-- ----------------------------
DROP TABLE IF EXISTS `tp_requestdata`;
CREATE TABLE `tp_requestdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `day` int(2) NOT NULL,
  `time` int(11) NOT NULL,
  `textnum` int(5) NOT NULL,
  `imgnum` int(5) NOT NULL,
  `videonum` int(5) NOT NULL,
  `other` int(5) NOT NULL,
  `follownum` int(5) NOT NULL,
  `unfollownum` int(5) NOT NULL,
  `3g` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_requestdata
-- ----------------------------

-- ----------------------------
-- Table structure for tp_research
-- ----------------------------
DROP TABLE IF EXISTS `tp_research`;
CREATE TABLE `tp_research` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lid` int(10) unsigned NOT NULL,
  `nums` int(10) unsigned NOT NULL,
  `token` varchar(80) NOT NULL,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `logourl` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_research
-- ----------------------------

-- ----------------------------
-- Table structure for tp_research_answer
-- ----------------------------
DROP TABLE IF EXISTS `tp_research_answer`;
CREATE TABLE `tp_research_answer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `nums` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_research_answer
-- ----------------------------

-- ----------------------------
-- Table structure for tp_research_question
-- ----------------------------
DROP TABLE IF EXISTS `tp_research_question`;
CREATE TABLE `tp_research_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_research_question
-- ----------------------------

-- ----------------------------
-- Table structure for tp_research_result
-- ----------------------------
DROP TABLE IF EXISTS `tp_research_result`;
CREATE TABLE `tp_research_result` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(80) NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `aids` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`),
  KEY `wecha_id` (`wecha_id`,`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_research_result
-- ----------------------------

-- ----------------------------
-- Table structure for tp_reservation
-- ----------------------------
DROP TABLE IF EXISTS `tp_reservation`;
CREATE TABLE `tp_reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `addtype` varchar(20) NOT NULL DEFAULT 'house_book',
  `address` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `lng` varchar(13) NOT NULL,
  `lat` varchar(13) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `headpic` varchar(200) NOT NULL,
  `info` text,
  `typename` varchar(50) NOT NULL,
  `typename2` varchar(50) NOT NULL,
  `typename3` varchar(50) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `date` varchar(50) NOT NULL,
  `allnums` varchar(50) NOT NULL,
  `name_show` tinyint(4) NOT NULL DEFAULT '1',
  `time_show` tinyint(4) NOT NULL DEFAULT '1',
  `txt1` varchar(50) NOT NULL,
  `value1` varchar(50) NOT NULL,
  `txt2` varchar(50) NOT NULL,
  `value2` varchar(50) NOT NULL,
  `txt3` varchar(50) NOT NULL,
  `value3` varchar(50) NOT NULL,
  `txt4` varchar(50) NOT NULL,
  `value4` varchar(50) NOT NULL,
  `txt5` varchar(50) NOT NULL,
  `value5` varchar(50) NOT NULL,
  `select1` varchar(50) NOT NULL,
  `svalue1` varchar(100) NOT NULL,
  `select2` varchar(50) NOT NULL,
  `svalue2` varchar(100) NOT NULL,
  `select3` varchar(50) NOT NULL,
  `svalue3` varchar(100) NOT NULL,
  `select4` varchar(50) NOT NULL,
  `svalue4` varchar(100) NOT NULL,
  `select5` varchar(50) NOT NULL,
  `svalue5` varchar(100) NOT NULL,
  `datename` varchar(100) NOT NULL,
  `take` int(11) NOT NULL DEFAULT '1',
  `email` varchar(30) NOT NULL,
  `open_email` tinyint(4) NOT NULL DEFAULT '0',
  `sms` varchar(13) NOT NULL,
  `open_sms` tinyint(4) NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_reservation
-- ----------------------------

-- ----------------------------
-- Table structure for tp_reservebook
-- ----------------------------
DROP TABLE IF EXISTS `tp_reservebook`;
CREATE TABLE `tp_reservebook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `truename` varchar(50) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `housetype` varchar(50) NOT NULL,
  `dateline` varchar(50) NOT NULL,
  `timepart` varchar(50) NOT NULL,
  `info` varchar(100) NOT NULL,
  `type` char(15) NOT NULL,
  `carnum` varchar(50) DEFAULT '',
  `orderName` varchar(50) DEFAULT '',
  `booktime` int(11) NOT NULL,
  `remate` tinyint(3) NOT NULL DEFAULT '0' COMMENT '客服标志',
  `kfinfo` varchar(100) NOT NULL,
  `sex` int(11) DEFAULT '0',
  `age` int(11) NOT NULL DEFAULT '0',
  `address` varchar(50) NOT NULL DEFAULT '',
  `choose` varchar(50) NOT NULL DEFAULT '',
  `number` int(11) NOT NULL DEFAULT '0',
  `paid` int(1) DEFAULT '0',
  `orderid` char(32) NOT NULL DEFAULT '',
  `payprice` decimal(10,2) DEFAULT NULL,
  `shiporder` char(32) NOT NULL DEFAULT '',
  `productName` varchar(50) NOT NULL DEFAULT '',
  `km` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `wecha_id` (`wecha_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_reservebook
-- ----------------------------

-- ----------------------------
-- Table structure for tp_rippleos_node
-- ----------------------------
DROP TABLE IF EXISTS `tp_rippleos_node`;
CREATE TABLE `tp_rippleos_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) DEFAULT NULL,
  `node` int(20) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `code_keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_rippleos_node
-- ----------------------------

-- ----------------------------
-- Table structure for tp_role
-- ----------------------------
DROP TABLE IF EXISTS `tp_role`;
CREATE TABLE `tp_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '后台组名',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '是否激活 1：是 0：否',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_role
-- ----------------------------
INSERT INTO `tp_role` VALUES ('1', '超级管理员', '0', '1', '0', '');
INSERT INTO `tp_role` VALUES ('2', '演示组', '0', '1', '0', '');
INSERT INTO `tp_role` VALUES ('3', '普通会员', '0', '1', '0', '');

-- ----------------------------
-- Table structure for tp_role_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_role_user`;
CREATE TABLE `tp_role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` smallint(6) unsigned NOT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for tp_router
-- ----------------------------
DROP TABLE IF EXISTS `tp_router`;
CREATE TABLE `tp_router` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `bywechat` tinyint(1) NOT NULL DEFAULT '1',
  `wechat` varchar(50) NOT NULL DEFAULT '',
  `qrcode` varchar(200) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `token` varchar(40) NOT NULL DEFAULT '',
  `gw_id` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_router
-- ----------------------------

-- ----------------------------
-- Table structure for tp_router_config
-- ----------------------------
DROP TABLE IF EXISTS `tp_router_config`;
CREATE TABLE `tp_router_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL DEFAULT '',
  `password` varchar(60) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `info` varchar(300) NOT NULL DEFAULT '',
  `contact_qq` varchar(12) NOT NULL DEFAULT '',
  `welcome_img` varchar(200) NOT NULL DEFAULT '',
  `other_img` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_router_config
-- ----------------------------

-- ----------------------------
-- Table structure for tp_scene
-- ----------------------------
DROP TABLE IF EXISTS `tp_scene`;
CREATE TABLE `tp_scene` (
  `sceneid_bigint` bigint(20) NOT NULL AUTO_INCREMENT,
  `scenecode_varchar` varchar(50) NOT NULL,
  `scenename_varchar` varchar(50) DEFAULT NULL,
  `scenetype_int` int(11) NOT NULL DEFAULT '0',
  `userid_int` int(50) NOT NULL,
  `hitcount_int` int(11) NOT NULL DEFAULT '0',
  `createtime_time` datetime DEFAULT NULL,
  `musicurl_varchar` varchar(500) DEFAULT NULL,
  `videocode_varchar` varchar(2000) DEFAULT NULL,
  `showstatus_int` int(11) NOT NULL DEFAULT '1' COMMENT '显示状态1显示,2关闭',
  `thumbnail_varchar` varchar(200) DEFAULT NULL COMMENT '缩略图',
  `movietype_int` int(11) DEFAULT '0' COMMENT '翻页方式',
  `desc_varchar` varchar(500) DEFAULT NULL COMMENT '场景描述',
  `ip_varchar` varchar(50) DEFAULT NULL,
  `delete_int` int(11) NOT NULL DEFAULT '0' COMMENT '0未删,1已经删除 ',
  `tagid_int` int(11) NOT NULL DEFAULT '0',
  `sourceId_int` int(11) NOT NULL DEFAULT '0',
  `biztype_int` int(11) NOT NULL DEFAULT '1',
  `eqid_int` int(11) DEFAULT NULL,
  `eqcode` varchar(50) DEFAULT NULL,
  `datacount_int` int(11) NOT NULL DEFAULT '0',
  `musictype_int` int(11) NOT NULL DEFAULT '3',
  `usecount_int` int(11) NOT NULL DEFAULT '0',
  `fromsceneid_bigint` bigint(20) NOT NULL DEFAULT '0',
  `publishTime` int(10) unsigned NOT NULL DEFAULT '0',
  `updateTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sceneid_bigint`),
  UNIQUE KEY `scenecode` (`scenecode_varchar`) USING BTREE,
  KEY `userid` (`userid_int`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_scene
-- ----------------------------

-- ----------------------------
-- Table structure for tp_scenedata
-- ----------------------------
DROP TABLE IF EXISTS `tp_scenedata`;
CREATE TABLE `tp_scenedata` (
  `dataid_bigint` bigint(20) NOT NULL AUTO_INCREMENT,
  `sceneid_bigint` bigint(20) NOT NULL DEFAULT '0',
  `pageid_bigint` bigint(20) NOT NULL DEFAULT '0',
  `elementid_int` int(11) DEFAULT '0',
  `elementtitle_varchar` varchar(50) DEFAULT NULL,
  `elementtype_int` int(11) NOT NULL DEFAULT '5',
  `userid_int` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dataid_bigint`),
  KEY `sceneid` (`sceneid_bigint`,`userid_int`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_scenedata
-- ----------------------------

-- ----------------------------
-- Table structure for tp_scenedatadetail
-- ----------------------------
DROP TABLE IF EXISTS `tp_scenedatadetail`;
CREATE TABLE `tp_scenedatadetail` (
  `detailid_bigint` bigint(20) NOT NULL AUTO_INCREMENT,
  `sceneid_bigint` bigint(20) NOT NULL DEFAULT '0',
  `pageid_bigint` bigint(20) NOT NULL DEFAULT '0',
  `createtime_time` datetime DEFAULT NULL,
  `ip_varchar` varchar(50) DEFAULT NULL,
  `content_varchar` text,
  `is_import` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`detailid_bigint`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_scenedatadetail
-- ----------------------------

-- ----------------------------
-- Table structure for tp_scenedatasys
-- ----------------------------
DROP TABLE IF EXISTS `tp_scenedatasys`;
CREATE TABLE `tp_scenedatasys` (
  `dataid_bigint` bigint(20) NOT NULL AUTO_INCREMENT,
  `sceneid_bigint` bigint(20) NOT NULL DEFAULT '0',
  `pageid_bigint` bigint(20) NOT NULL DEFAULT '0',
  `elementid_int` int(11) DEFAULT '0',
  `elementtitle_varchar` varchar(50) DEFAULT NULL,
  `elementtype_int` int(11) NOT NULL DEFAULT '5',
  `userid_int` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dataid_bigint`),
  KEY `sceneid` (`sceneid_bigint`,`userid_int`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_scenedatasys
-- ----------------------------

-- ----------------------------
-- Table structure for tp_scenepage
-- ----------------------------
DROP TABLE IF EXISTS `tp_scenepage`;
CREATE TABLE `tp_scenepage` (
  `pageid_bigint` bigint(20) NOT NULL AUTO_INCREMENT,
  `sceneid_bigint` bigint(20) NOT NULL,
  `scenecode_varchar` varchar(50) NOT NULL,
  `pagecurrentnum_int` int(11) NOT NULL DEFAULT '1' COMMENT '当前页数',
  `createtime_time` datetime DEFAULT NULL,
  `content_text` longtext,
  `pagename_varchar` varchar(50) DEFAULT NULL,
  `userid_int` int(11) NOT NULL,
  `properties_text` text NOT NULL,
  `myTypl_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pageid_bigint`),
  KEY `sceneid` (`scenecode_varchar`) USING BTREE,
  KEY `scenid` (`sceneid_bigint`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_scenepage
-- ----------------------------

-- ----------------------------
-- Table structure for tp_scenepagesys
-- ----------------------------
DROP TABLE IF EXISTS `tp_scenepagesys`;
CREATE TABLE `tp_scenepagesys` (
  `pageid_bigint` bigint(20) NOT NULL AUTO_INCREMENT,
  `sceneid_bigint` bigint(20) NOT NULL,
  `scenecode_varchar` varchar(50) NOT NULL,
  `pagecurrentnum_int` int(11) NOT NULL DEFAULT '1' COMMENT '当前页数',
  `createtime_time` datetime DEFAULT NULL,
  `content_text` longtext,
  `pagename_varchar` varchar(50) DEFAULT NULL,
  `userid_int` int(11) NOT NULL,
  `biztype_int` int(11) DEFAULT NULL,
  `tagid_int` int(11) DEFAULT NULL,
  `thumbsrc_varchar` varchar(200) DEFAULT NULL,
  `eqsrc_varchar` varchar(200) DEFAULT NULL,
  `eqid_int` int(11) DEFAULT NULL,
  `usecount_int` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pageid_bigint`),
  KEY `sceneid` (`scenecode_varchar`) USING BTREE,
  KEY `scenid` (`sceneid_bigint`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_scenepagesys
-- ----------------------------

-- ----------------------------
-- Table structure for tp_school_cat
-- ----------------------------
DROP TABLE IF EXISTS `tp_school_cat`;
CREATE TABLE `tp_school_cat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `name` char(50) NOT NULL,
  `icon` char(150) NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL,
  `is_show` enum('1','0') NOT NULL,
  `url` varchar(300) NOT NULL,
  `system` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_school_cat
-- ----------------------------

-- ----------------------------
-- Table structure for tp_school_classify
-- ----------------------------
DROP TABLE IF EXISTS `tp_school_classify`;
CREATE TABLE `tp_school_classify` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(50) NOT NULL,
  `ssort` int(5) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` char(20) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `type` (`type`),
  FULLTEXT KEY `type_2` (`type`),
  FULLTEXT KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_school_classify
-- ----------------------------

-- ----------------------------
-- Table structure for tp_school_score
-- ----------------------------
DROP TABLE IF EXISTS `tp_school_score`;
CREATE TABLE `tp_school_score` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `xq_id` int(11) NOT NULL,
  `qh_id` int(11) NOT NULL,
  `km_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `my_score` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_school_score
-- ----------------------------

-- ----------------------------
-- Table structure for tp_school_set_index
-- ----------------------------
DROP TABLE IF EXISTS `tp_school_set_index`;
CREATE TABLE `tp_school_set_index` (
  `setid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `head_url` varchar(200) NOT NULL,
  `info` varchar(100) NOT NULL,
  `album_id` int(11) NOT NULL,
  `musicurl` varchar(200) NOT NULL DEFAULT '',
  `menu1` varchar(50) NOT NULL,
  `menu1_id` int(11) NOT NULL,
  `menu2` char(15) NOT NULL,
  `menu3` char(15) NOT NULL,
  `menu4` char(15) NOT NULL,
  `menu5` char(15) NOT NULL,
  `menu6` char(15) NOT NULL,
  `menu7` char(15) NOT NULL,
  `menu8` char(15) NOT NULL,
  `menu9` varchar(50) NOT NULL DEFAULT '',
  `menu10` varchar(50) NOT NULL DEFAULT '',
  `menu2_id` int(11) NOT NULL,
  `menu3_id` int(11) NOT NULL,
  `menu4_id` int(11) NOT NULL,
  `menu5_id` int(11) NOT NULL,
  `menu6_id` int(11) NOT NULL,
  `path` varchar(3000) NOT NULL DEFAULT '0',
  `tpid` int(11) DEFAULT NULL,
  `conttpid` int(11) DEFAULT NULL,
  `picurl1` varchar(200) NOT NULL DEFAULT '',
  `picurl2` varchar(200) NOT NULL DEFAULT '',
  `picurl3` varchar(200) NOT NULL DEFAULT '',
  `picurl4` varchar(200) NOT NULL DEFAULT '',
  `picurl5` varchar(200) NOT NULL DEFAULT '',
  `picurl6` varchar(200) NOT NULL DEFAULT '',
  `picurl7` varchar(200) NOT NULL DEFAULT '',
  `picurl8` varchar(200) NOT NULL DEFAULT '',
  `picurl9` varchar(200) NOT NULL DEFAULT '',
  `picurl10` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`setid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_school_set_index
-- ----------------------------

-- ----------------------------
-- Table structure for tp_school_students
-- ----------------------------
DROP TABLE IF EXISTS `tp_school_students`;
CREATE TABLE `tp_school_students` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `xq_id` int(11) NOT NULL,
  `area_addr` varchar(60) NOT NULL DEFAULT '',
  `bj_id` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `sex` int(1) NOT NULL,
  `createdate` int(11) NOT NULL,
  `seffectivetime` date DEFAULT NULL,
  `stheendtime` date DEFAULT NULL,
  `jf_statu` int(11) DEFAULT NULL,
  `mobile` char(11) NOT NULL,
  `homephone` char(16) NOT NULL,
  `s_name` char(50) NOT NULL,
  `localdate_id` char(20) NOT NULL DEFAULT '',
  `note` varchar(50) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_school_students
-- ----------------------------

-- ----------------------------
-- Table structure for tp_school_tcourse
-- ----------------------------
DROP TABLE IF EXISTS `tp_school_tcourse`;
CREATE TABLE `tp_school_tcourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `tid` int(11) NOT NULL,
  `km_id` int(11) NOT NULL,
  `bj_id` int(11) NOT NULL,
  `xq_id` int(11) NOT NULL,
  `sd_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_school_tcourse
-- ----------------------------

-- ----------------------------
-- Table structure for tp_school_teachers
-- ----------------------------
DROP TABLE IF EXISTS `tp_school_teachers`;
CREATE TABLE `tp_school_teachers` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` char(50) NOT NULL,
  `birthdate` date NOT NULL,
  `createtime` int(11) NOT NULL,
  `homephone` char(12) NOT NULL,
  `mobile` char(11) NOT NULL,
  `email` char(50) NOT NULL,
  `sex` int(1) NOT NULL,
  `token` varchar(50) NOT NULL,
  `jiontime` date DEFAULT NULL,
  `info` text NOT NULL,
  `faceimg` varchar(200) NOT NULL DEFAULT '',
  `headinfo` varchar(600) NOT NULL DEFAULT '',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_school_teachers
-- ----------------------------

-- ----------------------------
-- Table structure for tp_score_gift
-- ----------------------------
DROP TABLE IF EXISTS `tp_score_gift`;
CREATE TABLE `tp_score_gift` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL COMMENT '奖品名称',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '所需积分',
  `num` int(11) NOT NULL COMMENT '剩余数量',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_score_gift
-- ----------------------------

-- ----------------------------
-- Table structure for tp_score_logs
-- ----------------------------
DROP TABLE IF EXISTS `tp_score_logs`;
CREATE TABLE `tp_score_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `acid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `scoretype` int(3) NOT NULL COMMENT '积分类型1.消耗2.增加',
  `typename` varchar(200) NOT NULL COMMENT '操作类型名称',
  `info` text NOT NULL COMMENT '详情记录',
  `time` varchar(200) NOT NULL COMMENT '记录时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_score_logs
-- ----------------------------

-- ----------------------------
-- Table structure for tp_secakeadminuser
-- ----------------------------
DROP TABLE IF EXISTS `tp_secakeadminuser`;
CREATE TABLE `tp_secakeadminuser` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_secakeadminuser
-- ----------------------------

-- ----------------------------
-- Table structure for tp_secakecouexp
-- ----------------------------
DROP TABLE IF EXISTS `tp_secakecouexp`;
CREATE TABLE `tp_secakecouexp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `zhan_gui` varchar(255) DEFAULT NULL,
  `zhan_gui_num` varchar(255) DEFAULT NULL,
  `img_1` varchar(255) DEFAULT NULL,
  `img_2` varchar(255) DEFAULT NULL,
  `img_3` varchar(255) DEFAULT NULL,
  `content` text,
  `add_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_secakecouexp
-- ----------------------------

-- ----------------------------
-- Table structure for tp_secakecoupon
-- ----------------------------
DROP TABLE IF EXISTS `tp_secakecoupon`;
CREATE TABLE `tp_secakecoupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL DEFAULT '0',
  `coupon_name` varchar(100) NOT NULL DEFAULT '',
  `coupon_value` varchar(100) NOT NULL DEFAULT '0.00',
  `start_time` int(15) unsigned NOT NULL DEFAULT '0',
  `if_issue` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pro_id` int(10) DEFAULT NULL,
  `x_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`coupon_id`),
  KEY `store_id` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_secakecoupon
-- ----------------------------

-- ----------------------------
-- Table structure for tp_secakehd
-- ----------------------------
DROP TABLE IF EXISTS `tp_secakehd`;
CREATE TABLE `tp_secakehd` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '0',
  `tel` varchar(50) NOT NULL,
  `jp_name` varchar(100) NOT NULL DEFAULT '',
  `start_time` int(15) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_secakehd
-- ----------------------------

-- ----------------------------
-- Table structure for tp_secakepro
-- ----------------------------
DROP TABLE IF EXISTS `tp_secakepro`;
CREATE TABLE `tp_secakepro` (
  `p_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(100) NOT NULL DEFAULT '',
  `pro_num` varchar(100) NOT NULL DEFAULT '',
  `pro_zhanguan` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`p_id`),
  KEY `pro_name` (`pro_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_secakepro
-- ----------------------------

-- ----------------------------
-- Table structure for tp_secakepur
-- ----------------------------
DROP TABLE IF EXISTS `tp_secakepur`;
CREATE TABLE `tp_secakepur` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `danwei` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content` text,
  `add_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_secakepur
-- ----------------------------

-- ----------------------------
-- Table structure for tp_secakexunbao
-- ----------------------------
DROP TABLE IF EXISTS `tp_secakexunbao`;
CREATE TABLE `tp_secakexunbao` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL DEFAULT '0',
  `state` int(5) NOT NULL DEFAULT '0',
  `x_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_secakexunbao
-- ----------------------------

-- ----------------------------
-- Table structure for tp_seckill_action
-- ----------------------------
DROP TABLE IF EXISTS `tp_seckill_action`;
CREATE TABLE `tp_seckill_action` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `action_name` varchar(20) NOT NULL COMMENT '活动名称',
  `action_header_img` text NOT NULL COMMENT '活动头部图片',
  `action_key` varchar(50) NOT NULL COMMENT '活动key',
  `action_sdate` int(11) NOT NULL COMMENT '活动开始时间',
  `action_edate` int(11) NOT NULL COMMENT '活动结束时间',
  `rand_min_time` int(11) NOT NULL COMMENT '最小分享时间',
  `rand_max_time` int(11) NOT NULL COMMENT '最大分享时间',
  `reply_pic` text COMMENT '活动图片',
  `action_token` varchar(50) DEFAULT '' COMMENT '活动发起人',
  `action_rule` text COMMENT '活动规则',
  `action_open` tinyint(4) NOT NULL DEFAULT '0',
  `reply_title` varchar(20) DEFAULT '' COMMENT '回复标题',
  `reply_content` varchar(200) DEFAULT '' COMMENT '回复简介',
  `reply_keyword` varchar(50) DEFAULT '' COMMENT '关键词',
  `action_is_reg` tinyint(4) NOT NULL DEFAULT '1',
  `action_is_attention` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`action_id`),
  KEY `action_name` (`action_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_seckill_action
-- ----------------------------

-- ----------------------------
-- Table structure for tp_seckill_base_shop
-- ----------------------------
DROP TABLE IF EXISTS `tp_seckill_base_shop`;
CREATE TABLE `tp_seckill_base_shop` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `action_id` int(11) NOT NULL COMMENT '活动id',
  `shop_name` varchar(20) NOT NULL COMMENT '商品名称',
  `shop_num` int(11) unsigned NOT NULL,
  `shop_price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `shop_tran` decimal(10,2) NOT NULL COMMENT '运费',
  `shop_open` tinyint(4) DEFAULT '0' COMMENT '商品状态',
  `shop_detail` text COMMENT '商品描述文本',
  `shop_img` text NOT NULL,
  PRIMARY KEY (`shop_id`),
  KEY `shop_name` (`shop_name`) USING BTREE,
  KEY `action_id` (`action_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_seckill_base_shop
-- ----------------------------

-- ----------------------------
-- Table structure for tp_seckill_book
-- ----------------------------
DROP TABLE IF EXISTS `tp_seckill_book`;
CREATE TABLE `tp_seckill_book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(32) NOT NULL COMMENT '订单号',
  `price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `wecha_id` varchar(100) NOT NULL COMMENT '公众号的标识',
  `token` varchar(50) NOT NULL COMMENT '公众号的标识',
  `paytype` varchar(50) NOT NULL DEFAULT '' COMMENT '来自于何种支付(英文格式)',
  `paid` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否支付，1代表已支付',
  `third_id` varchar(100) NOT NULL DEFAULT '' COMMENT '第三方支付平台的订单ID，用于对帐',
  `book_aid` int(11) NOT NULL COMMENT '活动id',
  `book_sid` int(11) NOT NULL COMMENT '商品id',
  `book_time` int(11) NOT NULL COMMENT '订单时间',
  `book_uid` int(11) NOT NULL COMMENT '订单用户',
  `deli_addr` varchar(100) DEFAULT '' COMMENT '收货地址',
  `true_name` varchar(30) DEFAULT '' COMMENT '收件人姓名',
  `tel` varchar(20) DEFAULT '' COMMENT '固话',
  `cel` varchar(20) DEFAULT '' COMMENT '手机',
  PRIMARY KEY (`book_id`),
  KEY `orderid` (`orderid`) USING BTREE,
  KEY `book_aid` (`book_aid`) USING BTREE,
  KEY `book_sid` (`book_sid`) USING BTREE,
  KEY `paid` (`paid`) USING BTREE,
  KEY `token` (`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_seckill_book
-- ----------------------------

-- ----------------------------
-- Table structure for tp_seckill_share
-- ----------------------------
DROP TABLE IF EXISTS `tp_seckill_share`;
CREATE TABLE `tp_seckill_share` (
  `share_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_aid` int(11) NOT NULL COMMENT '活动id',
  `user_share` varchar(50) NOT NULL COMMENT '分享key',
  `share_nickname` varchar(50) DEFAULT '' COMMENT '昵称',
  `share_time` int(11) DEFAULT '0' COMMENT '减少时间',
  `share_pic` varchar(255) DEFAULT '' COMMENT '用户图像',
  `is_opened` tinyint(4) DEFAULT '0' COMMENT '0 表示用户未接受 1 表示已接受',
  `open_time` int(11) DEFAULT '0' COMMENT '分享时间',
  `share_wechaid` varchar(50) DEFAULT '' COMMENT '分享链接wecha_id',
  PRIMARY KEY (`share_id`),
  KEY `user_share` (`user_share`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_seckill_share
-- ----------------------------

-- ----------------------------
-- Table structure for tp_seckill_shop_thum
-- ----------------------------
DROP TABLE IF EXISTS `tp_seckill_shop_thum`;
CREATE TABLE `tp_seckill_shop_thum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` varchar(20) NOT NULL COMMENT '商品id',
  `shop_thum` varchar(500) NOT NULL COMMENT '缩略图',
  `shop_big` varchar(500) NOT NULL COMMENT '大图',
  PRIMARY KEY (`id`),
  KEY `shop_id` (`shop_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_seckill_shop_thum
-- ----------------------------

-- ----------------------------
-- Table structure for tp_seckill_users
-- ----------------------------
DROP TABLE IF EXISTS `tp_seckill_users`;
CREATE TABLE `tp_seckill_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_aid` int(11) NOT NULL COMMENT '活动id',
  `user_nickname` varchar(20) DEFAULT '' COMMENT '普通用户昵称',
  `user_headimgurl` varchar(500) DEFAULT '' COMMENT '用户用户头像',
  `user_shareid` varchar(100) DEFAULT '' COMMENT '用户分享key',
  `user_wechaid` varchar(100) DEFAULT '' COMMENT '用户wcha_id',
  `user_sex` tinyint(4) DEFAULT '0' COMMENT '用户性别',
  `user_tel` varchar(20) DEFAULT '' COMMENT '用户电话',
  `user_qq` varchar(20) DEFAULT '' COMMENT '用户QQ',
  `user_address` varchar(50) DEFAULT '' COMMENT '用户address',
  `user_province` varchar(50) DEFAULT '' COMMENT '用户province',
  `user_city` varchar(50) DEFAULT '' COMMENT '用户city',
  `user_mintime` int(11) DEFAULT '0' COMMENT '用户分享奖励时间',
  `token` varchar(50) DEFAULT NULL COMMENT 'token',
  PRIMARY KEY (`user_id`),
  KEY `user_shareid` (`user_shareid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_seckill_users
-- ----------------------------

-- ----------------------------
-- Table structure for tp_selfform
-- ----------------------------
DROP TABLE IF EXISTS `tp_selfform`;
CREATE TABLE `tp_selfform` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(400) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `successtip` varchar(60) NOT NULL DEFAULT '',
  `failtip` varchar(60) NOT NULL DEFAULT '',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `logourl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `endtime` (`endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_selfform
-- ----------------------------

-- ----------------------------
-- Table structure for tp_selfform_input
-- ----------------------------
DROP TABLE IF EXISTS `tp_selfform_input`;
CREATE TABLE `tp_selfform_input` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formid` int(10) NOT NULL DEFAULT '0',
  `displayname` varchar(30) NOT NULL DEFAULT '',
  `fieldname` varchar(30) NOT NULL DEFAULT '',
  `inputtype` varchar(20) NOT NULL DEFAULT '',
  `options` varchar(200) NOT NULL DEFAULT '',
  `require` tinyint(1) NOT NULL DEFAULT '0',
  `regex` varchar(100) NOT NULL DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `errortip` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `formid` (`formid`,`taxis`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_selfform_input
-- ----------------------------

-- ----------------------------
-- Table structure for tp_selfform_value
-- ----------------------------
DROP TABLE IF EXISTS `tp_selfform_value`;
CREATE TABLE `tp_selfform_value` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formid` int(10) NOT NULL DEFAULT '0',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `values` varchar(2000) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `formid` (`formid`,`wecha_id`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_selfform_value
-- ----------------------------

-- ----------------------------
-- Table structure for tp_send_message
-- ----------------------------
DROP TABLE IF EXISTS `tp_send_message`;
CREATE TABLE `tp_send_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `msg_id` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `msgtype` varchar(30) NOT NULL DEFAULT '',
  `text` varchar(800) NOT NULL DEFAULT '',
  `imgids` varchar(200) NOT NULL DEFAULT '',
  `mediasrc` varchar(200) NOT NULL DEFAULT '',
  `mediaid` varchar(100) NOT NULL DEFAULT '',
  `reachcount` int(10) NOT NULL DEFAULT '0',
  `groupid` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `openid` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `send_type` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`time`),
  KEY `msg_id` (`msg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_send_message
-- ----------------------------

-- ----------------------------
-- Table structure for tp_senior_scene
-- ----------------------------
DROP TABLE IF EXISTS `tp_senior_scene`;
CREATE TABLE `tp_senior_scene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `keyword` char(40) NOT NULL,
  `intro` varchar(500) NOT NULL,
  `pic` varchar(120) NOT NULL,
  `url` varchar(200) NOT NULL,
  `token` char(25) NOT NULL,
  `add_time` char(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_senior_scene
-- ----------------------------

-- ----------------------------
-- Table structure for tp_service_logs
-- ----------------------------
DROP TABLE IF EXISTS `tp_service_logs`;
CREATE TABLE `tp_service_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `enddate` int(11) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_service_logs
-- ----------------------------

-- ----------------------------
-- Table structure for tp_service_my
-- ----------------------------
DROP TABLE IF EXISTS `tp_service_my`;
CREATE TABLE `tp_service_my` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `type` varchar(2) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_service_my
-- ----------------------------

-- ----------------------------
-- Table structure for tp_service_preferential
-- ----------------------------
DROP TABLE IF EXISTS `tp_service_preferential`;
CREATE TABLE `tp_service_preferential` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `info` text,
  `img` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_service_preferential
-- ----------------------------

-- ----------------------------
-- Table structure for tp_service_setup
-- ----------------------------
DROP TABLE IF EXISTS `tp_service_setup`;
CREATE TABLE `tp_service_setup` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `openid` varchar(200) NOT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `headimgurl` varchar(200) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `desc` text,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_service_setup
-- ----------------------------

-- ----------------------------
-- Table structure for tp_service_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_service_user`;
CREATE TABLE `tp_service_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `token` varchar(60) NOT NULL,
  `userName` varchar(60) NOT NULL,
  `userPwd` varchar(32) NOT NULL,
  `endJoinDate` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_service_user
-- ----------------------------

-- ----------------------------
-- Table structure for tp_service_wxuser
-- ----------------------------
DROP TABLE IF EXISTS `tp_service_wxuser`;
CREATE TABLE `tp_service_wxuser` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `app_id` varchar(255) DEFAULT NULL,
  `app_key` varchar(255) DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `wxappid` varchar(200) DEFAULT NULL,
  `wxappsecret` varchar(500) DEFAULT NULL,
  `domain` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_service_wxuser
-- ----------------------------

-- ----------------------------
-- Table structure for tp_shake
-- ----------------------------
DROP TABLE IF EXISTS `tp_shake`;
CREATE TABLE `tp_shake` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `isact` int(1) NOT NULL DEFAULT '0',
  `title` varchar(40) NOT NULL,
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(400) NOT NULL DEFAULT '',
  `thumb` varchar(200) NOT NULL DEFAULT '',
  `logo` char(100) NOT NULL,
  `cheer` varchar(350) NOT NULL,
  `shownum` int(11) NOT NULL DEFAULT '10',
  `joinnum` int(11) DEFAULT NULL,
  `shaketype` int(11) NOT NULL DEFAULT '1',
  `token` varchar(40) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `isopen` int(1) NOT NULL DEFAULT '0',
  `clienttime` int(11) NOT NULL DEFAULT '3',
  `showtime` int(10) NOT NULL DEFAULT '3',
  `endtime` varchar(13) DEFAULT NULL,
  `background` varchar(150) DEFAULT NULL,
  `backgroundmusic` varchar(150) DEFAULT NULL,
  `music` varchar(150) DEFAULT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `rule` varchar(600) NOT NULL DEFAULT '',
  `info` varchar(600) NOT NULL DEFAULT '',
  `starttime` int(11) NOT NULL,
  `endshake` int(11) NOT NULL,
  `qrcode` varchar(150) DEFAULT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_shake
-- ----------------------------

-- ----------------------------
-- Table structure for tp_shakearoung_device
-- ----------------------------
DROP TABLE IF EXISTS `tp_shakearoung_device`;
CREATE TABLE `tp_shakearoung_device` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `device_id` int(11) NOT NULL COMMENT '设备ID',
  `uuid` char(50) NOT NULL COMMENT '设备UUID',
  `major` int(11) NOT NULL COMMENT '主设备ID',
  `minor` int(11) NOT NULL COMMENT '次设备ID',
  `apply_id` int(11) NOT NULL DEFAULT '0' COMMENT '批次ID',
  `device_comment` char(30) NOT NULL DEFAULT '' COMMENT '设备名称',
  `page_num` int(11) NOT NULL COMMENT '关联的页面数',
  `page_ids` varchar(255) NOT NULL DEFAULT '' COMMENT '关联的页面ID列表',
  `status` tinyint(1) NOT NULL COMMENT '设备状态',
  `token` char(50) NOT NULL,
  `add_reason` varchar(300) NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_shakearoung_device
-- ----------------------------

-- ----------------------------
-- Table structure for tp_shakearoung_page
-- ----------------------------
DROP TABLE IF EXISTS `tp_shakearoung_page`;
CREATE TABLE `tp_shakearoung_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL COMMENT '页面ID',
  `title` char(10) NOT NULL DEFAULT '' COMMENT '页面标题',
  `description` char(10) NOT NULL DEFAULT '' COMMENT '页面副标题',
  `icon_url` varchar(255) NOT NULL DEFAULT '' COMMENT '页面图标URL',
  `page_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转地址',
  `page_comment` char(15) NOT NULL DEFAULT '' COMMENT '页面的备注信息',
  `token` char(50) NOT NULL DEFAULT '',
  `add_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_shakearoung_page
-- ----------------------------

-- ----------------------------
-- Table structure for tp_shakelog
-- ----------------------------
DROP TABLE IF EXISTS `tp_shakelog`;
CREATE TABLE `tp_shakelog` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `token` varchar(40) NOT NULL,
  `mark` longtext,
  `endtime` int(15) NOT NULL,
  `joinnum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_shakelog
-- ----------------------------

-- ----------------------------
-- Table structure for tp_shake_rt
-- ----------------------------
DROP TABLE IF EXISTS `tp_shake_rt`;
CREATE TABLE `tp_shake_rt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(12) NOT NULL DEFAULT '',
  `count` int(10) NOT NULL DEFAULT '0',
  `shakeid` int(10) NOT NULL DEFAULT '0',
  `round` mediumint(9) NOT NULL,
  `is_scene` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shakeid` (`shakeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_shake_rt
-- ----------------------------

-- ----------------------------
-- Table structure for tp_share
-- ----------------------------
DROP TABLE IF EXISTS `tp_share`;
CREATE TABLE `tp_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(30) NOT NULL DEFAULT '',
  `moduleid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(80) NOT NULL DEFAULT '',
  `to` varchar(30) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`moduleid`,`token`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_share
-- ----------------------------

-- ----------------------------
-- Table structure for tp_share_set
-- ----------------------------
DROP TABLE IF EXISTS `tp_share_set`;
CREATE TABLE `tp_share_set` (
  `token` varchar(40) NOT NULL DEFAULT '',
  `score` int(5) NOT NULL DEFAULT '0',
  `daylimit` int(5) NOT NULL DEFAULT '1',
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_share_set
-- ----------------------------

-- ----------------------------
-- Table structure for tp_sign_conf
-- ----------------------------
DROP TABLE IF EXISTS `tp_sign_conf`;
CREATE TABLE `tp_sign_conf` (
  `conf_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `use` enum('0','1') NOT NULL,
  `integral` tinyint(4) NOT NULL,
  `stair` tinyint(4) NOT NULL,
  `token` char(25) NOT NULL,
  PRIMARY KEY (`conf_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_sign_conf
-- ----------------------------

-- ----------------------------
-- Table structure for tp_sign_in
-- ----------------------------
DROP TABLE IF EXISTS `tp_sign_in`;
CREATE TABLE `tp_sign_in` (
  `sign_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(40) NOT NULL,
  `wecha_id` char(60) NOT NULL,
  `user_name` char(50) NOT NULL,
  `integral` tinyint(4) NOT NULL,
  `time` char(11) NOT NULL,
  `continue` tinyint(2) NOT NULL,
  `phone` char(11) NOT NULL,
  `set_id` int(11) NOT NULL,
  PRIMARY KEY (`sign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_sign_in
-- ----------------------------

-- ----------------------------
-- Table structure for tp_sign_set
-- ----------------------------
DROP TABLE IF EXISTS `tp_sign_set`;
CREATE TABLE `tp_sign_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` char(25) NOT NULL,
  `title` char(60) NOT NULL,
  `content` varchar(250) NOT NULL,
  `token` char(35) NOT NULL,
  `reply_img` char(150) NOT NULL,
  `top_pic` char(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_sign_set
-- ----------------------------

-- ----------------------------
-- Table structure for tp_site_plugmenu
-- ----------------------------
DROP TABLE IF EXISTS `tp_site_plugmenu`;
CREATE TABLE `tp_site_plugmenu` (
  `token` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `url` varchar(100) DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `display` tinyint(1) NOT NULL DEFAULT '0',
  KEY `token` (`token`,`taxis`,`display`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_site_plugmenu
-- ----------------------------

-- ----------------------------
-- Table structure for tp_sms_code
-- ----------------------------
DROP TABLE IF EXISTS `tp_sms_code`;
CREATE TABLE `tp_sms_code` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(40) NOT NULL,
  `token` char(30) NOT NULL,
  `wecha_id` char(45) NOT NULL,
  `action` char(100) NOT NULL,
  `create_time` char(11) NOT NULL,
  `is_use` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_sms_code
-- ----------------------------

-- ----------------------------
-- Table structure for tp_sms_expendrecord
-- ----------------------------
DROP TABLE IF EXISTS `tp_sms_expendrecord`;
CREATE TABLE `tp_sms_expendrecord` (
  `id` int(11) DEFAULT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `price` int(6) NOT NULL DEFAULT '0',
  `count` int(10) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  KEY `uid` (`uid`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_sms_expendrecord
-- ----------------------------

-- ----------------------------
-- Table structure for tp_sms_record
-- ----------------------------
DROP TABLE IF EXISTS `tp_sms_record`;
CREATE TABLE `tp_sms_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(20) NOT NULL,
  `time` int(10) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `text` varchar(400) NOT NULL DEFAULT '',
  `status` mediumint(4) NOT NULL DEFAULT '0',
  `price` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`token`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_sms_record
-- ----------------------------

-- ----------------------------
-- Table structure for tp_snccode
-- ----------------------------
DROP TABLE IF EXISTS `tp_snccode`;
CREATE TABLE `tp_snccode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `caeatetime` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_snccode
-- ----------------------------

-- ----------------------------
-- Table structure for tp_sncode
-- ----------------------------
DROP TABLE IF EXISTS `tp_sncode`;
CREATE TABLE `tp_sncode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `module` varchar(60) NOT NULL,
  `usenums` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户使用次数',
  `wecha_id` varchar(60) NOT NULL COMMENT '微信唯一识别码',
  `token` varchar(30) NOT NULL,
  `islucky` int(1) NOT NULL COMMENT '是否中奖',
  `wecha_name` varchar(60) NOT NULL COMMENT '微信号',
  `phone` varchar(15) NOT NULL,
  `sn` varchar(13) NOT NULL COMMENT '中奖后序列号',
  `prize` varchar(50) NOT NULL DEFAULT '' COMMENT '已中奖项',
  `sendstutas` int(11) NOT NULL DEFAULT '0',
  `sendtime` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`,`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_sncode
-- ----------------------------

-- ----------------------------
-- Table structure for tp_storeflash
-- ----------------------------
DROP TABLE IF EXISTS `tp_storeflash`;
CREATE TABLE `tp_storeflash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `info` varchar(90) NOT NULL,
  `tip` smallint(11) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tip` (`tip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_storeflash
-- ----------------------------

-- ----------------------------
-- Table structure for tp_store_flash
-- ----------------------------
DROP TABLE IF EXISTS `tp_store_flash`;
CREATE TABLE `tp_store_flash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `img` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  `info` varchar(90) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_store_flash
-- ----------------------------

-- ----------------------------
-- Table structure for tp_styleset
-- ----------------------------
DROP TABLE IF EXISTS `tp_styleset`;
CREATE TABLE `tp_styleset` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `RadioGroup` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_styleset
-- ----------------------------

-- ----------------------------
-- Table structure for tp_susceptible
-- ----------------------------
DROP TABLE IF EXISTS `tp_susceptible`;
CREATE TABLE `tp_susceptible` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(100) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `word` (`word`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_susceptible
-- ----------------------------

-- ----------------------------
-- Table structure for tp_system_info
-- ----------------------------
DROP TABLE IF EXISTS `tp_system_info`;
CREATE TABLE `tp_system_info` (
  `lastsqlupdate` int(10) NOT NULL,
  `version` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_system_info
-- ----------------------------
INSERT INTO `tp_system_info` VALUES ('1438423200', '1410861960');

-- ----------------------------
-- Table structure for tp_tag
-- ----------------------------
DROP TABLE IF EXISTS `tp_tag`;
CREATE TABLE `tp_tag` (
  `tagid_int` int(11) NOT NULL,
  `userid_int` int(11) NOT NULL DEFAULT '0',
  `name_varchar` varchar(50) DEFAULT NULL,
  `type_int` int(11) DEFAULT NULL COMMENT '背景还是图片0背景,1图片,2音乐,88样例,99用户',
  `biztype_int` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`tagid_int`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_tag
-- ----------------------------

-- ----------------------------
-- Table structure for tp_taobao
-- ----------------------------
DROP TABLE IF EXISTS `tp_taobao`;
CREATE TABLE `tp_taobao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(64) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `homeurl` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_taobao
-- ----------------------------

-- ----------------------------
-- Table structure for tp_tempmsg
-- ----------------------------
DROP TABLE IF EXISTS `tp_tempmsg`;
CREATE TABLE `tp_tempmsg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tempkey` char(50) NOT NULL,
  `name` char(100) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `industry` char(50) NOT NULL,
  `topcolor` char(10) NOT NULL DEFAULT '#029700',
  `textcolor` char(10) NOT NULL DEFAULT '#000000',
  `token` char(40) NOT NULL,
  `tempid` char(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tempkey` (`tempkey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_tempmsg
-- ----------------------------

-- ----------------------------
-- Table structure for tp_test
-- ----------------------------
DROP TABLE IF EXISTS `tp_test`;
CREATE TABLE `tp_test` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `wxtitle` varchar(100) NOT NULL,
  `wxpic` varchar(100) NOT NULL,
  `wxinfo` varchar(100) DEFAULT NULL,
  `indexpic` varchar(100) DEFAULT NULL,
  `questionpic` varchar(100) DEFAULT NULL,
  `bgcolor` varchar(100) NOT NULL DEFAULT 'ffcb1d',
  `title` varchar(100) NOT NULL,
  `qtitle` varchar(100) NOT NULL,
  `fistq` varchar(100) NOT NULL,
  `fistapic` varchar(100) NOT NULL,
  `fistatitle` varchar(100) NOT NULL,
  `fistatitle2` varchar(100) NOT NULL,
  `fistainfo` varchar(200) DEFAULT NULL,
  `secondq` varchar(100) NOT NULL,
  `secondapic` varchar(100) NOT NULL,
  `secondatitle` varchar(100) NOT NULL,
  `secondatitle2` varchar(100) NOT NULL,
  `secondainfo` varchar(200) DEFAULT NULL,
  `thirdq` varchar(100) DEFAULT NULL,
  `thirdapic` varchar(100) DEFAULT NULL,
  `thirdatitle` varchar(100) DEFAULT NULL,
  `thirdatitle2` varchar(100) DEFAULT NULL,
  `thirdainfo` varchar(200) DEFAULT NULL,
  `fourq` varchar(100) DEFAULT NULL,
  `fourapic` varchar(100) DEFAULT NULL,
  `fouratitle` varchar(100) DEFAULT NULL,
  `fouratitle2` varchar(100) DEFAULT NULL,
  `fourainfo` varchar(200) DEFAULT NULL,
  `fiveq` varchar(100) DEFAULT NULL,
  `fiveapic` varchar(100) DEFAULT NULL,
  `fiveatitle` varchar(100) DEFAULT NULL,
  `fiveatitle2` varchar(100) DEFAULT NULL,
  `fiveainfo` varchar(200) DEFAULT NULL,
  `pv` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  `fistfx` varchar(200) DEFAULT NULL,
  `secondfx` varchar(200) DEFAULT NULL,
  `thirdfx` varchar(200) DEFAULT NULL,
  `fourfx` varchar(200) DEFAULT NULL,
  `fivefx` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_test
-- ----------------------------

-- ----------------------------
-- Table structure for tp_test_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_test_user`;
CREATE TABLE `tp_test_user` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `testid` int(11) NOT NULL,
  `testtype` int(11) NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_test_user
-- ----------------------------

-- ----------------------------
-- Table structure for tp_text
-- ----------------------------
DROP TABLE IF EXISTS `tp_text`;
CREATE TABLE `tp_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `keyword` char(255) NOT NULL,
  `precisions` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `token` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_text
-- ----------------------------

-- ----------------------------
-- Table structure for tp_token_open
-- ----------------------------
DROP TABLE IF EXISTS `tp_token_open`;
CREATE TABLE `tp_token_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `queryname` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_token_open
-- ----------------------------

-- ----------------------------
-- Table structure for tp_twitter_count
-- ----------------------------
DROP TABLE IF EXISTS `tp_twitter_count`;
CREATE TABLE `tp_twitter_count` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `twid` varchar(20) NOT NULL,
  `token` varchar(60) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `total` float NOT NULL COMMENT '总金额',
  `remove` float NOT NULL COMMENT '提出的金额',
  PRIMARY KEY (`id`),
  KEY `twid` (`twid`),
  KEY `token` (`token`,`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_twitter_count
-- ----------------------------

-- ----------------------------
-- Table structure for tp_twitter_log
-- ----------------------------
DROP TABLE IF EXISTS `tp_twitter_log`;
CREATE TABLE `tp_twitter_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(60) NOT NULL,
  `twid` varchar(20) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `price` float NOT NULL,
  `fromsource` varchar(60) NOT NULL COMMENT '来自源',
  `param` float NOT NULL,
  `wecha_id` varchar(64) NOT NULL COMMENT '操作人，即操作了推广人推广的产品',
  `info` varchar(500) NOT NULL COMMENT '推广的详情',
  PRIMARY KEY (`id`),
  KEY `twid` (`twid`),
  KEY `token` (`token`),
  KEY `fromsource` (`fromsource`),
  KEY `cid` (`cid`),
  KEY `wecha_id` (`wecha_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_twitter_log
-- ----------------------------

-- ----------------------------
-- Table structure for tp_twitter_remove
-- ----------------------------
DROP TABLE IF EXISTS `tp_twitter_remove`;
CREATE TABLE `tp_twitter_remove` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(60) NOT NULL,
  `twid` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL COMMENT '提款人姓名',
  `tel` varchar(15) NOT NULL,
  `number` varchar(32) NOT NULL COMMENT '收款账号',
  `bank` varchar(30) NOT NULL COMMENT '银行名称',
  `address` varchar(60) NOT NULL COMMENT '开户行地址',
  `price` float NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_twitter_remove
-- ----------------------------

-- ----------------------------
-- Table structure for tp_twitter_set
-- ----------------------------
DROP TABLE IF EXISTS `tp_twitter_set`;
CREATE TABLE `tp_twitter_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(60) NOT NULL,
  `clickprice` float NOT NULL COMMENT '点击的价格',
  `clickmax` int(10) unsigned NOT NULL COMMENT '每天点击的上限',
  `registerprice` float NOT NULL COMMENT '注册的价格',
  `registermax` int(10) unsigned NOT NULL COMMENT '每天注册的上限',
  `percent` float NOT NULL COMMENT '商品总价的百分比',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_twitter_set
-- ----------------------------

-- ----------------------------
-- Table structure for tp_twitter_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_twitter_user`;
CREATE TABLE `tp_twitter_user` (
  `id` int(11) NOT NULL,
  `agentid` int(10) NOT NULL,
  `uid` int(11) NOT NULL,
  `wxname` varchar(60) NOT NULL,
  `token` varchar(255) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_twitter_user
-- ----------------------------

-- ----------------------------
-- Table structure for tp_unitary
-- ----------------------------
DROP TABLE IF EXISTS `tp_unitary`;
CREATE TABLE `tp_unitary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '名称/微信中图文信息标题',
  `wxpic` varchar(100) DEFAULT NULL COMMENT '微信中图文信息图片',
  `wxinfo` varchar(100) DEFAULT NULL COMMENT '微信中图文信息说明',
  `wxregister` int(11) NOT NULL DEFAULT '1' COMMENT '关注/注册',
  `register` int(11) NOT NULL DEFAULT '0' COMMENT '注册/不注册',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `type` int(11) DEFAULT NULL COMMENT '分类',
  `logopic` varchar(100) DEFAULT NULL COMMENT 'logo图片',
  `fistpic` varchar(100) DEFAULT NULL COMMENT '展示图片1',
  `secondpic` varchar(100) DEFAULT NULL COMMENT '展示图片2',
  `thirdpic` varchar(100) DEFAULT NULL COMMENT '展示图片3',
  `fourpic` varchar(100) DEFAULT NULL COMMENT '展示图片4',
  `fivepic` varchar(100) DEFAULT NULL COMMENT '展示图片5',
  `sixpic` varchar(100) DEFAULT NULL COMMENT '展示图片6',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `opentime` int(11) DEFAULT NULL COMMENT '结束后展示结果倒计时',
  `endtime` int(11) DEFAULT NULL COMMENT '结束时间',
  `state` int(11) DEFAULT NULL COMMENT '活动开关',
  `renqi` int(11) NOT NULL DEFAULT '0' COMMENT '人气',
  `lucknum` int(11) DEFAULT NULL COMMENT '幸运数字',
  `proportion` double NOT NULL DEFAULT '0',
  `lasttime` int(11) DEFAULT NULL,
  `lastnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_unitary
-- ----------------------------

-- ----------------------------
-- Table structure for tp_unitary_cart
-- ----------------------------
DROP TABLE IF EXISTS `tp_unitary_cart`;
CREATE TABLE `tp_unitary_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `unitary_id` int(11) DEFAULT NULL COMMENT '商品id',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '购买/购物车状态',
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_unitary_cart
-- ----------------------------

-- ----------------------------
-- Table structure for tp_unitary_lucknum
-- ----------------------------
DROP TABLE IF EXISTS `tp_unitary_lucknum`;
CREATE TABLE `tp_unitary_lucknum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `token` varchar(100) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `lucknum` int(11) DEFAULT NULL,
  `addtime` double DEFAULT NULL,
  `unitary_id` int(11) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL COMMENT '购物id',
  `state` int(11) NOT NULL DEFAULT '0',
  `paifa` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_unitary_lucknum
-- ----------------------------

-- ----------------------------
-- Table structure for tp_unitary_order
-- ----------------------------
DROP TABLE IF EXISTS `tp_unitary_order`;
CREATE TABLE `tp_unitary_order` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL COMMENT '总价',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `paytype` varchar(50) DEFAULT NULL COMMENT '来自于何种支付(英文格式)',
  `paid` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否支付，1代表已支付',
  `third_id` varchar(100) DEFAULT NULL COMMENT '第三方支付平台的订单ID，用于对帐。',
  `orderid` varchar(255) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_unitary_order
-- ----------------------------

-- ----------------------------
-- Table structure for tp_unitary_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_unitary_user`;
CREATE TABLE `tp_unitary_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(100) DEFAULT NULL COMMENT '手机号',
  `address` text COMMENT '地址',
  `token` varchar(100) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_unitary_user
-- ----------------------------

-- ----------------------------
-- Table structure for tp_update_record
-- ----------------------------
DROP TABLE IF EXISTS `tp_update_record`;
CREATE TABLE `tp_update_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` varchar(600) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_update_record
-- ----------------------------
INSERT INTO `tp_update_record` VALUES ('1', '2014年12月升级包1', 'upgrade', '1388110020');
INSERT INTO `tp_update_record` VALUES ('2', '2014年12月升级包2', 'upgrade', '1388110080');
INSERT INTO `tp_update_record` VALUES ('3', '2014年12月升级包3', 'upgrade', '1388110140');
INSERT INTO `tp_update_record` VALUES ('4', '2014年12月升级包4', 'upgrade', '1388110260');
INSERT INTO `tp_update_record` VALUES ('5', '2014年12月升级包5', 'upgrade', '1388110320');
INSERT INTO `tp_update_record` VALUES ('6', '2014年12月升级包6', 'upgrade', '1388110380');
INSERT INTO `tp_update_record` VALUES ('7', '1、行业应用后台版面错乱；2、照片打印机照片不显示', '0', '1405399740');
INSERT INTO `tp_update_record` VALUES ('8', '1、会员卡幻灯片问题 2、新添加公众号无响应 3、多图文顺序问题 4、相册上传按钮不显示问题', '0', '1405474020');
INSERT INTO `tp_update_record` VALUES ('9', '相册没有上传按钮', '0', '1405478100');
INSERT INTO `tp_update_record` VALUES ('10', '微信公众平台接口调整导致的url超时或者关注不回复问题', '1', '1405652520');
INSERT INTO `tp_update_record` VALUES ('11', '公共模板文件', '1', '1410740700');
INSERT INTO `tp_update_record` VALUES ('12', 'php文件', '1', '1410740760');
INSERT INTO `tp_update_record` VALUES ('13', '公共en文件', '1', '1410740820');
INSERT INTO `tp_update_record` VALUES ('14', '', '1', '1410740940');
INSERT INTO `tp_update_record` VALUES ('15', '', '1', '1410741180');
INSERT INTO `tp_update_record` VALUES ('16', '微场景分享、直达号sitemap，stroe colorid没有默认值', '0', '1410861960');

-- ----------------------------
-- Table structure for tp_upfile
-- ----------------------------
DROP TABLE IF EXISTS `tp_upfile`;
CREATE TABLE `tp_upfile` (
  `fileid_bigint` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid_int` int(11) NOT NULL,
  `filetype_int` int(11) NOT NULL DEFAULT '0' COMMENT '0背景,2音乐,1图片',
  `filesrc_varchar` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `sizekb_int` decimal(18,2) DEFAULT '0.00',
  `filethumbsrc_varchar` varchar(200) DEFAULT NULL,
  `biztype_int` int(11) DEFAULT '0',
  `ext_varchar` varchar(50) DEFAULT NULL,
  `filename_varchar` varchar(100) DEFAULT NULL,
  `eqsrc_varchar` varchar(200) DEFAULT NULL,
  `tagid_int` int(11) DEFAULT '0',
  `delete_int` int(11) NOT NULL DEFAULT '0' COMMENT '0正常,1删除',
  PRIMARY KEY (`fileid_bigint`),
  KEY `userid` (`userid_int`,`filetype_int`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_upfile
-- ----------------------------

-- ----------------------------
-- Table structure for tp_upfilesys
-- ----------------------------
DROP TABLE IF EXISTS `tp_upfilesys`;
CREATE TABLE `tp_upfilesys` (
  `fileid_bigint` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid_int` int(11) NOT NULL,
  `filetype_int` int(11) NOT NULL DEFAULT '0' COMMENT '0背景,2音乐,1图片',
  `filesrc_varchar` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `sizekb_int` decimal(18,2) DEFAULT '0.00',
  `filethumbsrc_varchar` varchar(200) DEFAULT NULL,
  `biztype_int` int(11) DEFAULT '0',
  `ext_varchar` varchar(50) DEFAULT NULL,
  `filename_varchar` varchar(100) DEFAULT NULL,
  `eqsrc_varchar` varchar(200) DEFAULT NULL,
  `tagid_int` int(11) DEFAULT '0',
  `eqsrcthumb_varchar` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`fileid_bigint`),
  KEY `userid` (`userid_int`,`filetype_int`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_upfilesys
-- ----------------------------

-- ----------------------------
-- Table structure for tp_upyun_attachement
-- ----------------------------
DROP TABLE IF EXISTS `tp_upyun_attachement`;
CREATE TABLE `tp_upyun_attachement` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `url` varchar(160) NOT NULL,
  `code` varchar(10) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_upyun_attachement
-- ----------------------------

-- ----------------------------
-- Table structure for tp_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` smallint(6) unsigned NOT NULL COMMENT '组ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1:启用 0:禁止',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `last_login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `last_location` varchar(100) DEFAULT NULL COMMENT '最后登录位置',
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `free_time` int(11) NOT NULL DEFAULT '0',
  `scene_times` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_user
-- ----------------------------
INSERT INTO `tp_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '1', '', '1434261906', '127.0.0.1', '', '1', '0', '0');

-- ----------------------------
-- Table structure for tp_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `tp_userinfo`;
CREATE TABLE `tp_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `portrait` varchar(200) NOT NULL DEFAULT '',
  `wallopen` tinyint(1) NOT NULL DEFAULT '0',
  `total_score` int(10) NOT NULL DEFAULT '0',
  `total_score_bf` int(10) NOT NULL,
  `expensetotal` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `truename` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(11) NOT NULL,
  `bornyear` varchar(4) NOT NULL DEFAULT '',
  `bornmonth` varchar(4) NOT NULL DEFAULT '',
  `bornday` varchar(4) NOT NULL DEFAULT '',
  `qq` varchar(11) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL,
  `age` varchar(3) NOT NULL DEFAULT '',
  `birthday` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `info` varchar(200) NOT NULL,
  `sign_score` int(11) NOT NULL,
  `expend_score` int(11) NOT NULL,
  `continuous` int(11) NOT NULL,
  `add_expend` int(11) NOT NULL,
  `add_expend_time` int(11) NOT NULL,
  `live_time` int(11) NOT NULL,
  `getcardtime` int(10) NOT NULL,
  `balance` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `balance_bf` decimal(10,2) NOT NULL,
  `paypass` varchar(32) DEFAULT NULL,
  `twid` varchar(20) NOT NULL COMMENT '推广号',
  `username` varchar(32) NOT NULL COMMENT '账号',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `city` varchar(40) DEFAULT NULL,
  `province` varchar(40) DEFAULT NULL,
  `store_id` int(10) DEFAULT '0',
  `drp_cart` text NOT NULL COMMENT '分销系统-用户购物车',
  `regtime` varchar(20) NOT NULL DEFAULT '' COMMENT '注册时间',
  `fakeopenid` varchar(100) NOT NULL DEFAULT '',
  `issub` tinyint(1) NOT NULL DEFAULT '0',
  `cart` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `twid` (`twid`),
  KEY `username` (`username`),
  KEY `store_id` (`store_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_userinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tp_users
-- ----------------------------
DROP TABLE IF EXISTS `tp_users`;
CREATE TABLE `tp_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(80) NOT NULL DEFAULT '',
  `agentid` int(10) NOT NULL DEFAULT '0',
  `inviter` int(10) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `smscount` int(10) NOT NULL DEFAULT '0',
  `password` varchar(32) NOT NULL,
  `email` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `lasttime` varchar(13) NOT NULL,
  `status` varchar(1) NOT NULL,
  `createip` varchar(30) NOT NULL,
  `lastip` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `activitynum` int(11) NOT NULL,
  `card_num` int(11) NOT NULL,
  `card_create_status` tinyint(1) NOT NULL,
  `money` int(11) NOT NULL,
  `moneybalance` int(10) NOT NULL DEFAULT '0',
  `spend` int(5) NOT NULL DEFAULT '0',
  `viptime` varchar(13) NOT NULL,
  `connectnum` int(11) NOT NULL DEFAULT '0',
  `lastloginmonth` smallint(2) NOT NULL DEFAULT '0',
  `attachmentsize` int(10) NOT NULL DEFAULT '0',
  `wechat_card_num` int(3) NOT NULL,
  `serviceUserNum` tinyint(3) NOT NULL,
  `invitecode` varchar(6) NOT NULL DEFAULT '',
  `remark` varchar(200) NOT NULL DEFAULT '',
  `business` char(20) NOT NULL DEFAULT 'other',
  `usertplid` tinyint(4) NOT NULL DEFAULT '0',
  `sysuser` int(11) NOT NULL,
  `is_syn` tinyint(4) NOT NULL DEFAULT '0',
  `source_domain` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_users
-- ----------------------------

-- ----------------------------
-- Table structure for tp_user_address
-- ----------------------------
DROP TABLE IF EXISTS `tp_user_address`;
CREATE TABLE `tp_user_address` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '用户id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '收货人',
  `tel` varchar(50) NOT NULL DEFAULT '' COMMENT '联系电话',
  `address` varchar(300) NOT NULL DEFAULT '' COMMENT '收货地址',
  `postcode` varchar(10) NOT NULL DEFAULT '' COMMENT '邮编',
  `default_address` char(1) NOT NULL DEFAULT '0' COMMENT '默认收货地址',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_user_address
-- ----------------------------

-- ----------------------------
-- Table structure for tp_user_group
-- ----------------------------
DROP TABLE IF EXISTS `tp_user_group`;
CREATE TABLE `tp_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxisid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `connectnum` int(11) NOT NULL,
  `iscopyright` tinyint(1) NOT NULL,
  `activitynum` int(3) NOT NULL,
  `price` int(11) NOT NULL,
  `statistics_user` int(11) NOT NULL,
  `create_card_num` int(4) NOT NULL,
  `wechat_card_num` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `func` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_user_group
-- ----------------------------
INSERT INTO `tp_user_group` VALUES ('1', '1', '试用版', '2000', '2000', '0', '0', '0', '0', '10', '1', '1', '0', '');
INSERT INTO `tp_user_group` VALUES ('2', '2', '体验版', '3000', '3000', '1', '2', '10', '0', '50', '1', '1', '0', '');
INSERT INTO `tp_user_group` VALUES ('3', '3', '增强版', '40000', '40000', '1', '4', '150', '0', '80', '2', '1', '0', '');
INSERT INTO `tp_user_group` VALUES ('4', '4', '黄金版', '50000', '50000', '1', '10', '200', '0', '10000', '100', '1', '0', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,AdvanceTpl,Message,Helping,Popularity,Jiugong,Zhaopin,MicroBroker,Unitary,Crowdfunding,Bargain,DishOut,Phone,SeniorScene,Fuwu,Weixin,Hongbao,Card,Seckill,Service,Voteimg,Micrstore,wedding,Shakearound,vote,Cutprice,ServiceUser');

-- ----------------------------
-- Table structure for tp_user_request
-- ----------------------------
DROP TABLE IF EXISTS `tp_user_request`;
CREATE TABLE `tp_user_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `msgtype` varchar(15) NOT NULL DEFAULT 'text',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `msgtype` (`msgtype`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_user_request
-- ----------------------------

-- ----------------------------
-- Table structure for tp_vcard
-- ----------------------------
DROP TABLE IF EXISTS `tp_vcard`;
CREATE TABLE `tp_vcard` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `company_tel` varchar(100) DEFAULT NULL,
  `baiduapi` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL COMMENT '公司简介',
  `fax` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_vcard
-- ----------------------------

-- ----------------------------
-- Table structure for tp_vcard_list
-- ----------------------------
DROP TABLE IF EXISTS `tp_vcard_list`;
CREATE TABLE `tp_vcard_list` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `work` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `qq` varchar(100) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_vcard_list
-- ----------------------------

-- ----------------------------
-- Table structure for tp_voiceresponse
-- ----------------------------
DROP TABLE IF EXISTS `tp_voiceresponse`;
CREATE TABLE `tp_voiceresponse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `keyword` char(255) NOT NULL,
  `title` varchar(60) NOT NULL,
  `musicurl` char(255) NOT NULL,
  `hqmusicurl` char(255) NOT NULL,
  `description` char(255) NOT NULL,
  `token` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_voiceresponse
-- ----------------------------

-- ----------------------------
-- Table structure for tp_vote
-- ----------------------------
DROP TABLE IF EXISTS `tp_vote`;
CREATE TABLE `tp_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` char(5) NOT NULL COMMENT 'text/img 文本/图片',
  `picurl` varchar(500) NOT NULL,
  `showpic` tinyint(4) NOT NULL COMMENT '是否显示图片',
  `info` varchar(5000) NOT NULL DEFAULT '',
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `display` tinyint(4) NOT NULL COMMENT '1投票前0投票后2投票结束',
  `cknums` tinyint(3) NOT NULL DEFAULT '1' COMMENT '最多可选择，默认1',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `refresh` tinyint(4) NOT NULL,
  `is_reg` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `keyword` (`keyword`),
  FULLTEXT KEY `token` (`token`),
  FULLTEXT KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_vote
-- ----------------------------

-- ----------------------------
-- Table structure for tp_voteimg
-- ----------------------------
DROP TABLE IF EXISTS `tp_voteimg`;
CREATE TABLE `tp_voteimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_name` varchar(50) NOT NULL,
  `action_desc` text NOT NULL,
  `award_desc` text NOT NULL,
  `flow_desc` text NOT NULL,
  `join_desc` text NOT NULL,
  `keyword` varchar(50) NOT NULL DEFAULT '' COMMENT '回复关键词',
  `reply_title` varchar(50) NOT NULL DEFAULT '' COMMENT '回复标题',
  `reply_content` varchar(200) NOT NULL DEFAULT '' COMMENT '回复内容',
  `reply_pic` varchar(255) NOT NULL COMMENT '回复图片',
  `start_time` int(11) NOT NULL COMMENT '开始时间',
  `apply_start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL COMMENT '结束时间',
  `apply_end_time` int(11) NOT NULL,
  `is_follow` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否需要关注',
  `is_register` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否需要注册',
  `limit_vote` int(11) NOT NULL COMMENT '限制投票数',
  `limit_vote_day` int(11) NOT NULL COMMENT '限制每天投票数',
  `limit_vote_item` int(11) NOT NULL,
  `phone` char(50) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  `page_type` enum('waterfall','page') NOT NULL DEFAULT 'waterfall',
  `display` tinyint(1) NOT NULL,
  `default_skin` tinyint(1) NOT NULL,
  `follow_msg` varchar(500) NOT NULL,
  `follow_url` varchar(255) NOT NULL,
  `self_status` tinyint(1) NOT NULL,
  `follow_btn_msg` varchar(255) NOT NULL,
  `register_msg` varchar(255) NOT NULL,
  `territory_limit` tinyint(1) NOT NULL,
  `pro_city` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_voteimg
-- ----------------------------

-- ----------------------------
-- Table structure for tp_voteimg_banner
-- ----------------------------
DROP TABLE IF EXISTS `tp_voteimg_banner`;
CREATE TABLE `tp_voteimg_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL COMMENT '活动id',
  `img_url` varchar(100) NOT NULL DEFAULT '',
  `external_links` varchar(1000) NOT NULL,
  `banner_rank` int(11) NOT NULL DEFAULT '1' COMMENT '播放顺序',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  PRIMARY KEY (`id`),
  KEY `vote_id` (`vote_id`) USING BTREE,
  KEY `banner_index` (`vote_id`,`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_voteimg_banner
-- ----------------------------

-- ----------------------------
-- Table structure for tp_voteimg_bottom
-- ----------------------------
DROP TABLE IF EXISTS `tp_voteimg_bottom`;
CREATE TABLE `tp_voteimg_bottom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL COMMENT '活动id',
  `bottom_name` char(50) NOT NULL COMMENT '导航名称',
  `bottom_link` varchar(255) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  `bottom_icon` varchar(255) NOT NULL COMMENT '导航图标',
  `bottom_rank` int(11) NOT NULL,
  `hide` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否隐藏',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否是内置导航',
  PRIMARY KEY (`id`),
  KEY `vote_id` (`vote_id`) USING BTREE,
  KEY `bottom_index` (`vote_id`,`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_voteimg_bottom
-- ----------------------------

-- ----------------------------
-- Table structure for tp_voteimg_item
-- ----------------------------
DROP TABLE IF EXISTS `tp_voteimg_item`;
CREATE TABLE `tp_voteimg_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL COMMENT '图片投票id',
  `baby_id` int(11) NOT NULL,
  `vote_title` varchar(100) NOT NULL DEFAULT '' COMMENT '图片描述',
  `introduction` text NOT NULL COMMENT '自我介绍',
  `manifesto` varchar(255) NOT NULL COMMENT '拉票宣言',
  `vote_img` varchar(500) NOT NULL DEFAULT '' COMMENT '图片地址',
  `jump_url` varchar(255) NOT NULL,
  `contact` varchar(11) NOT NULL COMMENT '手机号',
  `vote_count` int(11) NOT NULL COMMENT '获得票数',
  `upload_time` int(11) NOT NULL COMMENT '上传时间',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  `check_pass` tinyint(1) NOT NULL COMMENT '审核',
  `wecha_id` varchar(100) NOT NULL DEFAULT '',
  `upload_type` tinyint(1) NOT NULL COMMENT '区分管理上传还是报名',
  PRIMARY KEY (`id`),
  KEY `vote_id` (`vote_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_voteimg_item
-- ----------------------------

-- ----------------------------
-- Table structure for tp_voteimg_menus
-- ----------------------------
DROP TABLE IF EXISTS `tp_voteimg_menus`;
CREATE TABLE `tp_voteimg_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL COMMENT '活动id',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  `menu_name` varchar(50) NOT NULL DEFAULT '',
  `menu_icon` varchar(255) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `menu_link` varchar(255) NOT NULL DEFAULT '' COMMENT '菜单链接',
  `hide` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否隐藏',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否是内置菜单',
  PRIMARY KEY (`id`),
  KEY `vote_id` (`vote_id`) USING BTREE,
  KEY `menus_index` (`vote_id`,`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_voteimg_menus
-- ----------------------------

-- ----------------------------
-- Table structure for tp_voteimg_stat
-- ----------------------------
DROP TABLE IF EXISTS `tp_voteimg_stat`;
CREATE TABLE `tp_voteimg_stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL COMMENT '活动id',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  `stat_name` varchar(100) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL,
  `hide` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否隐藏',
  PRIMARY KEY (`id`),
  KEY `vote_id` (`vote_id`) USING BTREE,
  KEY `stat_index` (`vote_id`,`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_voteimg_stat
-- ----------------------------

-- ----------------------------
-- Table structure for tp_voteimg_users
-- ----------------------------
DROP TABLE IF EXISTS `tp_voteimg_users`;
CREATE TABLE `tp_voteimg_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL COMMENT '活动id',
  `item_id` text NOT NULL COMMENT '投票选项',
  `wecha_id` varchar(100) NOT NULL,
  `nick_name` varchar(255) NOT NULL COMMENT '微信昵称',
  `votenum` int(11) NOT NULL COMMENT '已投票数',
  `votenum_day` int(11) NOT NULL COMMENT '今日已投票数',
  `vote_today` text NOT NULL,
  `vote_time` int(11) NOT NULL COMMENT '投票时间',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `vote_id` (`vote_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_voteimg_users
-- ----------------------------

-- ----------------------------
-- Table structure for tp_vote_item
-- ----------------------------
DROP TABLE IF EXISTS `tp_vote_item`;
CREATE TABLE `tp_vote_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL COMMENT 'vote_id',
  `item` varchar(50) NOT NULL,
  `vcount` int(11) NOT NULL,
  `startpicurl` varchar(200) NOT NULL DEFAULT '',
  `tourl` varchar(200) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_vote_item
-- ----------------------------

-- ----------------------------
-- Table structure for tp_vote_record
-- ----------------------------
DROP TABLE IF EXISTS `tp_vote_record`;
CREATE TABLE `tp_vote_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) NOT NULL COMMENT '投票项 1,2,3,',
  `vid` int(11) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `touched` tinyint(4) NOT NULL,
  `touch_time` int(11) NOT NULL COMMENT '投票日期',
  `token` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `vid` (`vid`) USING BTREE,
  KEY `vid_2` (`vid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_vote_record
-- ----------------------------

-- ----------------------------
-- Table structure for tp_wall
-- ----------------------------
DROP TABLE IF EXISTS `tp_wall`;
CREATE TABLE `tp_wall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(20) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `logo` varchar(100) DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `startbackground` varchar(100) DEFAULT '',
  `background` varchar(100) DEFAULT '',
  `endbackground` varchar(100) DEFAULT '',
  `isopen` tinyint(1) DEFAULT '1',
  `firstprizename` varchar(50) DEFAULT '',
  `firstprizepic` varchar(100) DEFAULT '',
  `firstprizecount` mediumint(5) DEFAULT '0',
  `secondprizename` varchar(50) DEFAULT '',
  `secondprizecount` mediumint(4) DEFAULT '0',
  `secondprizepic` varchar(150) DEFAULT '',
  `thirdprizename` varchar(50) DEFAULT '',
  `thirdprizepic` varchar(100) DEFAULT '',
  `thirdprizecount` mediumint(4) DEFAULT '0',
  `fourthprizename` varchar(50) DEFAULT '',
  `fourthprizecount` mediumint(4) DEFAULT '0',
  `fourthprizepic` varchar(100) DEFAULT '',
  `fifthprizename` varchar(50) DEFAULT '',
  `fifthprizecount` mediumint(5) DEFAULT '0',
  `fifthprizepic` varchar(100) DEFAULT '',
  `sixthprizename` varchar(50) DEFAULT '',
  `sixthprizecount` mediumint(4) DEFAULT '0',
  `sixthprizepic` varchar(100) DEFAULT '',
  `keyword` varchar(60) DEFAULT '',
  `qrcode` varchar(100) DEFAULT '',
  `ck_msg` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wall
-- ----------------------------

-- ----------------------------
-- Table structure for tp_wall_member
-- ----------------------------
DROP TABLE IF EXISTS `tp_wall_member`;
CREATE TABLE `tp_wall_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(20) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `portrait` varchar(150) NOT NULL DEFAULT '',
  `nickname` varchar(60) NOT NULL DEFAULT '',
  `truename` varchar(40) NOT NULL,
  `phone` char(11) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `wallid` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `act_id` int(11) NOT NULL,
  `act_type` enum('1','2','3') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`wallid`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wall_member
-- ----------------------------

-- ----------------------------
-- Table structure for tp_wall_message
-- ----------------------------
DROP TABLE IF EXISTS `tp_wall_message`;
CREATE TABLE `tp_wall_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `wallid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(20) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `content` varchar(500) NOT NULL DEFAULT '',
  `picture` varchar(150) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `is_scene` enum('0','1') NOT NULL,
  `is_check` tinyint(1) NOT NULL DEFAULT '1',
  `check_time` int(11) NOT NULL,
  `is_cheke` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wallid` (`wallid`,`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wall_message
-- ----------------------------

-- ----------------------------
-- Table structure for tp_wall_prize
-- ----------------------------
DROP TABLE IF EXISTS `tp_wall_prize`;
CREATE TABLE `tp_wall_prize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL,
  `pname` char(40) NOT NULL,
  `pic` char(100) NOT NULL,
  `num` mediumint(9) NOT NULL,
  `token` char(20) NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL,
  `sceneid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wall_prize
-- ----------------------------

-- ----------------------------
-- Table structure for tp_wall_prize_record
-- ----------------------------
DROP TABLE IF EXISTS `tp_wall_prize_record`;
CREATE TABLE `tp_wall_prize_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `wallid` int(11) NOT NULL DEFAULT '0',
  `prize` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL,
  `sceneid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wallid` (`wallid`,`prize`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wall_prize_record
-- ----------------------------

-- ----------------------------
-- Table structure for tp_wall_supperzzle
-- ----------------------------
DROP TABLE IF EXISTS `tp_wall_supperzzle`;
CREATE TABLE `tp_wall_supperzzle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sceneid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `vid` int(10) unsigned NOT NULL,
  `addtime` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wall_supperzzle
-- ----------------------------

-- ----------------------------
-- Table structure for tp_weather
-- ----------------------------
DROP TABLE IF EXISTS `tp_weather`;
CREATE TABLE `tp_weather` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` char(9) NOT NULL,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2502 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_weather
-- ----------------------------
INSERT INTO `tp_weather` VALUES ('1', '101010100', '北京');
INSERT INTO `tp_weather` VALUES ('2', '101010200', '海淀');
INSERT INTO `tp_weather` VALUES ('3', '101010400', '顺义');
INSERT INTO `tp_weather` VALUES ('4', '101010500', '怀柔');
INSERT INTO `tp_weather` VALUES ('5', '101010600', '通州');
INSERT INTO `tp_weather` VALUES ('6', '101010700', '昌平');
INSERT INTO `tp_weather` VALUES ('7', '101010800', '延庆');
INSERT INTO `tp_weather` VALUES ('8', '101010900', '丰台');
INSERT INTO `tp_weather` VALUES ('9', '101011000', '石景山');
INSERT INTO `tp_weather` VALUES ('10', '101011100', '大兴');
INSERT INTO `tp_weather` VALUES ('11', '101011200', '房山');
INSERT INTO `tp_weather` VALUES ('12', '101011300', '密云');
INSERT INTO `tp_weather` VALUES ('13', '101011400', '门头沟');
INSERT INTO `tp_weather` VALUES ('14', '101011500', '平谷');
INSERT INTO `tp_weather` VALUES ('15', '101020100', '上海');
INSERT INTO `tp_weather` VALUES ('16', '101020200', '闵行');
INSERT INTO `tp_weather` VALUES ('17', '101020300', '宝山');
INSERT INTO `tp_weather` VALUES ('18', '101020500', '嘉定');
INSERT INTO `tp_weather` VALUES ('19', '101020600', '浦东南汇');
INSERT INTO `tp_weather` VALUES ('20', '101020700', '金山');
INSERT INTO `tp_weather` VALUES ('21', '101020800', '青浦');
INSERT INTO `tp_weather` VALUES ('22', '101020900', '松江');
INSERT INTO `tp_weather` VALUES ('23', '101021000', '奉贤');
INSERT INTO `tp_weather` VALUES ('24', '101021100', '崇明');
INSERT INTO `tp_weather` VALUES ('25', '101021300', '浦东');
INSERT INTO `tp_weather` VALUES ('26', '101030200', '武清');
INSERT INTO `tp_weather` VALUES ('27', '101030300', '宝坻');
INSERT INTO `tp_weather` VALUES ('28', '101030400', '东丽');
INSERT INTO `tp_weather` VALUES ('29', '101030500', '西青');
INSERT INTO `tp_weather` VALUES ('30', '101030600', '北辰');
INSERT INTO `tp_weather` VALUES ('31', '101030700', '宁河');
INSERT INTO `tp_weather` VALUES ('32', '101030800', '汉沽');
INSERT INTO `tp_weather` VALUES ('33', '101030900', '静海');
INSERT INTO `tp_weather` VALUES ('34', '101031000', '津南');
INSERT INTO `tp_weather` VALUES ('35', '101031100', '塘沽');
INSERT INTO `tp_weather` VALUES ('36', '101031200', '大港');
INSERT INTO `tp_weather` VALUES ('37', '101031400', '蓟县');
INSERT INTO `tp_weather` VALUES ('38', '101040100', '重庆');
INSERT INTO `tp_weather` VALUES ('39', '101040200', '永川');
INSERT INTO `tp_weather` VALUES ('40', '101040300', '合川');
INSERT INTO `tp_weather` VALUES ('41', '101040400', '南川');
INSERT INTO `tp_weather` VALUES ('42', '101040500', '江津');
INSERT INTO `tp_weather` VALUES ('43', '101040600', '万盛');
INSERT INTO `tp_weather` VALUES ('44', '101040700', '渝北');
INSERT INTO `tp_weather` VALUES ('45', '101040800', '北碚');
INSERT INTO `tp_weather` VALUES ('46', '101041000', '长寿');
INSERT INTO `tp_weather` VALUES ('47', '101041100', '黔江');
INSERT INTO `tp_weather` VALUES ('48', '101041300', '万州');
INSERT INTO `tp_weather` VALUES ('49', '101041400', '涪陵');
INSERT INTO `tp_weather` VALUES ('50', '101041500', '开县');
INSERT INTO `tp_weather` VALUES ('51', '101041600', '城口');
INSERT INTO `tp_weather` VALUES ('52', '101041700', '云阳');
INSERT INTO `tp_weather` VALUES ('53', '101041800', '巫溪');
INSERT INTO `tp_weather` VALUES ('54', '101041900', '奉节');
INSERT INTO `tp_weather` VALUES ('55', '101042000', '巫山');
INSERT INTO `tp_weather` VALUES ('56', '101042100', '潼南');
INSERT INTO `tp_weather` VALUES ('57', '101042200', '垫江');
INSERT INTO `tp_weather` VALUES ('58', '101042300', '梁平');
INSERT INTO `tp_weather` VALUES ('59', '101042400', '忠县');
INSERT INTO `tp_weather` VALUES ('60', '101042500', '石柱');
INSERT INTO `tp_weather` VALUES ('61', '101042600', '大足');
INSERT INTO `tp_weather` VALUES ('62', '101042700', '荣昌');
INSERT INTO `tp_weather` VALUES ('63', '101042800', '铜梁');
INSERT INTO `tp_weather` VALUES ('64', '101042900', '璧山');
INSERT INTO `tp_weather` VALUES ('65', '101043000', '丰都');
INSERT INTO `tp_weather` VALUES ('66', '101043100', '武隆');
INSERT INTO `tp_weather` VALUES ('67', '101043200', '彭水');
INSERT INTO `tp_weather` VALUES ('68', '101043300', '綦江');
INSERT INTO `tp_weather` VALUES ('69', '101043400', '酉阳');
INSERT INTO `tp_weather` VALUES ('70', '101043600', '秀山');
INSERT INTO `tp_weather` VALUES ('71', '101050101', '哈尔滨');
INSERT INTO `tp_weather` VALUES ('72', '101050102', '双城');
INSERT INTO `tp_weather` VALUES ('73', '101050103', '呼兰');
INSERT INTO `tp_weather` VALUES ('74', '101050104', '阿城');
INSERT INTO `tp_weather` VALUES ('75', '101050105', '宾县');
INSERT INTO `tp_weather` VALUES ('76', '101050106', '依兰');
INSERT INTO `tp_weather` VALUES ('77', '101050107', '巴彦');
INSERT INTO `tp_weather` VALUES ('78', '101050108', '通河');
INSERT INTO `tp_weather` VALUES ('79', '101050109', '方正');
INSERT INTO `tp_weather` VALUES ('80', '101050110', '延寿');
INSERT INTO `tp_weather` VALUES ('81', '101050111', '尚志');
INSERT INTO `tp_weather` VALUES ('82', '101050112', '五常');
INSERT INTO `tp_weather` VALUES ('83', '101050113', '木兰');
INSERT INTO `tp_weather` VALUES ('84', '101050201', '齐齐哈尔');
INSERT INTO `tp_weather` VALUES ('85', '101050202', '讷河');
INSERT INTO `tp_weather` VALUES ('86', '101050203', '龙江');
INSERT INTO `tp_weather` VALUES ('87', '101050204', '甘南');
INSERT INTO `tp_weather` VALUES ('88', '101050205', '富裕');
INSERT INTO `tp_weather` VALUES ('89', '101050206', '依安');
INSERT INTO `tp_weather` VALUES ('90', '101050207', '拜泉');
INSERT INTO `tp_weather` VALUES ('91', '101050208', '克山');
INSERT INTO `tp_weather` VALUES ('92', '101050209', '克东');
INSERT INTO `tp_weather` VALUES ('93', '101050210', '泰来');
INSERT INTO `tp_weather` VALUES ('94', '101050301', '牡丹江');
INSERT INTO `tp_weather` VALUES ('95', '101050302', '海林');
INSERT INTO `tp_weather` VALUES ('96', '101050303', '穆棱');
INSERT INTO `tp_weather` VALUES ('97', '101050304', '林口');
INSERT INTO `tp_weather` VALUES ('98', '101050305', '绥芬河');
INSERT INTO `tp_weather` VALUES ('99', '101050306', '宁安');
INSERT INTO `tp_weather` VALUES ('100', '101050307', '东宁');
INSERT INTO `tp_weather` VALUES ('101', '101050401', '佳木斯');
INSERT INTO `tp_weather` VALUES ('102', '101050402', '汤原');
INSERT INTO `tp_weather` VALUES ('103', '101050403', '抚远');
INSERT INTO `tp_weather` VALUES ('104', '101050404', '桦川');
INSERT INTO `tp_weather` VALUES ('105', '101050405', '桦南');
INSERT INTO `tp_weather` VALUES ('106', '101050406', '同江');
INSERT INTO `tp_weather` VALUES ('107', '101050407', '富锦');
INSERT INTO `tp_weather` VALUES ('108', '101050501', '绥化');
INSERT INTO `tp_weather` VALUES ('109', '101050502', '肇东');
INSERT INTO `tp_weather` VALUES ('110', '101050503', '安达');
INSERT INTO `tp_weather` VALUES ('111', '101050504', '海伦');
INSERT INTO `tp_weather` VALUES ('112', '101050505', '明水');
INSERT INTO `tp_weather` VALUES ('113', '101050506', '望奎');
INSERT INTO `tp_weather` VALUES ('114', '101050507', '兰西');
INSERT INTO `tp_weather` VALUES ('115', '101050508', '青冈');
INSERT INTO `tp_weather` VALUES ('116', '101050509', '庆安');
INSERT INTO `tp_weather` VALUES ('117', '101050510', '绥棱');
INSERT INTO `tp_weather` VALUES ('118', '101050601', '黑河');
INSERT INTO `tp_weather` VALUES ('119', '101050602', '嫩江');
INSERT INTO `tp_weather` VALUES ('120', '101050603', '孙吴');
INSERT INTO `tp_weather` VALUES ('121', '101050604', '逊克');
INSERT INTO `tp_weather` VALUES ('122', '101050605', '五大连池');
INSERT INTO `tp_weather` VALUES ('123', '101050606', '北安');
INSERT INTO `tp_weather` VALUES ('124', '101050701', '大兴安岭');
INSERT INTO `tp_weather` VALUES ('125', '101050702', '塔河');
INSERT INTO `tp_weather` VALUES ('126', '101050703', '漠河');
INSERT INTO `tp_weather` VALUES ('127', '101050704', '呼玛');
INSERT INTO `tp_weather` VALUES ('128', '101050801', '伊春');
INSERT INTO `tp_weather` VALUES ('129', '101050804', '铁力');
INSERT INTO `tp_weather` VALUES ('130', '101050805', '嘉荫');
INSERT INTO `tp_weather` VALUES ('131', '101050901', '大庆');
INSERT INTO `tp_weather` VALUES ('132', '101050902', '林甸');
INSERT INTO `tp_weather` VALUES ('133', '101050903', '肇州');
INSERT INTO `tp_weather` VALUES ('134', '101050904', '肇源');
INSERT INTO `tp_weather` VALUES ('135', '101050905', '杜蒙');
INSERT INTO `tp_weather` VALUES ('136', '101051002', '七台河');
INSERT INTO `tp_weather` VALUES ('137', '101051003', '勃利');
INSERT INTO `tp_weather` VALUES ('138', '101051101', '鸡西');
INSERT INTO `tp_weather` VALUES ('139', '101051102', '虎林');
INSERT INTO `tp_weather` VALUES ('140', '101051103', '密山');
INSERT INTO `tp_weather` VALUES ('141', '101051104', '鸡东');
INSERT INTO `tp_weather` VALUES ('142', '101051201', '鹤岗');
INSERT INTO `tp_weather` VALUES ('143', '101051202', '绥滨');
INSERT INTO `tp_weather` VALUES ('144', '101051203', '萝北');
INSERT INTO `tp_weather` VALUES ('145', '101051301', '双鸭山');
INSERT INTO `tp_weather` VALUES ('146', '101051302', '集贤');
INSERT INTO `tp_weather` VALUES ('147', '101051303', '宝清');
INSERT INTO `tp_weather` VALUES ('148', '101051304', '饶河');
INSERT INTO `tp_weather` VALUES ('149', '101051305', '友谊');
INSERT INTO `tp_weather` VALUES ('150', '101060101', '长春');
INSERT INTO `tp_weather` VALUES ('151', '101060102', '农安');
INSERT INTO `tp_weather` VALUES ('152', '101060103', '德惠');
INSERT INTO `tp_weather` VALUES ('153', '101060104', '九台');
INSERT INTO `tp_weather` VALUES ('154', '101060105', '榆树');
INSERT INTO `tp_weather` VALUES ('155', '101060201', '吉林');
INSERT INTO `tp_weather` VALUES ('156', '101060202', '舒兰');
INSERT INTO `tp_weather` VALUES ('157', '101060203', '永吉');
INSERT INTO `tp_weather` VALUES ('158', '101060204', '蛟河');
INSERT INTO `tp_weather` VALUES ('159', '101060205', '磐石');
INSERT INTO `tp_weather` VALUES ('160', '101060206', '桦甸');
INSERT INTO `tp_weather` VALUES ('161', '101060302', '敦化');
INSERT INTO `tp_weather` VALUES ('162', '101060303', '安图');
INSERT INTO `tp_weather` VALUES ('163', '101060304', '汪清');
INSERT INTO `tp_weather` VALUES ('164', '101060305', '和龙');
INSERT INTO `tp_weather` VALUES ('165', '101060307', '龙井');
INSERT INTO `tp_weather` VALUES ('166', '101060308', '珲春');
INSERT INTO `tp_weather` VALUES ('167', '101060309', '图们');
INSERT INTO `tp_weather` VALUES ('168', '101060312', '延吉');
INSERT INTO `tp_weather` VALUES ('169', '101060401', '四平');
INSERT INTO `tp_weather` VALUES ('170', '101060402', '双辽');
INSERT INTO `tp_weather` VALUES ('171', '101060403', '梨树');
INSERT INTO `tp_weather` VALUES ('172', '101060404', '公主岭');
INSERT INTO `tp_weather` VALUES ('173', '101060405', '伊通');
INSERT INTO `tp_weather` VALUES ('174', '101060501', '通化');
INSERT INTO `tp_weather` VALUES ('175', '101060502', '梅河口');
INSERT INTO `tp_weather` VALUES ('176', '101060503', '柳河');
INSERT INTO `tp_weather` VALUES ('177', '101060504', '辉南');
INSERT INTO `tp_weather` VALUES ('178', '101060505', '集安');
INSERT INTO `tp_weather` VALUES ('179', '101060601', '白城');
INSERT INTO `tp_weather` VALUES ('180', '101060602', '洮南');
INSERT INTO `tp_weather` VALUES ('181', '101060603', '大安');
INSERT INTO `tp_weather` VALUES ('182', '101060604', '镇赉');
INSERT INTO `tp_weather` VALUES ('183', '101060605', '通榆');
INSERT INTO `tp_weather` VALUES ('184', '101060701', '辽源');
INSERT INTO `tp_weather` VALUES ('185', '101060702', '东丰');
INSERT INTO `tp_weather` VALUES ('186', '101060703', '东辽');
INSERT INTO `tp_weather` VALUES ('187', '101060801', '松原');
INSERT INTO `tp_weather` VALUES ('188', '101060802', '乾安');
INSERT INTO `tp_weather` VALUES ('189', '101060803', '前郭');
INSERT INTO `tp_weather` VALUES ('190', '101060804', '长岭');
INSERT INTO `tp_weather` VALUES ('191', '101060805', '扶余');
INSERT INTO `tp_weather` VALUES ('192', '101060901', '白山');
INSERT INTO `tp_weather` VALUES ('193', '101060902', '靖宇');
INSERT INTO `tp_weather` VALUES ('194', '101060903', '临江');
INSERT INTO `tp_weather` VALUES ('195', '101060905', '长白');
INSERT INTO `tp_weather` VALUES ('196', '101060906', '抚松');
INSERT INTO `tp_weather` VALUES ('197', '101060907', '江源');
INSERT INTO `tp_weather` VALUES ('198', '101070101', '沈阳');
INSERT INTO `tp_weather` VALUES ('199', '101070103', '辽中');
INSERT INTO `tp_weather` VALUES ('200', '101070104', '康平');
INSERT INTO `tp_weather` VALUES ('201', '101070105', '法库');
INSERT INTO `tp_weather` VALUES ('202', '101070106', '新民');
INSERT INTO `tp_weather` VALUES ('203', '101070201', '大连');
INSERT INTO `tp_weather` VALUES ('204', '101070202', '瓦房店');
INSERT INTO `tp_weather` VALUES ('205', '101070204', '普兰店');
INSERT INTO `tp_weather` VALUES ('206', '101070206', '长海');
INSERT INTO `tp_weather` VALUES ('207', '101070207', '庄河');
INSERT INTO `tp_weather` VALUES ('208', '101070301', '鞍山');
INSERT INTO `tp_weather` VALUES ('209', '101070302', '台安');
INSERT INTO `tp_weather` VALUES ('210', '101070303', '岫岩');
INSERT INTO `tp_weather` VALUES ('211', '101070304', '海城');
INSERT INTO `tp_weather` VALUES ('212', '101070401', '抚顺');
INSERT INTO `tp_weather` VALUES ('213', '101070402', '新宾');
INSERT INTO `tp_weather` VALUES ('214', '101070403', '清原');
INSERT INTO `tp_weather` VALUES ('215', '101070501', '本溪');
INSERT INTO `tp_weather` VALUES ('216', '101070504', '桓仁');
INSERT INTO `tp_weather` VALUES ('217', '101070601', '丹东');
INSERT INTO `tp_weather` VALUES ('218', '101070602', '凤城');
INSERT INTO `tp_weather` VALUES ('219', '101070603', '宽甸');
INSERT INTO `tp_weather` VALUES ('220', '101070604', '东港');
INSERT INTO `tp_weather` VALUES ('221', '101070701', '锦州');
INSERT INTO `tp_weather` VALUES ('222', '101070702', '凌海');
INSERT INTO `tp_weather` VALUES ('223', '101070704', '义县');
INSERT INTO `tp_weather` VALUES ('224', '101070705', '黑山');
INSERT INTO `tp_weather` VALUES ('225', '101070706', '北镇');
INSERT INTO `tp_weather` VALUES ('226', '101070801', '营口');
INSERT INTO `tp_weather` VALUES ('227', '101070802', '大石桥');
INSERT INTO `tp_weather` VALUES ('228', '101070803', '盖州');
INSERT INTO `tp_weather` VALUES ('229', '101070901', '阜新');
INSERT INTO `tp_weather` VALUES ('230', '101070902', '彰武');
INSERT INTO `tp_weather` VALUES ('231', '101071001', '辽阳');
INSERT INTO `tp_weather` VALUES ('232', '101071003', '灯塔');
INSERT INTO `tp_weather` VALUES ('233', '101071004', '弓长岭');
INSERT INTO `tp_weather` VALUES ('234', '101071101', '铁岭');
INSERT INTO `tp_weather` VALUES ('235', '101071102', '开原');
INSERT INTO `tp_weather` VALUES ('236', '101071103', '昌图');
INSERT INTO `tp_weather` VALUES ('237', '101071104', '西丰');
INSERT INTO `tp_weather` VALUES ('238', '101071105', '调兵山');
INSERT INTO `tp_weather` VALUES ('239', '101071201', '朝阳');
INSERT INTO `tp_weather` VALUES ('240', '101071203', '凌源');
INSERT INTO `tp_weather` VALUES ('241', '101071204', '喀左');
INSERT INTO `tp_weather` VALUES ('242', '101071205', '北票');
INSERT INTO `tp_weather` VALUES ('243', '101071207', '建平');
INSERT INTO `tp_weather` VALUES ('244', '101071301', '盘锦');
INSERT INTO `tp_weather` VALUES ('245', '101071302', '大洼');
INSERT INTO `tp_weather` VALUES ('246', '101071303', '盘山');
INSERT INTO `tp_weather` VALUES ('247', '101071401', '葫芦岛');
INSERT INTO `tp_weather` VALUES ('248', '101071402', '建昌');
INSERT INTO `tp_weather` VALUES ('249', '101071403', '绥中');
INSERT INTO `tp_weather` VALUES ('250', '101071404', '兴城');
INSERT INTO `tp_weather` VALUES ('251', '101080101', '呼和浩特');
INSERT INTO `tp_weather` VALUES ('252', '101080102', '土左');
INSERT INTO `tp_weather` VALUES ('253', '101080103', '托克托');
INSERT INTO `tp_weather` VALUES ('254', '101080104', '和林格尔');
INSERT INTO `tp_weather` VALUES ('255', '101080105', '清水河');
INSERT INTO `tp_weather` VALUES ('256', '101080107', '武川');
INSERT INTO `tp_weather` VALUES ('257', '101080201', '包头');
INSERT INTO `tp_weather` VALUES ('258', '101080202', '白云鄂博');
INSERT INTO `tp_weather` VALUES ('259', '101080204', '土右');
INSERT INTO `tp_weather` VALUES ('260', '101080205', '固阳');
INSERT INTO `tp_weather` VALUES ('261', '101080206', '达茂');
INSERT INTO `tp_weather` VALUES ('262', '101080301', '乌海');
INSERT INTO `tp_weather` VALUES ('263', '101080401', '乌兰察布');
INSERT INTO `tp_weather` VALUES ('264', '101080402', '卓资');
INSERT INTO `tp_weather` VALUES ('265', '101080403', '化德');
INSERT INTO `tp_weather` VALUES ('266', '101080404', '商都');
INSERT INTO `tp_weather` VALUES ('267', '101080406', '兴和');
INSERT INTO `tp_weather` VALUES ('268', '101080407', '凉城');
INSERT INTO `tp_weather` VALUES ('269', '101080408', '察右前');
INSERT INTO `tp_weather` VALUES ('270', '101080409', '察右中');
INSERT INTO `tp_weather` VALUES ('271', '101080410', '察右后');
INSERT INTO `tp_weather` VALUES ('272', '101080411', '四子王');
INSERT INTO `tp_weather` VALUES ('273', '101080412', '丰镇');
INSERT INTO `tp_weather` VALUES ('274', '101080501', '通辽');
INSERT INTO `tp_weather` VALUES ('275', '101080503', '科左中');
INSERT INTO `tp_weather` VALUES ('276', '101080504', '科左后');
INSERT INTO `tp_weather` VALUES ('277', '101080506', '开鲁');
INSERT INTO `tp_weather` VALUES ('278', '101080507', '库伦');
INSERT INTO `tp_weather` VALUES ('279', '101080508', '奈曼');
INSERT INTO `tp_weather` VALUES ('280', '101080509', '扎鲁特');
INSERT INTO `tp_weather` VALUES ('281', '101080601', '赤峰');
INSERT INTO `tp_weather` VALUES ('282', '101080603', '阿鲁');
INSERT INTO `tp_weather` VALUES ('283', '101080605', '巴林左');
INSERT INTO `tp_weather` VALUES ('284', '101080606', '巴林右');
INSERT INTO `tp_weather` VALUES ('285', '101080607', '林西');
INSERT INTO `tp_weather` VALUES ('286', '101080608', '克什');
INSERT INTO `tp_weather` VALUES ('287', '101080609', '翁牛特');
INSERT INTO `tp_weather` VALUES ('288', '101080611', '喀喇沁');
INSERT INTO `tp_weather` VALUES ('289', '101080613', '宁城');
INSERT INTO `tp_weather` VALUES ('290', '101080614', '敖汉');
INSERT INTO `tp_weather` VALUES ('291', '101080701', '鄂尔多斯');
INSERT INTO `tp_weather` VALUES ('292', '101080703', '达拉特');
INSERT INTO `tp_weather` VALUES ('293', '101080704', '准格尔');
INSERT INTO `tp_weather` VALUES ('294', '101080706', '河南');
INSERT INTO `tp_weather` VALUES ('295', '101080708', '鄂托克');
INSERT INTO `tp_weather` VALUES ('296', '101080709', '杭锦');
INSERT INTO `tp_weather` VALUES ('297', '101080710', '乌审');
INSERT INTO `tp_weather` VALUES ('298', '101080711', '伊金霍洛');
INSERT INTO `tp_weather` VALUES ('299', '101080801', '巴彦淖尔');
INSERT INTO `tp_weather` VALUES ('300', '101080802', '五原');
INSERT INTO `tp_weather` VALUES ('301', '101080803', '磴口');
INSERT INTO `tp_weather` VALUES ('302', '101080804', '乌前');
INSERT INTO `tp_weather` VALUES ('303', '101080806', '乌中');
INSERT INTO `tp_weather` VALUES ('304', '101080807', '乌后');
INSERT INTO `tp_weather` VALUES ('305', '101080810', '杭锦后');
INSERT INTO `tp_weather` VALUES ('306', '101080901', '锡林浩特');
INSERT INTO `tp_weather` VALUES ('307', '101080903', '二连浩特');
INSERT INTO `tp_weather` VALUES ('308', '101080904', '阿巴嘎');
INSERT INTO `tp_weather` VALUES ('309', '101080906', '苏左');
INSERT INTO `tp_weather` VALUES ('310', '101080907', '苏右');
INSERT INTO `tp_weather` VALUES ('311', '101080909', '东乌');
INSERT INTO `tp_weather` VALUES ('312', '101080910', '西乌');
INSERT INTO `tp_weather` VALUES ('313', '101080911', '太仆寺');
INSERT INTO `tp_weather` VALUES ('314', '101080912', '镶黄');
INSERT INTO `tp_weather` VALUES ('315', '101080913', '正镶白');
INSERT INTO `tp_weather` VALUES ('316', '101080914', '正蓝');
INSERT INTO `tp_weather` VALUES ('317', '101080915', '多伦');
INSERT INTO `tp_weather` VALUES ('318', '101081000', '呼伦贝尔');
INSERT INTO `tp_weather` VALUES ('319', '101081001', '海拉尔');
INSERT INTO `tp_weather` VALUES ('320', '101081003', '阿荣');
INSERT INTO `tp_weather` VALUES ('321', '101081004', '莫力达瓦');
INSERT INTO `tp_weather` VALUES ('322', '101081005', '鄂伦春');
INSERT INTO `tp_weather` VALUES ('323', '101081006', '鄂温克');
INSERT INTO `tp_weather` VALUES ('324', '101081007', '陈巴尔虎');
INSERT INTO `tp_weather` VALUES ('325', '101081008', '新左');
INSERT INTO `tp_weather` VALUES ('326', '101081009', '新右');
INSERT INTO `tp_weather` VALUES ('327', '101081010', '满洲里');
INSERT INTO `tp_weather` VALUES ('328', '101081011', '牙克石');
INSERT INTO `tp_weather` VALUES ('329', '101081012', '扎兰屯');
INSERT INTO `tp_weather` VALUES ('330', '101081014', '额尔古纳');
INSERT INTO `tp_weather` VALUES ('331', '101081015', '根河');
INSERT INTO `tp_weather` VALUES ('332', '101081101', '乌兰浩特');
INSERT INTO `tp_weather` VALUES ('333', '101081102', '阿尔山');
INSERT INTO `tp_weather` VALUES ('334', '101081103', '科右中');
INSERT INTO `tp_weather` VALUES ('335', '101081105', '扎赉特');
INSERT INTO `tp_weather` VALUES ('336', '101081107', '突泉');
INSERT INTO `tp_weather` VALUES ('337', '101081108', '霍林郭勒');
INSERT INTO `tp_weather` VALUES ('338', '101081109', '科右前');
INSERT INTO `tp_weather` VALUES ('339', '101081201', '阿拉善');
INSERT INTO `tp_weather` VALUES ('340', '101081202', '阿右');
INSERT INTO `tp_weather` VALUES ('341', '101081203', '额济纳');
INSERT INTO `tp_weather` VALUES ('342', '101090101', '石家庄');
INSERT INTO `tp_weather` VALUES ('343', '101090102', '井陉');
INSERT INTO `tp_weather` VALUES ('344', '101090103', '正定');
INSERT INTO `tp_weather` VALUES ('345', '101090104', '栾城');
INSERT INTO `tp_weather` VALUES ('346', '101090105', '行唐');
INSERT INTO `tp_weather` VALUES ('347', '101090106', '灵寿');
INSERT INTO `tp_weather` VALUES ('348', '101090107', '高邑');
INSERT INTO `tp_weather` VALUES ('349', '101090108', '深泽');
INSERT INTO `tp_weather` VALUES ('350', '101090109', '赞皇');
INSERT INTO `tp_weather` VALUES ('351', '101090110', '无极');
INSERT INTO `tp_weather` VALUES ('352', '101090111', '平山');
INSERT INTO `tp_weather` VALUES ('353', '101090112', '元氏');
INSERT INTO `tp_weather` VALUES ('354', '101090113', '赵县');
INSERT INTO `tp_weather` VALUES ('355', '101090114', '辛集');
INSERT INTO `tp_weather` VALUES ('356', '101090115', '藁城');
INSERT INTO `tp_weather` VALUES ('357', '101090116', '晋州');
INSERT INTO `tp_weather` VALUES ('358', '101090117', '新乐');
INSERT INTO `tp_weather` VALUES ('359', '101090118', '鹿泉');
INSERT INTO `tp_weather` VALUES ('360', '101090201', '保定');
INSERT INTO `tp_weather` VALUES ('361', '101090202', '满城');
INSERT INTO `tp_weather` VALUES ('362', '101090203', '阜平');
INSERT INTO `tp_weather` VALUES ('363', '101090204', '徐水');
INSERT INTO `tp_weather` VALUES ('364', '101090205', '唐县');
INSERT INTO `tp_weather` VALUES ('365', '101090206', '高阳');
INSERT INTO `tp_weather` VALUES ('366', '101090207', '容城');
INSERT INTO `tp_weather` VALUES ('367', '101090209', '涞源');
INSERT INTO `tp_weather` VALUES ('368', '101090210', '望都');
INSERT INTO `tp_weather` VALUES ('369', '101090211', '安新');
INSERT INTO `tp_weather` VALUES ('370', '101090212', '易县');
INSERT INTO `tp_weather` VALUES ('371', '101090214', '曲阳');
INSERT INTO `tp_weather` VALUES ('372', '101090215', '蠡县');
INSERT INTO `tp_weather` VALUES ('373', '101090216', '顺平');
INSERT INTO `tp_weather` VALUES ('374', '101090217', '雄县');
INSERT INTO `tp_weather` VALUES ('375', '101090218', '涿州');
INSERT INTO `tp_weather` VALUES ('376', '101090219', '定州');
INSERT INTO `tp_weather` VALUES ('377', '101090220', '安国');
INSERT INTO `tp_weather` VALUES ('378', '101090221', '高碑店');
INSERT INTO `tp_weather` VALUES ('379', '101090222', '涞水');
INSERT INTO `tp_weather` VALUES ('380', '101090223', '定兴');
INSERT INTO `tp_weather` VALUES ('381', '101090224', '清苑');
INSERT INTO `tp_weather` VALUES ('382', '101090225', '博野');
INSERT INTO `tp_weather` VALUES ('383', '101090301', '张家口');
INSERT INTO `tp_weather` VALUES ('384', '101090302', '宣化');
INSERT INTO `tp_weather` VALUES ('385', '101090303', '张北');
INSERT INTO `tp_weather` VALUES ('386', '101090304', '康保');
INSERT INTO `tp_weather` VALUES ('387', '101090305', '沽源');
INSERT INTO `tp_weather` VALUES ('388', '101090306', '尚义');
INSERT INTO `tp_weather` VALUES ('389', '101090307', '蔚县');
INSERT INTO `tp_weather` VALUES ('390', '101090308', '阳原');
INSERT INTO `tp_weather` VALUES ('391', '101090309', '怀安');
INSERT INTO `tp_weather` VALUES ('392', '101090310', '万全');
INSERT INTO `tp_weather` VALUES ('393', '101090311', '怀来');
INSERT INTO `tp_weather` VALUES ('394', '101090312', '涿鹿');
INSERT INTO `tp_weather` VALUES ('395', '101090313', '赤城');
INSERT INTO `tp_weather` VALUES ('396', '101090314', '崇礼');
INSERT INTO `tp_weather` VALUES ('397', '101090402', '承德');
INSERT INTO `tp_weather` VALUES ('398', '101090404', '兴隆');
INSERT INTO `tp_weather` VALUES ('399', '101090405', '平泉');
INSERT INTO `tp_weather` VALUES ('400', '101090406', '滦平');
INSERT INTO `tp_weather` VALUES ('401', '101090407', '隆化');
INSERT INTO `tp_weather` VALUES ('402', '101090408', '丰宁');
INSERT INTO `tp_weather` VALUES ('403', '101090409', '宽城');
INSERT INTO `tp_weather` VALUES ('404', '101090410', '围场');
INSERT INTO `tp_weather` VALUES ('405', '101090501', '唐山');
INSERT INTO `tp_weather` VALUES ('406', '101090502', '丰南');
INSERT INTO `tp_weather` VALUES ('407', '101090503', '丰润');
INSERT INTO `tp_weather` VALUES ('408', '101090504', '滦县');
INSERT INTO `tp_weather` VALUES ('409', '101090505', '滦南');
INSERT INTO `tp_weather` VALUES ('410', '101090506', '乐亭');
INSERT INTO `tp_weather` VALUES ('411', '101090507', '迁西');
INSERT INTO `tp_weather` VALUES ('412', '101090508', '玉田');
INSERT INTO `tp_weather` VALUES ('413', '101090509', '唐海');
INSERT INTO `tp_weather` VALUES ('414', '101090510', '遵化');
INSERT INTO `tp_weather` VALUES ('415', '101090511', '迁安');
INSERT INTO `tp_weather` VALUES ('416', '101090512', '曹妃甸');
INSERT INTO `tp_weather` VALUES ('417', '101090601', '廊坊');
INSERT INTO `tp_weather` VALUES ('418', '101090602', '固安');
INSERT INTO `tp_weather` VALUES ('419', '101090603', '永清');
INSERT INTO `tp_weather` VALUES ('420', '101090604', '香河');
INSERT INTO `tp_weather` VALUES ('421', '101090605', '大城');
INSERT INTO `tp_weather` VALUES ('422', '101090606', '文安');
INSERT INTO `tp_weather` VALUES ('423', '101090607', '大厂');
INSERT INTO `tp_weather` VALUES ('424', '101090608', '霸州');
INSERT INTO `tp_weather` VALUES ('425', '101090609', '三河');
INSERT INTO `tp_weather` VALUES ('426', '101090701', '沧州');
INSERT INTO `tp_weather` VALUES ('427', '101090702', '青县');
INSERT INTO `tp_weather` VALUES ('428', '101090703', '东光');
INSERT INTO `tp_weather` VALUES ('429', '101090704', '海兴');
INSERT INTO `tp_weather` VALUES ('430', '101090705', '盐山');
INSERT INTO `tp_weather` VALUES ('431', '101090706', '肃宁');
INSERT INTO `tp_weather` VALUES ('432', '101090707', '南皮');
INSERT INTO `tp_weather` VALUES ('433', '101090708', '吴桥');
INSERT INTO `tp_weather` VALUES ('434', '101090709', '献县');
INSERT INTO `tp_weather` VALUES ('435', '101090710', '孟村');
INSERT INTO `tp_weather` VALUES ('436', '101090711', '泊头');
INSERT INTO `tp_weather` VALUES ('437', '101090712', '任丘');
INSERT INTO `tp_weather` VALUES ('438', '101090713', '黄骅');
INSERT INTO `tp_weather` VALUES ('439', '101090714', '河间');
INSERT INTO `tp_weather` VALUES ('440', '101090716', '沧县');
INSERT INTO `tp_weather` VALUES ('441', '101090801', '衡水');
INSERT INTO `tp_weather` VALUES ('442', '101090802', '枣强');
INSERT INTO `tp_weather` VALUES ('443', '101090803', '武邑');
INSERT INTO `tp_weather` VALUES ('444', '101090804', '武强');
INSERT INTO `tp_weather` VALUES ('445', '101090805', '饶阳');
INSERT INTO `tp_weather` VALUES ('446', '101090806', '安平');
INSERT INTO `tp_weather` VALUES ('447', '101090807', '故城');
INSERT INTO `tp_weather` VALUES ('448', '101090808', '景县');
INSERT INTO `tp_weather` VALUES ('449', '101090809', '阜城');
INSERT INTO `tp_weather` VALUES ('450', '101090810', '冀州');
INSERT INTO `tp_weather` VALUES ('451', '101090811', '深州');
INSERT INTO `tp_weather` VALUES ('452', '101090901', '邢台');
INSERT INTO `tp_weather` VALUES ('453', '101090902', '临城');
INSERT INTO `tp_weather` VALUES ('454', '101090905', '柏乡');
INSERT INTO `tp_weather` VALUES ('455', '101090906', '隆尧');
INSERT INTO `tp_weather` VALUES ('456', '101090907', '南和');
INSERT INTO `tp_weather` VALUES ('457', '101090908', '宁晋');
INSERT INTO `tp_weather` VALUES ('458', '101090909', '巨鹿');
INSERT INTO `tp_weather` VALUES ('459', '101090910', '新河');
INSERT INTO `tp_weather` VALUES ('460', '101090911', '广宗');
INSERT INTO `tp_weather` VALUES ('461', '101090912', '平乡');
INSERT INTO `tp_weather` VALUES ('462', '101090913', '威县');
INSERT INTO `tp_weather` VALUES ('463', '101090914', '清河');
INSERT INTO `tp_weather` VALUES ('464', '101090915', '临西');
INSERT INTO `tp_weather` VALUES ('465', '101090916', '南宫');
INSERT INTO `tp_weather` VALUES ('466', '101090917', '沙河');
INSERT INTO `tp_weather` VALUES ('467', '101090918', '任县');
INSERT INTO `tp_weather` VALUES ('468', '101090919', '内丘');
INSERT INTO `tp_weather` VALUES ('469', '101091001', '邯郸');
INSERT INTO `tp_weather` VALUES ('470', '101091002', '峰峰矿');
INSERT INTO `tp_weather` VALUES ('471', '101091003', '临漳');
INSERT INTO `tp_weather` VALUES ('472', '101091004', '成安');
INSERT INTO `tp_weather` VALUES ('473', '101091005', '大名');
INSERT INTO `tp_weather` VALUES ('474', '101091006', '涉县');
INSERT INTO `tp_weather` VALUES ('475', '101091007', '磁县');
INSERT INTO `tp_weather` VALUES ('476', '101091008', '肥乡');
INSERT INTO `tp_weather` VALUES ('477', '101091009', '永年');
INSERT INTO `tp_weather` VALUES ('478', '101091010', '邱县');
INSERT INTO `tp_weather` VALUES ('479', '101091011', '鸡泽');
INSERT INTO `tp_weather` VALUES ('480', '101091012', '广平');
INSERT INTO `tp_weather` VALUES ('481', '101091013', '馆陶');
INSERT INTO `tp_weather` VALUES ('482', '101091014', '魏县');
INSERT INTO `tp_weather` VALUES ('483', '101091015', '曲周');
INSERT INTO `tp_weather` VALUES ('484', '101091016', '武安');
INSERT INTO `tp_weather` VALUES ('485', '101091101', '秦皇岛');
INSERT INTO `tp_weather` VALUES ('486', '101091102', '青龙');
INSERT INTO `tp_weather` VALUES ('487', '101091103', '昌黎');
INSERT INTO `tp_weather` VALUES ('488', '101091104', '抚宁');
INSERT INTO `tp_weather` VALUES ('489', '101091105', '卢龙');
INSERT INTO `tp_weather` VALUES ('490', '101100101', '河北');
INSERT INTO `tp_weather` VALUES ('491', '101100102', '清徐');
INSERT INTO `tp_weather` VALUES ('492', '101100103', '阳曲');
INSERT INTO `tp_weather` VALUES ('493', '101100104', '娄烦');
INSERT INTO `tp_weather` VALUES ('494', '101100105', '古交');
INSERT INTO `tp_weather` VALUES ('495', '101100201', '大同');
INSERT INTO `tp_weather` VALUES ('496', '101100202', '阳高');
INSERT INTO `tp_weather` VALUES ('497', '101100204', '天镇');
INSERT INTO `tp_weather` VALUES ('498', '101100205', '广灵');
INSERT INTO `tp_weather` VALUES ('499', '101100206', '灵丘');
INSERT INTO `tp_weather` VALUES ('500', '101100207', '浑源');
INSERT INTO `tp_weather` VALUES ('501', '101100208', '左云');
INSERT INTO `tp_weather` VALUES ('502', '101100301', '阳泉');
INSERT INTO `tp_weather` VALUES ('503', '101100302', '盂县');
INSERT INTO `tp_weather` VALUES ('504', '101100303', '平定');
INSERT INTO `tp_weather` VALUES ('505', '101100401', '晋中');
INSERT INTO `tp_weather` VALUES ('506', '101100403', '榆社');
INSERT INTO `tp_weather` VALUES ('507', '101100404', '左权');
INSERT INTO `tp_weather` VALUES ('508', '101100405', '和顺');
INSERT INTO `tp_weather` VALUES ('509', '101100406', '昔阳');
INSERT INTO `tp_weather` VALUES ('510', '101100407', '寿阳');
INSERT INTO `tp_weather` VALUES ('511', '101100408', '太谷');
INSERT INTO `tp_weather` VALUES ('512', '101100409', '祁县');
INSERT INTO `tp_weather` VALUES ('513', '101100410', '平遥');
INSERT INTO `tp_weather` VALUES ('514', '101100411', '灵石');
INSERT INTO `tp_weather` VALUES ('515', '101100412', '介休');
INSERT INTO `tp_weather` VALUES ('516', '101100501', '长治');
INSERT INTO `tp_weather` VALUES ('517', '101100502', '黎城');
INSERT INTO `tp_weather` VALUES ('518', '101100503', '屯留');
INSERT INTO `tp_weather` VALUES ('519', '101100504', '潞城');
INSERT INTO `tp_weather` VALUES ('520', '101100505', '襄垣');
INSERT INTO `tp_weather` VALUES ('521', '101100506', '平顺');
INSERT INTO `tp_weather` VALUES ('522', '101100507', '武乡');
INSERT INTO `tp_weather` VALUES ('523', '101100508', '沁县');
INSERT INTO `tp_weather` VALUES ('524', '101100509', '长子');
INSERT INTO `tp_weather` VALUES ('525', '101100510', '沁源');
INSERT INTO `tp_weather` VALUES ('526', '101100511', '壶关');
INSERT INTO `tp_weather` VALUES ('527', '101100601', '晋城');
INSERT INTO `tp_weather` VALUES ('528', '101100602', '沁水');
INSERT INTO `tp_weather` VALUES ('529', '101100603', '阳城');
INSERT INTO `tp_weather` VALUES ('530', '101100604', '陵川');
INSERT INTO `tp_weather` VALUES ('531', '101100605', '高平');
INSERT INTO `tp_weather` VALUES ('532', '101100606', '泽州');
INSERT INTO `tp_weather` VALUES ('533', '101100701', '临汾');
INSERT INTO `tp_weather` VALUES ('534', '101100702', '曲沃');
INSERT INTO `tp_weather` VALUES ('535', '101100703', '永和');
INSERT INTO `tp_weather` VALUES ('536', '101100704', '隰县');
INSERT INTO `tp_weather` VALUES ('537', '101100705', '大宁');
INSERT INTO `tp_weather` VALUES ('538', '101100706', '吉县');
INSERT INTO `tp_weather` VALUES ('539', '101100707', '襄汾');
INSERT INTO `tp_weather` VALUES ('540', '101100708', '蒲县');
INSERT INTO `tp_weather` VALUES ('541', '101100709', '汾西');
INSERT INTO `tp_weather` VALUES ('542', '101100710', '洪洞');
INSERT INTO `tp_weather` VALUES ('543', '101100711', '霍州');
INSERT INTO `tp_weather` VALUES ('544', '101100712', '乡宁');
INSERT INTO `tp_weather` VALUES ('545', '101100713', '翼城');
INSERT INTO `tp_weather` VALUES ('546', '101100714', '侯马');
INSERT INTO `tp_weather` VALUES ('547', '101100715', '浮山');
INSERT INTO `tp_weather` VALUES ('548', '101100716', '安泽');
INSERT INTO `tp_weather` VALUES ('549', '101100717', '古县');
INSERT INTO `tp_weather` VALUES ('550', '101100801', '运城');
INSERT INTO `tp_weather` VALUES ('551', '101100802', '临猗');
INSERT INTO `tp_weather` VALUES ('552', '101100803', '稷山');
INSERT INTO `tp_weather` VALUES ('553', '101100804', '万荣');
INSERT INTO `tp_weather` VALUES ('554', '101100805', '河津');
INSERT INTO `tp_weather` VALUES ('555', '101100806', '新绛');
INSERT INTO `tp_weather` VALUES ('556', '101100807', '绛县');
INSERT INTO `tp_weather` VALUES ('557', '101100808', '闻喜');
INSERT INTO `tp_weather` VALUES ('558', '101100809', '垣曲');
INSERT INTO `tp_weather` VALUES ('559', '101100810', '永济');
INSERT INTO `tp_weather` VALUES ('560', '101100811', '芮城');
INSERT INTO `tp_weather` VALUES ('561', '101100812', '夏县');
INSERT INTO `tp_weather` VALUES ('562', '101100813', '平陆');
INSERT INTO `tp_weather` VALUES ('563', '101100901', '朔州');
INSERT INTO `tp_weather` VALUES ('564', '101100903', '山阴');
INSERT INTO `tp_weather` VALUES ('565', '101100904', '右玉');
INSERT INTO `tp_weather` VALUES ('566', '101100905', '应县');
INSERT INTO `tp_weather` VALUES ('567', '101100906', '怀仁');
INSERT INTO `tp_weather` VALUES ('568', '101101001', '忻州');
INSERT INTO `tp_weather` VALUES ('569', '101101002', '定襄');
INSERT INTO `tp_weather` VALUES ('570', '101101003', '五台');
INSERT INTO `tp_weather` VALUES ('571', '101101004', '河曲');
INSERT INTO `tp_weather` VALUES ('572', '101101005', '偏关');
INSERT INTO `tp_weather` VALUES ('573', '101101006', '神池');
INSERT INTO `tp_weather` VALUES ('574', '101101007', '宁武');
INSERT INTO `tp_weather` VALUES ('575', '101101008', '代县');
INSERT INTO `tp_weather` VALUES ('576', '101101009', '繁峙');
INSERT INTO `tp_weather` VALUES ('577', '101101011', '保德');
INSERT INTO `tp_weather` VALUES ('578', '101101012', '静乐');
INSERT INTO `tp_weather` VALUES ('579', '101101013', '岢岚');
INSERT INTO `tp_weather` VALUES ('580', '101101014', '五寨');
INSERT INTO `tp_weather` VALUES ('581', '101101015', '原平');
INSERT INTO `tp_weather` VALUES ('582', '101101100', '吕梁');
INSERT INTO `tp_weather` VALUES ('583', '101101101', '离石');
INSERT INTO `tp_weather` VALUES ('584', '101101102', '临县');
INSERT INTO `tp_weather` VALUES ('585', '101101103', '兴县');
INSERT INTO `tp_weather` VALUES ('586', '101101104', '岚县');
INSERT INTO `tp_weather` VALUES ('587', '101101105', '柳林');
INSERT INTO `tp_weather` VALUES ('588', '101101106', '石楼');
INSERT INTO `tp_weather` VALUES ('589', '101101107', '方山');
INSERT INTO `tp_weather` VALUES ('590', '101101108', '交口');
INSERT INTO `tp_weather` VALUES ('591', '101101109', '中阳');
INSERT INTO `tp_weather` VALUES ('592', '101101110', '孝义');
INSERT INTO `tp_weather` VALUES ('593', '101101111', '汾阳');
INSERT INTO `tp_weather` VALUES ('594', '101101112', '文水');
INSERT INTO `tp_weather` VALUES ('595', '101101113', '交城');
INSERT INTO `tp_weather` VALUES ('596', '101110101', '西安');
INSERT INTO `tp_weather` VALUES ('597', '101110102', '长安');
INSERT INTO `tp_weather` VALUES ('598', '101110104', '蓝田');
INSERT INTO `tp_weather` VALUES ('599', '101110105', '周至');
INSERT INTO `tp_weather` VALUES ('600', '101110106', '户县');
INSERT INTO `tp_weather` VALUES ('601', '101110107', '高陵');
INSERT INTO `tp_weather` VALUES ('602', '101110200', '咸阳');
INSERT INTO `tp_weather` VALUES ('603', '101110201', '三原');
INSERT INTO `tp_weather` VALUES ('604', '101110202', '礼泉');
INSERT INTO `tp_weather` VALUES ('605', '101110203', '永寿');
INSERT INTO `tp_weather` VALUES ('606', '101110204', '淳化');
INSERT INTO `tp_weather` VALUES ('607', '101110205', '泾阳');
INSERT INTO `tp_weather` VALUES ('608', '101110206', '武功');
INSERT INTO `tp_weather` VALUES ('609', '101110207', '乾县');
INSERT INTO `tp_weather` VALUES ('610', '101110208', '彬县');
INSERT INTO `tp_weather` VALUES ('611', '101110209', '长武');
INSERT INTO `tp_weather` VALUES ('612', '101110210', '旬邑');
INSERT INTO `tp_weather` VALUES ('613', '101110211', '兴平');
INSERT INTO `tp_weather` VALUES ('614', '101110300', '延安');
INSERT INTO `tp_weather` VALUES ('615', '101110401', '榆林');
INSERT INTO `tp_weather` VALUES ('616', '101110402', '府谷');
INSERT INTO `tp_weather` VALUES ('617', '101110403', '神木');
INSERT INTO `tp_weather` VALUES ('618', '101110404', '佳县');
INSERT INTO `tp_weather` VALUES ('619', '101110405', '定边');
INSERT INTO `tp_weather` VALUES ('620', '101110406', '靖边');
INSERT INTO `tp_weather` VALUES ('621', '101110407', '横山');
INSERT INTO `tp_weather` VALUES ('622', '101110408', '米脂');
INSERT INTO `tp_weather` VALUES ('623', '101110409', '子洲');
INSERT INTO `tp_weather` VALUES ('624', '101110410', '绥德');
INSERT INTO `tp_weather` VALUES ('625', '101110411', '吴堡');
INSERT INTO `tp_weather` VALUES ('626', '101110412', '清涧');
INSERT INTO `tp_weather` VALUES ('627', '101110501', '渭南');
INSERT INTO `tp_weather` VALUES ('628', '101110502', '华县');
INSERT INTO `tp_weather` VALUES ('629', '101110503', '潼关');
INSERT INTO `tp_weather` VALUES ('630', '101110504', '大荔');
INSERT INTO `tp_weather` VALUES ('631', '101110505', '白水');
INSERT INTO `tp_weather` VALUES ('632', '101110506', '富平');
INSERT INTO `tp_weather` VALUES ('633', '101110507', '蒲城');
INSERT INTO `tp_weather` VALUES ('634', '101110508', '澄城');
INSERT INTO `tp_weather` VALUES ('635', '101110509', '合阳');
INSERT INTO `tp_weather` VALUES ('636', '101110510', '韩城');
INSERT INTO `tp_weather` VALUES ('637', '101110511', '华阴');
INSERT INTO `tp_weather` VALUES ('638', '101110601', '商洛');
INSERT INTO `tp_weather` VALUES ('639', '101110602', '洛南');
INSERT INTO `tp_weather` VALUES ('640', '101110603', '柞水');
INSERT INTO `tp_weather` VALUES ('641', '101110604', '商州');
INSERT INTO `tp_weather` VALUES ('642', '101110605', '镇安');
INSERT INTO `tp_weather` VALUES ('643', '101110606', '丹凤');
INSERT INTO `tp_weather` VALUES ('644', '101110607', '商南');
INSERT INTO `tp_weather` VALUES ('645', '101110608', '山阳');
INSERT INTO `tp_weather` VALUES ('646', '101110701', '安康');
INSERT INTO `tp_weather` VALUES ('647', '101110702', '紫阳');
INSERT INTO `tp_weather` VALUES ('648', '101110703', '石泉');
INSERT INTO `tp_weather` VALUES ('649', '101110704', '汉阴');
INSERT INTO `tp_weather` VALUES ('650', '101110705', '旬阳');
INSERT INTO `tp_weather` VALUES ('651', '101110706', '岚皋');
INSERT INTO `tp_weather` VALUES ('652', '101110707', '平利');
INSERT INTO `tp_weather` VALUES ('653', '101110708', '白河');
INSERT INTO `tp_weather` VALUES ('654', '101110709', '镇坪');
INSERT INTO `tp_weather` VALUES ('655', '101110710', '宁陕');
INSERT INTO `tp_weather` VALUES ('656', '101110801', '汉中');
INSERT INTO `tp_weather` VALUES ('657', '101110802', '略阳');
INSERT INTO `tp_weather` VALUES ('658', '101110803', '勉县');
INSERT INTO `tp_weather` VALUES ('659', '101110804', '留坝');
INSERT INTO `tp_weather` VALUES ('660', '101110805', '洋县');
INSERT INTO `tp_weather` VALUES ('661', '101110806', '城固');
INSERT INTO `tp_weather` VALUES ('662', '101110807', '西乡');
INSERT INTO `tp_weather` VALUES ('663', '101110808', '佛坪');
INSERT INTO `tp_weather` VALUES ('664', '101110809', '宁强');
INSERT INTO `tp_weather` VALUES ('665', '101110810', '南郑');
INSERT INTO `tp_weather` VALUES ('666', '101110811', '镇巴');
INSERT INTO `tp_weather` VALUES ('667', '101110901', '宝鸡');
INSERT INTO `tp_weather` VALUES ('668', '101110903', '千阳');
INSERT INTO `tp_weather` VALUES ('669', '101110904', '麟游');
INSERT INTO `tp_weather` VALUES ('670', '101110905', '岐山');
INSERT INTO `tp_weather` VALUES ('671', '101110906', '凤翔');
INSERT INTO `tp_weather` VALUES ('672', '101110907', '扶风');
INSERT INTO `tp_weather` VALUES ('673', '101110908', '眉县');
INSERT INTO `tp_weather` VALUES ('674', '101110909', '太白');
INSERT INTO `tp_weather` VALUES ('675', '101110910', '凤县');
INSERT INTO `tp_weather` VALUES ('676', '101110911', '陇县');
INSERT INTO `tp_weather` VALUES ('677', '101111001', '铜川');
INSERT INTO `tp_weather` VALUES ('678', '101111003', '宜君');
INSERT INTO `tp_weather` VALUES ('679', '101111101', '杨凌');
INSERT INTO `tp_weather` VALUES ('680', '101120101', '济南');
INSERT INTO `tp_weather` VALUES ('681', '101120103', '商河');
INSERT INTO `tp_weather` VALUES ('682', '101120104', '章丘');
INSERT INTO `tp_weather` VALUES ('683', '101120105', '平阴');
INSERT INTO `tp_weather` VALUES ('684', '101120106', '济阳');
INSERT INTO `tp_weather` VALUES ('685', '101120201', '青岛');
INSERT INTO `tp_weather` VALUES ('686', '101120204', '即墨');
INSERT INTO `tp_weather` VALUES ('687', '101120205', '胶州');
INSERT INTO `tp_weather` VALUES ('688', '101120206', '胶南');
INSERT INTO `tp_weather` VALUES ('689', '101120207', '莱西');
INSERT INTO `tp_weather` VALUES ('690', '101120208', '平度');
INSERT INTO `tp_weather` VALUES ('691', '101120301', '淄博');
INSERT INTO `tp_weather` VALUES ('692', '101120304', '高青');
INSERT INTO `tp_weather` VALUES ('693', '101120306', '沂源');
INSERT INTO `tp_weather` VALUES ('694', '101120307', '桓台');
INSERT INTO `tp_weather` VALUES ('695', '101120401', '德州');
INSERT INTO `tp_weather` VALUES ('696', '101120402', '武城');
INSERT INTO `tp_weather` VALUES ('697', '101120403', '临邑');
INSERT INTO `tp_weather` VALUES ('698', '101120404', '陵县');
INSERT INTO `tp_weather` VALUES ('699', '101120405', '齐河');
INSERT INTO `tp_weather` VALUES ('700', '101120406', '乐陵');
INSERT INTO `tp_weather` VALUES ('701', '101120407', '庆云');
INSERT INTO `tp_weather` VALUES ('702', '101120408', '平原');
INSERT INTO `tp_weather` VALUES ('703', '101120409', '宁津');
INSERT INTO `tp_weather` VALUES ('704', '101120410', '夏津');
INSERT INTO `tp_weather` VALUES ('705', '101120411', '禹城');
INSERT INTO `tp_weather` VALUES ('706', '101120501', '烟台');
INSERT INTO `tp_weather` VALUES ('707', '101120502', '莱州');
INSERT INTO `tp_weather` VALUES ('708', '101120503', '长岛');
INSERT INTO `tp_weather` VALUES ('709', '101120504', '蓬莱');
INSERT INTO `tp_weather` VALUES ('710', '101120505', '龙口');
INSERT INTO `tp_weather` VALUES ('711', '101120506', '招远');
INSERT INTO `tp_weather` VALUES ('712', '101120507', '栖霞');
INSERT INTO `tp_weather` VALUES ('713', '101120510', '莱阳');
INSERT INTO `tp_weather` VALUES ('714', '101120511', '海阳');
INSERT INTO `tp_weather` VALUES ('715', '101120601', '潍坊');
INSERT INTO `tp_weather` VALUES ('716', '101120602', '青州');
INSERT INTO `tp_weather` VALUES ('717', '101120603', '寿光');
INSERT INTO `tp_weather` VALUES ('718', '101120604', '临朐');
INSERT INTO `tp_weather` VALUES ('719', '101120605', '昌乐');
INSERT INTO `tp_weather` VALUES ('720', '101120606', '昌邑');
INSERT INTO `tp_weather` VALUES ('721', '101120607', '安丘');
INSERT INTO `tp_weather` VALUES ('722', '101120608', '高密');
INSERT INTO `tp_weather` VALUES ('723', '101120609', '诸城');
INSERT INTO `tp_weather` VALUES ('724', '101120701', '济宁');
INSERT INTO `tp_weather` VALUES ('725', '101120702', '嘉祥');
INSERT INTO `tp_weather` VALUES ('726', '101120703', '微山');
INSERT INTO `tp_weather` VALUES ('727', '101120704', '鱼台');
INSERT INTO `tp_weather` VALUES ('728', '101120705', '兖州');
INSERT INTO `tp_weather` VALUES ('729', '101120706', '金乡');
INSERT INTO `tp_weather` VALUES ('730', '101120707', '汶上');
INSERT INTO `tp_weather` VALUES ('731', '101120708', '泗水');
INSERT INTO `tp_weather` VALUES ('732', '101120709', '梁山');
INSERT INTO `tp_weather` VALUES ('733', '101120710', '曲阜');
INSERT INTO `tp_weather` VALUES ('734', '101120711', '邹城');
INSERT INTO `tp_weather` VALUES ('735', '101120801', '泰安');
INSERT INTO `tp_weather` VALUES ('736', '101120802', '新泰');
INSERT INTO `tp_weather` VALUES ('737', '101120804', '肥城');
INSERT INTO `tp_weather` VALUES ('738', '101120805', '东平');
INSERT INTO `tp_weather` VALUES ('739', '101120806', '宁阳');
INSERT INTO `tp_weather` VALUES ('740', '101120901', '临沂');
INSERT INTO `tp_weather` VALUES ('741', '101120902', '莒南');
INSERT INTO `tp_weather` VALUES ('742', '101120903', '沂南');
INSERT INTO `tp_weather` VALUES ('743', '101120904', '苍山');
INSERT INTO `tp_weather` VALUES ('744', '101120905', '临沭');
INSERT INTO `tp_weather` VALUES ('745', '101120906', '郯城');
INSERT INTO `tp_weather` VALUES ('746', '101120907', '蒙阴');
INSERT INTO `tp_weather` VALUES ('747', '101120908', '平邑');
INSERT INTO `tp_weather` VALUES ('748', '101120909', '费县');
INSERT INTO `tp_weather` VALUES ('749', '101120910', '沂水');
INSERT INTO `tp_weather` VALUES ('750', '101121001', '菏泽');
INSERT INTO `tp_weather` VALUES ('751', '101121002', '鄄城');
INSERT INTO `tp_weather` VALUES ('752', '101121003', '郓城');
INSERT INTO `tp_weather` VALUES ('753', '101121004', '东明');
INSERT INTO `tp_weather` VALUES ('754', '101121005', '定陶');
INSERT INTO `tp_weather` VALUES ('755', '101121006', '巨野');
INSERT INTO `tp_weather` VALUES ('756', '101121007', '曹县');
INSERT INTO `tp_weather` VALUES ('757', '101121008', '成武');
INSERT INTO `tp_weather` VALUES ('758', '101121009', '单县');
INSERT INTO `tp_weather` VALUES ('759', '101121101', '滨州');
INSERT INTO `tp_weather` VALUES ('760', '101121102', '博兴');
INSERT INTO `tp_weather` VALUES ('761', '101121103', '无棣');
INSERT INTO `tp_weather` VALUES ('762', '101121104', '阳信');
INSERT INTO `tp_weather` VALUES ('763', '101121105', '惠民');
INSERT INTO `tp_weather` VALUES ('764', '101121106', '沾化');
INSERT INTO `tp_weather` VALUES ('765', '101121107', '邹平');
INSERT INTO `tp_weather` VALUES ('766', '101121201', '东营');
INSERT INTO `tp_weather` VALUES ('767', '101121203', '垦利');
INSERT INTO `tp_weather` VALUES ('768', '101121204', '利津');
INSERT INTO `tp_weather` VALUES ('769', '101121205', '广饶');
INSERT INTO `tp_weather` VALUES ('770', '101121301', '威海');
INSERT INTO `tp_weather` VALUES ('771', '101121302', '文登');
INSERT INTO `tp_weather` VALUES ('772', '101121303', '荣成');
INSERT INTO `tp_weather` VALUES ('773', '101121304', '乳山');
INSERT INTO `tp_weather` VALUES ('774', '101121401', '枣庄');
INSERT INTO `tp_weather` VALUES ('775', '101121405', '滕州');
INSERT INTO `tp_weather` VALUES ('776', '101121501', '日照');
INSERT INTO `tp_weather` VALUES ('777', '101121502', '五莲');
INSERT INTO `tp_weather` VALUES ('778', '101121503', '莒县');
INSERT INTO `tp_weather` VALUES ('779', '101121601', '莱芜');
INSERT INTO `tp_weather` VALUES ('780', '101121701', '聊城');
INSERT INTO `tp_weather` VALUES ('781', '101121702', '冠县');
INSERT INTO `tp_weather` VALUES ('782', '101121703', '阳谷');
INSERT INTO `tp_weather` VALUES ('783', '101121704', '高唐');
INSERT INTO `tp_weather` VALUES ('784', '101121705', '茌平');
INSERT INTO `tp_weather` VALUES ('785', '101121706', '东阿');
INSERT INTO `tp_weather` VALUES ('786', '101121707', '临清');
INSERT INTO `tp_weather` VALUES ('787', '101121709', '莘县');
INSERT INTO `tp_weather` VALUES ('788', '101130101', '乌鲁木齐');
INSERT INTO `tp_weather` VALUES ('789', '101130105', '达坂城');
INSERT INTO `tp_weather` VALUES ('790', '101130201', '克拉玛依');
INSERT INTO `tp_weather` VALUES ('791', '101130202', '乌尔禾');
INSERT INTO `tp_weather` VALUES ('792', '101130203', '白碱滩');
INSERT INTO `tp_weather` VALUES ('793', '101130301', '石河子');
INSERT INTO `tp_weather` VALUES ('794', '101130401', '昌吉');
INSERT INTO `tp_weather` VALUES ('795', '101130402', '呼图壁');
INSERT INTO `tp_weather` VALUES ('796', '101130403', '米泉');
INSERT INTO `tp_weather` VALUES ('797', '101130404', '阜康');
INSERT INTO `tp_weather` VALUES ('798', '101130405', '吉木萨尔');
INSERT INTO `tp_weather` VALUES ('799', '101130406', '奇台');
INSERT INTO `tp_weather` VALUES ('800', '101130407', '玛纳斯');
INSERT INTO `tp_weather` VALUES ('801', '101130408', '木垒');
INSERT INTO `tp_weather` VALUES ('802', '101130501', '吐鲁番');
INSERT INTO `tp_weather` VALUES ('803', '101130503', '克州');
INSERT INTO `tp_weather` VALUES ('804', '101130504', '鄯善');
INSERT INTO `tp_weather` VALUES ('805', '101130601', '库尔勒');
INSERT INTO `tp_weather` VALUES ('806', '101130602', '轮台');
INSERT INTO `tp_weather` VALUES ('807', '101130603', '尉犁');
INSERT INTO `tp_weather` VALUES ('808', '101130604', '若羌');
INSERT INTO `tp_weather` VALUES ('809', '101130605', '且末');
INSERT INTO `tp_weather` VALUES ('810', '101130606', '和静');
INSERT INTO `tp_weather` VALUES ('811', '101130607', '焉耆');
INSERT INTO `tp_weather` VALUES ('812', '101130608', '和硕');
INSERT INTO `tp_weather` VALUES ('813', '101130612', '博湖');
INSERT INTO `tp_weather` VALUES ('814', '101130701', '阿拉尔');
INSERT INTO `tp_weather` VALUES ('815', '101130801', '阿克苏');
INSERT INTO `tp_weather` VALUES ('816', '101130802', '乌什');
INSERT INTO `tp_weather` VALUES ('817', '101130803', '温宿');
INSERT INTO `tp_weather` VALUES ('818', '101130804', '拜城');
INSERT INTO `tp_weather` VALUES ('819', '101130805', '新和');
INSERT INTO `tp_weather` VALUES ('820', '101130806', '沙雅');
INSERT INTO `tp_weather` VALUES ('821', '101130807', '库车');
INSERT INTO `tp_weather` VALUES ('822', '101130808', '柯坪');
INSERT INTO `tp_weather` VALUES ('823', '101130809', '阿瓦提');
INSERT INTO `tp_weather` VALUES ('824', '101130901', '喀什');
INSERT INTO `tp_weather` VALUES ('825', '101130902', '英吉沙');
INSERT INTO `tp_weather` VALUES ('826', '101130903', '塔什库尔干');
INSERT INTO `tp_weather` VALUES ('827', '101130904', '麦盖提');
INSERT INTO `tp_weather` VALUES ('828', '101130905', '莎车');
INSERT INTO `tp_weather` VALUES ('829', '101130906', '叶城');
INSERT INTO `tp_weather` VALUES ('830', '101130907', '泽普');
INSERT INTO `tp_weather` VALUES ('831', '101130908', '巴楚');
INSERT INTO `tp_weather` VALUES ('832', '101130909', '岳普湖');
INSERT INTO `tp_weather` VALUES ('833', '101130910', '伽师');
INSERT INTO `tp_weather` VALUES ('834', '101130911', '疏附');
INSERT INTO `tp_weather` VALUES ('835', '101130912', '疏勒');
INSERT INTO `tp_weather` VALUES ('836', '101131001', '伊宁');
INSERT INTO `tp_weather` VALUES ('837', '101131002', '察布查尔');
INSERT INTO `tp_weather` VALUES ('838', '101131003', '尼勒克');
INSERT INTO `tp_weather` VALUES ('839', '101131005', '巩留');
INSERT INTO `tp_weather` VALUES ('840', '101131006', '新源');
INSERT INTO `tp_weather` VALUES ('841', '101131007', '昭苏');
INSERT INTO `tp_weather` VALUES ('842', '101131008', '特克斯');
INSERT INTO `tp_weather` VALUES ('843', '101131009', '霍城');
INSERT INTO `tp_weather` VALUES ('844', '101131011', '奎屯');
INSERT INTO `tp_weather` VALUES ('845', '101131101', '塔城');
INSERT INTO `tp_weather` VALUES ('846', '101131102', '裕民');
INSERT INTO `tp_weather` VALUES ('847', '101131103', '额敏');
INSERT INTO `tp_weather` VALUES ('848', '101131104', '和布克赛尔');
INSERT INTO `tp_weather` VALUES ('849', '101131105', '托里');
INSERT INTO `tp_weather` VALUES ('850', '101131106', '乌苏');
INSERT INTO `tp_weather` VALUES ('851', '101131107', '沙湾');
INSERT INTO `tp_weather` VALUES ('852', '101131201', '哈密');
INSERT INTO `tp_weather` VALUES ('853', '101131203', '巴里坤');
INSERT INTO `tp_weather` VALUES ('854', '101131204', '伊吾');
INSERT INTO `tp_weather` VALUES ('855', '101131301', '和田');
INSERT INTO `tp_weather` VALUES ('856', '101131302', '皮山');
INSERT INTO `tp_weather` VALUES ('857', '101131303', '策勒');
INSERT INTO `tp_weather` VALUES ('858', '101131304', '墨玉');
INSERT INTO `tp_weather` VALUES ('859', '101131305', '洛浦');
INSERT INTO `tp_weather` VALUES ('860', '101131306', '民丰');
INSERT INTO `tp_weather` VALUES ('861', '101131307', '于田');
INSERT INTO `tp_weather` VALUES ('862', '101131401', '阿勒泰');
INSERT INTO `tp_weather` VALUES ('863', '101131402', '哈巴河');
INSERT INTO `tp_weather` VALUES ('864', '101131405', '吉木乃');
INSERT INTO `tp_weather` VALUES ('865', '101131406', '布尔津');
INSERT INTO `tp_weather` VALUES ('866', '101131407', '福海');
INSERT INTO `tp_weather` VALUES ('867', '101131408', '富蕴');
INSERT INTO `tp_weather` VALUES ('868', '101131409', '青河');
INSERT INTO `tp_weather` VALUES ('869', '101131501', '阿图什');
INSERT INTO `tp_weather` VALUES ('870', '101131502', '乌恰');
INSERT INTO `tp_weather` VALUES ('871', '101131503', '阿克陶');
INSERT INTO `tp_weather` VALUES ('872', '101131504', '阿合奇');
INSERT INTO `tp_weather` VALUES ('873', '101131601', '博乐');
INSERT INTO `tp_weather` VALUES ('874', '101131602', '温泉');
INSERT INTO `tp_weather` VALUES ('875', '101131603', '精河');
INSERT INTO `tp_weather` VALUES ('876', '101140101', '拉萨');
INSERT INTO `tp_weather` VALUES ('877', '101140102', '当雄');
INSERT INTO `tp_weather` VALUES ('878', '101140103', '尼木');
INSERT INTO `tp_weather` VALUES ('879', '101140104', '林周');
INSERT INTO `tp_weather` VALUES ('880', '101140105', '堆龙德庆');
INSERT INTO `tp_weather` VALUES ('881', '101140106', '曲水');
INSERT INTO `tp_weather` VALUES ('882', '101140107', '达孜');
INSERT INTO `tp_weather` VALUES ('883', '101140108', '墨竹工卡');
INSERT INTO `tp_weather` VALUES ('884', '101140201', '日喀则');
INSERT INTO `tp_weather` VALUES ('885', '101140202', '拉孜');
INSERT INTO `tp_weather` VALUES ('886', '101140204', '聂拉木');
INSERT INTO `tp_weather` VALUES ('887', '101140205', '定日');
INSERT INTO `tp_weather` VALUES ('888', '101140206', '江孜');
INSERT INTO `tp_weather` VALUES ('889', '101140208', '仲巴');
INSERT INTO `tp_weather` VALUES ('890', '101140209', '萨嘎');
INSERT INTO `tp_weather` VALUES ('891', '101140210', '吉隆');
INSERT INTO `tp_weather` VALUES ('892', '101140211', '昂仁');
INSERT INTO `tp_weather` VALUES ('893', '101140212', '定结');
INSERT INTO `tp_weather` VALUES ('894', '101140213', '萨迦');
INSERT INTO `tp_weather` VALUES ('895', '101140214', '谢通门');
INSERT INTO `tp_weather` VALUES ('896', '101140215', '楠木林');
INSERT INTO `tp_weather` VALUES ('897', '101140216', '岗巴');
INSERT INTO `tp_weather` VALUES ('898', '101140217', '白朗');
INSERT INTO `tp_weather` VALUES ('899', '101140218', '亚东');
INSERT INTO `tp_weather` VALUES ('900', '101140219', '康马');
INSERT INTO `tp_weather` VALUES ('901', '101140220', '仁布');
INSERT INTO `tp_weather` VALUES ('902', '101140301', '山南');
INSERT INTO `tp_weather` VALUES ('903', '101140302', '贡嘎');
INSERT INTO `tp_weather` VALUES ('904', '101140303', '札囊');
INSERT INTO `tp_weather` VALUES ('905', '101140304', '加查');
INSERT INTO `tp_weather` VALUES ('906', '101140305', '浪卡子');
INSERT INTO `tp_weather` VALUES ('907', '101140306', '错那');
INSERT INTO `tp_weather` VALUES ('908', '101140307', '隆子');
INSERT INTO `tp_weather` VALUES ('909', '101140309', '乃东');
INSERT INTO `tp_weather` VALUES ('910', '101140310', '桑日');
INSERT INTO `tp_weather` VALUES ('911', '101140311', '洛扎');
INSERT INTO `tp_weather` VALUES ('912', '101140312', '措美');
INSERT INTO `tp_weather` VALUES ('913', '101140313', '琼结');
INSERT INTO `tp_weather` VALUES ('914', '101140314', '曲松');
INSERT INTO `tp_weather` VALUES ('915', '101140401', '林芝');
INSERT INTO `tp_weather` VALUES ('916', '101140402', '波密');
INSERT INTO `tp_weather` VALUES ('917', '101140403', '米林');
INSERT INTO `tp_weather` VALUES ('918', '101140404', '察隅');
INSERT INTO `tp_weather` VALUES ('919', '101140405', '工布江达');
INSERT INTO `tp_weather` VALUES ('920', '101140406', '朗县');
INSERT INTO `tp_weather` VALUES ('921', '101140407', '墨脱');
INSERT INTO `tp_weather` VALUES ('922', '101140501', '昌都');
INSERT INTO `tp_weather` VALUES ('923', '101140502', '丁青');
INSERT INTO `tp_weather` VALUES ('924', '101140503', '边坝');
INSERT INTO `tp_weather` VALUES ('925', '101140504', '洛隆');
INSERT INTO `tp_weather` VALUES ('926', '101140505', '左贡');
INSERT INTO `tp_weather` VALUES ('927', '101140506', '芒康');
INSERT INTO `tp_weather` VALUES ('928', '101140507', '类乌齐');
INSERT INTO `tp_weather` VALUES ('929', '101140508', '八宿');
INSERT INTO `tp_weather` VALUES ('930', '101140509', '江达');
INSERT INTO `tp_weather` VALUES ('931', '101140510', '察雅');
INSERT INTO `tp_weather` VALUES ('932', '101140511', '贡觉');
INSERT INTO `tp_weather` VALUES ('933', '101140601', '那曲');
INSERT INTO `tp_weather` VALUES ('934', '101140602', '尼玛');
INSERT INTO `tp_weather` VALUES ('935', '101140603', '嘉黎');
INSERT INTO `tp_weather` VALUES ('936', '101140604', '班戈');
INSERT INTO `tp_weather` VALUES ('937', '101140605', '安多');
INSERT INTO `tp_weather` VALUES ('938', '101140606', '索县');
INSERT INTO `tp_weather` VALUES ('939', '101140607', '聂荣');
INSERT INTO `tp_weather` VALUES ('940', '101140608', '巴青');
INSERT INTO `tp_weather` VALUES ('941', '101140609', '比如');
INSERT INTO `tp_weather` VALUES ('942', '101140610', '双湖');
INSERT INTO `tp_weather` VALUES ('943', '101140701', '阿里');
INSERT INTO `tp_weather` VALUES ('944', '101140702', '改则');
INSERT INTO `tp_weather` VALUES ('945', '101140703', '申扎');
INSERT INTO `tp_weather` VALUES ('946', '101140705', '普兰');
INSERT INTO `tp_weather` VALUES ('947', '101140706', '札达');
INSERT INTO `tp_weather` VALUES ('948', '101140707', '噶尔');
INSERT INTO `tp_weather` VALUES ('949', '101140708', '日土');
INSERT INTO `tp_weather` VALUES ('950', '101140709', '革吉');
INSERT INTO `tp_weather` VALUES ('951', '101140710', '措勤');
INSERT INTO `tp_weather` VALUES ('952', '101150101', '西宁');
INSERT INTO `tp_weather` VALUES ('953', '101150102', '大通');
INSERT INTO `tp_weather` VALUES ('954', '101150103', '湟源');
INSERT INTO `tp_weather` VALUES ('955', '101150104', '湟中');
INSERT INTO `tp_weather` VALUES ('956', '101150201', '海东');
INSERT INTO `tp_weather` VALUES ('957', '101150202', '乐都');
INSERT INTO `tp_weather` VALUES ('958', '101150203', '民和');
INSERT INTO `tp_weather` VALUES ('959', '101150204', '互助');
INSERT INTO `tp_weather` VALUES ('960', '101150205', '化隆');
INSERT INTO `tp_weather` VALUES ('961', '101150206', '循化');
INSERT INTO `tp_weather` VALUES ('962', '101150208', '平安');
INSERT INTO `tp_weather` VALUES ('963', '101150301', '黄南');
INSERT INTO `tp_weather` VALUES ('964', '101150302', '尖扎');
INSERT INTO `tp_weather` VALUES ('965', '101150303', '泽库');
INSERT INTO `tp_weather` VALUES ('966', '101150305', '同仁');
INSERT INTO `tp_weather` VALUES ('967', '101150401', '海南');
INSERT INTO `tp_weather` VALUES ('968', '101150404', '贵德');
INSERT INTO `tp_weather` VALUES ('969', '101150406', '兴海');
INSERT INTO `tp_weather` VALUES ('970', '101150407', '贵南');
INSERT INTO `tp_weather` VALUES ('971', '101150408', '同德');
INSERT INTO `tp_weather` VALUES ('972', '101150409', '共和');
INSERT INTO `tp_weather` VALUES ('973', '101150501', '果洛');
INSERT INTO `tp_weather` VALUES ('974', '101150502', '班玛');
INSERT INTO `tp_weather` VALUES ('975', '101150503', '甘德');
INSERT INTO `tp_weather` VALUES ('976', '101150504', '达日');
INSERT INTO `tp_weather` VALUES ('977', '101150505', '久治');
INSERT INTO `tp_weather` VALUES ('978', '101150506', '玛多');
INSERT INTO `tp_weather` VALUES ('979', '101150508', '玛沁');
INSERT INTO `tp_weather` VALUES ('980', '101150601', '玉树');
INSERT INTO `tp_weather` VALUES ('981', '101150602', '称多');
INSERT INTO `tp_weather` VALUES ('982', '101150603', '治多');
INSERT INTO `tp_weather` VALUES ('983', '101150604', '杂多');
INSERT INTO `tp_weather` VALUES ('984', '101150605', '囊谦');
INSERT INTO `tp_weather` VALUES ('985', '101150606', '曲麻莱');
INSERT INTO `tp_weather` VALUES ('986', '101150701', '海西');
INSERT INTO `tp_weather` VALUES ('987', '101150708', '天峻');
INSERT INTO `tp_weather` VALUES ('988', '101150709', '乌兰');
INSERT INTO `tp_weather` VALUES ('989', '101150716', '德令哈');
INSERT INTO `tp_weather` VALUES ('990', '101150801', '海北');
INSERT INTO `tp_weather` VALUES ('991', '101150802', '门源');
INSERT INTO `tp_weather` VALUES ('992', '101150803', '祁连');
INSERT INTO `tp_weather` VALUES ('993', '101150804', '海晏');
INSERT INTO `tp_weather` VALUES ('994', '101150806', '刚察');
INSERT INTO `tp_weather` VALUES ('995', '101150901', '格尔木');
INSERT INTO `tp_weather` VALUES ('996', '101150902', '都兰');
INSERT INTO `tp_weather` VALUES ('997', '101160101', '兰州');
INSERT INTO `tp_weather` VALUES ('998', '101160102', '皋兰');
INSERT INTO `tp_weather` VALUES ('999', '101160103', '永登');
INSERT INTO `tp_weather` VALUES ('1000', '101160104', '榆中');
INSERT INTO `tp_weather` VALUES ('1001', '101160201', '定西');
INSERT INTO `tp_weather` VALUES ('1002', '101160202', '通渭');
INSERT INTO `tp_weather` VALUES ('1003', '101160203', '陇西');
INSERT INTO `tp_weather` VALUES ('1004', '101160204', '渭源');
INSERT INTO `tp_weather` VALUES ('1005', '101160205', '临洮');
INSERT INTO `tp_weather` VALUES ('1006', '101160206', '漳县');
INSERT INTO `tp_weather` VALUES ('1007', '101160207', '岷县');
INSERT INTO `tp_weather` VALUES ('1008', '101160301', '平凉');
INSERT INTO `tp_weather` VALUES ('1009', '101160302', '泾川');
INSERT INTO `tp_weather` VALUES ('1010', '101160303', '灵台');
INSERT INTO `tp_weather` VALUES ('1011', '101160304', '崇信');
INSERT INTO `tp_weather` VALUES ('1012', '101160305', '华亭');
INSERT INTO `tp_weather` VALUES ('1013', '101160306', '庄浪');
INSERT INTO `tp_weather` VALUES ('1014', '101160307', '静宁');
INSERT INTO `tp_weather` VALUES ('1015', '101160401', '庆阳');
INSERT INTO `tp_weather` VALUES ('1016', '101160402', '西峰');
INSERT INTO `tp_weather` VALUES ('1017', '101160403', '环县');
INSERT INTO `tp_weather` VALUES ('1018', '101160404', '华池');
INSERT INTO `tp_weather` VALUES ('1019', '101160405', '合水');
INSERT INTO `tp_weather` VALUES ('1020', '101160406', '正宁');
INSERT INTO `tp_weather` VALUES ('1021', '101160407', '宁县');
INSERT INTO `tp_weather` VALUES ('1022', '101160408', '镇原');
INSERT INTO `tp_weather` VALUES ('1023', '101160409', '庆城');
INSERT INTO `tp_weather` VALUES ('1024', '101160501', '武威');
INSERT INTO `tp_weather` VALUES ('1025', '101160502', '民勤');
INSERT INTO `tp_weather` VALUES ('1026', '101160503', '古浪');
INSERT INTO `tp_weather` VALUES ('1027', '101160505', '天祝');
INSERT INTO `tp_weather` VALUES ('1028', '101160601', '金昌');
INSERT INTO `tp_weather` VALUES ('1029', '101160602', '永昌');
INSERT INTO `tp_weather` VALUES ('1030', '101160701', '张掖');
INSERT INTO `tp_weather` VALUES ('1031', '101160702', '肃南');
INSERT INTO `tp_weather` VALUES ('1032', '101160703', '民乐');
INSERT INTO `tp_weather` VALUES ('1033', '101160704', '临泽');
INSERT INTO `tp_weather` VALUES ('1034', '101160705', '高台');
INSERT INTO `tp_weather` VALUES ('1035', '101160706', '山丹');
INSERT INTO `tp_weather` VALUES ('1036', '101160801', '酒泉');
INSERT INTO `tp_weather` VALUES ('1037', '101160803', '金塔');
INSERT INTO `tp_weather` VALUES ('1038', '101160804', '阿克塞');
INSERT INTO `tp_weather` VALUES ('1039', '101160805', '瓜州');
INSERT INTO `tp_weather` VALUES ('1040', '101160806', '肃北');
INSERT INTO `tp_weather` VALUES ('1041', '101160807', '玉门');
INSERT INTO `tp_weather` VALUES ('1042', '101160808', '敦煌');
INSERT INTO `tp_weather` VALUES ('1043', '101160901', '天水');
INSERT INTO `tp_weather` VALUES ('1044', '101160903', '清水');
INSERT INTO `tp_weather` VALUES ('1045', '101160904', '秦安');
INSERT INTO `tp_weather` VALUES ('1046', '101160905', '甘谷');
INSERT INTO `tp_weather` VALUES ('1047', '101160906', '武山');
INSERT INTO `tp_weather` VALUES ('1048', '101160907', '张家川');
INSERT INTO `tp_weather` VALUES ('1049', '101161001', '陇南');
INSERT INTO `tp_weather` VALUES ('1050', '101161002', '成县');
INSERT INTO `tp_weather` VALUES ('1051', '101161003', '文县');
INSERT INTO `tp_weather` VALUES ('1052', '101161004', '宕昌');
INSERT INTO `tp_weather` VALUES ('1053', '101161005', '康县');
INSERT INTO `tp_weather` VALUES ('1054', '101161006', '西和');
INSERT INTO `tp_weather` VALUES ('1055', '101161007', '礼县');
INSERT INTO `tp_weather` VALUES ('1056', '101161008', '徽县');
INSERT INTO `tp_weather` VALUES ('1057', '101161009', '两当');
INSERT INTO `tp_weather` VALUES ('1058', '101161101', '临夏');
INSERT INTO `tp_weather` VALUES ('1059', '101161102', '康乐');
INSERT INTO `tp_weather` VALUES ('1060', '101161103', '永靖');
INSERT INTO `tp_weather` VALUES ('1061', '101161104', '广河');
INSERT INTO `tp_weather` VALUES ('1062', '101161105', '和政');
INSERT INTO `tp_weather` VALUES ('1063', '101161107', '积石山');
INSERT INTO `tp_weather` VALUES ('1064', '101161201', '合作');
INSERT INTO `tp_weather` VALUES ('1065', '101161202', '临潭');
INSERT INTO `tp_weather` VALUES ('1066', '101161203', '卓尼');
INSERT INTO `tp_weather` VALUES ('1067', '101161204', '舟曲');
INSERT INTO `tp_weather` VALUES ('1068', '101161205', '迭部');
INSERT INTO `tp_weather` VALUES ('1069', '101161206', '玛曲');
INSERT INTO `tp_weather` VALUES ('1070', '101161207', '碌曲');
INSERT INTO `tp_weather` VALUES ('1071', '101161208', '夏河');
INSERT INTO `tp_weather` VALUES ('1072', '101161301', '白银');
INSERT INTO `tp_weather` VALUES ('1073', '101161302', '靖远');
INSERT INTO `tp_weather` VALUES ('1074', '101161303', '会宁');
INSERT INTO `tp_weather` VALUES ('1075', '101161304', '平川');
INSERT INTO `tp_weather` VALUES ('1076', '101161305', '景泰');
INSERT INTO `tp_weather` VALUES ('1077', '101161401', '嘉峪关');
INSERT INTO `tp_weather` VALUES ('1078', '101170101', '银川');
INSERT INTO `tp_weather` VALUES ('1079', '101170102', '永宁');
INSERT INTO `tp_weather` VALUES ('1080', '101170103', '灵武');
INSERT INTO `tp_weather` VALUES ('1081', '101170104', '贺兰');
INSERT INTO `tp_weather` VALUES ('1082', '101170201', '石嘴山');
INSERT INTO `tp_weather` VALUES ('1083', '101170203', '平罗');
INSERT INTO `tp_weather` VALUES ('1084', '101170301', '吴忠');
INSERT INTO `tp_weather` VALUES ('1085', '101170302', '同心');
INSERT INTO `tp_weather` VALUES ('1086', '101170303', '盐池');
INSERT INTO `tp_weather` VALUES ('1087', '101170306', '青铜峡');
INSERT INTO `tp_weather` VALUES ('1088', '101170401', '固原');
INSERT INTO `tp_weather` VALUES ('1089', '101170402', '西吉');
INSERT INTO `tp_weather` VALUES ('1090', '101170403', '隆德');
INSERT INTO `tp_weather` VALUES ('1091', '101170404', '泾源');
INSERT INTO `tp_weather` VALUES ('1092', '101170406', '彭阳');
INSERT INTO `tp_weather` VALUES ('1093', '101170501', '中卫');
INSERT INTO `tp_weather` VALUES ('1094', '101170502', '中宁');
INSERT INTO `tp_weather` VALUES ('1095', '101170504', '海原');
INSERT INTO `tp_weather` VALUES ('1096', '101180101', '郑州');
INSERT INTO `tp_weather` VALUES ('1097', '101180102', '巩义');
INSERT INTO `tp_weather` VALUES ('1098', '101180103', '荥阳');
INSERT INTO `tp_weather` VALUES ('1099', '101180104', '登封');
INSERT INTO `tp_weather` VALUES ('1100', '101180105', '新密');
INSERT INTO `tp_weather` VALUES ('1101', '101180106', '新郑');
INSERT INTO `tp_weather` VALUES ('1102', '101180107', '中牟');
INSERT INTO `tp_weather` VALUES ('1103', '101180108', '上街');
INSERT INTO `tp_weather` VALUES ('1104', '101180201', '安阳');
INSERT INTO `tp_weather` VALUES ('1105', '101180202', '汤阴');
INSERT INTO `tp_weather` VALUES ('1106', '101180203', '滑县');
INSERT INTO `tp_weather` VALUES ('1107', '101180204', '内黄');
INSERT INTO `tp_weather` VALUES ('1108', '101180205', '林州');
INSERT INTO `tp_weather` VALUES ('1109', '101180301', '新乡');
INSERT INTO `tp_weather` VALUES ('1110', '101180302', '获嘉');
INSERT INTO `tp_weather` VALUES ('1111', '101180303', '原阳');
INSERT INTO `tp_weather` VALUES ('1112', '101180304', '辉县');
INSERT INTO `tp_weather` VALUES ('1113', '101180305', '卫辉');
INSERT INTO `tp_weather` VALUES ('1114', '101180306', '延津');
INSERT INTO `tp_weather` VALUES ('1115', '101180307', '封丘');
INSERT INTO `tp_weather` VALUES ('1116', '101180308', '长垣');
INSERT INTO `tp_weather` VALUES ('1117', '101180401', '许昌');
INSERT INTO `tp_weather` VALUES ('1118', '101180402', '鄢陵');
INSERT INTO `tp_weather` VALUES ('1119', '101180403', '襄城');
INSERT INTO `tp_weather` VALUES ('1120', '101180404', '长葛');
INSERT INTO `tp_weather` VALUES ('1121', '101180405', '禹州');
INSERT INTO `tp_weather` VALUES ('1122', '101180501', '平顶山');
INSERT INTO `tp_weather` VALUES ('1123', '101180502', '郏县');
INSERT INTO `tp_weather` VALUES ('1124', '101180503', '宝丰');
INSERT INTO `tp_weather` VALUES ('1125', '101180504', '汝州');
INSERT INTO `tp_weather` VALUES ('1126', '101180505', '叶县');
INSERT INTO `tp_weather` VALUES ('1127', '101180506', '舞钢');
INSERT INTO `tp_weather` VALUES ('1128', '101180507', '鲁山');
INSERT INTO `tp_weather` VALUES ('1129', '101180508', '石龙');
INSERT INTO `tp_weather` VALUES ('1130', '101180601', '信阳');
INSERT INTO `tp_weather` VALUES ('1131', '101180602', '息县');
INSERT INTO `tp_weather` VALUES ('1132', '101180603', '罗山');
INSERT INTO `tp_weather` VALUES ('1133', '101180604', '光山');
INSERT INTO `tp_weather` VALUES ('1134', '101180605', '新县');
INSERT INTO `tp_weather` VALUES ('1135', '101180606', '淮滨');
INSERT INTO `tp_weather` VALUES ('1136', '101180607', '潢川');
INSERT INTO `tp_weather` VALUES ('1137', '101180608', '固始');
INSERT INTO `tp_weather` VALUES ('1138', '101180609', '商城');
INSERT INTO `tp_weather` VALUES ('1139', '101180701', '南阳');
INSERT INTO `tp_weather` VALUES ('1140', '101180702', '南召');
INSERT INTO `tp_weather` VALUES ('1141', '101180703', '方城');
INSERT INTO `tp_weather` VALUES ('1142', '101180704', '社旗');
INSERT INTO `tp_weather` VALUES ('1143', '101180705', '西峡');
INSERT INTO `tp_weather` VALUES ('1144', '101180706', '内乡');
INSERT INTO `tp_weather` VALUES ('1145', '101180707', '镇平');
INSERT INTO `tp_weather` VALUES ('1146', '101180708', '淅川');
INSERT INTO `tp_weather` VALUES ('1147', '101180709', '新野');
INSERT INTO `tp_weather` VALUES ('1148', '101180710', '唐河');
INSERT INTO `tp_weather` VALUES ('1149', '101180711', '邓州');
INSERT INTO `tp_weather` VALUES ('1150', '101180712', '桐柏');
INSERT INTO `tp_weather` VALUES ('1151', '101180801', '开封');
INSERT INTO `tp_weather` VALUES ('1152', '101180802', '杞县');
INSERT INTO `tp_weather` VALUES ('1153', '101180803', '尉氏');
INSERT INTO `tp_weather` VALUES ('1154', '101180804', '通许');
INSERT INTO `tp_weather` VALUES ('1155', '101180805', '兰考');
INSERT INTO `tp_weather` VALUES ('1156', '101180901', '洛阳');
INSERT INTO `tp_weather` VALUES ('1157', '101180902', '新安');
INSERT INTO `tp_weather` VALUES ('1158', '101180903', '孟津');
INSERT INTO `tp_weather` VALUES ('1159', '101180904', '宜阳');
INSERT INTO `tp_weather` VALUES ('1160', '101180905', '洛宁');
INSERT INTO `tp_weather` VALUES ('1161', '101180906', '伊川');
INSERT INTO `tp_weather` VALUES ('1162', '101180907', '嵩县');
INSERT INTO `tp_weather` VALUES ('1163', '101180908', '偃师');
INSERT INTO `tp_weather` VALUES ('1164', '101180909', '栾川');
INSERT INTO `tp_weather` VALUES ('1165', '101180910', '汝阳');
INSERT INTO `tp_weather` VALUES ('1166', '101180911', '吉利');
INSERT INTO `tp_weather` VALUES ('1167', '101181001', '商丘');
INSERT INTO `tp_weather` VALUES ('1168', '101181003', '睢县');
INSERT INTO `tp_weather` VALUES ('1169', '101181004', '民权');
INSERT INTO `tp_weather` VALUES ('1170', '101181005', '虞城');
INSERT INTO `tp_weather` VALUES ('1171', '101181006', '柘城');
INSERT INTO `tp_weather` VALUES ('1172', '101181007', '宁陵');
INSERT INTO `tp_weather` VALUES ('1173', '101181008', '夏邑');
INSERT INTO `tp_weather` VALUES ('1174', '101181009', '永城');
INSERT INTO `tp_weather` VALUES ('1175', '101181101', '焦作');
INSERT INTO `tp_weather` VALUES ('1176', '101181102', '修武');
INSERT INTO `tp_weather` VALUES ('1177', '101181103', '武陟');
INSERT INTO `tp_weather` VALUES ('1178', '101181104', '沁阳');
INSERT INTO `tp_weather` VALUES ('1179', '101181106', '博爱');
INSERT INTO `tp_weather` VALUES ('1180', '101181107', '温县');
INSERT INTO `tp_weather` VALUES ('1181', '101181108', '孟州');
INSERT INTO `tp_weather` VALUES ('1182', '101181201', '鹤壁');
INSERT INTO `tp_weather` VALUES ('1183', '101181202', '浚县');
INSERT INTO `tp_weather` VALUES ('1184', '101181203', '淇县');
INSERT INTO `tp_weather` VALUES ('1185', '101181301', '濮阳');
INSERT INTO `tp_weather` VALUES ('1186', '101181302', '台前');
INSERT INTO `tp_weather` VALUES ('1187', '101181303', '南乐');
INSERT INTO `tp_weather` VALUES ('1188', '101181304', '清丰');
INSERT INTO `tp_weather` VALUES ('1189', '101181305', '范县');
INSERT INTO `tp_weather` VALUES ('1190', '101181401', '周口');
INSERT INTO `tp_weather` VALUES ('1191', '101181402', '扶沟');
INSERT INTO `tp_weather` VALUES ('1192', '101181403', '太康');
INSERT INTO `tp_weather` VALUES ('1193', '101181404', '淮阳');
INSERT INTO `tp_weather` VALUES ('1194', '101181405', '西华');
INSERT INTO `tp_weather` VALUES ('1195', '101181406', '商水');
INSERT INTO `tp_weather` VALUES ('1196', '101181407', '项城');
INSERT INTO `tp_weather` VALUES ('1197', '101181408', '郸城');
INSERT INTO `tp_weather` VALUES ('1198', '101181409', '鹿邑');
INSERT INTO `tp_weather` VALUES ('1199', '101181410', '沈丘');
INSERT INTO `tp_weather` VALUES ('1200', '101181501', '漯河');
INSERT INTO `tp_weather` VALUES ('1201', '101181502', '临颍');
INSERT INTO `tp_weather` VALUES ('1202', '101181503', '舞阳');
INSERT INTO `tp_weather` VALUES ('1203', '101181504', '临颖');
INSERT INTO `tp_weather` VALUES ('1204', '101181601', '驻马店');
INSERT INTO `tp_weather` VALUES ('1205', '101181602', '西平');
INSERT INTO `tp_weather` VALUES ('1206', '101181603', '遂平');
INSERT INTO `tp_weather` VALUES ('1207', '101181604', '上蔡');
INSERT INTO `tp_weather` VALUES ('1208', '101181605', '汝南');
INSERT INTO `tp_weather` VALUES ('1209', '101181606', '泌阳');
INSERT INTO `tp_weather` VALUES ('1210', '101181607', '平舆');
INSERT INTO `tp_weather` VALUES ('1211', '101181608', '新蔡');
INSERT INTO `tp_weather` VALUES ('1212', '101181609', '确山');
INSERT INTO `tp_weather` VALUES ('1213', '101181610', '正阳');
INSERT INTO `tp_weather` VALUES ('1214', '101181701', '三门峡');
INSERT INTO `tp_weather` VALUES ('1215', '101181702', '灵宝');
INSERT INTO `tp_weather` VALUES ('1216', '101181703', '渑池');
INSERT INTO `tp_weather` VALUES ('1217', '101181704', '卢氏');
INSERT INTO `tp_weather` VALUES ('1218', '101181705', '义马');
INSERT INTO `tp_weather` VALUES ('1219', '101181706', '陕县');
INSERT INTO `tp_weather` VALUES ('1220', '101181801', '济源');
INSERT INTO `tp_weather` VALUES ('1221', '101190101', '南京');
INSERT INTO `tp_weather` VALUES ('1222', '101190102', '溧水');
INSERT INTO `tp_weather` VALUES ('1223', '101190103', '高淳');
INSERT INTO `tp_weather` VALUES ('1224', '101190104', '江宁');
INSERT INTO `tp_weather` VALUES ('1225', '101190105', '六合');
INSERT INTO `tp_weather` VALUES ('1226', '101190107', '浦口');
INSERT INTO `tp_weather` VALUES ('1227', '101190201', '无锡');
INSERT INTO `tp_weather` VALUES ('1228', '101190202', '江阴');
INSERT INTO `tp_weather` VALUES ('1229', '101190203', '宜兴');
INSERT INTO `tp_weather` VALUES ('1230', '101190204', '锡山');
INSERT INTO `tp_weather` VALUES ('1231', '101190301', '镇江');
INSERT INTO `tp_weather` VALUES ('1232', '101190302', '丹阳');
INSERT INTO `tp_weather` VALUES ('1233', '101190303', '扬中');
INSERT INTO `tp_weather` VALUES ('1234', '101190304', '句容');
INSERT INTO `tp_weather` VALUES ('1235', '101190305', '丹徒');
INSERT INTO `tp_weather` VALUES ('1236', '101190401', '苏州');
INSERT INTO `tp_weather` VALUES ('1237', '101190402', '常熟');
INSERT INTO `tp_weather` VALUES ('1238', '101190403', '张家港');
INSERT INTO `tp_weather` VALUES ('1239', '101190404', '昆山');
INSERT INTO `tp_weather` VALUES ('1240', '101190405', '吴中');
INSERT INTO `tp_weather` VALUES ('1241', '101190407', '吴江');
INSERT INTO `tp_weather` VALUES ('1242', '101190408', '太仓');
INSERT INTO `tp_weather` VALUES ('1243', '101190501', '南通');
INSERT INTO `tp_weather` VALUES ('1244', '101190502', '海安');
INSERT INTO `tp_weather` VALUES ('1245', '101190503', '如皋');
INSERT INTO `tp_weather` VALUES ('1246', '101190504', '如东');
INSERT INTO `tp_weather` VALUES ('1247', '101190507', '启东');
INSERT INTO `tp_weather` VALUES ('1248', '101190508', '海门');
INSERT INTO `tp_weather` VALUES ('1249', '101190601', '扬州');
INSERT INTO `tp_weather` VALUES ('1250', '101190602', '宝应');
INSERT INTO `tp_weather` VALUES ('1251', '101190603', '仪征');
INSERT INTO `tp_weather` VALUES ('1252', '101190604', '高邮');
INSERT INTO `tp_weather` VALUES ('1253', '101190605', '江都');
INSERT INTO `tp_weather` VALUES ('1254', '101190606', '邗江');
INSERT INTO `tp_weather` VALUES ('1255', '101190701', '盐城');
INSERT INTO `tp_weather` VALUES ('1256', '101190702', '响水');
INSERT INTO `tp_weather` VALUES ('1257', '101190703', '滨海');
INSERT INTO `tp_weather` VALUES ('1258', '101190704', '阜宁');
INSERT INTO `tp_weather` VALUES ('1259', '101190705', '射阳');
INSERT INTO `tp_weather` VALUES ('1260', '101190706', '建湖');
INSERT INTO `tp_weather` VALUES ('1261', '101190707', '东台');
INSERT INTO `tp_weather` VALUES ('1262', '101190708', '大丰');
INSERT INTO `tp_weather` VALUES ('1263', '101190709', '盐都');
INSERT INTO `tp_weather` VALUES ('1264', '101190801', '徐州');
INSERT INTO `tp_weather` VALUES ('1265', '101190802', '铜山');
INSERT INTO `tp_weather` VALUES ('1266', '101190803', '丰县');
INSERT INTO `tp_weather` VALUES ('1267', '101190804', '沛县');
INSERT INTO `tp_weather` VALUES ('1268', '101190805', '邳州');
INSERT INTO `tp_weather` VALUES ('1269', '101190806', '睢宁');
INSERT INTO `tp_weather` VALUES ('1270', '101190807', '新沂');
INSERT INTO `tp_weather` VALUES ('1271', '101190901', '淮安');
INSERT INTO `tp_weather` VALUES ('1272', '101190902', '金湖');
INSERT INTO `tp_weather` VALUES ('1273', '101190903', '盱眙');
INSERT INTO `tp_weather` VALUES ('1274', '101190904', '洪泽');
INSERT INTO `tp_weather` VALUES ('1275', '101190905', '涟水');
INSERT INTO `tp_weather` VALUES ('1276', '101191001', '连云港');
INSERT INTO `tp_weather` VALUES ('1277', '101191002', '东海');
INSERT INTO `tp_weather` VALUES ('1278', '101191003', '赣榆');
INSERT INTO `tp_weather` VALUES ('1279', '101191004', '灌云');
INSERT INTO `tp_weather` VALUES ('1280', '101191005', '灌南');
INSERT INTO `tp_weather` VALUES ('1281', '101191101', '常州');
INSERT INTO `tp_weather` VALUES ('1282', '101191102', '溧阳');
INSERT INTO `tp_weather` VALUES ('1283', '101191103', '金坛');
INSERT INTO `tp_weather` VALUES ('1284', '101191104', '武进');
INSERT INTO `tp_weather` VALUES ('1285', '101191201', '泰州');
INSERT INTO `tp_weather` VALUES ('1286', '101191202', '兴化');
INSERT INTO `tp_weather` VALUES ('1287', '101191203', '泰兴');
INSERT INTO `tp_weather` VALUES ('1288', '101191204', '姜堰');
INSERT INTO `tp_weather` VALUES ('1289', '101191205', '靖江');
INSERT INTO `tp_weather` VALUES ('1290', '101191301', '宿迁');
INSERT INTO `tp_weather` VALUES ('1291', '101191302', '沭阳');
INSERT INTO `tp_weather` VALUES ('1292', '101191303', '泗阳');
INSERT INTO `tp_weather` VALUES ('1293', '101191304', '泗洪');
INSERT INTO `tp_weather` VALUES ('1294', '101191305', '宿豫');
INSERT INTO `tp_weather` VALUES ('1295', '101200101', '武汉');
INSERT INTO `tp_weather` VALUES ('1296', '101200102', '蔡甸');
INSERT INTO `tp_weather` VALUES ('1297', '101200103', '黄陂');
INSERT INTO `tp_weather` VALUES ('1298', '101200104', '新洲');
INSERT INTO `tp_weather` VALUES ('1299', '101200105', '江夏');
INSERT INTO `tp_weather` VALUES ('1300', '101200106', '东西湖');
INSERT INTO `tp_weather` VALUES ('1301', '101200201', '襄阳');
INSERT INTO `tp_weather` VALUES ('1302', '101200202', '襄州');
INSERT INTO `tp_weather` VALUES ('1303', '101200203', '保康');
INSERT INTO `tp_weather` VALUES ('1304', '101200204', '南漳');
INSERT INTO `tp_weather` VALUES ('1305', '101200205', '宜城');
INSERT INTO `tp_weather` VALUES ('1306', '101200206', '老河口');
INSERT INTO `tp_weather` VALUES ('1307', '101200207', '谷城');
INSERT INTO `tp_weather` VALUES ('1308', '101200208', '枣阳');
INSERT INTO `tp_weather` VALUES ('1309', '101200301', '鄂州');
INSERT INTO `tp_weather` VALUES ('1310', '101200302', '梁子湖');
INSERT INTO `tp_weather` VALUES ('1311', '101200401', '孝感');
INSERT INTO `tp_weather` VALUES ('1312', '101200402', '安陆');
INSERT INTO `tp_weather` VALUES ('1313', '101200403', '微5214');
INSERT INTO `tp_weather` VALUES ('1314', '101200404', '大悟');
INSERT INTO `tp_weather` VALUES ('1315', '101200405', '应城');
INSERT INTO `tp_weather` VALUES ('1316', '101200406', '汉川');
INSERT INTO `tp_weather` VALUES ('1317', '101200407', '孝昌');
INSERT INTO `tp_weather` VALUES ('1318', '101200501', '黄冈');
INSERT INTO `tp_weather` VALUES ('1319', '101200502', '红安');
INSERT INTO `tp_weather` VALUES ('1320', '101200503', '麻城');
INSERT INTO `tp_weather` VALUES ('1321', '101200504', '罗田');
INSERT INTO `tp_weather` VALUES ('1322', '101200505', '英山');
INSERT INTO `tp_weather` VALUES ('1323', '101200506', '浠水');
INSERT INTO `tp_weather` VALUES ('1324', '101200507', '蕲春');
INSERT INTO `tp_weather` VALUES ('1325', '101200508', '黄梅');
INSERT INTO `tp_weather` VALUES ('1326', '101200509', '武穴');
INSERT INTO `tp_weather` VALUES ('1327', '101200510', '团风');
INSERT INTO `tp_weather` VALUES ('1328', '101200601', '黄石');
INSERT INTO `tp_weather` VALUES ('1329', '101200602', '大冶');
INSERT INTO `tp_weather` VALUES ('1330', '101200603', '阳新');
INSERT INTO `tp_weather` VALUES ('1331', '101200604', '铁山');
INSERT INTO `tp_weather` VALUES ('1332', '101200605', '下陆');
INSERT INTO `tp_weather` VALUES ('1333', '101200606', '西塞山');
INSERT INTO `tp_weather` VALUES ('1334', '101200701', '咸宁');
INSERT INTO `tp_weather` VALUES ('1335', '101200702', '赤壁');
INSERT INTO `tp_weather` VALUES ('1336', '101200703', '嘉鱼');
INSERT INTO `tp_weather` VALUES ('1337', '101200704', '崇阳');
INSERT INTO `tp_weather` VALUES ('1338', '101200705', '通城');
INSERT INTO `tp_weather` VALUES ('1339', '101200706', '通山');
INSERT INTO `tp_weather` VALUES ('1340', '101200801', '荆州');
INSERT INTO `tp_weather` VALUES ('1341', '101200802', '江陵');
INSERT INTO `tp_weather` VALUES ('1342', '101200803', '公安');
INSERT INTO `tp_weather` VALUES ('1343', '101200804', '石首');
INSERT INTO `tp_weather` VALUES ('1344', '101200805', '监利');
INSERT INTO `tp_weather` VALUES ('1345', '101200806', '洪湖');
INSERT INTO `tp_weather` VALUES ('1346', '101200807', '松滋');
INSERT INTO `tp_weather` VALUES ('1347', '101200901', '宜昌');
INSERT INTO `tp_weather` VALUES ('1348', '101200902', '远安');
INSERT INTO `tp_weather` VALUES ('1349', '101200903', '秭归');
INSERT INTO `tp_weather` VALUES ('1350', '101200904', '兴山');
INSERT INTO `tp_weather` VALUES ('1351', '101200906', '五峰');
INSERT INTO `tp_weather` VALUES ('1352', '101200907', '当阳');
INSERT INTO `tp_weather` VALUES ('1353', '101200908', '长阳');
INSERT INTO `tp_weather` VALUES ('1354', '101200909', '宜都');
INSERT INTO `tp_weather` VALUES ('1355', '101200910', '枝江');
INSERT INTO `tp_weather` VALUES ('1356', '101201001', '恩施');
INSERT INTO `tp_weather` VALUES ('1357', '101201002', '利川');
INSERT INTO `tp_weather` VALUES ('1358', '101201003', '建始');
INSERT INTO `tp_weather` VALUES ('1359', '101201004', '咸丰');
INSERT INTO `tp_weather` VALUES ('1360', '101201005', '宣恩');
INSERT INTO `tp_weather` VALUES ('1361', '101201006', '鹤峰');
INSERT INTO `tp_weather` VALUES ('1362', '101201007', '来凤');
INSERT INTO `tp_weather` VALUES ('1363', '101201008', '巴东');
INSERT INTO `tp_weather` VALUES ('1364', '101201101', '十堰');
INSERT INTO `tp_weather` VALUES ('1365', '101201102', '竹溪');
INSERT INTO `tp_weather` VALUES ('1366', '101201103', '郧西');
INSERT INTO `tp_weather` VALUES ('1367', '101201104', '郧县');
INSERT INTO `tp_weather` VALUES ('1368', '101201105', '竹山');
INSERT INTO `tp_weather` VALUES ('1369', '101201106', '房县');
INSERT INTO `tp_weather` VALUES ('1370', '101201107', '丹江口');
INSERT INTO `tp_weather` VALUES ('1371', '101201108', '茅箭');
INSERT INTO `tp_weather` VALUES ('1372', '101201109', '张湾');
INSERT INTO `tp_weather` VALUES ('1373', '101201201', '神农架');
INSERT INTO `tp_weather` VALUES ('1374', '101201301', '随州');
INSERT INTO `tp_weather` VALUES ('1375', '101201302', '广水');
INSERT INTO `tp_weather` VALUES ('1376', '101201401', '荆门');
INSERT INTO `tp_weather` VALUES ('1377', '101201402', '钟祥');
INSERT INTO `tp_weather` VALUES ('1378', '101201403', '京山');
INSERT INTO `tp_weather` VALUES ('1379', '101201404', '掇刀');
INSERT INTO `tp_weather` VALUES ('1380', '101201405', '沙洋');
INSERT INTO `tp_weather` VALUES ('1381', '101201406', '沙市');
INSERT INTO `tp_weather` VALUES ('1382', '101201501', '天门');
INSERT INTO `tp_weather` VALUES ('1383', '101201601', '仙桃');
INSERT INTO `tp_weather` VALUES ('1384', '101201701', '潜江');
INSERT INTO `tp_weather` VALUES ('1385', '101210101', '杭州');
INSERT INTO `tp_weather` VALUES ('1386', '101210102', '萧山');
INSERT INTO `tp_weather` VALUES ('1387', '101210103', '桐庐');
INSERT INTO `tp_weather` VALUES ('1388', '101210104', '淳安');
INSERT INTO `tp_weather` VALUES ('1389', '101210105', '建德');
INSERT INTO `tp_weather` VALUES ('1390', '101210106', '余杭');
INSERT INTO `tp_weather` VALUES ('1391', '101210107', '临安');
INSERT INTO `tp_weather` VALUES ('1392', '101210108', '富阳');
INSERT INTO `tp_weather` VALUES ('1393', '101210201', '湖州');
INSERT INTO `tp_weather` VALUES ('1394', '101210202', '长兴');
INSERT INTO `tp_weather` VALUES ('1395', '101210203', '安吉');
INSERT INTO `tp_weather` VALUES ('1396', '101210204', '德清');
INSERT INTO `tp_weather` VALUES ('1397', '101210301', '嘉兴');
INSERT INTO `tp_weather` VALUES ('1398', '101210302', '嘉善');
INSERT INTO `tp_weather` VALUES ('1399', '101210303', '海宁');
INSERT INTO `tp_weather` VALUES ('1400', '101210304', '桐乡');
INSERT INTO `tp_weather` VALUES ('1401', '101210305', '平湖');
INSERT INTO `tp_weather` VALUES ('1402', '101210306', '海盐');
INSERT INTO `tp_weather` VALUES ('1403', '101210401', '宁波');
INSERT INTO `tp_weather` VALUES ('1404', '101210403', '慈溪');
INSERT INTO `tp_weather` VALUES ('1405', '101210404', '余姚');
INSERT INTO `tp_weather` VALUES ('1406', '101210405', '奉化');
INSERT INTO `tp_weather` VALUES ('1407', '101210406', '象山');
INSERT INTO `tp_weather` VALUES ('1408', '101210408', '宁海');
INSERT INTO `tp_weather` VALUES ('1409', '101210410', '北仑');
INSERT INTO `tp_weather` VALUES ('1410', '101210411', '鄞州');
INSERT INTO `tp_weather` VALUES ('1411', '101210501', '绍兴');
INSERT INTO `tp_weather` VALUES ('1412', '101210502', '诸暨');
INSERT INTO `tp_weather` VALUES ('1413', '101210503', '上虞');
INSERT INTO `tp_weather` VALUES ('1414', '101210504', '新昌');
INSERT INTO `tp_weather` VALUES ('1415', '101210505', '嵊州');
INSERT INTO `tp_weather` VALUES ('1416', '101210601', '台州');
INSERT INTO `tp_weather` VALUES ('1417', '101210603', '玉环');
INSERT INTO `tp_weather` VALUES ('1418', '101210604', '三门');
INSERT INTO `tp_weather` VALUES ('1419', '101210605', '天台');
INSERT INTO `tp_weather` VALUES ('1420', '101210606', '仙居');
INSERT INTO `tp_weather` VALUES ('1421', '101210607', '温岭');
INSERT INTO `tp_weather` VALUES ('1422', '101210610', '临海');
INSERT INTO `tp_weather` VALUES ('1423', '101210701', '温州');
INSERT INTO `tp_weather` VALUES ('1424', '101210702', '泰顺');
INSERT INTO `tp_weather` VALUES ('1425', '101210703', '文成');
INSERT INTO `tp_weather` VALUES ('1426', '101210704', '平阳');
INSERT INTO `tp_weather` VALUES ('1427', '101210705', '瑞安');
INSERT INTO `tp_weather` VALUES ('1428', '101210706', '洞头');
INSERT INTO `tp_weather` VALUES ('1429', '101210707', '乐清');
INSERT INTO `tp_weather` VALUES ('1430', '101210708', '永嘉');
INSERT INTO `tp_weather` VALUES ('1431', '101210709', '苍南');
INSERT INTO `tp_weather` VALUES ('1432', '101210801', '丽水');
INSERT INTO `tp_weather` VALUES ('1433', '101210802', '遂昌');
INSERT INTO `tp_weather` VALUES ('1434', '101210803', '龙泉');
INSERT INTO `tp_weather` VALUES ('1435', '101210804', '缙云');
INSERT INTO `tp_weather` VALUES ('1436', '101210805', '青田');
INSERT INTO `tp_weather` VALUES ('1437', '101210806', '云和');
INSERT INTO `tp_weather` VALUES ('1438', '101210807', '庆元');
INSERT INTO `tp_weather` VALUES ('1439', '101210808', '松阳');
INSERT INTO `tp_weather` VALUES ('1440', '101210809', '景宁');
INSERT INTO `tp_weather` VALUES ('1441', '101210901', '金华');
INSERT INTO `tp_weather` VALUES ('1442', '101210902', '浦江');
INSERT INTO `tp_weather` VALUES ('1443', '101210903', '兰溪');
INSERT INTO `tp_weather` VALUES ('1444', '101210904', '义乌');
INSERT INTO `tp_weather` VALUES ('1445', '101210905', '东阳');
INSERT INTO `tp_weather` VALUES ('1446', '101210906', '武义');
INSERT INTO `tp_weather` VALUES ('1447', '101210907', '永康');
INSERT INTO `tp_weather` VALUES ('1448', '101210908', '磐安');
INSERT INTO `tp_weather` VALUES ('1449', '101211001', '衢州');
INSERT INTO `tp_weather` VALUES ('1450', '101211002', '常山');
INSERT INTO `tp_weather` VALUES ('1451', '101211003', '开化');
INSERT INTO `tp_weather` VALUES ('1452', '101211004', '龙游');
INSERT INTO `tp_weather` VALUES ('1453', '101211005', '江山');
INSERT INTO `tp_weather` VALUES ('1454', '101211101', '舟山');
INSERT INTO `tp_weather` VALUES ('1455', '101211102', '嵊泗');
INSERT INTO `tp_weather` VALUES ('1456', '101211104', '岱山');
INSERT INTO `tp_weather` VALUES ('1457', '101220101', '合肥');
INSERT INTO `tp_weather` VALUES ('1458', '101220102', '长丰');
INSERT INTO `tp_weather` VALUES ('1459', '101220103', '肥东');
INSERT INTO `tp_weather` VALUES ('1460', '101220104', '肥西');
INSERT INTO `tp_weather` VALUES ('1461', '101220201', '蚌埠');
INSERT INTO `tp_weather` VALUES ('1462', '101220202', '怀远');
INSERT INTO `tp_weather` VALUES ('1463', '101220203', '固镇');
INSERT INTO `tp_weather` VALUES ('1464', '101220204', '五河');
INSERT INTO `tp_weather` VALUES ('1465', '101220301', '芜湖');
INSERT INTO `tp_weather` VALUES ('1466', '101220302', '繁昌');
INSERT INTO `tp_weather` VALUES ('1467', '101220304', '南陵');
INSERT INTO `tp_weather` VALUES ('1468', '101220401', '淮南');
INSERT INTO `tp_weather` VALUES ('1469', '101220402', '凤台');
INSERT INTO `tp_weather` VALUES ('1470', '101220403', '潘集');
INSERT INTO `tp_weather` VALUES ('1471', '101220501', '马鞍山');
INSERT INTO `tp_weather` VALUES ('1472', '101220502', '当涂');
INSERT INTO `tp_weather` VALUES ('1473', '101220601', '安庆');
INSERT INTO `tp_weather` VALUES ('1474', '101220602', '枞阳');
INSERT INTO `tp_weather` VALUES ('1475', '101220603', '太湖');
INSERT INTO `tp_weather` VALUES ('1476', '101220604', '潜山');
INSERT INTO `tp_weather` VALUES ('1477', '101220605', '怀宁');
INSERT INTO `tp_weather` VALUES ('1478', '101220606', '宿松');
INSERT INTO `tp_weather` VALUES ('1479', '101220607', '望江');
INSERT INTO `tp_weather` VALUES ('1480', '101220608', '岳西');
INSERT INTO `tp_weather` VALUES ('1481', '101220609', '桐城');
INSERT INTO `tp_weather` VALUES ('1482', '101220701', '宿州');
INSERT INTO `tp_weather` VALUES ('1483', '101220702', '砀山');
INSERT INTO `tp_weather` VALUES ('1484', '101220703', '灵璧');
INSERT INTO `tp_weather` VALUES ('1485', '101220704', '泗县');
INSERT INTO `tp_weather` VALUES ('1486', '101220705', '萧县');
INSERT INTO `tp_weather` VALUES ('1487', '101220801', '阜阳');
INSERT INTO `tp_weather` VALUES ('1488', '101220802', '阜南');
INSERT INTO `tp_weather` VALUES ('1489', '101220803', '颍上');
INSERT INTO `tp_weather` VALUES ('1490', '101220804', '临泉');
INSERT INTO `tp_weather` VALUES ('1491', '101220805', '界首');
INSERT INTO `tp_weather` VALUES ('1492', '101220806', '太和');
INSERT INTO `tp_weather` VALUES ('1493', '101220901', '亳州');
INSERT INTO `tp_weather` VALUES ('1494', '101220902', '涡阳');
INSERT INTO `tp_weather` VALUES ('1495', '101220903', '利辛');
INSERT INTO `tp_weather` VALUES ('1496', '101220904', '蒙城');
INSERT INTO `tp_weather` VALUES ('1497', '101221001', '黄山');
INSERT INTO `tp_weather` VALUES ('1498', '101221004', '祁门');
INSERT INTO `tp_weather` VALUES ('1499', '101221005', '黟县');
INSERT INTO `tp_weather` VALUES ('1500', '101221006', '歙县');
INSERT INTO `tp_weather` VALUES ('1501', '101221007', '休宁');
INSERT INTO `tp_weather` VALUES ('1502', '101221101', '滁州');
INSERT INTO `tp_weather` VALUES ('1503', '101221102', '凤阳');
INSERT INTO `tp_weather` VALUES ('1504', '101221103', '明光');
INSERT INTO `tp_weather` VALUES ('1505', '101221104', '定远');
INSERT INTO `tp_weather` VALUES ('1506', '101221105', '全椒');
INSERT INTO `tp_weather` VALUES ('1507', '101221106', '来安');
INSERT INTO `tp_weather` VALUES ('1508', '101221107', '天长');
INSERT INTO `tp_weather` VALUES ('1509', '101221201', '淮北');
INSERT INTO `tp_weather` VALUES ('1510', '101221202', '濉溪');
INSERT INTO `tp_weather` VALUES ('1511', '101221301', '铜陵');
INSERT INTO `tp_weather` VALUES ('1512', '101221401', '宣城');
INSERT INTO `tp_weather` VALUES ('1513', '101221402', '泾县');
INSERT INTO `tp_weather` VALUES ('1514', '101221403', '旌德');
INSERT INTO `tp_weather` VALUES ('1515', '101221404', '宁国');
INSERT INTO `tp_weather` VALUES ('1516', '101221405', '绩溪');
INSERT INTO `tp_weather` VALUES ('1517', '101221406', '广德');
INSERT INTO `tp_weather` VALUES ('1518', '101221407', '郎溪');
INSERT INTO `tp_weather` VALUES ('1519', '101221501', '六安');
INSERT INTO `tp_weather` VALUES ('1520', '101221502', '霍邱');
INSERT INTO `tp_weather` VALUES ('1521', '101221503', '寿县');
INSERT INTO `tp_weather` VALUES ('1522', '101221505', '金寨');
INSERT INTO `tp_weather` VALUES ('1523', '101221506', '霍山');
INSERT INTO `tp_weather` VALUES ('1524', '101221507', '舒城');
INSERT INTO `tp_weather` VALUES ('1525', '101221601', '巢湖');
INSERT INTO `tp_weather` VALUES ('1526', '101221602', '庐江');
INSERT INTO `tp_weather` VALUES ('1527', '101221603', '无为');
INSERT INTO `tp_weather` VALUES ('1528', '101221604', '含山');
INSERT INTO `tp_weather` VALUES ('1529', '101221605', '和县');
INSERT INTO `tp_weather` VALUES ('1530', '101221701', '池州');
INSERT INTO `tp_weather` VALUES ('1531', '101221702', '东至');
INSERT INTO `tp_weather` VALUES ('1532', '101221703', '青阳');
INSERT INTO `tp_weather` VALUES ('1533', '101221705', '石台');
INSERT INTO `tp_weather` VALUES ('1534', '101230101', '福州');
INSERT INTO `tp_weather` VALUES ('1535', '101230102', '闽清');
INSERT INTO `tp_weather` VALUES ('1536', '101230103', '闽侯');
INSERT INTO `tp_weather` VALUES ('1537', '101230104', '罗源');
INSERT INTO `tp_weather` VALUES ('1538', '101230105', '连江');
INSERT INTO `tp_weather` VALUES ('1539', '101230107', '永泰');
INSERT INTO `tp_weather` VALUES ('1540', '101230108', '平潭');
INSERT INTO `tp_weather` VALUES ('1541', '101230110', '长乐');
INSERT INTO `tp_weather` VALUES ('1542', '101230111', '福清');
INSERT INTO `tp_weather` VALUES ('1543', '101230201', '厦门');
INSERT INTO `tp_weather` VALUES ('1544', '101230301', '宁德');
INSERT INTO `tp_weather` VALUES ('1545', '101230302', '古田');
INSERT INTO `tp_weather` VALUES ('1546', '101230303', '霞浦');
INSERT INTO `tp_weather` VALUES ('1547', '101230304', '寿宁');
INSERT INTO `tp_weather` VALUES ('1548', '101230305', '周宁');
INSERT INTO `tp_weather` VALUES ('1549', '101230306', '福安');
INSERT INTO `tp_weather` VALUES ('1550', '101230307', '柘荣');
INSERT INTO `tp_weather` VALUES ('1551', '101230308', '福鼎');
INSERT INTO `tp_weather` VALUES ('1552', '101230309', '屏南');
INSERT INTO `tp_weather` VALUES ('1553', '101230401', '莆田');
INSERT INTO `tp_weather` VALUES ('1554', '101230402', '仙游');
INSERT INTO `tp_weather` VALUES ('1555', '101230404', '涵江');
INSERT INTO `tp_weather` VALUES ('1556', '101230405', '秀屿');
INSERT INTO `tp_weather` VALUES ('1557', '101230406', '荔城');
INSERT INTO `tp_weather` VALUES ('1558', '101230407', '城厢');
INSERT INTO `tp_weather` VALUES ('1559', '101230501', '泉州');
INSERT INTO `tp_weather` VALUES ('1560', '101230502', '安溪');
INSERT INTO `tp_weather` VALUES ('1561', '101230504', '永春');
INSERT INTO `tp_weather` VALUES ('1562', '101230505', '德化');
INSERT INTO `tp_weather` VALUES ('1563', '101230506', '南安');
INSERT INTO `tp_weather` VALUES ('1564', '101230508', '惠安');
INSERT INTO `tp_weather` VALUES ('1565', '101230509', '晋江');
INSERT INTO `tp_weather` VALUES ('1566', '101230510', '石狮');
INSERT INTO `tp_weather` VALUES ('1567', '101230601', '漳州');
INSERT INTO `tp_weather` VALUES ('1568', '101230602', '长泰');
INSERT INTO `tp_weather` VALUES ('1569', '101230603', '南靖');
INSERT INTO `tp_weather` VALUES ('1570', '101230604', '平和');
INSERT INTO `tp_weather` VALUES ('1571', '101230605', '龙海');
INSERT INTO `tp_weather` VALUES ('1572', '101230606', '漳浦');
INSERT INTO `tp_weather` VALUES ('1573', '101230607', '诏安');
INSERT INTO `tp_weather` VALUES ('1574', '101230609', '云霄');
INSERT INTO `tp_weather` VALUES ('1575', '101230610', '华安');
INSERT INTO `tp_weather` VALUES ('1576', '101230701', '龙岩');
INSERT INTO `tp_weather` VALUES ('1577', '101230702', '长汀');
INSERT INTO `tp_weather` VALUES ('1578', '101230703', '连城');
INSERT INTO `tp_weather` VALUES ('1579', '101230704', '武平');
INSERT INTO `tp_weather` VALUES ('1580', '101230705', '上杭');
INSERT INTO `tp_weather` VALUES ('1581', '101230706', '永定');
INSERT INTO `tp_weather` VALUES ('1582', '101230707', '漳平');
INSERT INTO `tp_weather` VALUES ('1583', '101230801', '三明');
INSERT INTO `tp_weather` VALUES ('1584', '101230802', '宁化');
INSERT INTO `tp_weather` VALUES ('1585', '101230803', '清流');
INSERT INTO `tp_weather` VALUES ('1586', '101230804', '泰宁');
INSERT INTO `tp_weather` VALUES ('1587', '101230805', '将乐');
INSERT INTO `tp_weather` VALUES ('1588', '101230806', '建宁');
INSERT INTO `tp_weather` VALUES ('1589', '101230807', '明溪');
INSERT INTO `tp_weather` VALUES ('1590', '101230808', '沙县');
INSERT INTO `tp_weather` VALUES ('1591', '101230809', '尤溪');
INSERT INTO `tp_weather` VALUES ('1592', '101230810', '永安');
INSERT INTO `tp_weather` VALUES ('1593', '101230811', '大田');
INSERT INTO `tp_weather` VALUES ('1594', '101230901', '南平');
INSERT INTO `tp_weather` VALUES ('1595', '101230902', '顺昌');
INSERT INTO `tp_weather` VALUES ('1596', '101230903', '光泽');
INSERT INTO `tp_weather` VALUES ('1597', '101230904', '邵武');
INSERT INTO `tp_weather` VALUES ('1598', '101230905', '武夷山');
INSERT INTO `tp_weather` VALUES ('1599', '101230906', '浦城');
INSERT INTO `tp_weather` VALUES ('1600', '101230907', '建阳');
INSERT INTO `tp_weather` VALUES ('1601', '101230908', '松溪');
INSERT INTO `tp_weather` VALUES ('1602', '101230909', '政和');
INSERT INTO `tp_weather` VALUES ('1603', '101230910', '建瓯');
INSERT INTO `tp_weather` VALUES ('1604', '101231001', '钓鱼岛');
INSERT INTO `tp_weather` VALUES ('1605', '101240101', '南昌');
INSERT INTO `tp_weather` VALUES ('1606', '101240102', '新建');
INSERT INTO `tp_weather` VALUES ('1607', '101240104', '安义');
INSERT INTO `tp_weather` VALUES ('1608', '101240105', '进贤');
INSERT INTO `tp_weather` VALUES ('1609', '101240201', '九江');
INSERT INTO `tp_weather` VALUES ('1610', '101240202', '瑞昌');
INSERT INTO `tp_weather` VALUES ('1611', '101240204', '武宁');
INSERT INTO `tp_weather` VALUES ('1612', '101240205', '德安');
INSERT INTO `tp_weather` VALUES ('1613', '101240206', '永修');
INSERT INTO `tp_weather` VALUES ('1614', '101240207', '湖口');
INSERT INTO `tp_weather` VALUES ('1615', '101240208', '彭泽');
INSERT INTO `tp_weather` VALUES ('1616', '101240209', '星子');
INSERT INTO `tp_weather` VALUES ('1617', '101240210', '都昌');
INSERT INTO `tp_weather` VALUES ('1618', '101240212', '修水');
INSERT INTO `tp_weather` VALUES ('1619', '101240301', '上饶');
INSERT INTO `tp_weather` VALUES ('1620', '101240302', '鄱阳');
INSERT INTO `tp_weather` VALUES ('1621', '101240303', '婺源');
INSERT INTO `tp_weather` VALUES ('1622', '101240305', '余干');
INSERT INTO `tp_weather` VALUES ('1623', '101240306', '万年');
INSERT INTO `tp_weather` VALUES ('1624', '101240307', '德兴');
INSERT INTO `tp_weather` VALUES ('1625', '101240309', '弋阳');
INSERT INTO `tp_weather` VALUES ('1626', '101240310', '横峰');
INSERT INTO `tp_weather` VALUES ('1627', '101240311', '铅山');
INSERT INTO `tp_weather` VALUES ('1628', '101240312', '玉山');
INSERT INTO `tp_weather` VALUES ('1629', '101240313', '广丰');
INSERT INTO `tp_weather` VALUES ('1630', '101240401', '抚州');
INSERT INTO `tp_weather` VALUES ('1631', '101240402', '广昌');
INSERT INTO `tp_weather` VALUES ('1632', '101240403', '乐安');
INSERT INTO `tp_weather` VALUES ('1633', '101240404', '崇仁');
INSERT INTO `tp_weather` VALUES ('1634', '101240405', '金溪');
INSERT INTO `tp_weather` VALUES ('1635', '101240406', '资溪');
INSERT INTO `tp_weather` VALUES ('1636', '101240407', '宜黄');
INSERT INTO `tp_weather` VALUES ('1637', '101240408', '南城');
INSERT INTO `tp_weather` VALUES ('1638', '101240409', '南丰');
INSERT INTO `tp_weather` VALUES ('1639', '101240410', '黎川');
INSERT INTO `tp_weather` VALUES ('1640', '101240411', '东乡');
INSERT INTO `tp_weather` VALUES ('1641', '101240501', '宜春');
INSERT INTO `tp_weather` VALUES ('1642', '101240502', '铜鼓');
INSERT INTO `tp_weather` VALUES ('1643', '101240503', '宜丰');
INSERT INTO `tp_weather` VALUES ('1644', '101240504', '万载');
INSERT INTO `tp_weather` VALUES ('1645', '101240505', '上高');
INSERT INTO `tp_weather` VALUES ('1646', '101240506', '靖安');
INSERT INTO `tp_weather` VALUES ('1647', '101240507', '奉新');
INSERT INTO `tp_weather` VALUES ('1648', '101240508', '高安');
INSERT INTO `tp_weather` VALUES ('1649', '101240509', '樟树');
INSERT INTO `tp_weather` VALUES ('1650', '101240510', '丰城');
INSERT INTO `tp_weather` VALUES ('1651', '101240601', '吉安');
INSERT INTO `tp_weather` VALUES ('1652', '101240603', '吉水');
INSERT INTO `tp_weather` VALUES ('1653', '101240604', '新干');
INSERT INTO `tp_weather` VALUES ('1654', '101240605', '峡江');
INSERT INTO `tp_weather` VALUES ('1655', '101240606', '永丰');
INSERT INTO `tp_weather` VALUES ('1656', '101240607', '永新');
INSERT INTO `tp_weather` VALUES ('1657', '101240608', '井冈山');
INSERT INTO `tp_weather` VALUES ('1658', '101240609', '万安');
INSERT INTO `tp_weather` VALUES ('1659', '101240610', '遂川');
INSERT INTO `tp_weather` VALUES ('1660', '101240611', '泰和');
INSERT INTO `tp_weather` VALUES ('1661', '101240612', '安福');
INSERT INTO `tp_weather` VALUES ('1662', '101240701', '赣州');
INSERT INTO `tp_weather` VALUES ('1663', '101240702', '崇义');
INSERT INTO `tp_weather` VALUES ('1664', '101240703', '上犹');
INSERT INTO `tp_weather` VALUES ('1665', '101240704', '南康');
INSERT INTO `tp_weather` VALUES ('1666', '101240705', '大余');
INSERT INTO `tp_weather` VALUES ('1667', '101240706', '信丰');
INSERT INTO `tp_weather` VALUES ('1668', '101240707', '宁都');
INSERT INTO `tp_weather` VALUES ('1669', '101240708', '石城');
INSERT INTO `tp_weather` VALUES ('1670', '101240709', '瑞金');
INSERT INTO `tp_weather` VALUES ('1671', '101240710', '于都');
INSERT INTO `tp_weather` VALUES ('1672', '101240711', '会昌');
INSERT INTO `tp_weather` VALUES ('1673', '101240712', '安远');
INSERT INTO `tp_weather` VALUES ('1674', '101240713', '全南');
INSERT INTO `tp_weather` VALUES ('1675', '101240714', '龙南');
INSERT INTO `tp_weather` VALUES ('1676', '101240715', '定南');
INSERT INTO `tp_weather` VALUES ('1677', '101240716', '寻乌');
INSERT INTO `tp_weather` VALUES ('1678', '101240717', '兴国');
INSERT INTO `tp_weather` VALUES ('1679', '101240718', '赣县');
INSERT INTO `tp_weather` VALUES ('1680', '101240801', '景德镇');
INSERT INTO `tp_weather` VALUES ('1681', '101240802', '乐平');
INSERT INTO `tp_weather` VALUES ('1682', '101240803', '浮梁');
INSERT INTO `tp_weather` VALUES ('1683', '101240901', '萍乡');
INSERT INTO `tp_weather` VALUES ('1684', '101240902', '莲花');
INSERT INTO `tp_weather` VALUES ('1685', '101240903', '上栗');
INSERT INTO `tp_weather` VALUES ('1686', '101240905', '芦溪');
INSERT INTO `tp_weather` VALUES ('1687', '101240906', '湘东');
INSERT INTO `tp_weather` VALUES ('1688', '101241001', '新余');
INSERT INTO `tp_weather` VALUES ('1689', '101241002', '分宜');
INSERT INTO `tp_weather` VALUES ('1690', '101241101', '鹰潭');
INSERT INTO `tp_weather` VALUES ('1691', '101241102', '余江');
INSERT INTO `tp_weather` VALUES ('1692', '101241103', '贵溪');
INSERT INTO `tp_weather` VALUES ('1693', '101250101', '长沙');
INSERT INTO `tp_weather` VALUES ('1694', '101250102', '宁乡');
INSERT INTO `tp_weather` VALUES ('1695', '101250103', '浏阳');
INSERT INTO `tp_weather` VALUES ('1696', '101250105', '望城');
INSERT INTO `tp_weather` VALUES ('1697', '101250201', '湘潭');
INSERT INTO `tp_weather` VALUES ('1698', '101250202', '韶山');
INSERT INTO `tp_weather` VALUES ('1699', '101250203', '湘乡');
INSERT INTO `tp_weather` VALUES ('1700', '101250301', '株洲');
INSERT INTO `tp_weather` VALUES ('1701', '101250302', '攸县');
INSERT INTO `tp_weather` VALUES ('1702', '101250303', '醴陵');
INSERT INTO `tp_weather` VALUES ('1703', '101250305', '茶陵');
INSERT INTO `tp_weather` VALUES ('1704', '101250306', '炎陵');
INSERT INTO `tp_weather` VALUES ('1705', '101250401', '衡阳');
INSERT INTO `tp_weather` VALUES ('1706', '101250402', '衡山');
INSERT INTO `tp_weather` VALUES ('1707', '101250403', '衡东');
INSERT INTO `tp_weather` VALUES ('1708', '101250404', '祁东');
INSERT INTO `tp_weather` VALUES ('1709', '101250406', '常宁');
INSERT INTO `tp_weather` VALUES ('1710', '101250407', '衡南');
INSERT INTO `tp_weather` VALUES ('1711', '101250408', '耒阳');
INSERT INTO `tp_weather` VALUES ('1712', '101250501', '郴州');
INSERT INTO `tp_weather` VALUES ('1713', '101250502', '桂阳');
INSERT INTO `tp_weather` VALUES ('1714', '101250503', '嘉禾');
INSERT INTO `tp_weather` VALUES ('1715', '101250504', '宜章');
INSERT INTO `tp_weather` VALUES ('1716', '101250505', '临武');
INSERT INTO `tp_weather` VALUES ('1717', '101250507', '资兴');
INSERT INTO `tp_weather` VALUES ('1718', '101250508', '汝城');
INSERT INTO `tp_weather` VALUES ('1719', '101250509', '安仁');
INSERT INTO `tp_weather` VALUES ('1720', '101250510', '永兴');
INSERT INTO `tp_weather` VALUES ('1721', '101250511', '桂东');
INSERT INTO `tp_weather` VALUES ('1722', '101250512', '苏仙');
INSERT INTO `tp_weather` VALUES ('1723', '101250601', '常德');
INSERT INTO `tp_weather` VALUES ('1724', '101250602', '安乡');
INSERT INTO `tp_weather` VALUES ('1725', '101250603', '桃源');
INSERT INTO `tp_weather` VALUES ('1726', '101250604', '汉寿');
INSERT INTO `tp_weather` VALUES ('1727', '101250605', '澧县');
INSERT INTO `tp_weather` VALUES ('1728', '101250606', '临澧');
INSERT INTO `tp_weather` VALUES ('1729', '101250607', '石门');
INSERT INTO `tp_weather` VALUES ('1730', '101250608', '津市');
INSERT INTO `tp_weather` VALUES ('1731', '101250700', '益阳');
INSERT INTO `tp_weather` VALUES ('1732', '101250702', '南县');
INSERT INTO `tp_weather` VALUES ('1733', '101250703', '桃江');
INSERT INTO `tp_weather` VALUES ('1734', '101250704', '安化');
INSERT INTO `tp_weather` VALUES ('1735', '101250705', '沅江');
INSERT INTO `tp_weather` VALUES ('1736', '101250801', '娄底');
INSERT INTO `tp_weather` VALUES ('1737', '101250802', '双峰');
INSERT INTO `tp_weather` VALUES ('1738', '101250803', '冷水江');
INSERT INTO `tp_weather` VALUES ('1739', '101250805', '新化');
INSERT INTO `tp_weather` VALUES ('1740', '101250806', '涟源');
INSERT INTO `tp_weather` VALUES ('1741', '101250901', '邵阳');
INSERT INTO `tp_weather` VALUES ('1742', '101250902', '隆回');
INSERT INTO `tp_weather` VALUES ('1743', '101250903', '洞口');
INSERT INTO `tp_weather` VALUES ('1744', '101250904', '新邵');
INSERT INTO `tp_weather` VALUES ('1745', '101250905', '邵东');
INSERT INTO `tp_weather` VALUES ('1746', '101250906', '绥宁');
INSERT INTO `tp_weather` VALUES ('1747', '101250907', '新宁');
INSERT INTO `tp_weather` VALUES ('1748', '101250908', '武冈');
INSERT INTO `tp_weather` VALUES ('1749', '101250909', '城步');
INSERT INTO `tp_weather` VALUES ('1750', '101251001', '岳阳');
INSERT INTO `tp_weather` VALUES ('1751', '101251002', '华容');
INSERT INTO `tp_weather` VALUES ('1752', '101251003', '湘阴');
INSERT INTO `tp_weather` VALUES ('1753', '101251004', '汨罗');
INSERT INTO `tp_weather` VALUES ('1754', '101251005', '平江');
INSERT INTO `tp_weather` VALUES ('1755', '101251006', '临湘');
INSERT INTO `tp_weather` VALUES ('1756', '101251101', '张家界');
INSERT INTO `tp_weather` VALUES ('1757', '101251102', '桑植');
INSERT INTO `tp_weather` VALUES ('1758', '101251103', '慈利');
INSERT INTO `tp_weather` VALUES ('1759', '101251104', '武陵源');
INSERT INTO `tp_weather` VALUES ('1760', '101251201', '怀化');
INSERT INTO `tp_weather` VALUES ('1761', '101251203', '沅陵');
INSERT INTO `tp_weather` VALUES ('1762', '101251204', '辰溪');
INSERT INTO `tp_weather` VALUES ('1763', '101251205', '靖州');
INSERT INTO `tp_weather` VALUES ('1764', '101251206', '会同');
INSERT INTO `tp_weather` VALUES ('1765', '101251207', '通道');
INSERT INTO `tp_weather` VALUES ('1766', '101251208', '麻阳');
INSERT INTO `tp_weather` VALUES ('1767', '101251209', '新晃');
INSERT INTO `tp_weather` VALUES ('1768', '101251210', '芷江');
INSERT INTO `tp_weather` VALUES ('1769', '101251211', '溆浦');
INSERT INTO `tp_weather` VALUES ('1770', '101251212', '中方');
INSERT INTO `tp_weather` VALUES ('1771', '101251213', '洪江');
INSERT INTO `tp_weather` VALUES ('1772', '101251401', '永州');
INSERT INTO `tp_weather` VALUES ('1773', '101251402', '祁阳');
INSERT INTO `tp_weather` VALUES ('1774', '101251403', '东安');
INSERT INTO `tp_weather` VALUES ('1775', '101251404', '双牌');
INSERT INTO `tp_weather` VALUES ('1776', '101251405', '道县');
INSERT INTO `tp_weather` VALUES ('1777', '101251406', '宁远');
INSERT INTO `tp_weather` VALUES ('1778', '101251407', '江永');
INSERT INTO `tp_weather` VALUES ('1779', '101251408', '蓝山');
INSERT INTO `tp_weather` VALUES ('1780', '101251409', '新田');
INSERT INTO `tp_weather` VALUES ('1781', '101251410', '江华');
INSERT INTO `tp_weather` VALUES ('1782', '101251501', '吉首');
INSERT INTO `tp_weather` VALUES ('1783', '101251502', '保靖');
INSERT INTO `tp_weather` VALUES ('1784', '101251503', '永顺');
INSERT INTO `tp_weather` VALUES ('1785', '101251504', '古丈');
INSERT INTO `tp_weather` VALUES ('1786', '101251505', '凤凰');
INSERT INTO `tp_weather` VALUES ('1787', '101251506', '泸溪');
INSERT INTO `tp_weather` VALUES ('1788', '101251507', '龙山');
INSERT INTO `tp_weather` VALUES ('1789', '101251508', '花垣');
INSERT INTO `tp_weather` VALUES ('1790', '101260101', '贵阳');
INSERT INTO `tp_weather` VALUES ('1791', '101260102', '白云');
INSERT INTO `tp_weather` VALUES ('1792', '101260103', '花溪');
INSERT INTO `tp_weather` VALUES ('1793', '101260104', '乌当');
INSERT INTO `tp_weather` VALUES ('1794', '101260105', '息烽');
INSERT INTO `tp_weather` VALUES ('1795', '101260106', '开阳');
INSERT INTO `tp_weather` VALUES ('1796', '101260107', '修文');
INSERT INTO `tp_weather` VALUES ('1797', '101260108', '清镇');
INSERT INTO `tp_weather` VALUES ('1798', '101260109', '小河');
INSERT INTO `tp_weather` VALUES ('1799', '101260110', '云岩');
INSERT INTO `tp_weather` VALUES ('1800', '101260111', '南明');
INSERT INTO `tp_weather` VALUES ('1801', '101260201', '遵义');
INSERT INTO `tp_weather` VALUES ('1802', '101260203', '仁怀');
INSERT INTO `tp_weather` VALUES ('1803', '101260204', '绥阳');
INSERT INTO `tp_weather` VALUES ('1804', '101260205', '湄潭');
INSERT INTO `tp_weather` VALUES ('1805', '101260206', '凤冈');
INSERT INTO `tp_weather` VALUES ('1806', '101260207', '桐梓');
INSERT INTO `tp_weather` VALUES ('1807', '101260208', '赤水');
INSERT INTO `tp_weather` VALUES ('1808', '101260209', '习水');
INSERT INTO `tp_weather` VALUES ('1809', '101260210', '道真');
INSERT INTO `tp_weather` VALUES ('1810', '101260211', '正安');
INSERT INTO `tp_weather` VALUES ('1811', '101260212', '务川');
INSERT INTO `tp_weather` VALUES ('1812', '101260213', '余庆');
INSERT INTO `tp_weather` VALUES ('1813', '101260214', '汇川');
INSERT INTO `tp_weather` VALUES ('1814', '101260215', '红花岗');
INSERT INTO `tp_weather` VALUES ('1815', '101260301', '安顺');
INSERT INTO `tp_weather` VALUES ('1816', '101260302', '普定');
INSERT INTO `tp_weather` VALUES ('1817', '101260303', '镇宁');
INSERT INTO `tp_weather` VALUES ('1818', '101260304', '平坝');
INSERT INTO `tp_weather` VALUES ('1819', '101260305', '紫云');
INSERT INTO `tp_weather` VALUES ('1820', '101260306', '关岭');
INSERT INTO `tp_weather` VALUES ('1821', '101260401', '都匀');
INSERT INTO `tp_weather` VALUES ('1822', '101260402', '贵定');
INSERT INTO `tp_weather` VALUES ('1823', '101260403', '瓮安');
INSERT INTO `tp_weather` VALUES ('1824', '101260404', '长顺');
INSERT INTO `tp_weather` VALUES ('1825', '101260405', '福泉');
INSERT INTO `tp_weather` VALUES ('1826', '101260406', '惠水');
INSERT INTO `tp_weather` VALUES ('1827', '101260407', '龙里');
INSERT INTO `tp_weather` VALUES ('1828', '101260408', '罗甸');
INSERT INTO `tp_weather` VALUES ('1829', '101260409', '平塘');
INSERT INTO `tp_weather` VALUES ('1830', '101260410', '独山');
INSERT INTO `tp_weather` VALUES ('1831', '101260411', '三都');
INSERT INTO `tp_weather` VALUES ('1832', '101260412', '荔波');
INSERT INTO `tp_weather` VALUES ('1833', '101260501', '凯里');
INSERT INTO `tp_weather` VALUES ('1834', '101260502', '岑巩');
INSERT INTO `tp_weather` VALUES ('1835', '101260503', '施秉');
INSERT INTO `tp_weather` VALUES ('1836', '101260504', '镇远');
INSERT INTO `tp_weather` VALUES ('1837', '101260505', '黄平');
INSERT INTO `tp_weather` VALUES ('1838', '101260507', '麻江');
INSERT INTO `tp_weather` VALUES ('1839', '101260508', '丹寨');
INSERT INTO `tp_weather` VALUES ('1840', '101260509', '三穗');
INSERT INTO `tp_weather` VALUES ('1841', '101260510', '台江');
INSERT INTO `tp_weather` VALUES ('1842', '101260511', '剑河');
INSERT INTO `tp_weather` VALUES ('1843', '101260512', '雷山');
INSERT INTO `tp_weather` VALUES ('1844', '101260513', '黎平');
INSERT INTO `tp_weather` VALUES ('1845', '101260514', '天柱');
INSERT INTO `tp_weather` VALUES ('1846', '101260515', '锦屏');
INSERT INTO `tp_weather` VALUES ('1847', '101260516', '榕江');
INSERT INTO `tp_weather` VALUES ('1848', '101260517', '从江');
INSERT INTO `tp_weather` VALUES ('1849', '101260601', '铜仁');
INSERT INTO `tp_weather` VALUES ('1850', '101260602', '江口');
INSERT INTO `tp_weather` VALUES ('1851', '101260603', '玉屏');
INSERT INTO `tp_weather` VALUES ('1852', '101260604', '万山特');
INSERT INTO `tp_weather` VALUES ('1853', '101260605', '思南');
INSERT INTO `tp_weather` VALUES ('1854', '101260607', '印江');
INSERT INTO `tp_weather` VALUES ('1855', '101260608', '石阡');
INSERT INTO `tp_weather` VALUES ('1856', '101260609', '沿河');
INSERT INTO `tp_weather` VALUES ('1857', '101260610', '德江');
INSERT INTO `tp_weather` VALUES ('1858', '101260611', '松桃');
INSERT INTO `tp_weather` VALUES ('1859', '101260701', '毕节');
INSERT INTO `tp_weather` VALUES ('1860', '101260702', '赫章');
INSERT INTO `tp_weather` VALUES ('1861', '101260703', '金沙');
INSERT INTO `tp_weather` VALUES ('1862', '101260704', '威宁');
INSERT INTO `tp_weather` VALUES ('1863', '101260705', '大方');
INSERT INTO `tp_weather` VALUES ('1864', '101260706', '纳雍');
INSERT INTO `tp_weather` VALUES ('1865', '101260707', '织金');
INSERT INTO `tp_weather` VALUES ('1866', '101260708', '黔西');
INSERT INTO `tp_weather` VALUES ('1867', '101260801', '水城');
INSERT INTO `tp_weather` VALUES ('1868', '101260802', '六枝特');
INSERT INTO `tp_weather` VALUES ('1869', '101260804', '盘县');
INSERT INTO `tp_weather` VALUES ('1870', '101260901', '兴义');
INSERT INTO `tp_weather` VALUES ('1871', '101260902', '晴隆');
INSERT INTO `tp_weather` VALUES ('1872', '101260903', '兴仁');
INSERT INTO `tp_weather` VALUES ('1873', '101260904', '贞丰');
INSERT INTO `tp_weather` VALUES ('1874', '101260905', '望谟');
INSERT INTO `tp_weather` VALUES ('1875', '101260907', '安龙');
INSERT INTO `tp_weather` VALUES ('1876', '101260908', '册亨');
INSERT INTO `tp_weather` VALUES ('1877', '101260909', '普安');
INSERT INTO `tp_weather` VALUES ('1878', '101270101', '成都');
INSERT INTO `tp_weather` VALUES ('1879', '101270103', '新都');
INSERT INTO `tp_weather` VALUES ('1880', '101270104', '温江');
INSERT INTO `tp_weather` VALUES ('1881', '101270105', '金堂');
INSERT INTO `tp_weather` VALUES ('1882', '101270106', '双流');
INSERT INTO `tp_weather` VALUES ('1883', '101270107', '郫县');
INSERT INTO `tp_weather` VALUES ('1884', '101270108', '大邑');
INSERT INTO `tp_weather` VALUES ('1885', '101270109', '蒲江');
INSERT INTO `tp_weather` VALUES ('1886', '101270110', '新津');
INSERT INTO `tp_weather` VALUES ('1887', '101270111', '都江堰');
INSERT INTO `tp_weather` VALUES ('1888', '101270112', '彭州');
INSERT INTO `tp_weather` VALUES ('1889', '101270113', '邛崃');
INSERT INTO `tp_weather` VALUES ('1890', '101270114', '崇州');
INSERT INTO `tp_weather` VALUES ('1891', '101270201', '攀枝花');
INSERT INTO `tp_weather` VALUES ('1892', '101270203', '米易');
INSERT INTO `tp_weather` VALUES ('1893', '101270204', '盐边');
INSERT INTO `tp_weather` VALUES ('1894', '101270301', '自贡');
INSERT INTO `tp_weather` VALUES ('1895', '101270302', '富顺');
INSERT INTO `tp_weather` VALUES ('1896', '101270303', '荣县');
INSERT INTO `tp_weather` VALUES ('1897', '101270401', '绵阳');
INSERT INTO `tp_weather` VALUES ('1898', '101270402', '三台');
INSERT INTO `tp_weather` VALUES ('1899', '101270403', '盐亭');
INSERT INTO `tp_weather` VALUES ('1900', '101270404', '安县');
INSERT INTO `tp_weather` VALUES ('1901', '101270405', '梓潼');
INSERT INTO `tp_weather` VALUES ('1902', '101270406', '北川');
INSERT INTO `tp_weather` VALUES ('1903', '101270407', '平武');
INSERT INTO `tp_weather` VALUES ('1904', '101270408', '江油');
INSERT INTO `tp_weather` VALUES ('1905', '101270501', '南充');
INSERT INTO `tp_weather` VALUES ('1906', '101270502', '南部');
INSERT INTO `tp_weather` VALUES ('1907', '101270503', '营山');
INSERT INTO `tp_weather` VALUES ('1908', '101270504', '蓬安');
INSERT INTO `tp_weather` VALUES ('1909', '101270505', '仪陇');
INSERT INTO `tp_weather` VALUES ('1910', '101270506', '西充');
INSERT INTO `tp_weather` VALUES ('1911', '101270507', '阆中');
INSERT INTO `tp_weather` VALUES ('1912', '101270601', '达州');
INSERT INTO `tp_weather` VALUES ('1913', '101270602', '宣汉');
INSERT INTO `tp_weather` VALUES ('1914', '101270603', '开江');
INSERT INTO `tp_weather` VALUES ('1915', '101270604', '大竹');
INSERT INTO `tp_weather` VALUES ('1916', '101270605', '渠县');
INSERT INTO `tp_weather` VALUES ('1917', '101270606', '万源');
INSERT INTO `tp_weather` VALUES ('1918', '101270608', '达县');
INSERT INTO `tp_weather` VALUES ('1919', '101270701', '遂宁');
INSERT INTO `tp_weather` VALUES ('1920', '101270702', '蓬溪');
INSERT INTO `tp_weather` VALUES ('1921', '101270703', '射洪');
INSERT INTO `tp_weather` VALUES ('1922', '101270801', '广安');
INSERT INTO `tp_weather` VALUES ('1923', '101270802', '岳池');
INSERT INTO `tp_weather` VALUES ('1924', '101270803', '武胜');
INSERT INTO `tp_weather` VALUES ('1925', '101270804', '邻水');
INSERT INTO `tp_weather` VALUES ('1926', '101270805', '华蓥');
INSERT INTO `tp_weather` VALUES ('1927', '101270901', '巴中');
INSERT INTO `tp_weather` VALUES ('1928', '101270902', '通江');
INSERT INTO `tp_weather` VALUES ('1929', '101270903', '南江');
INSERT INTO `tp_weather` VALUES ('1930', '101270904', '平昌');
INSERT INTO `tp_weather` VALUES ('1931', '101271001', '泸州');
INSERT INTO `tp_weather` VALUES ('1932', '101271003', '泸县');
INSERT INTO `tp_weather` VALUES ('1933', '101271004', '合江');
INSERT INTO `tp_weather` VALUES ('1934', '101271005', '叙永');
INSERT INTO `tp_weather` VALUES ('1935', '101271006', '古蔺');
INSERT INTO `tp_weather` VALUES ('1936', '101271101', '宜宾');
INSERT INTO `tp_weather` VALUES ('1937', '101271104', '南溪');
INSERT INTO `tp_weather` VALUES ('1938', '101271105', '江安');
INSERT INTO `tp_weather` VALUES ('1939', '101271106', '长宁');
INSERT INTO `tp_weather` VALUES ('1940', '101271107', '高县');
INSERT INTO `tp_weather` VALUES ('1941', '101271108', '珙县');
INSERT INTO `tp_weather` VALUES ('1942', '101271109', '筠连');
INSERT INTO `tp_weather` VALUES ('1943', '101271110', '兴文');
INSERT INTO `tp_weather` VALUES ('1944', '101271111', '屏山');
INSERT INTO `tp_weather` VALUES ('1945', '101271201', '内江');
INSERT INTO `tp_weather` VALUES ('1946', '101271203', '威远');
INSERT INTO `tp_weather` VALUES ('1947', '101271204', '资中');
INSERT INTO `tp_weather` VALUES ('1948', '101271205', '隆昌');
INSERT INTO `tp_weather` VALUES ('1949', '101271301', '资阳');
INSERT INTO `tp_weather` VALUES ('1950', '101271302', '安岳');
INSERT INTO `tp_weather` VALUES ('1951', '101271303', '乐至');
INSERT INTO `tp_weather` VALUES ('1952', '101271304', '简阳');
INSERT INTO `tp_weather` VALUES ('1953', '101271401', '乐山');
INSERT INTO `tp_weather` VALUES ('1954', '101271402', '犍为');
INSERT INTO `tp_weather` VALUES ('1955', '101271403', '井研');
INSERT INTO `tp_weather` VALUES ('1956', '101271404', '夹江');
INSERT INTO `tp_weather` VALUES ('1957', '101271405', '沐川');
INSERT INTO `tp_weather` VALUES ('1958', '101271406', '峨边');
INSERT INTO `tp_weather` VALUES ('1959', '101271407', '马边');
INSERT INTO `tp_weather` VALUES ('1960', '101271409', '峨眉山');
INSERT INTO `tp_weather` VALUES ('1961', '101271501', '眉山');
INSERT INTO `tp_weather` VALUES ('1962', '101271502', '仁寿');
INSERT INTO `tp_weather` VALUES ('1963', '101271503', '彭山');
INSERT INTO `tp_weather` VALUES ('1964', '101271504', '洪雅');
INSERT INTO `tp_weather` VALUES ('1965', '101271505', '丹棱');
INSERT INTO `tp_weather` VALUES ('1966', '101271506', '青神');
INSERT INTO `tp_weather` VALUES ('1967', '101271601', '凉山');
INSERT INTO `tp_weather` VALUES ('1968', '101271603', '木里');
INSERT INTO `tp_weather` VALUES ('1969', '101271604', '盐源');
INSERT INTO `tp_weather` VALUES ('1970', '101271605', '德昌');
INSERT INTO `tp_weather` VALUES ('1971', '101271606', '会理');
INSERT INTO `tp_weather` VALUES ('1972', '101271607', '会东');
INSERT INTO `tp_weather` VALUES ('1973', '101271608', '宁南');
INSERT INTO `tp_weather` VALUES ('1974', '101271609', '普格');
INSERT INTO `tp_weather` VALUES ('1975', '101271610', '西昌');
INSERT INTO `tp_weather` VALUES ('1976', '101271611', '金阳');
INSERT INTO `tp_weather` VALUES ('1977', '101271612', '昭觉');
INSERT INTO `tp_weather` VALUES ('1978', '101271613', '喜德');
INSERT INTO `tp_weather` VALUES ('1979', '101271614', '冕宁');
INSERT INTO `tp_weather` VALUES ('1980', '101271615', '越西');
INSERT INTO `tp_weather` VALUES ('1981', '101271616', '甘洛');
INSERT INTO `tp_weather` VALUES ('1982', '101271617', '雷波');
INSERT INTO `tp_weather` VALUES ('1983', '101271618', '美姑');
INSERT INTO `tp_weather` VALUES ('1984', '101271619', '布拖');
INSERT INTO `tp_weather` VALUES ('1985', '101271701', '雅安');
INSERT INTO `tp_weather` VALUES ('1986', '101271702', '名山');
INSERT INTO `tp_weather` VALUES ('1987', '101271703', '荥经');
INSERT INTO `tp_weather` VALUES ('1988', '101271704', '汉源');
INSERT INTO `tp_weather` VALUES ('1989', '101271705', '石棉');
INSERT INTO `tp_weather` VALUES ('1990', '101271706', '天全');
INSERT INTO `tp_weather` VALUES ('1991', '101271707', '芦山');
INSERT INTO `tp_weather` VALUES ('1992', '101271708', '宝兴');
INSERT INTO `tp_weather` VALUES ('1993', '101271801', '甘孜');
INSERT INTO `tp_weather` VALUES ('1994', '101271802', '康定');
INSERT INTO `tp_weather` VALUES ('1995', '101271803', '泸定');
INSERT INTO `tp_weather` VALUES ('1996', '101271804', '丹巴');
INSERT INTO `tp_weather` VALUES ('1997', '101271805', '九龙');
INSERT INTO `tp_weather` VALUES ('1998', '101271806', '雅江');
INSERT INTO `tp_weather` VALUES ('1999', '101271807', '道孚');
INSERT INTO `tp_weather` VALUES ('2000', '101271808', '炉霍');
INSERT INTO `tp_weather` VALUES ('2001', '101271809', '新龙');
INSERT INTO `tp_weather` VALUES ('2002', '101271810', '德格');
INSERT INTO `tp_weather` VALUES ('2003', '101271811', '白玉');
INSERT INTO `tp_weather` VALUES ('2004', '101271812', '石渠');
INSERT INTO `tp_weather` VALUES ('2005', '101271813', '色达');
INSERT INTO `tp_weather` VALUES ('2006', '101271814', '理塘');
INSERT INTO `tp_weather` VALUES ('2007', '101271815', '巴塘');
INSERT INTO `tp_weather` VALUES ('2008', '101271816', '乡城');
INSERT INTO `tp_weather` VALUES ('2009', '101271817', '稻城');
INSERT INTO `tp_weather` VALUES ('2010', '101271818', '得荣');
INSERT INTO `tp_weather` VALUES ('2011', '101271901', '阿坝');
INSERT INTO `tp_weather` VALUES ('2012', '101271902', '汶川');
INSERT INTO `tp_weather` VALUES ('2013', '101271903', '理县');
INSERT INTO `tp_weather` VALUES ('2014', '101271904', '茂县');
INSERT INTO `tp_weather` VALUES ('2015', '101271905', '松潘');
INSERT INTO `tp_weather` VALUES ('2016', '101271906', '九寨沟');
INSERT INTO `tp_weather` VALUES ('2017', '101271907', '金川');
INSERT INTO `tp_weather` VALUES ('2018', '101271908', '小金');
INSERT INTO `tp_weather` VALUES ('2019', '101271909', '黑水');
INSERT INTO `tp_weather` VALUES ('2020', '101271910', '马尔康');
INSERT INTO `tp_weather` VALUES ('2021', '101271911', '壤塘');
INSERT INTO `tp_weather` VALUES ('2022', '101271912', '若尔盖');
INSERT INTO `tp_weather` VALUES ('2023', '101271913', '红原');
INSERT INTO `tp_weather` VALUES ('2024', '101272001', '德阳');
INSERT INTO `tp_weather` VALUES ('2025', '101272002', '中江');
INSERT INTO `tp_weather` VALUES ('2026', '101272003', '广汉');
INSERT INTO `tp_weather` VALUES ('2027', '101272004', '什邡');
INSERT INTO `tp_weather` VALUES ('2028', '101272005', '绵竹');
INSERT INTO `tp_weather` VALUES ('2029', '101272006', '罗江');
INSERT INTO `tp_weather` VALUES ('2030', '101272101', '广元');
INSERT INTO `tp_weather` VALUES ('2031', '101272102', '旺苍');
INSERT INTO `tp_weather` VALUES ('2032', '101272103', '青川');
INSERT INTO `tp_weather` VALUES ('2033', '101272104', '剑阁');
INSERT INTO `tp_weather` VALUES ('2034', '101272105', '苍溪');
INSERT INTO `tp_weather` VALUES ('2035', '101280101', '广州');
INSERT INTO `tp_weather` VALUES ('2036', '101280102', '番禺');
INSERT INTO `tp_weather` VALUES ('2037', '101280103', '从化');
INSERT INTO `tp_weather` VALUES ('2038', '101280104', '增城');
INSERT INTO `tp_weather` VALUES ('2039', '101280105', '花都');
INSERT INTO `tp_weather` VALUES ('2040', '101280201', '韶关');
INSERT INTO `tp_weather` VALUES ('2041', '101280202', '乳源');
INSERT INTO `tp_weather` VALUES ('2042', '101280203', '始兴');
INSERT INTO `tp_weather` VALUES ('2043', '101280204', '翁源');
INSERT INTO `tp_weather` VALUES ('2044', '101280205', '乐昌');
INSERT INTO `tp_weather` VALUES ('2045', '101280206', '仁化');
INSERT INTO `tp_weather` VALUES ('2046', '101280207', '南雄');
INSERT INTO `tp_weather` VALUES ('2047', '101280208', '新丰');
INSERT INTO `tp_weather` VALUES ('2048', '101280209', '曲江');
INSERT INTO `tp_weather` VALUES ('2049', '101280210', '浈江');
INSERT INTO `tp_weather` VALUES ('2050', '101280211', '武江');
INSERT INTO `tp_weather` VALUES ('2051', '101280301', '惠州');
INSERT INTO `tp_weather` VALUES ('2052', '101280302', '博罗');
INSERT INTO `tp_weather` VALUES ('2053', '101280303', '惠阳');
INSERT INTO `tp_weather` VALUES ('2054', '101280304', '惠东');
INSERT INTO `tp_weather` VALUES ('2055', '101280305', '龙门');
INSERT INTO `tp_weather` VALUES ('2056', '101280401', '梅州');
INSERT INTO `tp_weather` VALUES ('2057', '101280402', '兴宁');
INSERT INTO `tp_weather` VALUES ('2058', '101280403', '蕉岭');
INSERT INTO `tp_weather` VALUES ('2059', '101280404', '大埔');
INSERT INTO `tp_weather` VALUES ('2060', '101280406', '丰顺');
INSERT INTO `tp_weather` VALUES ('2061', '101280407', '平远');
INSERT INTO `tp_weather` VALUES ('2062', '101280408', '五华');
INSERT INTO `tp_weather` VALUES ('2063', '101280409', '梅县');
INSERT INTO `tp_weather` VALUES ('2064', '101280501', '汕头');
INSERT INTO `tp_weather` VALUES ('2065', '101280502', '潮阳');
INSERT INTO `tp_weather` VALUES ('2066', '101280503', '澄海');
INSERT INTO `tp_weather` VALUES ('2067', '101280504', '南澳');
INSERT INTO `tp_weather` VALUES ('2068', '101280601', '深圳');
INSERT INTO `tp_weather` VALUES ('2069', '101280701', '珠海');
INSERT INTO `tp_weather` VALUES ('2070', '101280702', '斗门');
INSERT INTO `tp_weather` VALUES ('2071', '101280703', '金湾');
INSERT INTO `tp_weather` VALUES ('2072', '101280800', '佛山');
INSERT INTO `tp_weather` VALUES ('2073', '101280801', '顺德');
INSERT INTO `tp_weather` VALUES ('2074', '101280802', '三水');
INSERT INTO `tp_weather` VALUES ('2075', '101280803', '南海');
INSERT INTO `tp_weather` VALUES ('2076', '101280804', '高明');
INSERT INTO `tp_weather` VALUES ('2077', '101280901', '肇庆');
INSERT INTO `tp_weather` VALUES ('2078', '101280902', '广宁');
INSERT INTO `tp_weather` VALUES ('2079', '101280903', '四会');
INSERT INTO `tp_weather` VALUES ('2080', '101280905', '德庆');
INSERT INTO `tp_weather` VALUES ('2081', '101280906', '怀集');
INSERT INTO `tp_weather` VALUES ('2082', '101280907', '封开');
INSERT INTO `tp_weather` VALUES ('2083', '101280908', '高要');
INSERT INTO `tp_weather` VALUES ('2084', '101281001', '湛江');
INSERT INTO `tp_weather` VALUES ('2085', '101281002', '吴川');
INSERT INTO `tp_weather` VALUES ('2086', '101281003', '雷州');
INSERT INTO `tp_weather` VALUES ('2087', '101281004', '徐闻');
INSERT INTO `tp_weather` VALUES ('2088', '101281005', '廉江');
INSERT INTO `tp_weather` VALUES ('2089', '101281006', '赤坎');
INSERT INTO `tp_weather` VALUES ('2090', '101281007', '遂溪');
INSERT INTO `tp_weather` VALUES ('2091', '101281008', '坡头');
INSERT INTO `tp_weather` VALUES ('2092', '101281009', '霞山');
INSERT INTO `tp_weather` VALUES ('2093', '101281010', '麻章');
INSERT INTO `tp_weather` VALUES ('2094', '101281101', '江门');
INSERT INTO `tp_weather` VALUES ('2095', '101281103', '开平');
INSERT INTO `tp_weather` VALUES ('2096', '101281104', '新会');
INSERT INTO `tp_weather` VALUES ('2097', '101281105', '恩平');
INSERT INTO `tp_weather` VALUES ('2098', '101281106', '台山');
INSERT INTO `tp_weather` VALUES ('2099', '101281108', '鹤山');
INSERT INTO `tp_weather` VALUES ('2100', '101281109', '江海');
INSERT INTO `tp_weather` VALUES ('2101', '101281201', '河源');
INSERT INTO `tp_weather` VALUES ('2102', '101281202', '紫金');
INSERT INTO `tp_weather` VALUES ('2103', '101281203', '连平');
INSERT INTO `tp_weather` VALUES ('2104', '101281204', '和平');
INSERT INTO `tp_weather` VALUES ('2105', '101281205', '龙川');
INSERT INTO `tp_weather` VALUES ('2106', '101281206', '东源');
INSERT INTO `tp_weather` VALUES ('2107', '101281301', '清远');
INSERT INTO `tp_weather` VALUES ('2108', '101281302', '连南');
INSERT INTO `tp_weather` VALUES ('2109', '101281303', '连州');
INSERT INTO `tp_weather` VALUES ('2110', '101281304', '连山');
INSERT INTO `tp_weather` VALUES ('2111', '101281305', '阳山');
INSERT INTO `tp_weather` VALUES ('2112', '101281306', '佛冈');
INSERT INTO `tp_weather` VALUES ('2113', '101281307', '英德');
INSERT INTO `tp_weather` VALUES ('2114', '101281308', '清新');
INSERT INTO `tp_weather` VALUES ('2115', '101281401', '云浮');
INSERT INTO `tp_weather` VALUES ('2116', '101281402', '罗定');
INSERT INTO `tp_weather` VALUES ('2117', '101281403', '新兴');
INSERT INTO `tp_weather` VALUES ('2118', '101281404', '郁南');
INSERT INTO `tp_weather` VALUES ('2119', '101281406', '云安');
INSERT INTO `tp_weather` VALUES ('2120', '101281501', '潮州');
INSERT INTO `tp_weather` VALUES ('2121', '101281502', '饶平');
INSERT INTO `tp_weather` VALUES ('2122', '101281503', '潮安');
INSERT INTO `tp_weather` VALUES ('2123', '101281601', '东莞');
INSERT INTO `tp_weather` VALUES ('2124', '101281701', '中山');
INSERT INTO `tp_weather` VALUES ('2125', '101281801', '阳江');
INSERT INTO `tp_weather` VALUES ('2126', '101281802', '阳春');
INSERT INTO `tp_weather` VALUES ('2127', '101281803', '阳东');
INSERT INTO `tp_weather` VALUES ('2128', '101281804', '阳西');
INSERT INTO `tp_weather` VALUES ('2129', '101281901', '揭阳');
INSERT INTO `tp_weather` VALUES ('2130', '101281902', '揭西');
INSERT INTO `tp_weather` VALUES ('2131', '101281903', '普宁');
INSERT INTO `tp_weather` VALUES ('2132', '101281904', '惠来');
INSERT INTO `tp_weather` VALUES ('2133', '101281905', '揭东');
INSERT INTO `tp_weather` VALUES ('2134', '101282001', '茂名');
INSERT INTO `tp_weather` VALUES ('2135', '101282002', '高州');
INSERT INTO `tp_weather` VALUES ('2136', '101282003', '化州');
INSERT INTO `tp_weather` VALUES ('2137', '101282004', '电白');
INSERT INTO `tp_weather` VALUES ('2138', '101282005', '信宜');
INSERT INTO `tp_weather` VALUES ('2139', '101282006', '茂港');
INSERT INTO `tp_weather` VALUES ('2140', '101282101', '汕尾');
INSERT INTO `tp_weather` VALUES ('2141', '101282102', '海丰');
INSERT INTO `tp_weather` VALUES ('2142', '101282103', '陆丰');
INSERT INTO `tp_weather` VALUES ('2143', '101282104', '陆河');
INSERT INTO `tp_weather` VALUES ('2144', '101290101', '昆明');
INSERT INTO `tp_weather` VALUES ('2145', '101290103', '东川');
INSERT INTO `tp_weather` VALUES ('2146', '101290104', '寻甸');
INSERT INTO `tp_weather` VALUES ('2147', '101290105', '晋宁');
INSERT INTO `tp_weather` VALUES ('2148', '101290106', '宜良');
INSERT INTO `tp_weather` VALUES ('2149', '101290107', '石林');
INSERT INTO `tp_weather` VALUES ('2150', '101290108', '呈贡');
INSERT INTO `tp_weather` VALUES ('2151', '101290109', '富民');
INSERT INTO `tp_weather` VALUES ('2152', '101290110', '嵩明');
INSERT INTO `tp_weather` VALUES ('2153', '101290111', '禄劝');
INSERT INTO `tp_weather` VALUES ('2154', '101290112', '安宁');
INSERT INTO `tp_weather` VALUES ('2155', '101290201', '大理');
INSERT INTO `tp_weather` VALUES ('2156', '101290202', '云龙');
INSERT INTO `tp_weather` VALUES ('2157', '101290203', '漾濞');
INSERT INTO `tp_weather` VALUES ('2158', '101290204', '永平');
INSERT INTO `tp_weather` VALUES ('2159', '101290205', '宾川');
INSERT INTO `tp_weather` VALUES ('2160', '101290206', '弥渡');
INSERT INTO `tp_weather` VALUES ('2161', '101290207', '祥云');
INSERT INTO `tp_weather` VALUES ('2162', '101290208', '巍山');
INSERT INTO `tp_weather` VALUES ('2163', '101290209', '剑川');
INSERT INTO `tp_weather` VALUES ('2164', '101290210', '洱源');
INSERT INTO `tp_weather` VALUES ('2165', '101290211', '鹤庆');
INSERT INTO `tp_weather` VALUES ('2166', '101290212', '南涧');
INSERT INTO `tp_weather` VALUES ('2167', '101290301', '红河');
INSERT INTO `tp_weather` VALUES ('2168', '101290302', '石屏');
INSERT INTO `tp_weather` VALUES ('2169', '101290303', '建水');
INSERT INTO `tp_weather` VALUES ('2170', '101290304', '弥勒');
INSERT INTO `tp_weather` VALUES ('2171', '101290305', '元阳');
INSERT INTO `tp_weather` VALUES ('2172', '101290306', '绿春');
INSERT INTO `tp_weather` VALUES ('2173', '101290307', '开远');
INSERT INTO `tp_weather` VALUES ('2174', '101290308', '个旧');
INSERT INTO `tp_weather` VALUES ('2175', '101290309', '蒙自');
INSERT INTO `tp_weather` VALUES ('2176', '101290310', '屏边');
INSERT INTO `tp_weather` VALUES ('2177', '101290311', '泸西');
INSERT INTO `tp_weather` VALUES ('2178', '101290312', '金平');
INSERT INTO `tp_weather` VALUES ('2179', '101290313', '河口');
INSERT INTO `tp_weather` VALUES ('2180', '101290401', '曲靖');
INSERT INTO `tp_weather` VALUES ('2181', '101290402', '沾益');
INSERT INTO `tp_weather` VALUES ('2182', '101290403', '陆良');
INSERT INTO `tp_weather` VALUES ('2183', '101290404', '富源');
INSERT INTO `tp_weather` VALUES ('2184', '101290405', '马龙');
INSERT INTO `tp_weather` VALUES ('2185', '101290406', '师宗');
INSERT INTO `tp_weather` VALUES ('2186', '101290407', '罗平');
INSERT INTO `tp_weather` VALUES ('2187', '101290408', '会泽');
INSERT INTO `tp_weather` VALUES ('2188', '101290409', '宣威');
INSERT INTO `tp_weather` VALUES ('2189', '101290501', '保山');
INSERT INTO `tp_weather` VALUES ('2190', '101290503', '龙陵');
INSERT INTO `tp_weather` VALUES ('2191', '101290504', '施甸');
INSERT INTO `tp_weather` VALUES ('2192', '101290505', '昌宁');
INSERT INTO `tp_weather` VALUES ('2193', '101290506', '腾冲');
INSERT INTO `tp_weather` VALUES ('2194', '101290601', '文山');
INSERT INTO `tp_weather` VALUES ('2195', '101290602', '西畴');
INSERT INTO `tp_weather` VALUES ('2196', '101290603', '马关');
INSERT INTO `tp_weather` VALUES ('2197', '101290604', '麻栗坡');
INSERT INTO `tp_weather` VALUES ('2198', '101290605', '砚山');
INSERT INTO `tp_weather` VALUES ('2199', '101290606', '丘北');
INSERT INTO `tp_weather` VALUES ('2200', '101290607', '广南');
INSERT INTO `tp_weather` VALUES ('2201', '101290608', '富宁');
INSERT INTO `tp_weather` VALUES ('2202', '101290701', '玉溪');
INSERT INTO `tp_weather` VALUES ('2203', '101290702', '澄江');
INSERT INTO `tp_weather` VALUES ('2204', '101290703', '江川');
INSERT INTO `tp_weather` VALUES ('2205', '101290704', '通海');
INSERT INTO `tp_weather` VALUES ('2206', '101290705', '华宁');
INSERT INTO `tp_weather` VALUES ('2207', '101290706', '新平');
INSERT INTO `tp_weather` VALUES ('2208', '101290707', '易门');
INSERT INTO `tp_weather` VALUES ('2209', '101290708', '峨山');
INSERT INTO `tp_weather` VALUES ('2210', '101290709', '元江');
INSERT INTO `tp_weather` VALUES ('2211', '101290801', '楚雄');
INSERT INTO `tp_weather` VALUES ('2212', '101290802', '大姚');
INSERT INTO `tp_weather` VALUES ('2213', '101290803', '元谋');
INSERT INTO `tp_weather` VALUES ('2214', '101290804', '姚安');
INSERT INTO `tp_weather` VALUES ('2215', '101290805', '牟定');
INSERT INTO `tp_weather` VALUES ('2216', '101290806', '南华');
INSERT INTO `tp_weather` VALUES ('2217', '101290807', '武定');
INSERT INTO `tp_weather` VALUES ('2218', '101290808', '禄丰');
INSERT INTO `tp_weather` VALUES ('2219', '101290809', '双柏');
INSERT INTO `tp_weather` VALUES ('2220', '101290810', '永仁');
INSERT INTO `tp_weather` VALUES ('2221', '101290901', '普洱');
INSERT INTO `tp_weather` VALUES ('2222', '101290902', '景谷');
INSERT INTO `tp_weather` VALUES ('2223', '101290903', '景东');
INSERT INTO `tp_weather` VALUES ('2224', '101290904', '澜沧');
INSERT INTO `tp_weather` VALUES ('2225', '101290906', '墨江');
INSERT INTO `tp_weather` VALUES ('2226', '101290907', '江城');
INSERT INTO `tp_weather` VALUES ('2227', '101290908', '孟连');
INSERT INTO `tp_weather` VALUES ('2228', '101290909', '西盟');
INSERT INTO `tp_weather` VALUES ('2229', '101290911', '镇沅');
INSERT INTO `tp_weather` VALUES ('2230', '101290912', '宁洱');
INSERT INTO `tp_weather` VALUES ('2231', '101291001', '昭通');
INSERT INTO `tp_weather` VALUES ('2232', '101291002', '鲁甸');
INSERT INTO `tp_weather` VALUES ('2233', '101291003', '彝良');
INSERT INTO `tp_weather` VALUES ('2234', '101291004', '镇雄');
INSERT INTO `tp_weather` VALUES ('2235', '101291005', '威信');
INSERT INTO `tp_weather` VALUES ('2236', '101291006', '巧家');
INSERT INTO `tp_weather` VALUES ('2237', '101291007', '绥江');
INSERT INTO `tp_weather` VALUES ('2238', '101291008', '永善');
INSERT INTO `tp_weather` VALUES ('2239', '101291009', '盐津');
INSERT INTO `tp_weather` VALUES ('2240', '101291010', '大关');
INSERT INTO `tp_weather` VALUES ('2241', '101291011', '水富');
INSERT INTO `tp_weather` VALUES ('2242', '101291101', '临沧');
INSERT INTO `tp_weather` VALUES ('2243', '101291102', '沧源');
INSERT INTO `tp_weather` VALUES ('2244', '101291103', '耿马');
INSERT INTO `tp_weather` VALUES ('2245', '101291104', '双江');
INSERT INTO `tp_weather` VALUES ('2246', '101291105', '凤庆');
INSERT INTO `tp_weather` VALUES ('2247', '101291106', '永德');
INSERT INTO `tp_weather` VALUES ('2248', '101291107', '云县');
INSERT INTO `tp_weather` VALUES ('2249', '101291108', '镇康');
INSERT INTO `tp_weather` VALUES ('2250', '101291201', '怒江');
INSERT INTO `tp_weather` VALUES ('2251', '101291203', '福贡');
INSERT INTO `tp_weather` VALUES ('2252', '101291204', '兰坪');
INSERT INTO `tp_weather` VALUES ('2253', '101291205', '泸水');
INSERT INTO `tp_weather` VALUES ('2254', '101291207', '贡山');
INSERT INTO `tp_weather` VALUES ('2255', '101291301', '迪庆');
INSERT INTO `tp_weather` VALUES ('2256', '101291302', '德钦');
INSERT INTO `tp_weather` VALUES ('2257', '101291303', '维西');
INSERT INTO `tp_weather` VALUES ('2258', '101291401', '丽江');
INSERT INTO `tp_weather` VALUES ('2259', '101291402', '永胜');
INSERT INTO `tp_weather` VALUES ('2260', '101291403', '华坪');
INSERT INTO `tp_weather` VALUES ('2261', '101291404', '宁蒗');
INSERT INTO `tp_weather` VALUES ('2262', '101291501', '德宏');
INSERT INTO `tp_weather` VALUES ('2263', '101291503', '陇川');
INSERT INTO `tp_weather` VALUES ('2264', '101291504', '盈江');
INSERT INTO `tp_weather` VALUES ('2265', '101291506', '瑞丽');
INSERT INTO `tp_weather` VALUES ('2266', '101291507', '梁河');
INSERT INTO `tp_weather` VALUES ('2267', '101291508', '潞西');
INSERT INTO `tp_weather` VALUES ('2268', '101291601', '西双版纳');
INSERT INTO `tp_weather` VALUES ('2269', '101291603', '勐海');
INSERT INTO `tp_weather` VALUES ('2270', '101291605', '勐腊');
INSERT INTO `tp_weather` VALUES ('2271', '101300101', '南宁');
INSERT INTO `tp_weather` VALUES ('2272', '101300103', '邕宁');
INSERT INTO `tp_weather` VALUES ('2273', '101300104', '横县');
INSERT INTO `tp_weather` VALUES ('2274', '101300105', '隆安');
INSERT INTO `tp_weather` VALUES ('2275', '101300106', '马山');
INSERT INTO `tp_weather` VALUES ('2276', '101300107', '上林');
INSERT INTO `tp_weather` VALUES ('2277', '101300108', '武鸣');
INSERT INTO `tp_weather` VALUES ('2278', '101300109', '宾阳');
INSERT INTO `tp_weather` VALUES ('2279', '101300201', '崇左');
INSERT INTO `tp_weather` VALUES ('2280', '101300202', '天等');
INSERT INTO `tp_weather` VALUES ('2281', '101300203', '龙州');
INSERT INTO `tp_weather` VALUES ('2282', '101300204', '凭祥');
INSERT INTO `tp_weather` VALUES ('2283', '101300205', '大新');
INSERT INTO `tp_weather` VALUES ('2284', '101300206', '扶绥');
INSERT INTO `tp_weather` VALUES ('2285', '101300207', '宁明');
INSERT INTO `tp_weather` VALUES ('2286', '101300301', '柳州');
INSERT INTO `tp_weather` VALUES ('2287', '101300302', '柳城');
INSERT INTO `tp_weather` VALUES ('2288', '101300304', '鹿寨');
INSERT INTO `tp_weather` VALUES ('2289', '101300305', '柳江');
INSERT INTO `tp_weather` VALUES ('2290', '101300306', '融安');
INSERT INTO `tp_weather` VALUES ('2291', '101300307', '融水');
INSERT INTO `tp_weather` VALUES ('2292', '101300308', '三江');
INSERT INTO `tp_weather` VALUES ('2293', '101300401', '来宾');
INSERT INTO `tp_weather` VALUES ('2294', '101300402', '忻城');
INSERT INTO `tp_weather` VALUES ('2295', '101300403', '金秀');
INSERT INTO `tp_weather` VALUES ('2296', '101300404', '象州');
INSERT INTO `tp_weather` VALUES ('2297', '101300405', '武宣');
INSERT INTO `tp_weather` VALUES ('2298', '101300406', '合山');
INSERT INTO `tp_weather` VALUES ('2299', '101300501', '桂林');
INSERT INTO `tp_weather` VALUES ('2300', '101300503', '龙胜');
INSERT INTO `tp_weather` VALUES ('2301', '101300504', '永福');
INSERT INTO `tp_weather` VALUES ('2302', '101300505', '临桂');
INSERT INTO `tp_weather` VALUES ('2303', '101300506', '兴安');
INSERT INTO `tp_weather` VALUES ('2304', '101300507', '灵川');
INSERT INTO `tp_weather` VALUES ('2305', '101300508', '全州');
INSERT INTO `tp_weather` VALUES ('2306', '101300509', '灌阳');
INSERT INTO `tp_weather` VALUES ('2307', '101300510', '阳朔');
INSERT INTO `tp_weather` VALUES ('2308', '101300511', '恭城');
INSERT INTO `tp_weather` VALUES ('2309', '101300512', '平乐');
INSERT INTO `tp_weather` VALUES ('2310', '101300513', '荔浦');
INSERT INTO `tp_weather` VALUES ('2311', '101300514', '资源');
INSERT INTO `tp_weather` VALUES ('2312', '101300601', '梧州');
INSERT INTO `tp_weather` VALUES ('2313', '101300602', '藤县');
INSERT INTO `tp_weather` VALUES ('2314', '101300604', '苍梧');
INSERT INTO `tp_weather` VALUES ('2315', '101300605', '蒙山');
INSERT INTO `tp_weather` VALUES ('2316', '101300606', '岑溪');
INSERT INTO `tp_weather` VALUES ('2317', '101300701', '贺州');
INSERT INTO `tp_weather` VALUES ('2318', '101300702', '昭平');
INSERT INTO `tp_weather` VALUES ('2319', '101300703', '富川');
INSERT INTO `tp_weather` VALUES ('2320', '101300704', '钟山');
INSERT INTO `tp_weather` VALUES ('2321', '101300801', '贵港');
INSERT INTO `tp_weather` VALUES ('2322', '101300802', '桂平');
INSERT INTO `tp_weather` VALUES ('2323', '101300803', '平南');
INSERT INTO `tp_weather` VALUES ('2324', '101300901', '玉林');
INSERT INTO `tp_weather` VALUES ('2325', '101300902', '博白');
INSERT INTO `tp_weather` VALUES ('2326', '101300903', '北流');
INSERT INTO `tp_weather` VALUES ('2327', '101300904', '容县');
INSERT INTO `tp_weather` VALUES ('2328', '101300905', '陆川');
INSERT INTO `tp_weather` VALUES ('2329', '101300906', '兴业');
INSERT INTO `tp_weather` VALUES ('2330', '101301001', '百色');
INSERT INTO `tp_weather` VALUES ('2331', '101301002', '那坡');
INSERT INTO `tp_weather` VALUES ('2332', '101301003', '田阳');
INSERT INTO `tp_weather` VALUES ('2333', '101301004', '德保');
INSERT INTO `tp_weather` VALUES ('2334', '101301005', '靖西');
INSERT INTO `tp_weather` VALUES ('2335', '101301006', '田东');
INSERT INTO `tp_weather` VALUES ('2336', '101301007', '平果');
INSERT INTO `tp_weather` VALUES ('2337', '101301008', '隆林');
INSERT INTO `tp_weather` VALUES ('2338', '101301009', '西林');
INSERT INTO `tp_weather` VALUES ('2339', '101301010', '乐业');
INSERT INTO `tp_weather` VALUES ('2340', '101301011', '凌云');
INSERT INTO `tp_weather` VALUES ('2341', '101301012', '田林');
INSERT INTO `tp_weather` VALUES ('2342', '101301101', '钦州');
INSERT INTO `tp_weather` VALUES ('2343', '101301102', '浦北');
INSERT INTO `tp_weather` VALUES ('2344', '101301103', '灵山');
INSERT INTO `tp_weather` VALUES ('2345', '101301201', '河池');
INSERT INTO `tp_weather` VALUES ('2346', '101301202', '天峨');
INSERT INTO `tp_weather` VALUES ('2347', '101301203', '东兰');
INSERT INTO `tp_weather` VALUES ('2348', '101301204', '巴马');
INSERT INTO `tp_weather` VALUES ('2349', '101301205', '环江');
INSERT INTO `tp_weather` VALUES ('2350', '101301206', '罗城');
INSERT INTO `tp_weather` VALUES ('2351', '101301207', '宜州');
INSERT INTO `tp_weather` VALUES ('2352', '101301208', '凤山');
INSERT INTO `tp_weather` VALUES ('2353', '101301209', '南丹');
INSERT INTO `tp_weather` VALUES ('2354', '101301210', '都安');
INSERT INTO `tp_weather` VALUES ('2355', '101301211', '大化');
INSERT INTO `tp_weather` VALUES ('2356', '101301301', '北海');
INSERT INTO `tp_weather` VALUES ('2357', '101301302', '合浦');
INSERT INTO `tp_weather` VALUES ('2358', '101301303', '涠洲岛');
INSERT INTO `tp_weather` VALUES ('2359', '101301401', '防城港');
INSERT INTO `tp_weather` VALUES ('2360', '101301402', '上思');
INSERT INTO `tp_weather` VALUES ('2361', '101301403', '东兴');
INSERT INTO `tp_weather` VALUES ('2362', '101301405', '防城');
INSERT INTO `tp_weather` VALUES ('2363', '101310101', '海口');
INSERT INTO `tp_weather` VALUES ('2364', '101310201', '三亚');
INSERT INTO `tp_weather` VALUES ('2365', '101310202', '东方');
INSERT INTO `tp_weather` VALUES ('2366', '101310203', '临高');
INSERT INTO `tp_weather` VALUES ('2367', '101310204', '澄迈');
INSERT INTO `tp_weather` VALUES ('2368', '101310205', '儋州');
INSERT INTO `tp_weather` VALUES ('2369', '101310206', '昌江');
INSERT INTO `tp_weather` VALUES ('2370', '101310207', '白沙');
INSERT INTO `tp_weather` VALUES ('2371', '101310208', '琼中');
INSERT INTO `tp_weather` VALUES ('2372', '101310209', '定安');
INSERT INTO `tp_weather` VALUES ('2373', '101310210', '屯昌');
INSERT INTO `tp_weather` VALUES ('2374', '101310211', '琼海');
INSERT INTO `tp_weather` VALUES ('2375', '101310212', '文昌');
INSERT INTO `tp_weather` VALUES ('2376', '101310214', '保亭');
INSERT INTO `tp_weather` VALUES ('2377', '101310215', '万宁');
INSERT INTO `tp_weather` VALUES ('2378', '101310216', '陵水');
INSERT INTO `tp_weather` VALUES ('2379', '101310221', '乐东');
INSERT INTO `tp_weather` VALUES ('2380', '101310222', '五指山');
INSERT INTO `tp_weather` VALUES ('2381', '101320101', '香港');
INSERT INTO `tp_weather` VALUES ('2382', '101330101', '澳门');
INSERT INTO `tp_weather` VALUES ('2383', '101340101', '台北');
INSERT INTO `tp_weather` VALUES ('2384', '101340102', '桃园');
INSERT INTO `tp_weather` VALUES ('2385', '101340103', '新竹');
INSERT INTO `tp_weather` VALUES ('2386', '101340104', '宜兰');
INSERT INTO `tp_weather` VALUES ('2387', '101340201', '高雄');
INSERT INTO `tp_weather` VALUES ('2388', '101340202', '嘉义');
INSERT INTO `tp_weather` VALUES ('2389', '101340203', '台南');
INSERT INTO `tp_weather` VALUES ('2390', '101340204', '台东');
INSERT INTO `tp_weather` VALUES ('2391', '101340205', '屏东');
INSERT INTO `tp_weather` VALUES ('2392', '101340401', '台中');
INSERT INTO `tp_weather` VALUES ('2393', '101340402', '苗栗');
INSERT INTO `tp_weather` VALUES ('2394', '101340403', '彰化');
INSERT INTO `tp_weather` VALUES ('2395', '101340404', '南投');
INSERT INTO `tp_weather` VALUES ('2396', '101340405', '花莲');
INSERT INTO `tp_weather` VALUES ('2397', '101340406', '云林');
INSERT INTO `tp_weather` VALUES ('2398', '102010100', '首尔');
INSERT INTO `tp_weather` VALUES ('2399', '103010100', '东京');
INSERT INTO `tp_weather` VALUES ('2400', '103020100', '大阪');
INSERT INTO `tp_weather` VALUES ('2401', '103040100', '札幌');
INSERT INTO `tp_weather` VALUES ('2402', '103050100', '福冈');
INSERT INTO `tp_weather` VALUES ('2403', '103090100', '京都');
INSERT INTO `tp_weather` VALUES ('2404', '104010100', '新加坡');
INSERT INTO `tp_weather` VALUES ('2405', '105010100', '吉隆坡');
INSERT INTO `tp_weather` VALUES ('2406', '106010100', '曼谷');
INSERT INTO `tp_weather` VALUES ('2407', '107010100', '河内');
INSERT INTO `tp_weather` VALUES ('2408', '107020100', '胡志明市');
INSERT INTO `tp_weather` VALUES ('2409', '108010100', '仰光');
INSERT INTO `tp_weather` VALUES ('2410', '109010100', '万象');
INSERT INTO `tp_weather` VALUES ('2411', '111010100', '雅加达');
INSERT INTO `tp_weather` VALUES ('2412', '111080100', '登巴萨');
INSERT INTO `tp_weather` VALUES ('2413', '112010100', '德黑兰');
INSERT INTO `tp_weather` VALUES ('2414', '113010100', '新德里');
INSERT INTO `tp_weather` VALUES ('2415', '113030100', '孟买');
INSERT INTO `tp_weather` VALUES ('2416', '113090100', '斯利那加');
INSERT INTO `tp_weather` VALUES ('2417', '114010100', '伊斯兰堡');
INSERT INTO `tp_weather` VALUES ('2418', '114030100', '卡拉奇');
INSERT INTO `tp_weather` VALUES ('2419', '114040100', '白沙瓦');
INSERT INTO `tp_weather` VALUES ('2420', '115010100', '塔什干');
INSERT INTO `tp_weather` VALUES ('2421', '117010100', '科伦坡');
INSERT INTO `tp_weather` VALUES ('2422', '118010100', '喀布尔');
INSERT INTO `tp_weather` VALUES ('2423', '118030100', '坎大哈');
INSERT INTO `tp_weather` VALUES ('2424', '120010100', '斯里巴加湾');
INSERT INTO `tp_weather` VALUES ('2425', '121010100', '巴林');
INSERT INTO `tp_weather` VALUES ('2426', '124010100', '阿布扎比');
INSERT INTO `tp_weather` VALUES ('2427', '124020100', '迪拜');
INSERT INTO `tp_weather` VALUES ('2428', '127010100', '平壤');
INSERT INTO `tp_weather` VALUES ('2429', '130010100', '阿斯塔纳');
INSERT INTO `tp_weather` VALUES ('2430', '132010100', '乌兰巴托');
INSERT INTO `tp_weather` VALUES ('2431', '136010100', '马尼拉');
INSERT INTO `tp_weather` VALUES ('2432', '138010100', '利雅得');
INSERT INTO `tp_weather` VALUES ('2433', '139010100', '大马士革');
INSERT INTO `tp_weather` VALUES ('2434', '201010100', '伦敦');
INSERT INTO `tp_weather` VALUES ('2435', '201050100', '曼彻斯特');
INSERT INTO `tp_weather` VALUES ('2436', '202010100', '巴黎');
INSERT INTO `tp_weather` VALUES ('2437', '202100100', '马赛');
INSERT INTO `tp_weather` VALUES ('2438', '203010100', '柏林');
INSERT INTO `tp_weather` VALUES ('2439', '203020100', '法兰克福');
INSERT INTO `tp_weather` VALUES ('2440', '203050100', '汉堡');
INSERT INTO `tp_weather` VALUES ('2441', '204010100', '罗马');
INSERT INTO `tp_weather` VALUES ('2442', '204040100', '米兰');
INSERT INTO `tp_weather` VALUES ('2443', '205010100', '阿姆斯特丹');
INSERT INTO `tp_weather` VALUES ('2444', '206010100', '马德里');
INSERT INTO `tp_weather` VALUES ('2445', '206020100', '巴塞罗那');
INSERT INTO `tp_weather` VALUES ('2446', '207010100', '哥本哈根');
INSERT INTO `tp_weather` VALUES ('2447', '208010100', '莫斯科');
INSERT INTO `tp_weather` VALUES ('2448', '210020100', '日内瓦');
INSERT INTO `tp_weather` VALUES ('2449', '210030100', '苏黎世');
INSERT INTO `tp_weather` VALUES ('2450', '211010100', '斯德哥尔摩');
INSERT INTO `tp_weather` VALUES ('2451', '214010100', '里斯本');
INSERT INTO `tp_weather` VALUES ('2452', '215020100', '伊斯坦布尔');
INSERT INTO `tp_weather` VALUES ('2453', '216010100', '布鲁塞尔');
INSERT INTO `tp_weather` VALUES ('2454', '217010100', '维也纳');
INSERT INTO `tp_weather` VALUES ('2455', '218010100', '雅典');
INSERT INTO `tp_weather` VALUES ('2456', '222010100', '赫尔辛基');
INSERT INTO `tp_weather` VALUES ('2457', '301010100', '开罗');
INSERT INTO `tp_weather` VALUES ('2458', '302010100', '开普敦');
INSERT INTO `tp_weather` VALUES ('2459', '302020100', '约翰内斯堡');
INSERT INTO `tp_weather` VALUES ('2460', '303010100', '突尼斯');
INSERT INTO `tp_weather` VALUES ('2461', '304020100', '拉各斯');
INSERT INTO `tp_weather` VALUES ('2462', '305010100', '阿尔及尔');
INSERT INTO `tp_weather` VALUES ('2463', '311010100', '亚的斯亚贝巴');
INSERT INTO `tp_weather` VALUES ('2464', '317010100', '内罗毕');
INSERT INTO `tp_weather` VALUES ('2465', '321020100', '卡萨布兰卡');
INSERT INTO `tp_weather` VALUES ('2466', '327010100', '达喀尔');
INSERT INTO `tp_weather` VALUES ('2467', '332010100', '达累斯萨拉姆');
INSERT INTO `tp_weather` VALUES ('2468', '334010100', '卢萨卡');
INSERT INTO `tp_weather` VALUES ('2469', '401010100', '华盛顿');
INSERT INTO `tp_weather` VALUES ('2470', '401020101', '迈阿密');
INSERT INTO `tp_weather` VALUES ('2471', '401020104', '奥兰多');
INSERT INTO `tp_weather` VALUES ('2472', '401030101', '亚特兰大');
INSERT INTO `tp_weather` VALUES ('2473', '401040101', '洛杉矶');
INSERT INTO `tp_weather` VALUES ('2474', '401040102', '圣弗朗西斯科');
INSERT INTO `tp_weather` VALUES ('2475', '401060100', '波士顿');
INSERT INTO `tp_weather` VALUES ('2476', '401070101', '芝加哥');
INSERT INTO `tp_weather` VALUES ('2477', '401100101', '西雅图');
INSERT INTO `tp_weather` VALUES ('2478', '401110101', '纽约');
INSERT INTO `tp_weather` VALUES ('2479', '401120108', '休斯敦');
INSERT INTO `tp_weather` VALUES ('2480', '401370100', '拉斯维加斯');
INSERT INTO `tp_weather` VALUES ('2481', '401480100', '火奴鲁鲁');
INSERT INTO `tp_weather` VALUES ('2482', '404010100', '渥太华');
INSERT INTO `tp_weather` VALUES ('2483', '404030100', '温哥华');
INSERT INTO `tp_weather` VALUES ('2484', '404040100', '多伦多');
INSERT INTO `tp_weather` VALUES ('2485', '404130100', '埃德蒙顿');
INSERT INTO `tp_weather` VALUES ('2486', '404140100', '卡尔加里');
INSERT INTO `tp_weather` VALUES ('2487', '404220100', '温尼伯');
INSERT INTO `tp_weather` VALUES ('2488', '404230100', '魁北克');
INSERT INTO `tp_weather` VALUES ('2489', '404240100', '蒙特利尔');
INSERT INTO `tp_weather` VALUES ('2490', '406010100', '哈瓦那');
INSERT INTO `tp_weather` VALUES ('2491', '411010100', '墨西哥城');
INSERT INTO `tp_weather` VALUES ('2492', '416010100', '加拉加斯');
INSERT INTO `tp_weather` VALUES ('2493', '601020101', '悉尼');
INSERT INTO `tp_weather` VALUES ('2494', '601030101', '布里斯班');
INSERT INTO `tp_weather` VALUES ('2495', '601040101', '阿德来德');
INSERT INTO `tp_weather` VALUES ('2496', '601060101', '墨尔本');
INSERT INTO `tp_weather` VALUES ('2497', '601070101', '珀斯');
INSERT INTO `tp_weather` VALUES ('2498', '606010100', '惠灵顿');
INSERT INTO `tp_weather` VALUES ('2499', '606020100', '奥克兰');
INSERT INTO `tp_weather` VALUES ('2500', '606030100', '克莱斯特彻奇');
INSERT INTO `tp_weather` VALUES ('2501', '101030100', '天津');

-- ----------------------------
-- Table structure for tp_wechat_group
-- ----------------------------
DROP TABLE IF EXISTS `tp_wechat_group`;
CREATE TABLE `tp_wechat_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `wechatgroupid` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `fanscount` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `wechatgroupid` (`wechatgroupid`,`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wechat_group
-- ----------------------------

-- ----------------------------
-- Table structure for tp_wechat_group_list
-- ----------------------------
DROP TABLE IF EXISTS `tp_wechat_group_list`;
CREATE TABLE `tp_wechat_group_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `g_id` varchar(20) NOT NULL DEFAULT '',
  `nickname` varchar(60) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `province` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(30) NOT NULL,
  `headimgurl` varchar(200) NOT NULL,
  `subscribe_time` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wechat_group_list
-- ----------------------------

-- ----------------------------
-- Table structure for tp_wechat_scene
-- ----------------------------
DROP TABLE IF EXISTS `tp_wechat_scene`;
CREATE TABLE `tp_wechat_scene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` char(30) NOT NULL,
  `title` char(50) NOT NULL,
  `pic` char(100) NOT NULL,
  `intro` varchar(250) NOT NULL,
  `shake_id` int(10) unsigned NOT NULL,
  `wall_id` int(10) unsigned NOT NULL,
  `vote_id` char(25) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `open_vote` enum('0','1') NOT NULL,
  `open_zzle` enum('0','1') NOT NULL,
  `open_lottery` enum('0','1') NOT NULL,
  `lottery_type` tinyint(4) NOT NULL,
  `token` char(20) NOT NULL,
  `logo` char(100) NOT NULL,
  `background` char(100) NOT NULL,
  `qrcode` char(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wechat_scene
-- ----------------------------

-- ----------------------------
-- Table structure for tp_wecha_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_wecha_user`;
CREATE TABLE `tp_wecha_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`,`token`,`wecha_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wecha_user
-- ----------------------------

-- ----------------------------
-- Table structure for tp_wecht_grout
-- ----------------------------
DROP TABLE IF EXISTS `tp_wecht_grout`;
CREATE TABLE `tp_wecht_grout` (
  `id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `w_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wecht_grout
-- ----------------------------

-- ----------------------------
-- Table structure for tp_wedding
-- ----------------------------
DROP TABLE IF EXISTS `tp_wedding`;
CREATE TABLE `tp_wedding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(150) NOT NULL,
  `picurl` varchar(150) NOT NULL,
  `openpic` varchar(200) NOT NULL,
  `coverurl` varchar(200) NOT NULL,
  `woman` varchar(30) NOT NULL,
  `man` varchar(30) NOT NULL,
  `who_first` tinyint(1) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `time` int(11) NOT NULL,
  `place` varchar(200) NOT NULL,
  `lng` varchar(16) NOT NULL,
  `lat` varchar(16) NOT NULL,
  `video` varchar(200) NOT NULL,
  `mp3url` varchar(200) NOT NULL,
  `passowrd` int(20) NOT NULL,
  `word` varchar(200) NOT NULL,
  `qr_code` varchar(200) NOT NULL,
  `copyrite` varchar(150) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wedding
-- ----------------------------

-- ----------------------------
-- Table structure for tp_wedding_info
-- ----------------------------
DROP TABLE IF EXISTS `tp_wedding_info`;
CREATE TABLE `tp_wedding_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `num` tinyint(2) NOT NULL,
  `info` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wedding_info
-- ----------------------------

-- ----------------------------
-- Table structure for tp_wehcat_member_enddate
-- ----------------------------
DROP TABLE IF EXISTS `tp_wehcat_member_enddate`;
CREATE TABLE `tp_wehcat_member_enddate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(60) NOT NULL,
  `enddate` int(11) NOT NULL,
  `joinUpDate` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `token` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`) USING BTREE,
  KEY `openid_2` (`openid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wehcat_member_enddate
-- ----------------------------

-- ----------------------------
-- Table structure for tp_weixin_account
-- ----------------------------
DROP TABLE IF EXISTS `tp_weixin_account`;
CREATE TABLE `tp_weixin_account` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `appId` char(45) NOT NULL,
  `appSecret` char(45) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `encodingAesKey` varchar(70) DEFAULT NULL,
  `type` tinyint(3) DEFAULT NULL COMMENT '1开放平台公众号服务，2其他',
  `date_time` char(15) DEFAULT NULL,
  `component_verify_ticket` varchar(100) DEFAULT NULL,
  `component_access_token` varchar(150) NOT NULL,
  `token_expires` char(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_weixin_account
-- ----------------------------

-- ----------------------------
-- Table structure for tp_wxcert
-- ----------------------------
DROP TABLE IF EXISTS `tp_wxcert`;
CREATE TABLE `tp_wxcert` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `apiclient_cert` varchar(255) NOT NULL COMMENT 'apiclient_cert私钥文件',
  `apiclient_key` varchar(255) NOT NULL COMMENT 'apiclient_key公钥文件',
  `rootca` varchar(255) NOT NULL COMMENT '根证书文件',
  `uploadtime` int(11) NOT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wxcert
-- ----------------------------

-- ----------------------------
-- Table structure for tp_wxuser
-- ----------------------------
DROP TABLE IF EXISTS `tp_wxuser`;
CREATE TABLE `tp_wxuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `routerid` varchar(50) NOT NULL DEFAULT '',
  `agentid` int(10) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL,
  `wxname` varchar(60) NOT NULL COMMENT '公众号名称',
  `winxintype` smallint(2) NOT NULL DEFAULT '1',
  `aeskey` varchar(45) NOT NULL DEFAULT '',
  `encode` tinyint(1) NOT NULL DEFAULT '0',
  `appid` varchar(50) NOT NULL DEFAULT '',
  `appsecret` varchar(50) NOT NULL DEFAULT '',
  `wxid` varchar(20) NOT NULL COMMENT '公众号原始ID',
  `weixin` char(20) NOT NULL COMMENT '微信号',
  `headerpic` char(255) NOT NULL COMMENT '头像地址',
  `token` char(255) NOT NULL,
  `pigsecret` varchar(150) NOT NULL DEFAULT '',
  `province` varchar(30) NOT NULL COMMENT '省',
  `city` varchar(60) NOT NULL COMMENT '市',
  `qq` char(25) NOT NULL COMMENT '公众号邮箱',
  `wxfans` int(11) NOT NULL COMMENT '微信粉丝',
  `typeid` int(11) NOT NULL COMMENT '分类ID',
  `typename` varchar(90) DEFAULT '0' COMMENT '分类名',
  `tongji` text NOT NULL,
  `allcardnum` int(11) NOT NULL,
  `cardisok` int(11) NOT NULL,
  `yetcardnum` int(11) NOT NULL,
  `totalcardnum` int(11) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `tpltypeid` varchar(10) NOT NULL DEFAULT '1',
  `updatetime` varchar(13) NOT NULL,
  `tpltypename` varchar(20) NOT NULL COMMENT '首页模版名',
  `tpllistid` varchar(2) NOT NULL COMMENT '列表模版ID',
  `tpllistname` varchar(20) NOT NULL COMMENT '列表模版名',
  `tplcontentid` varchar(2) NOT NULL COMMENT '内容模版ID',
  `tplcontentname` varchar(20) NOT NULL COMMENT '内容模版名',
  `transfer_customer_service` tinyint(1) NOT NULL DEFAULT '0',
  `openphotoprint` tinyint(1) NOT NULL DEFAULT '0',
  `freephotocount` mediumint(4) NOT NULL DEFAULT '3',
  `oauth` tinyint(1) NOT NULL DEFAULT '0',
  `oauthinfo` tinyint(1) NOT NULL DEFAULT '1',
  `color_id` int(2) NOT NULL,
  `ifbiz` tinyint(1) DEFAULT '0',
  `fuwuappid` char(20) DEFAULT NULL,
  `share_ticket` varchar(150) NOT NULL,
  `share_dated` char(15) NOT NULL,
  `authorizer_access_token` varchar(200) NOT NULL,
  `authorizer_refresh_token` varchar(200) NOT NULL,
  `authorizer_expires` char(10) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `web_access_token` varchar(200) NOT NULL COMMENT ' 网页授权token',
  `web_refresh_token` varchar(200) NOT NULL,
  `web_expires` char(10) NOT NULL,
  `wx_coupons` tinyint(4) NOT NULL,
  `card_ticket` char(120) NOT NULL,
  `card_expires` char(15) NOT NULL,
  `wx_liaotian` tinyint(4) NOT NULL,
  `qr` varchar(200) NOT NULL,
  `dynamicTmpls` int(11) NOT NULL DEFAULT '0',
  `sub_notice` varchar(255) DEFAULT NULL,
  `need_phone_notice` varchar(255) DEFAULT NULL,
  `sub_notice_btn` varchar(60) DEFAULT NULL,
  `is_syn` tinyint(4) NOT NULL DEFAULT '0',
  `phone` text NOT NULL,
  `smsstatus` text NOT NULL,
  `smsuser` text NOT NULL,
  `smspassword` text NOT NULL,
  `email` text NOT NULL,
  `emailstatus` text NOT NULL,
  `emailuser` text NOT NULL,
  `emailpassword` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uid_2` (`uid`),
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wxuser
-- ----------------------------

-- ----------------------------
-- Table structure for tp_yeepay_tmp
-- ----------------------------
DROP TABLE IF EXISTS `tp_yeepay_tmp`;
CREATE TABLE `tp_yeepay_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(50) NOT NULL,
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `from` varchar(30) NOT NULL,
  `time` int(11) NOT NULL,
  `platform` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_yeepay_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for tp_yml_config
-- ----------------------------
DROP TABLE IF EXISTS `tp_yml_config`;
CREATE TABLE `tp_yml_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `secret` varchar(32) NOT NULL,
  `print_enable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `wx_appid` varchar(100) NOT NULL,
  `wx_appsecret` varchar(100) NOT NULL,
  `voice_enable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_yml_config
-- ----------------------------

-- ----------------------------
-- Table structure for tp_yml_record
-- ----------------------------
DROP TABLE IF EXISTS `tp_yml_record`;
CREATE TABLE `tp_yml_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `wxid` varchar(100) NOT NULL,
  `step` text NOT NULL,
  `task_id` bigint(20) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_yml_record
-- ----------------------------

-- ----------------------------
-- Table structure for tp_yundabao
-- ----------------------------
DROP TABLE IF EXISTS `tp_yundabao`;
CREATE TABLE `tp_yundabao` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `AppId` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `AppName` varchar(100) DEFAULT NULL,
  `AppNote` text,
  `HideTop` int(11) DEFAULT NULL,
  `IconType` int(11) DEFAULT NULL,
  `IconName` varchar(200) DEFAULT NULL,
  `IconName_url` varchar(200) DEFAULT NULL,
  `LogoName` varchar(100) DEFAULT NULL,
  `LogoName_url` varchar(200) DEFAULT NULL,
  `BgColor` int(11) DEFAULT NULL,
  `SplashType` int(11) DEFAULT NULL,
  `SplashName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_yundabao
-- ----------------------------

-- ----------------------------
-- Table structure for tp_yundabao_users
-- ----------------------------
DROP TABLE IF EXISTS `tp_yundabao_users`;
CREATE TABLE `tp_yundabao_users` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `endtime` int(11) NOT NULL,
  `AccessToken` varchar(200) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_yundabao_users
-- ----------------------------

-- ----------------------------
-- Table structure for tp_zhaopin
-- ----------------------------
DROP TABLE IF EXISTS `tp_zhaopin`;
CREATE TABLE `tp_zhaopin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `gangwei` varchar(200) DEFAULT NULL,
  `xinzi` varchar(200) DEFAULT NULL,
  `yaoqiu` varchar(5000) DEFAULT NULL,
  `ren` varchar(255) NOT NULL,
  `zhize` varchar(5000) NOT NULL,
  `jigou` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `people` varchar(255) NOT NULL,
  `tell` char(11) NOT NULL,
  `longitude` char(11) NOT NULL DEFAULT '',
  `latitude` char(11) NOT NULL DEFAULT '',
  `leibie` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `click` int(11) NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `wecha_id` varchar(200) NOT NULL,
  `allow` tinyint(1) NOT NULL COMMENT '审核',
  PRIMARY KEY (`id`),
  KEY `token` (`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_zhaopin
-- ----------------------------

-- ----------------------------
-- Table structure for tp_zhaopin_jianli
-- ----------------------------
DROP TABLE IF EXISTS `tp_zhaopin_jianli`;
CREATE TABLE `tp_zhaopin_jianli` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `job` varchar(200) DEFAULT NULL,
  `salary` varchar(200) DEFAULT NULL,
  `introduce` varchar(5000) DEFAULT NULL,
  `education` varchar(255) NOT NULL,
  `workarea` varchar(255) NOT NULL,
  `phone` char(11) NOT NULL,
  `leibie` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `click` int(11) NOT NULL,
  `year` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `validTime` int(100) NOT NULL,
  `age` char(3) NOT NULL DEFAULT '',
  `wecha_id` varchar(200) NOT NULL,
  `allow` tinyint(1) NOT NULL COMMENT '审核',
  PRIMARY KEY (`id`),
  KEY `token` (`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_zhaopin_jianli
-- ----------------------------

-- ----------------------------
-- Table structure for tp_zhaopin_reply
-- ----------------------------
DROP TABLE IF EXISTS `tp_zhaopin_reply`;
CREATE TABLE `tp_zhaopin_reply` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `info` varchar(500) DEFAULT NULL COMMENT '????',
  `title` text NOT NULL,
  `tp` char(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `allowjl` tinyint(1) NOT NULL COMMENT '审核简历',
  `allowqy` tinyint(1) NOT NULL COMMENT '审核招聘',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_zhaopin_reply
-- ----------------------------

-- ----------------------------
-- Table structure for tp_zhida
-- ----------------------------
DROP TABLE IF EXISTS `tp_zhida`;
CREATE TABLE `tp_zhida` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(1000) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `token` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_zhida
-- ----------------------------
