/*
 Navicat Premium Dump SQL

 Source Server         : li
 Source Server Type    : MySQL
 Source Server Version : 80039 (8.0.39)
 Source Host           : localhost:3306
 Source Schema         : vueshop

 Target Server Type    : MySQL
 Target Server Version : 80039 (8.0.39)
 File Encoding         : 65001

 Date: 19/10/2024 09:02:58
*/

SET NAMES utf8mb4;
CREATE DATABASE vueshop;
USE vueshop;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for vueshop_admin
-- ----------------------------
DROP TABLE IF EXISTS `vueshop_admin`;
CREATE TABLE `vueshop_admin`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '用户头像',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of vueshop_admin
-- ----------------------------
INSERT INTO `vueshop_admin` VALUES (1, 'admin', '61fcefcdc467b9688fa5f72b4e7e78c6', 'ItCast', '');
INSERT INTO `vueshop_admin` VALUES (2, 'demo', '61fcefcdc467b9688fa5f72b4e7e78c6', 'ItCast', '');

-- ----------------------------
-- Table structure for vueshop_category
-- ----------------------------
DROP TABLE IF EXISTS `vueshop_category`;
CREATE TABLE `vueshop_category`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '分类图片',
  `pid` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '上级分类id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of vueshop_category
-- ----------------------------
INSERT INTO `vueshop_category` VALUES (1, '小米手机', '', 0);
INSERT INTO `vueshop_category` VALUES (2, '小米11', 'static/image/category/clothes/11.jpg', 1);
INSERT INTO `vueshop_category` VALUES (3, '小米12', 'static/image/category/clothes/12.jpg', 1);
INSERT INTO `vueshop_category` VALUES (4, '小米13', 'static/image/category/clothes/13.jpg', 1);
INSERT INTO `vueshop_category` VALUES (5, '红米手机', '', 0);
INSERT INTO `vueshop_category` VALUES (6, 'Redmi  k70至尊版 ', 'static/image/category/foods/1.jpg', 5);
INSERT INTO `vueshop_category` VALUES (7, 'Redmi Note 14pro +', 'static/image/category/foods/2.jpg', 5);
INSERT INTO `vueshop_category` VALUES (8, 'Redmi Turbo 3', 'static/image/category/foods/3.jpg', 5);
INSERT INTO `vueshop_category` VALUES (9, 'Redmi k70 Pro', 'static/image/category/foods/4.jpg', 5);
INSERT INTO `vueshop_category` VALUES (10, 'Redmi k60', 'static/image/category/foods/5.jpg', 5);
INSERT INTO `vueshop_category` VALUES (11, '华为', '', 0);
INSERT INTO `vueshop_category` VALUES (12, 'HUAWEI Mate XT 非凡大师', 'static/image/category/jewelry/ornaments.jpg', 11);
INSERT INTO `vueshop_category` VALUES (13, 'HUAWEI Mate 60 Pro', 'static/image/category/jewelry/watch.jpg', 11);
INSERT INTO `vueshop_category` VALUES (14, 'HUAWEI Pura 70 Pro+', 'static/image/category/jewelry/diy.jpg', 11);
INSERT INTO `vueshop_category` VALUES (15, ' iqoo', '', 0);
INSERT INTO `vueshop_category` VALUES (16, 'iQOO 12', 'static/image/category/store/1.png', 15);
INSERT INTO `vueshop_category` VALUES (17, 'iQOO 11 S', 'static/image/category/store/2.png', 15);
INSERT INTO `vueshop_category` VALUES (18, 'iQOO 11 Pro', 'static/image/category/store/3.png', 15);
INSERT INTO `vueshop_category` VALUES (19, 'iQOO 11', 'static/image/category/store/4.png', 15);
INSERT INTO `vueshop_category` VALUES (20, 'iQOO 10 Pro', 'static/image/category/store/5.png', 15);
INSERT INTO `vueshop_category` VALUES (21, '兰博基尼', '', 0);
INSERT INTO `vueshop_category` VALUES (22, 'Huracán', 'static/image/category/phone/1.jpg', 21);
INSERT INTO `vueshop_category` VALUES (23, '兰博基尼svj', 'static/image/category/phone/2.jpg', 21);
INSERT INTO `vueshop_category` VALUES (24, 'Aventador', 'static/image/category/phone/3.jpg', 21);
INSERT INTO `vueshop_category` VALUES (25, 'evo', 'static/image/category/phone/4.jpg', 21);
INSERT INTO `vueshop_category` VALUES (26, '第六元素', 'static/image/category/phone/5.jpg', 21);
INSERT INTO `vueshop_category` VALUES (27, '法拉利', '', 0);
INSERT INTO `vueshop_category` VALUES (28, '法拉利sf90', 'static/image/category/motion/1.jpg', 27);
INSERT INTO `vueshop_category` VALUES (29, '法拉利 f8', 'static/image/category/motion/2.jpg', 27);
INSERT INTO `vueshop_category` VALUES (30, '法拉利 拉法', 'static/image/category/motion/3.jpg', 27);
INSERT INTO `vueshop_category` VALUES (31, '法拉利 296', 'static/image/category/motion/4.jpg', 27);
INSERT INTO `vueshop_category` VALUES (32, '法拉利 488', 'static/image/category/motion/5.jpg', 27);
INSERT INTO `vueshop_category` VALUES (33, '法拉利 458', 'static/image/category/motion/6.jpg', 27);

