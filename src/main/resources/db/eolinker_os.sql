/*
 Navicat Premium Data Transfer

 Source Server         : 139.196.45.110
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : 139.196.45.110:3306
 Source Schema         : eolinker

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 01/08/2021 21:11:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for eo_api
-- ----------------------------
DROP TABLE IF EXISTS `eo_api`;
CREATE TABLE `eo_api` (
                          `apiID` int(11) unsigned NOT NULL AUTO_INCREMENT,
                          `apiName` varchar(255) COLLATE utf8_bin NOT NULL,
                          `apiURI` varchar(255) COLLATE utf8_bin NOT NULL,
                          `apiProtocol` tinyint(4) unsigned NOT NULL,
                          `apiFailureMock` text COLLATE utf8_bin,
                          `apiSuccessMock` text COLLATE utf8_bin,
                          `apiRequestType` tinyint(4) unsigned NOT NULL,
                          `apiSuccessMockType` tinyint(4) unsigned NOT NULL DEFAULT '0',
                          `apiFailureMockType` tinyint(4) unsigned NOT NULL DEFAULT '0',
                          `apiStatus` tinyint(4) unsigned NOT NULL DEFAULT '0',
                          `apiUpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                          `groupID` int(11) unsigned NOT NULL,
                          `projectID` int(11) unsigned NOT NULL,
                          `starred` tinyint(4) unsigned NOT NULL DEFAULT '0',
                          `removed` tinyint(4) unsigned NOT NULL DEFAULT '0',
                          `removeTime` timestamp NULL DEFAULT NULL,
                          `apiNoteType` tinyint(4) unsigned NOT NULL DEFAULT '0',
                          `apiNoteRaw` text COLLATE utf8_bin,
                          `apiNote` text COLLATE utf8_bin,
                          `apiRequestParamType` tinyint(4) unsigned NOT NULL DEFAULT '0',
                          `apiRequestRaw` text COLLATE utf8_bin,
                          `updateUserID` int(11) NOT NULL DEFAULT '0',
                          `mockRule` text COLLATE utf8_bin,
                          `mockResult` text COLLATE utf8_bin,
                          `mockConfig` text COLLATE utf8_bin,
                          `apiSuccessStatusCode` varchar(255) COLLATE utf8_bin DEFAULT '200',
                          `apiFailureStatusCode` varchar(255) COLLATE utf8_bin DEFAULT '200',
                          `beforeInject` text COLLATE utf8_bin,
                          `afterInject` text COLLATE utf8_bin,
                          `apiMethodType` varchar(255) COLLATE utf8_bin DEFAULT NULL,
                          `apiMethod` varchar(255) COLLATE utf8_bin DEFAULT NULL,
                          PRIMARY KEY (`apiID`,`groupID`,`apiURI`),
                          KEY `groupID` (`groupID`),
                          KEY `apiID` (`apiID`),
                          KEY `projectID` (`projectID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of eo_api
-- ----------------------------
BEGIN;
INSERT INTO `eo_api` VALUES (1, '111', '/adimages', 0, '', '', 0, 0, 0, 0, '2021-08-01 20:48:50', 2, 1, 0, 1, '2021-08-01 21:10:48', 0, '', '', 0, '', 1, '[{\"paramKey\":\"\",\"paramType\":\"0\",\"$index\":0}]', '{}', '{\"rule\":\"\",\"type\":\"object\"}', NULL, NULL, NULL, NULL, '0', '');
INSERT INTO `eo_api` VALUES (5, '?????????-??????????????????', '/agent', 0, '', '', 1, 0, 0, 0, '2021-08-01 18:45:33', 2, 1, 0, 0, NULL, 0, '', '', 2, '', 1, '[{\"paramKey\":\"????????????\",\"paramType\":\"0\",\"$index\":0},{\"paramKey\":\"\",\"paramType\":\"0\",\"$index\":1}]', '{\"????????????\":\"vQhF*1m\"}', '{\"rule\":\"\",\"type\":\"object\"}', NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for eo_api_cache
-- ----------------------------
DROP TABLE IF EXISTS `eo_api_cache`;
CREATE TABLE `eo_api_cache` (
                                `cacheID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                `projectID` int(10) unsigned NOT NULL,
                                `groupID` int(10) unsigned NOT NULL,
                                `apiID` int(10) unsigned NOT NULL,
                                `apiJson` longtext NOT NULL,
                                `starred` tinyint(4) unsigned NOT NULL DEFAULT '0',
                                `updateUserID` int(11) NOT NULL DEFAULT '0',
                                PRIMARY KEY (`cacheID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eo_api_cache
-- ----------------------------
BEGIN;
INSERT INTO `eo_api_cache` VALUES (1, 1, 2, 1, '{\"baseInfo\":{\"apiFailureMock\":\"\",\"apiID\":1,\"apiMethod\":\"\",\"apiMethodType\":\"0\",\"apiName\":\"111\",\"apiNote\":\"\",\"apiNoteRaw\":\"\",\"apiNoteType\":0,\"apiProtocol\":0,\"apiRequestParamType\":0,\"apiRequestRaw\":\"\",\"apiRequestType\":0,\"apiStatus\":0,\"apiSuccessMock\":\"\",\"apiURI\":\"/adimages\",\"apiUpdateTime\":1627822130116,\"groupID\":2,\"mockConfig\":\"{\\\"rule\\\":\\\"\\\",\\\"type\\\":\\\"object\\\"}\",\"mockResult\":\"{}\",\"mockRule\":\"[{\\\"paramKey\\\":\\\"\\\",\\\"paramType\\\":\\\"0\\\",\\\"$index\\\":0}]\",\"projectID\":1,\"starred\":0,\"updateUserID\":1},\"headerInfo\":[],\"mockInfo\":{\"mockResult\":\"{}\",\"mockRule\":[{\"paramKey\":\"\",\"paramType\":\"0\",\"$index\":0}],\"mockConfig\":\"{\\\"rule\\\":\\\"\\\",\\\"type\\\":\\\"object\\\"}\"},\"requestInfo\":[{\"paramType\":\"0\",\"paramKey\":\"1\",\"paramValueList\":[],\"default\":0,\"paramNotNull\":\"0\",\"$index\":0,\"paramName\":\"1\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"}],\"resultInfo\":[]}', 0, 1);
INSERT INTO `eo_api_cache` VALUES (6, 1, 2, 5, '{\"baseInfo\":{\"apiRequestRaw\":\"\",\"apiRequestType\":\"1\",\"apiFailureMock\":\"\",\"apiName\":\"?????????-??????????????????\",\"apiNote\":\"\",\"updateUserID\":130,\"groupID\":2355,\"mockConfig\":\"{\\\"rule\\\":\\\"\\\",\\\"type\\\":\\\"object\\\"}\",\"mockRule\":\"[{\\\"paramKey\\\":\\\"????????????\\\",\\\"paramType\\\":\\\"0\\\",\\\"$index\\\":0},{\\\"paramKey\\\":\\\"\\\",\\\"paramType\\\":\\\"0\\\",\\\"$index\\\":1}]\",\"apiUpdateTime\":1627814733679,\"apiProtocol\":0,\"apiRequestParamType\":2,\"apiURI\":\"/agent\",\"mockResult\":\"{\\\"????????????\\\":\\\"vQhF*1m\\\"}\",\"starred\":0,\"apiNoteType\":0,\"apiSuccessMock\":\"\",\"apiNoteRaw\":\"\",\"projectID\":340,\"apiID\":13239,\"apiStatus\":0},\"headerInfo\":[],\"mockInfo\":{\"mockResult\":\"{\\\"????????????\\\":\\\"vQhF*1m\\\"}\",\"mockRule\":[{\"paramKey\":\"????????????\",\"paramType\":\"0\",\"$index\":0},{\"paramKey\":\"\",\"paramType\":\"0\",\"$index\":1}],\"mockConfig\":{\"rule\":\"\",\"type\":\"object\"}},\"requestInfo\":[{\"paramType\":\"3\",\"paramKey\":\"id\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"Id\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"3\",\"paramKey\":\"userId\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????id\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"0\",\"paramKey\":\"enterpriseName\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"????????????\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"0\",\"paramKey\":\"name\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"?????????\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"0\",\"paramKey\":\"mobile\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"????????????\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"3\",\"paramKey\":\"provinceId\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????id\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"3\",\"paramKey\":\"cityId\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????id\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"3\",\"paramKey\":\"areaId\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????id\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"0\",\"paramKey\":\"address\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"????????????\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"0\",\"paramKey\":\"imgs\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"0\",\"paramKey\":\"province\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"0\",\"paramKey\":\"city\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"7\",\"paramKey\":\"gmtCreate\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"GmtCreate\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"yyyy-MM-dd HH:mm:ss\"},{\"paramType\":\"7\",\"paramKey\":\"gmtModified\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"GmtModified\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"yyyy-MM-dd HH:mm:ss\"},{\"paramType\":\"3\",\"paramKey\":\"auditStatus\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"????????????-1??????0?????????1??????2??????\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????\\n????????????-1??????0?????????1??????2??????\"},{\"paramType\":\"0\",\"paramKey\":\"area\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"0\",\"paramKey\":\"identity\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"???????????????\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"0\",\"paramKey\":\"identityName\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"???????????????\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"8\",\"paramKey\":\"wallet\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????????????????\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"0\",\"paramKey\":\"subAcctNo\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"?????????????????????\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"0\",\"paramKey\":\"wxAcct\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????????????????-wx\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"0\",\"paramKey\":\"aliAcct\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????????????????-alipay\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????\\n??????????????????-alipay\"},{\"paramType\":\"0\",\"paramKey\":\"bindPhone\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????????????????\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"0\",\"paramKey\":\"contractNo\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"????????????????????????\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"3\",\"paramKey\":\"yunBusinessFlow\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"0.??????????????? 1.????????????????????? 2.????????????????????????3.????????????????????????4.???????????????????????????5.????????????\\n      ????????????   1:?????????????????????   3:????????????????????????   6:????????????...\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????\\n0.??????????????? 1.????????????????????? 2.????????????????????????3.????????????????????????4.???????????????????????????5.????????????\\n      ????????????   1:?????????????????????   3:????????????????????????   6:???????????????   7:???????????????  8:????????????????????????\"},{\"paramType\":\"0\",\"paramKey\":\"requestNo\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"???????????????,??????????????????\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????\\n???????????????,??????????????????\"},{\"paramType\":\"8\",\"paramKey\":\"valid\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"????????????h5\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"0\",\"paramKey\":\"isNew\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"3\",\"paramKey\":\"timeNumber\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"7\",\"paramKey\":\"beginDate\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"yyyy-MM-dd HH:mm:ss\"},{\"paramType\":\"7\",\"paramKey\":\"endDate\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"yyyy-MM-dd HH:mm:ss\"},{\"paramType\":\"0\",\"paramKey\":\"merchantNo\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"???????????????\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"0\",\"paramKey\":\"auditOpinion\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"3\",\"paramKey\":\"pageIndex\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"?????? ?????????1\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"},{\"paramType\":\"3\",\"paramKey\":\"pageSize\",\"paramValueList\":[],\"default\":\"\",\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"???????????? ?????????20\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"}],\"resultInfo\":[{\"paramKey\":\"pageNum\",\"paramType\":\"3\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"?????????\"},{\"paramKey\":\"pageSize\",\"paramType\":\"3\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"???????????????\"},{\"paramKey\":\"size\",\"paramType\":\"3\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????????????????\"},{\"paramKey\":\"pages\",\"paramType\":\"3\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"?????????\"},{\"paramKey\":\"prePage\",\"paramType\":\"3\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"?????????\"},{\"paramKey\":\"nextPage\",\"paramType\":\"3\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"?????????\"},{\"paramKey\":\"isFirstPage\",\"paramType\":\"8\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????????????????\"},{\"paramKey\":\"isLastPage\",\"paramType\":\"8\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"?????????????????????\"},{\"paramKey\":\"hasPreviousPage\",\"paramType\":\"8\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????????????????\"},{\"paramKey\":\"hasNextPage\",\"paramType\":\"8\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????????????????\"},{\"paramKey\":\"total\",\"paramType\":\"3\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"????????????\"},{\"paramKey\":\"list\",\"paramType\":\"12\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"?????????\"},{\"paramKey\":\"list>>id\",\"paramType\":\"3\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"Id\"},{\"paramKey\":\"list>>userId\",\"paramType\":\"3\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????id\"},{\"paramKey\":\"list>>enterpriseName\",\"paramType\":\"0\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"????????????\"},{\"paramKey\":\"list>>name\",\"paramType\":\"0\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"?????????\"},{\"paramKey\":\"list>>mobile\",\"paramType\":\"0\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"????????????\"},{\"paramKey\":\"list>>provinceId\",\"paramType\":\"3\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????id\"},{\"paramKey\":\"list>>cityId\",\"paramType\":\"3\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????id\"},{\"paramKey\":\"list>>areaId\",\"paramType\":\"3\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????id\"},{\"paramKey\":\"list>>address\",\"paramType\":\"0\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"????????????\"},{\"paramKey\":\"list>>imgs\",\"paramType\":\"0\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????\"},{\"paramKey\":\"list>>province\",\"paramType\":\"0\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????\"},{\"paramKey\":\"list>>city\",\"paramType\":\"0\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????\"},{\"paramKey\":\"list>>gmtCreate\",\"paramType\":\"7\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"GmtCreate\"},{\"paramKey\":\"list>>gmtModified\",\"paramType\":\"7\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"GmtModified\"},{\"paramKey\":\"list>>auditStatus\",\"paramType\":\"3\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"????????????-1??????0?????????1??????2??????\"},{\"paramKey\":\"list>>area\",\"paramType\":\"0\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"\"},{\"paramKey\":\"list>>identity\",\"paramType\":\"0\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"???????????????\"},{\"paramKey\":\"list>>identityName\",\"paramType\":\"0\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"???????????????\"},{\"paramKey\":\"list>>wallet\",\"paramType\":\"8\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????????????????\"},{\"paramKey\":\"list>>subAcctNo\",\"paramType\":\"0\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"?????????????????????\"},{\"paramKey\":\"list>>wxAcct\",\"paramType\":\"0\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????????????????-wx\"},{\"paramKey\":\"list>>aliAcct\",\"paramType\":\"0\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????????????????-alipay\"},{\"paramKey\":\"list>>bindPhone\",\"paramType\":\"0\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"??????????????????\"},{\"paramKey\":\"list>>contractNo\",\"paramType\":\"0\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"????????????????????????\"},{\"paramKey\":\"list>>yunBusinessFlow\",\"paramType\":\"3\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"0.??????????????? 1.????????????????????? 2.????????????????????????3.????????????????????????4.???????????????????????????5.????????????\\n      ????????????   1:?????????????????????   3:????????????????????????   6:????????????...\"},{\"paramKey\":\"list>>requestNo\",\"paramType\":\"0\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"???????????????,??????????????????\"},{\"paramKey\":\"list>>valid\",\"paramType\":\"8\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"????????????h5\"},{\"paramKey\":\"list>>isNew\",\"paramType\":\"0\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"\"},{\"paramKey\":\"list>>timeNumber\",\"paramType\":\"3\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"\"},{\"paramKey\":\"list>>beginDate\",\"paramType\":\"7\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"\"},{\"paramKey\":\"list>>endDate\",\"paramType\":\"7\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"\"},{\"paramKey\":\"list>>merchantNo\",\"paramType\":\"0\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"???????????????\"},{\"paramKey\":\"list>>auditOpinion\",\"paramType\":\"0\",\"paramValueList\":[],\"paramNotNull\":\"0\",\"$index\":\"0\",\"paramName\":\"\"}]}', 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for eo_api_env
-- ----------------------------
DROP TABLE IF EXISTS `eo_api_env`;
CREATE TABLE `eo_api_env` (
                              `envID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                              `envName` varchar(255) NOT NULL,
                              `projectID` int(10) unsigned NOT NULL,
                              PRIMARY KEY (`envID`,`projectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_api_env_front_uri
-- ----------------------------
DROP TABLE IF EXISTS `eo_api_env_front_uri`;
CREATE TABLE `eo_api_env_front_uri` (
                                        `envID` int(10) unsigned NOT NULL,
                                        `uri` varchar(255) NOT NULL,
                                        `uriID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                        `applyProtocol` varchar(4) NOT NULL DEFAULT '-1',
                                        PRIMARY KEY (`uriID`,`envID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_api_env_header
-- ----------------------------
DROP TABLE IF EXISTS `eo_api_env_header`;
CREATE TABLE `eo_api_env_header` (
                                     `headerID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                     `envID` int(11) NOT NULL,
                                     `applyProtocol` varchar(255) DEFAULT NULL,
                                     `headerName` varchar(255) NOT NULL,
                                     `headerValue` text NOT NULL,
                                     PRIMARY KEY (`headerID`,`envID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_api_env_param
-- ----------------------------
DROP TABLE IF EXISTS `eo_api_env_param`;
CREATE TABLE `eo_api_env_param` (
                                    `paramID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                    `envID` int(10) unsigned NOT NULL,
                                    `paramKey` varchar(255) NOT NULL,
                                    `paramValue` text NOT NULL,
                                    PRIMARY KEY (`paramID`,`envID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_api_env_param_additional
-- ----------------------------
DROP TABLE IF EXISTS `eo_api_env_param_additional`;
CREATE TABLE `eo_api_env_param_additional` (
                                               `paramID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                               `envID` int(10) unsigned NOT NULL,
                                               `paramKey` varchar(255) NOT NULL,
                                               `paramValue` text NOT NULL,
                                               PRIMARY KEY (`paramID`,`envID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_api_group
-- ----------------------------
DROP TABLE IF EXISTS `eo_api_group`;
CREATE TABLE `eo_api_group` (
                                `groupID` int(11) unsigned NOT NULL AUTO_INCREMENT,
                                `groupName` varchar(30) COLLATE utf8_bin NOT NULL,
                                `projectID` int(11) unsigned NOT NULL,
                                `parentGroupID` int(10) unsigned NOT NULL DEFAULT '0',
                                `isChild` tinyint(4) unsigned NOT NULL DEFAULT '0',
                                PRIMARY KEY (`groupID`,`projectID`),
                                KEY `groupID` (`groupID`),
                                KEY `projectID` (`projectID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of eo_api_group
-- ----------------------------
BEGIN;
INSERT INTO `eo_api_group` VALUES (1, '????????????', 1, 0, 0);
INSERT INTO `eo_api_group` VALUES (2, 'ces', 1, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for eo_api_group_order
-- ----------------------------
DROP TABLE IF EXISTS `eo_api_group_order`;
CREATE TABLE `eo_api_group_order` (
                                      `orderID` int(11) NOT NULL AUTO_INCREMENT,
                                      `projectID` int(11) NOT NULL,
                                      `orderList` text,
                                      PRIMARY KEY (`orderID`,`projectID`),
                                      UNIQUE KEY `projectID` (`projectID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_api_header
-- ----------------------------
DROP TABLE IF EXISTS `eo_api_header`;
CREATE TABLE `eo_api_header` (
                                 `headerID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                 `headerName` varchar(255) NOT NULL,
                                 `headerValue` text NOT NULL,
                                 `apiID` int(10) unsigned NOT NULL,
                                 PRIMARY KEY (`headerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_api_history
-- ----------------------------
DROP TABLE IF EXISTS `eo_api_history`;
CREATE TABLE `eo_api_history` (
                                  `historyID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                  `projectID` int(10) unsigned NOT NULL,
                                  `groupID` int(10) unsigned NOT NULL,
                                  `apiID` int(10) unsigned NOT NULL,
                                  `historyJson` longtext NOT NULL,
                                  `updateDesc` varchar(255) NOT NULL,
                                  `updateUserID` int(10) unsigned NOT NULL,
                                  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                  `isNow` tinyint(4) unsigned NOT NULL DEFAULT '0',
                                  PRIMARY KEY (`historyID`,`apiID`,`updateTime`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eo_api_history
-- ----------------------------
BEGIN;
INSERT INTO `eo_api_history` VALUES (1, 1, 2, 1, '{\"baseInfo\":{\"apiFailureMock\":\"\",\"apiID\":1,\"apiMethod\":\"\",\"apiMethodType\":\"0\",\"apiName\":\"111\",\"apiNote\":\"\",\"apiNoteRaw\":\"\",\"apiNoteType\":0,\"apiProtocol\":0,\"apiRequestParamType\":0,\"apiRequestRaw\":\"\",\"apiRequestType\":0,\"apiStatus\":0,\"apiSuccessMock\":\"\",\"apiURI\":\"/adimages\",\"apiUpdateTime\":1627822130116,\"groupID\":2,\"mockConfig\":\"{\\\"rule\\\":\\\"\\\",\\\"type\\\":\\\"object\\\"}\",\"mockResult\":\"{}\",\"mockRule\":\"[{\\\"paramKey\\\":\\\"\\\",\\\"paramType\\\":\\\"0\\\",\\\"$index\\\":0}]\",\"projectID\":1,\"starred\":0,\"updateUserID\":1},\"headerInfo\":[],\"mockInfo\":{\"mockResult\":\"{}\",\"mockRule\":[{\"paramKey\":\"\",\"paramType\":\"0\",\"$index\":0}],\"mockConfig\":\"{\\\"rule\\\":\\\"\\\",\\\"type\\\":\\\"object\\\"}\"},\"requestInfo\":[{\"paramType\":\"0\",\"paramKey\":\"1\",\"paramValueList\":[],\"default\":0,\"paramNotNull\":\"0\",\"$index\":0,\"paramName\":\"1\",\"paramNote\":\"\",\"paramLimit\":\"\",\"paramValue\":\"\"}],\"resultInfo\":[]}', '??????API', 1, '2021-08-01 20:48:50', 1);
COMMIT;

-- ----------------------------
-- Table structure for eo_api_request_param
-- ----------------------------
DROP TABLE IF EXISTS `eo_api_request_param`;
CREATE TABLE `eo_api_request_param` (
                                        `paramID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                        `paramName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
                                        `paramKey` varchar(255) COLLATE utf8_bin NOT NULL,
                                        `paramValue` text COLLATE utf8_bin NOT NULL,
                                        `paramType` tinyint(4) unsigned NOT NULL DEFAULT '0',
                                        `paramLimit` varchar(255) COLLATE utf8_bin DEFAULT NULL,
                                        `apiID` int(10) unsigned NOT NULL,
                                        `paramNotNull` tinyint(4) NOT NULL DEFAULT '0',
                                        PRIMARY KEY (`paramID`),
                                        KEY `apiID` (`apiID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of eo_api_request_param
-- ----------------------------
BEGIN;
INSERT INTO `eo_api_request_param` VALUES (1, '1', '1', '', 0, '', 1, 0);
INSERT INTO `eo_api_request_param` VALUES (2, 'Id', 'id', '', 3, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (3, '??????id', 'userId', '', 3, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (4, '????????????', 'enterpriseName', '', 0, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (5, '?????????', 'name', '', 0, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (6, '????????????', 'mobile', '', 0, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (7, '??????id', 'provinceId', '', 3, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (8, '??????id', 'cityId', '', 3, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (9, '??????id', 'areaId', '', 3, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (10, '????????????', 'address', '', 0, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (11, '??????', 'imgs', '', 0, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (12, '??????', 'province', '', 0, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (13, '??????', 'city', '', 0, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (14, 'GmtCreate', 'gmtCreate', 'yyyy-MM-dd HH:mm:ss', 7, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (15, 'GmtModified', 'gmtModified', 'yyyy-MM-dd HH:mm:ss', 7, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (16, '????????????-1??????0?????????1??????2??????', 'auditStatus', '??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????\n????????????-1??????0?????????1??????2??????', 3, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (17, '', 'area', '', 0, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (18, '???????????????', 'identity', '', 0, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (19, '???????????????', 'identityName', '', 0, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (20, '??????????????????', 'wallet', '', 8, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (21, '?????????????????????', 'subAcctNo', '', 0, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (22, '??????????????????-wx', 'wxAcct', '', 0, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (23, '??????????????????-alipay', 'aliAcct', '??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????\n??????????????????-alipay', 0, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (24, '??????????????????', 'bindPhone', '', 0, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (25, '????????????????????????', 'contractNo', '', 0, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (26, '0.??????????????? 1.????????????????????? 2.????????????????????????3.????????????????????????4.???????????????????????????5.????????????\n      ????????????   1:?????????????????????   3:????????????????????????   6:????????????...', 'yunBusinessFlow', '??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????\n0.??????????????? 1.????????????????????? 2.????????????????????????3.????????????????????????4.???????????????????????????5.????????????\n      ????????????   1:?????????????????????   3:????????????????????????   6:???????????????   7:???????????????  8:????????????????????????', 3, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (27, '???????????????,??????????????????', 'requestNo', '??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????\n???????????????,??????????????????', 0, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (28, '????????????h5', 'valid', '', 8, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (29, '', 'isNew', '', 0, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (30, '', 'timeNumber', '', 3, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (31, '', 'beginDate', 'yyyy-MM-dd HH:mm:ss', 7, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (32, '', 'endDate', 'yyyy-MM-dd HH:mm:ss', 7, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (33, '???????????????', 'merchantNo', '', 0, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (34, '', 'auditOpinion', '', 0, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (35, '?????? ?????????1', 'pageIndex', '', 3, '', 5, 0);
INSERT INTO `eo_api_request_param` VALUES (36, '???????????? ?????????20', 'pageSize', '', 3, '', 5, 0);
COMMIT;

-- ----------------------------
-- Table structure for eo_api_request_value
-- ----------------------------
DROP TABLE IF EXISTS `eo_api_request_value`;
CREATE TABLE `eo_api_request_value` (
                                        `valueID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                        `value` text,
                                        `valueDescription` varchar(255) DEFAULT NULL,
                                        `paramID` int(10) unsigned NOT NULL,
                                        PRIMARY KEY (`valueID`),
                                        KEY `paramID` (`paramID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_api_result_param
-- ----------------------------
DROP TABLE IF EXISTS `eo_api_result_param`;
CREATE TABLE `eo_api_result_param` (
                                       `paramID` int(11) unsigned NOT NULL AUTO_INCREMENT,
                                       `paramName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
                                       `paramKey` varchar(255) COLLATE utf8_bin NOT NULL,
                                       `apiID` int(11) unsigned NOT NULL,
                                       `paramNotNull` tinyint(4) unsigned NOT NULL,
                                       PRIMARY KEY (`paramID`),
                                       KEY `apiID` (`apiID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of eo_api_result_param
-- ----------------------------
BEGIN;
INSERT INTO `eo_api_result_param` VALUES (1, '?????????', 'pageNum', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (2, '???????????????', 'pageSize', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (3, '??????????????????', 'size', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (4, '?????????', 'pages', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (5, '?????????', 'prePage', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (6, '?????????', 'nextPage', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (7, '??????????????????', 'isFirstPage', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (8, '?????????????????????', 'isLastPage', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (9, '??????????????????', 'hasPreviousPage', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (10, '??????????????????', 'hasNextPage', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (11, '????????????', 'total', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (12, '?????????', 'list', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (13, 'Id', 'list>>id', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (14, '??????id', 'list>>userId', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (15, '????????????', 'list>>enterpriseName', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (16, '?????????', 'list>>name', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (17, '????????????', 'list>>mobile', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (18, '??????id', 'list>>provinceId', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (19, '??????id', 'list>>cityId', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (20, '??????id', 'list>>areaId', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (21, '????????????', 'list>>address', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (22, '??????', 'list>>imgs', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (23, '??????', 'list>>province', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (24, '??????', 'list>>city', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (25, 'GmtCreate', 'list>>gmtCreate', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (26, 'GmtModified', 'list>>gmtModified', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (27, '????????????-1??????0?????????1??????2??????', 'list>>auditStatus', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (28, '', 'list>>area', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (29, '???????????????', 'list>>identity', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (30, '???????????????', 'list>>identityName', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (31, '??????????????????', 'list>>wallet', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (32, '?????????????????????', 'list>>subAcctNo', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (33, '??????????????????-wx', 'list>>wxAcct', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (34, '??????????????????-alipay', 'list>>aliAcct', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (35, '??????????????????', 'list>>bindPhone', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (36, '????????????????????????', 'list>>contractNo', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (37, '0.??????????????? 1.????????????????????? 2.????????????????????????3.????????????????????????4.???????????????????????????5.????????????\n      ????????????   1:?????????????????????   3:????????????????????????   6:????????????...', 'list>>yunBusinessFlow', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (38, '???????????????,??????????????????', 'list>>requestNo', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (39, '????????????h5', 'list>>valid', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (40, '', 'list>>isNew', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (41, '', 'list>>timeNumber', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (42, '', 'list>>beginDate', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (43, '', 'list>>endDate', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (44, '???????????????', 'list>>merchantNo', 5, 0);
INSERT INTO `eo_api_result_param` VALUES (45, '', 'list>>auditOpinion', 5, 0);
COMMIT;

-- ----------------------------
-- Table structure for eo_api_result_value
-- ----------------------------
DROP TABLE IF EXISTS `eo_api_result_value`;
CREATE TABLE `eo_api_result_value` (
                                       `valueID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                       `value` text COLLATE utf8_bin NOT NULL,
                                       `valueDescription` varchar(255) COLLATE utf8_bin DEFAULT NULL,
                                       `paramID` int(10) unsigned NOT NULL,
                                       PRIMARY KEY (`valueID`),
                                       KEY `resultParamID` (`paramID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for eo_api_status_code_group_order
-- ----------------------------
DROP TABLE IF EXISTS `eo_api_status_code_group_order`;
CREATE TABLE `eo_api_status_code_group_order` (
                                                  `orderID` int(11) NOT NULL AUTO_INCREMENT,
                                                  `projectID` int(11) NOT NULL,
                                                  `orderList` text NOT NULL,
                                                  PRIMARY KEY (`orderID`,`projectID`),
                                                  UNIQUE KEY `projectID` (`projectID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_api_test_history
-- ----------------------------
DROP TABLE IF EXISTS `eo_api_test_history`;
CREATE TABLE `eo_api_test_history` (
                                       `testID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                       `apiID` int(10) unsigned NOT NULL,
                                       `requestInfo` longtext,
                                       `resultInfo` longtext,
                                       `testTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                       `projectID` int(10) unsigned NOT NULL,
                                       PRIMARY KEY (`testID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_conn_database
-- ----------------------------
DROP TABLE IF EXISTS `eo_conn_database`;
CREATE TABLE `eo_conn_database` (
                                    `connID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                    `dbID` int(10) unsigned NOT NULL,
                                    `userID` int(10) unsigned NOT NULL,
                                    `userType` tinyint(4) NOT NULL DEFAULT '0',
                                    `inviteUserID` int(10) DEFAULT NULL,
                                    `partnerNickName` varchar(255) DEFAULT NULL,
                                    PRIMARY KEY (`connID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_conn_project
-- ----------------------------
DROP TABLE IF EXISTS `eo_conn_project`;
CREATE TABLE `eo_conn_project` (
                                   `connID` int(11) unsigned NOT NULL AUTO_INCREMENT,
                                   `projectID` int(11) unsigned NOT NULL,
                                   `userID` int(11) unsigned NOT NULL,
                                   `userType` tinyint(4) unsigned NOT NULL DEFAULT '0',
                                   `inviteUserID` int(11) DEFAULT NULL,
                                   `partnerNickName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
                                   PRIMARY KEY (`connID`,`projectID`,`userID`),
                                   KEY `projectID` (`projectID`),
                                   KEY `eo_conn_ibfk_2` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of eo_conn_project
-- ----------------------------
BEGIN;
INSERT INTO `eo_conn_project` VALUES (1, 1, 1, 0, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for eo_database
-- ----------------------------
DROP TABLE IF EXISTS `eo_database`;
CREATE TABLE `eo_database` (
                               `dbID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                               `dbName` varchar(255) NOT NULL,
                               `dbVersion` float unsigned NOT NULL,
                               `dbUpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                               `databaseType` tinyint(4) NOT NULL DEFAULT '0',
                               PRIMARY KEY (`dbID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_database_table
-- ----------------------------
DROP TABLE IF EXISTS `eo_database_table`;
CREATE TABLE `eo_database_table` (
                                     `dbID` int(10) unsigned NOT NULL,
                                     `tableID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                     `tableName` varchar(255) NOT NULL,
                                     `tableDescription` varchar(255) DEFAULT NULL,
                                     PRIMARY KEY (`tableID`,`dbID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_database_table_field
-- ----------------------------
DROP TABLE IF EXISTS `eo_database_table_field`;
CREATE TABLE `eo_database_table_field` (
                                           `fieldID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                           `fieldName` varchar(255) NOT NULL,
                                           `fieldType` varchar(10) NOT NULL,
                                           `fieldLength` varchar(10) NOT NULL,
                                           `isNotNull` tinyint(4) unsigned NOT NULL DEFAULT '0',
                                           `isPrimaryKey` tinyint(4) unsigned NOT NULL DEFAULT '0',
                                           `fieldDescription` varchar(255) DEFAULT NULL,
                                           `tableID` int(10) unsigned NOT NULL,
                                           `defaultValue` varchar(255) DEFAULT NULL,
                                           PRIMARY KEY (`fieldID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_log_project_operation
-- ----------------------------
DROP TABLE IF EXISTS `eo_log_project_operation`;
CREATE TABLE `eo_log_project_operation` (
                                            `opID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                            `opType` tinyint(4) unsigned NOT NULL DEFAULT '0',
                                            `opUserID` int(10) unsigned NOT NULL,
                                            `opDesc` text NOT NULL,
                                            `opTime` datetime NOT NULL,
                                            `opProjectID` int(10) unsigned NOT NULL,
                                            `opTarget` tinyint(4) unsigned NOT NULL,
                                            `opTargetID` int(10) unsigned NOT NULL,
                                            PRIMARY KEY (`opID`,`opTargetID`,`opProjectID`,`opUserID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eo_log_project_operation
-- ----------------------------
BEGIN;
INSERT INTO `eo_log_project_operation` VALUES (1, 0, 1, '????????????', '2021-08-01 16:48:52', 1, 0, 1);
INSERT INTO `eo_log_project_operation` VALUES (2, 0, 1, '?????????????????? \'ces\'', '2021-08-01 16:48:59', 1, 2, 2);
INSERT INTO `eo_log_project_operation` VALUES (3, 0, 1, '????????????  \'111\'', '2021-08-01 20:48:50', 1, 1, 1);
INSERT INTO `eo_log_project_operation` VALUES (4, 3, 1, '????????????\'111\'', '2021-08-01 20:49:48', 1, 1, 1);
INSERT INTO `eo_log_project_operation` VALUES (5, 0, 1, '??????????????????\'?????????-??????????????????\'', '2021-08-01 21:03:59', 1, 1, 1);
INSERT INTO `eo_log_project_operation` VALUES (6, 2, 1, '?????????:\'111\'?????????????????????', '2021-08-01 21:10:48', 1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for eo_message
-- ----------------------------
DROP TABLE IF EXISTS `eo_message`;
CREATE TABLE `eo_message` (
                              `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                              `toUserID` int(10) unsigned NOT NULL,
                              `fromUserID` int(10) unsigned NOT NULL,
                              `msgSendTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                              `msgType` tinyint(4) unsigned NOT NULL DEFAULT '0',
                              `summary` varchar(255) DEFAULT NULL,
                              `msg` text NOT NULL,
                              `isRead` tinyint(4) unsigned NOT NULL DEFAULT '0',
                              `otherMsg` text,
                              PRIMARY KEY (`msgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_project
-- ----------------------------
DROP TABLE IF EXISTS `eo_project`;
CREATE TABLE `eo_project` (
                              `projectID` int(11) unsigned NOT NULL AUTO_INCREMENT,
                              `projectType` tinyint(4) unsigned NOT NULL,
                              `projectName` varchar(255) COLLATE utf8_bin NOT NULL,
                              `projectUpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                              `projectVersion` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '1.0',
                              PRIMARY KEY (`projectID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of eo_project
-- ----------------------------
BEGIN;
INSERT INTO `eo_project` VALUES (1, 0, 'test', '2021-08-01 21:10:48', '1.0');
COMMIT;

-- ----------------------------
-- Table structure for eo_project_document
-- ----------------------------
DROP TABLE IF EXISTS `eo_project_document`;
CREATE TABLE `eo_project_document` (
                                       `documentID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                       `groupID` int(10) unsigned NOT NULL,
                                       `projectID` int(10) unsigned NOT NULL,
                                       `contentType` tinyint(4) unsigned NOT NULL,
                                       `contentRaw` longtext,
                                       `content` longtext,
                                       `title` varchar(255) NOT NULL,
                                       `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                                       `userID` int(10) unsigned NOT NULL,
                                       PRIMARY KEY (`documentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_project_document_group
-- ----------------------------
DROP TABLE IF EXISTS `eo_project_document_group`;
CREATE TABLE `eo_project_document_group` (
                                             `groupID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                             `projectID` int(10) unsigned NOT NULL,
                                             `groupName` varchar(255) NOT NULL,
                                             `parentGroupID` int(10) unsigned NOT NULL DEFAULT '0',
                                             `isChild` tinyint(4) unsigned NOT NULL DEFAULT '0',
                                             PRIMARY KEY (`groupID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eo_project_document_group
-- ----------------------------
BEGIN;
INSERT INTO `eo_project_document_group` VALUES (1, 1, '????????????', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for eo_project_document_group_order
-- ----------------------------
DROP TABLE IF EXISTS `eo_project_document_group_order`;
CREATE TABLE `eo_project_document_group_order` (
                                                   `orderID` int(11) NOT NULL AUTO_INCREMENT,
                                                   `projectID` int(11) NOT NULL,
                                                   `orderList` text NOT NULL,
                                                   PRIMARY KEY (`orderID`,`projectID`),
                                                   UNIQUE KEY `projectID` (`projectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_project_environment
-- ----------------------------
DROP TABLE IF EXISTS `eo_project_environment`;
CREATE TABLE `eo_project_environment` (
                                          `envID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                          `envName` varchar(255) NOT NULL,
                                          `envURI` varchar(255) NOT NULL,
                                          `projectID` int(10) unsigned NOT NULL,
                                          PRIMARY KEY (`envID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_project_invite
-- ----------------------------
DROP TABLE IF EXISTS `eo_project_invite`;
CREATE TABLE `eo_project_invite` (
                                     `projectID` int(11) unsigned NOT NULL,
                                     `inviteCode` varchar(6) NOT NULL,
                                     `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                     PRIMARY KEY (`projectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_project_status_code
-- ----------------------------
DROP TABLE IF EXISTS `eo_project_status_code`;
CREATE TABLE `eo_project_status_code` (
                                          `codeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                          `code` varchar(255) NOT NULL,
                                          `codeDescription` varchar(255) NOT NULL,
                                          `groupID` int(10) unsigned NOT NULL,
                                          PRIMARY KEY (`codeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_project_status_code_group
-- ----------------------------
DROP TABLE IF EXISTS `eo_project_status_code_group`;
CREATE TABLE `eo_project_status_code_group` (
                                                `groupID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                                `projectID` int(10) unsigned NOT NULL,
                                                `groupName` varchar(255) NOT NULL,
                                                `parentGroupID` int(10) unsigned NOT NULL DEFAULT '0',
                                                `isChild` tinyint(4) unsigned NOT NULL DEFAULT '0',
                                                PRIMARY KEY (`groupID`,`projectID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eo_project_status_code_group
-- ----------------------------
BEGIN;
INSERT INTO `eo_project_status_code_group` VALUES (1, 1, '????????????', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for eo_project_test_case
-- ----------------------------
DROP TABLE IF EXISTS `eo_project_test_case`;
CREATE TABLE `eo_project_test_case` (
                                        `caseID` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
                                        `projectID` int(11) NOT NULL COMMENT '??????ID',
                                        `userID` int(11) NOT NULL COMMENT '??????ID',
                                        `caseName` varchar(255) NOT NULL COMMENT '????????????',
                                        `caseDesc` varchar(255) DEFAULT NULL COMMENT '????????????',
                                        `createTime` datetime NOT NULL COMMENT '????????????',
                                        `updateTime` datetime NOT NULL COMMENT '????????????',
                                        `groupID` int(11) NOT NULL COMMENT '??????ID',
                                        `caseType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0???????????????1????????????',
                                        `caseCode` longtext,
                                        PRIMARY KEY (`caseID`,`projectID`,`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_project_test_case_group
-- ----------------------------
DROP TABLE IF EXISTS `eo_project_test_case_group`;
CREATE TABLE `eo_project_test_case_group` (
                                              `groupID` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
                                              `groupName` varchar(100) NOT NULL COMMENT '??????',
                                              `projectID` int(11) NOT NULL COMMENT '??????ID',
                                              `parentGroupID` int(11) NOT NULL DEFAULT '0' COMMENT '?????????',
                                              `isChild` tinyint(4) NOT NULL DEFAULT '0' COMMENT '???????????????',
                                              PRIMARY KEY (`groupID`,`projectID`,`parentGroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_project_test_case_group_order
-- ----------------------------
DROP TABLE IF EXISTS `eo_project_test_case_group_order`;
CREATE TABLE `eo_project_test_case_group_order` (
                                                    `orderID` int(11) NOT NULL AUTO_INCREMENT,
                                                    `projectID` int(11) NOT NULL,
                                                    `orderList` text NOT NULL,
                                                    PRIMARY KEY (`orderID`,`projectID`),
                                                    UNIQUE KEY `projectID` (`projectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_project_test_case_history
-- ----------------------------
DROP TABLE IF EXISTS `eo_project_test_case_history`;
CREATE TABLE `eo_project_test_case_history` (
                                                `testID` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
                                                `caseID` int(11) NOT NULL COMMENT '??????ID',
                                                `result` text COMMENT '????????????',
                                                `testTime` datetime DEFAULT NULL COMMENT '????????????',
                                                `status` tinyint(4) DEFAULT NULL COMMENT '0???????????????1????????????',
                                                PRIMARY KEY (`testID`,`caseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_project_test_case_single
-- ----------------------------
DROP TABLE IF EXISTS `eo_project_test_case_single`;
CREATE TABLE `eo_project_test_case_single` (
                                               `connID` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
                                               `caseID` int(11) NOT NULL COMMENT '??????ID',
                                               `caseData` text COMMENT '??????',
                                               `caseCode` text COMMENT '????????????',
                                               `statusCode` varchar(20) DEFAULT NULL,
                                               `matchType` tinyint(4) DEFAULT NULL,
                                               `matchRule` text,
                                               `apiName` varchar(255) NOT NULL COMMENT '????????????',
                                               `apiURI` varchar(255) NOT NULL COMMENT '????????????',
                                               `apiRequestType` tinyint(4) DEFAULT '0' COMMENT '??????????????????',
                                               `orderNumber` int(11) DEFAULT NULL,
                                               PRIMARY KEY (`connID`,`caseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for eo_user
-- ----------------------------
DROP TABLE IF EXISTS `eo_user`;
CREATE TABLE `eo_user` (
                           `userID` int(10) unsigned NOT NULL AUTO_INCREMENT,
                           `userName` varchar(60) NOT NULL,
                           `userPassword` varchar(60) NOT NULL,
                           `userNickName` varchar(16) NOT NULL DEFAULT '',
                           PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eo_user
-- ----------------------------
BEGIN;
INSERT INTO `eo_user` VALUES (1, 'wangjin', '756a32e5f93f30bf622cdc1d96b48edd', 'wangjin');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
