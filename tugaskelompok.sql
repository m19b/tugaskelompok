/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306_1
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : tugaskelompok

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 06/12/2024 15:53:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `urut` int NOT NULL DEFAULT 99,
  `link` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ikon` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'fa fa-home',
  `nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status_aktif` enum('Y','T') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'T',
  `uraian_nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 1, 'tentangkami', 'fa fa-info', 'Tentang Kami', 'Y', 'ini contoh tetang kami');
INSERT INTO `menu` VALUES (2, 2, 'servis', 'fa fa-gift', 'Service', 'Y', NULL);
INSERT INTO `menu` VALUES (3, 3, 'galeri', 'fa fa-image', 'Galeri', 'Y', NULL);
INSERT INTO `menu` VALUES (4, 4, 'team', 'fa fa-github', 'Team', 'Y', NULL);
INSERT INTO `menu` VALUES (5, 5, 'produk', 'fa fa-shopping-cart', 'Produk', 'Y', NULL);
INSERT INTO `menu` VALUES (6, 6, 'kontak', 'fa fa-send', 'Kontak', 'Y', NULL);
INSERT INTO `menu` VALUES (7, 7, 'users', 'fa fa-users', 'Pengguna', 'Y', NULL);
INSERT INTO `menu` VALUES (8, 8, 'menu', 'fa fa-tasks', 'Menu', 'Y', 'Untuk mengatur Menu');

-- ----------------------------
-- Table structure for tentang_kami
-- ----------------------------
DROP TABLE IF EXISTS `tentang_kami`;
CREATE TABLE `tentang_kami`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `level` enum('judul','list') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `judul` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uraian` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status_aktif` enum('T','Y') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ikon` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tentang_kami
-- ----------------------------
INSERT INTO `tentang_kami` VALUES (1, 'judul', 'Tentang UMKM Desa Sejahtera', 'Berawal dari semangat gotong royong masyarakat Desa Sejahtera pada tahun 2018, kami memulai perjalanan untuk mengangkat potensi desa melalui pemberdayaan UMKM. Bermula dari 5 pengrajin dengan produk sederhana, kini kami telah berkembang menjadi wadah bagi 50+ pelaku UMKM desa yang menghasilkan berbagai produk berkualitas.', 'Y', '');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status_aktif` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'T',
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('ikbal@gmail.com', 'Muhammad Ikbal', 'caf1a3dfb505ffed0d024130f58c5cfa', 'Y');

SET FOREIGN_KEY_CHECKS = 1;
