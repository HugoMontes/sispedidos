/*
Navicat MySQL Data Transfer

Source Server         : mysql_local
Source Server Version : 100113
Source Host           : localhost:3306
Source Database       : sispedidos

Target Server Type    : MYSQL
Target Server Version : 100113
File Encoding         : 65001

Date: 2018-04-02 01:06:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for detalles
-- ----------------------------
DROP TABLE IF EXISTS `detalles`;
CREATE TABLE `detalles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `producto_id` int(10) unsigned NOT NULL,
  `pedido_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `detalles_producto_id_foreign` (`producto_id`),
  KEY `detalles_pedido_id_foreign` (`pedido_id`),
  CONSTRAINT `detalles_pedido_id_foreign` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `detalles_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of detalles
-- ----------------------------
INSERT INTO `detalles` VALUES ('1', '85', '2018-04-01 22:33:30', '2018-04-01 22:33:30', '15', '9');
INSERT INTO `detalles` VALUES ('3', '85', '2018-04-01 22:34:11', '2018-04-01 22:34:11', '4', '9');
INSERT INTO `detalles` VALUES ('4', '58', '2018-04-01 22:40:41', '2018-04-01 22:40:41', '17', '9');
INSERT INTO `detalles` VALUES ('5', '55', '2018-04-01 22:41:45', '2018-04-01 22:41:45', '5', '9');
INSERT INTO `detalles` VALUES ('6', '2', '2018-04-01 23:29:42', '2018-04-01 23:29:42', '14', '3');
INSERT INTO `detalles` VALUES ('9', '5', '2018-04-02 00:02:39', '2018-04-02 00:02:39', '10', '11');
INSERT INTO `detalles` VALUES ('10', '75', '2018-04-02 00:02:45', '2018-04-02 00:02:45', '17', '11');

-- ----------------------------
-- Table structure for farmacias
-- ----------------------------
DROP TABLE IF EXISTS `farmacias`;
CREATE TABLE `farmacias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duenio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of farmacias
-- ----------------------------
INSERT INTO `farmacias` VALUES ('1', 'FARMACIA CHIRIPUJIO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('2', 'FARMACIA VIRGEN DE COPACABANA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('3', 'FARMACIA SANTA BARBARA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('4', 'FARMACIA ROMA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('5', 'FARMACIA EMANUEL', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('6', 'FARMACIA XIMENA II', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('7', 'FARMACIA LA SALVADORA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('8', 'FARMACIA VIRGEN DE CHAGUAYA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('9', 'FARMACIA CESPA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('10', 'FARMACIA VIRGEN DEL SOCABON', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('11', 'FARMACIA VIRGEN DE LOURDES', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('12', 'FARMACIA CRISTO REY', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('13', 'FARMACIA SAN MATEO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('14', 'FARMACIA VIRGEN DE CHAGUAYA II', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('15', 'FARMACIA SAGRADO CORAZON', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('16', 'FARMACIA FARMACRUZ', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('17', 'FARMACIA ADELAIDA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('18', 'FARMACIA JANNETTE', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('19', 'FARMACIA NIÑO DE PRAGA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('20', 'FARMACIA GUADALUPE', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('21', 'FARMACIA FARMAMUNDO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('22', 'FARMACIA FARMAZUL', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('23', 'FARMACIA CINCO ESQUINAS', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('24', 'FARMACIA LA POPULAR', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('25', 'FARMACIA ORURO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('26', 'FARMACIA KARINA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('27', 'FARMACIA PATRICIA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('28', 'FARMACIA CRUZ AZUL', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('29', 'FARMACIA LA ITALIANA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('30', 'FARMACIA RITA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('31', 'FARMACIA SAN GABRIEL', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('32', 'FARMACIA SANTA TERESA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('33', 'FARMACIA SANTA RITA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('34', 'FARMACIA LOS ANGELES', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('35', 'FARMACIA SEÑOR DEL GRAN PODER', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('36', 'FARMACIA SAN LUIS', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('37', 'FARMACIA FUENTE DE VIDA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('38', 'FARMACIA SAN IGNACIO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('39', 'FARMACIA SAN MARTIN DE PORRES', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('40', 'FARMACIA MARCELINO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('41', 'FARMACIA EDITH', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('42', 'FARMACIA ANDINA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('43', 'FARMACIA FARMASUR', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('44', 'FARMACIA BOLIVIA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('45', 'FARMACIA MANANTIAL DE VIDA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('46', 'FARMACIA VIRGEN DE URKUPIÑA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('47', 'FARMACIA VÍRGEN DE FÁTIMA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('48', 'FARMACIA ESPAÑA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('49', 'FARMACIA LA SALUD', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('50', 'FARMACIA FLOR ROSSIO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('51', 'FARMACIA GLADYS', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('52', 'FARMACIA VITICHI', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('53', 'FARMACIA TARIJA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('54', 'FARMACIA VIRGEN DEL CARMEN', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('55', 'FARMACIA SANTA ISABEL 1', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('56', 'FARMACIA JENNY', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('57', 'FARMACIA LINEA ROJA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('58', 'FARMACIA LOURCEL', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('59', 'FARMACIA GENESIS', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('60', 'FARMACIA NIÑO JESUS', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('61', 'FARMACIA LA ESPERANZA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('62', 'FARMACIA SAN BENITO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('63', 'FARMACIA LA AURORA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('64', 'FARMACIA SAN BARTOLOME', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('65', 'FARMACIA MIRIAM', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('66', 'FARMACIA SAN XAVIER', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('67', 'FARMACIA PANAMERICANA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('68', 'FARMACIA SEÑOR DE BURGOS', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('69', 'FARMACIA SANTA ISABEL 3', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('70', 'FARAMCIA MARIA ISABEL', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('71', 'FARM,ACIA TAURO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('72', 'FARMACIA SAN CRISTOBAL', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('73', 'FARMACIA AMERICA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('74', 'FARMACIA VÍRGEN DE LA CONCEPCIÓN', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('75', 'FARMACIA SAN JUAN DE DIOS', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('76', 'FARMACIA SAN ANDRÉS', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('77', 'FARMACIA SAN FRANCISCO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('78', 'FARMACIA MARIA AUXILIADORA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('79', 'FARMACIA MAITE GUADALUPE', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('80', 'FARMACIA SAN CARLOS', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('81', 'FARMACIA SAN CAYETANO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('82', 'FARMACIA SANTA MARIA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('83', 'FARMACIA JESUS DE NAZARETH', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('84', 'FARMACIA ALEJANDRA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('85', 'FARMACIA SANTA CECILIA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('86', 'FARMACIA SAN SALVADOR', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('87', 'FARMACIA SAN JOSE II', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('88', 'FARMACIA ESTRELLA BLANCA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('89', 'FARMACIA SAN SILVESTRE', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('90', 'FARMACIA IRMA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('91', 'FARMACIA SAN JORGE', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('92', 'FARMACIA SAN MARCOS', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('93', 'FARMACIA BRASIL', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('94', 'FARMACIA SANTA ROSA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('95', 'FARMACIA ARIES', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('96', 'FARMACIA SAN MIGUEL', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('97', 'FARMACIA NAZARENO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('98', 'FARMACIA SANTA MARTA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('99', 'FARMACIA SEÑOR DE BUENA ESPERANZA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('100', 'FARMACIA AMERICANA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('101', 'FARMACIA SAN SIMON', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('102', 'FARMACIA YIREH', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('103', 'FARMACIA POTOSÍ', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('104', 'FARMACIA XIMENA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('105', 'FARMACIA CORAZON DE JESUS', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('106', 'FARMACIA ISRAEL', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('107', 'FARMACIA NATHALIA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('108', 'FARMACIA ANGEL DE MI GUARDA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('109', 'FARMACIA SANTA MONICA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('110', 'FARMACIA FAR-MACO.BOL', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('111', 'FARMACIA ZONA VITAL', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('112', 'FARMACIA IV CENTENARIO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('113', 'FARMACIA MONICA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('114', 'FARMACIA JUAN LEONARDO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('115', 'FARMACIA SANTA CLARA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('116', 'FARMACIA VÍRGEN DE COTOCA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('117', 'FARMACIA OSIRIS', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('118', 'FARMACIA ROXANA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('119', 'FARMACIA RANAAN', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('120', 'FARMACIA VÍRGEN DE CANDELARIA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('121', 'FARMACIA CINTHYA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('122', 'FARMACIA CENTRAL', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('123', 'FARMACIA INTIFARMA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('124', 'FARMACIA JESUS MARIA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('125', 'FARMACIA AMOR DE DIOS', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('126', 'FARMACIA CHUQUISACA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('127', 'LINEA ROJA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('128', 'FARMACIA CRISTO DE LA CONCORDIA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('129', 'FARMACIA SAN AGUSTIN', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('130', 'FARMACIA SAN ANTONIO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('131', 'FARMACIA JUAN PABLO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('132', 'FARMACIA 24 DE MAYO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('133', 'FARMACIA JOSELITO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('134', 'FARMACIA SAN JOSE', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('135', 'FARMACIA UNION', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('136', 'FARMACIA LUZ DE VIDA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('137', 'FARMACIA WALIBY', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('138', 'FARMACIA BRIZA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('139', 'FARMACIA DAMARIS', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('140', 'FARMACIA VENECIA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('141', 'FARMACIA PROVIDENCIA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('142', 'FARMACIA NUESTRA SRA DEL ROSARIO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('143', 'FARMACIA SEÑOR DE SOLANO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('144', 'FARMACIA SAN PEREGRINO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('145', 'FARMACIA 10 DE FEBRERO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('146', 'FARMACIA CRISTO REY II', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('147', 'FARMACIA SAN MARTIN', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('148', 'FARMACIA SAGITARIO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('149', 'FARMACIA CRISTAL', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('150', 'FARMACIA SANTA INES', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('151', 'FARMACIA JESUS OBRERO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('152', 'FARMACIA RAFAEL PABON', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('153', 'FARMACIA ESPIRITU SANTO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('154', 'FARMACIA SEÑOR DE EXALTACION', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('155', 'FARMACIA ABRAAN', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('156', 'FARMACIA CRUZ BLANCA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('157', 'FARMACIA CECILIA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('158', 'FARMACIA OCCIDENTE', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('159', 'FARMASOL', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('160', 'FARMACIA DIVINA LUZ', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('161', 'FARMACIA BET-EL', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('162', 'FARMACIA VÍRGEN DE LAS NIEVES', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('163', 'FARMACIA FELY', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('164', 'FARMACIA GABRIELA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('165', 'FARMACIA SEÑOR DE LOS MILAGROS', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('166', 'FARMACIA SUCRE', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('167', 'FARMACIA LA ESTRELLA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('168', 'FARMACIA SAN PEDRO', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('169', 'FARMACIA WILMA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('170', 'FARMACIA CINTHIA II', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('171', 'FARMACIA COOTEOR', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('172', 'FARMACIA TUPIZA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('173', 'FARMACIA EL BUEN PASTOR', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('174', 'FARMACIA LA LIAHONA', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('175', 'FARMACIA SAN VICENTE', '', '', '', '2018-04-01 16:32:11', '2018-04-01 16:32:17');
INSERT INTO `farmacias` VALUES ('176', 'FARMACIA OSCELY', ' ', ' ', ' ', '2018-04-01 16:32:11', '2018-04-01 18:13:33');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('2018_04_01_123434_create_productos_table', '1');
INSERT INTO `migrations` VALUES ('2018_04_01_123626_create_farmacias_table', '1');
INSERT INTO `migrations` VALUES ('2018_04_01_123729_create_pedidos_table', '1');
INSERT INTO `migrations` VALUES ('2018_04_01_123756_create_detalles_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for pedidos
-- ----------------------------
DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE `pedidos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comentario` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `farmacia_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidos_farmacia_id_foreign` (`farmacia_id`),
  KEY `pedidos_user_id_foreign` (`user_id`),
  CONSTRAINT `pedidos_farmacia_id_foreign` FOREIGN KEY (`farmacia_id`) REFERENCES `farmacias` (`id`) ON DELETE CASCADE,
  CONSTRAINT `pedidos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pedidos
-- ----------------------------
INSERT INTO `pedidos` VALUES ('3', 'comentario pedido 1', '2018-04-01 20:26:08', '2018-04-01 20:26:08', '176', '1');
INSERT INTO `pedidos` VALUES ('4', 'bbbb', '2018-04-01 22:24:26', '2018-04-01 23:37:27', '70', '1');
INSERT INTO `pedidos` VALUES ('9', 'pedido de farmacia isabel', '2018-04-01 22:27:10', '2018-04-01 23:40:36', '70', '1');
INSERT INTO `pedidos` VALUES ('11', 'pedidos para miriam', '2018-04-02 00:02:32', '2018-04-02 00:02:32', '65', '1');

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `precio` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of productos
-- ----------------------------
INSERT INTO `productos` VALUES ('1', 'AURATION CR 200 X 20 COMPRIMIDOS', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('2', 'AURATION CR 400 X 20 COMPRIMIDOS', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('3', 'BETISTIN 24 X 20 COMPRIMIDOS*', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('4', 'BETISTIN X 20 COMPRIMIDOS*', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('5', 'BIOTICO 1500MG 50,38ML BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('6', 'BIOTICO 600MG 15ML BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('7', 'BIPERID LP X 30 COMPRIMIDOS', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('8', 'CARBOLITIUM 300 MG X 50 COMP.', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('9', 'CARBOLITIUM 450 MG X 30 COMP.', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('10', 'CIDEZ 40MG 28CPR BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('11', 'CLOMAX 75 LP X 10 COMP.', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('12', 'CLONOTEN X 60 COMP.', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('13', 'COLOPAX 100 X 20 COMPRIMIDOS', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('14', 'COLOPAX 50 X 20 COMP.', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('15', 'DOMPERIX 10MG X 30 COMP', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('16', 'DOMPERIX 1MG/ML SUS 100ML BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('17', 'DUOMO HP 2MG+5MG X 30 CAPSULAS', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('18', 'EPSIA 100MG X 60 COMP', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('19', 'EPSIA 25MG X 60 COMP', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('20', 'EPSIA 50MG X 60 COMP', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('21', 'ETALPRAM 10 X 30 COMPRIMIDOS', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('22', 'ETALPRAM 20 X 30 COMPRIMIDOS', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('23', 'FEMIPLUS CD X 28 COMP.REC.VTA BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('24', 'FEMIPLUS-20 CD X 28 COMP.REC.VTA BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('25', 'FILINAR G GEL 5MG/ML 120ML/144G AL1', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('26', 'GINNA CR AL 40G AL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('27', 'LUCASTE 4MG 30CPR MAST BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('28', 'LUCASTE 5MG 30CPR MAST BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('29', 'LUNOX 2 X 30 COMPRIMIDOS', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('30', 'LUNOX 3 X 30 COMPRIMIDOS', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('31', 'MUSCULARE 10MG X 30 COMP', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('32', 'MUSCULARE 5MG X 30 COMP', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('33', 'NOVACORT G CR 30G BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('34', 'NOVACORT G POM 30G BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('35', 'PACO X 12 COMP.', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('36', 'PAROXET 10MG  X 20 COMP', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('37', 'PAROXET 20 X 30 COMPRIMIDOS', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('38', 'PLACET 10 X 30 COMPRIMIDOS', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('39', 'POVATA 3.5G X 30 SACHET', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('40', 'RSP 3 X 20 COMPRIMIDOS', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('41', 'SINOT CLAV 400MG+57MG SUS 70ML AL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('42', 'SINOT CLAV 875MG+125MG 14CPR BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('43', 'SNIF SC SPRAY 50ML BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('44', 'SOP 2MG + 0,035MG X 63 COMP', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('45', 'SOP 2MG+0,035MG  21COMP', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('46', 'TALIS 20 X 4 COMPRIMIDOS', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('47', 'TALIS 5 UD X 30 COMPRIMIDOS', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('48', 'TAMIRAM 500MG 10CPR BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('49', 'TAMIRAM 750MG 10CPR BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('50', 'TAMISA 20 75+20MCG 21CPR BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('51', 'TAMISA 20 75+20MCG 63CPR BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('52', 'TAMISA 30 75+30MCG 21CPR BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('53', 'TAMISA 30 75+30MCG 63CPR BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('54', 'TIRIZ 5MG X 10 COMP', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('55', 'TORANTE SOL OR 200ML BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('56', 'VAST 10 10MG 30CPR BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('57', 'VAST 20 20MG 30CPR  BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');
INSERT INTO `productos` VALUES ('58', 'VAST 40 40MG 30CPR BOL', '0.00', '2018-04-01 17:03:15', '2018-04-01 17:03:15');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('member','admin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'member',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'jcastanares', 'jcastanares@gmail.com', '$2y$10$6ErfqDxI3VlhNxLWu8PWv.nMVNY15ubXF.sJyG1uhr91P69FDtlEW', 'admin', 'WiiMcnfJtqSlOnW6mAymGE3gCCnWldOG4RCuxQjg8VgBDwl6aHS0v3I8qJmd', '2018-04-01 13:54:48', '2018-04-02 00:22:39');
INSERT INTO `users` VALUES ('3', 'admin', 'admin@gmail.com', '$2y$10$Rvv09vi.a9lp6Fiucn4sCey.OX856bUaVHrdLls4XHo.CtE3DdG6G', 'admin', 'B6FjGRBnmcUiZFqXu41h41XCXrrnyudEJcx7x9iigYOcDpNSqLtSumdmgI6Y', '2018-04-01 13:59:19', '2018-04-02 00:19:23');
INSERT INTO `users` VALUES ('5', 'juan', 'juan@gmail.com', '$2y$10$CPToPaSkyiuLIW/BU8WwZ.25GPMy0qSMEPR27lcwdBguULrUIPzma', 'member', 'oWLZyUfRPNDnsik6QWCRudoioflU4nAFbl3hCe4X1kl44C9K3Fps9x7ggOUF', '2018-04-01 16:22:48', '2018-04-02 00:29:17');
SET FOREIGN_KEY_CHECKS=1;
