-- MySQL dump 10.13  Distrib 5.7.32, for Win64 (x86_64)
--
-- Host: localhost    Database: wmblogdb
-- ------------------------------------------------------
-- Server version	5.7.32-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `advertisement`
--

DROP TABLE IF EXISTS `advertisement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertisement` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ImgUrl` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `Url` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `Remark` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `Createdate` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisement`
--

LOCK TABLES `advertisement` WRITE;
/*!40000 ALTER TABLE `advertisement` DISABLE KEYS */;
INSERT INTO `advertisement` VALUES (1,'hhh','新闻直播数据','123','我的天啊','2020-12-24 00:00:00');
/*!40000 ALTER TABLE `advertisement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogarticle`
--

DROP TABLE IF EXISTS `blogarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogarticle` (
  `bID` int(11) NOT NULL AUTO_INCREMENT,
  `bsubmitter` varchar(600) CHARACTER SET utf8 DEFAULT NULL,
  `btitle` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `bcategory` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `bcontent` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `btraffic` int(11) NOT NULL,
  `bcommentNum` int(11) NOT NULL,
  `bUpdateTime` datetime NOT NULL,
  `bCreateTime` datetime NOT NULL,
  `bRemark` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogarticle`
--

LOCK TABLES `blogarticle` WRITE;
/*!40000 ALTER TABLE `blogarticle` DISABLE KEYS */;
INSERT INTO `blogarticle` VALUES (1,'admin','测试数据：IIS new add website ，some wrong:The requested page cannot be accessed because the related configuration data for the page is invalid.','技术博文','                            <p>问题:</p><h1><a href=\"https://www.cnblogs.com/yipeng-yu/p/6210380.html\">The requested page cannot be accessed because the related configuration data for the page is invalid.</a></h1><p>HTTP Error 500.19 - Internal Server Error The requested page cannot be accessed because the related configuration data for the page is invalid.</p><p>Detailed Error Information:</p><p>Module IIS Web Core</p><p>Notification Unknown</p><p>Handler Not yet determined</p><p>Error Code 0x80070003</p><p>Config Error Cannot read configuration file</p><p>Config File \\?\\D:\\Projects\\...\\web.config</p><p>Requested URL http:// localhost:8080/</p><p>Physical Path</p><p>Logon Method Not yet determined</p><p>Logon User Not yet determined</p><p>Request Tracing Directory C:\\Users\\...\\TraceLogFiles\\</p><p>Config Source:</p><p>Answer:</p><p>1，find the site\'s application pools</p><p>2,\"Advanced Settings\" ==&gt; Indentity ==&gt;&nbsp; Custom account</p><p><br></p><p><br></p>',127,1,'2019-01-01 00:00:00','2019-01-01 00:00:00',NULL,_binary '\0');
/*!40000 ALTER TABLE `blogarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guestbook`
--

DROP TABLE IF EXISTS `guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestbook` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `blogId` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  `username` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `QQ` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `body` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `ip` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `isshow` bit(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestbook`
--

LOCK TABLES `guestbook` WRITE;
/*!40000 ALTER TABLE `guestbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulepermission`
--

DROP TABLE IF EXISTS `modulepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulepermission` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IsDeleted` bit(1) DEFAULT NULL,
  `CreateId` int(11) DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `ModifyId` int(11) DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ModifyTime` datetime DEFAULT NULL,
  `ModuleId` int(11) NOT NULL,
  `PermissionId` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulepermission`
--

LOCK TABLES `modulepermission` WRITE;
/*!40000 ALTER TABLE `modulepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `modulepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `LinkUrl` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Area` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `Controller` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `Action` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `Icon` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Code` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `OrderSort` int(11) NOT NULL,
  `Description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `IsMenu` bit(1) NOT NULL,
  `Enabled` bit(1) NOT NULL,
  `CreateId` int(11) DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `ModifyId` int(11) DEFAULT NULL,
  `ModifyBy` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ModifyTime` datetime DEFAULT NULL,
  `ParentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,_binary '\0','values接口','/api/values',NULL,NULL,NULL,NULL,NULL,1,NULL,_binary '\0',_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(2,_binary '\0','claims的接口','/api/claims',NULL,NULL,NULL,NULL,NULL,1,NULL,_binary '\0',_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(3,_binary '\0','UserRole接口','/api/UserRole',NULL,NULL,NULL,NULL,NULL,1,NULL,_binary '\0',_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(4,_binary '\0',NULL,'/api/v2/Apb/apbs',NULL,NULL,NULL,NULL,NULL,1,NULL,_binary '\0',_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(5,_binary '\0','修改 tibug 文章','/api/TopicDetail/update',NULL,NULL,NULL,NULL,NULL,1,NULL,_binary '\0',_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(6,_binary '\0','删除tibug文章','/api/TopicDetail/delete',NULL,NULL,NULL,NULL,NULL,1,NULL,_binary '\0',_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(7,_binary '\0','获取用户','/api/user/get',NULL,NULL,NULL,NULL,NULL,1,NULL,_binary '\0',_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(8,_binary '\0','获取用户详情','/api/user/get/\\d+',NULL,NULL,NULL,NULL,NULL,1,NULL,_binary '\0',_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(9,_binary '','角色接口','/api/role',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(10,_binary '\0','添加用户','/api/user/post',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(11,_binary '\0','删除用户','/api/user/delete',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(12,_binary '\0','修改用户','/api/user/put',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(13,_binary '\0','获取api接口','/api/module/get',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(14,_binary '\0','删除api接口','/api/module/delete',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(15,_binary '\0','修改api接口','/api/module/put',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(16,_binary '\0','添加api接口','/api/module/post',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(17,_binary '\0','获取菜单','/api/permission/get',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(18,_binary '\0','删除菜单','/api/permission/delete',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(19,_binary '\0','修改菜单','/api/permission/put',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(20,_binary '\0','添加菜单','/api/permission/post',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(21,_binary '\0','获取菜单树','/api/permission/getpermissiontree',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(22,_binary '\0','获取角色','/api/role/get',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(23,_binary '\0','删除角色','/api/role/delete',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(24,_binary '\0','修改角色','/api/role/put',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(25,_binary '\0','添加角色','/api/role/post',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(26,_binary '\0','获取bug','/api/TopicDetail/Get',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(27,_binary '\0','获取博客','/api/Blog',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(28,_binary '\0','保存分配','/api/permission/Assign',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(29,_binary '\0','Get导航条','/api/permission/GetNavigationBar',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(30,_binary '','test','/api/Blog/delete1',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(31,_binary '','test','/api/Blog/delete2',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(32,_binary '\0','删除博客','/api/Blog/delete',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(33,_binary '\0','获取全部日志','/api/Monitor/get',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(34,_binary '','Agent -测试- 快速添加接口权限','/api/Agent/get',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(35,_binary '','test','/api/test/get',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(36,_binary '\0','Department - 测试新建api -  部门管控','/api/Department/get',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(37,_binary '\0','获取任务调取分页','/api/TasksQz/get',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(38,_binary '\0','添加任务','/api/TasksQz/Post',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(39,_binary '\0','编辑任务','/api/TasksQz/put',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(40,_binary '\0','开启任务','/api/TasksQz/StartJob',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(41,_binary '\0','停止任务','/api/TasksQz/StopJob',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0),(42,_binary '\0','重启任务','/api/TasksQz/ReCovery',NULL,NULL,NULL,NULL,NULL,0,NULL,_binary '\0',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',0);
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operatelog`
--

DROP TABLE IF EXISTS `operatelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operatelog` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Area` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `Controller` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `Action` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `IPAddress` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `Description` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `LogTime` datetime DEFAULT NULL,
  `LoginName` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operatelog`
--

LOCK TABLES `operatelog` WRITE;
/*!40000 ALTER TABLE `operatelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `operatelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwordlib`
--

DROP TABLE IF EXISTS `passwordlib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwordlib` (
  `PLID` int(11) NOT NULL AUTO_INCREMENT,
  `IsDeleted` bit(1) DEFAULT NULL,
  `plURL` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `plPWD` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `plAccountName` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `plStatus` int(11) DEFAULT NULL,
  `plErrorCount` int(11) DEFAULT NULL,
  `plHintPwd` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `plHintquestion` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `plCreateTime` datetime DEFAULT NULL,
  `plUpdateTime` datetime DEFAULT NULL,
  `plLastErrTime` datetime DEFAULT NULL,
  `test` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`PLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='WMBLOG_MSSQL_2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwordlib`
--

LOCK TABLES `passwordlib` WRITE;
/*!40000 ALTER TABLE `passwordlib` DISABLE KEYS */;
/*!40000 ALTER TABLE `passwordlib` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `IsButton` bit(1) NOT NULL,
  `IsHide` bit(1) DEFAULT NULL,
  `IskeepAlive` bit(1) DEFAULT NULL,
  `Func` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `OrderSort` int(11) NOT NULL,
  `Icon` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Enabled` bit(1) NOT NULL,
  `CreateId` int(11) DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `ModifyId` int(11) DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ModifyTime` datetime DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Pid` int(11) NOT NULL,
  `Mid` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,'/','QQ欢迎页',_binary '\0',_binary '\0',_binary '\0',NULL,0,'fa-qq','33',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',0,0),(2,'-','用户角色管理',_binary '\0',_binary '\0',_binary '\0',NULL,0,'fa-users','11',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',0,0),(3,'/User/Roles','角色管理',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',2,22),(4,'/User/Users','用户管理',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',2,7),(5,'-','菜单权限管理',_binary '\0',_binary '\0',_binary '\0',NULL,0,'fa-sitemap',NULL,_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',0,0),(6,'/Permission/Module','接口管理',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',5,13),(7,'/Permission/Permission','菜单管理',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',5,17),(8,'/Thanks','致谢页',_binary '\0',_binary '\0',_binary '\0',NULL,5,'fa-star ',NULL,_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',0,0),(9,'无','查询',_binary '',_binary '\0',_binary '\0','getUsers',0,NULL,'这个用户页的查询按钮',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',4,7),(10,'-','报表管理',_binary '\0',_binary '\0',_binary '\0',NULL,0,'fa-line-chart',NULL,_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',0,0),(11,'/Form/Charts','图表',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',10,0),(12,'/Form/Form','表单',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',10,0),(13,' ','新增',_binary '',_binary '\0',_binary '\0','handleAdd',0,NULL,'新增用户',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',4,10),(14,' ','编辑',_binary '',_binary '\0',_binary '\0','handleEdit',0,NULL,'编辑用户',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',4,12),(15,' ','删除',_binary '',_binary '\0',_binary '\0','handleDel',0,NULL,'删除用户',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',4,11),(16,' ','查询',_binary '',_binary '\0',_binary '\0','getRoles',0,NULL,'查询 角色',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',3,22),(17,' ','新增',_binary '',_binary '\0',_binary '\0','handleAdd',0,NULL,'新增 角色',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',3,25),(18,' ','编辑',_binary '',_binary '\0',_binary '\0','handleEdit',0,NULL,'编辑角色',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',3,24),(19,' ','删除',_binary '',_binary '\0',_binary '\0','handleDel',0,NULL,'删除角色',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',3,23),(20,' ','查询',_binary '',_binary '\0',_binary '\0','getModules',0,NULL,'查询 接口',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',6,13),(21,' ','新增',_binary '',_binary '\0',_binary '\0','handleAdd',0,NULL,'新增 接口',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',6,16),(22,' ','编辑',_binary '',_binary '\0',_binary '\0','handleEdit',0,NULL,'编辑 接口',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',6,15),(23,' ','删除',_binary '',_binary '\0',_binary '\0','handleDel',0,NULL,'删除接口',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',6,14),(24,' ','查询',_binary '',_binary '\0',_binary '\0','getPermissions',0,NULL,'查询 菜单',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',7,17),(25,' ','新增',_binary '',_binary '\0',_binary '\0','handleAdd',0,NULL,'新增菜单',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',7,20),(26,' ','编辑',_binary '',_binary '\0',_binary '\0','handleEdit',0,NULL,'编辑菜单',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',7,19),(27,' ','删除',_binary '',_binary '\0',_binary '\0','handleDel',0,NULL,'删除 菜单',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',7,18),(28,'/Tibug/Bugs','TiBug',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',42,26),(29,'-','博客管理',_binary '\0',_binary '\0',_binary '\0',NULL,0,'fa-file-word-o',NULL,_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',0,0),(30,' ','编辑',_binary '',_binary '\0',_binary '\0','handleEdit',0,NULL,'编辑 tibug ',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',28,5),(31,' ','删除',_binary '',_binary '\0',_binary '\0','handleDel',0,NULL,'删除 tibug',_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',28,6),(32,' ','查询',_binary '',_binary '\0',_binary '\0','getBugs',0,NULL,'查询 tibug',_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',28,26),(33,' ','菜单树',_binary '',_binary '',_binary '\0',NULL,0,NULL,NULL,_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',7,21),(34,'/Permission/Assign','权限分配',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',5,0),(35,' ','保存权限',_binary '',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',34,28),(36,' ','左侧导航',_binary '',_binary '',_binary '\0',NULL,0,NULL,NULL,_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',7,29),(37,'-','测试页面管理',_binary '\0',_binary '\0',_binary '\0',NULL,0,'fa-flask',NULL,_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',0,0),(38,'/TestShow/TestOne','测试页面1',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',37,0),(39,'/TestShow/TestTwo','测试页面2',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',37,0),(40,'/I18n/index','国际化',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',41,0),(41,'-','多语言管理',_binary '\0',_binary '\0',_binary '\0',NULL,0,'fa-language',NULL,_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',0,0),(42,'-','问题管理',_binary '\0',_binary '\0',_binary '\0',NULL,0,'fa-bug',NULL,_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',0,0),(43,'/Blog/Blogs','博客',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',29,27),(44,'-','多级路由',_binary '\0',_binary '\0',_binary '\0',NULL,0,'fa-sort-amount-asc',NULL,_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',0,0),(45,'-','Menu-1',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',44,0),(46,'/Recursion/Menu_1/Menu_1_2','Menu-1-2',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',45,0),(47,'-','Menu-1-1',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',45,0),(48,'/Recursion/Menu_1/Menu_1_1/Menu_1_1_1','Menu-1-1-1',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',47,0),(49,'/Recursion/Menu_1/Menu_1_1/Menu_1_1_2','Menu-1-1-2',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',47,0),(50,'s','s',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '\0',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '',0,0),(51,'s','s',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '\0',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '',0,0),(52,'s','s',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '\0',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '',0,0),(53,'s','s',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '\0',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '',0,0),(54,'s','s',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '\0',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '',0,0),(55,'s','s',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '\0',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '',0,0),(56,'s','s',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '\0',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '',0,0),(57,'s','s',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '\0',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '',0,0),(58,'s','s',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '\0',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '',0,0),(59,'s','s',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '\0',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '',0,0),(60,'s','s',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '\0',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '',0,0),(61,'s','s',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '\0',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '',0,0),(62,'s','s',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '\0',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '',0,0),(63,'s','s',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '\0',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '',0,0),(64,' ','删除',_binary '',_binary '\0',_binary '\0','handleDel',0,NULL,'删除博客按钮',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',43,32),(65,'-','日志管理',_binary '\0',_binary '\0',_binary '\0',NULL,0,'fa-diamond',NULL,_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',0,0),(66,'/Logs/Index','全部日志',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',65,33),(67,'/Blog/Detail/:id','博客详情',_binary '\0',_binary '',_binary '\0',NULL,0,NULL,NULL,_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',29,0),(68,'-','系统管理',_binary '\0',_binary '\0',_binary '\0',NULL,1,'el-icon-s-operation',NULL,_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',0,0),(69,'/System/My','个人中心',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',68,0),(70,' ','查询',_binary '',_binary '\0',_binary '\0',NULL,0,NULL,'Agent 代理的查询接口',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '',69,34),(71,' ','查询',_binary '',_binary '\0',_binary '\0',NULL,0,NULL,'查询 部门 Department get',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '',69,35),(72,' ','查询',_binary '',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',69,36),(73,' ','查询',_binary '',_binary '\0',_binary '\0','getBlogs',0,NULL,'查询博客按钮',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',43,27),(74,' ','编辑',_binary '',_binary '\0',_binary '\0','handleEdit',0,NULL,'编辑博客按钮',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',43,27),(75,'-','任务调度',_binary '\0',_binary '\0',_binary '\0',NULL,1,'fa-history',NULL,_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',0,0),(76,'/Task/QuartzJob','任务列表',_binary '\0',_binary '\0',_binary '\0',NULL,0,NULL,NULL,_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',75,37),(77,' ','查询',_binary '',_binary '\0',_binary '\0','getTasks',0,NULL,'查询任务按钮',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',76,37),(78,' ','添加',_binary '',_binary '\0',_binary '\0','handleAdd',0,NULL,'添加任务按钮',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',76,38),(79,' ','编辑',_binary '',_binary '\0',_binary '\0','handleEdit',0,NULL,'编辑任务按钮',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',76,39),(80,' ','开启',_binary '',_binary '\0',_binary '\0','handleStartJob',0,NULL,'开启任务按钮',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',76,40),(81,' ','暂停',_binary '',_binary '\0',_binary '\0','handleStopJob',0,NULL,'暂停任务按钮',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',76,41),(82,' ','重启',_binary '',_binary '\0',_binary '\0','handleReCoveryJob',0,NULL,'重启任务按钮',_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',_binary '\0',76,42);
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `OrderSort` int(11) NOT NULL,
  `Enabled` bit(1) NOT NULL,
  `CreateId` int(11) DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `ModifyId` int(11) DEFAULT NULL,
  `ModifyBy` varchar(255) DEFAULT NULL,
  `ModifyTime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,_binary '\0','Admin','普通管理',1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(2,_binary '\0','System','系统管理',1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(3,_binary '\0','Tibug','tibug系统管理',1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(4,_binary '\0','SuperAdmin','超级管理',0,_binary '',23,'blogadmin','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(5,_binary '','AdminTest',NULL,1,_binary '',18,'提bug账号','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(6,_binary '\0','AdminTest','测试管理',1,_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(7,_binary '\0','AdminTest2','测试管理2',1,_binary '',23,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(8,_binary '','sss',NULL,1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(9,_binary '','sss',NULL,1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(10,_binary '','sss',NULL,1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(11,_binary '','sss',NULL,1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(12,_binary '','sss',NULL,1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(13,_binary '','sss',NULL,1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(14,_binary '','sss',NULL,1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(15,_binary '','sss',NULL,1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(16,_binary '','sss',NULL,1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(17,_binary '','sss',NULL,1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(18,_binary '','sss',NULL,1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(19,_binary '','sss',NULL,1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(20,_binary '','sss',NULL,1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(21,_binary '','sss',NULL,1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(22,_binary '','sss',NULL,1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(23,_binary '','sss',NULL,1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(24,_binary '','sss',NULL,1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(25,_binary '\0','sss',NULL,1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(26,_binary '\0','213',NULL,1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(27,_binary '\0','抬头填',NULL,1,_binary '',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(28,_binary '\0','hello1','测试 常用 get post put 请求',1,_binary '',12,'后台总管理员','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00'),(29,_binary '','55','555',1,_binary '\0',39,'Kawhi','2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolemodulepermission`
--

DROP TABLE IF EXISTS `rolemodulepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rolemodulepermission` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IsDeleted` bit(1) DEFAULT NULL,
  `CreateId` int(11) DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `ModifyId` int(11) DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ModifyTime` datetime DEFAULT NULL,
  `RoleId` int(11) NOT NULL,
  `ModuleId` int(11) NOT NULL,
  `PermissionId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolemodulepermission`
--

LOCK TABLES `rolemodulepermission` WRITE;
/*!40000 ALTER TABLE `rolemodulepermission` DISABLE KEYS */;
INSERT INTO `rolemodulepermission` VALUES (1,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',1,1,0),(2,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',1,2,0),(3,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',1,3,0),(4,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',1,4,0),(5,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',2,4,0),(6,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',3,5,30),(7,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',3,6,31),(8,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',3,7,9),(9,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',3,26,28),(10,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,7,3),(11,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,7,9),(12,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,10,13),(13,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,12,14),(14,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,11,15),(15,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,0,2),(16,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,22,4),(17,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,22,16),(18,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,25,17),(19,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,24,18),(20,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,23,19),(21,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,0,1),(22,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,0,5),(23,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,13,6),(24,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,13,20),(25,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,16,21),(26,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,15,22),(27,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,14,23),(28,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,17,7),(29,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,17,24),(30,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,20,25),(31,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,19,26),(32,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,18,27),(33,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,0,8),(34,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,0,10),(35,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,0,11),(36,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,0,12),(37,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,26,28),(38,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,5,30),(39,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,6,31),(40,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,27,29),(41,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,26,32),(42,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,1),(43,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,8),(44,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,10),(45,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,11),(46,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,12),(47,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,27,29),(48,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,2),(49,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,7,3),(50,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,22,4),(51,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,5),(52,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,13,6),(53,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,17,7),(54,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,26,28),(55,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,28,34),(56,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,21,33),(57,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,7,9),(58,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,22,16),(59,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,13,20),(60,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,17,24),(61,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,26,32),(62,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,28,35),(63,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,21,33),(64,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,29,36),(65,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,34),(66,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',7,0,1),(67,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',7,0,2),(68,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',7,7,4),(69,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',7,0,10),(70,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',7,0,12),(71,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',7,0,8),(72,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',7,22,16),(73,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,0,37),(74,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,0,38),(75,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,0,39),(76,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,0,40),(77,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,40),(78,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,37),(79,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,38),(80,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,39),(81,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,0,41),(82,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,41),(83,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,0,42),(84,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,42),(85,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',3,0,42),(86,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,0,43),(87,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,43),(88,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,44),(89,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,45),(90,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,46),(91,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,47),(92,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,48),(93,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,32,64),(94,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,65),(95,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,33,66),(96,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,0,65),(97,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,33,66),(98,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,0,67),(99,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,67),(100,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,0,68),(101,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,0,69),(102,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,68),(103,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,0,69),(104,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,29,36),(105,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',7,29,36),(106,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',7,27,33),(107,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,36,72),(108,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',28,0,1),(109,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',28,0,2),(110,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',28,22,3),(111,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',28,7,4),(112,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',28,22,16),(113,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',28,7,9),(114,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',28,25,17),(115,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',28,10,13),(116,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',28,21,33),(117,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',28,29,36),(118,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,32,73),(119,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',6,32,73),(120,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,27,74);
/*!40000 ALTER TABLE `rolemodulepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysuserinfo`
--

DROP TABLE IF EXISTS `sysuserinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysuserinfo` (
  `uID` int(11) NOT NULL AUTO_INCREMENT,
  `uLoginName` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `uLoginPWD` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `uRealName` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `uStatus` int(11) NOT NULL,
  `uRemark` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `uCreateTime` datetime NOT NULL,
  `uUpdateTime` datetime NOT NULL,
  `uLastErrTime` datetime NOT NULL,
  `uErrorCount` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `addr` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `tdIsDelete` bit(1) DEFAULT NULL,
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysuserinfo`
--

LOCK TABLES `sysuserinfo` WRITE;
/*!40000 ALTER TABLE `sysuserinfo` DISABLE KEYS */;
INSERT INTO `sysuserinfo` VALUES (1,'laozhang','2AEFC34200A294A3CC7DB81B43A81873','老张',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,'老张的哲学',1,0,'2019-01-01 00:00:00',NULL,_binary '\0'),(2,'laoli','2AEFC34200A294A3CC7DB81B43A81873','laoli',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,1,0,'2019-01-01 00:00:00',NULL,_binary '\0'),(3,'user','2AEFC34200A294A3CC7DB81B43A81873','userli',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,'广告',1,0,'2019-01-01 00:00:00',NULL,_binary '\0'),(4,'admins','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary '\0'),(5,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(6,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(7,'tibug','BB1C0516F0F4469549CD4A95833A78E5','提bug账号',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,1,0,'2019-01-01 00:00:00',NULL,_binary '\0'),(8,'test','098F6BCD4621D373CADE4E832627B4F6','后台测试1号',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,'测试是',1,3,'2019-01-01 00:00:00',NULL,_binary '\0'),(9,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(10,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(11,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(12,'blogadmin','3FACF26687DAB7254848976256EDB56F','后台总管理员',0,'t15','2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,1,10,'2019-01-01 00:00:00',NULL,_binary '\0'),(13,'test2','AD0234829205B9033196BA818F7A872B','后台测试2号',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,12,'2019-01-01 00:00:00','北京市',_binary '\0'),(14,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(15,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(16,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(17,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(18,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(19,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(20,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(21,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(22,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(23,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(24,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(25,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(26,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(27,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(28,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(29,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(30,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(31,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(32,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(33,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(34,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(35,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(36,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(37,'xx','2AEFC34200A294A3CC7DB81B43A81873','admins',0,NULL,'2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,0,0,'2019-01-01 00:00:00',NULL,_binary ''),(38,'99','AC627AB1CCBDB62EC96E702F7F6425B','99',0,'blogadmin','2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,-1,0,'2019-01-01 00:00:00',NULL,_binary ''),(39,'Kawhi','96FEE3FD714358658BFB881A4E1642BE','Kawhi 测试员',0,'blogadmin','2019-01-01 00:00:00','2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,1,18,'2019-01-01 00:00:00',NULL,_binary '\0');
/*!40000 ALTER TABLE `sysuserinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasksqz`
--

DROP TABLE IF EXISTS `tasksqz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasksqz` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `JobGroup` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Cron` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `AssemblyName` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `ClassName` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Remark` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `RunTimes` int(11) NOT NULL,
  `BeginTime` datetime NOT NULL,
  `EndTime` datetime NOT NULL,
  `TriggerType` int(11) NOT NULL,
  `IntervalSecond` int(11) NOT NULL,
  `IsStart` bit(1) NOT NULL,
  `JobParams` varchar(255) NOT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasksqz`
--

LOCK TABLES `tasksqz` WRITE;
/*!40000 ALTER TABLE `tasksqz` DISABLE KEYS */;
INSERT INTO `tasksqz` VALUES (1,'博客管理','博客测试组','0 */10 * * * ?','Blog.Core.Tasks','Job_Blogs_Quartz','',0,'2019-01-01 00:00:00','2022-01-01 00:00:00',1,0,_binary '','1',_binary '\0','2019-01-01 00:00:00');
/*!40000 ALTER TABLE `tasksqz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testmuchtableresult`
--

DROP TABLE IF EXISTS `testmuchtableresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testmuchtableresult` (
  `moduleName` varchar(255) NOT NULL,
  `permName` varchar(255) NOT NULL,
  `rid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testmuchtableresult`
--

LOCK TABLES `testmuchtableresult` WRITE;
/*!40000 ALTER TABLE `testmuchtableresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `testmuchtableresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topic` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `tLogo` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `tName` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `tDetail` varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  `tAuthor` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `tSectendDetail` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `tIsDelete` bit(1) NOT NULL,
  `tRead` int(11) NOT NULL,
  `tCommend` int(11) NOT NULL,
  `tGood` int(11) NOT NULL,
  `tCreatetime` datetime NOT NULL,
  `tUpdatetime` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (1,'/Upload/20180626/95445c8e288e47e3af7a180b8a4cc0c7.jpg','《罗马人的故事》','这是一个荡气回肠的故事','Laozhang',NULL,_binary '\0',0,0,0,'2019-01-01 00:00:00','2019-01-01 00:00:00');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topicdetail`
--

DROP TABLE IF EXISTS `topicdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topicdetail` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `tdLogo` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `tdName` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `tdContent` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `tdDetail` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `tdSectendDetail` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `tdIsDelete` bit(1) NOT NULL,
  `tdRead` int(11) NOT NULL,
  `tdCommend` int(11) NOT NULL,
  `tdGood` int(11) NOT NULL,
  `tdCreatetime` datetime NOT NULL,
  `tdUpdatetime` datetime NOT NULL,
  `tdTop` int(11) NOT NULL,
  `tdAuthor` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `TopicId` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topicdetail`
--

LOCK TABLES `topicdetail` WRITE;
/*!40000 ALTER TABLE `topicdetail` DISABLE KEYS */;
INSERT INTO `topicdetail` VALUES (1,NULL,'第一章　罗马的诞生 第一节　传说的年代','<p>第一节　传说的年代</p><p>每个民族都有自己的神话传说。大概希望知道本民族的来源是个很自然的愿望吧。但这是一个难题，因为这几乎不可能用科学的方法来解释清楚。不过所有的民族都没有这样的奢求。他们只要有一个具有一定的条理性，而又能振奋其民族精神的浪漫故事就行，别抬杠，象柏杨那样将中国的三皇五帝都来个科学分析，来评论他们的执政之优劣是大可不必的。</p><p>对於罗马人，他们有一个和特洛伊城的陷落相关的传说。</p><p>位於小亚细亚西岸的繁荣的城市特洛伊，在遭受了阿加美农统帅的希腊联军的十年围攻之後，仍未陷落。希腊联军於是留下一个巨大的木马後假装撤兵。特洛伊人以为那是希腊联军留给自己的礼物，就将它拉入城内。</p><p>当庆祝胜利的狂欢结束，特洛伊人满怀对明日的和平生活的希望熟睡後，藏在木马内的希腊士兵一个又一个地爬了出来。就在这天夜里，特洛伊城便在火光和叫喊中陷落了。全城遭到大屠杀 ，幸免於死的人全都沦为奴隶。混乱之中只有特洛伊国王的驸马阿伊尼阿斯带着老父，儿子等数人在女神维娜斯的帮助下成功地逃了出来。这驸马爷乃是女神维娜斯与凡人男子之间的儿子，女神维娜斯不忍心看着自己的儿子被希腊士兵屠杀 。</p><p>这阿驸马一行人分乘几条船，离开了火光冲天的特洛伊城。在女神维娜斯的指引下，浪迹地中海，最後在意大利西岸登陆。当地的国王看上了阿伊尼阿斯并把自己的女儿嫁给了他。他又是驸马了，与他的新妻过起了幸福的生活。难民们也安定了下来。</p><p>阿伊尼阿斯死後，跟随他逃难来的儿子继承了王位。新王在位三十年後，离开了这块地方，到台伯河(Tiber)下游建了一个新城亚尔巴龙迦城。这便是罗马城的前身了。</p><p>罗马人自古相信罗马城是公元前731年4月21日由罗莫路和勒莫(Romulus and Remus)建设的。而这两个孪生兄弟是从特洛伊逃出的阿伊尼阿斯的子孙。後来，罗马人接触了希腊文化後才知道特洛伊的陷落是在公元前十三世纪，老早的事了。罗马人好象并没有对这段空白有任何烦恼，随手编出一串传说，把那空白给填补了。反正传说这事荒唐一点的更受欢迎。经过了一堆搞不清谁是谁的王的统治，出现了一个什麽王的公主。</p><p>公主的叔父在篡夺了王位後，为了防止公主结婚生子威胁自己的王位，便任命未婚的公主为巫女。这是主管祭神的职位，象修女一样不得结婚。</p><p>不巧一日这美丽的公主在祭事的空余，来到小河边午睡。也是合当有事，被过往的战神玛尔斯(Mars)一见钟情。这玛尔斯本是靠挑起战争混饭吃的，但也常勾引 良家妇女。这天战神也没错过机会，立刻由天而降，与公主一试云雨。据说战神的技术特神，公主还没来得及醒便完事升天去了。後来公主生了一双胞胎，起名罗莫路和勒莫。</p><p>叔父闻知此事大怒，将公主投入大牢，又把那双胞胎放在篮子里抛入台伯河，指望那篮子漂入大海将那双胞胎淹死。类似的故事在旧约圣经里也有，那是关於摩西的事，好象这类传说在当地十分流行。</p><p>再说那兄弟俩的篮子被河口附近茂密的灌木丛钩住而停了下来，俩人哭声引来的一只过路的母狼。意大利的狼都带点慈悲心，不但没吃了俩人当点心，还用自己的奶去喂他们，这才救了俩小命。</p><p>不过，总是由狼养活也没法交&nbsp;待，於是又一日一放羊的在这地盘上溜哒，发现了兄弟俩，将他们抱了回去扶养成人 。据说现在这一带仍有许多放羊的。</p><p>兄弟俩长大後成了这一带放羊人的头，在与别的放羊人的圈子的打斗中不断地扩展自己的势力范围。圈子大了，情报也就多了，终于有一天，罗莫路和勒莫知道了自己身事。</p><p>兄弟俩就带着手下的放羊人呼啸着去打破了亚尔巴龙迦城，杀了那国王，将王位又交&nbsp;还给了自己祖父。他们的母亲似乎已经死在了大牢里。但兄弟俩也没在亚尔巴龙迦城多住，他们认为亚尔巴龙迦城位於山地，虽然易守难攻，却不利发展。加上兄弟俩是在台伯河的下游长大的，所以便回到原地，建了个新城。除了手下的放羊人又加上了附近的放羊人和农民。</p><p>消灭了共同的敌人後，兄弟俩的关系开始恶化。有人说是为了新城的命名，有人说是为了新城的城址，也有人说是为了争夺王位。兄弟俩於是分割统治，各占一小山包。但纷争又开始了，勒莫跳过了罗莫路为表示势力范围而挖的沟。对於这种侵犯他人权力的行为，罗莫路大义灭亲地在自己兄弟的後脑上重重地来了一锄头，勒莫便被灭了。</p><p></p><p>於是这城便以罗莫路的名字命名为罗马，这就是公元前731年4月21日的事了，到现在这天仍是意大利的节日，罗马人会欢天喜地的庆祝罗莫路杀了自己的…不，是庆祝罗马建城。王位当然也得由罗莫路来坐，一切问题都没了。这时四年一度的奥林匹克运动会在希腊已经开了六回，罗马也从传说的时代走出，近入了历史时代。</p><p><br></p>','标题',NULL,_binary '\0',8,0,0,'2019-01-01 00:00:00','2019-01-01 00:00:00',0,NULL,1);
/*!40000 ALTER TABLE `topicdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userrole` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IsDeleted` bit(1) DEFAULT NULL,
  `CreateId` int(11) DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `ModifyId` int(11) DEFAULT NULL,
  `ModifyBy` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ModifyTime` datetime DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrole`
--

LOCK TABLES `userrole` WRITE;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` VALUES (1,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',4,1),(2,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',3,2),(3,_binary '\0',NULL,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',7,3),(4,_binary '\0',23,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',12,4),(5,_binary '\0',1,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',1,2),(6,_binary '\0',1,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',1,1),(7,_binary '\0',13,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',2,1),(8,_binary '\0',19,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',8,6),(9,_binary '\0',24,NULL,'2019-01-01 00:00:00',NULL,NULL,'2019-01-01 00:00:00',13,7),(10,_binary '\0',0,NULL,'2019-01-01 00:00:00',NULL,NULL,NULL,0,0),(11,_binary '\0',39,NULL,'2019-01-01 00:00:00',NULL,NULL,NULL,39,28);
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'wmblogdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-24 10:20:55
