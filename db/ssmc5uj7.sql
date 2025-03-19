-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmc5uj7
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605251267966 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2020-11-13 06:52:13',1,'地址1','收货人1','电话1','是否默认地址[是/否]1'),(2,'2020-11-13 06:52:13',2,'地址2','收货人2','电话2','是否默认地址[是/否]2'),(3,'2020-11-13 06:52:13',3,'地址3','收货人3','电话3','是否默认地址[是/否]3'),(1605251267965,'2020-11-13 07:07:47',1605251209469,'广东省梅州市梅江区江南街道梅新路106号5','张三','13800000000','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baojianpintuijian`
--

DROP TABLE IF EXISTS `baojianpintuijian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baojianpintuijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tuijianyaopin` varchar(200) DEFAULT NULL COMMENT '推荐药品',
  `yaopintupian` varchar(200) DEFAULT NULL COMMENT '药品图片',
  `shiyongrenqun` varchar(200) DEFAULT NULL COMMENT '适用人群',
  `shiyongjijie` varchar(200) DEFAULT NULL COMMENT '适用季节',
  `buliangfanying` varchar(200) DEFAULT NULL COMMENT '不良反应',
  `yongliangyongfa` varchar(200) DEFAULT NULL COMMENT '用量用法',
  `yaopingongxiao` longtext COMMENT '药品功效',
  `yongyaozhinan` longtext COMMENT '用药指南',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605251681300 DEFAULT CHARSET=utf8 COMMENT='保健品推荐';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baojianpintuijian`
--

