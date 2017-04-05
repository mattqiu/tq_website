/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : tianquecms

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-04-05 12:11:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `lvyecms_access`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_access`;
CREATE TABLE `lvyecms_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '角色id',
  `app` varchar(20) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(20) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(20) NOT NULL DEFAULT '' COMMENT '方法',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否有效',
  KEY `role_id` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Records of lvyecms_access
-- ----------------------------

-- ----------------------------
-- Table structure for `lvyecms_admin_panel`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_admin_panel`;
CREATE TABLE `lvyecms_admin_panel` (
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '菜单ID',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `name` char(32) NOT NULL DEFAULT '' COMMENT '菜单名',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '菜单地址',
  UNIQUE KEY `userid` (`mid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='常用菜单';

-- ----------------------------
-- Records of lvyecms_admin_panel
-- ----------------------------

-- ----------------------------
-- Table structure for `lvyecms_anli`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_anli`;
CREATE TABLE `lvyecms_anli` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lvyecms_anli
-- ----------------------------
INSERT INTO `lvyecms_anli` VALUES ('1', '11', '某大型国有银行大数据营销案例', '', '/d/file/content/2017/03/thumb_58db6f00cf8ff.jpg', '', '', '项目背景 随着互联网金融对传统银行业务的不断冲击，银行业变革需求迫切，做为互联网+金融的先锋，某大型国有银行早已布局了银行电商平台，但该电商平台需要通过大数据技术实现个性化商品推荐，提高网站的用户体验、客单价和复购率，同时希望能够搭建用户画像和用户分析系统，帮助运营人员优化网站运营。 项目目标 1、在该银行的电商商城上为用户提供精准实时的个性化推荐服务 2、提供网站运营智能分析工具 3、提供可视化分析报告 百分点解决方案： 1 、个性化站内推荐 （1）部署代码，采集数据 通过js部码的方式，在商城网站的P', '0', '/index.php?a=shows&catid=11&id=1', '0', '99', '1', 'admin', '1490775753', '1490775753', '0', '0', '0', '0', '0', '0');
INSERT INTO `lvyecms_anli` VALUES ('2', '12', '加速TCL“双+”转型', '', '/d/file/content/2017/03/thumb_58db7347a9df4.jpg', '', '', '项目背景 随着互联网和移动互联网的发展，新的基于网络的经营方法、营销手段和销售渠道，正不断冲击着制造业、零售业等传统行业。特别是在因产能过剩、供过于求导致价格竞争激烈的家电市场，乐视、小米等新兴消费电子厂商的强势介入，正在颠覆现有的市场格局。 作为家电行业领军企业， TCL 集团在综合分析所处行业现状后，提出了 “ 智能 + 互联网 ” 与 “ 产品 + 服务 ” 的 “ 双 +” 经营转型战略，计划从“经营产品为中心”转向“经营用户为中心”。 为此， TCL 集团计划建立以消费者为中心的大数据平台，加速', '0', '/index.php?a=shows&catid=12&id=2', '0', '99', '1', 'admin', '1490776909', '1490776909', '0', '0', '0', '0', '0', '0');
INSERT INTO `lvyecms_anli` VALUES ('3', '11', '某知名证券企业大数据案例', '', '/d/file/content/2017/03/thumb_58db7b6227e79.jpg', '', '', '项目背景 在互联网金融的冲击下，证券行业日益转向线上的销售与服务，对线上用户行为的洞察和了解，正成为证券公司赢得客户，深挖客户的关键。 国内某知名证券公司，连续多年被评为行业最高的 A 类 AA 级企业，主营业务为证券代理买卖、融资融券、基金代销、以及与证券交易、投资活动有关的财务顾问等服务。该证券公司为进一步提升自身竞争力，想在产品和服务方面做出差异化，为广大用户提供个性化资讯服务，甚至更进一步的个性化理财服务，提升用户体验，深化用户为中心的服务。 企业面临问题与需求： 1、 盲目的营销活动 该企业的营', '0', '/index.php?a=shows&catid=11&id=3', '0', '99', '1', 'admin', '1490778983', '1490778983', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `lvyecms_anli_data`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_anli_data`;
CREATE TABLE `lvyecms_anli_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8_unicode_ci,
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lvyecms_anli_data
-- ----------------------------
INSERT INTO `lvyecms_anli_data` VALUES ('1', '项目背景\r\n\r\n随着互联网金融对传统银行业务的不断冲击，银行业变革需求迫切，做为互联网+金融的先锋，某大型国有银行早已布局了银行电商平台，但该电商平台需要通过大数据技术实现个性化商品推荐，提高网站的用户体验、客单价和复购率，同时希望能够搭建用户画像和用户分析系统，帮助运营人员优化网站运营。\r\n\r\n项目目标\r\n1、在该银行的电商商城上为用户提供精准实时的个性化推荐服务\r\n2、提供网站运营智能分析工具\r\n3、提供可视化分析报告\r\n\r\n百分点解决方案：\r\n1、个性化站内推荐\r\n（1）部署代码，采集数据\r\n通过js部码的方式，在商城网站的PC端和手机客户端采集商品信息和用户行为等非敏感信息，包括商品编号、商品名称、商品品类、页面访问、浏览品类、浏览单品、搜索、添加购物车等。\r\n（2）建立推荐模型\r\n对于收集上来的商品和用户行为信息，经过算法模型的处理变换为多种形式的个性化推荐模型，并结合百分点掌握的外部全网数据，形成更精确的推荐结果。\r\n（3）进行精准的个性化推荐\r\n百分点基于场景引擎、规则引擎、算法引擎、展示引擎以及流处理平台和批处理平台进行个性化数据运营，形成个性化推荐方案，推荐的内容包括商品、广告、活动、商家等。\r\n\r\n2、智能分析引擎\r\n（1）客户画像\r\n将商城的数据与百分点全网数据整合，了解用户在其它电商、社交平台、APP上的外部行为，提供更准确的客户画像。\r\n（2）商业分析和网站运维分析\r\n整合商城前后端数据，提供基于流量、通路、访客、会员、客户行为、商品、订单、融资等的数据分析，通过百分点分析引擎，向业务人员展示电子商务的核心数据情况，满足商业分析（BA）和网站运维分析(WA)的需求。\r\n（3）算法和效果评估\r\n建立完整的客户行为分析引擎，包括基于多种算法产生的客户行为模型和最终的效果评估优化等。\r\n\r\n3、可视化数据分析报告\r\n（1）可视化数据分析报告系统。\r\n通过百分点分析引擎，以行业通用的方式展示流量、通路、访客、会员、客户行为、商品、订单、融资等可视化数据报告；向行内运营后台、店铺后台进行数据输出。\r\n（2）灵活的报表展现。\r\n业务人员可根据需要，灵活展现电商运维的核心及常用指标，形成可用的数据分析结果。\r\n（3）评估与优化\r\n定期对数据分析报告的质量进行评估和优化，保证指标的合理性和正确性，并根据需求不断改进分析报告系统。\r\n\r\n项目实施\r\n目前基于百分点大数据技术的推荐引擎和分析引擎均已部署和上线。', '', '0', '0');
INSERT INTO `lvyecms_anli_data` VALUES ('2', '项目背景\r\n随着互联网和移动互联网的发展，新的基于网络的经营方法、营销手段和销售渠道，正不断冲击着制造业、零售业等传统行业。特别是在因产能过剩、供过于求导致价格竞争激烈的家电市场，乐视、小米等新兴消费电子厂商的强势介入，正在颠覆现有的市场格局。\r\n作为家电行业领军企业，TCL集团在综合分析所处行业现状后，提出了“智能+互联网”与“产品+服务”的“双+”经营转型战略，计划从“经营产品为中心”转向“经营用户为中心”。\r\n为此，TCL集团计划建立以消费者为中心的大数据平台，加速战略转型的落地。\r\n \r\n企业需求\r\n整合全渠道数据，特别是用户数据；\r\n建立消费者全渠道统一视图，全方面洞悉消费者的行为、消费偏好和潜在需求；\r\n通过大数据，实现TCL运营、营销、销售、服务等各方面的最优化决策，最终为消费者提供更优质、更智能的产品和服务。\r\n \r\n现状评估\r\nTCL各渠道内的用户信息并没有共享和打通，使得企业无法深入了解用户；\r\n缺乏技术手段对用户信息进行分析挖掘；\r\n缺乏相应的大数据应用系统支撑和实现各业务场景；\r\n缺乏外部数据的有力补充，帮助TCL打通全渠道数据和对用户的深入了解。\r\n \r\n百分点解决方案\r\n百分点针对TCL的数据应用现状和业务诉求，确立项目的核心目标是：打造数据采集、处理以及应用的一站式大数据平台，融合用户、产品、市场等各方面信息，建立以消费者为核心的统一视图，支撑TCL企业经营全链条的优化与创新。', '', '0', '0');
INSERT INTO `lvyecms_anli_data` VALUES ('3', '项目背景\r\n在互联网金融的冲击下，证券行业日益转向线上的销售与服务，对线上用户行为的洞察和了解，正成为证券公司赢得客户，深挖客户的关键。\r\n国内某知名证券公司，连续多年被评为行业最高的A类AA级企业，主营业务为证券代理买卖、融资融券、基金代销、以及与证券交易、投资活动有关的财务顾问等服务。该证券公司为进一步提升自身竞争力，想在产品和服务方面做出差异化，为广大用户提供个性化资讯服务，甚至更进一步的个性化理财服务，提升用户体验，深化用户为中心的服务。\r\n\r\n企业面临问题与需求：\r\n1、 盲目的营销活动\r\n该企业的营销活动设计及推广渠道缺少针对性，多为广撒网式，在消费者日益个性化，触媒习惯碎片化的今天，广撒网式的营销活动效果微弱。\r\n2、 金融终端用户黏性低\r\n企业对自身用户的偏好和需求缺乏了解，用户在该品牌的金融终端难以获取自己感兴趣的金融资讯和理财产品，用户停留时间短，活跃度低。\r\n3、 数据维度不够，处理能力有限\r\n该企业只有用户的静态和交易记录信息，缺乏交易过程中的浏览行为轨迹数据。并且大多数用户行为都是匿名的，缺乏分析手段，同时很多资讯信息，特别是投研报告，都是以非结构化的PDF形式存在，缺乏有效的分析，目前，该企业主要根据用户静态信息进行用户分群和营销，时效性较差。\r\n\r\n百分点解决方案\r\n1、所有信息统一管理\r\n建立统一的数据管理中心，整合用户静态和动态信息，包括开户信息、持仓情况、交易明细、金融行为和浏览资讯行为、咨询、客户投诉等。\r\n2、实时分析与匿名用户识别\r\n基于百分点内存数据库、实时数据采集和分析技术，实时采集用户浏览资讯和金融产品行为，并通过百分点用户多重ID打通技术，将用户实名和匿名行为整合在一起，进行实时的用户意图预测。\r\n3、业务需求驱动的用户画像\r\n在深入理解证券业务的基础上，采用了文本分析、文本建模、用户聚类分类、RFM模型等数据挖掘手段，根据用户的静态和动态信息对用户进行划分，并为每个用户打上多维度的业务标签，通过用户画像深入了解用户需求与偏好，从而制定有针对性的营销活动。\r\n4、个性化服务提升用户体验\r\n百分点独创的个性化引擎，融合场景引擎、算法引擎、规则引擎三大引擎，一直具有较高的推荐转化率，本项目根据该证券企业的业务特点，改造了百分点个性化引擎的部分算法和业务规则，根据用户静、动态信息为其推荐感兴趣的股票、理财产品和上市公司资讯。同时结合用户画像灵活的支持该企业对指定细分用户群体的营销活动。\r\n\r\n项目收益\r\n目前该证券企业项目已上线运行。项目帮助该企业更好的了解自身用户，通过用户细分和对用户触媒习惯的了解，针对性的制定营销活动及选择推广渠道，避免了广撒网式的资金浪费，极大的降低了营销活动的成本，在持续提升营销活动和推广渠道效率的同时，有效减少了对用户骚扰，降低用户投诉率。\r\n此外，通过金融终端个性化的、实时的资讯和服务推荐，迎合用户资讯及产品的需求与偏好，快速提升用户在企业金融终端的黏性和停留时间，为该企业的金融终端带来了耳目一新的用户体验。', '', '0', '0');

-- ----------------------------
-- Table structure for `lvyecms_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_attachment`;
CREATE TABLE `lvyecms_attachment` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '附件ID',
  `module` char(15) NOT NULL DEFAULT '' COMMENT '模块名称',
  `catid` smallint(5) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `filename` char(50) NOT NULL DEFAULT '' COMMENT '上传附件名称',
  `filepath` char(200) NOT NULL DEFAULT '' COMMENT '附件路径',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '附件大小',
  `fileext` char(10) NOT NULL DEFAULT '' COMMENT '附件扩展名',
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为图片 1为图片',
  `isthumb` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为缩略图 1为缩略图',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上传用户ID',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否后台用户上传',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `uploadip` char(15) NOT NULL DEFAULT '' COMMENT '上传ip',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '附件使用状态',
  `authcode` char(32) NOT NULL DEFAULT '' COMMENT '附件路径MD5值',
  PRIMARY KEY (`aid`),
  KEY `authcode` (`authcode`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of lvyecms_attachment
-- ----------------------------
INSERT INTO `lvyecms_attachment` VALUES ('1', 'content', '1', 'focus_01.jpg', 'content/2017/03/thumb_58da08436ce30.jpg', '260603', 'jpg', '1', '1', '1', '1', '1490683971', '127.0.0.1', '1', 'e020bc114b4658bdfd9400ac8e2da93c');
INSERT INTO `lvyecms_attachment` VALUES ('2', 'content', '1', 'focus_01.jpg', 'content/2017/03/thumb_58da086b004b9.jpg', '260603', 'jpg', '1', '1', '1', '1', '1490684010', '127.0.0.1', '1', 'd894e946fa787afe8a22fc5185cf9bb2');
INSERT INTO `lvyecms_attachment` VALUES ('3', 'content', '-1', 'pro_ico1.png', 'content/2017/03/58da3222113fe.png', '3496', 'png', '1', '0', '1', '1', '1490694690', '127.0.0.1', '1', 'f0b543dbb62fba40f7de6ecabc74f7e5');
INSERT INTO `lvyecms_attachment` VALUES ('4', 'content', '-1', 'pro_ico1b.png', 'content/2017/03/58da322d0c6f9.png', '3247', 'png', '1', '0', '1', '1', '1490694701', '127.0.0.1', '1', '16482a8241e281043be119312ba850c9');
INSERT INTO `lvyecms_attachment` VALUES ('5', 'content', '-1', 'pro_ico2b.png', 'content/2017/03/58da32a27a3a1.png', '5312', 'png', '1', '0', '1', '1', '1490694818', '127.0.0.1', '1', 'b8befe5917a97f801e57edfc66734115');
INSERT INTO `lvyecms_attachment` VALUES ('6', 'content', '-1', 'pro_ico2.png', 'content/2017/03/58da32c0be370.png', '5558', 'png', '1', '0', '1', '1', '1490694848', '127.0.0.1', '1', '3146b7f23d1dcf453e6a56a294464106');
INSERT INTO `lvyecms_attachment` VALUES ('7', 'content', '-1', 'pro_ico3b.png', 'content/2017/03/58da32e43c54c.png', '4457', 'png', '1', '0', '1', '1', '1490694884', '127.0.0.1', '1', 'ca4f56cf3d938fde3ed8e41f51cd79af');
INSERT INTO `lvyecms_attachment` VALUES ('8', 'content', '-1', 'pro_ico3.png', 'content/2017/03/58da32fbe1b58.png', '4827', 'png', '1', '0', '1', '1', '1490694907', '127.0.0.1', '1', 'f41102ab5d01b2c07b25d64d8bb000b5');
INSERT INTO `lvyecms_attachment` VALUES ('9', 'content', '3', '20160511105100_24120.png', 'content/2017/03/thumb_58da37e24471a.png', '1943', 'png', '1', '1', '1', '1', '1490696162', '127.0.0.1', '1', 'f304bd29d26cf4fb7750c7659fdb8f1b');
INSERT INTO `lvyecms_attachment` VALUES ('10', 'content', '3', '20160511105100_24120.png', 'content/2017/03/58da39550e66c.png', '1943', 'png', '1', '0', '1', '1', '1490696533', '127.0.0.1', '0', 'eb8976c8254a0089d10a208654431c89');
INSERT INTO `lvyecms_attachment` VALUES ('11', 'content', '0', '20160511103920_11252.jpg', 'content/2017/03/58da400420693.jpg', '537431', 'jpg', '1', '0', '1', '1', '1490698244', '127.0.0.1', '1', '52d2af51c5374d3409ec2fd837b17b7c');
INSERT INTO `lvyecms_attachment` VALUES ('12', 'content', '3', '20160511110848_47787.png', 'content/2017/03/58da49b40a29b.png', '1465', 'png', '1', '0', '1', '1', '1490700724', '127.0.0.1', '1', 'a45c7362bab28fa909f5abffd915064f');
INSERT INTO `lvyecms_attachment` VALUES ('13', 'content', '3', '20160511103920_11252.jpg', 'content/2017/03/58da4c3109b13.jpg', '537431', 'jpg', '1', '0', '1', '1', '1490701361', '127.0.0.1', '0', '01b2c6f9176ee600807976e2ebe18bef');
INSERT INTO `lvyecms_attachment` VALUES ('14', 'content', '0', '20160511103952_18297.jpg', 'content/2017/03/58da64841c49f.jpg', '177069', 'jpg', '1', '0', '1', '1', '1490707588', '127.0.0.1', '1', 'e6631cadc8b1878c20ae3f6d605efb84');
INSERT INTO `lvyecms_attachment` VALUES ('15', 'content', '6', '20160623151008_15306.jpg', 'content/2017/03/thumb_58da658b4ad19.jpg', '30091', 'jpg', '1', '1', '1', '1', '1490707851', '127.0.0.1', '1', '277d35faac1d27a47c5d2a9dfd77c18d');
INSERT INTO `lvyecms_attachment` VALUES ('18', 'content', '0', '20160511104014_95385.jpg', 'content/2017/03/58db5e94ad068.jpg', '178361', 'jpg', '1', '0', '1', '1', '1490771604', '127.0.0.1', '1', '94353a2866b5217a2054907b65522763');
INSERT INTO `lvyecms_attachment` VALUES ('19', 'content', '11', '20160428105121_73050.jpg', 'content/2017/03/thumb_58db6f00cf8ff.jpg', '144149', 'jpg', '1', '1', '1', '1', '1490775808', '127.0.0.1', '1', 'a5569b24cedb434b37ffd09441475b69');
INSERT INTO `lvyecms_attachment` VALUES ('20', 'content', '12', '20160824113349_81336.jpg', 'content/2017/03/thumb_58db7347a9df4.jpg', '148974', 'jpg', '1', '1', '1', '1', '1490776903', '127.0.0.1', '1', '8eb8096f2213ed1b461077271680d7a3');
INSERT INTO `lvyecms_attachment` VALUES ('21', 'content', '11', '20160526190028_57601.jpg', 'content/2017/03/thumb_58db7b6227e79.jpg', '106969', 'jpg', '1', '1', '1', '1', '1490778978', '127.0.0.1', '1', 'd73f441e21fcf7b2a85ab64796d495e3');
INSERT INTO `lvyecms_attachment` VALUES ('22', 'content', '0', '20160511104053_90266.jpg', 'content/2017/03/58db84e3a437e.jpg', '164663', 'jpg', '1', '0', '1', '1', '1490781411', '127.0.0.1', '1', 'b608b35cecf60b2f2afd9292236928ce');
INSERT INTO `lvyecms_attachment` VALUES ('23', 'content', '13', '20161230111339_94546.jpg', 'content/2017/03/thumb_58db8713313a9.jpg', '379200', 'jpg', '1', '1', '1', '1', '1490781971', '127.0.0.1', '0', '272b518d1f6f99cdd3162be8603d44ea');
INSERT INTO `lvyecms_attachment` VALUES ('24', 'content', '0', '20160509114519_76228.jpg', 'content/2017/03/58db8a91542cf.jpg', '56485', 'jpg', '1', '0', '1', '1', '1490782865', '127.0.0.1', '1', '1101c8afdb12d302976a561df06600b3');
INSERT INTO `lvyecms_attachment` VALUES ('25', 'content', '17', 'sumeng_big.jpg', 'content/2017/03/thumb_58db923fb0936.jpg', '56900', 'jpg', '1', '1', '1', '1', '1490784831', '127.0.0.1', '1', '307da81dfc562b9a249a18286c1c8d49');
INSERT INTO `lvyecms_attachment` VALUES ('26', 'content', '0', '20160511104114_47856.jpg', 'content/2017/03/58dbbf8583241.jpg', '213981', 'jpg', '1', '0', '1', '1', '1490796421', '127.0.0.1', '1', '6ff5ab92d5aded5da6f0ebe2618de116');
INSERT INTO `lvyecms_attachment` VALUES ('27', 'content', '21', '20160509114519_76228.jpg', 'content/2017/03/58dbc0eed3234.jpg', '56485', 'jpg', '1', '0', '1', '1', '1490796782', '127.0.0.1', '1', '708169543a3f4285772a1cf8b2786e4c');
INSERT INTO `lvyecms_attachment` VALUES ('28', 'content', '-1', 'logo.png', 'content/2017/04/58e4623c89993.png', '7928', 'png', '1', '0', '1', '1', '1491362364', '0.0.0.0', '0', 'f40f5d83ff6c50358baecfe060be555d');
INSERT INTO `lvyecms_attachment` VALUES ('29', 'content', '-1', 'foot_logo.png', 'content/2017/04/58e462d718472.png', '3356', 'png', '1', '0', '1', '1', '1491362519', '0.0.0.0', '0', '20ba3d80f0694e564f1ffbf0babf5738');
INSERT INTO `lvyecms_attachment` VALUES ('30', 'content', '-1', '20160504170955_92023.png', 'content/2017/04/58e46656a9d73.png', '57241', 'png', '1', '0', '1', '1', '1491363414', '0.0.0.0', '0', '923f9bc010bc9e9986d0ec0547668127');
INSERT INTO `lvyecms_attachment` VALUES ('31', 'content', '-1', 'favicon.ico', 'content/2017/04/58e46d2578ef6.ico', '4286', 'ico', '0', '0', '1', '1', '1491365157', '0.0.0.0', '0', '259f14b49c44678ad7ca5937c0740be7');

-- ----------------------------
-- Table structure for `lvyecms_attachment_index`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_attachment_index`;
CREATE TABLE `lvyecms_attachment_index` (
  `keyid` char(30) NOT NULL DEFAULT '' COMMENT '关联id',
  `aid` char(10) NOT NULL DEFAULT '' COMMENT '附件ID',
  KEY `keyid` (`keyid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件关系表';

-- ----------------------------
-- Records of lvyecms_attachment_index
-- ----------------------------
INSERT INTO `lvyecms_attachment_index` VALUES ('c-1-1', '1');
INSERT INTO `lvyecms_attachment_index` VALUES ('c-1-2', '2');
INSERT INTO `lvyecms_attachment_index` VALUES ('c-3-1', '3');
INSERT INTO `lvyecms_attachment_index` VALUES ('c-3-1', '4');
INSERT INTO `lvyecms_attachment_index` VALUES ('c-3-1', '5');
INSERT INTO `lvyecms_attachment_index` VALUES ('c-3-1', '6');
INSERT INTO `lvyecms_attachment_index` VALUES ('c-3-1', '7');
INSERT INTO `lvyecms_attachment_index` VALUES ('c-3-1', '8');
INSERT INTO `lvyecms_attachment_index` VALUES ('c-3-1', '9');
INSERT INTO `lvyecms_attachment_index` VALUES ('catid-2', '11');
INSERT INTO `lvyecms_attachment_index` VALUES ('c-3-2', '12');
INSERT INTO `lvyecms_attachment_index` VALUES ('catid-6', '14');
INSERT INTO `lvyecms_attachment_index` VALUES ('c-6-1', '15');
INSERT INTO `lvyecms_attachment_index` VALUES ('catid-10', '14');
INSERT INTO `lvyecms_attachment_index` VALUES ('catid-10', '18');
INSERT INTO `lvyecms_attachment_index` VALUES ('catid-11', '18');
INSERT INTO `lvyecms_attachment_index` VALUES ('c-11-1', '19');
INSERT INTO `lvyecms_attachment_index` VALUES ('c-12-2', '20');
INSERT INTO `lvyecms_attachment_index` VALUES ('c-11-3', '21');
INSERT INTO `lvyecms_attachment_index` VALUES ('catid-13', '22');
INSERT INTO `lvyecms_attachment_index` VALUES ('catid-14', '24');
INSERT INTO `lvyecms_attachment_index` VALUES ('c-17-1', '25');
INSERT INTO `lvyecms_attachment_index` VALUES ('catid-20', '26');
INSERT INTO `lvyecms_attachment_index` VALUES ('c-21-1', '27');

-- ----------------------------
-- Table structure for `lvyecms_behavior`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_behavior`;
CREATE TABLE `lvyecms_behavior` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '行为唯一标识',
  `title` char(80) NOT NULL DEFAULT '' COMMENT '行为说明',
  `remark` char(140) NOT NULL DEFAULT '' COMMENT '行为描述',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-控制器，2-视图',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态（0：禁用，1：正常）',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '所属模块',
  `datetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='系统行为表';

-- ----------------------------
-- Records of lvyecms_behavior
-- ----------------------------
INSERT INTO `lvyecms_behavior` VALUES ('1', 'app_init', '应用初始化标签位', '应用初始化标签位', '1', '1', '1', '', '1381021393');
INSERT INTO `lvyecms_behavior` VALUES ('2', 'path_info', 'PATH_INFO检测标签位', 'PATH_INFO检测标签位', '1', '1', '1', '', '1381021411');
INSERT INTO `lvyecms_behavior` VALUES ('3', 'app_begin', '应用开始标签位', '应用开始标签位', '1', '1', '1', '', '1381021424');
INSERT INTO `lvyecms_behavior` VALUES ('4', 'action_name', '操作方法名标签位', '操作方法名标签位', '1', '1', '1', '', '1381021437');
INSERT INTO `lvyecms_behavior` VALUES ('5', 'action_begin', '控制器开始标签位', '控制器开始标签位', '1', '1', '1', '', '1381021450');
INSERT INTO `lvyecms_behavior` VALUES ('6', 'view_begin', '视图输出开始标签位', '视图输出开始标签位', '1', '1', '1', '', '1381021463');
INSERT INTO `lvyecms_behavior` VALUES ('7', 'view_parse', '视图解析标签位', '视图解析标签位', '1', '1', '1', '', '1381021476');
INSERT INTO `lvyecms_behavior` VALUES ('8', 'template_filter', '模板内容解析标签位', '模板内容解析标签位', '1', '1', '1', '', '1381021488');
INSERT INTO `lvyecms_behavior` VALUES ('9', 'view_filter', '视图输出过滤标签位', '视图输出过滤标签位', '1', '1', '1', '', '1381021621');
INSERT INTO `lvyecms_behavior` VALUES ('10', 'view_end', '视图输出结束标签位', '视图输出结束标签位', '1', '1', '1', '', '1381021631');
INSERT INTO `lvyecms_behavior` VALUES ('11', 'action_end', '控制器结束标签位', '控制器结束标签位', '1', '1', '1', '', '1381021642');
INSERT INTO `lvyecms_behavior` VALUES ('12', 'app_end', '应用结束标签位', '应用结束标签位', '1', '1', '1', '', '1381021654');
INSERT INTO `lvyecms_behavior` VALUES ('13', 'appframe_rbac_init', '后台权限控制', '后台权限控制', '1', '1', '1', '', '1381023560');

-- ----------------------------
-- Table structure for `lvyecms_behavior_log`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_behavior_log`;
CREATE TABLE `lvyecms_behavior_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ruleid` int(10) NOT NULL DEFAULT '0' COMMENT '行为ID',
  `guid` char(50) NOT NULL DEFAULT '' COMMENT '标识',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '执行行为的时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行为日志';

-- ----------------------------
-- Records of lvyecms_behavior_log
-- ----------------------------

-- ----------------------------
-- Table structure for `lvyecms_behavior_rule`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_behavior_rule`;
CREATE TABLE `lvyecms_behavior_rule` (
  `ruleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `behaviorid` int(11) NOT NULL DEFAULT '0' COMMENT '行为id',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '规则所属模块',
  `addons` char(20) NOT NULL DEFAULT '' COMMENT '规则所属插件',
  `rule` text COMMENT '行为规则',
  `listorder` tinyint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  `datetime` int(10) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`ruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='行为规则表';

-- ----------------------------
-- Records of lvyecms_behavior_rule
-- ----------------------------
INSERT INTO `lvyecms_behavior_rule` VALUES ('1', '1', '1', '', '', 'phpfile:BuildLiteBehavior', '0', '1381021954');
INSERT INTO `lvyecms_behavior_rule` VALUES ('2', '3', '1', '', '', 'phpfile:ReadHtmlCacheBehavior', '0', '1381021954');
INSERT INTO `lvyecms_behavior_rule` VALUES ('3', '12', '1', '', '', 'phpfile:ShowPageTraceBehavior', '0', '1381021954');
INSERT INTO `lvyecms_behavior_rule` VALUES ('4', '7', '1', '', '', 'phpfile:ParseTemplateBehavior', '0', '1381021954');
INSERT INTO `lvyecms_behavior_rule` VALUES ('5', '8', '1', '', '', 'phpfile:ContentReplaceBehavior', '0', '1381021954');
INSERT INTO `lvyecms_behavior_rule` VALUES ('6', '9', '1', '', '', 'phpfile:WriteHtmlCacheBehavior', '0', '1381021954');
INSERT INTO `lvyecms_behavior_rule` VALUES ('7', '1', '1', '', '', 'phpfile:AppInitBehavior|module:Common', '0', '1381021954');
INSERT INTO `lvyecms_behavior_rule` VALUES ('8', '3', '1', '', '', 'phpfile:AppBeginBehavior|module:Common', '0', '1381021954');
INSERT INTO `lvyecms_behavior_rule` VALUES ('9', '6', '1', '', '', 'phpfile:ViewBeginBehavior|module:Common', '0', '1381021954');
INSERT INTO `lvyecms_behavior_rule` VALUES ('10', '3', '0', 'CustomData', '', 'phpfile:CustomDataApi|module:CustomData', '0', '1490676831');

-- ----------------------------
-- Table structure for `lvyecms_cache`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_cache`;
CREATE TABLE `lvyecms_cache` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `key` char(100) NOT NULL DEFAULT '' COMMENT '缓存key值',
  `name` char(100) NOT NULL DEFAULT '' COMMENT '名称',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模块名称',
  `model` char(30) NOT NULL DEFAULT '' COMMENT '模型名称',
  `action` char(30) NOT NULL DEFAULT '' COMMENT '方法名',
  `param` char(255) NOT NULL DEFAULT '' COMMENT '参数',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  PRIMARY KEY (`id`),
  KEY `ckey` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='缓存更新列队';

-- ----------------------------
-- Records of lvyecms_cache
-- ----------------------------
INSERT INTO `lvyecms_cache` VALUES ('1', 'Config', '网站配置', '', 'Config', 'config_cache', '', '1');
INSERT INTO `lvyecms_cache` VALUES ('2', 'Module', '可用模块列表', '', 'Module', 'module_cache', '', '1');
INSERT INTO `lvyecms_cache` VALUES ('3', 'Behavior', '行为列表', '', 'Behavior', 'behavior_cache', '', '1');
INSERT INTO `lvyecms_cache` VALUES ('4', 'Menu', '后台菜单', 'Admin', 'Menu', 'menu_cache', '', '0');
INSERT INTO `lvyecms_cache` VALUES ('5', 'Category', '栏目索引', 'Content', 'Category', 'category_cache', '', '0');
INSERT INTO `lvyecms_cache` VALUES ('6', 'Model', '模型列表', 'Content', 'Model', 'model_cache', '', '0');
INSERT INTO `lvyecms_cache` VALUES ('7', 'Urlrules', 'URL规则', 'Content', 'Urlrule', 'urlrule_cache', '', '0');
INSERT INTO `lvyecms_cache` VALUES ('8', 'ModelField', '模型字段', 'Content', 'ModelField', 'model_field_cache', '', '0');
INSERT INTO `lvyecms_cache` VALUES ('9', 'Position', '推荐位', 'Content', 'Position', 'position_cache', '', '0');

-- ----------------------------
-- Table structure for `lvyecms_category`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_category`;
CREATE TABLE `lvyecms_category` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目ID',
  `module` varchar(15) NOT NULL DEFAULT '' COMMENT '所属模块',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `domain` varchar(200) NOT NULL DEFAULT '' COMMENT '栏目绑定域名',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `arrparentid` varchar(255) NOT NULL DEFAULT '' COMMENT '所有父ID',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否存在子栏目，1存在',
  `arrchildid` mediumtext COMMENT '所有子栏目ID',
  `catname` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '栏目图片',
  `description` mediumtext COMMENT '栏目描述',
  `parentdir` varchar(100) NOT NULL DEFAULT '' COMMENT '父目录',
  `catdir` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目目录',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '链接地址',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目点击数',
  `setting` mediumtext COMMENT '相关配置信息',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `sethtml` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否生成静态',
  `letter` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目拼音',
  PRIMARY KEY (`catid`),
  KEY `module` (`module`,`parentid`,`listorder`,`catid`),
  KEY `siteid` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of lvyecms_category
-- ----------------------------
INSERT INTO `lvyecms_category` VALUES ('1', 'content', '0', '1', '', '0', '0', '0', '1', '首页轮播图', '', '', '', 'indexBanner', '/index.php?a=lists&catid=1', '0', 'a:15:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:12:\"category.php\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '0', '0', '0', 'shouyelunbotu');
INSERT INTO `lvyecms_category` VALUES ('2', 'content', '1', '0', '', '0', '0', '1', '2,3,4,5', '产品', '/d/file/content/2017/03/58da400420693.jpg', '历经7年的大数据实践，百分点大数据产品线全面涵盖大数据技术、大数据管理、到大数据应用的各个层级，帮助企业一站式完成大数据实施、管理及应用。', '', 'chanpin', '/index.php?a=lists&catid=2', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:16:\"page_chanpin.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '2', '1', '0', 'chanpin');
INSERT INTO `lvyecms_category` VALUES ('3', 'content', '0', '2', '', '2', '0,2', '0', '3', '大数据应用', '', '数据应用绽放价值，百分点个性化系统/营销管家/舆情管家/文本分析/数据洞察等一系列大数据应用，帮助企业更好的解决大数据时代面临的销售、营销、运营、服务等方面的问题。', 'chanpin/', 'dashujuyingyong', '/index.php?a=lists&catid=3', '0', 'a:15:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:16:\"show_chanpin.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";s:6:\"extend\";a:2:{s:9:\"iconfocus\";s:41:\"/d/file/content/2017/03/58da3222113fe.png\";s:10:\"iconnormal\";s:41:\"/d/file/content/2017/03/58da322d0c6f9.png\";}}', '0', '1', '0', 'dashujuyingyong');
INSERT INTO `lvyecms_category` VALUES ('4', 'content', '0', '2', '', '2', '0,2', '0', '4', '大数据管理', '', '数据管理梳理价值，针对大数据时代数据分散、割裂、难以统一管理等难题，百分点开发了数据清洗/用户标识管理/用户标签管理等系统，帮助企业实现数据全生命周期的价值管理。', 'chanpin/', 'dashujuguanli', '/index.php?a=lists&catid=4', '0', 'a:15:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:16:\"show_chanpin.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";s:6:\"extend\";a:2:{s:10:\"iconnormal\";s:41:\"/d/file/content/2017/03/58da32a27a3a1.png\";s:9:\"iconfocus\";s:41:\"/d/file/content/2017/03/58da32c0be370.png\";}}', '0', '1', '0', 'dashujuguanli');
INSERT INTO `lvyecms_category` VALUES ('5', 'content', '0', '2', '', '2', '0,2', '0', '5', '大数据技术', '', '数据技术夯实价值，百分点大数据操作系统屏蔽底层繁复的技术，提供多工种协同作业、管理大数据采集、加工和应用环节所有资源和任务的可视化操作系统，快速提升企业大数据综合处理能力和效率。', 'chanpin/', 'dashujujishu', '/index.php?a=lists&catid=5', '0', 'a:15:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:16:\"show_chanpin.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";s:6:\"extend\";a:2:{s:10:\"iconnormal\";s:41:\"/d/file/content/2017/03/58da32e43c54c.png\";s:9:\"iconfocus\";s:41:\"/d/file/content/2017/03/58da32fbe1b58.png\";}}', '0', '1', '0', 'dashujujishu');
INSERT INTO `lvyecms_category` VALUES ('6', 'content', '0', '3', '', '0', '0', '0', '6', '解决方案', '/d/file/content/2017/03/58da64841c49f.jpg', '服务近2000家企业，依托一系列实践中打磨过的技术和产品，根据企业的具体业务问题和需求，针对性的提供各行业大数据解决方案。', '', 'jiejuefangan', '/index.php?a=lists&catid=6', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:21:\"list_jiejuefangan.php\";s:13:\"show_template\";s:21:\"show_jiejuefangan.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '3', '1', '0', 'jiejuefangan');
INSERT INTO `lvyecms_category` VALUES ('13', 'content', '0', '5', '', '0', '0', '0', '13', '资讯中心', '/d/file/content/2017/03/58db84e3a437e.jpg', '百分点依托大数据技术和丰富的行业经验，体察互联网+时代的变革和机遇，提供基于消费层面的用户全景画像以及行业范畴的产品、品牌、营销、舆情等全方位的分析与报告服务。', '', 'zixunzhongxin', '/index.php?a=lists&catid=13', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:14:\"list_zixun.php\";s:13:\"show_template\";s:14:\"show_zixun.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '5', '1', '0', 'zixunzhongxin');
INSERT INTO `lvyecms_category` VALUES ('11', 'content', '0', '4', '', '10', '0,10', '0', '11', '金融', '/d/file/content/2017/03/58db5e94ad068.jpg', '', 'anli/', 'jinrong', '/index.php?a=lists&catid=11', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:13:\"list_anli.php\";s:13:\"show_template\";s:13:\"show_anli.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '0', '1', '0', 'jinrong');
INSERT INTO `lvyecms_category` VALUES ('10', 'content', '0', '4', '', '0', '0', '1', '10,11,12', '案例', '/d/file/content/2017/03/58db5e94ad068.jpg', '', '', 'anli', '/index.php?a=lists&catid=10', '0', 'a:12:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:17:\"category_anli.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '4', '1', '0', 'anli');
INSERT INTO `lvyecms_category` VALUES ('12', 'content', '0', '4', '', '10', '0,10', '0', '12', '制造', '/d/file/content/2017/03/58db5e94ad068.jpg', '', 'anli/', 'zhizao', '/index.php?a=lists&catid=12', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:13:\"list_anli.php\";s:13:\"show_template\";s:13:\"show_anli.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '0', '1', '0', 'zhizao');
INSERT INTO `lvyecms_category` VALUES ('14', 'content', '1', '0', '', '0', '0', '1', '14,17,19,18', '关于我们', '/d/file/content/2017/03/58db8a91542cf.jpg', '', '', 'guanyuwomen', '/index.php?a=lists&catid=14', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:8:\"page.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '7', '1', '0', 'guanyuwomen');
INSERT INTO `lvyecms_category` VALUES ('19', 'content', '1', '0', '', '14', '0,14', '1', '19', '联系我们', '', '', 'guanyuwomen/', 'lianxiwomen', '/index.php?a=lists&catid=19', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:20:\"page_lianxiwomen.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '1', '1', '0', 'lianxiwomen');
INSERT INTO `lvyecms_category` VALUES ('17', 'content', '0', '6', '', '14', '0,14', '0', '17', '管理团队', '', '', 'guanyuwomen/', 'guanlituandui', '/index.php?a=lists&catid=17', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:22:\"list_guanlituandui.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '0', '1', '0', 'guanlituandui');
INSERT INTO `lvyecms_category` VALUES ('20', 'content', '1', '0', '', '0', '0', '1', '20,21', '资料下载', '/d/file/content/2017/03/58dbbf8583241.jpg', '百分点依托大数据技术和丰富的行业经验，体察互联网+时代的变革和机遇，提供基于消费层面的用户全景画像以及行业范畴的产品、品牌、营销、舆情等全方位的分析与报告服务。', '', 'ziliaoxiazai', '/index.php?a=lists&catid=20', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:15:\"page_ziliao.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '6', '1', '0', 'ziliaoxiazai');
INSERT INTO `lvyecms_category` VALUES ('18', 'content', '1', '0', '', '14', '0,14', '1', '18', '公司介绍', '', '', 'guanyuwomen/', 'gongsijieshao', '/index.php?a=lists&catid=18', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:22:\"page_gongsijieshao.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '1', '1', '0', 'gongsijieshao');
INSERT INTO `lvyecms_category` VALUES ('21', 'content', '0', '7', '', '20', '0,20', '0', '21', '分类', '', '', 'ziliaoxiazai/', 'fenlei1', '/index.php?a=lists&catid=21', '0', 'a:15:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:12:\"category.php\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '0', '1', '0', 'fenlei');

-- ----------------------------
-- Table structure for `lvyecms_category_field`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_category_field`;
CREATE TABLE `lvyecms_category_field` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `catid` smallint(5) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `fieldname` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '类型,input',
  `setting` mediumtext COMMENT '其他',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='栏目扩展字段列表';

-- ----------------------------
-- Records of lvyecms_category_field
-- ----------------------------
INSERT INTO `lvyecms_category_field` VALUES ('5', '3', 'iconfocus', 'file', 'a:4:{s:5:\"title\";s:13:\"图标-焦点\";s:4:\"tips\";s:20:\"图片大小：95*95\";s:5:\"style\";s:0:\"\";s:6:\"option\";s:24:\"选项名称1|选项值1\";}', '1490694198');
INSERT INTO `lvyecms_category_field` VALUES ('4', '3', 'iconnormal', 'file', 'a:4:{s:5:\"title\";s:16:\"图标-非焦点\";s:4:\"tips\";s:20:\"图片大小：95*95\";s:5:\"style\";s:0:\"\";s:6:\"option\";s:24:\"选项名称1|选项值1\";}', '1490694198');
INSERT INTO `lvyecms_category_field` VALUES ('6', '4', 'iconnormal', 'file', 'a:4:{s:5:\"title\";s:15:\"图标非焦点\";s:4:\"tips\";s:20:\"图标大小：95*95\";s:5:\"style\";s:0:\"\";s:6:\"option\";s:24:\"选项名称1|选项值1\";}', '1490694387');
INSERT INTO `lvyecms_category_field` VALUES ('7', '4', 'iconfocus', 'file', 'a:4:{s:5:\"title\";s:13:\" 图标焦点\";s:4:\"tips\";s:20:\"图标大小：95*95\";s:5:\"style\";s:0:\"\";s:6:\"option\";s:24:\"选项名称1|选项值1\";}', '1490694387');
INSERT INTO `lvyecms_category_field` VALUES ('8', '5', 'iconnormal', 'file', 'a:4:{s:5:\"title\";s:15:\"图标非焦点\";s:4:\"tips\";s:20:\"图标大小：95*95\";s:5:\"style\";s:0:\"\";s:6:\"option\";s:24:\"选项名称1|选项值1\";}', '1490694535');
INSERT INTO `lvyecms_category_field` VALUES ('9', '5', 'iconfocus', 'file', 'a:4:{s:5:\"title\";s:12:\"图标焦点\";s:4:\"tips\";s:20:\"图标大小：95*95\";s:5:\"style\";s:0:\"\";s:6:\"option\";s:24:\"选项名称1|选项值1\";}', '1490694535');

-- ----------------------------
-- Table structure for `lvyecms_category_priv`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_category_priv`;
CREATE TABLE `lvyecms_category_priv` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `roleid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '角色或者组ID',
  `is_admin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为管理员 1、管理员',
  `action` char(30) NOT NULL DEFAULT '' COMMENT '动作',
  KEY `catid` (`catid`,`roleid`,`is_admin`,`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目权限表';

-- ----------------------------
-- Records of lvyecms_category_priv
-- ----------------------------

-- ----------------------------
-- Table structure for `lvyecms_chanpinlist`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_chanpinlist`;
CREATE TABLE `lvyecms_chanpinlist` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lvyecms_chanpinlist
-- ----------------------------
INSERT INTO `lvyecms_chanpinlist` VALUES ('1', '3', '0', '个性化系统', '', '/d/file/content/2017/03/58da39550e66c.png', '', '', '百分点个性化系统产品（BPS）深入整合用户行为记录，构建用户偏好统一视图，为用户提供跨屏的、实时的、“千人千面”的个性化商品/资讯推荐，帮助商家/媒体有效提升用户的转化和生命周期价值，BPS产品可以衍生出电子商城个性化系统、移动商城个性化系统、媒体网站个性化系统、微信商城个性化系统等产品。', '0', '/index.php?a=shows&catid=3&id=1', '0', '99', '1', 'admin', '1490696172', '1490696172', '3', '0', '3', '3', '3', '1490700544');
INSERT INTO `lvyecms_chanpinlist` VALUES ('2', '3', '0', '营销管家系统', '', '/d/file/content/2017/03/58da49b40a29b.png', '', '', '整合DSP、EDM、SEM、SMS、社交广告等多种营销渠道，为广告主和代理商提供一站式营销管理的工具。', '0', '/index.php?a=shows&catid=3&id=2', '0', '99', '1', 'admin', '1490700772', '1490700772', '1', '0', '1', '1', '1', '1490700939');

-- ----------------------------
-- Table structure for `lvyecms_chanpinlist_data`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_chanpinlist_data`;
CREATE TABLE `lvyecms_chanpinlist_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `superiority` mediumtext COLLATE utf8_unicode_ci,
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `feature` mediumtext COLLATE utf8_unicode_ci,
  `applicationscene` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lvyecms_chanpinlist_data
-- ----------------------------
INSERT INTO `lvyecms_chanpinlist_data` VALUES ('1', '**实时分析与推荐**\r\n基于百分点高并发，高可用的大数据离线与实时计算架构，处理海量用户实时行为数据，准确把握即时产生的需求并进行实时推荐，真正实现毫秒级响应。\r\n**整合5.5亿网民偏好数据**\r\n作为国内最大的推荐引擎技术服务商，百分点目前拥有5.5亿网民的用户画像，可识别全网80%以上的用户。\r\n**构建用户全网兴趣图谱**\r\n通过百分点独有的跨屏、跨站、跨渠道、跨平台的用户及商品拉通管理模型，打通用户全网行为，构建用户360度全景视图，从而更精准的预测用户需求，更精准的进行推荐。\r\n**丰富的行业经验**\r\n电商、媒体合作伙伴高达1500家，涵盖各个细分行业，针对不同行业，根据行业特点精准制定行业推荐规则，提升行业整体推荐效率。', '', '0', '0', '', '写点什么', '**金融领域**\r\n当下，面对互联网金融的巨大压力，各金融企业急需通过大数据的分析挖掘，定位市场机会和挖掘新的业务增长点，从而提升自身竞争力和客户满意度。BPS能够从以下几个方面解决金融企业的问题，提升其竞争优势。\r\n> 1、利用互联网金融思维与大数据技术，对行内外数据进行整合、分析，打造金融行业精准化、实时化、情景化、生态化的零售营销新模式；\r\n2、实时洞察客户潜在需求，制定个性化的服务和营销策略，借助个性化系统，实现个性化界面，数据打造互联网场景营销体验；\r\n3、结合行业内外数据，BPS产品可以在线发掘客户的潜在需求，并完成从线上向线下的导流，实现线上、线下的渠道协同；\r\n4、制定个性化的产品、权益和服务策略，借助个性化系统，实现营销资源的精准投放，精准的营销资源投放不仅在于将合适的产品推荐给合适的客户，也在于寻求最优的投放渠道、时间、式样，在宣传产品的同时避免客户受到过分打扰。\r\n\r\n**媒体机构**\r\n随着移动互联网的高速发展，人们利用碎片时间获取信息的便利性大大提高，在短暂的碎片化时间中，如果能够快速聚焦用户需求，提供个性化的媒体内容服务，可以提升用户在终端的停留时长，进而产生更多的营销机会，最终提升流量变现能力。BPS能够从以下几方面，解决媒体机构个性化服务的问题，提升其核心竞争力。\r\n1、通过跨屏推荐能力，持续跟踪用户对媒体内容的偏好，提供符合用户当下关注点、兴趣点的媒体内容，降低用户跳出率，提升用户粘度；\r\n2、通过与用户画像体系的结合，可以丰富推荐策略，在不缩小用户视角的同时，提高命中用户兴趣的概率，实现流量转化。\r\n\r\n**电子商务**\r\n目前的电子商务市场交易已处于基于数据的时代，电子商务的竞争在很大程度上就是大数据的竞争。将后台收集到的海量的用户行为数据进行整合、分析、挖掘并将其应用到整个电商的业务流程中，实现客户洞察、精准营销、个性化推荐等是所有电商企业最关心的问题，BPS产品在电商领域的多年实践，可以提供基于推荐系统的电商业务个性化，实现单客价值的最大化。\r\n1、通过实时、跨屏的推荐服务，可以极大的提高商品曝光率，促进长尾商品的销售，提高商品动销；\r\n2、持续跟踪用户在商城的浏览、点击、添购、下订等行为动作，在用户接触的各个环节，不断提供符合用户需求和偏好的商品信息，最终提高流量转化率，实现营收增长；\r\n\r\n在移动端，因为受限于屏幕的大小，个性化推荐可以更加聚焦用户当下的购物诉求，对有限的展示空间尽可能的高效利用，吸引用户关注，进而产品点击行为。');
INSERT INTO `lvyecms_chanpinlist_data` VALUES ('2', '**全流程策略**\r\n基于百分点用户画像及数据洞察优势，制定覆盖品牌定位、精准投放、动态调优等全流程环节中的策略。\r\n全渠道营销管理\r\n跨渠道、跨屏投放管理，多方渠道数据、报表的一体化整合，形成完整的消费者转化路径。\r\n营销闭环\r\n打造“策略设定 -- 投放管理 -- 数据回收 -- 效果调优”的完整闭环，借助营销投放数据标签，不断迭代用户洞察，优化投放定向。\r\n效果持续优化\r\n全流程实时动态效果监测，数据分析支撑投放效果，模型自动评估/迭代，在线的规则、模型A/B test。\r\n丰富的算法模型\r\n融合第一方广告主与第三方互联网数据，基于客户生命周期的模型研究，实现客户价值潜能的最大化。', '', '0', '0', '1|2,2|2,2', '随意内容', '精准营销服务\r\n基于BMM的产品能力与运营能力，对接各类互联网营销合作渠道，为广告主提供一站式营销服务，完成从营销策略制定、渠道组合投放、报表多维洞察和效果持续优化的全过程。达成广告主品牌营销目标的同时，让营销数据沉淀，让品牌定位更精准、更合理。\r\n\r\n数据驱动的营销工具\r\n依托于百分点数据源、大数据技术和营销模型优势，BMM可作为广告代理公司的互联网精准营销管理工具，将数据驱动个性化营销的技术能力与传统广告公司的业务能力相融合，更好的适应大数据时代的营销模式。\r\n\r\n企业私有的营销管家系统\r\n为企业提供私有营销管家平台建设，采用公有云服务与私有云管控相融合的灵活解决方案，便捷的整合第一方、第二方、第三方等多渠道、多触点数据，提高企业自身对互联网精准营销业务的管控能力，快速提升投资回报率。');

-- ----------------------------
-- Table structure for `lvyecms_config`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_config`;
CREATE TABLE `lvyecms_config` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `varname` (`varname`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='网站配置表';

-- ----------------------------
-- Records of lvyecms_config
-- ----------------------------
INSERT INTO `lvyecms_config` VALUES ('1', 'sitename', '网站名称', '1', '天阙CMS内容管理系统');
INSERT INTO `lvyecms_config` VALUES ('2', 'siteurl', '网站网址', '1', '/');
INSERT INTO `lvyecms_config` VALUES ('3', 'sitefileurl', '附件地址', '1', '/d/file/');
INSERT INTO `lvyecms_config` VALUES ('4', 'siteemail', '站点邮箱', '1', 'admin@admin.com');
INSERT INTO `lvyecms_config` VALUES ('6', 'siteinfo', '网站介绍', '1', '天阙CMS网站管理系统,是一款完全开源免费的PHP+MYSQL系统.核心采用了Thinkphp框架等众多开源软件,同时核心功能也作为开源软件发布');
INSERT INTO `lvyecms_config` VALUES ('7', 'sitekeywords', '网站关键字', '1', '天阙CMS内容管理系统');
INSERT INTO `lvyecms_config` VALUES ('8', 'uploadmaxsize', '允许上传附件大小', '1', '20240');
INSERT INTO `lvyecms_config` VALUES ('9', 'uploadallowext', '允许上传附件类型', '1', 'jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf|ico');
INSERT INTO `lvyecms_config` VALUES ('10', 'qtuploadmaxsize', '前台允许上传附件大小', '1', '200');
INSERT INTO `lvyecms_config` VALUES ('11', 'qtuploadallowext', '前台允许上传附件类型', '1', 'jpg|jpeg|gif');
INSERT INTO `lvyecms_config` VALUES ('12', 'watermarkenable', '是否开启图片水印', '1', '1');
INSERT INTO `lvyecms_config` VALUES ('13', 'watermarkminwidth', '水印-宽', '1', '300');
INSERT INTO `lvyecms_config` VALUES ('14', 'watermarkminheight', '水印-高', '1', '100');
INSERT INTO `lvyecms_config` VALUES ('15', 'watermarkimg', '水印图片', '1', '/statics/images/mark_bai.png');
INSERT INTO `lvyecms_config` VALUES ('16', 'watermarkpct', '水印透明度', '1', '80');
INSERT INTO `lvyecms_config` VALUES ('17', 'watermarkquality', 'JPEG 水印质量', '1', '85');
INSERT INTO `lvyecms_config` VALUES ('18', 'watermarkpos', '水印位置', '1', '7');
INSERT INTO `lvyecms_config` VALUES ('19', 'theme', '主题风格', '1', 'Default');
INSERT INTO `lvyecms_config` VALUES ('20', 'ftpstatus', 'FTP上传', '1', '0');
INSERT INTO `lvyecms_config` VALUES ('21', 'ftpuser', 'FTP用户名', '1', '');
INSERT INTO `lvyecms_config` VALUES ('22', 'ftppassword', 'FTP密码', '1', '');
INSERT INTO `lvyecms_config` VALUES ('23', 'ftphost', 'FTP服务器地址', '1', '');
INSERT INTO `lvyecms_config` VALUES ('24', 'ftpport', 'FTP服务器端口', '1', '21');
INSERT INTO `lvyecms_config` VALUES ('25', 'ftppasv', 'FTP是否开启被动模式', '1', '1');
INSERT INTO `lvyecms_config` VALUES ('26', 'ftpssl', 'FTP是否使用SSL连接', '1', '0');
INSERT INTO `lvyecms_config` VALUES ('27', 'ftptimeout', 'FTP超时时间', '1', '10');
INSERT INTO `lvyecms_config` VALUES ('28', 'ftpuppat', 'FTP上传目录', '1', '/');
INSERT INTO `lvyecms_config` VALUES ('29', 'mail_type', '邮件发送模式', '1', '1');
INSERT INTO `lvyecms_config` VALUES ('30', 'mail_server', '邮件服务器', '1', 'smtp.qq.com');
INSERT INTO `lvyecms_config` VALUES ('31', 'mail_port', '邮件发送端口', '1', '25');
INSERT INTO `lvyecms_config` VALUES ('32', 'mail_from', '发件人地址', '1', 'admin@abc3210.com');
INSERT INTO `lvyecms_config` VALUES ('33', 'mail_auth', '密码验证', '1', '1');
INSERT INTO `lvyecms_config` VALUES ('34', 'mail_user', '邮箱用户名', '1', '');
INSERT INTO `lvyecms_config` VALUES ('35', 'mail_password', '邮箱密码', '1', '');
INSERT INTO `lvyecms_config` VALUES ('36', 'mail_fname', '发件人名称', '1', 'LvyeCMS管理员');
INSERT INTO `lvyecms_config` VALUES ('37', 'domainaccess', '指定域名访问', '1', '0');
INSERT INTO `lvyecms_config` VALUES ('38', 'generate', '是否生成首页', '1', '1');
INSERT INTO `lvyecms_config` VALUES ('39', 'index_urlruleid', '首页URL规则', '1', '11');
INSERT INTO `lvyecms_config` VALUES ('40', 'indextp', '首页模板', '1', 'index.php');
INSERT INTO `lvyecms_config` VALUES ('41', 'tagurl', 'TagURL规则', '1', '8');
INSERT INTO `lvyecms_config` VALUES ('42', 'checkcode_type', '验证码类型', '1', '0');
INSERT INTO `lvyecms_config` VALUES ('43', 'attachment_driver', '附件驱动', '1', 'Local');
INSERT INTO `lvyecms_config` VALUES ('44', 'addonsite', '开放平台', '1', 'http://addon.lvyecms.com/');

-- ----------------------------
-- Table structure for `lvyecms_config_field`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_config_field`;
CREATE TABLE `lvyecms_config_field` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `fieldname` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '类型,input',
  `setting` mediumtext COMMENT '其他',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='网站配置，扩展字段列表';

-- ----------------------------
-- Records of lvyecms_config_field
-- ----------------------------

-- ----------------------------
-- Table structure for `lvyecms_customlist`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_customlist`;
CREATE TABLE `lvyecms_customlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自定义列表ID',
  `url` char(100) NOT NULL DEFAULT '' COMMENT '访问地址',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '列表标题',
  `title` varchar(120) NOT NULL DEFAULT '' COMMENT '网页标题',
  `keywords` varchar(40) NOT NULL DEFAULT '' COMMENT '网页关键字',
  `description` text COMMENT '页面简介',
  `totalsql` text COMMENT '数据统计SQL',
  `listsql` text COMMENT '数据查询SQL',
  `lencord` int(11) NOT NULL DEFAULT '0' COMMENT '每页显示',
  `urlruleid` int(11) NOT NULL DEFAULT '0' COMMENT 'URL规则ID',
  `urlrule` varchar(120) NOT NULL DEFAULT '' COMMENT 'URL规则',
  `template` mediumtext COMMENT '模板',
  `listpath` varchar(60) NOT NULL DEFAULT '' COMMENT '列表模板文件',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='自定义列表';

-- ----------------------------
-- Records of lvyecms_customlist
-- ----------------------------

-- ----------------------------
-- Table structure for `lvyecms_customtemp`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_customtemp`;
CREATE TABLE `lvyecms_customtemp` (
  `tempid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '模板ID',
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '模板名称',
  `tempname` varchar(30) NOT NULL DEFAULT '' COMMENT '模板完整文件名',
  `temppath` varchar(200) NOT NULL DEFAULT '' COMMENT '模板生成路径',
  `temptext` mediumtext COMMENT '模板内容',
  PRIMARY KEY (`tempid`),
  KEY `tempname` (`tempname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='自定义模板表';

-- ----------------------------
-- Records of lvyecms_customtemp
-- ----------------------------

-- ----------------------------
-- Table structure for `lvyecms_custom_data`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_custom_data`;
CREATE TABLE `lvyecms_custom_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `adddate` int(10) unsigned NOT NULL COMMENT '添加时间',
  `typeid` varchar(255) NOT NULL COMMENT '数据类型编号',
  `data` text NOT NULL COMMENT '数据',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='自定义资料数据表';

-- ----------------------------
-- Records of lvyecms_custom_data
-- ----------------------------
INSERT INTO `lvyecms_custom_data` VALUES ('1', '公司介绍', '1490783682', 'markdown', '公司介绍的内\r\n容');
INSERT INTO `lvyecms_custom_data` VALUES ('2', '联系我们', '1490783876', 'markdown', '联系wo');
INSERT INTO `lvyecms_custom_data` VALUES ('3', '顶部 LOGO 大小：239*35', '1491362368', 'downfile', '/d/file/content/2017/04/58e4623c89993.png');
INSERT INTO `lvyecms_custom_data` VALUES ('4', '脚部 LOGO 大小：104*30', '1491362523', 'downfile', '/d/file/content/2017/04/58e462d718472.png');
INSERT INTO `lvyecms_custom_data` VALUES ('5', '联系 QQ 只能写一个不能换行', '1491362927', 'textarea', '8888888');
INSERT INTO `lvyecms_custom_data` VALUES ('6', '联系电话', '1491362974', 'textarea', '888-888-888-888');
INSERT INTO `lvyecms_custom_data` VALUES ('7', '微信公众号二维码 大小：425*425', '1491363418', 'downfile', '/d/file/content/2017/04/58e46656a9d73.png');
INSERT INTO `lvyecms_custom_data` VALUES ('8', '标题小图标，只能上传 ico 文件 大小：32*32', '1491365232', 'downfile', '/d/file/content/2017/04/58e46d2578ef6.ico');

-- ----------------------------
-- Table structure for `lvyecms_guanlituandui`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_guanlituandui`;
CREATE TABLE `lvyecms_guanlituandui` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lvyecms_guanlituandui
-- ----------------------------
INSERT INTO `lvyecms_guanlituandui` VALUES ('1', '17', 'Bless', '', '/d/file/content/2017/03/thumb_58db923fb0936.jpg', '', '', '0', '/index.php?a=shows&catid=17&id=1', '0', '99', '1', 'admin', '1490784840', '1490784840', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `lvyecms_guanlituandui_data`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_guanlituandui_data`;
CREATE TABLE `lvyecms_guanlituandui_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8_unicode_ci,
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lvyecms_guanlituandui_data
-- ----------------------------
INSERT INTO `lvyecms_guanlituandui_data` VALUES ('1', '恩恩恩', '', '0', '0');

-- ----------------------------
-- Table structure for `lvyecms_index_banner`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_index_banner`;
CREATE TABLE `lvyecms_index_banner` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lvyecms_index_banner
-- ----------------------------
INSERT INTO `lvyecms_index_banner` VALUES ('1', '1', '轮播图1', '', '', '', '', '0', '/index.php?a=shows&catid=1&id=1', '0', '99', '1', 'admin', '1490683979', '1490683320', '0', '0', '0', '0', '0', '0');
INSERT INTO `lvyecms_index_banner` VALUES ('2', '1', '轮播2', '', '', '', '', '0', '/index.php?a=shows&catid=1&id=2', '0', '99', '1', 'admin', '1490684013', '1490684013', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `lvyecms_index_banner_data`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_index_banner_data`;
CREATE TABLE `lvyecms_index_banner_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `golink` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `showimage` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lvyecms_index_banner_data
-- ----------------------------
INSERT INTO `lvyecms_index_banner_data` VALUES ('1', '', '0', '0', 'http://127.0.0.5/', '/d/file/content/2017/03/thumb_58da08436ce30.jpg');
INSERT INTO `lvyecms_index_banner_data` VALUES ('2', '', '0', '0', 'https://www.baidu.com/', '/d/file/content/2017/03/thumb_58da086b004b9.jpg');

-- ----------------------------
-- Table structure for `lvyecms_jiejuefangan`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_jiejuefangan`;
CREATE TABLE `lvyecms_jiejuefangan` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lvyecms_jiejuefangan
-- ----------------------------
INSERT INTO `lvyecms_jiejuefangan` VALUES ('1', '6', '银行', '', '/d/file/content/2017/03/thumb_58da658b4ad19.jpg', '', '', '银行大数据时代面临的挑战：1、银行离客户越来越远。在互联网交易链条中，银行所占比重越来越低，这使得银行越来越难以知道客户的消费行为；互联网金融的出现，在未来可能会超过以银行为中心的间接融资和以交易所为', '0', '/index.php?a=shows&catid=6&id=1', '0', '99', '1', 'admin', '1490707858', '1490707858', '2', '0', '2', '2', '2', '1490708441');

-- ----------------------------
-- Table structure for `lvyecms_jiejuefangan_data`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_jiejuefangan_data`;
CREATE TABLE `lvyecms_jiejuefangan_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8_unicode_ci,
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lvyecms_jiejuefangan_data
-- ----------------------------
INSERT INTO `lvyecms_jiejuefangan_data` VALUES ('1', '百分点银行大数据解决方案的价值\r\n1、为银行建立用户数据中心，让银行更深入的了解用户，帮助银行实现以用户为中心的战略转型。\r\n2、通过完善的大数据平台和针对性的大数据业务应用，提升银行用户体验，拉动银行收入，以及更有效的控制银行风险。\r\n3、基于百分点大数据解决方案，持续积累数据资产，通过大数据构建银行自身的核心竞争力，积极应对互联网金融时代的挑战。', '', '0', '0', '|2,2|2,2|2,1');

-- ----------------------------
-- Table structure for `lvyecms_locking`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_locking`;
CREATE TABLE `lvyecms_locking` (
  `userid` int(11) NOT NULL COMMENT '用户ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `catid` smallint(5) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `id` mediumint(8) NOT NULL DEFAULT '0' COMMENT '信息ID',
  `locktime` int(10) NOT NULL DEFAULT '0' COMMENT '锁定时间',
  KEY `userid` (`userid`),
  KEY `onlinetime` (`locktime`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='信息锁定';

-- ----------------------------
-- Records of lvyecms_locking
-- ----------------------------

-- ----------------------------
-- Table structure for `lvyecms_loginlog`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_loginlog`;
CREATE TABLE `lvyecms_loginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `username` char(30) NOT NULL DEFAULT '' COMMENT '登录帐号',
  `logintime` int(10) NOT NULL DEFAULT '0' COMMENT '登录时间戳',
  `loginip` char(20) NOT NULL DEFAULT '' COMMENT '登录IP',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,1为登录成功，0为登录失败',
  `password` varchar(30) NOT NULL DEFAULT '' COMMENT '尝试错误密码',
  `info` varchar(255) NOT NULL DEFAULT '' COMMENT '其他说明',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='后台登陆日志表';

-- ----------------------------
-- Records of lvyecms_loginlog
-- ----------------------------
INSERT INTO `lvyecms_loginlog` VALUES ('1', 'admin', '1490675585', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `lvyecms_loginlog` VALUES ('2', 'admin', '1490842870', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `lvyecms_loginlog` VALUES ('3', 'admin', '1490843009', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `lvyecms_loginlog` VALUES ('4', 'admin', '1491018774', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `lvyecms_loginlog` VALUES ('5', 'admin', '1491361544', '192.168.1.17', '1', '密码保密', '用户名登录');
INSERT INTO `lvyecms_loginlog` VALUES ('6', 'admin', '1491361689', '0.0.0.0', '1', '密码保密', '用户名登录');

-- ----------------------------
-- Table structure for `lvyecms_menu`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_menu`;
CREATE TABLE `lvyecms_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '上级菜单',
  `app` char(20) NOT NULL DEFAULT '' COMMENT '应用标识',
  `controller` char(20) NOT NULL DEFAULT '' COMMENT '控制键',
  `action` char(20) NOT NULL DEFAULT '' COMMENT '方法',
  `parameter` char(255) NOT NULL DEFAULT '' COMMENT '附加参数',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of lvyecms_menu
-- ----------------------------
INSERT INTO `lvyecms_menu` VALUES ('1', '缓存更新', '0', 'Admin', 'Index', 'cache', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('2', '我的面板', '0', 'Admin', 'Config', 'index', '', '0', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('3', '设置', '0', 'Admin', 'Config', 'index', '', '0', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('4', '个人信息', '2', 'Admin', 'Adminmanage', 'myinfo', '', '0', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('5', '修改个人信息', '4', 'Admin', 'Adminmanage', 'myinfo', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('6', '修改密码', '4', 'Admin', 'Adminmanage', 'chanpass', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('7', '系统设置', '3', 'Admin', 'Config', 'index', '', '0', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('8', '站点配置', '7', 'Admin', 'Config', 'index', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('9', '邮箱配置', '8', 'Admin', 'Config', 'mail', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('10', '附件配置', '8', 'Admin', 'Config', 'attach', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('11', '高级配置', '8', 'Admin', 'Config', 'addition', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('12', '扩展配置', '8', 'Admin', 'Config', 'extend', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('13', '行为管理', '7', 'Admin', 'Behavior', 'index', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('14', '行为日志', '13', 'Admin', 'Behavior', 'logs', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('15', '编辑行为', '13', 'Admin', 'Behavior', 'edit', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('16', '删除行为', '13', 'Admin', 'Behavior', 'delete', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('17', '后台菜单管理', '7', 'Admin', 'Menu', 'index', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('18', '添加菜单', '17', 'Admin', 'Menu', 'add', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('19', '修改', '17', 'Admin', 'Menu', 'edit', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('20', '删除', '17', 'Admin', 'Menu', 'delete', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('21', '管理员设置', '3', 'Admin', 'Management', 'index', '', '0', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('22', '管理员管理', '21', 'Admin', 'Management', 'manager', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('23', '添加管理员', '22', 'Admin', 'Management', 'adminadd', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('24', '编辑管理信息', '22', 'Admin', 'Management', 'edit', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('25', '删除管理员', '22', 'Admin', 'Management', 'delete', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('26', '角色管理', '21', 'Admin', 'Rbac', 'rolemanage', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('27', '添加角色', '26', 'Admin', 'Rbac', 'roleadd', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('28', '删除角色', '26', 'Admin', 'Rbac', 'roledelete', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('29', '角色编辑', '26', 'Admin', 'Rbac', 'roleedit', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('30', '角色授权', '26', 'Admin', 'Rbac', 'authorize', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('31', '日志管理', '3', 'Admin', 'Logs', 'index', '', '0', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('32', '后台登陆日志', '31', 'Admin', 'Logs', 'loginlog', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('33', '后台操作日志', '31', 'Admin', 'Logs', 'index', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('34', '删除一个月前的登陆日志', '32', 'Admin', 'Logs', 'deleteloginlog', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('35', '删除一个月前的操作日志', '33', 'Admin', 'Logs', 'deletelog', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('36', '添加行为', '13', 'Admin', 'Behavior', 'add', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('37', '模块', '0', 'Admin', 'Module', 'index', '', '0', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('42', '本地模块管理', '37', 'Admin', 'Module', 'local', '', '0', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('43', '模块管理', '42', 'Admin', 'Module', 'index', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('44', '内容', '0', 'Content', 'Index', 'index', '', '0', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('45', '内容管理', '44', 'Content', 'Content', 'index', '', '0', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('46', '内容相关设置', '44', 'Content', 'Category', 'index', '', '0', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('47', '栏目列表', '46', 'Content', 'Category', 'index', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('48', '添加栏目', '47', 'Content', 'Category', 'add', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('49', '添加单页', '47', 'Content', 'Category', 'singlepage', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('50', '添加外部链接栏目', '47', 'Content', 'Category', 'wadd', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('51', '编辑栏目', '47', 'Content', 'Category', 'edit', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('52', '删除栏目', '47', 'Content', 'Category', 'delete', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('53', '栏目属性转换', '47', 'Content', 'Category', 'categoryshux', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('54', '模型管理', '46', 'Content', 'Models', 'index', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('55', '创建新模型', '54', 'Content', 'Models', 'add', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('56', '删除模型', '54', 'Content', 'Models', 'delete', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('57', '编辑模型', '54', 'Content', 'Models', 'edit', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('58', '模型禁用', '54', 'Content', 'Models', 'disabled', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('59', '模型导入', '54', 'Content', 'Models', 'import', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('60', '字段管理', '54', 'Content', 'Field', 'index', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('61', '字段修改', '60', 'Content', 'Field', 'edit', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('62', '字段删除', '60', 'Content', 'Field', 'delete', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('63', '字段状态', '60', 'Content', 'Field', 'disabled', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('64', '模型预览', '60', 'Content', 'Field', 'priview', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('65', '管理内容', '45', 'Content', 'Content', 'index', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('66', '附件管理', '45', 'Attachment', 'Atadmin', 'index', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('67', '删除', '66', 'Attachment', 'Atadmin', 'delete', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('68', '发布管理', '44', 'Content', 'Createhtml', 'index', '', '0', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('69', '批量更新栏目页', '68', 'Content', 'Createhtml', 'category', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('70', '生成首页', '68', 'Content', 'Createhtml', 'index', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('71', '批量更新URL', '68', 'Content', 'Createhtml', 'update_urls', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('72', '批量更新内容页', '68', 'Content', 'Createhtml', 'update_show', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('73', '刷新自定义页面', '68', 'Template', 'Custompage', 'createhtml', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('74', 'URL规则管理', '46', 'Content', 'Urlrule', 'index', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('75', '添加规则', '74', 'Content', 'Urlrule', 'add', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('76', '编辑', '74', 'Content', 'Urlrule', 'edit', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('77', '删除', '74', 'Content', 'Urlrule', 'delete', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('78', '推荐位管理', '46', 'Content', 'Position', 'index', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('79', '信息管理', '78', 'Content', 'Position', 'item', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('80', '添加推荐位', '78', 'Content', 'Position', 'add', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('81', '修改推荐位', '78', 'Content', 'Position', 'edit', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('82', '删除推荐位', '78', 'Content', 'Position', 'delete', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('83', '信息编辑', '79', 'Content', 'Position', 'item_manage', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('84', '信息排序', '79', 'Content', 'Position', 'item_listorder', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('85', '数据重建', '78', 'Content', 'Position', 'rebuilding', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('86', 'Tags管理', '45', 'Content', 'Tags', 'index', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('87', '修改', '86', 'Content', 'Tags', 'edit', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('88', '删除', '86', 'Content', 'Tags', 'delete', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('89', 'Tags数据重建', '86', 'Content', 'Tags', 'create', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('90', '界面', '0', 'Template', 'Style', 'index', '', '0', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('91', '模板管理', '90', 'Template', 'Style', 'index', '', '0', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('92', '模板风格', '91', 'Template', 'Style', 'index', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('93', '添加模板页', '92', 'Template', 'Style', 'add', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('94', '删除模板', '92', 'Template', 'Style', 'delete', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('95', '修改模板', '92', 'Template', 'Style', 'edit', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('96', '主题管理', '91', 'Template', 'Theme', 'index', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('97', '主题更换', '96', 'Template', 'Theme', 'chose', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('98', '自定义页面', '90', 'Template', 'Custompage', 'index', '', '0', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('99', '自定义页面', '98', 'Template', 'Custompage', 'index', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('100', '添加自定义页面', '99', 'Template', 'Custompage', 'add', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('101', '删除自定义页面', '99', 'Template', 'Custompage', 'delete', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('102', '编辑自定义页面', '99', 'Template', 'Custompage', 'edit', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('103', '自定义列表', '98', 'Template', 'Customlist', 'index', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('104', '添加列表', '103', 'Template', 'Customlist', 'add', '', '1', '1', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('105', '删除列表', '103', 'Template', 'Customlist', 'delete', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('106', '编辑列表', '103', 'Template', 'Customlist', 'edit', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('107', '生成列表', '103', 'Template', 'Customlist', 'generate', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('108', '安装模块', '39', 'Admin', 'Moduleshop', 'install', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('109', '升级模块', '39', 'Admin', 'Moduleshop', 'upgrade', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('110', '安装插件', '40', 'Admin', 'Addonshop', 'install', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('111', '升级插件', '40', 'Admin', 'Addonshop', 'upgrade', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('112', '栏目授权', '26', 'Admin', 'Rbac', 'setting_cat_priv', '', '1', '0', '', '0');
INSERT INTO `lvyecms_menu` VALUES ('114', '自定义资料', '45', 'CustomData', 'Index', 'index', '', '1', '1', '自定义资料管理！', '0');

-- ----------------------------
-- Table structure for `lvyecms_model`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_model`;
CREATE TABLE `lvyecms_model` (
  `modelid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL DEFAULT '' COMMENT '模型名称',
  `description` char(100) NOT NULL DEFAULT '' COMMENT '描述',
  `tablename` char(20) NOT NULL DEFAULT '' COMMENT '表名',
  `setting` text COMMENT '配置信息',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `items` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '信息数',
  `enablesearch` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启全站搜索',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用 1禁用',
  `default_style` char(30) NOT NULL DEFAULT '' COMMENT '风格',
  `category_template` char(30) NOT NULL DEFAULT '' COMMENT '栏目模板',
  `list_template` char(30) NOT NULL DEFAULT '' COMMENT '列表模板',
  `show_template` char(30) NOT NULL DEFAULT '' COMMENT '内容模板',
  `js_template` varchar(30) NOT NULL DEFAULT '' COMMENT 'JS模板',
  `sort` tinyint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '模块标识',
  PRIMARY KEY (`modelid`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='内容模型列表';

-- ----------------------------
-- Records of lvyecms_model
-- ----------------------------
INSERT INTO `lvyecms_model` VALUES ('1', '首页轮播图', '', 'index_banner', '', '1490677171', '0', '0', '0', '', '', '', '', '', '0', '0');
INSERT INTO `lvyecms_model` VALUES ('2', '产品列表', '', 'chanpinlist', '', '1490691666', '0', '0', '0', '', '', '', '', '', '0', '0');
INSERT INTO `lvyecms_model` VALUES ('3', '解决方案', '', 'jiejuefangan', '', '1490707229', '0', '0', '0', '', '', '', '', '', '0', '0');
INSERT INTO `lvyecms_model` VALUES ('4', '案例', '', 'anli', '', '1490770885', '0', '0', '0', '', '', '', '', '', '0', '0');
INSERT INTO `lvyecms_model` VALUES ('5', '资讯', '', 'zixun', '', '1490781236', '0', '0', '0', '', '', '', '', '', '0', '0');
INSERT INTO `lvyecms_model` VALUES ('6', '管理团队', '', 'guanlituandui', '', '1490784142', '0', '0', '0', '', '', '', '', '', '0', '0');
INSERT INTO `lvyecms_model` VALUES ('7', '资料', '', 'ziliao', '', '1490795985', '0', '0', '0', '', '', '', '', '', '0', '0');

-- ----------------------------
-- Table structure for `lvyecms_model_field`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_model_field`;
CREATE TABLE `lvyecms_model_field` (
  `fieldid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `field` varchar(20) NOT NULL DEFAULT '' COMMENT '字段名',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '别名',
  `tips` text COMMENT '字段提示',
  `css` varchar(30) NOT NULL DEFAULT '' COMMENT '表单样式',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最小值',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大值',
  `pattern` varchar(255) NOT NULL DEFAULT '' COMMENT '数据校验正则',
  `errortips` varchar(255) NOT NULL DEFAULT '' COMMENT '数据校验未通过的提示信息',
  `formtype` varchar(20) NOT NULL DEFAULT '' COMMENT '字段类型',
  `setting` mediumtext,
  `formattribute` varchar(255) NOT NULL DEFAULT '',
  `unsetgroupids` varchar(255) NOT NULL DEFAULT '',
  `unsetroleids` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否内部字段 1是',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否系统字段 1 是',
  `isunique` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '值唯一',
  `isbase` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为基本信息',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为搜索条件',
  `isadd` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '在前台投稿中显示',
  `isfulltext` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为全站搜索信息',
  `isposition` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否入库到推荐位',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 禁用 0启用',
  `isomnipotent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  KEY `modelid` (`modelid`,`disabled`),
  KEY `field` (`field`,`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='模型字段列表';

-- ----------------------------
-- Records of lvyecms_model_field
-- ----------------------------
INSERT INTO `lvyecms_model_field` VALUES ('1', '1', 'status', '状态', '', '', '0', '2', '', '', 'box', 'a:8:{s:7:\"options\";s:0:\"\";s:9:\"fieldtype\";s:7:\"varchar\";s:5:\"width\";s:0:\"\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"outputtype\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('2', '1', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('4', '1', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('5', '1', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('27', '2', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('7', '1', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('8', '1', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('9', '1', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('10', '1', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('21', '1', 'golink', '转向链接', '点击跳转的链接', '', '1', '100', '', '', 'text', 'a:7:{s:4:\"size\";s:3:\"400\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '0', '0', '19', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('23', '2', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('24', '2', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('26', '2', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('12', '1', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('13', '1', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('15', '1', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('16', '1', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('17', '1', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('19', '1', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:5:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('22', '1', 'showimage', '展示图片', '图片大小为：1920*699', '', '1', '0', '', '', 'image', 'a:12:{s:5:\"width\";s:3:\"400\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"0\";s:15:\"upload_allowext\";s:20:\"gif|jpg|jpeg|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:4:\"1920\";s:13:\"images_height\";s:3:\"699\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '0', '0', '20', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('90', '5', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('29', '2', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('30', '2', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('31', '2', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('32', '2', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('33', '2', 'relation', '客户案例', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关文章\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('34', '2', 'thumb', '图标', '大小为：37*37', '', '0', '100', '', '', 'image', 'a:10:{s:5:\"width\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('35', '2', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('36', '2', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('37', '2', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('38', '2', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('39', '2', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('40', '2', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('41', '2', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('42', '2', 'superiority', '产品优势', '', '', '0', '0', '', '内容不能为空', 'markdown', 'a:5:{s:12:\"defaultvalue\";s:0:\"\";s:6:\"height\";s:3:\"640\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '6', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('86', '5', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('87', '5', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('106', '6', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('89', '5', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('44', '2', 'feature', '产品功能', '', '', '0', '0', '', '', 'markdown', 'a:7:{s:12:\"defaultvalue\";s:0:\"\";s:6:\"height\";s:3:\"640\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '7', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('45', '2', 'applicationscene', '应用场景', '', '', '0', '0', '', '', 'markdown', 'a:7:{s:12:\"defaultvalue\";s:0:\"\";s:6:\"height\";s:3:\"640\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '8', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('46', '3', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('47', '3', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('66', '4', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('49', '3', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('50', '3', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('67', '4', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('52', '3', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('53', '3', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('54', '3', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('55', '3', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('56', '3', 'relation', '客户案例', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关文章\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('57', '3', 'thumb', '缩略图', '图片大小：280*344', '', '0', '100', '', '', 'image', 'a:10:{s:5:\"width\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:3:\"280\";s:13:\"images_height\";s:3:\"344\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('58', '3', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('60', '3', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('61', '3', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('62', '3', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('63', '3', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('64', '3', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('65', '3', 'content', '内容', '', '', '0', '0', '', '内容不能为空', 'markdown', 'a:5:{s:12:\"defaultvalue\";s:0:\"\";s:6:\"height\";s:3:\"640\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '6', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('69', '4', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('70', '4', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('72', '4', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('73', '4', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('74', '4', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('75', '4', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('107', '6', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('92', '5', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('93', '5', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('94', '5', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('77', '4', 'thumb', '缩略图', '图片大小：529*348', '', '0', '100', '', '', 'image', 'a:10:{s:5:\"width\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:3:\"529\";s:13:\"images_height\";s:3:\"348\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('78', '4', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('110', '6', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('80', '4', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('81', '4', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('82', '4', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('83', '4', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('84', '4', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('85', '4', 'content', '内容', '', '', '0', '0', '', '内容不能为空', 'markdown', 'a:5:{s:12:\"defaultvalue\";s:0:\"\";s:6:\"height\";s:3:\"640\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '6', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('95', '5', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('127', '7', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('112', '6', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('126', '7', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('109', '6', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('97', '5', 'thumb', '缩略图', '图片大小：389*235', '', '0', '100', '', '', 'image', 'a:10:{s:5:\"width\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:3:\"389\";s:13:\"images_height\";s:3:\"235\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('98', '5', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('100', '5', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('101', '5', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('102', '5', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('103', '5', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('104', '5', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('105', '5', 'content', '内容', '', '', '0', '0', '', '内容不能为空', 'markdown', 'a:5:{s:12:\"defaultvalue\";s:0:\"\";s:6:\"height\";s:3:\"640\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '6', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('113', '6', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('114', '6', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('115', '6', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('132', '7', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('146', '7', 'wenjian', '文件', '', '', '0', '0', '', '', 'downfile', 'a:11:{s:5:\"width\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:15:\"upload_allowext\";s:20:\"gif|jpg|jpeg|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:10:\"statistics\";s:0:\"\";s:12:\"downloadlink\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '0', '0', '19', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('129', '7', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('130', '7', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('117', '6', 'thumb', '头像', '图片大小：216*265', '', '0', '100', '', '', 'image', 'a:10:{s:5:\"width\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:3:\"216\";s:13:\"images_height\";s:3:\"265\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('118', '6', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('120', '6', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('121', '6', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('122', '6', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('124', '6', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('125', '6', 'content', '介绍信息', '', '', '0', '0', '', '内容不能为空', 'markdown', 'a:5:{s:12:\"defaultvalue\";s:0:\"\";s:6:\"height\";s:3:\"640\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '6', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('133', '7', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('134', '7', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('135', '7', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('137', '7', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('138', '7', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('140', '7', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('141', '7', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('142', '7', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '1', '0');
INSERT INTO `lvyecms_model_field` VALUES ('143', '7', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `lvyecms_model_field` VALUES ('144', '7', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');

-- ----------------------------
-- Table structure for `lvyecms_module`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_module`;
CREATE TABLE `lvyecms_module` (
  `module` varchar(15) NOT NULL COMMENT '模块',
  `modulename` varchar(20) NOT NULL DEFAULT '' COMMENT '模块名称',
  `sign` varchar(255) NOT NULL DEFAULT '' COMMENT '签名',
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '内置模块',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否可用',
  `version` varchar(50) NOT NULL DEFAULT '' COMMENT '版本',
  `setting` mediumtext COMMENT '设置信息',
  `installtime` int(10) NOT NULL DEFAULT '0' COMMENT '安装时间',
  `updatetime` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`module`),
  KEY `sign` (`sign`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='已安装模块列表';

-- ----------------------------
-- Records of lvyecms_module
-- ----------------------------
INSERT INTO `lvyecms_module` VALUES ('CustomData', '自定义资料', 'b05344b0b2eecaa55328c00aeb5fd361', '0', '1', '1.0.4', '', '1490676831', '1490676831', '0');

-- ----------------------------
-- Table structure for `lvyecms_operationlog`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_operationlog`;
CREATE TABLE `lvyecms_operationlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `uid` smallint(6) NOT NULL DEFAULT '0' COMMENT '操作帐号ID',
  `time` int(10) NOT NULL DEFAULT '0' COMMENT '操作时间',
  `ip` char(20) NOT NULL DEFAULT '' COMMENT 'IP',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,0错误提示，1为正确提示',
  `info` text COMMENT '其他说明',
  `get` varchar(255) NOT NULL DEFAULT '' COMMENT 'get数据',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `username` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=347 DEFAULT CHARSET=utf8 COMMENT='后台操作日志表';

-- ----------------------------
-- Records of lvyecms_operationlog
-- ----------------------------
INSERT INTO `lvyecms_operationlog` VALUES ('1', '0', '1490675568', '127.0.0.1', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://127.0.0.5/admin.php?m=Public&a=login');
INSERT INTO `lvyecms_operationlog` VALUES ('2', '0', '1490675576', '127.0.0.1', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://127.0.0.5/admin.php?m=Public&a=login');
INSERT INTO `lvyecms_operationlog` VALUES ('3', '1', '1490676831', '127.0.0.1', '1', '提示语：模块安装成功！<br/>模块：Admin,控制器：Module,方法：install<br/>请求方式：Ajax', 'http://127.0.0.5/admin.php?m=Module&a=install&module=CustomData');
INSERT INTO `lvyecms_operationlog` VALUES ('4', '1', '1490677171', '127.0.0.1', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Models&a=add&menuid=54');
INSERT INTO `lvyecms_operationlog` VALUES ('5', '1', '1490677454', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=add&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('6', '1', '1490677519', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('7', '1', '1490677523', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('8', '1', '1490677533', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('9', '1', '1490677543', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('10', '1', '1490677548', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('11', '1', '1490677624', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('12', '1', '1490677628', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('13', '1', '1490677634', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('14', '1', '1490677701', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('15', '1', '1490677737', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=edit&fieldid=3&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('16', '1', '1490679710', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('17', '1', '1490679786', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=add&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('18', '1', '1490679797', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('19', '1', '1490679841', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('20', '1', '1490679846', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('21', '1', '1490679867', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('22', '1', '1490682456', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('23', '1', '1490682461', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('24', '1', '1490682466', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('25', '1', '1490682510', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=edit&fieldid=19&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('26', '1', '1490682599', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('27', '1', '1490682635', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('28', '1', '1490682645', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('29', '1', '1490682784', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=edit&fieldid=1&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('30', '1', '1490682801', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Field,方法：listorder<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('31', '1', '1490682814', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=edit&fieldid=21&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('32', '1', '1490682836', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=edit&fieldid=21&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('33', '1', '1490683137', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=add&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('34', '1', '1490683149', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Field,方法：listorder<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('35', '1', '1490683195', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('36', '1', '1490683210', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('37', '1', '1490683979', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Content&a=add&catid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('38', '1', '1490684013', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Content&a=add&catid=1');
INSERT INTO `lvyecms_operationlog` VALUES ('39', '1', '1490684591', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('40', '1', '1490684592', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site');
INSERT INTO `lvyecms_operationlog` VALUES ('41', '1', '1490684594', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `lvyecms_operationlog` VALUES ('42', '1', '1490684599', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `lvyecms_operationlog` VALUES ('43', '1', '1490684600', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=1');
INSERT INTO `lvyecms_operationlog` VALUES ('44', '1', '1490684600', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=2');
INSERT INTO `lvyecms_operationlog` VALUES ('45', '1', '1490684602', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=3');
INSERT INTO `lvyecms_operationlog` VALUES ('46', '1', '1490684602', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=4');
INSERT INTO `lvyecms_operationlog` VALUES ('47', '1', '1490684603', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=5');
INSERT INTO `lvyecms_operationlog` VALUES ('48', '1', '1490684604', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=6');
INSERT INTO `lvyecms_operationlog` VALUES ('49', '1', '1490684604', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=7');
INSERT INTO `lvyecms_operationlog` VALUES ('50', '1', '1490684605', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=8');
INSERT INTO `lvyecms_operationlog` VALUES ('51', '1', '1490684606', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=9');
INSERT INTO `lvyecms_operationlog` VALUES ('52', '1', '1490691306', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('53', '1', '1490691397', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('54', '1', '1490691422', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('55', '1', '1490691437', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('56', '1', '1490691454', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('57', '1', '1490691465', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('58', '1', '1490691478', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('59', '1', '1490691484', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('60', '1', '1490691504', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('61', '1', '1490691520', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('62', '1', '1490691531', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('63', '1', '1490691548', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('64', '1', '1490691667', '127.0.0.1', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Models&a=add&menuid=54');
INSERT INTO `lvyecms_operationlog` VALUES ('65', '1', '1490691706', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=edit&fieldid=33&modelid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('66', '1', '1490691790', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('67', '1', '1490691870', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=edit&fieldid=42&modelid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('68', '1', '1490691889', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=edit&fieldid=42&modelid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('69', '1', '1490691906', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('70', '1', '1490691918', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('71', '1', '1490691930', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('72', '1', '1490692052', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=edit&fieldid=34&modelid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('73', '1', '1490692077', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('74', '1', '1490692222', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=add&modelid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('75', '1', '1490692252', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Field,方法：listorder<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('76', '1', '1490692272', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Field,方法：listorder<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('77', '1', '1490692335', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=edit&fieldid=42&modelid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('78', '1', '1490692403', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=add&modelid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('79', '1', '1490692423', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Field,方法：listorder<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('80', '1', '1490692469', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=add&modelid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('81', '1', '1490692492', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Field,方法：listorder<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('82', '1', '1490693744', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=add&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('83', '1', '1490693855', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=add&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('84', '1', '1490693893', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=add&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('85', '1', '1490693910', '127.0.0.1', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Category&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('86', '1', '1490693919', '127.0.0.1', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Category&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('87', '1', '1490694198', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=3');
INSERT INTO `lvyecms_operationlog` VALUES ('88', '1', '1490694387', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=4');
INSERT INTO `lvyecms_operationlog` VALUES ('89', '1', '1490694535', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=5');
INSERT INTO `lvyecms_operationlog` VALUES ('90', '1', '1490694706', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=3');
INSERT INTO `lvyecms_operationlog` VALUES ('91', '1', '1490694778', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=3');
INSERT INTO `lvyecms_operationlog` VALUES ('92', '1', '1490694854', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=4');
INSERT INTO `lvyecms_operationlog` VALUES ('93', '1', '1490694910', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=5');
INSERT INTO `lvyecms_operationlog` VALUES ('94', '1', '1490696172', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Content&a=add&catid=3');
INSERT INTO `lvyecms_operationlog` VALUES ('95', '1', '1490696394', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('96', '1', '1490696396', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site');
INSERT INTO `lvyecms_operationlog` VALUES ('97', '1', '1490696397', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `lvyecms_operationlog` VALUES ('98', '1', '1490696402', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `lvyecms_operationlog` VALUES ('99', '1', '1490696403', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=1');
INSERT INTO `lvyecms_operationlog` VALUES ('100', '1', '1490696404', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=2');
INSERT INTO `lvyecms_operationlog` VALUES ('101', '1', '1490696405', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=3');
INSERT INTO `lvyecms_operationlog` VALUES ('102', '1', '1490696406', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=4');
INSERT INTO `lvyecms_operationlog` VALUES ('103', '1', '1490696406', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=5');
INSERT INTO `lvyecms_operationlog` VALUES ('104', '1', '1490696407', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=6');
INSERT INTO `lvyecms_operationlog` VALUES ('105', '1', '1490696408', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=7');
INSERT INTO `lvyecms_operationlog` VALUES ('106', '1', '1490696408', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=8');
INSERT INTO `lvyecms_operationlog` VALUES ('107', '1', '1490696409', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=9');
INSERT INTO `lvyecms_operationlog` VALUES ('108', '1', '1490696517', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=edit&fieldid=34&modelid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('109', '1', '1490696536', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Content&a=edit&catid=3&id=1');
INSERT INTO `lvyecms_operationlog` VALUES ('110', '1', '1490697072', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('111', '1', '1490697149', '127.0.0.1', '1', '提示语：保存成功！<br/>模块：Template,控制器：Style,方法：edit<br/>请求方式：POST', 'http://127.0.0.5/index.php?g=Template&m=Style&a=edit&dir=Default-Content-Page-&file=chanpin.php');
INSERT INTO `lvyecms_operationlog` VALUES ('112', '1', '1490697195', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('113', '1', '1490698150', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('114', '1', '1490698248', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('115', '1', '1490700773', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Content&a=add&catid=3');
INSERT INTO `lvyecms_operationlog` VALUES ('116', '1', '1490700829', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Content&a=edit&catid=3&id=2');
INSERT INTO `lvyecms_operationlog` VALUES ('117', '1', '1490700974', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=3');
INSERT INTO `lvyecms_operationlog` VALUES ('118', '1', '1490700985', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=4');
INSERT INTO `lvyecms_operationlog` VALUES ('119', '1', '1490700993', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=5');
INSERT INTO `lvyecms_operationlog` VALUES ('120', '1', '1490701363', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Content&a=edit&catid=3&id=2');
INSERT INTO `lvyecms_operationlog` VALUES ('121', '1', '1490705562', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Content&a=edit&catid=3&id=2');
INSERT INTO `lvyecms_operationlog` VALUES ('122', '1', '1490707229', '127.0.0.1', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Models&a=add&menuid=54');
INSERT INTO `lvyecms_operationlog` VALUES ('123', '1', '1490707265', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=3');
INSERT INTO `lvyecms_operationlog` VALUES ('124', '1', '1490707280', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=3');
INSERT INTO `lvyecms_operationlog` VALUES ('125', '1', '1490707303', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=edit&fieldid=65&modelid=3');
INSERT INTO `lvyecms_operationlog` VALUES ('126', '1', '1490707378', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=edit&fieldid=57&modelid=3');
INSERT INTO `lvyecms_operationlog` VALUES ('127', '1', '1490707428', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=edit&fieldid=56&modelid=3');
INSERT INTO `lvyecms_operationlog` VALUES ('128', '1', '1490707439', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=3');
INSERT INTO `lvyecms_operationlog` VALUES ('129', '1', '1490707444', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=3');
INSERT INTO `lvyecms_operationlog` VALUES ('130', '1', '1490707454', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=3');
INSERT INTO `lvyecms_operationlog` VALUES ('131', '1', '1490707464', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=3');
INSERT INTO `lvyecms_operationlog` VALUES ('132', '1', '1490707478', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=3');
INSERT INTO `lvyecms_operationlog` VALUES ('133', '1', '1490707620', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=add&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('134', '1', '1490707788', '127.0.0.1', '0', '提示语：缺少参数！<br/>模块：Content,控制器：Content,方法：public_relationlist<br/>请求方式：GET', 'http://127.0.0.5/index.php?a=public_relationlist&m=Content&g=Content&modelid=3');
INSERT INTO `lvyecms_operationlog` VALUES ('135', '1', '1490707858', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Content&a=add&catid=6');
INSERT INTO `lvyecms_operationlog` VALUES ('136', '1', '1490707991', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=6');
INSERT INTO `lvyecms_operationlog` VALUES ('137', '1', '1490708071', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('138', '1', '1490708606', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=6');
INSERT INTO `lvyecms_operationlog` VALUES ('139', '1', '1490708941', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Content&a=edit&catid=6&id=1');
INSERT INTO `lvyecms_operationlog` VALUES ('140', '1', '1490709040', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('141', '1', '1490709042', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site');
INSERT INTO `lvyecms_operationlog` VALUES ('142', '1', '1490709044', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `lvyecms_operationlog` VALUES ('143', '1', '1490709049', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `lvyecms_operationlog` VALUES ('144', '1', '1490709050', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=1');
INSERT INTO `lvyecms_operationlog` VALUES ('145', '1', '1490709051', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=2');
INSERT INTO `lvyecms_operationlog` VALUES ('146', '1', '1490709053', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=3');
INSERT INTO `lvyecms_operationlog` VALUES ('147', '1', '1490709054', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=4');
INSERT INTO `lvyecms_operationlog` VALUES ('148', '1', '1490709055', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=5');
INSERT INTO `lvyecms_operationlog` VALUES ('149', '1', '1490709056', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=6');
INSERT INTO `lvyecms_operationlog` VALUES ('150', '1', '1490709057', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=7');
INSERT INTO `lvyecms_operationlog` VALUES ('151', '1', '1490709057', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=8');
INSERT INTO `lvyecms_operationlog` VALUES ('152', '1', '1490709058', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=9');
INSERT INTO `lvyecms_operationlog` VALUES ('153', '1', '1490709087', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Content&a=edit&catid=6&id=1');
INSERT INTO `lvyecms_operationlog` VALUES ('154', '1', '1490770885', '127.0.0.1', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Models&a=add&menuid=54');
INSERT INTO `lvyecms_operationlog` VALUES ('155', '1', '1490770912', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=4');
INSERT INTO `lvyecms_operationlog` VALUES ('156', '1', '1490770924', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=4');
INSERT INTO `lvyecms_operationlog` VALUES ('157', '1', '1490770958', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=edit&fieldid=85&modelid=4');
INSERT INTO `lvyecms_operationlog` VALUES ('158', '1', '1490771017', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=edit&fieldid=77&modelid=4');
INSERT INTO `lvyecms_operationlog` VALUES ('159', '1', '1490771032', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=4');
INSERT INTO `lvyecms_operationlog` VALUES ('160', '1', '1490771089', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=4');
INSERT INTO `lvyecms_operationlog` VALUES ('161', '1', '1490771093', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=4');
INSERT INTO `lvyecms_operationlog` VALUES ('162', '1', '1490771097', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=4');
INSERT INTO `lvyecms_operationlog` VALUES ('163', '1', '1490771117', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=4');
INSERT INTO `lvyecms_operationlog` VALUES ('164', '1', '1490771133', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=4');
INSERT INTO `lvyecms_operationlog` VALUES ('165', '1', '1490771309', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('166', '1', '1490771441', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=add&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('167', '1', '1490771452', '127.0.0.1', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Category');
INSERT INTO `lvyecms_operationlog` VALUES ('168', '1', '1490771494', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=add&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('169', '1', '1490771500', '127.0.0.1', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Category');
INSERT INTO `lvyecms_operationlog` VALUES ('170', '1', '1490771552', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('171', '1', '1490771553', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">8</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Category&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('172', '1', '1490771555', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Category&a=public_cache');
INSERT INTO `lvyecms_operationlog` VALUES ('173', '1', '1490771559', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category');
INSERT INTO `lvyecms_operationlog` VALUES ('174', '1', '1490771560', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">7</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Category');
INSERT INTO `lvyecms_operationlog` VALUES ('175', '1', '1490771561', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Category&a=public_cache');
INSERT INTO `lvyecms_operationlog` VALUES ('176', '1', '1490771571', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category');
INSERT INTO `lvyecms_operationlog` VALUES ('177', '1', '1490771572', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">6</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Category');
INSERT INTO `lvyecms_operationlog` VALUES ('178', '1', '1490771573', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Category&a=public_cache');
INSERT INTO `lvyecms_operationlog` VALUES ('179', '1', '1490771574', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Category&a=public_cache');
INSERT INTO `lvyecms_operationlog` VALUES ('180', '1', '1490771619', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=add&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('181', '1', '1490771648', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=add&parentid=10');
INSERT INTO `lvyecms_operationlog` VALUES ('182', '1', '1490771672', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=add&parentid=10');
INSERT INTO `lvyecms_operationlog` VALUES ('183', '1', '1490772252', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=10');
INSERT INTO `lvyecms_operationlog` VALUES ('184', '1', '1490774739', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=2');
INSERT INTO `lvyecms_operationlog` VALUES ('185', '1', '1490775753', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Content&a=add&catid=11');
INSERT INTO `lvyecms_operationlog` VALUES ('186', '1', '1490775813', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Content&a=edit&catid=11&id=1');
INSERT INTO `lvyecms_operationlog` VALUES ('187', '1', '1490776462', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('188', '1', '1490776463', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site');
INSERT INTO `lvyecms_operationlog` VALUES ('189', '1', '1490776465', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `lvyecms_operationlog` VALUES ('190', '1', '1490776470', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `lvyecms_operationlog` VALUES ('191', '1', '1490776471', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=1');
INSERT INTO `lvyecms_operationlog` VALUES ('192', '1', '1490776471', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=2');
INSERT INTO `lvyecms_operationlog` VALUES ('193', '1', '1490776473', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=3');
INSERT INTO `lvyecms_operationlog` VALUES ('194', '1', '1490776473', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=4');
INSERT INTO `lvyecms_operationlog` VALUES ('195', '1', '1490776474', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=5');
INSERT INTO `lvyecms_operationlog` VALUES ('196', '1', '1490776475', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=6');
INSERT INTO `lvyecms_operationlog` VALUES ('197', '1', '1490776475', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=7');
INSERT INTO `lvyecms_operationlog` VALUES ('198', '1', '1490776476', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=8');
INSERT INTO `lvyecms_operationlog` VALUES ('199', '1', '1490776477', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=9');
INSERT INTO `lvyecms_operationlog` VALUES ('200', '1', '1490776909', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Content&a=add&catid=12');
INSERT INTO `lvyecms_operationlog` VALUES ('201', '1', '1490776928', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('202', '1', '1490776930', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site');
INSERT INTO `lvyecms_operationlog` VALUES ('203', '1', '1490776931', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `lvyecms_operationlog` VALUES ('204', '1', '1490776936', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `lvyecms_operationlog` VALUES ('205', '1', '1490776937', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=1');
INSERT INTO `lvyecms_operationlog` VALUES ('206', '1', '1490776938', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=2');
INSERT INTO `lvyecms_operationlog` VALUES ('207', '1', '1490776939', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=3');
INSERT INTO `lvyecms_operationlog` VALUES ('208', '1', '1490776940', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=4');
INSERT INTO `lvyecms_operationlog` VALUES ('209', '1', '1490776940', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=5');
INSERT INTO `lvyecms_operationlog` VALUES ('210', '1', '1490776941', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=6');
INSERT INTO `lvyecms_operationlog` VALUES ('211', '1', '1490776941', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=7');
INSERT INTO `lvyecms_operationlog` VALUES ('212', '1', '1490776942', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=8');
INSERT INTO `lvyecms_operationlog` VALUES ('213', '1', '1490776943', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=9');
INSERT INTO `lvyecms_operationlog` VALUES ('214', '1', '1490776973', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Content&a=edit&catid=12&id=2');
INSERT INTO `lvyecms_operationlog` VALUES ('215', '1', '1490776990', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('216', '1', '1490778662', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=11');
INSERT INTO `lvyecms_operationlog` VALUES ('217', '1', '1490778670', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=12');
INSERT INTO `lvyecms_operationlog` VALUES ('218', '1', '1490778898', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=11');
INSERT INTO `lvyecms_operationlog` VALUES ('219', '1', '1490778905', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=12');
INSERT INTO `lvyecms_operationlog` VALUES ('220', '1', '1490778983', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Content&a=add&catid=11');
INSERT INTO `lvyecms_operationlog` VALUES ('221', '1', '1490781107', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('222', '1', '1490781236', '127.0.0.1', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Models&a=add&menuid=54');
INSERT INTO `lvyecms_operationlog` VALUES ('223', '1', '1490781250', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=5');
INSERT INTO `lvyecms_operationlog` VALUES ('224', '1', '1490781257', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=5');
INSERT INTO `lvyecms_operationlog` VALUES ('225', '1', '1490781278', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=edit&fieldid=105&modelid=5');
INSERT INTO `lvyecms_operationlog` VALUES ('226', '1', '1490781315', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=edit&fieldid=97&modelid=5');
INSERT INTO `lvyecms_operationlog` VALUES ('227', '1', '1490781335', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=5');
INSERT INTO `lvyecms_operationlog` VALUES ('228', '1', '1490781339', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=5');
INSERT INTO `lvyecms_operationlog` VALUES ('229', '1', '1490781344', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=5');
INSERT INTO `lvyecms_operationlog` VALUES ('230', '1', '1490781350', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=5');
INSERT INTO `lvyecms_operationlog` VALUES ('231', '1', '1490781360', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=5');
INSERT INTO `lvyecms_operationlog` VALUES ('232', '1', '1490781438', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=add&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('233', '1', '1490781460', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Category,方法：index<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category');
INSERT INTO `lvyecms_operationlog` VALUES ('234', '1', '1490781691', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('235', '1', '1490781719', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=13');
INSERT INTO `lvyecms_operationlog` VALUES ('236', '1', '1490781978', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Content&a=add&catid=13');
INSERT INTO `lvyecms_operationlog` VALUES ('237', '1', '1490782437', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=13');
INSERT INTO `lvyecms_operationlog` VALUES ('238', '1', '1490782578', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('239', '1', '1490782762', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('240', '1', '1490782772', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Category,方法：index<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&');
INSERT INTO `lvyecms_operationlog` VALUES ('241', '1', '1490782851', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=singlepage&parentid=14');
INSERT INTO `lvyecms_operationlog` VALUES ('242', '1', '1490782869', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=14');
INSERT INTO `lvyecms_operationlog` VALUES ('243', '1', '1490783317', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=15');
INSERT INTO `lvyecms_operationlog` VALUES ('244', '1', '1490783682', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：CustomData,控制器：Index,方法：add<br/>请求方式：POST', 'http://127.0.0.5/index.php?g=CustomData&a=add');
INSERT INTO `lvyecms_operationlog` VALUES ('245', '1', '1490783773', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=15');
INSERT INTO `lvyecms_operationlog` VALUES ('246', '1', '1490783876', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：CustomData,控制器：Index,方法：add<br/>请求方式：POST', 'http://127.0.0.5/index.php?g=CustomData&a=add');
INSERT INTO `lvyecms_operationlog` VALUES ('247', '1', '1490783904', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=singlepage&parentid=14');
INSERT INTO `lvyecms_operationlog` VALUES ('248', '1', '1490783934', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=16');
INSERT INTO `lvyecms_operationlog` VALUES ('249', '1', '1490784143', '127.0.0.1', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Models&a=add&menuid=54');
INSERT INTO `lvyecms_operationlog` VALUES ('250', '1', '1490784157', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=6');
INSERT INTO `lvyecms_operationlog` VALUES ('251', '1', '1490784160', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=6');
INSERT INTO `lvyecms_operationlog` VALUES ('252', '1', '1490784165', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=6');
INSERT INTO `lvyecms_operationlog` VALUES ('253', '1', '1490784174', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=6');
INSERT INTO `lvyecms_operationlog` VALUES ('254', '1', '1490784208', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=edit&fieldid=125&modelid=6');
INSERT INTO `lvyecms_operationlog` VALUES ('255', '1', '1490784260', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=edit&fieldid=117&modelid=6');
INSERT INTO `lvyecms_operationlog` VALUES ('256', '1', '1490784268', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=6');
INSERT INTO `lvyecms_operationlog` VALUES ('257', '1', '1490784272', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=6');
INSERT INTO `lvyecms_operationlog` VALUES ('258', '1', '1490784281', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=6');
INSERT INTO `lvyecms_operationlog` VALUES ('259', '1', '1490784287', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=6');
INSERT INTO `lvyecms_operationlog` VALUES ('260', '1', '1490784293', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=6');
INSERT INTO `lvyecms_operationlog` VALUES ('261', '1', '1490784304', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=6');
INSERT INTO `lvyecms_operationlog` VALUES ('262', '1', '1490784414', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=add&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('263', '1', '1490784516', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('264', '1', '1490784517', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">13</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Category&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('265', '1', '1490784518', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Category&a=public_cache');
INSERT INTO `lvyecms_operationlog` VALUES ('266', '1', '1490784546', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('267', '1', '1490784584', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('268', '1', '1490784643', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&');
INSERT INTO `lvyecms_operationlog` VALUES ('269', '1', '1490784644', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">13</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Category&');
INSERT INTO `lvyecms_operationlog` VALUES ('270', '1', '1490784645', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Category&a=public_cache');
INSERT INTO `lvyecms_operationlog` VALUES ('271', '1', '1490784667', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('272', '1', '1490784721', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Category,方法：index<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&');
INSERT INTO `lvyecms_operationlog` VALUES ('273', '1', '1490784809', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=17');
INSERT INTO `lvyecms_operationlog` VALUES ('274', '1', '1490784840', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Content&a=add&catid=17');
INSERT INTO `lvyecms_operationlog` VALUES ('275', '1', '1490784921', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('276', '1', '1490795985', '127.0.0.1', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Models&a=add&menuid=54');
INSERT INTO `lvyecms_operationlog` VALUES ('277', '1', '1490795999', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=7');
INSERT INTO `lvyecms_operationlog` VALUES ('278', '1', '1490796013', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=7');
INSERT INTO `lvyecms_operationlog` VALUES ('279', '1', '1490796018', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=7');
INSERT INTO `lvyecms_operationlog` VALUES ('280', '1', '1490796088', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=7');
INSERT INTO `lvyecms_operationlog` VALUES ('281', '1', '1490796096', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=7');
INSERT INTO `lvyecms_operationlog` VALUES ('282', '1', '1490796102', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=7');
INSERT INTO `lvyecms_operationlog` VALUES ('283', '1', '1490796109', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=7');
INSERT INTO `lvyecms_operationlog` VALUES ('284', '1', '1490796116', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=7');
INSERT INTO `lvyecms_operationlog` VALUES ('285', '1', '1490796125', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=7');
INSERT INTO `lvyecms_operationlog` VALUES ('286', '1', '1490796132', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Field&modelid=7');
INSERT INTO `lvyecms_operationlog` VALUES ('287', '1', '1490796146', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=7');
INSERT INTO `lvyecms_operationlog` VALUES ('288', '1', '1490796248', '127.0.0.1', '0', '提示语：字段名只支持英文！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=add&modelid=7');
INSERT INTO `lvyecms_operationlog` VALUES ('289', '1', '1490796266', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&a=add&modelid=7');
INSERT INTO `lvyecms_operationlog` VALUES ('290', '1', '1490796275', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Field,方法：listorder<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Field&modelid=7');
INSERT INTO `lvyecms_operationlog` VALUES ('291', '1', '1490796451', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('292', '1', '1490796599', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Category,方法：index<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&');
INSERT INTO `lvyecms_operationlog` VALUES ('293', '1', '1490796668', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=add&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('294', '1', '1490796785', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Content&a=add&catid=21');
INSERT INTO `lvyecms_operationlog` VALUES ('295', '1', '1490796866', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://127.0.0.5/index.php?m=Category&a=edit&catid=20');
INSERT INTO `lvyecms_operationlog` VALUES ('296', '1', '1490796914', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('297', '1', '1490800443', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('298', '1', '1490800444', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site');
INSERT INTO `lvyecms_operationlog` VALUES ('299', '1', '1490800446', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `lvyecms_operationlog` VALUES ('300', '1', '1490800451', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `lvyecms_operationlog` VALUES ('301', '1', '1490800451', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=1');
INSERT INTO `lvyecms_operationlog` VALUES ('302', '1', '1490800452', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=2');
INSERT INTO `lvyecms_operationlog` VALUES ('303', '1', '1490800453', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=3');
INSERT INTO `lvyecms_operationlog` VALUES ('304', '1', '1490800455', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=4');
INSERT INTO `lvyecms_operationlog` VALUES ('305', '1', '1490800455', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=5');
INSERT INTO `lvyecms_operationlog` VALUES ('306', '1', '1490800456', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=6');
INSERT INTO `lvyecms_operationlog` VALUES ('307', '1', '1490800457', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=7');
INSERT INTO `lvyecms_operationlog` VALUES ('308', '1', '1490800457', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=8');
INSERT INTO `lvyecms_operationlog` VALUES ('309', '1', '1490800458', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=9');
INSERT INTO `lvyecms_operationlog` VALUES ('310', '1', '1490839493', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">16</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Category&menuid=47');
INSERT INTO `lvyecms_operationlog` VALUES ('311', '1', '1490839494', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://127.0.0.5/index.php?m=Category&a=public_cache');
INSERT INTO `lvyecms_operationlog` VALUES ('312', '1', '1490840364', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('313', '1', '1490840531', '127.0.0.1', '0', '提示语：主题名称不能为空！<br/>模块：Template,控制器：Theme,方法：chose<br/>请求方式：GET', 'http://127.0.0.5/index.php?g=Template&m=Theme&menuid=96');
INSERT INTO `lvyecms_operationlog` VALUES ('314', '1', '1490840581', '127.0.0.1', '0', '提示语：主题未改变！<br/>模块：Template,控制器：Theme,方法：chose<br/>请求方式：GET', 'http://127.0.0.5/index.php?g=Template&m=Theme&menuid=96');
INSERT INTO `lvyecms_operationlog` VALUES ('315', '1', '1490840858', '127.0.0.1', '0', '提示语：你还没有安装模版模块，无法使用模版商店！<br/>模块：Admin,控制器：Templateshop,方法：index<br/>请求方式：GET', 'http://127.0.0.5/admin.php');
INSERT INTO `lvyecms_operationlog` VALUES ('316', '1', '1490840861', '127.0.0.1', '0', '提示语：你还没有安装插件模块，无法使用插件商店！<br/>模块：Admin,控制器：Addonshop,方法：index<br/>请求方式：GET', 'http://127.0.0.5/admin.php');
INSERT INTO `lvyecms_operationlog` VALUES ('317', '1', '1490840878', '127.0.0.1', '0', '提示语：你还没有安装插件模块，无法使用插件商店！<br/>模块：Admin,控制器：Addonshop,方法：index<br/>请求方式：GET', 'http://127.0.0.5/admin.php');
INSERT INTO `lvyecms_operationlog` VALUES ('318', '1', '1490840880', '127.0.0.1', '0', '提示语：你还没有安装模版模块，无法使用模版商店！<br/>模块：Admin,控制器：Templateshop,方法：index<br/>请求方式：GET', 'http://127.0.0.5/admin.php');
INSERT INTO `lvyecms_operationlog` VALUES ('319', '1', '1490842968', '127.0.0.1', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://127.0.0.5/admin.php');
INSERT INTO `lvyecms_operationlog` VALUES ('320', '1', '1490843434', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Config,方法：index<br/>请求方式：Ajax', 'http://127.0.0.5/admin.php?m=Config&menuid=8');
INSERT INTO `lvyecms_operationlog` VALUES ('321', '1', '1491018834', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('322', '1', '1491018835', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site');
INSERT INTO `lvyecms_operationlog` VALUES ('323', '1', '1491018836', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `lvyecms_operationlog` VALUES ('324', '1', '1491018839', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `lvyecms_operationlog` VALUES ('325', '1', '1491018840', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=1');
INSERT INTO `lvyecms_operationlog` VALUES ('326', '1', '1491018841', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=2');
INSERT INTO `lvyecms_operationlog` VALUES ('327', '1', '1491018842', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=3');
INSERT INTO `lvyecms_operationlog` VALUES ('328', '1', '1491018842', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=4');
INSERT INTO `lvyecms_operationlog` VALUES ('329', '1', '1491018843', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=5');
INSERT INTO `lvyecms_operationlog` VALUES ('330', '1', '1491018844', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=6');
INSERT INTO `lvyecms_operationlog` VALUES ('331', '1', '1491018845', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=7');
INSERT INTO `lvyecms_operationlog` VALUES ('332', '1', '1491018845', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=8');
INSERT INTO `lvyecms_operationlog` VALUES ('333', '1', '1491018846', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://127.0.0.5/admin.php?a=cache&type=site&stop=9');
INSERT INTO `lvyecms_operationlog` VALUES ('334', '1', '1491362368', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：CustomData,控制器：Index,方法：add<br/>请求方式：POST', 'http://localhost/index.php?g=CustomData&a=add');
INSERT INTO `lvyecms_operationlog` VALUES ('335', '1', '1491362441', '0.0.0.0', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://localhost/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('336', '1', '1491362523', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：CustomData,控制器：Index,方法：add<br/>请求方式：POST', 'http://localhost/index.php?g=CustomData&a=add');
INSERT INTO `lvyecms_operationlog` VALUES ('337', '1', '1491362927', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：CustomData,控制器：Index,方法：add<br/>请求方式：POST', 'http://localhost/index.php?g=CustomData&a=add');
INSERT INTO `lvyecms_operationlog` VALUES ('338', '1', '1491362974', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：CustomData,控制器：Index,方法：add<br/>请求方式：POST', 'http://localhost/index.php?g=CustomData&a=add');
INSERT INTO `lvyecms_operationlog` VALUES ('339', '1', '1491363418', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：CustomData,控制器：Index,方法：add<br/>请求方式：POST', 'http://localhost/index.php?g=CustomData&a=add');
INSERT INTO `lvyecms_operationlog` VALUES ('340', '1', '1491363563', '0.0.0.0', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://localhost/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('341', '1', '1491363621', '0.0.0.0', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://localhost/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('342', '1', '1491363868', '0.0.0.0', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://localhost/admin.php?a=cache');
INSERT INTO `lvyecms_operationlog` VALUES ('343', '1', '1491365141', '0.0.0.0', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Config,方法：attach<br/>请求方式：Ajax', 'http://localhost/admin.php?m=Config&a=attach&menuid=8');
INSERT INTO `lvyecms_operationlog` VALUES ('344', '1', '1491365179', '0.0.0.0', '1', '提示语：添加成功！<br/>模块：CustomData,控制器：Index,方法：add<br/>请求方式：POST', 'http://localhost/index.php?g=CustomData&a=add');
INSERT INTO `lvyecms_operationlog` VALUES ('345', '1', '1491365232', '0.0.0.0', '1', '提示语：修改成功！<br/>模块：CustomData,控制器：Index,方法：edit<br/>请求方式：POST', 'http://localhost/index.php?g=CustomData&a=edit&id=8');
INSERT INTO `lvyecms_operationlog` VALUES ('346', '1', '1491365243', '0.0.0.0', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://localhost/admin.php?a=cache');

-- ----------------------------
-- Table structure for `lvyecms_page`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_page`;
CREATE TABLE `lvyecms_page` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `title` varchar(160) NOT NULL DEFAULT '' COMMENT '标题',
  `style` varchar(24) NOT NULL DEFAULT '' COMMENT '样式',
  `keywords` varchar(40) NOT NULL DEFAULT '' COMMENT '关键字',
  `content` text COMMENT '内容',
  `template` varchar(30) NOT NULL DEFAULT '',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`catid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单页内容表';

-- ----------------------------
-- Records of lvyecms_page
-- ----------------------------

-- ----------------------------
-- Table structure for `lvyecms_position`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_position`;
CREATE TABLE `lvyecms_position` (
  `posid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '推荐位id',
  `modelid` char(30) NOT NULL DEFAULT '' COMMENT '模型id',
  `catid` varchar(255) NOT NULL DEFAULT '' COMMENT '栏目id',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '推荐位名称',
  `maxnum` smallint(5) NOT NULL DEFAULT '20' COMMENT '最大存储数据量',
  `extention` char(100) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`posid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推荐位';

-- ----------------------------
-- Records of lvyecms_position
-- ----------------------------

-- ----------------------------
-- Table structure for `lvyecms_position_data`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_position_data`;
CREATE TABLE `lvyecms_position_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `posid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '推荐位ID',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模型',
  `modelid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `thumb` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有缩略图',
  `data` mediumtext COMMENT '数据信息',
  `listorder` mediumint(8) NOT NULL DEFAULT '0' COMMENT '排序',
  `expiration` int(10) NOT NULL,
  `extention` char(30) NOT NULL DEFAULT '',
  `synedit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否同步编辑',
  KEY `posid` (`posid`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推荐位数据表';

-- ----------------------------
-- Records of lvyecms_position_data
-- ----------------------------

-- ----------------------------
-- Table structure for `lvyecms_role`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_role`;
CREATE TABLE `lvyecms_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '角色名称',
  `parentid` smallint(6) NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色信息列表';

-- ----------------------------
-- Records of lvyecms_role
-- ----------------------------
INSERT INTO `lvyecms_role` VALUES ('1', '超级管理员', '0', '1', '拥有网站最高管理员权限！', '1329633709', '1329633709', '0');
INSERT INTO `lvyecms_role` VALUES ('2', '站点管理员', '1', '1', '站点管理员', '1329633722', '1399780945', '0');
INSERT INTO `lvyecms_role` VALUES ('3', '发布人员', '2', '1', '发布人员', '1329633733', '1399798954', '0');

-- ----------------------------
-- Table structure for `lvyecms_tags`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_tags`;
CREATE TABLE `lvyecms_tags` (
  `tagid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'tagID',
  `tag` char(20) NOT NULL DEFAULT '' COMMENT 'tag名称',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo标题',
  `seo_keyword` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo关键字',
  `seo_description` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo简介',
  `style` char(5) NOT NULL DEFAULT '' COMMENT '附加状态码',
  `usetimes` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '信息总数',
  `lastusetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后使用时间',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `lasthittime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最近访问时间',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`tagid`),
  UNIQUE KEY `tag` (`tag`),
  KEY `usetimes` (`usetimes`,`listorder`),
  KEY `hits` (`hits`,`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='tags主表';

-- ----------------------------
-- Records of lvyecms_tags
-- ----------------------------

-- ----------------------------
-- Table structure for `lvyecms_tags_content`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_tags_content`;
CREATE TABLE `lvyecms_tags_content` (
  `tag` char(20) NOT NULL COMMENT 'tag名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '信息地址',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '标题',
  `modelid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `contentid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '信息ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  KEY `modelid` (`modelid`,`contentid`),
  KEY `tag` (`tag`(10))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='tags数据表';

-- ----------------------------
-- Records of lvyecms_tags_content
-- ----------------------------

-- ----------------------------
-- Table structure for `lvyecms_terms`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_terms`;
CREATE TABLE `lvyecms_terms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `parentid` smallint(5) NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '分类名称',
  `module` varchar(200) NOT NULL DEFAULT '' COMMENT '所属模块',
  `setting` mediumtext COMMENT '相关配置信息',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of lvyecms_terms
-- ----------------------------

-- ----------------------------
-- Table structure for `lvyecms_urlrule`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_urlrule`;
CREATE TABLE `lvyecms_urlrule` (
  `urlruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id',
  `module` varchar(15) NOT NULL DEFAULT '' COMMENT '所属模块',
  `file` varchar(20) NOT NULL DEFAULT '' COMMENT '所属文件',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '生成静态规则 1 静态',
  `urlrule` varchar(255) NOT NULL DEFAULT '' COMMENT 'url规则',
  `example` varchar(255) NOT NULL DEFAULT '' COMMENT '示例',
  PRIMARY KEY (`urlruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='内容模型URL规则';

-- ----------------------------
-- Records of lvyecms_urlrule
-- ----------------------------
INSERT INTO `lvyecms_urlrule` VALUES ('1', 'content', 'category', '0', 'index.php?a=lists&catid={$catid}|index.php?a=lists&catid={$catid}&page={$page}', '动态：index.php?a=lists&catid=1&page=1');
INSERT INTO `lvyecms_urlrule` VALUES ('2', 'content', 'category', '1', '{$categorydir}{$catdir}/index.shtml|{$categorydir}{$catdir}/index_{$page}.shtml', '静态：news/china/1000.shtml');
INSERT INTO `lvyecms_urlrule` VALUES ('3', 'content', 'show', '1', '{$year}/{$catdir}_{$month}/{$id}.shtml|{$year}/{$catdir}_{$month}/{$id}_{$page}.shtml', '静态：2010/catdir_07/1_2.shtml');
INSERT INTO `lvyecms_urlrule` VALUES ('4', 'content', 'show', '0', 'index.php?a=shows&catid={$catid}&id={$id}|index.php?a=shows&catid={$catid}&id={$id}&page={$page}', '动态：index.php?m=Index&a=shows&catid=1&id=1');
INSERT INTO `lvyecms_urlrule` VALUES ('5', 'content', 'category', '1', 'news/{$catid}.shtml|news/{$catid}-{$page}.shtml', '静态：news/1.shtml');
INSERT INTO `lvyecms_urlrule` VALUES ('6', 'content', 'category', '0', 'list-{$catid}.html|list-{$catid}-{$page}.html', '伪静态：list-1-1.html');
INSERT INTO `lvyecms_urlrule` VALUES ('7', 'content', 'tags', '0', 'index.php?a=tags&amp;tagid={$tagid}|index.php?a=tags&amp;tagid={$tagid}&amp;page={$page}', '动态：index.php?a=tags&amp;tagid=1');
INSERT INTO `lvyecms_urlrule` VALUES ('8', 'content', 'tags', '0', 'index.php?a=tags&amp;tag={$tag}|/index.php?a=tags&amp;tag={$tag}&amp;page={$page}', '动态：index.php?a=tags&amp;tag=标签');
INSERT INTO `lvyecms_urlrule` VALUES ('9', 'content', 'tags', '0', 'tag-{$tag}.html|tag-{$tag}-{$page}.html', '伪静态：tag-标签.html');
INSERT INTO `lvyecms_urlrule` VALUES ('10', 'content', 'tags', '0', 'tag-{$tagid}.html|tag-{$tagid}-{$page}.html', '伪静态：tag-1.html');
INSERT INTO `lvyecms_urlrule` VALUES ('11', 'content', 'index', '1', 'index.html|index_{$page}.html', '静态：index_2.html');
INSERT INTO `lvyecms_urlrule` VALUES ('12', 'content', 'index', '0', 'index.html|index_{$page}.html', '伪静态：index_2.html');
INSERT INTO `lvyecms_urlrule` VALUES ('13', 'content', 'index', '0', 'index.php|index.php?page={$page}', '动态：index.php?page=2');
INSERT INTO `lvyecms_urlrule` VALUES ('14', 'content', 'category', '1', 'download.shtml|download_{$page}.shtml', '静态：download.shtml');
INSERT INTO `lvyecms_urlrule` VALUES ('15', 'content', 'show', '1', '{$categorydir}{$id}.shtml|{$categorydir}{$id}_{$page}.shtml', '静态：/父栏目/1.shtml');
INSERT INTO `lvyecms_urlrule` VALUES ('16', 'content', 'show', '1', '{$catdir}/{$id}.shtml|{$catdir}/{$id}_{$page}.shtml', '示例：/栏目/1.html');

-- ----------------------------
-- Table structure for `lvyecms_user`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_user`;
CREATE TABLE `lvyecms_user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称/姓名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `bind_account` varchar(50) NOT NULL DEFAULT '' COMMENT '绑定帐户',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `last_login_ip` varchar(40) NOT NULL DEFAULT '' COMMENT '上次登录IP',
  `verify` varchar(32) NOT NULL DEFAULT '' COMMENT '证验码',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `role_id` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '对应角色ID',
  `info` text COMMENT '信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后台用户表';

-- ----------------------------
-- Records of lvyecms_user
-- ----------------------------
INSERT INTO `lvyecms_user` VALUES ('1', 'admin', '未知', 'f61e77215ef8b33e723440c9bd66cc7b', '', '1491361689', '0.0.0.0', '0RTaaD', 'admin@abc3210.com', '备注信息', '1490675527', '1490675527', '1', '1', '');

-- ----------------------------
-- Table structure for `lvyecms_ziliao`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_ziliao`;
CREATE TABLE `lvyecms_ziliao` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lvyecms_ziliao
-- ----------------------------
INSERT INTO `lvyecms_ziliao` VALUES ('1', '21', '文件1', '', '', '', '', '内容啥的', '0', '/index.php?a=shows&catid=21&id=1', '0', '99', '1', 'admin', '1490796785', '1490796785', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `lvyecms_ziliao_data`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_ziliao_data`;
CREATE TABLE `lvyecms_ziliao_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `wenjian` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lvyecms_ziliao_data
-- ----------------------------
INSERT INTO `lvyecms_ziliao_data` VALUES ('1', '', '0', '0', '/d/file/content/2017/03/58dbc0eed3234.jpg');

-- ----------------------------
-- Table structure for `lvyecms_zixun`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_zixun`;
CREATE TABLE `lvyecms_zixun` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lvyecms_zixun
-- ----------------------------
INSERT INTO `lvyecms_zixun` VALUES ('1', '13', '中国首份消费金融口碑指数', '', '/d/file/content/2017/03/thumb_58db8713313a9.jpg', '', '', '对于国民经济发展而言，“投资”、 “ 出口 ” 、 “ 消费 ” 三驾马车推动着中国经济快速发展。而近年来，随着“投资”、 “ 出口 ” 逐渐走向 “ 饱和 ” ，“消费”推动国家经济发展所占的比重正在迅速上升。自 2007 年广东省试点消费金融以来，消费金融市场在我国取得了长足的发展，在国民消费需求升级、促进消费产品产业发展及创新、服务居民分期消费需求等方面扮演着重要的角色。尤其是在最近几年国家政策的支持下，消费金融市场呈现出井喷的状态，传统银行、产业系消费金融平台、依托电商平台和 P2P 平台的互联网', '0', '/index.php?a=shows&catid=13&id=1', '0', '99', '1', 'admin', '1490781978', '1490781978', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `lvyecms_zixun_data`
-- ----------------------------
DROP TABLE IF EXISTS `lvyecms_zixun_data`;
CREATE TABLE `lvyecms_zixun_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8_unicode_ci,
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lvyecms_zixun_data
-- ----------------------------
INSERT INTO `lvyecms_zixun_data` VALUES ('1', '报告描述\r\n作为国内首份研究消费金融领域的口碑报告，“消费金融口碑指数” 是由百分点集团顶尖数据科学家与中央财经大学商学院顶尖学者联合编制，全面、科学地评价了中国消费金融品牌的现状，体现了消费者对现有消费金融品牌的体验和口碑。\r\n完整版目录\r\n\r\n1 中国消费金融品牌口碑指数概况\r\n1.1  研究背景\r\n1.2  研究对象和意义\r\n1.3  指标体系构建\r\n1.4  指数编制方法\r\n1.5  研究保障\r\n2 中国消费金融品牌口碑指数成果\r\n2.1  中国消费金融品牌口碑指数排名分析\r\n2.2  一级指标-品牌认知成果分析\r\n2.3  一级指标-品牌感知质量成果分析\r\n2.4  一级指标-品牌忠诚成果分析\r\n3 中国消费金融品牌口碑指数细分指标分析\r\n3.1  品牌知晓、品牌联想分析\r\n3.2  品牌感知质量-流程分析\r\n3.3  品牌感知质量-产品分析\r\n3.4  品牌感知质量-服务分析\r\n3.5  品牌感知质量-安全分析\r\n3.6  品牌满意度分析\r\n4 细分消费者的口碑指数分析\r\n4.1  按城市级别\r\n4.2  按地域\r\n4.3  按年龄段\r\n5 典型消费金融品牌分析\r\n5.1  一级指标分析\r\n5.2  二级指标及细分指标分析\r\n5.3  细分消费者的口碑指数分析\r\n5.4  竞争品牌对比\r\n6     消费金融行业展望', '', '0', '0');
