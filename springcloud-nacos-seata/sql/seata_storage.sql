/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : 127.0.0.1:3306
 Source Schema         : seata_storage

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 21/07/2020 12:31:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for storage_tbl
-- ----------------------------
DROP TABLE IF EXISTS `storage_tbl`;
CREATE TABLE `storage_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commodity_code` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `commodity_code` (`commodity_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_tbl
-- ----------------------------
BEGIN;
INSERT INTO `storage_tbl` VALUES (1, 'product-1', 9999999);
INSERT INTO `storage_tbl` VALUES (2, 'product-2', 0);
COMMIT;

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `branch_id` bigint(20) NOT NULL,
  `xid` varchar(100) NOT NULL,
  `context` varchar(128) NOT NULL,
  `rollback_info` longblob NOT NULL,
  `log_status` int(11) NOT NULL,
  `log_created` datetime NOT NULL,
  `log_modified` datetime NOT NULL,
  `ext` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of undo_log
-- ----------------------------
BEGIN;
INSERT INTO `undo_log` VALUES (25, 28808521835765760, '192.168.0.102:8091:28808521667993600', 'serializer=jackson', 0x7B2240636C617373223A22696F2E73656174612E726D2E64617461736F757263652E756E646F2E4272616E6368556E646F4C6F67222C22786964223A223139322E3136382E302E3130323A383039313A3238383038353231363637393933363030222C226272616E63684964223A32383830383532313833353736353736302C2273716C556E646F4C6F6773223A5B226A6176612E7574696C2E41727261794C697374222C5B7B2240636C617373223A22696F2E73656174612E726D2E64617461736F757263652E756E646F2E53514C556E646F4C6F67222C2273716C54797065223A22555044415445222C227461626C654E616D65223A2273746F726167655F74626C222C226265666F7265496D616765223A7B2240636C617373223A22696F2E73656174612E726D2E64617461736F757263652E73716C2E7374727563742E5461626C655265636F726473222C227461626C654E616D65223A2273746F726167655F74626C222C22726F7773223A5B226A6176612E7574696C2E41727261794C697374222C5B7B2240636C617373223A22696F2E73656174612E726D2E64617461736F757263652E73716C2E7374727563742E526F77222C226669656C6473223A5B226A6176612E7574696C2E41727261794C697374222C5B7B2240636C617373223A22696F2E73656174612E726D2E64617461736F757263652E73716C2E7374727563742E4669656C64222C226E616D65223A226964222C226B657954797065223A225052494D4152595F4B4559222C2274797065223A342C2276616C7565223A317D2C7B2240636C617373223A22696F2E73656174612E726D2E64617461736F757263652E73716C2E7374727563742E4669656C64222C226E616D65223A22636F6D6D6F646974795F636F6465222C226B657954797065223A224E554C4C222C2274797065223A31322C2276616C7565223A2270726F647563742D31227D2C7B2240636C617373223A22696F2E73656174612E726D2E64617461736F757263652E73716C2E7374727563742E4669656C64222C226E616D65223A22636F756E74222C226B657954797065223A224E554C4C222C2274797065223A342C2276616C7565223A393939393938377D5D5D7D5D5D7D2C226166746572496D616765223A7B2240636C617373223A22696F2E73656174612E726D2E64617461736F757263652E73716C2E7374727563742E5461626C655265636F726473222C227461626C654E616D65223A2273746F726167655F74626C222C22726F7773223A5B226A6176612E7574696C2E41727261794C697374222C5B7B2240636C617373223A22696F2E73656174612E726D2E64617461736F757263652E73716C2E7374727563742E526F77222C226669656C6473223A5B226A6176612E7574696C2E41727261794C697374222C5B7B2240636C617373223A22696F2E73656174612E726D2E64617461736F757263652E73716C2E7374727563742E4669656C64222C226E616D65223A226964222C226B657954797065223A225052494D4152595F4B4559222C2274797065223A342C2276616C7565223A317D2C7B2240636C617373223A22696F2E73656174612E726D2E64617461736F757263652E73716C2E7374727563742E4669656C64222C226E616D65223A22636F6D6D6F646974795F636F6465222C226B657954797065223A224E554C4C222C2274797065223A31322C2276616C7565223A2270726F647563742D31227D2C7B2240636C617373223A22696F2E73656174612E726D2E64617461736F757263652E73716C2E7374727563742E4669656C64222C226E616D65223A22636F756E74222C226B657954797065223A224E554C4C222C2274797065223A342C2276616C7565223A393939393938367D5D5D7D5D5D7D7D5D5D7D, 0, '2020-07-21 11:54:46', '2020-07-21 11:54:46', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