LOCK TABLES `baojianpintuijian` WRITE;
/*!40000 ALTER TABLE `baojianpintuijian` DISABLE KEYS */;
INSERT INTO `baojianpintuijian` VALUES (1605251090684,'2020-11-13 07:04:50','保健品推荐测试1','伸腿瞪眼丸','http://localhost:8080/ssmc5uj7/upload/1605251020231.jpg','青年','秋天','我也不知道啊','一天三次，一次八小时','顾名思义','<p>吃吃吃 凑字数的可上传图片</p>',0,0),(1605251114361,'2020-11-13 07:05:13','保健品推荐测试','霍香正气药剂','http://localhost:8080/ssmc5uj7/upload/1605251105318.jpg','女人','全年','测试','测试','测试','<p>请输入用药指南测试</p>',0,0),(1605251681299,'2020-11-13 07:14:41','测试','三九胃泰','http://localhost:8080/ssmc5uj7/upload/1605251657213.jpg','老年','全年','测试','一天三次，一次八小时','测试','<p>请输入用药指南测试测试测试测试</p>\n<p><img src=\"http://localhost:8080/ssmc5uj7/upload/1605251680052.jpg\" /></p>',0,0);
/*!40000 ALTER TABLE `baojianpintuijian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tablename` varchar(200) DEFAULT 'yaopinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605251242426 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'2020-11-13 06:52:13','商品表名1',1,1,'商品名称1','http://localhost:8080/ssmc5uj7/upload/cart_picture1.jpg',1,1,1),(2,'2020-11-13 06:52:13','商品表名2',2,2,'商品名称2','http://localhost:8080/ssmc5uj7/upload/cart_picture2.jpg',2,2,2),(3,'2020-11-13 06:52:13','商品表名3',3,3,'商品名称3','http://localhost:8080/ssmc5uj7/upload/cart_picture3.jpg',3,3,3),(1605251242425,'2020-11-13 07:07:22','yaopinxinxi',1605251209469,1605250805623,'霍香正气药剂','http://localhost:8080/ssmc5uj7/upload/1605250789589.png',1,60,60);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605251463328 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,'2020-11-13 06:52:13',1,1,'提问1','回复1',1),(2,'2020-11-13 06:52:13',2,2,'提问2','回复2',2),(3,'2020-11-13 06:52:13',3,3,'提问3','回复3',3),(1605251408225,'2020-11-13 07:10:07',1605251209469,NULL,'我不舒服 hellp me ',NULL,0),(1605251463327,'2020-11-13 07:11:02',1605251209469,1,NULL,'不救',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmc5uj7/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmc5uj7/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmc5uj7/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/ssmc5uj7/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/ssmc5uj7/upload/picture5.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussbaojianpintuijian`
--

DROP TABLE IF EXISTS `discussbaojianpintuijian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussbaojianpintuijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='保健品推荐评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussbaojianpintuijian`
--

LOCK TABLES `discussbaojianpintuijian` WRITE;
/*!40000 ALTER TABLE `discussbaojianpintuijian` DISABLE KEYS */;
INSERT INTO `discussbaojianpintuijian` VALUES (1,'2020-11-13 06:52:13',1,'评论内容1',1),(2,'2020-11-13 06:52:13',2,'评论内容2',2),(3,'2020-11-13 06:52:13',3,'评论内容3',3);
/*!40000 ALTER TABLE `discussbaojianpintuijian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyaopinxinxi`
--

DROP TABLE IF EXISTS `discussyaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605251347673 DEFAULT CHARSET=utf8 COMMENT='药品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyaopinxinxi`
--

LOCK TABLES `discussyaopinxinxi` WRITE;
/*!40000 ALTER TABLE `discussyaopinxinxi` DISABLE KEYS */;
INSERT INTO `discussyaopinxinxi` VALUES (1,'2020-11-13 06:52:13',1,'评论内容1',1),(2,'2020-11-13 06:52:13',2,'评论内容2',2),(3,'2020-11-13 06:52:13',3,'评论内容3',3),(1605251347672,'2020-11-13 07:09:06',1605250805623,'测试',1605251209469);
/*!40000 ALTER TABLE `discussyaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyiqingchangshi`
--

DROP TABLE IF EXISTS `discussyiqingchangshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyiqingchangshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605251338712 DEFAULT CHARSET=utf8 COMMENT='疫情常识评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyiqingchangshi`
--

LOCK TABLES `discussyiqingchangshi` WRITE;
/*!40000 ALTER TABLE `discussyiqingchangshi` DISABLE KEYS */;
INSERT INTO `discussyiqingchangshi` VALUES (1,'2020-11-13 06:52:13',1,'评论内容1',1),(2,'2020-11-13 06:52:13',2,'评论内容2',2),(3,'2020-11-13 06:52:13',3,'评论内容3',3),(1605251338711,'2020-11-13 07:08:58',1605250940745,'评论测试',1605251209469);
/*!40000 ALTER TABLE `discussyiqingchangshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605251506469 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'2020-11-13 06:52:13','测试','http://localhost:8080/ssmc5uj7/upload/1605251132556.jpg','<p>内容1</p>\n<p><img src=\"http://localhost:8080/ssmc5uj7//upload/1605251138401.jpg\" /></p>'),(2,'2020-11-13 06:52:13','测试2','http://localhost:8080/ssmc5uj7/upload/1605251152158.jpg','<p>内容2</p>'),(3,'2020-11-13 06:52:13','测试 3','http://localhost:8080/ssmc5uj7/upload/1605251164727.jpg','<p>内容3</p>'),(1605251506468,'2020-11-13 07:11:45','资讯测试','http://localhost:8080/ssmc5uj7/upload/1605251485712.jpg','<p>编辑器可上传文字或者图片</p>\n<p><img src=\"http://localhost:8080/ssmc5uj7//upload/1605251504978.jpg\" /></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `tablename` varchar(200) DEFAULT 'yaopinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT NULL COMMENT '支付类型（1：现金 2：积分）',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1605251315294 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2020-11-13 06:52:13','订单id1','商品表名1',1,1,'商品名称1','http://localhost:8080/ssmc5uj7/upload/orders_picture1.jpg',1,1,1,1,1,1,'状态1','地址1'),(2,'2020-11-13 06:52:13','订单id2','商品表名2',2,2,'商品名称2','http://localhost:8080/ssmc5uj7/upload/orders_picture2.jpg',2,2,2,2,2,2,'状态2','地址2'),(3,'2020-11-13 06:52:13','订单id3','商品表名3',3,3,'商品名称3','http://localhost:8080/ssmc5uj7/upload/orders_picture3.jpg',3,3,3,3,3,3,'状态3','地址3'),(1605251281020,'2020-11-13 07:08:00','202011131575991944752','yaopinxinxi',1605251209469,1605250805623,'霍香正气药剂','http://localhost:8080/ssmc5uj7/upload/1605250789589.png',1,60,60,60,60,1,'已退款','广东省梅州市梅江区江南街道梅新路106号5'),(1605251315293,'2020-11-13 07:08:34','202011131583419610171','yaopinxinxi',1605251209469,1605250859633,'伸腿瞪眼丸','http://localhost:8080/ssmc5uj7/upload/1605250832748.jpg',1,90,90,90,90,1,'已完成','广东省梅州市梅江区江南街道梅新路106号5');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1,'2020-11-13 06:52:13',1,1,'表名1','收藏名称1','http://localhost:8080/ssmc5uj7/upload/storeup_picture1.jpg'),(2,'2020-11-13 06:52:13',2,2,'表名2','收藏名称2','http://localhost:8080/ssmc5uj7/upload/storeup_picture2.jpg'),(3,'2020-11-13 06:52:13',3,3,'表名3','收藏名称3','http://localhost:8080/ssmc5uj7/upload/storeup_picture3.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','z0ieu4y5apdxohne0t866bqpqb1hezhs','2020-11-13 06:53:28','2020-11-13 08:10:24'),(2,1605251209469,'001','yonghu','用户','660rkrwlfjptg0nc1fjsop3h3fjhot3f','2020-11-13 07:06:54','2020-11-13 08:06:55');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2020-11-13 06:52:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinfenlei`
--

DROP TABLE IF EXISTS `yaopinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yaopinleixing` varchar(200) DEFAULT NULL COMMENT '药品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605251524722 DEFAULT CHARSET=utf8 COMMENT='药品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinfenlei`
--

LOCK TABLES `yaopinfenlei` WRITE;
/*!40000 ALTER TABLE `yaopinfenlei` DISABLE KEYS */;
INSERT INTO `yaopinfenlei` VALUES (1605250442805,'2020-11-13 06:54:02','发烧'),(1605250452522,'2020-11-13 06:54:11','感冒'),(1605250459407,'2020-11-13 06:54:19','咳嗽'),(1605250467746,'2020-11-13 06:54:27','保健'),(1605251524721,'2020-11-13 07:12:04','发炎');
/*!40000 ALTER TABLE `yaopinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinxinxi`
--

DROP TABLE IF EXISTS `yaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yaopinbianhao` varchar(200) DEFAULT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `yaopinleixing` varchar(200) DEFAULT NULL COMMENT '药品类型',
  `yaopinleibie` varchar(200) DEFAULT NULL COMMENT '药品类别',
  `yaopintupian` varchar(200) DEFAULT NULL COMMENT '药品图片',
  `shiyingzhengzhuang` varchar(200) DEFAULT NULL COMMENT '适应症状',
  `jinjizhengzhuang` varchar(200) DEFAULT NULL COMMENT '禁忌症状',
  `yaopinchengfen` longtext COMMENT '药品成分',
  `yaopinxiangqing` longtext COMMENT '药品详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaopinbianhao` (`yaopinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1605251578652 DEFAULT CHARSET=utf8 COMMENT='药品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinxinxi`
--

LOCK TABLES `yaopinxinxi` WRITE;
/*!40000 ALTER TABLE `yaopinxinxi` DISABLE KEYS */;
INSERT INTO `yaopinxinxi` VALUES (1605250711335,'2020-11-13 06:58:31','20201113145439668','小儿麻痹散','发烧','中药材','http://localhost:8080/ssmc5uj7/upload/1605250652090.jpg','症状测试','症状测试','白芍，甘草，枳实，陈皮，白术，石菖蒲，丁香，黄柏，肉桂，石榴皮，柿蒂，薄荷脑。','<p>清热除湿化滞。用于急性胃肠炎，属伤食泄泻型及湿热泄泻型者，症见腹痛腹满、泄泻臭秽、恶心呕腐或有发热恶寒苔黄脉数等。亦可用于食滞胃痛而症见胃脘痛、拒按、恶食欲吐、嗳腐吐酸、舌苔厚腻或黄腻脉数者。</p>\n<p><img src=\"http://localhost:8080/ssmc5uj7/upload/1605250708901.jpg\" /></p>',0,0,'2020-11-13 15:15:01',1,50),(1605250758934,'2020-11-13 06:59:18','20201113145834915','布洛芬药剂','咳嗽','抗生素','http://localhost:8080/ssmc5uj7/upload/1605250722882.jpg','症状测试','症状测试','白芍，甘草，枳实，陈皮，白术，石菖蒲，丁香，黄柏，肉桂，石榴皮，柿蒂，薄荷脑。','<p><img src=\"http://localhost:8080/ssmc5uj7/upload/1605250756189.jpg\" /></p>',0,0,NULL,0,60),(1605250805623,'2020-11-13 07:00:04','20201113145921175','霍香正气药剂','保健','血清','http://localhost:8080/ssmc5uj7/upload/1605250789589.png','症状测试','症状测试','白芍，甘草，枳实，陈皮，白术，石菖蒲，丁香，黄柏，肉桂，石榴皮，柿蒂，薄荷脑。','<p>清热除湿化滞。用于急性胃肠炎，属伤食泄泻型及湿热泄泻型者，症见腹痛腹满、泄泻臭秽、恶心呕腐或有发热恶寒苔黄脉数等。亦可用于食滞胃痛而症见胃脘痛、拒按、恶食欲吐、嗳腐吐酸、舌苔厚腻或黄腻脉数者。</p>',0,0,'2020-11-13 15:13:51',4,60),(1605250859633,'2020-11-13 07:00:59','202011131508540','伸腿瞪眼丸','保健','中药饮片','http://localhost:8080/ssmc5uj7/upload/1605250832748.jpg','症状测试','症状测试','百草枯，敌敌畏','<p>清热除湿化滞。用于急性胃肠炎，属伤食泄泻型及湿热泄泻型者，症见腹痛腹满、泄泻臭秽、恶心呕腐或有发热恶寒苔黄脉数等。亦可用于食滞胃痛而症见胃脘痛、拒按、恶食欲吐、嗳腐吐酸、舌苔厚腻或黄腻脉数者。</p>\n<p><img src=\"http://localhost:8080/ssmc5uj7/upload/1605250857661.jpg\" /></p>',0,0,'2020-11-13 15:23:31',3,90),(1605251578651,'2020-11-13 07:12:58','20201113151212833','三九胃泰','发炎','生化药品','http://localhost:8080/ssmc5uj7/upload/1605251545845.png','感冒','发烧','白芍，甘草，枳实，陈皮，白术，石菖蒲，丁香，黄柏，肉桂，石榴皮，柿蒂，薄荷脑。','<p><img src=\"http://localhost:8080/ssmc5uj7/upload/1605251576494.png\" /></p>',0,0,'2020-11-13 15:14:51',1,60);
/*!40000 ALTER TABLE `yaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yiqingchangshi`
--

DROP TABLE IF EXISTS `yiqingchangshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yiqingchangshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fangyijiqiao` varchar(200) DEFAULT NULL COMMENT '防疫技巧',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `zaixianshipin` varchar(200) DEFAULT NULL COMMENT '在线视频',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `xiangqingneirong` longtext COMMENT '详情内容',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605251637384 DEFAULT CHARSET=utf8 COMMENT='疫情常识';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yiqingchangshi`
--

LOCK TABLES `yiqingchangshi` WRITE;
/*!40000 ALTER TABLE `yiqingchangshi` DISABLE KEYS */;
INSERT INTO `yiqingchangshi` VALUES (1605250940745,'2020-11-13 07:02:20','防疫技巧测试1','http://localhost:8080/ssmc5uj7/upload/1605250919733.jpg','http://localhost:8080/ssmc5uj7/upload/1605250927939.mp4','2020-11-13','<p>防疫技巧测试防疫技巧测试防疫技巧测试防疫技巧测试防疫技巧测试防疫技巧测试防疫技巧测试</p>',0,0),(1605250978477,'2020-11-13 07:02:58','防疫技巧测试2','http://localhost:8080/ssmc5uj7/upload/1605250971196.jpg','http://localhost:8080/ssmc5uj7/upload/1605250958485.mp4','2020-11-13','<p>防疫技巧测试防疫技巧测试防疫技巧测试防疫技巧测试</p>',0,0),(1605251637383,'2020-11-13 07:13:56','防疫技巧测试','http://localhost:8080/ssmc5uj7/upload/1605251622145.jpg','http://localhost:8080/ssmc5uj7/upload/1605251633692.mp4','2020-11-13','<p>请输入详情内容测试</p>',0,0);
/*!40000 ALTER TABLE `yiqingchangshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `gerenzhaopian` varchar(200) DEFAULT NULL COMMENT '个人照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1605251209470 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (1,'2020-11-13 06:52:13','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmc5uj7/upload/yonghu_gerenzhaopian1.jpg',1),(2,'2020-11-13 06:52:13','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmc5uj7/upload/yonghu_gerenzhaopian2.jpg',2),(3,'2020-11-13 06:52:13','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmc5uj7/upload/yonghu_gerenzhaopian3.jpg',3),(1605251209469,'2020-11-13 07:06:49','001','001','张三','男','13800000000','123@qq.com','441402000000000000','http://localhost:8080/ssmc5uj7/upload/1605251223166.jpg',5910);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-13 21:54:33
