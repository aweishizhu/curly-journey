
SET NAMES utf8mb4;

CREATE DATABASE `vueshop`;

USE `vueshop`;


# 管理员表

CREATE TABLE `vueshop_admin` (
    `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT COMMENT '用户id',
    `username` VARCHAR(255) UNIQUE NOT NULL COMMENT '用户名',
    `password` CHAR(32) DEFAULT ''  NOT NULL COMMENT '密码',
    `salt` VARCHAR(32) DEFAULT '' NOT NULL COMMENT '密码盐',
    `avatar` VARCHAR(255) DEFAULT '' NOT NULL COMMENT '用户头像'
) ENGINE=InnoDB CHARSET=utf8mb4;

INSERT INTO `vueshop_admin` VALUES 
(1, 'admin', MD5(CONCAT(MD5('123456'), 'ItCast')), 'ItCast', ''),
(2, 'demo', MD5(CONCAT(MD5('123456'), 'ItCast')), 'ItCast', '');


# 用户表

CREATE TABLE `vueshop_user` (
    `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT COMMENT '用户id',
    `username` VARCHAR(255) UNIQUE NOT NULL COMMENT '用户名',
    `password` CHAR(32) DEFAULT '' NOT NULL COMMENT '密码',
    `salt` VARCHAR(32) DEFAULT '' NOT NULL COMMENT '密码盐',
    `avatar` VARCHAR(255) DEFAULT '' NOT NULL COMMENT '用户头像'
) ENGINE = InnoDB CHARSET = utf8mb4;

INSERT INTO `vueshop_user` VALUES 
(1, 'demo1', MD5(CONCAT(MD5('123456'), 'ItCast')), 'ItCast', ''),
(2, 'demo2', MD5(CONCAT(MD5('123456'), 'ItCast')), 'ItCast', '');


# 分类表

CREATE TABLE `vueshop_category` (
    `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT COMMENT '分类id',
    `name` VARCHAR(255) DEFAULT '' NOT NULL COMMENT '分类名称',
    `picture` VARCHAR(255) DEFAULT '' NOT NULL COMMENT '分类图片',
    `pid` INT UNSIGNED DEFAULT 0 NOT NULL COMMENT '上级分类id'
) ENGINE=InnoDB CHARSET=utf8mb4;

INSERT INTO `vueshop_category` VALUES
(1, '小米手机', '', 0),
(2, '小米11', 'static/image/category/clothes/11.jpg', 1),
(3, '小米12', 'static/image/category/clothes/12.jpg', 1),
(4, '小米13', 'static/image/category/clothes/13.jpg', 1),
(5, '红米手机', '', 0),
(6, 'Redmi  k70至尊版 ', 'static/image/category/foods/1.jpg', 5),
(7, 'Redmi Note 14pro +', 'static/image/category/foods/2.jpg', 5),
(8, 'Redmi Turbo 3', 'static/image/category/foods/3.jpg', 5),
(9, 'Redmi k70 Pro', 'static/image/category/foods/4.jpg', 5),
(10, 'Redmi k60', 'static/image/category/foods/5.jpg', 5),   
(11, '华为', '', 0),
(12, 'HUAWEI Mate XT 非凡大师', 'static/image/category/jewelry/ornaments.jpg', 11),
(13, 'HUAWEI Mate 60 Pro', 'static/image/category/jewelry/watch.jpg', 11),
(14, 'HUAWEI Pura 70 Pro+', 'static/image/category/jewelry/diy.jpg', 11),
(15, 'vivo iqoo', '', 0),
(16, 'iQOO 12', 'static/image/category/store/1.png', 15),
(17, 'iQOO 11 S', 'static/image/category/store/2.png', 15),
(18, 'iQOO 11 Pro', 'static/image/category/store/3.png', 15),
(19, 'iQOO 11', 'static/image/category/store/4.png', 15),
(20, 'iQOO 10 Pro', 'static/image/category/store/5.png', 15), 
(21, '兰博基尼', '', 0),
(22, 'Huracán', 'static/image/category/phone/1.jpg', 21),
(23, '兰博基尼svj', 'static/image/category/phone/2.jpg', 21),
(24, 'Aventador', 'static/image/category/phone/3.jpg', 21),
(25, 'evo', 'static/image/category/phone/4.jpg', 21),
(26, '第六元素', 'static/image/category/phone/5.jpg', 21), 
(27, '法拉利', '', 0),
(28, '法拉利sf90', 'static/image/category/motion/1.jpg', 27),
(29, '法拉利 f8', 'static/image/category/motion/2.jpg', 27),
(30, '法拉利 拉法', 'static/image/category/motion/3.jpg', 27),
(31, '法拉利 296', 'static/image/category/motion/4.jpg', 27),
(32, '法拉利 488', 'static/image/category/motion/5.jpg', 27),
(33, '法拉利 458', 'static/image/category/motion/6.jpg', 27);


# 商品表

CREATE TABLE `vueshop_goods` (
    `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT COMMENT '商品id',
    `category_id` INT UNSIGNED DEFAULT 0 NOT NULL COMMENT '分类id ',
    `name` VARCHAR(255) DEFAULT '' NOT NULL COMMENT '商品名称',
    `price` DECIMAL(10, 2) DEFAULT 0 NOT NULL COMMENT '商品价格',
    `picture` VARCHAR(255) DEFAULT '' NOT NULL COMMENT '商品图片',
    `stock` INT DEFAULT 0 NOT NULL COMMENT '商品库存',
    `spec` VARCHAR(255) DEFAULT '' NOT NULL COMMENT '商品规格', 
    `description` MEDIUMTEXT NOT NULL COMMENT '商品简介'
) ENGINE=InnoDB CHARSET=utf8mb4;


