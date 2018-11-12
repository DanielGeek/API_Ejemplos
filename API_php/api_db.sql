/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100132
 Source Host           : localhost:3306
 Source Schema         : api_db

 Target Server Type    : MySQL
 Target Server Version : 100132
 File Encoding         : 65001

 Date: 11/11/2018 21:18:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` datetime(0) NOT NULL,
  `modified` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Fashion', 'Category for anything related to fashion.', '2014-06-01 00:35:07', '2014-05-30 17:34:33');
INSERT INTO `categories` VALUES (2, 'Electronics', 'Gadgets, drones and more.', '2014-06-01 00:35:07', '2014-05-30 17:34:33');
INSERT INTO `categories` VALUES (3, 'Motors', 'Motor sports and more', '2014-06-01 00:35:07', '2014-05-30 17:34:54');
INSERT INTO `categories` VALUES (5, 'Movies', 'Movie products.', '0000-00-00 00:00:00', '2016-01-08 13:27:26');
INSERT INTO `categories` VALUES (6, 'Books', 'Kindle books, audio books and more.', '0000-00-00 00:00:00', '2016-01-08 13:27:47');
INSERT INTO `categories` VALUES (13, 'Sports', 'Drop into new winter gear.', '2016-01-09 02:24:24', '2016-01-09 01:24:24');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `price` decimal(10, 0) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime(0) NOT NULL,
  `modified` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'LG P880 4X HD', 'My first awesome phone!', 336, 3, '2014-06-01 01:12:26', '2014-05-31 17:12:26');
INSERT INTO `products` VALUES (2, 'Google Nexus 4', 'The most awesome phone of 2013!', 299, 2, '2014-06-01 01:12:26', '2014-05-31 17:12:26');
INSERT INTO `products` VALUES (3, 'Samsung Galaxy S4', 'How about no?', 600, 3, '2014-06-01 01:12:26', '2014-05-31 17:12:26');
INSERT INTO `products` VALUES (6, 'Bench Shirt', 'The best shirt!', 29, 1, '2014-06-01 01:12:26', '2014-05-31 02:12:21');
INSERT INTO `products` VALUES (7, 'Lenovo Laptop', 'My business partner.', 399, 2, '2014-06-01 01:13:45', '2014-05-31 02:13:39');
INSERT INTO `products` VALUES (8, 'Samsung Galaxy Tab 10.1', 'Good tablet.', 259, 2, '2014-06-01 01:14:13', '2014-05-31 02:14:08');
INSERT INTO `products` VALUES (9, 'Spalding Watch', 'My sports watch.', 199, 1, '2014-06-01 01:18:36', '2014-05-31 02:18:31');
INSERT INTO `products` VALUES (10, 'Sony Smart Watch', 'The coolest smart watch!', 300, 2, '2014-06-06 17:10:01', '2014-06-05 18:09:51');
INSERT INTO `products` VALUES (11, 'Huawei Y300', 'For testing purposes.', 100, 2, '2014-06-06 17:11:04', '2014-06-05 18:10:54');
INSERT INTO `products` VALUES (13, 'Abercrombie Allen Brook Shirt', 'Cool red shirt!', 70, 1, '2014-06-06 17:12:59', '2014-06-05 18:12:49');
INSERT INTO `products` VALUES (26, 'Another product', 'Awesome product!', 555, 2, '2014-11-22 19:07:34', '2014-11-21 20:07:34');
INSERT INTO `products` VALUES (28, 'Wallet', 'You can absolutely use this one!', 799, 6, '2014-12-04 21:12:03', '2014-12-03 22:12:03');
INSERT INTO `products` VALUES (31, 'Amanda Waller Shirt', 'New awesome shirt!', 333, 1, '2014-12-13 00:52:54', '2014-12-12 01:52:54');
INSERT INTO `products` VALUES (42, 'Nike Shoes for Men', 'Nike Shoes', 12999, 3, '2015-12-12 06:47:08', '2015-12-12 05:47:08');
INSERT INTO `products` VALUES (48, 'Bristol Shoes', 'Awesome shoes.', 999, 5, '2016-01-08 06:36:37', '2016-01-08 05:36:37');
INSERT INTO `products` VALUES (60, 'Rolex Watch', 'Luxury watch.', 25000, 1, '2016-01-11 15:46:02', '2016-01-11 14:46:02');
INSERT INTO `products` VALUES (61, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 19:54:55', '2018-11-11 15:54:55');
INSERT INTO `products` VALUES (62, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 19:59:52', '2018-11-11 15:59:52');
INSERT INTO `products` VALUES (63, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 20:05:36', '2018-11-11 16:05:36');
INSERT INTO `products` VALUES (64, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 20:55:25', '2018-11-11 16:55:25');
INSERT INTO `products` VALUES (65, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 20:56:18', '2018-11-11 16:56:18');
INSERT INTO `products` VALUES (66, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 20:56:29', '2018-11-11 16:56:29');
INSERT INTO `products` VALUES (67, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 20:57:08', '2018-11-11 16:57:08');
INSERT INTO `products` VALUES (68, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 20:57:33', '2018-11-11 16:57:33');
INSERT INTO `products` VALUES (69, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 20:58:19', '2018-11-11 16:58:19');
INSERT INTO `products` VALUES (70, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 20:58:42', '2018-11-11 16:58:42');
INSERT INTO `products` VALUES (71, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 20:59:04', '2018-11-11 16:59:04');
INSERT INTO `products` VALUES (72, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 20:59:54', '2018-11-11 16:59:54');
INSERT INTO `products` VALUES (73, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:00:10', '2018-11-11 17:00:10');
INSERT INTO `products` VALUES (74, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:02:17', '2018-11-11 17:02:17');
INSERT INTO `products` VALUES (75, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:02:38', '2018-11-11 17:02:38');
INSERT INTO `products` VALUES (76, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:04:16', '2018-11-11 17:04:16');
INSERT INTO `products` VALUES (77, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:04:28', '2018-11-11 17:04:28');
INSERT INTO `products` VALUES (78, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:04:46', '2018-11-11 17:04:46');
INSERT INTO `products` VALUES (79, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:05:57', '2018-11-11 17:05:57');
INSERT INTO `products` VALUES (80, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:06:45', '2018-11-11 17:06:45');
INSERT INTO `products` VALUES (81, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:07:14', '2018-11-11 17:07:14');
INSERT INTO `products` VALUES (82, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:07:26', '2018-11-11 17:07:26');
INSERT INTO `products` VALUES (83, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:08:08', '2018-11-11 17:08:08');
INSERT INTO `products` VALUES (84, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:08:23', '2018-11-11 17:08:23');
INSERT INTO `products` VALUES (85, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:08:33', '2018-11-11 17:08:33');
INSERT INTO `products` VALUES (86, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:10:22', '2018-11-11 17:10:22');
INSERT INTO `products` VALUES (87, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:10:38', '2018-11-11 17:10:38');
INSERT INTO `products` VALUES (88, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:12:01', '2018-11-11 17:12:01');
INSERT INTO `products` VALUES (89, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:12:09', '2018-11-11 17:12:09');
INSERT INTO `products` VALUES (90, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:12:46', '2018-11-11 17:12:46');
INSERT INTO `products` VALUES (91, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:13:04', '2018-11-11 17:13:04');
INSERT INTO `products` VALUES (92, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:13:50', '2018-11-11 17:13:50');
INSERT INTO `products` VALUES (93, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:14:43', '2018-11-11 17:14:43');
INSERT INTO `products` VALUES (94, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:15:36', '2018-11-11 17:15:36');
INSERT INTO `products` VALUES (95, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:15:40', '2018-11-11 17:15:40');
INSERT INTO `products` VALUES (96, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:17:01', '2018-11-11 17:17:01');
INSERT INTO `products` VALUES (97, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:18:51', '2018-11-11 17:18:51');
INSERT INTO `products` VALUES (98, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:20:35', '2018-11-11 17:20:35');
INSERT INTO `products` VALUES (99, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:21:42', '2018-11-11 17:21:42');
INSERT INTO `products` VALUES (100, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:21:57', '2018-11-11 17:21:57');
INSERT INTO `products` VALUES (101, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:22:02', '2018-11-11 17:22:02');
INSERT INTO `products` VALUES (102, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:22:17', '2018-11-11 17:22:17');
INSERT INTO `products` VALUES (103, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:22:42', '2018-11-11 17:22:42');
INSERT INTO `products` VALUES (104, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:23:48', '2018-11-11 17:23:48');
INSERT INTO `products` VALUES (105, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:24:03', '2018-11-11 17:24:03');
INSERT INTO `products` VALUES (107, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', 199, 2, '2018-11-11 21:28:13', '2018-11-11 17:28:13');

SET FOREIGN_KEY_CHECKS = 1;
