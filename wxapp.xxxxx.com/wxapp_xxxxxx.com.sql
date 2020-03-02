/*
Navicat MySQL Data Transfer
Date: 2020-03-01 14:50:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cd_access`
-- ----------------------------
DROP TABLE IF EXISTS `cd_access`;
CREATE TABLE `cd_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分组ID',
  `purviewval` varchar(128) DEFAULT NULL COMMENT '分组对应权限值',
  `group_id` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2340 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cd_access
-- ----------------------------
INSERT INTO `cd_access` VALUES ('2329', '/admin/Health/view', '7');
INSERT INTO `cd_access` VALUES ('2328', '/admin/Health/dumpData', '7');
INSERT INTO `cd_access` VALUES ('2327', '/admin/Health/index', '7');
INSERT INTO `cd_access` VALUES ('2326', '/admin/Health/import', '7');
INSERT INTO `cd_access` VALUES ('2325', '/admin/Health', '7');
INSERT INTO `cd_access` VALUES ('2324', '/admin/Health/add', '3');
INSERT INTO `cd_access` VALUES ('2323', '/admin/Health/update', '3');
INSERT INTO `cd_access` VALUES ('2322', '/admin/Health/delete', '3');
INSERT INTO `cd_access` VALUES ('2321', '/admin/Health/view', '3');
INSERT INTO `cd_access` VALUES ('2320', '/admin/Health/dumpData', '3');
INSERT INTO `cd_access` VALUES ('2319', '/admin/Health/index', '3');
INSERT INTO `cd_access` VALUES ('2318', '/admin/Health/import', '3');
INSERT INTO `cd_access` VALUES ('2317', '/admin/Health', '3');
INSERT INTO `cd_access` VALUES ('2330', '/admin/Health/delete', '7');
INSERT INTO `cd_access` VALUES ('2331', '/admin/Health/update', '7');
INSERT INTO `cd_access` VALUES ('2332', '/admin/Health/add', '7');
INSERT INTO `cd_access` VALUES ('2333', '/admin/Regpoint', '7');
INSERT INTO `cd_access` VALUES ('2334', '/admin/Regpoint/index', '7');
INSERT INTO `cd_access` VALUES ('2335', '/admin/Regpoint/updateExt', '7');
INSERT INTO `cd_access` VALUES ('2336', '/admin/Regpoint/add', '7');
INSERT INTO `cd_access` VALUES ('2337', '/admin/Regpoint/update', '7');
INSERT INTO `cd_access` VALUES ('2338', '/admin/Regpoint/delete', '7');
INSERT INTO `cd_access` VALUES ('2339', '/admin/Regpoint/view', '7');

-- ----------------------------
-- Table structure for `cd_action`
-- ----------------------------
DROP TABLE IF EXISTS `cd_action`;
CREATE TABLE `cd_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(9) NOT NULL COMMENT '模块ID',
  `name` varchar(255) DEFAULT NULL COMMENT '动作名称',
  `action_name` varchar(128) NOT NULL COMMENT '动作名称',
  `type` tinyint(4) NOT NULL,
  `icon` varchar(32) DEFAULT NULL COMMENT 'icon图标',
  `pagesize` varchar(5) DEFAULT '20' COMMENT '每页显示数据条数',
  `is_view` tinyint(4) DEFAULT '0' COMMENT '是否按钮',
  `button_status` tinyint(4) DEFAULT NULL COMMENT '按钮是否显示列表',
  `sql_query` mediumtext COMMENT 'sql数据源',
  `block_name` varchar(255) DEFAULT NULL COMMENT '注释',
  `remark` varchar(255) DEFAULT NULL COMMENT '打开页面尺寸',
  `fields` text COMMENT '操作的字段',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  `lable_color` varchar(12) DEFAULT NULL COMMENT '按钮背景色',
  `relate_table` varchar(32) DEFAULT NULL COMMENT '关联表',
  `relate_field` varchar(32) DEFAULT NULL COMMENT '关联字段',
  `list_field` varchar(255) DEFAULT NULL COMMENT '查询的字段',
  `bs_icon` varchar(32) DEFAULT NULL COMMENT '按钮图标',
  `sortid` mediumint(9) DEFAULT '0' COMMENT '排序',
  `orderby` varchar(250) DEFAULT NULL COMMENT '配置排序',
  `default_orderby` varchar(50) DEFAULT NULL COMMENT '默认排序',
  `tree_config` varchar(50) DEFAULT NULL,
  `jump` varchar(120) DEFAULT NULL COMMENT '按钮跳转地址',
  `is_controller_create` tinyint(4) DEFAULT '1' COMMENT '是否生成控制其方法',
  `is_service_create` tinyint(4) DEFAULT NULL COMMENT '是否生成服务层方法',
  `is_view_create` tinyint(4) DEFAULT NULL COMMENT '视图生成',
  `cache_time` mediumint(9) DEFAULT NULL COMMENT '缓存时间',
  `log_status` tinyint(4) DEFAULT NULL COMMENT '是否生成日志',
  `api_auth` tinyint(4) DEFAULT NULL COMMENT '接口是否鉴权',
  `sms_auth` tinyint(4) DEFAULT NULL COMMENT '短信验证',
  `request_type` varchar(20) DEFAULT NULL COMMENT '请求类型 get 或者 post',
  `captcha_auth` tinyint(4) DEFAULT NULL COMMENT '图片验证码验证',
  `do_condition` varchar(255) DEFAULT NULL COMMENT '操作条件',
  PRIMARY KEY (`id`),
  KEY `menu_id` (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2799 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cd_action
-- ----------------------------
INSERT INTO `cd_action` VALUES ('78', '18', '首页数据列表', 'index', '1', '', '', '0', '0', '', '用户管理', '', 'group_id', '', 'primary', 'group', 'group_id', 'a.*,b.name as group_name', '', '1', '', '', '', '', '1', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('80', '18', '添加', 'add', '3', '', '20', '1', '0', '', '添加账户', '800px|600px', 'name,user,pwd,group_id,type,note,status,create_time', '', 'primary', '', '', '', 'fa fa-plus', '3', '', '', '', '', '1', '1', '1', null, null, null, null, null, null, '');
INSERT INTO `cd_action` VALUES ('81', '18', '修改', 'update', '4', '', '', '1', '1', '', '修改账户', '800px|550px', 'name,user,group_id,type,note,status,create_time', '', 'success', '', '', '', 'fa fa-edit', '4', '', '', '', '', '1', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('82', '18', '修改密码', 'updatePassword', '9', '', '', '1', '0', '', '修改密码', '600px|300px', 'pwd', '', 'warning', '', '', '', '', '6', '', '', '', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('85', '19', '首页数据列表', 'index', '1', '', '', '0', '0', '', '分组管理', '600px|250px', '', '', 'primary', '', '', '', '', '1', '', '', '', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('87', '19', '添加', 'add', '3', '', '', '1', '0', '', '添加分组', '800px|400px', 'name,status,role', '', 'primary', '', '', '', 'plus', '3', '', '', '', '', '1', '1', '1', null, null, null, null, null, null, '');
INSERT INTO `cd_action` VALUES ('88', '19', '修改', 'update', '4', '', '', '1', '1', '', '修改分组', '800px|400px', 'name,status,role', '', 'primary', '', '', '', '', '4', '', '', '', '', '1', '1', '1', null, null, null, null, null, null, '');
INSERT INTO `cd_action` VALUES ('89', '19', '禁用', 'forbidden', '6', '', '', '1', '0', '', '禁用', '0', 'status', '', 'warning', '', '', '', 'edit', '5', '', '', '', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('90', '19', '启用', 'start', '6', '', '', '1', '0', '', '启用', '10', 'status', '', 'warning', '', '', '', 'edit', '6', '', '', '', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('91', '19', '设置权限', 'auth', '11', '', '', '1', '0', '', '弹窗连接', '90%|90%', '', '', 'info', '', '', '', 'plus', '7', '', '', '', '/Base/auth', '1', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('106', '19', '查看用户', 'viewUser', '11', '', '', '1', '1', '', '弹窗连接', '90%|90%', '', '', 'success', '', '', '', 'plus', '8', '', '', '', '/User/index', '1', '1', '1', null, null, null, null, null, null, '');
INSERT INTO `cd_action` VALUES ('124', '52', '首页数据列表', 'index', '1', '', '', '0', '0', 'select a.*,b.name as group_name,c.name as nickname from cd_log as a inner join cd_group as b inner join cd_user as c on a.user_id = c.user_id and c.group_id= b.group_id', '登录日志管理', '', '', '', 'primary', '', '', '', '', '1', '', '', '', '', '1', '1', '1', null, null, null, null, null, null, '');
INSERT INTO `cd_action` VALUES ('128', '52', '删除', 'delete', '5', '', null, '1', '0', '', '删除', '', '', '', 'danger', '', '', '', 'trash', '4', '', '', '', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('130', '41', '修改配置', 'index', '4', '', '', '1', '0', '', '修改', '600px|300px', '', '', 'primary', '', '', '', '', '127', '', '', '', '', '1', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('1668', '18', '删除', 'delete', '5', null, '', '1', '1', '', '删除数据', '', '', null, 'danger', '', '', '', 'fa fa-trash', '1668', null, '', '', '', '1', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('2076', '18', '禁用', 'forbidden', '6', null, '', '1', '0', '', '修改状态', '0', 'status', null, 'success', '', '', '', 'fa fa-pencil', '2076', null, '', '', '', '1', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('2075', '18', '启用', 'start', '6', null, '', '1', '0', '', '修改状态', '1', 'status', null, 'success', '', '', '', 'fa fa-pencil', '2075', null, '', '', '', '1', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('2726', '793', '首页数据列表', 'index', '1', null, '20', '0', null, null, '会员管理', null, null, null, null, null, null, null, null, '1', null, null, null, null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('2727', '793', '修改排序开关按钮操作', 'updateExt', '16', null, '20', '0', null, null, '修改排序、开关按钮操作 如果没有此类操作 可以删除该方法', null, null, null, null, null, null, null, null, '2', null, null, null, null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('2728', '793', '添加', 'add', '3', null, '20', '1', '0', '', '添加', '800px|100%', 'nickname,headimgurl,openid,mobile,username,password,create_time,sex,status', null, 'primary', '', '', '', 'fa fa-plus', '2728', null, '', '', '', '1', '1', '1', null, null, null, null, null, null, '');
INSERT INTO `cd_action` VALUES ('2729', '793', '修改', 'update', '4', null, '20', '1', '1', '', '修改', '800px|600px', 'nickname,headimgurl,openid,mobile,username,create_time,sex,status', null, 'success', '', '', '', 'fa fa-pencil', '2729', null, '', '', '', '1', '1', '1', null, null, null, null, null, null, '');
INSERT INTO `cd_action` VALUES ('2730', '793', '删除', 'delete', '5', null, '20', '1', '1', '', '删除', '800px|600px', 'nickname,headimgurl,openid,mobile,username,create_time,sex,status', null, 'danger', '', '', '', 'fa fa-trash', '2730', null, '', '', '', '1', '1', '1', null, null, null, null, null, null, '');
INSERT INTO `cd_action` VALUES ('2731', '793', '查看数据', 'view', '15', null, '20', '1', '0', '', '查看数据', '800px|600px', 'nickname,headimgurl,openid,mobile,username,create_time,sex,status', null, 'info', '', '', '', 'fa fa-plus', '2731', null, '', '', '', '1', '1', '1', null, null, null, null, null, null, '');
INSERT INTO `cd_action` VALUES ('2770', '803', '修改排序开关按钮操作', 'updateExt', '16', null, '20', '0', null, null, '修改排序、开关按钮操作 如果没有此类操作 可以删除该方法', null, null, null, null, null, null, null, null, '2', null, null, null, null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('2734', '794', '更新用户信息', 'update', '4', null, '20', '1', '1', '', '编辑数据', '', 'nickname,headimgurl,openid,mobile,sex', null, 'success', '', '', '', 'fa fa-pencil', '2746', null, '', '', null, '1', '1', null, '0', '1', '1', '0', 'post', '0', null);
INSERT INTO `cd_action` VALUES ('2736', '794', '查看用户信息', 'view', '15', null, '20', '1', '0', '', '查看用户信息', '', 'nickname,headimgurl,openid,mobile,username,password,sex,status,create_time', null, 'info', '', '', '', 'fa fa-plus', '2747', null, '', '', null, '1', '1', null, '0', '1', '1', '0', 'post', '0', null);
INSERT INTO `cd_action` VALUES ('2769', '803', '首页数据列表', 'index', '1', null, '20', '0', null, null, '门锁管理', null, null, null, null, null, null, null, null, '1', null, null, null, null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('2747', '794', '小程序登录', 'xcxlogin', '28', null, '', '0', null, '', '小程序登录', 'openid', 'nickname,headimgurl,openid,mobile,username,password,sex,status,create_time', null, null, 'user', 'member_id', 'a.*,b.user_id', null, '2728', null, '', '', null, '1', '1', null, '0', '1', '0', '0', 'post', '0', null);
INSERT INTO `cd_action` VALUES ('2740', '793', '重置密码', 'resetpassword', '9', null, '', '1', '0', '', '修改密码', '600px|350px', 'password', null, 'primary', '', '', '', 'fa fa-lock', '2740', null, '', '', '', '1', '1', '1', null, null, null, null, null, null, '');
INSERT INTO `cd_action` VALUES ('2741', '797', '添加', 'add', '3', null, '20', '1', '0', '', '添加', '800px|100%', 'name,mobile,first_address,second_address,position,job,yiqu,register_type,health,manyou,txz,create_time,lat,lng,user_id,openid,regpoint_id', null, 'primary', '', '', '', 'fa fa-plus', '2741', null, '', '', null, '1', '1', null, '0', '1', '0', '0', 'post', '0', null);
INSERT INTO `cd_action` VALUES ('2767', '802', '数据列表', 'index', '1', null, '', '1', '0', '', '', '', 'name,mobile,first_address,second_address,position,job,yiqu,register_type,health,manyou,txz,create_time,lat,lng,user_id,openid,regpoint_id', null, 'primary', '', '', '', '', '2767', null, '', '', '', '1', '1', '1', null, null, null, null, null, null, '');
INSERT INTO `cd_action` VALUES ('2744', '797', '查看数据详情页', 'view', '15', null, '20', '1', '0', '', '查看数据', '', 'name,mobile,first_address,second_address,position,job,yiqu,register_type,health,manyou,txz,create_time,lat,lng,user_id,openid', null, 'info', '', '', '', 'fa fa-plus', '2768', null, '', '', null, '1', '1', null, '0', '1', '1', '0', 'post', '0', null);
INSERT INTO `cd_action` VALUES ('2768', '797', '查看数据列表', 'list', '1', null, '20', '0', null, '', '', '', '', null, null, '', '', '', null, '2744', null, 'health_id desc', '', null, '1', '1', null, '0', '1', '1', '0', 'post', '0', null);
INSERT INTO `cd_action` VALUES ('2765', '802', '导出', 'dumpData', '12', null, '20', '1', '0', null, '导出', '', 'user_id,create_time,lat,lng,txz,manyou,register_type,yiqu,health,job,position,second_address,first_address,name,mobile', null, 'warning', null, null, null, 'fa fa-download', '2765', null, null, null, null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('2764', '802', '查看数据', 'view', '15', null, '20', '1', '0', '', '查看数据', '800px|100%', 'name,mobile,first_address,second_address,position,job,yiqu,register_type,health,manyou,txz,create_time,lat,lng,user_id,openid', null, 'info', '', '', '', 'fa fa-plus', '2764', null, '', '', '', '1', '1', '1', null, null, null, null, null, null, '');
INSERT INTO `cd_action` VALUES ('2763', '802', '删除', 'delete', '5', null, '20', '1', '1', null, '删除', '', 'user_id,create_time,lat,lng,txz,manyou,register_type,yiqu,health,job,position,second_address,first_address,name,mobile', null, 'danger', null, null, null, 'fa fa-trash', '2763', null, null, null, null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('2762', '802', '修改', 'update', '4', null, '20', '1', '1', '', '修改', '800px|100%', 'name,mobile,first_address,second_address,position,job,yiqu,register_type,health,manyou,txz,create_time,lat,lng,user_id,openid', null, 'success', '', '', '', 'fa fa-pencil', '2762', null, '', '', '', '1', '1', '1', null, null, null, null, null, null, '');
INSERT INTO `cd_action` VALUES ('2761', '802', '添加', 'add', '3', null, '20', '1', '0', '', '添加', '800px|100%', 'name,mobile,first_address,second_address,position,job,yiqu,register_type,health,manyou,txz,create_time,lat,lng,user_id,openid', null, 'primary', '', '', '', 'fa fa-plus', '2761', null, '', '', '', '1', '1', '1', null, null, null, null, null, null, '');
INSERT INTO `cd_action` VALUES ('2771', '804', '首页数据列表', 'index', '1', null, '20', '0', '0', '', '登记点管理', '', '', null, 'primary', '', '', '', '', '1', null, '', '', '', '1', '1', '1', null, null, null, null, null, null, '');
INSERT INTO `cd_action` VALUES ('2772', '804', '修改排序开关按钮操作', 'updateExt', '16', null, '20', '0', null, null, '修改排序、开关按钮操作 如果没有此类操作 可以删除该方法', null, null, null, null, null, null, null, null, '2', null, null, null, null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('2775', '804', '删除', 'delete', '5', null, '20', '1', '1', null, '删除', '', 'member_id,user_id,regpointname,regpointurl,create_time', null, 'danger', null, null, null, 'fa fa-trash', '2775', null, null, null, null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('2776', '804', '查看数据', 'view', '15', null, '20', '1', '0', '', '查看数据', '800px|450px', 'member_id,user_id,regpointname,regpointqrcode,create_time', null, 'info', '', '', '', 'fa fa-plus', '2776', null, '', '', '', '1', '1', '1', null, null, null, null, null, null, '');
INSERT INTO `cd_action` VALUES ('2794', '803', '添加', 'add', '3', null, '20', '1', '0', null, '添加', '800px|400px', 'lockname,sn,member_id,user_id', null, 'primary', null, null, null, 'fa fa-plus', '2794', null, null, null, null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('2779', '805', '修改', 'update', '4', null, '20', '1', '1', '', '修改', '', 'member_id,user_id,regpointname,regpointurl,create_time', null, 'success', '', '', '', 'fa fa-pencil', '2774', null, '', '', null, '1', '1', null, '0', '1', '1', '0', 'post', '0', null);
INSERT INTO `cd_action` VALUES ('2780', '805', '删除', 'delete', '5', null, '20', '1', '1', '', '删除', '', 'member_id,user_id,regpointname,regpointurl,create_time', null, 'danger', '', '', '', 'fa fa-trash', '2775', null, '', '', null, '1', '1', null, '0', '1', '1', '0', 'post', '0', null);
INSERT INTO `cd_action` VALUES ('2781', '805', '查看数据', 'view', '15', null, '20', '1', '0', '', '查看数据', '', 'member_id,user_id,regpointname,regpointurl,create_time', null, 'info', '', '', '', 'fa fa-plus', '2776', null, '', '', null, '1', '1', null, '0', '1', '1', '0', 'post', '0', null);
INSERT INTO `cd_action` VALUES ('2789', '806', '查询用户', 'view', '15', null, '', '0', null, '', '', '', '', null, null, '', '', '', null, '2789', null, '', '', null, '1', '1', null, '0', '1', '1', '0', 'post', '0', null);
INSERT INTO `cd_action` VALUES ('2795', '803', '修改', 'update', '4', null, '20', '1', '1', null, '修改', '800px|400px', 'lockname,sn,member_id,user_id', null, 'success', null, null, null, 'fa fa-pencil', '2795', null, null, null, null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('2784', '806', '修改', 'update', '4', '', '', '1', '1', '', '修改账户', '', 'name,user,group_id,type,note,status,member_id,create_time', '', 'success', '', '', '', 'fa fa-edit', '4', '', '', '', '', '1', '1', '1', '0', '1', '1', '0', 'post', '0', null);
INSERT INTO `cd_action` VALUES ('2785', '806', '修改密码', 'updatePassword', '9', '', '', '1', '0', '', '修改密码', '', 'pwd', '', 'warning', '', '', '', '', '6', '', '', '', null, '1', '1', null, '0', '1', '1', '0', 'post', '0', null);
INSERT INTO `cd_action` VALUES ('2793', '794', '查询管理ID', 'viewuserid', '15', null, '', '0', null, '', '', '', '', null, null, 'user', 'member_id', 'a.member_id,b.*', null, '2793', null, '', '', null, '1', '1', null, '0', '1', '0', '0', 'post', '0', null);
INSERT INTO `cd_action` VALUES ('2796', '803', '删除', 'delete', '5', null, '20', '1', '1', null, '删除', '', 'lockname,sn,member_id,user_id', null, 'danger', null, null, null, 'fa fa-trash', '2796', null, null, null, null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('2797', '803', '查看数据', 'view', '15', null, '20', '1', '0', null, '查看数据', '800px|400px', 'lockname,sn,member_id,user_id', null, 'info', null, null, null, 'fa fa-plus', '2797', null, null, null, null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `cd_action` VALUES ('2798', '803', '导出', 'dumpData', '12', null, '20', '1', '0', null, '导出', '', 'lockname,sn,member_id,user_id', null, 'warning', null, null, null, 'fa fa-download', '2798', null, null, null, null, '1', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `cd_application`
-- ----------------------------
DROP TABLE IF EXISTS `cd_application`;
CREATE TABLE `cd_application` (
  `app_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `app_dir` varchar(250) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `app_type` tinyint(4) DEFAULT NULL,
  `login_table` varchar(250) DEFAULT NULL,
  `login_fields` varchar(250) DEFAULT NULL,
  `domain` varchar(250) DEFAULT NULL,
  `pk` varchar(50) DEFAULT NULL COMMENT '登录表主键',
  PRIMARY KEY (`app_id`)
) ENGINE=MyISAM AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cd_application
-- ----------------------------
INSERT INTO `cd_application` VALUES ('1', '后台管理端', 'admin', '1', '1', '', '', '', null);
INSERT INTO `cd_application` VALUES ('179', 'api', 'api', '1', '2', '', '', '', '');

-- ----------------------------
-- Table structure for `cd_config`
-- ----------------------------
DROP TABLE IF EXISTS `cd_config`;
CREATE TABLE `cd_config` (
  `name` varchar(50) NOT NULL,
  `data` varchar(250) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cd_config
-- ----------------------------
INSERT INTO `cd_config` VALUES ('copyright', '极客老师 QQ:15938618');
INSERT INTO `cd_config` VALUES ('default_themes', '');
INSERT INTO `cd_config` VALUES ('description', '健康登记管理平台');
INSERT INTO `cd_config` VALUES ('domain', '');
INSERT INTO `cd_config` VALUES ('file_size', '100');
INSERT INTO `cd_config` VALUES ('file_type', 'gif,png,jpg,jpeg,doc,docx,xls,xlsx,csv,pdf,rar,zip,txt,mp4,flv');
INSERT INTO `cd_config` VALUES ('images_size', '10M');
INSERT INTO `cd_config` VALUES ('keyword', '');
INSERT INTO `cd_config` VALUES ('site_logo', '/uploads/admin/202003/5e5aaa629234b.jpg');
INSERT INTO `cd_config` VALUES ('site_title', '健康登记管理平台');

-- ----------------------------
-- Table structure for `cd_ext_health`
-- ----------------------------
DROP TABLE IF EXISTS `cd_ext_health`;
CREATE TABLE `cd_ext_health` (
  `health_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `mobile` char(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `first_address` varchar(250) NOT NULL DEFAULT '' COMMENT '第一居住地址',
  `second_address` varchar(250) NOT NULL DEFAULT '' COMMENT '院系(部门)',
  `job` varchar(250) NOT NULL DEFAULT '' COMMENT '班级或工号',
  `yiqu` tinyint(4) unsigned NOT NULL DEFAULT '2' COMMENT '30日内是否来自疫区:1是,默认2否',
  `register_type` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '登记类型:默认1村居,2乡镇社区,3区县,4交通运输',
  `health` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '健康状况默认1健康,2异常,3其他',
  `manyou` varchar(250) NOT NULL DEFAULT '' COMMENT '漫游地截图',
  `txz` varchar(250) NOT NULL DEFAULT '' COMMENT '通行证截图',
  `ctime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `utime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`health_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cd_ext_health
-- ----------------------------

-- ----------------------------
-- Table structure for `cd_field`
-- ----------------------------
DROP TABLE IF EXISTS `cd_field`;
CREATE TABLE `cd_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(9) NOT NULL COMMENT '模块ID',
  `name` varchar(64) NOT NULL COMMENT '字段名称',
  `field` varchar(32) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '表单类型1输入框 2下拉框 3单选框 4多选框 5上传图片 6编辑器 7时间',
  `list_show` tinyint(4) DEFAULT NULL COMMENT '列表显示',
  `search_show` tinyint(4) DEFAULT NULL COMMENT '搜索显示',
  `search_type` tinyint(4) DEFAULT NULL COMMENT '1精确匹配 2模糊搜索',
  `config` varchar(255) DEFAULT NULL COMMENT '下拉框或者单选框配置',
  `is_post` tinyint(4) DEFAULT NULL COMMENT '是否前台录入',
  `is_field` tinyint(4) DEFAULT NULL,
  `align` varchar(24) DEFAULT NULL COMMENT '表格显示位置',
  `note` varchar(255) DEFAULT NULL COMMENT '提示信息',
  `message` varchar(255) DEFAULT NULL COMMENT '错误提示',
  `validate` varchar(32) DEFAULT NULL COMMENT '验证方式',
  `rule` mediumtext COMMENT '验证规则',
  `sortid` mediumint(9) DEFAULT '0' COMMENT '排序号',
  `sql` varchar(255) DEFAULT NULL COMMENT '字段配置数据源sql',
  `tab_menu_name` varchar(30) DEFAULT NULL COMMENT '所属选项卡名称',
  `default_value` varchar(255) DEFAULT NULL,
  `datatype` varchar(32) DEFAULT NULL COMMENT '字段数据类型',
  `length` varchar(5) DEFAULT NULL COMMENT '字段长度',
  `indexdata` varchar(20) DEFAULT NULL COMMENT '索引',
  PRIMARY KEY (`id`),
  KEY `menu_id` (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3344 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cd_field
-- ----------------------------
INSERT INTO `cd_field` VALUES ('134', '18', '编号', 'user_id', '1', '1', '0', '0', '', '0', '0', 'center', '', '', '', '', '1', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('135', '18', '真实姓名', 'name', '1', '1', '0', null, '', '1', '0', 'center', '', '用户名不能为空', 'notEmpty', '', '2', '', '', null, null, null, null);
INSERT INTO `cd_field` VALUES ('136', '18', '用户名', 'user', '1', '1', '1', '1', '', '1', '0', 'center', '', '用户名不能为空', 'notEmpty,unique', '', '3', '', '', '', '', '', '');
INSERT INTO `cd_field` VALUES ('137', '18', '密码', 'pwd', '5', '0', '0', '0', '', '1', '0', 'center', '', '6-21位数字字母组合', 'notEmpty', '/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$/', '4', '', '', '', '', '', '');
INSERT INTO `cd_field` VALUES ('138', '18', '所属分组', 'group_id', '29', '0', '1', '0', '', '1', '0', 'center', '', '', '', '', '5', 'select  group_id,name from pre_group', '', '', 'smallint', '6', '');
INSERT INTO `cd_field` VALUES ('139', '18', '类别', 'type', '3', '1', '1', '0', '超级管理员|1|success,普通管理员|2|warning', '1', '0', 'center', '', '', '', '', '6', '', '', '', '', '', '');
INSERT INTO `cd_field` VALUES ('140', '18', '备注', 'note', '1', '1', '0', null, '', '1', '0', 'center', '', '', '', '', '7', '', '', null, null, null, null);
INSERT INTO `cd_field` VALUES ('141', '18', '状态', 'status', '3', '1', '1', '0', '正常|1|primary,禁用|0|danger', '1', '0', 'center', '', '', '', '', '7', '', '', '', '', '', '');
INSERT INTO `cd_field` VALUES ('142', '18', '创建时间', 'create_time', '12', '1', '0', '0', '', '1', '0', 'center', '', '', '', '', '3338', '', '', '', '', '', '');
INSERT INTO `cd_field` VALUES ('143', '18', '所属分组', 'group_name', '1', '1', '0', null, '', '0', '0', 'center', '', '', '', '', '5', '', '', null, null, null, null);
INSERT INTO `cd_field` VALUES ('144', '19', '编号', 'group_id', '1', '1', '1', null, '', '0', '0', 'center', '', '', '', '', '1', '', '', null, null, null, null);
INSERT INTO `cd_field` VALUES ('145', '19', '名称', 'name', '1', '1', '0', null, '', '1', '0', 'center', '', '名称不能为空', 'notEmpty', '', '2', '', '', null, null, null, null);
INSERT INTO `cd_field` VALUES ('146', '19', '状态', 'status', '3', '1', '0', null, '正常|10|primary,禁用|0|danger', '1', '0', 'center', '', '', '', '', '3', '', '', null, null, null, null);
INSERT INTO `cd_field` VALUES ('147', '19', '类别', 'role', '3', '1', '0', null, '普通管理员|2|success,超级管理员|1|primary', '1', '0', 'center', '', '', '', '', '4', '', '', null, null, null, null);
INSERT INTO `cd_field` VALUES ('187', '52', '编号', 'log_id', '1', '1', '0', null, '', '0', '0', 'center', '', '', '', '', '1', '', '', null, null, null, null);
INSERT INTO `cd_field` VALUES ('188', '52', '用户名', 'username', '1', '1', '1', null, '', '1', '1', 'center', '', '', '', '', '188', '', '', null, null, null, null);
INSERT INTO `cd_field` VALUES ('189', '52', '操作', 'event', '1', '1', '0', null, '', '1', '1', 'center', '', '', '', '', '191', '', '', null, null, null, null);
INSERT INTO `cd_field` VALUES ('190', '52', '登录IP', 'ip', '1', '1', '0', null, '', '1', '1', 'center', '', '', '', '', '192', '', '', null, null, null, null);
INSERT INTO `cd_field` VALUES ('191', '52', '最后登录时间', 'time', '7', '1', '0', null, '', '1', '1', 'center', '', '', '', '', '193', '', '', null, null, null, null);
INSERT INTO `cd_field` VALUES ('192', '52', '昵称', 'nickname', '1', '1', '0', null, '', '0', '0', 'center', '', '', '', '', '189', '', '', null, null, null, null);
INSERT INTO `cd_field` VALUES ('193', '52', '所属分组', 'group_name', '1', '1', '0', null, '', '0', '0', 'center', '', '', '', '', '190', '', '', null, null, null, null);
INSERT INTO `cd_field` VALUES ('194', '41', '站点名称', 'site_title', '1', '0', '0', null, '', '1', '0', 'center', '', '', 'notEmpty', '', '194', '', '基本设置', '', '', '', '');
INSERT INTO `cd_field` VALUES ('195', '41', '关键词站点', 'keyword', '28', '0', '0', null, '', '1', '0', 'center', '', '', '', '', '196', '', '基本设置', '', null, null, null);
INSERT INTO `cd_field` VALUES ('196', '41', '站点描述', 'description', '6', '0', '0', null, '', '1', '0', 'center', '', '', '', '', '197', '', '基本设置', null, null, null, null);
INSERT INTO `cd_field` VALUES ('198', '41', '站点LOGO', 'site_logo', '8', '0', '0', null, '', '1', '0', 'center', '', '', '', '', '195', '', '基本设置', null, null, null, null);
INSERT INTO `cd_field` VALUES ('200', '41', '上传文件大小', 'file_size', '1', '0', '0', '0', '', '1', '0', 'center', '', '', '', '', '200', '', '上传配置', null, null, null, null);
INSERT INTO `cd_field` VALUES ('488', '41', '文件类型', 'file_type', '6', '0', '0', '0', '', '1', '0', 'center', '', '', '', '', '488', '', '上传配置', null, null, null, null);
INSERT INTO `cd_field` VALUES ('700', '41', '绑定域名', 'domain', '1', '0', '0', '0', '', '1', '1', 'center', '上传目录绑定域名访问，请解析域名到 /public/upload目录  前面带上http://  非必填项', '', '', '', '700', '', '上传配置', '', '', '', '');
INSERT INTO `cd_field` VALUES ('1462', '41', '站点版权', 'copyright', '1', null, '0', null, '', '1', null, 'center', '', '', '', '', '1462', null, '基本设置', '', null, null, null);
INSERT INTO `cd_field` VALUES ('3213', '793', '编号', 'member_id', '1', '1', '0', null, null, '0', '1', 'center', null, null, null, null, '1', null, null, null, 'int', '11', null);
INSERT INTO `cd_field` VALUES ('3214', '793', '呢称', 'nickname', '1', '1', '1', '0', '', '1', '1', 'center', '', '', '', '', '3214', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3215', '793', '头像', 'headimgurl', '8', '1', '1', '0', '', '1', '1', 'center', '', '', '', '', '3215', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3216', '793', 'openid', 'openid', '1', '1', '1', '0', '', '1', '1', 'center', '', '', '', '', '3216', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3217', '793', '手机号', 'mobile', '1', '1', '1', '0', '', '1', '1', 'center', '', '', '', '/^1[345678]\\\\d{9}$/', '3217', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3218', '794', '编号', 'member_id', '1', '1', '0', null, null, '0', '0', 'center', null, null, null, null, '1', null, null, null, 'int', '11', null);
INSERT INTO `cd_field` VALUES ('3219', '794', '呢称', 'nickname', '1', '1', '1', '0', '', '1', '0', 'center', '', '', '', '', '3214', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3220', '794', '头像', 'headimgurl', '8', '1', '1', '0', '', '1', '0', 'center', '', '', '', '', '3215', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3221', '794', 'openid', 'openid', '1', '1', '1', '0', '', '1', '1', 'center', '', '', '', '', '3216', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3222', '794', '手机号', 'mobile', '1', '1', '1', '0', '', '1', '0', 'center', '', '', '', '/^1[345678]\\\\d{9}$/', '3217', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3223', '793', '用户名', 'username', '1', '1', '1', '0', '', '1', '1', 'center', '', '', '', '', '3223', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3224', '793', '密码', 'password', '5', '1', '0', '0', '', '1', '1', 'center', '', '', '', '', '3224', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3225', '797', '手机号', 'mobile', '1', '1', '1', '0', '手机号', '1', '1', 'center', null, '手机号不正确', '', '/^1[1-9]\\\\d{9}$/', '3226', '', null, '', 'varchar', '11', '');
INSERT INTO `cd_field` VALUES ('3226', '797', '居住地址', 'first_address', '1', '1', '0', '1', '第一居住地址', '1', '1', 'center', null, '请输入居住地址', 'notEmpty', '', '3227', '', null, '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3227', '797', '第二居住地址', 'second_address', '1', '1', '0', '1', '第二居住地址', '1', '1', 'center', null, '', '', '', '3228', '', null, '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3228', '797', '工作或学习单位', 'job', '1', '1', '0', '1', '工作或学习单位', '1', '1', 'center', null, '', '', '', '3230', '', null, '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3229', '797', '疫区', 'yiqu', '20', '1', '0', '0', '30日内是否来自疫区,1是,2否', '1', '1', 'center', null, '', 'notEmpty', '', '3231', '', null, '2', 'tinyint', '4', '');
INSERT INTO `cd_field` VALUES ('3230', '797', '登记类型', 'register_type', '20', '1', '1', '0', '登记类型默认1村居,2乡镇社区,3区县,4交通运输,5校园', '1', '1', 'center', null, '登记类型错误', 'notEmpty', '/^[0-9]*$/', '3232', '', null, '1', 'int', '11', '');
INSERT INTO `cd_field` VALUES ('3231', '797', '健康状况', 'health', '20', '1', '1', '0', '健康状况默认1健康,2异常,3其他', '1', '1', 'center', null, '', 'notEmpty', '/^[0-9]*$/', '3233', '', null, '1', 'tinyint', '4', '');
INSERT INTO `cd_field` VALUES ('3232', '797', '漫游地截图', 'manyou', '8', '1', '0', '0', '漫游地截图', '1', '1', 'center', null, '', '', '', '3235', '', null, '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3233', '797', '证明图片', 'txz', '8', '1', '0', '0', '证明图片', '1', '1', 'center', null, '', '', '', '3258', '', null, '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3315', '804', '编号', 'regpoint_id', '1', '1', '0', null, null, '0', '1', 'center', null, null, null, null, '1', null, null, null, 'int', '11', null);
INSERT INTO `cd_field` VALUES ('3235', '797', '创建时间', 'create_time', '12', '1', '1', '0', '', '1', '1', 'center', null, '', 'notEmpty', '', '3259', '', null, '0', 'int', '11', '');
INSERT INTO `cd_field` VALUES ('3236', '794', '用户名', 'username', '1', '1', '1', '0', '', '1', '0', 'center', null, '', '', '', '3236', '', null, '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3237', '794', '密码', 'password', '5', '1', '0', '0', '', '1', '0', 'center', null, '', '', '', '3237', '', null, '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3238', '793', '注册时间', 'create_time', '7', '1', '1', '0', '', '1', '1', 'center', '', '', '', '', '3238', '', '', '', 'int', '11', '');
INSERT INTO `cd_field` VALUES ('3239', '793', '性别', 'sex', '3', '1', '1', '0', '男|1|success,女|2|warning', '1', '1', 'center', '', '', '', '', '3239', '', '', '', 'smallint', '6', '');
INSERT INTO `cd_field` VALUES ('3240', '793', '状态', 'status', '23', '1', '1', '0', '开启|1,关闭|0', '1', '1', 'center', '', '', '', '', '3240', '', '', '', 'tinyint', '4', '');
INSERT INTO `cd_field` VALUES ('3241', '794', '性别', 'sex', '3', '1', '1', '0', '', '1', '0', 'center', null, '', '', '', '3241', '', null, '', 'smallint', '6', '');
INSERT INTO `cd_field` VALUES ('3242', '794', '状态', 'status', '23', '1', '1', '0', '', '1', '0', 'center', null, '', '', '', '3242', '', null, '', 'tinyint', '4', '');
INSERT INTO `cd_field` VALUES ('3243', '794', '创建时间', 'create_time', '7', '1', '1', '0', '', '1', '0', 'center', null, '', '', '', '3243', '', null, '', 'int', '11', '');
INSERT INTO `cd_field` VALUES ('3244', '793', '所属用户', 'user_id', '15', '1', '1', '0', '', '1', '1', 'center', '', '', '', '', '3244', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3245', '794', '所属用户', 'user_id', '15', '1', '1', '0', '', '1', '0', 'center', null, '', '', '', '3245', '', null, '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3309', '802', 'openid', 'openid', '1', '0', '0', '0', '', '1', '0', 'center', '', '', '', '', '3309', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3307', '802', '所属用户', 'user_id', '15', '1', '1', '0', '', '1', '0', 'center', '', '', '', '', '3262', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3304', '802', '登记时间', 'create_time', '12', '1', '1', '0', '', '1', '0', 'center', '', '', 'notEmpty', '', '3259', '', '', '0', 'int', '11', '');
INSERT INTO `cd_field` VALUES ('3305', '802', '经度', 'lat', '1', '0', '0', '0', '', '1', '0', 'center', null, '', '', '', '3260', '', null, '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3306', '802', '纬度', 'lng', '1', '0', '0', '0', '', '1', '0', 'center', null, '', '', '', '3261', '', null, '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3303', '802', '通行证截图', 'txz', '8', '0', '0', '0', '通行证截图', '1', '0', 'center', '', '', '', '', '3258', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3302', '802', '漫游地截图', 'manyou', '8', '1', '0', '0', '漫游地截图', '1', '0', 'center', null, '', '', '', '3235', '', null, '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3300', '802', '登记类型', 'register_type', '3', '1', '1', '0', '学生|1,教职工|2,生活服务人员|3,快递员|4,其他|5', '1', '1', 'center', '', '登记类型错误', '', '/^[0-9]*$/', '3232', '', '', '1', 'smallint', '6', '');
INSERT INTO `cd_field` VALUES ('3299', '802', '是否来自疫区', 'yiqu', '3', '1', '1', '0', '是|1,否|2', '1', '1', 'center', '', '', '', '', '3231', '', '', '2', 'smallint', '6', '');
INSERT INTO `cd_field` VALUES ('3258', '797', '姓名', 'name', '1', '1', '1', '0', '', '1', '0', 'center', null, '', 'notEmpty', '', '3225', '', null, '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3259', '797', '当前位置', 'position', '1', '1', '1', '0', '', '1', '0', 'center', null, '', 'notEmpty', '', '3229', '', null, '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3301', '802', '健康状况', 'health', '3', '1', '1', '0', '健康|1|primary,发热|2|danger,发热咳嗽|3|danger,头晕乏力|4|warning,腹泻|5|warning,其他|6|warning', '1', '1', 'center', '', '', 'notEmpty', '/^[0-9]*$/', '3233', '', '', '1', 'smallint', '6', '');
INSERT INTO `cd_field` VALUES ('3260', '797', '经度', 'lat', '1', '0', '0', '0', '', '1', '1', 'center', null, '', '', '', '3260', '', null, '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3261', '797', '纬度', 'lng', '1', '0', '0', '0', '', '1', '1', 'center', null, '', '', '', '3261', '', null, '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3262', '797', '所属用户', 'user_id', '15', '1', '0', '0', '', '1', '1', 'center', null, '', '', '', '3262', '', null, '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3310', '803', '编号', 'lock_id', '1', '1', '0', null, null, '0', '1', 'center', null, null, null, null, '1', null, null, null, 'int', '11', null);
INSERT INTO `cd_field` VALUES ('3311', '803', '锁名称', 'lockname', '1', '1', '1', '0', '', '1', '1', 'center', '', '', 'notEmpty', '', '3313', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3312', '803', '序列号', 'sn', '1', '1', '1', '0', '', '1', '1', 'center', '', '', 'notEmpty', '', '3314', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3308', '797', 'openid', 'openid', '1', null, '1', '0', '', '1', '1', null, null, '', '', '', '3308', '', null, '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3298', '802', '班级或工号', 'job', '1', '1', '0', '1', '', '1', '0', 'center', '', '', '', '', '3230', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3297', '802', '当前位置', 'position', '1', '1', '0', '0', '', '1', '0', 'center', '', '', 'notEmpty', '', '3229', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3296', '802', '院系(部门)', 'second_address', '1', '1', '0', '1', '', '1', '0', 'center', '', '', '', '', '3228', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3295', '802', '家庭地址', 'first_address', '1', '1', '0', '1', '', '1', '0', 'center', '', '请输入居住地址', 'notEmpty', '', '3227', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3293', '802', '姓名', 'name', '1', '1', '1', '0', '', '1', '0', 'center', '', '', 'notEmpty', '', '3225', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3294', '802', '手机号', 'mobile', '1', '1', '1', '0', '', '1', '0', 'center', '', '手机号不正确', '', '/^1[1-9]\\\\d{9}$/', '3226', '', '', '', 'varchar', '11', '');
INSERT INTO `cd_field` VALUES ('3313', '803', '会员ID', 'member_id', '20', '1', '1', '0', '', '1', '1', 'center', '', '', '', '', '3311', '', '', '', 'int', '11', '');
INSERT INTO `cd_field` VALUES ('3314', '803', '用户ID', 'user_id', '15', '1', '1', '0', '', '1', '1', 'center', '', '', '', '', '3312', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3316', '804', '会员ID', 'member_id', '20', '1', '1', '0', '', '1', '1', 'center', '', '', '', '', '3316', '', '', '', 'int', '11', '');
INSERT INTO `cd_field` VALUES ('3317', '804', '用户ID', 'user_id', '15', '1', '1', '0', '', '1', '1', 'center', '', '', '', '', '3317', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3318', '804', '名称', 'regpointname', '1', '1', '1', '0', '', '1', '1', 'center', '', '', '', '', '3318', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3319', '804', '注册点url', 'regpointurl', '1', '0', '0', '0', '', '0', '1', 'center', '', '', '', '', '3319', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3320', '804', '创建时间', 'create_time', '12', '1', '1', '0', '', '1', '1', 'center', '', '', '', '', '3340', '', '', '', 'int', '11', '');
INSERT INTO `cd_field` VALUES ('3321', '805', '编号', 'regpoint_id', '1', '1', '0', '0', '', '1', '1', 'center', null, '', '', '', '1', '', null, '', 'int', '11', '');
INSERT INTO `cd_field` VALUES ('3322', '805', '会员ID', 'member_id', '1', '1', '1', '0', '', '1', '1', 'center', '', '', '', '', '3316', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3323', '805', '用户ID', 'user_id', '1', '1', '1', '0', '', '1', '1', 'center', '', '', '', '', '3317', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3324', '805', '名称', 'regpointname', '1', '1', '1', '0', '', '1', '1', 'center', '', '', '', '', '3318', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3325', '805', '注册点url', 'regpointurl', '1', '1', '1', '0', '', '1', '1', 'center', '', '', '', '', '3319', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3326', '805', '创建时间', 'create_time', '12', '1', '1', '0', '', '1', '1', 'center', '', '', '', '', '3320', '', '', '', 'int', '11', '');
INSERT INTO `cd_field` VALUES ('3327', '806', '编号', 'user_id', '1', '1', '0', '0', '', '0', '0', 'center', '', '', '', '', '1', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3328', '806', '真实姓名', 'name', '1', '1', '0', null, '', '1', '0', 'center', '', '用户名不能为空', 'notEmpty', '', '2', '', '', null, null, null, null);
INSERT INTO `cd_field` VALUES ('3329', '806', '用户名', 'user', '1', '1', '1', '1', '', '1', '0', 'center', '', '用户名不能为空', 'notEmpty,unique', '', '3', '', '', '', '', '', '');
INSERT INTO `cd_field` VALUES ('3330', '806', '密码', 'pwd', '5', '0', '0', '0', '', '1', '0', 'center', '', '6-21位数字字母组合', 'notEmpty', '/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$/', '4', '', '', '', '', '', '');
INSERT INTO `cd_field` VALUES ('3331', '806', '所属分组', 'group_id', '29', '0', '1', '0', '', '1', '0', 'center', '', '', 'notEmpty', '', '5', '', '', '', 'smallint', '6', '');
INSERT INTO `cd_field` VALUES ('3332', '806', '所属分组', 'group_name', '1', '1', '0', null, '', '0', '0', 'center', '', '', '', '', '5', '', '', null, null, null, null);
INSERT INTO `cd_field` VALUES ('3333', '806', '类别', 'type', '3', '1', '1', '0', '超级管理员|1|success,普通管理员|2|warning', '1', '0', 'center', '', '', '', '', '6', '', '', '', '', '', '');
INSERT INTO `cd_field` VALUES ('3334', '806', '备注', 'note', '1', '1', '0', null, '', '1', '0', 'center', '', '', '', '', '7', '', '', null, null, null, null);
INSERT INTO `cd_field` VALUES ('3335', '806', '状态', 'status', '3', '1', '1', '0', '正常|1|primary,禁用|0|danger', '1', '0', 'center', '', '', '', '', '7', '', '', '', '', '', '');
INSERT INTO `cd_field` VALUES ('3336', '806', '创建时间', 'create_time', '12', '1', '0', '0', '', '1', '0', 'center', '', '', '', '', '3337', '', '', '', '', '', '');
INSERT INTO `cd_field` VALUES ('3337', '806', '会员ID', 'member_id', '20', null, '1', '0', '', '1', '1', null, null, '', '', '', '8', '', null, '0', 'int', '11', '');
INSERT INTO `cd_field` VALUES ('3338', '18', '会员ID', 'member_id', '20', '1', '1', '0', '', '1', '0', 'center', '', '', '', '', '8', '', '', '0', 'int', '11', '');
INSERT INTO `cd_field` VALUES ('3339', '805', '登记点二维码', 'regpointqrcode', '8', null, '1', '0', '', '1', '1', null, null, '', '', '', '3339', '', null, '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3340', '804', '登记点二维码', 'regpointqrcode', '8', '1', '1', '0', '', '1', '0', 'center', '', '', '', '', '3320', '', '', '', 'varchar', '250', '');
INSERT INTO `cd_field` VALUES ('3341', '802', '登记点ID', 'regpoint_id', '20', '0', '0', '0', '', '1', '1', 'center', '', '', '', '', '3341', '', '', '', 'int', '11', '');
INSERT INTO `cd_field` VALUES ('3342', '797', '登记点ID', 'regpoint_id', '20', null, '1', '0', '', '1', '1', null, null, '', '', '', '3342', '', null, '0', 'int', '11', '');
INSERT INTO `cd_field` VALUES ('3343', '802', '登记点', 'regpointname', '1', '1', '0', '0', '', '0', '0', 'center', '', '', '', '', '3343', '', '', '', 'varchar', '250', '');

-- ----------------------------
-- Table structure for `cd_file`
-- ----------------------------
DROP TABLE IF EXISTS `cd_file`;
CREATE TABLE `cd_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filepath` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `hash` varchar(32) DEFAULT NULL COMMENT '文件hash值',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cd_file
-- ----------------------------

-- ----------------------------
-- Table structure for `cd_group`
-- ----------------------------
DROP TABLE IF EXISTS `cd_group`;
CREATE TABLE `cd_group` (
  `group_id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(36) DEFAULT NULL COMMENT '分组名称',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 10正常 0禁用',
  `role` tinyint(4) DEFAULT NULL COMMENT '角色类别 1超级管理员 2普通管理员',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cd_group
-- ----------------------------
INSERT INTO `cd_group` VALUES ('1', '超级管理员', '10', '1');
INSERT INTO `cd_group` VALUES ('3', '客服人员', '10', '2');
INSERT INTO `cd_group` VALUES ('7', '健康登记管理员', '10', '2');

-- ----------------------------
-- Table structure for `cd_health`
-- ----------------------------
DROP TABLE IF EXISTS `cd_health`;
CREATE TABLE `cd_health` (
  `health_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
  `first_address` varchar(250) DEFAULT NULL COMMENT '居住地址',
  `second_address` varchar(250) DEFAULT NULL COMMENT '院系(部门)',
  `job` varchar(250) DEFAULT NULL COMMENT '班级或工号',
  `yiqu` smallint(6) DEFAULT NULL COMMENT '是否来自疫区',
  `register_type` smallint(6) DEFAULT NULL COMMENT '登记类型',
  `health` smallint(6) DEFAULT NULL COMMENT '健康状况',
  `manyou` varchar(250) NOT NULL DEFAULT '' COMMENT '漫游地截图',
  `txz` varchar(250) DEFAULT NULL COMMENT '证明图片',
  `ctime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `name` varchar(250) DEFAULT NULL COMMENT '姓名',
  `position` varchar(250) DEFAULT NULL COMMENT '定位地址',
  `lat` varchar(250) DEFAULT NULL COMMENT '经度',
  `lng` varchar(250) DEFAULT NULL COMMENT '纬度',
  `user_id` varchar(250) DEFAULT NULL COMMENT '所属用户',
  `openid` varchar(250) DEFAULT NULL COMMENT 'openid',
  `regpoint_id` int(11) DEFAULT NULL COMMENT '登记点ID',
  PRIMARY KEY (`health_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cd_health
-- ----------------------------
INSERT INTO `cd_health` VALUES ('78', '18985111111', '贵阳市南明区车水路国际城', '观山湖区石林西路2号', '贵阳', '2', '1', '1', '/uploads/api/202002/5e577858a9b15.jpg', '/uploads/api/202002/5e5879c24eb2b.jpg', '0', '1582999054', '段老师', '中国铁建·国际城观水苑(贵阳市南明区)', '26.546335', '106.68209', '0', 'oEHaL5QAnS950cUlcBs2XIs981hw', '0');
INSERT INTO `cd_health` VALUES ('79', '18985111111', '贵阳市南明区车水路国际城', '组织部', '2011222301', '2', '1', '1', '/uploads/api/202002/5e577858a9b15.jpg', '/uploads/api/202002/5e5879c24eb2b.jpg', '0', '1582999114', '段老师', '中国铁建·国际城观水苑(贵阳市南明区)', '26.546335', '106.68209', '0', 'oEHaL5QAnS950cUlcBs2XIs981hw', '0');
INSERT INTO `cd_health` VALUES ('80', '18985111111', '贵阳市南明区车水路国际城', '组织部', '2011222301', '2', '2', '1', '/uploads/api/202002/5e577858a9b15.jpg', '/uploads/api/202002/5e5879c24eb2b.jpg', '0', '1582999145', '段老师', '中国铁建·国际城观水苑(贵阳市南明区)', '26.546335', '106.68209', '0', 'oEHaL5QAnS950cUlcBs2XIs981hw', '0');
INSERT INTO `cd_health` VALUES ('81', '18908510851', '贵州省贵阳市观山湖区石林西路2号', '护理系', '社区护理19309班', '2', '1', '1', '/uploads/api/202002/5e577858a9b15.jpg', '/uploads/api/202002/5e5879c24eb2b.jpg', '0', '1583001261', '张三', '贵阳护理职业学院', '26.6141', '106.6035', '0', 'oEHaL5QAnS950cUlcBs2XIs981hw', '0');

-- ----------------------------
-- Table structure for `cd_lock`
-- ----------------------------
DROP TABLE IF EXISTS `cd_lock`;
CREATE TABLE `cd_lock` (
  `lock_id` int(11) NOT NULL AUTO_INCREMENT,
  `lockname` varchar(250) DEFAULT NULL COMMENT '名称',
  `sn` varchar(250) DEFAULT NULL COMMENT '序列号',
  `member_id` int(11) DEFAULT NULL COMMENT '会员ID',
  `user_id` varchar(250) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`lock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cd_lock
-- ----------------------------

-- ----------------------------
-- Table structure for `cd_log`
-- ----------------------------
DROP TABLE IF EXISTS `cd_log`;
CREATE TABLE `cd_log` (
  `log_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `username` varchar(250) DEFAULT NULL,
  `event` varchar(250) DEFAULT NULL,
  `ip` varchar(250) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cd_log
-- ----------------------------
INSERT INTO `cd_log` VALUES ('83', '1', 'admin', '用户登录', '111.121.9.146', '1582891798');
INSERT INTO `cd_log` VALUES ('84', '1', 'admin', '用户登录', '111.121.9.146', '1582904078');
INSERT INTO `cd_log` VALUES ('85', '1', 'admin', '用户登录', '117.188.19.181', '1582951010');
INSERT INTO `cd_log` VALUES ('86', '1', 'admin', '用户登录', '111.121.43.2', '1582994712');
INSERT INTO `cd_log` VALUES ('87', '1', 'admin', '用户登录', '111.121.43.2', '1582999998');
INSERT INTO `cd_log` VALUES ('88', '1', 'admin', '用户登录', '111.121.43.2', '1583000090');

-- ----------------------------
-- Table structure for `cd_member`
-- ----------------------------
DROP TABLE IF EXISTS `cd_member`;
CREATE TABLE `cd_member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(250) DEFAULT NULL COMMENT '呢称',
  `headimgurl` varchar(250) DEFAULT NULL COMMENT '头像',
  `openid` varchar(250) DEFAULT NULL COMMENT 'openid',
  `mobile` varchar(250) DEFAULT NULL COMMENT '手机号',
  `username` varchar(250) DEFAULT NULL COMMENT '用户名',
  `password` varchar(250) DEFAULT NULL COMMENT '密码',
  `create_time` int(11) DEFAULT NULL COMMENT '注册时间',
  `sex` smallint(6) DEFAULT NULL COMMENT '性别',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `user_id` varchar(250) DEFAULT NULL COMMENT '所属用户',
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cd_member
-- ----------------------------
INSERT INTO `cd_member` VALUES ('144', '林湘桦', 'https://wx.qlogo.cn/mmhead/xVWwkP4YQKQTsEcc3KfAwRhsurnfM1arKGa0jRRpaPQ/132', 'oEHaL5Uc7oo0fzrwGoDwE5nhgYGc', null, 'oEHaL5Uc7oo0fzrwGoDwE5nhgYGc', 'e10382a33b80bfc0c228ea321d63cbf0', '1582995496', '0', '1', null);
INSERT INTO `cd_member` VALUES ('145', '大西洋', 'https://wx.qlogo.cn/mmopen/vi_32/tbxWUlTvlazj0AUMYLyjbH2VSCkJiaGacF5gIotyvtavibiaPs5NqnMqxgneWhsZ5D4ak1X4C3dq2sJyV7bPc2rOg/132', 'oEHaL5QAnS950cUlcBs2XIs981hw', '18985111111', 'oEHaL5QAnS950cUlcBs2XIs981hw', '7a47a8909beb2d2972a3bb1e66c16e3e', '1582999641', '1', '1', null);
INSERT INTO `cd_member` VALUES ('146', '圆圆', 'https://wx.qlogo.cn/mmopen/vi_32/5vKxWnbQcLiaucweBEqpdoyuWwVQZEGZj2835utRpHCOTVQkquzm2MVb76RzMlpjJdoRo61gh3KlIdicPhiaEHUAA/132', 'oEHaL5cZURXEkazWAXQ6jNfjr9S8', null, 'oEHaL5cZURXEkazWAXQ6jNfjr9S8', 'e931740718c40294705d0079a2580c64', '1583006161', '2', '1', null);

-- ----------------------------
-- Table structure for `cd_menu`
-- ----------------------------
DROP TABLE IF EXISTS `cd_menu`;
CREATE TABLE `cd_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` mediumint(9) DEFAULT '0' COMMENT '父级id',
  `controller_name` varchar(32) DEFAULT NULL COMMENT '模块名称',
  `title` varchar(64) DEFAULT NULL COMMENT '模块标题',
  `pk_id` varchar(36) DEFAULT NULL COMMENT '主键名',
  `table_name` varchar(32) DEFAULT NULL COMMENT '模块数据库表',
  `is_create` tinyint(4) DEFAULT NULL COMMENT '是否允许生成模块',
  `status` tinyint(4) DEFAULT NULL COMMENT '0隐藏 10显示',
  `sortid` mediumint(9) DEFAULT '0' COMMENT '排序号',
  `table_status` tinyint(4) DEFAULT NULL COMMENT '是否生成数据库表',
  `is_url` tinyint(4) DEFAULT NULL COMMENT '是否只是url链接',
  `url` varchar(64) DEFAULT NULL,
  `menu_icon` varchar(32) DEFAULT NULL COMMENT 'icon字体图标',
  `tab_menu` varchar(250) DEFAULT NULL COMMENT 'tab选项卡菜单配置',
  `app_id` int(11) DEFAULT NULL COMMENT '所属模块',
  `is_submit` tinyint(4) DEFAULT NULL COMMENT '是否允许投稿',
  PRIMARY KEY (`menu_id`),
  KEY `controller_name` (`controller_name`) USING BTREE,
  KEY `module_id` (`app_id`)
) ENGINE=MyISAM AUTO_INCREMENT=807 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cd_menu
-- ----------------------------
INSERT INTO `cd_menu` VALUES ('12', '0', 'Sys', '系统管理', '', '', '0', '1', '793', '0', '0', '', 'fa fa-gears', '', '1', null);
INSERT INTO `cd_menu` VALUES ('17', '12', '', '后台首页', '', '', '0', '1', '2', '0', '1', '/admin/Index/main.html', 'fa fa-home', '', '1', '0');
INSERT INTO `cd_menu` VALUES ('18', '12', 'User', '用户管理', 'user_id', 'user', '1', '1', '4', '1', '0', '', 'fa fa-user-secret', '', '1', '0');
INSERT INTO `cd_menu` VALUES ('19', '12', 'Group', '分组管理', 'group_id', 'group', '1', '1', '5', '1', '0', '', 'fa fa-user', '', '1', null);
INSERT INTO `cd_menu` VALUES ('21', '12', '', '菜单管理', '', '', '0', '0', '3', '0', '1', '/admin/Menu/index?app_id=1', '', '', '1', null);
INSERT INTO `cd_menu` VALUES ('41', '12', 'Config', '系统配置', '', '', '1', '1', '7', '0', '0', '', 'glyphicon glyphicon-cog', '基本设置|上传配置', '1', '0');
INSERT INTO `cd_menu` VALUES ('52', '12', 'Log', '登录日志', 'log_id', 'log', '1', '1', '6', '1', '0', '', 'glyphicon glyphicon-log-in', '', '1', null);
INSERT INTO `cd_menu` VALUES ('80', '12', 'Application', '应用管理', '', '', '0', '0', '1', '0', '0', '', '', '', '1', null);
INSERT INTO `cd_menu` VALUES ('524', '12', '', '修改密码', '', '', '0', '1', '8', '0', null, '/admin/Base/password', '', '', '1', '0');
INSERT INTO `cd_menu` VALUES ('525', '12', '', '数据备份', '', '', '0', '1', '9', '0', null, '/admin/Backup/index', '', '', '1', '0');
INSERT INTO `cd_menu` VALUES ('793', '0', 'Member', '会员管理', 'member_id', 'member', '1', '1', '793', '1', null, '', '', '', '1', '0');
INSERT INTO `cd_menu` VALUES ('794', '0', 'Member', '会员管理', 'member_id', 'member', '1', '1', '797', '0', null, '', '', '', '179', '0');
INSERT INTO `cd_menu` VALUES ('797', '0', 'Health', '健康登记', 'health_id', 'health', '1', null, '798', '1', null, null, null, null, '179', null);
INSERT INTO `cd_menu` VALUES ('803', '0', 'Lock', '门锁管理', 'lock_id', 'lock', '1', '0', '803', '1', null, '', '', '', '1', '0');
INSERT INTO `cd_menu` VALUES ('802', '0', 'Health', '健康登记', 'health_id', 'health', '1', '1', '798', '0', null, '', '', '', '1', '0');
INSERT INTO `cd_menu` VALUES ('804', '0', 'Regpoint', '登记点管理', 'regpoint_id', 'regpoint', '1', '1', '804', '1', null, '', '', '', '1', '0');
INSERT INTO `cd_menu` VALUES ('805', '0', 'Regpoint', '登记点管理', 'regpoint_id', 'regpoint', '1', '1', '804', '0', null, '', '', '', '179', '0');
INSERT INTO `cd_menu` VALUES ('806', '0', 'User', '用户管理', 'user_id', 'user', '1', '1', '4', '0', '0', '', 'fa fa-user-secret', '', '179', '0');

-- ----------------------------
-- Table structure for `cd_regpoint`
-- ----------------------------
DROP TABLE IF EXISTS `cd_regpoint`;
CREATE TABLE `cd_regpoint` (
  `regpoint_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `member_id` varchar(250) DEFAULT NULL COMMENT '会员ID',
  `user_id` varchar(250) DEFAULT NULL COMMENT '用户ID',
  `regpointname` varchar(250) DEFAULT NULL COMMENT '名称',
  `regpointurl` varchar(250) DEFAULT NULL COMMENT '注册点url',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `regpointqrcode` varchar(250) DEFAULT NULL COMMENT '登记点二维码',
  PRIMARY KEY (`regpoint_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cd_regpoint
-- ----------------------------
INSERT INTO `cd_regpoint` VALUES ('33', '114', '36', '学校食堂', 'https://wxapp.wmj.com.cn/miniprogram?user_id=', '1582864337', '');
INSERT INTO `cd_regpoint` VALUES ('34', '35', '32', '校园大门', 'https://wxapp.wmj.com.cn/miniprogram?user_id=', '1582892191', '');
INSERT INTO `cd_regpoint` VALUES ('35', '145', '37', '一号宿舍楼', 'https://wxapp.wmj.com.cn/miniprogram?user_id=', '1583000622', '');

-- ----------------------------
-- Table structure for `cd_user`
-- ----------------------------
DROP TABLE IF EXISTS `cd_user`;
CREATE TABLE `cd_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(24) DEFAULT NULL COMMENT '姓名',
  `user` varchar(24) DEFAULT NULL COMMENT '登录用户名',
  `pwd` varchar(32) DEFAULT NULL COMMENT '登录密码',
  `group_id` tinyint(4) DEFAULT NULL COMMENT '所属分组ID',
  `type` tinyint(4) DEFAULT NULL COMMENT '账户类型 1超级管理员 2普通管理员',
  `note` varchar(128) DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) DEFAULT NULL COMMENT '10正常 0禁用',
  `create_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `member_id` int(11) DEFAULT NULL COMMENT '会员ID',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cd_user
-- ----------------------------
INSERT INTO `cd_user` VALUES ('1', '极客老师', 'admin', '6a5888d05ceb8033ebf0a3dfbf2b416e', '1', '1', '超级管理员', '1', '1548558919', null);