INSERT INTO `vueshop_goods` VALUES  
(1, 7, 'Redmi Note 14 Pro+', 1899, 'static/image/goods/1.png', 10000,'红色128GB+256GB', 'Redmi Note 14 Pro+是小米公司最新推出的智能手机，拥有出色的性能和防摔，是您购买手机的不二之选。'),  
(2, 7, 'Redmi Note 14 Pro', 1399, 'static/image/goods/2.png', 10000, '8GB+128GB', 'Redmi Note 14 Pro是小米公司最新推出的智能手机，拥有出色的性能和防摔，是您购买手机的不二之选。'),  
(3, 7, 'Redmi Note 14', 1199, 'static/image/goods/3.png', 10000, '8GB+128GB', 'Redmi Note 14是小米公司最新推出的智能手机，拥有出色的性能和防摔，是您购买手机的不二之选。'),  
(4, 7, 'Redmi K70 至尊版', 2599, 'static/image/goods/4.png', 10000, '12GB+256GB', '双芯旗舰，狂暴登场！天玑 9300+ 搭档狂暴游戏独显 D1 芯片，依托狂暴引擎 3.0 贯穿双芯调校、及全新 3D 冰封散热™系统，实现更激进、持久的游戏性能释放。'),  
(5, 7, 'Redmi K70 Pro', 1899, 'static/image/goods/5.jpg', 100, '12GB+256GB', '第三代骁龙8,小米澎湃OS,狂暴引擎3.0,冰封散热系统,2K 护眼屏,5000mAh 超大电量。'),  
(6, 7, 'Redmi K70', 2199, 'static/image/goods/6.png', 100, '12GB+256GB', '第三代骁龙8,小米澎湃OS,狂暴引擎3.0,冰封散热系统,2K 护眼屏,5000mAh 超大电量。'),  
(7, 7, 'Xiaomi 14', 3900, 'static/image/goods/7.png', 500, '12GB+256GB', '徕卡光学Summilux镜头,光影猎人900影像传感器, 75mm徕卡浮动长焦,小米澎湃OS ,第三代骁龙®8移动平台。'),  
(8, 7, 'Xiaomi 14 Pro', 4599, 'static/image/goods/8.png', 500, '12GB+256GB', '徕卡光学Summilux镜头,光影猎人900影像传感器, 75mm徕卡浮动长焦,小米澎湃OS ,第三代骁龙®8移动平台。'),  
(9, 7, 'xiaomi 14 Ultra', 5999, 'static/image/goods/9.png', 500, '12GB+256GB', '徕卡光学Summilux镜头,光影猎人900影像传感器, 75mm徕卡浮动长焦,小米澎湃OS ,第三代骁龙®8移动平台。'),
(10, 7, '小米13', 3999, 'static/image/goods/10.png', 500, '12GB+256GB','<div>
<div>科技不是高高在上，而是服务于人类。</div>
<div>< img src="http://127.0.0.1:8360/static/image/goods/detail/1.png" alt="商品详情1" width="1280" height="1982">< img src="http://127.0.0.1:8360/static/image/goods/detail/2.png" alt="商品详情2" width="1280" height="1712">< img src="http://127.0.0.1:8360/static/image/goods/detail/3.png" alt="商品详情3" width="1280" height="1982"></div>
</div>');


# 商品轮播图

CREATE TABLE `vueshop_goods_album` (
    `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT COMMENT '图片id',
    `goods_id` INT UNSIGNED NOT NULL COMMENT '商品id',
    `picture` VARCHAR(255) DEFAULT '' NOT NULL COMMENT '商品图片'
) ENGINE=InnoDB CHARSET=utf8mb4;

INSERT INTO `vueshop_goods_album` VALUES
(1, 10, 'static/image/goods/album/apple1.jpg'),
(2, 10, 'static/image/goods/album/apple2.jpg'),
(3, 7, 'static/image/goods/spinach.png'),
(4, 7, 'static/image/goods/spinach.png');
