DROP DATABASE IF EXISTS ssmc5uj7;

CREATE DATABASE ssmc5uj7 default character set utf8mb4 collate utf8mb4_general_ci;

USE ssmc5uj7;


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yonghuming` varchar(200)  UNIQUE   COMMENT '用户名',
	`mima` varchar(200)    COMMENT '密码',
	`xingming` varchar(200)    COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`dianziyouxiang` varchar(200)    COMMENT '电子邮箱',
	`shenfenzhenghao` varchar(200)    COMMENT '身份证号',
	`gerenzhaopian` varchar(200)    COMMENT '个人照片',
	`money` float   default '0' COMMENT '余额',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,lianxidianhua,dianziyouxiang,shenfenzhenghao,gerenzhaopian,money) VALUES('用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmc5uj7/upload/yonghu_gerenzhaopian1.jpg',1);
INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,lianxidianhua,dianziyouxiang,shenfenzhenghao,gerenzhaopian,money) VALUES('用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmc5uj7/upload/yonghu_gerenzhaopian2.jpg',2);
INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,lianxidianhua,dianziyouxiang,shenfenzhenghao,gerenzhaopian,money) VALUES('用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmc5uj7/upload/yonghu_gerenzhaopian3.jpg',3);


DROP TABLE IF EXISTS `yaopinfenlei`;

CREATE TABLE `yaopinfenlei` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yaopinleixing` varchar(200)    COMMENT '药品类型',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='药品分类';

INSERT INTO yaopinfenlei(yaopinleixing) VALUES('药品类型1');
INSERT INTO yaopinfenlei(yaopinleixing) VALUES('药品类型2');
INSERT INTO yaopinfenlei(yaopinleixing) VALUES('药品类型3');


DROP TABLE IF EXISTS `yaopinxinxi`;

CREATE TABLE `yaopinxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yaopinbianhao` varchar(200)  UNIQUE   COMMENT '药品编号',
	`yaopinmingcheng` varchar(200)    COMMENT '药品名称',
	`yaopinleixing` varchar(200)    COMMENT '药品类型',
	`yaopinleibie` varchar(200)    COMMENT '药品类别',
	`yaopintupian` varchar(200)    COMMENT '药品图片',
	`shiyingzhengzhuang` varchar(200)    COMMENT '适应症状',
	`jinjizhengzhuang` varchar(200)    COMMENT '禁忌症状',
	`yaopinchengfen` longtext    COMMENT '药品成分',
	`yaopinxiangqing` longtext    COMMENT '药品详情',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	`clicktime` datetime    COMMENT '最近点击时间',
	`clicknum` int   default '0' COMMENT '点击次数',
	`price` float NOT NULL   COMMENT '价格',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='药品信息';

INSERT INTO yaopinxinxi(yaopinbianhao,yaopinmingcheng,yaopinleixing,yaopinleibie,yaopintupian,shiyingzhengzhuang,jinjizhengzhuang,yaopinchengfen,yaopinxiangqing,thumbsupnum,crazilynum,clicktime,clicknum,price) VALUES('药品编号1','药品名称1','药品类型1','中药材','http://localhost:8080/ssmc5uj7/upload/yaopinxinxi_yaopintupian1.jpg','适应症状1','禁忌症状1','药品成分1','药品详情1',1,1,CURRENT_TIMESTAMP,1,1);
INSERT INTO yaopinxinxi(yaopinbianhao,yaopinmingcheng,yaopinleixing,yaopinleibie,yaopintupian,shiyingzhengzhuang,jinjizhengzhuang,yaopinchengfen,yaopinxiangqing,thumbsupnum,crazilynum,clicktime,clicknum,price) VALUES('药品编号2','药品名称2','药品类型2','中药材','http://localhost:8080/ssmc5uj7/upload/yaopinxinxi_yaopintupian2.jpg','适应症状2','禁忌症状2','药品成分2','药品详情2',2,2,CURRENT_TIMESTAMP,2,2);
INSERT INTO yaopinxinxi(yaopinbianhao,yaopinmingcheng,yaopinleixing,yaopinleibie,yaopintupian,shiyingzhengzhuang,jinjizhengzhuang,yaopinchengfen,yaopinxiangqing,thumbsupnum,crazilynum,clicktime,clicknum,price) VALUES('药品编号3','药品名称3','药品类型3','中药材','http://localhost:8080/ssmc5uj7/upload/yaopinxinxi_yaopintupian3.jpg','适应症状3','禁忌症状3','药品成分3','药品详情3',3,3,CURRENT_TIMESTAMP,3,3);


DROP TABLE IF EXISTS `yiqingchangshi`;

