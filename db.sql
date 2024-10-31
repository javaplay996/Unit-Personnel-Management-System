/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - rsxx-ssmj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`rsxx-ssmj` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `rsxx-ssmj`;

/*Table structure for table `chuqin` */

DROP TABLE IF EXISTS `chuqin`;

CREATE TABLE `chuqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `today` varchar(200) DEFAULT NULL COMMENT '日期',
  `on_time` timestamp NULL DEFAULT NULL COMMENT '上班打卡时间',
  `down_time` timestamp NULL DEFAULT NULL COMMENT '下班打卡时间',
  `chuqin_types` int(11) DEFAULT NULL COMMENT '打卡类型  Search111',
  `overtimeNumber` int(11) DEFAULT NULL COMMENT '加班时间(小时)',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='考勤';

/*Data for the table `chuqin` */

insert  into `chuqin`(`id`,`yonghu_id`,`today`,`on_time`,`down_time`,`chuqin_types`,`overtimeNumber`,`create_time`) values (1,1,'2021-02-24','2021-02-16 09:09:48','2021-02-18 14:14:48',5,9,'2021-02-24 21:30:22'),(4,2,'2021-02-24','2021-02-24 14:32:37','2021-02-24 14:55:28',6,NULL,'2021-02-25 14:32:37'),(5,2,'2021-02-25','2021-02-25 15:13:51','2021-02-25 15:14:27',6,NULL,'2021-02-25 15:13:51'),(6,6,'2021-02-25','2021-02-25 19:25:03','2021-02-25 19:25:10',6,NULL,'2021-02-25 19:25:03');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (16,'zhiwu_types','职务',1,'员工',NULL,'2021-02-24 17:10:58'),(17,'zhiwu_types','职务',2,'小组长',NULL,'2021-02-24 17:10:58'),(18,'zhiwu_types','职务',2,'大组长',NULL,'2021-02-24 17:10:58'),(19,'zhicheng_types','职称',1,'初级',NULL,'2021-02-24 17:10:58'),(20,'zhicheng_types','职称',2,'中级',NULL,'2021-02-24 17:10:58'),(21,'zhicheng_types','职称',3,'副高级',NULL,'2021-02-24 17:10:58'),(22,'zhicheng_types','职称',4,'高级',NULL,'2021-02-24 17:10:58'),(23,'sex_types','性别',1,'男',NULL,'2021-02-24 17:10:58'),(24,'sex_types','性别',2,'女',NULL,'2021-02-24 17:10:58'),(25,'politics_types','政治面貌',1,'群众',NULL,'2021-02-24 17:10:58'),(26,'politics_types','政治面貌',2,'党员',NULL,'2021-02-24 17:10:58'),(27,'marriage_types','婚姻状况',1,'已婚',NULL,'2021-02-24 17:10:58'),(28,'marriage_types','婚姻状况',2,'未婚',NULL,'2021-02-24 17:10:58'),(29,'marriage_types','婚姻状况',3,'离异',NULL,'2021-02-24 17:10:58'),(30,'marriage_types','婚姻状况',4,'丧偶',NULL,'2021-02-24 17:10:58'),(31,'education_types','学历',1,'大专',NULL,'2021-02-24 17:10:58'),(32,'education_types','学历',2,'本科',NULL,'2021-02-24 17:10:58'),(33,'education_types','学历',3,'研究生',NULL,'2021-02-24 17:10:58'),(34,'education_types','学历',4,'硕士',NULL,'2021-02-24 17:10:58'),(35,'education_types','学历',5,'其他',NULL,'2021-02-24 17:10:58'),(36,'chuqin_types','打卡类型',1,'正常打卡',NULL,'2021-02-24 17:10:58'),(37,'chuqin_types','打卡类型',2,'未打上班卡',NULL,'2021-02-24 17:10:58'),(38,'chuqin_types','打卡类型',3,'未打下班卡',NULL,'2021-02-24 17:10:58'),(39,'chuqin_types','打卡类型',4,'缺勤',NULL,'2021-02-24 17:10:58'),(40,'chuqin_types','打卡类型',5,'加班',NULL,'2021-02-24 17:10:58'),(41,'chuqin_types','打卡类型',6,'迟到',NULL,'2021-02-25 11:35:33'),(42,'chuqin_types','打卡类型',7,'早退',NULL,NULL),(44,'zhicheng_types','职称',79,'职称78',NULL,'2021-02-25 17:54:40'),(45,'zhiwu_types','职务',7,'7的自扃',NULL,'2021-02-25 17:55:22'),(46,'zhicheng_types','职称',11,'|职称11',NULL,'2021-02-25 18:53:29'),(47,'zhiwu_types','职务',11,'职务11',NULL,'2021-02-25 18:53:47'),(48,'zhicheng_types','职称',77,'77',NULL,'2021-02-25 19:23:18');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','vg1owkzodrtcxn1o6xot3le96cytizgf','2020-12-17 17:09:11','2021-02-03 11:47:45'),(2,1,'1','dangyuan','党员','lrlu96f87l1btzsvhmq0cx248eoowb3t','2020-12-17 17:17:02','2020-12-17 18:17:03'),(3,1,'1','zhibu','支部','w8efhq9xkrz3c3fz6dgztk9trch8dnk8','2020-12-17 17:18:21','2020-12-17 18:18:21'),(4,1608197383165,'001','zhibu','支部','7q33efdzk68psx37dpjek8p8h6uwq7ow','2020-12-17 17:36:24','2021-01-22 10:38:07'),(5,1608198583190,'001','dangyuan','党员','p64k1bj6iwvrditvy4jzanyq44zbq6ed','2020-12-17 17:52:50','2020-12-17 18:52:50'),(6,1608199057450,'003','dangyuan','党员','g26ivuguh0qebktkl0hyj1jymxt2svnn','2020-12-17 18:03:00','2020-12-17 19:03:01'),(7,1608199181916,'004','zhibu','支部','13u05cup4ivaoeyin2shic24xi7oge2f','2020-12-17 18:03:40','2020-12-17 19:03:41'),(8,6,'admin1','users','学院管理员','y46uj8gv4ezllt5p5ufrge1f2bpjv3cs','2021-01-29 14:52:36','2021-02-03 11:47:53'),(9,7,'admin2','users','宿舍管理员','qrx3mk3gn2e5ye90s0ab3gq54nouf8rw','2021-02-02 12:02:15','2021-02-03 11:59:01'),(10,10,'11','users','学生','u31dzvfagnj9tppkjr9nvxtzbhukx5vx','2021-02-02 13:21:38','2021-02-03 12:39:22'),(11,1,'abo','users','学院管理员','f2ul3z66wpuo4a0rl77sk921n9yf8mkb','2021-02-03 10:52:40','2021-02-03 11:52:40'),(12,8,'admin3','users','财务管理员','9ymzdcsml2b96mln6x6cs3i2xi661643','2021-02-03 11:05:39','2021-02-03 15:10:11'),(13,11,'999','users','学生','mya6tv1l67d8s6r6tan7ezy7z4w8lgzw','2021-02-03 11:29:09','2021-02-03 14:45:27'),(14,4,'999','yonghu','用户','1ahtqregeq3nku278h35h1479bb0iy04','2021-02-04 13:40:27','2021-02-23 16:37:12'),(15,1,'99','yonghu','用户','8ql2zqwd0wm3ugg19omnr4q6bs9dvl61','2021-02-04 14:52:51','2021-02-20 19:03:24'),(16,7,'admin2','users','初审管理员','3mqhpytktmhhpz29r6dtrbynyvtl525i','2021-02-04 15:50:09','2021-02-22 11:07:10'),(17,3,'77','users','用户','7iln38maz4kcixp90cl3lxvjpxa8peyf','2021-02-18 09:42:20','2021-02-25 15:42:27'),(18,6,'admin1','users','管理员','bdnczr6w9dtj9n0ydl5bxf408wm0olrj','2021-02-19 16:42:49','2021-02-25 21:02:42'),(19,6,'88','yonghu','用户','hbm9t08f9ruf09aj2fh2tppsjqr1ipkc','2021-02-20 10:35:45','2021-02-25 20:24:57'),(20,2,'22','yonghu','用户','l9ozlvzyne0l4uhb9268qahfwj22kaj9','2021-02-20 10:54:51','2021-02-25 16:12:47'),(21,8,'admin3','users','政审管理员','p1vflp8rs17msr05d6vwo622f1bk095c','2021-02-20 11:39:06','2021-02-22 11:09:33'),(22,9,'admin4','users','武装部管理员','0ljqhzh9zhhlq3ftkczskvs9ur5oj1fy','2021-02-20 13:31:20','2021-02-20 19:06:45'),(23,5,'55','yonghu','用户','jzxw4912iminddl1v1csr7md5g9z04uz','2021-02-20 17:25:51','2021-02-23 17:15:21'),(24,13,'77','users','舍管管理员','gt28ff27xhxzmvjc7oy74s3jgfr7gstx','2021-02-23 15:21:29','2021-02-23 16:21:29'),(25,14,'admin2','users','舍管管理员','wm7ners2segz27n1g4sojmx8ios2d0jk','2021-02-23 16:03:05','2021-02-23 17:03:47'),(26,14,'admin2','users','售票管理员','iwqonlhzy22vjgsh90jxc016vvpr8i1e','2021-02-24 13:54:16','2021-02-24 15:53:23'),(27,15,'admin3','users','检票管理员','97icqm027wx11oba95zlnjl613h2haeq','2021-02-24 13:57:11','2021-02-24 16:26:45'),(28,18,'78','users','售票管理员','bxbiasroyq8hgxljhgygmils0450zegz','2021-02-24 14:53:44','2021-02-24 15:53:45'),(29,19,'admin2','users','人事变动管理员','si8ato1emqqajlla9tvik3x9b5ns0ep8','2021-02-25 17:09:28','2021-02-25 19:56:20'),(30,20,'admin3','users','人事档案管理员','n845v0h0ah0t24ne9te1f7kqckalsyap','2021-02-25 17:28:29','2021-02-25 18:28:29'),(31,21,'admin','users','人事档案管理员','3bg79tptlfa0dh9ae1su68fz44y419md','2021-02-25 18:58:25','2021-02-25 20:24:02');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin11','123456','管理员','2021-01-29 14:51:13'),(19,'admin2','123456','人事变动管理员','2021-02-25 17:08:56'),(21,'admin','123456','人事档案管理员','2021-02-25 18:50:53');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `zhiwu_types` int(11) DEFAULT NULL COMMENT '职务  Search111',
  `zhicheng_types` int(11) DEFAULT NULL COMMENT '职称  Search111',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别  Search111',
  `my_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `residence` varchar(200) DEFAULT NULL COMMENT '居住地',
  `birthplace` varchar(200) DEFAULT NULL COMMENT '籍贯(身份证上地址)',
  `marriage_types` int(11) DEFAULT NULL COMMENT '婚姻状况',
  `education_types` int(11) DEFAULT NULL COMMENT '学历  Search111',
  `school` varchar(200) DEFAULT NULL COMMENT '毕业学校',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`name`,`phone`,`zhiwu_types`,`zhicheng_types`,`id_number`,`sex_types`,`my_photo`,`nation`,`politics_types`,`residence`,`birthplace`,`marriage_types`,`education_types`,`school`,`create_time`) values (1,'ad1','11','张三','17703786969',2,4,'410224199610232012',2,'http://localhost:8080/rsxx-ssmj/file/download?fileName=1614173372304.jpg','汉',1,'河南开封','审犯罪',3,3,'99','2021-02-24 21:29:43'),(2,'119','123456','19','17703789999',2,4,'410224199610232012',1,'http://localhost:8080/rsxx-ssmj/file/download?fileName=1614232888718.jpg','汉',1,'河南开封','审犯罪',4,4,'99','2021-02-25 14:01:38'),(3,'88','123456','8','17703333333',2,4,'410224199610232011',2,'http://localhost:8080/rsxx-ssmj/file/download?fileName=1614235071298.jpg','汉',1,'河南开封','审犯罪',4,4,'33339','2021-02-25 14:37:58'),(4,'111','123456','张1','17703789999',7,3,'410224199610232015',1,'http://localhost:8080/rsxx-ssmj/file/download?fileName=1614250321499.jpg','汉',2,'河南开封','河南开封',1,4,'3333','2021-02-25 18:52:20'),(5,'zhang3','123456','张三','17703789999',2,77,'410224199610232011',2,'http://localhost:8080/rsxx-ssmj/file/download?fileName=1614250763445.jpg','9',2,'河南开封','审犯罪',4,5,'3333','2021-02-25 18:59:30'),(6,'z1','123456','账户1','17703789999',11,77,'410224199610232011',2,'http://localhost:8080/rsxx-ssmj/file/download?fileName=1614252270782.jpg','汉',1,'河南开封','审犯罪',1,4,'3333','2021-02-25 19:24:39');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
