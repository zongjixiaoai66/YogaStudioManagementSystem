/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t371`;
CREATE DATABASE IF NOT EXISTS `t371` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t371`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2023-02-23 03:05:53'),
	(2, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2023-02-23 03:05:53'),
	(3, 'taochan_types', '套餐类型', 1, '套餐类型1', NULL, NULL, '2023-02-23 03:05:53'),
	(4, 'taochan_types', '套餐类型', 2, '套餐类型2', NULL, NULL, '2023-02-23 03:05:53'),
	(5, 'taochan_types', '套餐类型', 3, '套餐类型3', NULL, NULL, '2023-02-23 03:05:53'),
	(6, 'taochan_order_types', '订单类型', 101, '已支付', NULL, NULL, '2023-02-23 03:05:53'),
	(7, 'taochan_order_types', '订单类型', 102, '退款', NULL, NULL, '2023-02-23 03:05:53'),
	(8, 'taochan_order_types', '订单类型', 103, '已确定', NULL, NULL, '2023-02-23 03:05:53'),
	(9, 'taochan_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2023-02-23 03:05:53'),
	(10, 'yujia_types', '瑜伽类型', 1, '瑜伽类型1', NULL, NULL, '2023-02-23 03:05:53'),
	(11, 'yujia_types', '瑜伽类型', 2, '瑜伽类型2', NULL, NULL, '2023-02-23 03:05:53'),
	(12, 'yujia_types', '瑜伽类型', 3, '瑜伽类型3', NULL, NULL, '2023-02-23 03:05:53'),
	(13, 'yujia_order_types', '订单类型', 101, '已支付', NULL, NULL, '2023-02-23 03:05:53'),
	(14, 'yujia_order_types', '订单类型', 102, '取消预约', NULL, NULL, '2023-02-23 03:05:53'),
	(15, 'yujia_order_types', '订单类型', 103, '已完成', NULL, NULL, '2023-02-23 03:05:53'),
	(16, 'yujia_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2023-02-23 03:05:53'),
	(17, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-02-23 03:05:53'),
	(18, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-02-23 03:05:53'),
	(19, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2023-02-23 03:05:53'),
	(20, 'ticebaogao_types', '报告类型', 1, '报告类型1', NULL, NULL, '2023-02-23 03:05:53'),
	(21, 'ticebaogao_types', '报告类型', 2, '报告类型2', NULL, NULL, '2023-02-23 03:05:53'),
	(22, 'ticebaogao_types', '报告类型', 3, '报告类型3', NULL, NULL, '2023-02-23 03:05:53'),
	(23, 'sex_types', '性别', 1, '男', NULL, NULL, '2023-02-23 03:05:53'),
	(24, 'sex_types', '性别', 2, '女', NULL, NULL, '2023-02-23 03:05:53'),
	(25, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-02-23 03:05:54'),
	(26, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-02-23 03:05:54');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='交流平台';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, '发布内容1', 125, 1, '2023-02-23 03:06:42', '2023-02-23 03:06:42', '2023-02-23 03:06:42'),
	(2, '帖子标题2', 1, NULL, '发布内容2', 242, 1, '2023-02-23 03:06:42', '2023-02-23 03:06:42', '2023-02-23 03:06:42'),
	(3, '帖子标题3', 3, NULL, '发布内容3', 298, 1, '2023-02-23 03:06:42', '2023-02-23 03:06:42', '2023-02-23 03:06:42'),
	(4, '帖子标题4', 2, NULL, '发布内容4', 244, 1, '2023-02-23 03:06:42', '2023-02-23 03:06:42', '2023-02-23 03:06:42'),
	(5, '帖子标题5', 2, NULL, '发布内容5', 233, 1, '2023-02-23 03:06:42', '2023-02-23 03:06:42', '2023-02-23 03:06:42'),
	(8, NULL, 1, NULL, '123', 5, 2, '2023-02-23 06:04:21', NULL, '2023-02-23 06:04:21'),
	(9, NULL, NULL, 1, '123123123', 5, 2, '2023-02-23 06:06:08', NULL, '2023-02-23 06:06:08'),
	(10, NULL, 1, NULL, '666', 5, 2, '2024-08-12 06:51:39', NULL, '2024-08-12 06:51:39');

DROP TABLE IF EXISTS `jiaolian`;
CREATE TABLE IF NOT EXISTS `jiaolian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaolian_name` varchar(200) DEFAULT NULL COMMENT '教练姓名 Search111 ',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `jiaolian_photo` varchar(200) DEFAULT NULL COMMENT '教练头像',
  `jiaolian_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaolian_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiaolian_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `jiaolian_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='教练';

DELETE FROM `jiaolian`;
INSERT INTO `jiaolian` (`id`, `username`, `password`, `jiaolian_name`, `sex_types`, `jiaolian_photo`, `jiaolian_id_number`, `jiaolian_phone`, `jiaolian_email`, `jiaolian_delete`, `create_time`) VALUES
	(1, '教练1', '123456', '教练姓名1', 2, 'upload/jiaolian1.jpg', '410224199010102001', '17703786901', '1@qq.com', 1, '2023-02-23 03:06:42'),
	(2, '教练2', '123456', '教练姓名2', 2, 'upload/jiaolian2.jpg', '410224199010102002', '17703786902', '2@qq.com', 1, '2023-02-23 03:06:42'),
	(3, '教练3', '123456', '教练姓名3', 1, 'upload/jiaolian3.jpg', '410224199010102003', '17703786903', '3@qq.com', 1, '2023-02-23 03:06:42');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='通知公告';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 3, 'upload/news1.jpg', '2023-02-23 03:06:42', '公告详情1', '2023-02-23 03:06:42'),
	(2, '公告标题2', 2, 'upload/news2.jpg', '2023-02-23 03:06:42', '公告详情2', '2023-02-23 03:06:42'),
	(3, '公告标题3', 3, 'upload/news3.jpg', '2023-02-23 03:06:42', '公告详情3', '2023-02-23 03:06:42'),
	(4, '公告标题4', 1, 'upload/news4.jpg', '2023-02-23 03:06:42', '公告详情4', '2023-02-23 03:06:42'),
	(5, '公告标题5', 3, 'upload/news5.jpg', '2023-02-23 03:06:42', '公告详情5', '2023-02-23 03:06:42');

DROP TABLE IF EXISTS `taochan`;
CREATE TABLE IF NOT EXISTS `taochan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `taochan_name` varchar(200) DEFAULT NULL COMMENT '套餐名称 Search111',
  `taochan_photo` varchar(200) DEFAULT NULL COMMENT '套餐照片',
  `taochan_types` int DEFAULT NULL COMMENT '套餐类型 Search111',
  `taochan_new_money` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `taochan_clicknum` int DEFAULT NULL COMMENT '点击次数',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `taochan_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `taochan_content` text COMMENT '套餐简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='套餐';

DELETE FROM `taochan`;
INSERT INTO `taochan` (`id`, `taochan_name`, `taochan_photo`, `taochan_types`, `taochan_new_money`, `taochan_clicknum`, `shangxia_types`, `taochan_delete`, `taochan_content`, `create_time`) VALUES
	(1, '套餐名称1', 'upload/taochan1.jpg', 3, 494.84, 323, 1, 1, '套餐简介1', '2023-02-23 03:06:42'),
	(2, '套餐名称2', 'upload/taochan2.jpg', 3, 14.80, 64, 1, 1, '套餐简介2', '2023-02-23 03:06:42'),
	(3, '套餐名称3', 'upload/taochan3.jpg', 3, 459.08, 264, 1, 1, '套餐简介3', '2023-02-23 03:06:42'),
	(4, '套餐名称4', 'upload/taochan4.jpg', 2, 448.81, 69, 1, 1, '套餐简介4', '2023-02-23 03:06:42'),
	(5, '套餐名称5', 'upload/taochan5.jpg', 1, 72.49, 412, 1, 1, '套餐简介5', '2023-02-23 03:06:42');

DROP TABLE IF EXISTS `taochan_order`;
CREATE TABLE IF NOT EXISTS `taochan_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `taochan_id` int DEFAULT NULL COMMENT '套餐',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `taochan_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `taochan_order_types` int DEFAULT NULL COMMENT '订单类型 Search111',
  `taochan_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='套餐购买';

DELETE FROM `taochan_order`;
INSERT INTO `taochan_order` (`id`, `taochan_id`, `yonghu_id`, `taochan_order_true_price`, `taochan_order_types`, `taochan_order_payment_types`, `insert_time`, `create_time`) VALUES
	(7, 3, 1, 459.08, 103, 1, '2023-02-23 06:03:40', '2023-02-23 06:03:40'),
	(8, 5, 1, 72.49, 101, 1, '2024-08-12 06:51:53', '2024-08-12 06:51:53');

DROP TABLE IF EXISTS `ticebaogao`;
CREATE TABLE IF NOT EXISTS `ticebaogao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `ticebaogao_name` varchar(200) DEFAULT NULL COMMENT '报告标题  Search111 ',
  `ticebaogao_types` int DEFAULT NULL COMMENT '报告类型  Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `ticebaogao_content` text COMMENT '报告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='体测报告';

DELETE FROM `ticebaogao`;
INSERT INTO `ticebaogao` (`id`, `yonghu_id`, `ticebaogao_name`, `ticebaogao_types`, `insert_time`, `ticebaogao_content`, `create_time`) VALUES
	(1, 3, '报告标题1', 2, '2023-02-23 03:06:42', '报告详情1', '2023-02-23 03:06:42'),
	(2, 1, '报告标题2', 3, '2023-02-23 03:06:42', '报告详情2', '2023-02-23 03:06:42'),
	(3, 2, '报告标题3', 1, '2023-02-23 03:06:42', '报告详情3', '2023-02-23 03:06:42'),
	(4, 3, '报告标题4', 3, '2023-02-23 03:06:42', '报告详情4', '2023-02-23 03:06:42'),
	(5, 1, '报告标题5', 3, '2023-02-23 03:06:42', '报告详情5', '2023-02-23 03:06:42');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'knq0w9pi4rbv91v3ak1i12zd8zas4z5l', '2023-02-23 03:27:25', '2024-08-12 07:50:04'),
	(2, 1, 'a1', 'yonghu', '用户', '8dc974bglkgkv7n2cfc2yrf9entiiov2', '2023-02-23 05:26:42', '2024-08-12 07:51:28'),
	(3, 1, 'a1', 'jiaolian', '教练', 'fqiqzpzqhqtnuh1kytu2x6zovr117clr', '2023-02-23 06:04:30', '2024-08-12 07:51:15'),
	(4, 2, 'a2', 'jiaolian', '教练', 'v41pv1udef9bb29vf4c33qmdd27rr33i', '2023-02-23 06:04:48', '2023-02-23 07:04:52'),
	(5, 3, 'a3', 'jiaolian', '教练', 'yk6oebufheev76u5m1ox869p8ky8lus1', '2023-02-23 06:05:01', '2023-02-23 07:05:02');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `sex_types`, `yonghu_photo`, `yonghu_id_number`, `yonghu_phone`, `yonghu_email`, `new_money`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 1, 'upload/yonghu1.jpg', '410224199010102001', '17703786901', '1@qq.com', 653.22, 1, '2023-02-23 03:06:42'),
	(2, '用户2', '123456', '用户姓名2', 1, 'upload/yonghu2.jpg', '410224199010102002', '17703786902', '2@qq.com', 681.27, 1, '2023-02-23 03:06:42'),
	(3, '用户3', '123456', '用户姓名3', 2, 'upload/yonghu3.jpg', '410224199010102003', '17703786903', '3@qq.com', 575.74, 1, '2023-02-23 03:06:42');

DROP TABLE IF EXISTS `yujia`;
CREATE TABLE IF NOT EXISTS `yujia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yujia_name` varchar(200) DEFAULT NULL COMMENT '瑜伽名称 Search111',
  `yujia_photo` varchar(200) DEFAULT NULL COMMENT '瑜伽照片',
  `yujia_types` int DEFAULT NULL COMMENT '瑜伽类型 Search111',
  `yujia_address` varchar(200) DEFAULT NULL COMMENT '场地信息',
  `jiaolian_id` int DEFAULT NULL COMMENT '教练',
  `yujia_clicknum` int DEFAULT NULL COMMENT '点击次数',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `yujia_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `yujia_content` text COMMENT '简介详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='瑜伽';

DELETE FROM `yujia`;
INSERT INTO `yujia` (`id`, `yujia_name`, `yujia_photo`, `yujia_types`, `yujia_address`, `jiaolian_id`, `yujia_clicknum`, `shangxia_types`, `yujia_delete`, `yujia_content`, `create_time`) VALUES
	(1, '瑜伽名称1', 'upload/taochan1.jpg', 3, '场地信息1', 1, 42, 1, 1, '简介详情1', '2023-02-23 03:06:42'),
	(2, '瑜伽名称2', 'upload/taochan2.jpg', 1, '场地信息2', 1, 225, 1, 1, '简介详情2', '2023-02-23 03:06:42'),
	(3, '瑜伽名称3', 'upload/taochan3.jpg', 3, '场地信息3', 1, 265, 1, 1, '简介详情3', '2023-02-23 03:06:42'),
	(4, '瑜伽名称4', 'upload/taochan4.jpg', 1, '场地信息4', 3, 383, 1, 1, '简介详情4', '2023-02-23 03:06:42'),
	(5, '瑜伽名称5', 'upload/taochan5.jpg', 2, '场地信息5', 1, 349, 1, 1, '简介详情5', '2023-02-23 03:06:42');

DROP TABLE IF EXISTS `yujia_order`;
CREATE TABLE IF NOT EXISTS `yujia_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yujia_id` int DEFAULT NULL COMMENT '瑜伽',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yujia_order_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `yujia_order_types` int DEFAULT NULL COMMENT '订单类型 Search111',
  `yujia_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='瑜伽预约';

DELETE FROM `yujia_order`;
INSERT INTO `yujia_order` (`id`, `yujia_id`, `yonghu_id`, `yujia_order_time`, `yujia_order_types`, `yujia_order_payment_types`, `insert_time`, `create_time`) VALUES
	(8, 4, 1, NULL, 103, 1, '2023-02-23 06:02:31', '2023-02-23 06:02:31'),
	(9, 4, 1, '2023-02-25 03:00:00', 102, 1, '2023-02-23 06:04:00', '2023-02-23 06:04:00'),
	(10, 4, 1, '2024-08-11 16:00:00', 101, 1, '2024-08-12 06:52:02', '2024-08-12 06:52:02');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
