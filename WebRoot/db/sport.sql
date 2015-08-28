/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : sports

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2013-08-04 12:01:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sports_award`
-- ----------------------------
DROP TABLE IF EXISTS `sports_award`;
CREATE TABLE `sports_award` (
`AWARD_ID`  int(11) NOT NULL AUTO_INCREMENT ,
`AWARD_NAME`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`AWARD_SYNOPSIS`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`AWARD_COST`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`AWARD_ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=2

;

-- ----------------------------
-- Records of sports_award
-- ----------------------------
BEGIN;
INSERT INTO `sports_award` VALUES ('1', '一等奖', '人民币', '300元');
COMMIT;

-- ----------------------------
-- Table structure for `sports_item`
-- ----------------------------
DROP TABLE IF EXISTS `sports_item`;
CREATE TABLE `sports_item` (
`ITEM_ID`  int(11) NOT NULL AUTO_INCREMENT ,
`ITEM_NAME`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`ITEM_SYNOPSIS`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`UNIT_TYPE_LIMIT`  char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' ,
`SEX_LIMIT`  char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'M' ,
`AGE_LIMIT_MAX`  int(11) NULL DEFAULT 120 ,
`AGE_LIMIT_MIN`  int(11) NULL DEFAULT 1 ,
`UNIT_NUM_LIMIT`  int(11) NOT NULL ,
`TOTAL_NUM_LIMIT`  int(11) NOT NULL ,
`STOP_TIME`  datetime NOT NULL ,
`FIRST_PROCESS`  int(11) NOT NULL ,
PRIMARY KEY (`ITEM_ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=16

;

-- ----------------------------
-- Records of sports_item
-- ----------------------------
BEGIN;
INSERT INTO `sports_item` VALUES ('14', '男子100米', '男子100米', '3', 'M', '111', '16', '4', '21', '2013-05-21 00:00:00', '16'), ('15', '长跑', '长跑', '3', 'M', '111', '1', '2', '21', '2013-05-21 00:00:00', '18');
COMMIT;

-- ----------------------------
-- Table structure for `sports_match`
-- ----------------------------
DROP TABLE IF EXISTS `sports_match`;
CREATE TABLE `sports_match` (
`MATCH_ID`  int(11) NOT NULL ,
`PERSON_ID`  int(11) NOT NULL ,
`PROCESS_ID`  int(11) NOT NULL ,
`MATCH_NO`  int(11) NOT NULL ,
`MATCH_GROUP_NO`  int(11) NOT NULL ,
`MATCH_SCORE`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`MATCH_RANK`  int(11) NULL DEFAULT NULL ,
`AWARD_ID`  int(11) NOT NULL ,
PRIMARY KEY (`MATCH_ID`),
INDEX `FK_AWARD_ID` (`AWARD_ID`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of sports_match
-- ----------------------------
BEGIN;
INSERT INTO `sports_match` VALUES ('1', '11', '18', '0', '0', '1', '2', '1'), ('2', '11', '16', '0', '0', '2', '2', '1'), ('4', '11', '18', '0', '0', '1', '2', '1'), ('5', '12', '18', '0', '0', '3', '3', '1'), ('7', '11', '17', '0', '0', '2', '2', '1');
COMMIT;

-- ----------------------------
-- Table structure for `sports_person`
-- ----------------------------
DROP TABLE IF EXISTS `sports_person`;
CREATE TABLE `sports_person` (
`PERSON_ID`  int(11) NOT NULL AUTO_INCREMENT ,
`PERSON_NAME`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`SEX`  char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`AGE`  int(11) NOT NULL ,
`UNIT_ID`  int(11) NOT NULL ,
`TELEPHONE`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`PERSON_ID`),
FOREIGN KEY (`UNIT_ID`) REFERENCES `sports_unit` (`UNIT_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `FK_UNIT_ID` (`UNIT_ID`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=13

;

-- ----------------------------
-- Records of sports_person
-- ----------------------------
BEGIN;
INSERT INTO `sports_person` VALUES ('11', 'xxx', 'M', '21', '5', '3213'), ('12', 'ttt', 'M', '20', '5', '3213');
COMMIT;

-- ----------------------------
-- Table structure for `sports_process`
-- ----------------------------
DROP TABLE IF EXISTS `sports_process`;
CREATE TABLE `sports_process` (
`PROCESS_ID`  int(11) NOT NULL AUTO_INCREMENT ,
`PROCESS_NAME`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`ITEM_ID`  int(11) NOT NULL ,
`PROCESS_ORDER`  int(11) NOT NULL ,
`PROCESS_TIME`  datetime NOT NULL ,
`PROCESS_PLACE`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`NUM_EACH_GROUP`  int(11) NOT NULL ,
`NUM_TOTAL`  int(11) NOT NULL ,
PRIMARY KEY (`PROCESS_ID`),
FOREIGN KEY (`ITEM_ID`) REFERENCES `sports_item` (`ITEM_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `FK_ITEM_ID` (`ITEM_ID`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=19

;

-- ----------------------------
-- Records of sports_process
-- ----------------------------
BEGIN;
INSERT INTO `sports_process` VALUES ('14', '决赛', '14', '1', '2013-05-22 00:00:00', '运动场', '4', '21'), ('15', '半决赛', '14', '15', '2013-11-11 00:00:00', '运动场', '0', '10'), ('16', '小组赛', '14', '16', '2013-05-22 00:00:00', '篮球场', '0', '10'), ('17', '决赛', '15', '1', '2013-11-11 00:00:00', '运动场', '2', '2'), ('18', '半决赛', '15', '18', '2013-05-22 00:00:00', '运动场', '0', '3');
COMMIT;

-- ----------------------------
-- Table structure for `sports_unit`
-- ----------------------------
DROP TABLE IF EXISTS `sports_unit`;
CREATE TABLE `sports_unit` (
`UNIT_ID`  int(11) NOT NULL AUTO_INCREMENT ,
`UNIT_NAME`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`UNIT_TYPE`  char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`USERNAME`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`PASSWORD`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`UNIT_ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=6

;

-- ----------------------------
-- Records of sports_unit
-- ----------------------------
BEGIN;
INSERT INTO `sports_unit` VALUES ('1', 'org', '1', 'org', 'org'), ('2', 'ref', '2', 'ref', 'ref'), ('5', '二组', '3', 'sss', 'sss');
COMMIT;

-- ----------------------------
-- Auto increment value for `sports_award`
-- ----------------------------
ALTER TABLE `sports_award` AUTO_INCREMENT=2;

-- ----------------------------
-- Auto increment value for `sports_item`
-- ----------------------------
ALTER TABLE `sports_item` AUTO_INCREMENT=16;

-- ----------------------------
-- Auto increment value for `sports_person`
-- ----------------------------
ALTER TABLE `sports_person` AUTO_INCREMENT=13;

-- ----------------------------
-- Auto increment value for `sports_process`
-- ----------------------------
ALTER TABLE `sports_process` AUTO_INCREMENT=19;

-- ----------------------------
-- Auto increment value for `sports_unit`
-- ----------------------------
ALTER TABLE `sports_unit` AUTO_INCREMENT=6;