CREATE TABLE `yiqingchangshi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`fangyijiqiao` varchar(200)    COMMENT '防疫技巧',
	`fengmiantupian` varchar(200)    COMMENT '封面图片',
	`zaixianshipin` varchar(200)    COMMENT '在线视频',
	`faburiqi` date    COMMENT '发布日期',
	`xiangqingneirong` longtext    COMMENT '详情内容',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='疫情常识';

INSERT INTO yiqingchangshi(fangyijiqiao,fengmiantupian,zaixianshipin,faburiqi,xiangqingneirong,thumbsupnum,crazilynum) VALUES('防疫技巧1','http://localhost:8080/ssmc5uj7/upload/yiqingchangshi_fengmiantupian1.jpg','在线视频1',CURRENT_TIMESTAMP,'详情内容1',1,1);
INSERT INTO yiqingchangshi(fangyijiqiao,fengmiantupian,zaixianshipin,faburiqi,xiangqingneirong,thumbsupnum,crazilynum) VALUES('防疫技巧2','http://localhost:8080/ssmc5uj7/upload/yiqingchangshi_fengmiantupian2.jpg','在线视频2',CURRENT_TIMESTAMP,'详情内容2',2,2);
INSERT INTO yiqingchangshi(fangyijiqiao,fengmiantupian,zaixianshipin,faburiqi,xiangqingneirong,thumbsupnum,crazilynum) VALUES('防疫技巧3','http://localhost:8080/ssmc5uj7/upload/yiqingchangshi_fengmiantupian3.jpg','在线视频3',CURRENT_TIMESTAMP,'详情内容3',3,3);


DROP TABLE IF EXISTS `baojianpintuijian`;

CREATE TABLE `baojianpintuijian` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`biaoti` varchar(200)    COMMENT '标题',
	`tuijianyaopin` varchar(200)    COMMENT '推荐药品',
	`yaopintupian` varchar(200)    COMMENT '药品图片',
	`shiyongrenqun` varchar(200)    COMMENT '适用人群',
	`shiyongjijie` varchar(200)    COMMENT '适用季节',
	`buliangfanying` varchar(200)    COMMENT '不良反应',
	`yongliangyongfa` varchar(200)    COMMENT '用量用法',
	`yaopingongxiao` longtext    COMMENT '药品功效',
	`yongyaozhinan` longtext    COMMENT '用药指南',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='保健品推荐';

INSERT INTO baojianpintuijian(biaoti,tuijianyaopin,yaopintupian,shiyongrenqun,shiyongjijie,buliangfanying,yongliangyongfa,yaopingongxiao,yongyaozhinan,thumbsupnum,crazilynum) VALUES('标题1','推荐药品1','http://localhost:8080/ssmc5uj7/upload/baojianpintuijian_yaopintupian1.jpg','儿童','春天','不良反应1','用量用法1','药品功效1','用药指南1',1,1);
INSERT INTO baojianpintuijian(biaoti,tuijianyaopin,yaopintupian,shiyongrenqun,shiyongjijie,buliangfanying,yongliangyongfa,yaopingongxiao,yongyaozhinan,thumbsupnum,crazilynum) VALUES('标题2','推荐药品2','http://localhost:8080/ssmc5uj7/upload/baojianpintuijian_yaopintupian2.jpg','儿童','春天','不良反应2','用量用法2','药品功效2','用药指南2',2,2);
INSERT INTO baojianpintuijian(biaoti,tuijianyaopin,yaopintupian,shiyongrenqun,shiyongjijie,buliangfanying,yongliangyongfa,yaopingongxiao,yongyaozhinan,thumbsupnum,crazilynum) VALUES('标题3','推荐药品3','http://localhost:8080/ssmc5uj7/upload/baojianpintuijian_yaopintupian3.jpg','儿童','春天','不良反应3','用量用法3','药品功效3','用药指南3',3,3);


DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`adminid` bigint    COMMENT '管理员id',
	`ask` longtext    COMMENT '提问',
	`reply` longtext    COMMENT '回复',
	`isreply` int    COMMENT '是否回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(1,1,'提问1','回复1',1);
INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(2,2,'提问2','回复2',2);
INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(3,3,'提问3','回复3',3);


DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`tablename` varchar(200)   default 'yaopinxinxi' COMMENT '商品表名',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`goodid` bigint NOT NULL   COMMENT '商品id',
	`goodname` varchar(200)    COMMENT '商品名称',
	`picture` varchar(200)    COMMENT '图片',
	`buynumber` int NOT NULL   COMMENT '购买数量',
	`price` float    COMMENT '单价',
	`discountprice` float    COMMENT '会员价',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名1',1,1,'商品名称1','http://localhost:8080/ssmc5uj7/upload/cart_picture1.jpg',1,1,1);
INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名2',2,2,'商品名称2','http://localhost:8080/ssmc5uj7/upload/cart_picture2.jpg',2,2,2);
INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名3',3,3,'商品名称3','http://localhost:8080/ssmc5uj7/upload/cart_picture3.jpg',3,3,3);


DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`orderid` varchar(200) NOT NULL UNIQUE   COMMENT '订单id',
	`tablename` varchar(200)   default 'yaopinxinxi' COMMENT '商品表名',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`goodid` bigint NOT NULL   COMMENT '商品id',
	`goodname` varchar(200)    COMMENT '商品名称',
	`picture` varchar(200)    COMMENT '商品图片',
	`buynumber` int NOT NULL   COMMENT '购买数量',
	`price` float NOT NULL  default '0' COMMENT '价格/积分',
	`discountprice` float   default '0' COMMENT '折扣价格',
	`total` float NOT NULL  default '0' COMMENT '总价格/总积分',
	`discounttotal` float   default '0' COMMENT '折扣总价格',
	`type` int    COMMENT '支付类型（1：现金 2：积分）',
	`status` varchar(200)    COMMENT '状态',
	`address` varchar(200)    COMMENT '地址',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

INSERT INTO orders(orderid,tablename,userid,goodid,goodname,picture,buynumber,price,discountprice,total,discounttotal,type,status,address) VALUES('订单id1','商品表名1',1,1,'商品名称1','http://localhost:8080/ssmc5uj7/upload/orders_picture1.jpg',1,1,1,1,1,1,'状态1','地址1');
INSERT INTO orders(orderid,tablename,userid,goodid,goodname,picture,buynumber,price,discountprice,total,discounttotal,type,status,address) VALUES('订单id2','商品表名2',2,2,'商品名称2','http://localhost:8080/ssmc5uj7/upload/orders_picture2.jpg',2,2,2,2,2,2,'状态2','地址2');
INSERT INTO orders(orderid,tablename,userid,goodid,goodname,picture,buynumber,price,discountprice,total,discounttotal,type,status,address) VALUES('订单id3','商品表名3',3,3,'商品名称3','http://localhost:8080/ssmc5uj7/upload/orders_picture3.jpg',3,3,3,3,3,3,'状态3','地址3');


DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`address` varchar(200) NOT NULL   COMMENT '地址',
	`name` varchar(200) NOT NULL   COMMENT '收货人',
	`phone` varchar(200) NOT NULL   COMMENT '电话',
	`isdefault` varchar(200) NOT NULL   COMMENT '是否默认地址[是/否]',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地址';

INSERT INTO address(userid,address,name,phone,isdefault) VALUES(1,'地址1','收货人1','电话1','是否默认地址[是/否]1');
INSERT INTO address(userid,address,name,phone,isdefault) VALUES(2,'地址2','收货人2','电话2','是否默认地址[是/否]2');
INSERT INTO address(userid,address,name,phone,isdefault) VALUES(3,'地址3','收货人3','电话3','是否默认地址[是/否]3');


DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(1,1,'表名1','收藏名称1','http://localhost:8080/ssmc5uj7/upload/storeup_picture1.jpg');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(2,2,'表名2','收藏名称2','http://localhost:8080/ssmc5uj7/upload/storeup_picture2.jpg');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(3,3,'表名3','收藏名称3','http://localhost:8080/ssmc5uj7/upload/storeup_picture3.jpg');


DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

INSERT INTO news(title,picture,content) VALUES('标题1','http://localhost:8080/ssmc5uj7/upload/news_picture1.jpg','内容1');
INSERT INTO news(title,picture,content) VALUES('标题2','http://localhost:8080/ssmc5uj7/upload/news_picture2.jpg','内容2');
INSERT INTO news(title,picture,content) VALUES('标题3','http://localhost:8080/ssmc5uj7/upload/news_picture3.jpg','内容3');


DROP TABLE IF EXISTS `discussyaopinxinxi`;

CREATE TABLE `discussyaopinxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='药品信息评论表';

INSERT INTO discussyaopinxinxi(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussyaopinxinxi(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussyaopinxinxi(refid,content,userid) VALUES(3,'评论内容3',3);


DROP TABLE IF EXISTS `discussyiqingchangshi`;

CREATE TABLE `discussyiqingchangshi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='疫情常识评论表';

INSERT INTO discussyiqingchangshi(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussyiqingchangshi(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussyiqingchangshi(refid,content,userid) VALUES(3,'评论内容3',3);


DROP TABLE IF EXISTS `discussbaojianpintuijian`;

CREATE TABLE `discussbaojianpintuijian` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='保健品推荐评论表';

INSERT INTO discussbaojianpintuijian(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussbaojianpintuijian(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussbaojianpintuijian(refid,content,userid) VALUES(3,'评论内容3',3);



truncate table config;
insert into config(id,name,value) values(1,'picture1','http://localhost:8080/ssmc5uj7/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/ssmc5uj7/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/ssmc5uj7/upload/picture3.jpg');
insert into config(id,name,value) values(4,'picture4','http://localhost:8080/ssmc5uj7/upload/picture4.jpg');
insert into config(id,name,value) values(5,'picture5','http://localhost:8080/ssmc5uj7/upload/picture5.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