-- ----------------------------
-- Table structure for vueshop_goods
-- ----------------------------
DROP TABLE IF EXISTS `vueshop_goods`;
CREATE TABLE `vueshop_goods`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `category_id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类id ',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '商品价格',
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '商品图片',
  `stock` int NOT NULL DEFAULT 0 COMMENT '商品库存',
  `spec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '商品规格',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品简介',
  `situs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '发货地点',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of vueshop_goods
-- ----------------------------
INSERT INTO `vueshop_goods` VALUES (1, 7, 'Redmi Note 14 Pro+', 1899.00, 'static/image/goods/7/1.png', 10000, '128GB+256GB', 'Redmi Note 14 Pro+是小米公司最新推出的智能手机，拥有出色的性能和防摔，是您购买手机的不二之选。', '北京');
INSERT INTO `vueshop_goods` VALUES (2, 7, 'Redmi Note 14 Pro', 1399.00, 'static/image/goods/7/2.png', 10000, '8GB+128GB', 'Redmi Note 14 Pro是小米公司最新推出的智能手机，拥有出色的性能和防摔，是您购买手机的不二之选。', '上海');
INSERT INTO `vueshop_goods` VALUES (3, 7, 'Redmi Note 14', 1199.00, 'static/image/goods/7/3.png', 10000, '8GB+128GB', 'Redmi Note 14是小米公司最新推出的智能手机，拥有出色的性能和防摔，是您购买手机的不二之选。', '江西南昌');
INSERT INTO `vueshop_goods` VALUES (4, 7, 'Redmi K70 至尊版', 2599.00, 'static/image/goods/7/4.png', 10000, '12GB+256GB', '双芯旗舰，狂暴登场！天玑 9300+ 搭档狂暴游戏独显 D1 芯片，依托狂暴引擎 3.0 贯穿双芯调校、及全新 3D 冰封散热™系统，实现更激进、持久的游戏性能释放。', '湖北武汉');
INSERT INTO `vueshop_goods` VALUES (5, 7, 'Redmi K70 Pro', 1899.00, 'static/image/goods/7/5.jpg', 100, '12GB+256GB', '第三代骁龙8,小米澎湃OS,狂暴引擎3.0,冰封散热系统,2K 护眼屏,5000mAh 超大电量。', '浙江杭州');
INSERT INTO `vueshop_goods` VALUES (6, 7, 'Redmi K70', 2199.00, 'static/image/goods/7/6.png', 100, '12GB+256GB', '第三代骁龙8,小米澎湃OS,狂暴引擎3.0,冰封散热系统,2K 护眼屏,5000mAh 超大电量。', '广东河源');
INSERT INTO `vueshop_goods` VALUES (7, 7, 'Xiaomi 14', 3900.00, 'static/image/goods/7/7.png', 500, '12GB+256GB', '徕卡光学Summilux镜头,光影猎人900影像传感器, 75mm徕卡浮动长焦,小米澎湃OS ,第三代骁龙®8移动平台。', '江西南昌');
INSERT INTO `vueshop_goods` VALUES (8, 7, 'Xiaomi 14 Pro', 4599.00, 'static/image/goods/7/8.png', 500, '12GB+256GB', '徕卡光学Summilux镜头,光影猎人900影像传感器, 75mm徕卡浮动长焦,小米澎湃OS ,第三代骁龙®8移动平台。', '河北保定');
INSERT INTO `vueshop_goods` VALUES (9, 7, 'xiaomi 14 Ultra', 5999.00, 'static/image/goods/7/9.png', 500, '12GB+256GB', '徕卡光学Summilux镜头,光影猎人900影像传感器, 75mm徕卡浮动长焦,小米澎湃OS ,第三代骁龙®8移动平台。', '安徽合肥');
INSERT INTO `vueshop_goods` VALUES (10, 7, '小米13', 3999.00, 'static/image/goods/7/10.png', 500, '12GB+256GB', '<div>\r\n<div>科技不是高高在上，而是服务于人类。</div>\r\n<div>< img src=\"http://127.0.0.1:8360/static/image/goods/detail/1.png\" alt=\"商品详情1\" width=\"1280\" height=\"1982\">< img src=\"http://127.0.0.1:8360/static/image/goods/detail/2.png\" alt=\"商品详情2\" width=\"1280\" height=\"1712\">< img src=\"http://127.0.0.1:8360/static/image/goods/detail/3.png\" alt=\"商品详情3\" width=\"1280\" height=\"1982\"></div>\r\n</div>', '山东烟台');
INSERT INTO `vueshop_goods` VALUES (11, 2, 'xiaomi13', 3999.00, 'static/image/goods/2/1.webp', 500, '12GB+256GB', '全新骁龙888，突破性的 5 纳米芯片工艺，\r\n性能、渲染、AI 算力突飞猛进。', '河南开封');
INSERT INTO `vueshop_goods` VALUES (12, 2, 'xiaomi13', 3599.00, 'static/image/goods/2/1.webp', 500, '6GB+128GB', '全新骁龙888，突破性的 5 纳米芯片工艺，\r\n性能、渲染、AI 算力突飞猛进。', '上海市');
INSERT INTO `vueshop_goods` VALUES (13, 3, 'xiaomi 12', 3900.00, 'static/image/goods/3/1.jpg', 500, '12GB+256GB', '全新一代骁龙8 移动平台 / 动态性能调度\r\nWiFi 6 增强版 + LPDDR5 满血版 + UFS 3.1\r\n2600mm²超大 VC 液冷散热+超大石墨+白色石墨烯\r\n4500mAh 大电量\r\n67W 有线秒充 / 50W 无线秒充 / 10W 无线反充\r\n5000万 疾速影像 / CyberFocus万物追焦\r\n3200万 前置高清镜头 / 原生美肌人像\r\n6.28″超视感屏 / 120Hz高刷 / 419PPI\r\n哈曼卡顿联合调教 对称式立', '北京');
INSERT INTO `vueshop_goods` VALUES (14, 3, 'xiaomi12', 4599.00, 'static/image/goods/3/1.jpg', 500, '16GB+512GB', '全新一代骁龙8 移动平台 / 动态性能调度\r\nWiFi 6 增强版 + LPDDR5 满血版 + UFS 3.1\r\n2600mm²超大 VC 液冷散热+超大石墨+白色石墨烯\r\n4500mAh 大电量\r\n67W 有线秒充 / 50W 无线秒充 / 10W 无线反充\r\n5000万 疾速影像 / CyberFocus万物追焦\r\n3200万 前置高清镜头 / 原生美肌人像\r\n6.28″超视感屏 / 120Hz高刷 / 419PPI\r\n哈曼卡顿联合调教 对称式立', '江苏');
INSERT INTO `vueshop_goods` VALUES (15, 4, '小米13Ultra', 3999.00, 'static/image/goods/4/2.png', 500, '12GB+256GB', '徕卡光学全焦段四摄| 一英寸可变光圈| 徕卡专业街拍模式| 第二代骁龙8｜2K OLED 屏幕｜5000mAh大电量｜90W 小米澎湃有线秒充｜50W Pro 小米澎湃无线秒充', '北京');
INSERT INTO `vueshop_goods` VALUES (16, 4, 'xiaomi13', 2699.00, 'static/image/goods/4/1.png', 500, '8GB+256GB', '第二代骁龙8｜徕卡专业光学镜头', '北京');
INSERT INTO `vueshop_goods` VALUES (17, 6, 'Redmi k70至尊版', 2599.00, 'static/image/goods/6/1.jpg', 500, '12GB+256GB', '不止是双芯进化\r\n更是 Redmi 再次颠覆性能想象\r\n天玑 9300+ 旗舰平台\r\n狂暴游戏独显 D1 芯片\r\n协同狂暴引擎 3.0、全新 3D 冰封散热™\r\n解锁双芯狂暴本能\r\n更有旗舰质感、续航、屏幕、影像\r\nRedmi 前所未有的体验突破', '上海');
INSERT INTO `vueshop_goods` VALUES (18, 6, 'Redmi k70至尊版', 2999.00, 'static/image/goods/6/2.jpg', 500, '12GB+512GB', '不止是双芯进化\r\n更是 Redmi 再次颠覆性能想象\r\n天玑 9300+ 旗舰平台\r\n狂暴游戏独显 D1 芯片\r\n协同狂暴引擎 3.0、全新 3D 冰封散热™\r\n解锁双芯狂暴本能\r\n更有旗舰质感、续航、屏幕、影像\r\nRedmi 前所未有的体验突破', '上海');
INSERT INTO `vueshop_goods` VALUES (19, 8, 'Redmi Turbo 3', 2199.00, 'static/image/goods/8/1.png', 700, '12GB+256GB', '新生代性能旗舰 Redmi Turbo 3\r\nRedmi「三位一体」性能策略\r\n搭载全新第三代骁龙® 8s \r\n「狂暴引擎 3.0」、自研冰封散热™\r\nAI 强势赋能 \r\n满血开场 做实力新生代！', '北京');
INSERT INTO `vueshop_goods` VALUES (20, 8, 'Redmi Turbo 3', 2299.00, 'static/image/goods/8/1.png', 700, '12GB+512GB', '新生代性能旗舰 Redmi Turbo 3\r\nRedmi「三位一体」性能策略\r\n搭载全新第三代骁龙® 8s \r\n「狂暴引擎 3.0」、自研冰封散热™\r\nAI 强势赋能 \r\n满血开场 做实力新生代！', '上海');
INSERT INTO `vueshop_goods` VALUES (21, 9, 'Redmi k70 Pro', 3299.00, 'static/image/goods/9/1.jpg', 500, '12GB+256GB', '不止是双芯进化\r\n更是 Redmi 再次颠覆性能想象\r\n天玑 9300+ 旗舰平台\r\n狂暴游戏独显 D1 芯片\r\n协同狂暴引擎 3.0、全新 3D 冰封散热™\r\n解锁双芯狂暴本能\r\n更有旗舰质感、续航、屏幕、影像\r\nRedmi 前所未有的体验突破', '上海');
INSERT INTO `vueshop_goods` VALUES (22, 9, 'Redmi k70 Pro', 3599.00, 'static/image/goods/9/2.jpg', 500, '12GB+512GB', '不止是双芯进化\r\n更是 Redmi 再次颠覆性能想象\r\n天玑 9300+ 旗舰平台\r\n狂暴游戏独显 D1 芯片\r\n协同狂暴引擎 3.0、全新 3D 冰封散热™\r\n解锁双芯狂暴本能\r\n更有旗舰质感、续航、屏幕、影像\r\nRedmi 前所未有的体验突破', '上海');
INSERT INTO `vueshop_goods` VALUES (23, 10, 'Redmi k70 Pro', 2599.00, 'static/image/goods/10/1.png', 500, '12GB+256GB', '狠快狠强，狠旗舰！', '上海');
INSERT INTO `vueshop_goods` VALUES (24, 10, 'Redmi k70 Pro', 2999.00, 'static/image/goods/10/1.png', 500, '16GB+512GB', '狠快狠强，狠旗舰！', '上海');
INSERT INTO `vueshop_goods` VALUES (25, 12, 'HUAWEI Mate XT 非凡大师', 21999.00, 'static/image/goods/12/1.webp', 500, '16GB+512GB', '0.2英寸超形态三折叠大屏，一机多能 科技新物种，华为天工铰链系统', '广东深圳');
INSERT INTO `vueshop_goods` VALUES (26, 12, 'HUAWEI Mate XT 非凡大师', 23999.00, 'static/image/goods/12/1.webp', 500, '16GB+1TB', '0.2英寸超形态三折叠大屏，一机多能 科技新物种，华为天工铰链系统', '广东深圳');
INSERT INTO `vueshop_goods` VALUES (27, 13, 'HUAWEI Mate 60', 5999.00, 'static/image/goods/13/1.webp', 500, '12GB+512GB', '超可靠玄武架构，全焦段超清影像，超强灵犀通信，双向北斗卫星消息', '广东深圳');
INSERT INTO `vueshop_goods` VALUES (28, 13, 'HUAWEI Mate 60', 6499.00, 'static/image/goods/13/1.webp', 500, '16GB+1TB', '超可靠玄武架构，全焦段超清影像，超强灵犀通信，双向北斗卫星消息', '广东深圳');
INSERT INTO `vueshop_goods` VALUES (29, 14, 'HUAWEI Pura 70 pro', 21999.00, 'static/image/goods/14/1.webp', 500, '12GB+1TB', '超聚光微距长焦，超高速风驰闪拍，北斗卫星图片消息', '广东深圳');
INSERT INTO `vueshop_goods` VALUES (30, 14, 'HUAWEI Pura 70 pro', 21999.00, 'static/image/goods/14/1.webp', 500, '12GB+512GB', '超聚光微距长焦，超高速风驰闪拍，北斗卫星图片消息，华为天工铰链系统', '广东深圳');
INSERT INTO `vueshop_goods` VALUES (31, 16, 'iQOO 12传奇版', 3999.00, 'static/image/goods/16/1.png', 1000, '12GB+256GB', '一切始于窗里冲破峡谷直上云霄的魄力与信念', '上海');
INSERT INTO `vueshop_goods` VALUES (32, 16, 'iQOO 12赛道版', 4199.00, 'static/image/goods/16/2.png', 1000, '12GB+512GB', '一切始于窗里冲破峡谷直上云霄的魄力与信念', '上海');
INSERT INTO `vueshop_goods` VALUES (33, 17, 'iQOO 11 s传奇版 ', 3799.00, 'static/image/goods/17/1.png', 1000, '12GB+256GB', '2K 144Hz E6 全感屏，超算独显芯片加持超帧超分并发,才是超级标准。', '上海');
INSERT INTO `vueshop_goods` VALUES (34, 17, 'iQOO 11 s赛道版 ', 4099.00, 'static/image/goods/17/2.png', 1000, '12GB+512GB', '2K 144Hz E6 全感屏，超算独显芯片加持超帧超分并发,才是超级标准。', '上海');
INSERT INTO `vueshop_goods` VALUES (35, 18, 'iQOO 11 Pro传奇版 ', 5499.00, 'static/image/goods/18/1.png', 1000, '12GB+256GB', '旗舰性能新边界。', '上海');
INSERT INTO `vueshop_goods` VALUES (36, 18, 'iQOO 11 Pro赛道版 ', 5999.00, 'static/image/goods/18/2.png', 1000, '12GB+256GB', '旗舰性能新边界。', '上海');
INSERT INTO `vueshop_goods` VALUES (37, 19, 'iQOO 11 传奇版 ', 4999.00, 'static/image/goods/19/1.png', 1000, '12GB+256GB', '旗舰性能新边界。', '广东');
INSERT INTO `vueshop_goods` VALUES (38, 19, 'iQOO 11 曼岛特别版 ', 4999.00, 'static/image/goods/19/2.png', 1000, '12GB+256GB', '旗舰性能新边界。', '广东');
INSERT INTO `vueshop_goods` VALUES (39, 20, 'iQOO 10 Pro传奇版 ', 5999.00, 'static/image/goods/20/1.png', 1000, '12GB+256GB', '旗舰性能新边界。', '广东');
INSERT INTO `vueshop_goods` VALUES (40, 20, 'iQOO 10 Pro赛道版 ', 5999.00, 'static/image/goods/20/2.png', 1000, '12GB+256GB', '旗舰性能新边界。', '上海');
INSERT INTO `vueshop_goods` VALUES (41, 22, 'Huracán ', 3500000.00, 'static/image/goods/22/1.jpg', 1000, '绿色', '一体的全新HuracánSTO：配备极致的空气动力学系统、赛车动力、轻量化内饰以及迄今为止最高性能V10发动机，时刻准备在日常生活中触发你的赛道激情。', '上海');
INSERT INTO `vueshop_goods` VALUES (42, 22, 'Huracán ', 3500000.00, 'static/image/goods/22/2.jpg', 1000, '蓝白色', '一体的全新HuracánSTO：配备极致的空气动力学系统、赛车动力、轻量化内饰以及迄今为止最高性能V10发动机，时刻准备在日常生活中触发你的赛道激情。', '上海');
INSERT INTO `vueshop_goods` VALUES (43, 23, '兰博基尼svj ', 7500000.00, 'static/image/goods/23/1.jpg', 1000, '紫色', '一体的全新HuracánSTO：配备极致的空气动力学系统、赛车动力、轻量化内饰以及迄今为止最高性能V10发动机，时刻准备在日常生活中触发你的赛道激情。', '上海');
INSERT INTO `vueshop_goods` VALUES (44, 23, '兰博基尼svj', 7500000.00, 'static/image/goods/23/2.jpg', 1000, '绿色', '超前古今的设计，拥有6.0升v12的发动机，回村无需多言', '上海');
INSERT INTO `vueshop_goods` VALUES (45, 24, 'Aventador', 7500000.00, 'static/image/goods/24/1.jpg', 1000, '黄色', '超前古今的设计，拥有6.0升v12的发动机，回村无需多言', '上海');
INSERT INTO `vueshop_goods` VALUES (46, 24, 'Aventador', 7500000.00, 'static/image/goods/24/2.jpg', 1000, '绿色', '超前古今的设计，拥有6.0升v12的发动机，回村无需多言', '上海');
INSERT INTO `vueshop_goods` VALUES (47, 25, 'evo', 3500000.00, 'static/image/goods/25/1.jpg', 1000, '黄色', '超前古今的设计，拥有4.0升v10的发动机，回村无需多言', '上海');
INSERT INTO `vueshop_goods` VALUES (48, 25, 'evo', 3500000.00, 'static/image/goods/25/2.jpg', 1000, '绿色', '超前古今的设计，拥有4.0升v10的发动机，回村无需多言', '上海');
INSERT INTO `vueshop_goods` VALUES (49, 26, '第六元素', 4500000.00, 'static/image/goods/26/1.jpg', 1000, '黄色', '超前古今的设计，拥有6.0升v12的发动机，回村无需多言', '上海');
INSERT INTO `vueshop_goods` VALUES (50, 26, '第六元素', 4500000.00, 'static/image/goods/26/2.jpg', 1000, '绿色', '超前古今的设计，拥有6.0升v12的发动机，回村无需多言', '上海');
INSERT INTO `vueshop_goods` VALUES (51, 28, 'sf90', 9000000.00, 'static/image/goods/28/1.jpg', 1000, '黑色', '有了它，它会替你说话，拥有3.9升v8的发动机，回村无需多言', '上海');
INSERT INTO `vueshop_goods` VALUES (52, 28, 'sf90', 9000000.00, 'static/image/goods/28/2.jpg', 1000, '红色', '有了它，它会替你说话，拥有3.9升v8的发动机，回村无需多言', '上海');
INSERT INTO `vueshop_goods` VALUES (53, 29, 'F8', 4800000.00, 'static/image/goods/29/1.jpg', 1000, '黑色', '有了它，它会替你说话，拥有3.9升v8的发动机，回村无需多言', '上海');
INSERT INTO `vueshop_goods` VALUES (54, 29, 'F8', 4800000.00, 'static/image/goods/29/2.jpg', 1000, '红色', '有了它，它会替你说话，拥有3.9升v8的发动机，回村无需多言', '上海');
INSERT INTO `vueshop_goods` VALUES (55, 30, '拉法', 20000000.00, 'static/image/goods/30/1.jpg', 1000, '黄色', '有了它，它会替你说话，拥有6.0升v12的发动机，回村无需多言', '上海');
INSERT INTO `vueshop_goods` VALUES (56, 30, '拉法', 20000000.00, 'static/image/goods/30/2.jpg', 1000, '红色', '有了它，它会替你说话，拥有6.0升v12的发动机，回村无需多言', '上海');
INSERT INTO `vueshop_goods` VALUES (57, 31, '296', 3000000.00, 'static/image/goods/31/1.jpg', 1000, '蓝色', '有了它，它会替你说话，拥有4.0升v8的发动机，回村无需多言', '北京');
INSERT INTO `vueshop_goods` VALUES (58, 31, '296', 3000000.00, 'static/image/goods/31/2.jpg', 1000, '红色', '有了它，它会替你说话，拥有4.0升v8的发动机，回村无需多言', '上海');
INSERT INTO `vueshop_goods` VALUES (59, 31, '488', 3000000.00, 'static/image/goods/32/1.jpg', 1000, '蓝色', '有了它，它会替你说话，拥有4.0升v8的发动机，回村无需多言', '北京');
INSERT INTO `vueshop_goods` VALUES (60, 31, '488', 3000000.00, 'static/image/goods/32/2.jpg', 1000, '红色', '有了它，它会替你说话，拥有4.0升v8的发动机，回村无需多言', '上海');
INSERT INTO `vueshop_goods` VALUES (61, 31, '458', 3000000.00, 'static/image/goods/33/1.jpg', 1000, '蓝色', '有了它，它会替你说话，拥有4.0升v8的发动机，回村无需多言', '北京');
INSERT INTO `vueshop_goods` VALUES (62, 31, '458', 3000000.00, 'static/image/goods/33/2.jpg', 1000, '红色', '有了它，它会替你说话，拥有4.0升v8的发动机，回村无需多言', '上海');

-- ----------------------------
-- Table structure for vueshop_goods_album
-- ----------------------------
DROP TABLE IF EXISTS `vueshop_goods_album`;
CREATE TABLE `vueshop_goods_album`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `goods_id` int UNSIGNED NOT NULL COMMENT '商品id',
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '商品图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of vueshop_goods_album
-- ----------------------------
INSERT INTO `vueshop_goods_album` VALUES (1, 10, 'static/image/goods/album/1.png');
INSERT INTO `vueshop_goods_album` VALUES (2, 10, 'static/image/goods/album/2.png');
INSERT INTO `vueshop_goods_album` VALUES (3, 7, 'static/image/goods/7.png');
INSERT INTO `vueshop_goods_album` VALUES (4, 7, 'static/image/goods/8.png');

-- ----------------------------
-- Table structure for vueshop_user
-- ----------------------------
DROP TABLE IF EXISTS `vueshop_user`;
CREATE TABLE `vueshop_user`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '用户头像',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of vueshop_user
-- ----------------------------
INSERT INTO `vueshop_user` VALUES (1, 'demo1', '61fcefcdc467b9688fa5f72b4e7e78c6', 'ItCast', '');
INSERT INTO `vueshop_user` VALUES (2, 'demo2', '61fcefcdc467b9688fa5f72b4e7e78c6', 'ItCast', '');

SET FOREIGN_KEY_CHECKS = 1;
