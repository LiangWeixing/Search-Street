/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : search_street

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-12-22 10:57:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_appeal
-- ----------------------------
DROP TABLE IF EXISTS `tb_appeal`;
CREATE TABLE `tb_appeal` (
  `appeal_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '求助id',
  `user_id` int(10) NOT NULL COMMENT '用户id',
  `appeal_img` varchar(1024) DEFAULT NULL COMMENT '求助相关图片',
  `appeal_title` varchar(32) NOT NULL COMMENT '求助标题',
  `appeal_desc` varchar(128) NOT NULL COMMENT '求助描述',
  `appeal_content` varchar(512) NOT NULL COMMENT '求助内容',
  `province` varchar(32) NOT NULL COMMENT '省份',
  `city` varchar(32) NOT NULL COMMENT '城市',
  `district` varchar(32) NOT NULL COMMENT '地区',
  `full_address` varchar(200) NOT NULL COMMENT '详细地址',
  `sou_coin` int(10) NOT NULL COMMENT '回报的搜币',
  `appeal_status` int(2) NOT NULL DEFAULT '0' COMMENT '求助的状态（0不确定帮助对象，1已确定帮助对象，2已完成,3已删除）',
  `coordinate_x` float NOT NULL COMMENT '定位的纬度',
  `coordinate_y` float NOT NULL COMMENT '定位的经度',
  `start_time` datetime NOT NULL COMMENT '开始时间',
  `end_time` datetime NOT NULL COMMENT '结束时间',
  PRIMARY KEY (`appeal_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='寻帮助';

-- ----------------------------
-- Table structure for tb_help
-- ----------------------------
DROP TABLE IF EXISTS `tb_help`;
CREATE TABLE `tb_help` (
  `help_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '帮助id\n',
  `appeal_id` int(10) NOT NULL COMMENT '求助id\n',
  `user_id` int(10) NOT NULL COMMENT '用户id\n',
  `help_status` int(2) NOT NULL DEFAULT '0' COMMENT '帮助状态（0求助用户未确定帮助对象，1已接受帮助，2未接受帮助，3已结束）\n',
  `completion` int(2) DEFAULT NULL COMMENT '完成度评分',
  `efficiency` int(2) DEFAULT NULL COMMENT '效率评分',
  `attitude` int(2) DEFAULT NULL COMMENT '态度评分',
  `additional_coin` int(10) DEFAULT NULL COMMENT '追赏金',
  PRIMARY KEY (`help_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='帮把手';

-- ----------------------------
-- Table structure for tb_local_auth
-- ----------------------------
DROP TABLE IF EXISTS `tb_local_auth`;
CREATE TABLE `tb_local_auth` (
  `local_auth_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `user_name` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  PRIMARY KEY (`local_auth_id`),
  UNIQUE KEY `uk_local_profile` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `service_id` int(10) NOT NULL COMMENT '服务id',
  `user_id` int(10) NOT NULL COMMENT '用户id',
  `service_count` int(10) NOT NULL COMMENT '服务数量',
  `order_status` int(2) NOT NULL DEFAULT '0' COMMENT '订单状态（0已下单，1完成订单，2已取消订单,3已删除）',
  `create_time` datetime DEFAULT NULL COMMENT '订单创建时间',
  `over_time` datetime DEFAULT NULL COMMENT '订单结束时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='订单表';

-- ----------------------------
-- Table structure for tb_person_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_person_info`;
CREATE TABLE `tb_person_info` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) DEFAULT NULL,
  `profile_img` varchar(1024) DEFAULT NULL,
  `email` varchar(1024) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `age` int(3) unsigned DEFAULT '0',
  `phone` varchar(15) DEFAULT NULL,
  `sou_coin` int(10) unsigned DEFAULT '0',
  `user_type` int(2) NOT NULL DEFAULT '0' COMMENT '0:普通用户，1:管理员',
  `enable_status` int(2) NOT NULL DEFAULT '1' COMMENT '0:禁止使用搜街，1:允许使用搜街',
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_service
-- ----------------------------
DROP TABLE IF EXISTS `tb_service`;
CREATE TABLE `tb_service` (
  `service_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '服务id',
  `shop_id` int(10) NOT NULL COMMENT '店铺id',
  `service_name` varchar(64) NOT NULL COMMENT '服务名称',
  `service_price` int(10) NOT NULL COMMENT '服务价格',
  `service_desc` varchar(256) DEFAULT NULL COMMENT '服务描述',
  `service_content` varchar(1024) DEFAULT NULL COMMENT '服务内容',
  `service_img` varchar(1024) DEFAULT NULL COMMENT '服务相关图片',
  PRIMARY KEY (`service_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='服务表单';

-- ----------------------------
-- Table structure for tb_shop
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop`;
CREATE TABLE `tb_shop` (
  `shop_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `shop_name` varchar(64) NOT NULL,
  `shop_img` varchar(1024) DEFAULT NULL,
  `business_license_code` varchar(128) DEFAULT NULL,
  `business_license_img` varchar(1024) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `province` varchar(64) NOT NULL,
  `city` varchar(64) NOT NULL,
  `district` varchar(64) NOT NULL,
  `full_address` varchar(255) NOT NULL,
  `shop_more_info` varchar(255) DEFAULT NULL,
  `is_mobile` int(2) NOT NULL DEFAULT '1',
  `open_time` datetime DEFAULT NULL,
  `close_time` datetime DEFAULT NULL,
  `profile_img` varchar(1024) NOT NULL,
  `coordinate_x` float NOT NULL,
  `coordinate_y` float NOT NULL,
  `enable_status` int(2) NOT NULL DEFAULT '0',
  `business_scope` varchar(128) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_shop_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop_comment`;
CREATE TABLE `tb_shop_comment` (
  `shop_comment_id` int(10) NOT NULL AUTO_INCREMENT,
  `shop_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `comment_content` varchar(512) DEFAULT NULL,
  `service_rating` int(3) unsigned NOT NULL,
  `star_rating` int(1) unsigned NOT NULL,
  PRIMARY KEY (`shop_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_wechat_auth
-- ----------------------------
DROP TABLE IF EXISTS `tb_wechat_auth`;
CREATE TABLE `tb_wechat_auth` (
  `wechat_auth_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `open_id` varchar(1024) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`wechat_auth_id`),
  UNIQUE KEY `uk_wechat_profile` (`open_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
