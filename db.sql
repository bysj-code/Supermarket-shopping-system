/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - chaoshigouwuxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chaoshigouwuxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `chaoshigouwuxitong`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,3,'收货人1','17703786901','地址1',1,'2023-03-10 11:45:04','2023-03-10 11:45:04','2023-03-10 11:45:04'),(2,3,'收货人2','17703786902','地址2',1,'2023-03-10 11:45:04','2023-03-10 11:45:04','2023-03-10 11:45:04'),(3,3,'收货人3','17703786903','地址3',1,'2023-03-10 11:45:04','2023-03-10 11:45:04','2023-03-10 11:45:04'),(4,1,'收货人4','17703786904','地址4',1,'2023-03-10 11:45:04','2023-03-10 11:45:04','2023-03-10 11:45:04'),(5,1,'收货人5','17703786905','地址5',1,'2023-03-10 11:45:04','2023-03-10 11:45:04','2023-03-10 11:45:04'),(6,2,'收货人6','17703786906','地址6',1,'2023-03-10 11:45:04','2023-03-10 11:45:04','2023-03-10 11:45:04'),(7,2,'收货人7','17703786907','地址7',1,'2023-03-10 11:45:04','2023-03-10 11:45:04','2023-03-10 11:45:04'),(8,2,'收货人8','17703786908','地址8',1,'2023-03-10 11:45:04','2023-03-10 11:45:04','2023-03-10 11:45:04'),(9,2,'收货人9','17703786909','地址9',1,'2023-03-10 11:45:04','2023-03-10 11:45:04','2023-03-10 11:45:04'),(10,3,'收货人10','17703786910','地址10',1,'2023-03-10 11:45:04','2023-03-10 11:45:04','2023-03-10 11:45:04'),(11,3,'收货人11','17703786911','地址11',1,'2023-03-10 11:45:04','2023-03-10 11:45:04','2023-03-10 11:45:04'),(12,2,'收货人12','17703786912','地址12',1,'2023-03-10 11:45:04','2023-03-10 11:45:04','2023-03-10 11:45:04'),(13,1,'收货人13','17703786913','地址13',1,'2023-03-10 11:45:04','2023-03-10 11:45:04','2023-03-10 11:45:04'),(14,1,'收货人14','17703786914','地址14',1,'2023-03-10 11:45:04','2023-03-10 11:45:04','2023-03-10 11:45:04'),(15,4,'张11','17788889999','回复订个蛋糕',2,'2023-03-10 14:15:08','2023-03-10 14:15:08','2023-03-10 14:15:08');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

insert  into `cart`(`id`,`yonghu_id`,`shangpin_id`,`buy_number`,`create_time`,`update_time`,`insert_time`) values (1,1,13,1,'2023-03-10 13:58:07',NULL,'2023-03-10 13:58:07'),(2,1,14,1,'2023-03-10 14:08:41',NULL,'2023-03-10 14:08:41'),(3,1,12,1,'2023-03-10 14:09:31',NULL,'2023-03-10 14:09:31');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='客服聊天';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'hhhhh',NULL,NULL,NULL,2,1,'2023-03-10 11:53:12'),(2,1,NULL,NULL,'刚刚好很好','2023-03-10 11:53:27',NULL,2,'2023-03-10 11:53:28'),(3,4,'灌灌灌灌',NULL,NULL,NULL,2,1,'2023-03-10 14:17:18'),(4,4,'和豆腐干发送到',NULL,NULL,NULL,2,1,'2023-03-10 14:17:22'),(5,4,NULL,NULL,'灌灌灌灌','2023-03-10 14:17:32',NULL,2,'2023-03-10 14:17:33'),(6,4,NULL,NULL,'哼哼唧唧','2023-03-10 14:19:39',NULL,2,'2023-03-10 14:19:39');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1111','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-10 11:44:13'),(2,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-10 11:44:13'),(3,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-10 11:44:13'),(4,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-10 11:44:13'),(5,'huiyuandengji_types','会员等级类型',1,'青铜会员',NULL,'0.98','2023-03-10 11:44:13'),(6,'huiyuandengji_types','会员等级类型',2,'白银会员',NULL,'0.96','2023-03-10 11:44:13'),(7,'huiyuandengji_types','会员等级类型',3,'黄金会员',NULL,'0.94','2023-03-10 11:44:13'),(8,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-03-10 11:44:13'),(9,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-03-10 11:44:13'),(10,'shangpin_types','商品类型',1,'鞋靴',NULL,NULL,'2023-03-10 11:44:13'),(11,'shangpin_types','商品类型',2,'孕装',NULL,NULL,'2023-03-10 11:44:13'),(12,'shangpin_types','商品类型',3,'女装',NULL,NULL,'2023-03-10 11:44:13'),(13,'shangpin_types','商品类型',4,'男装',NULL,NULL,'2023-03-10 11:44:13'),(14,'shangpin_types','商品类型',5,'童装',NULL,NULL,'2023-03-10 11:44:13'),(15,'shangpin_erji_types','商品类型',1,'鞋靴1',1,NULL,'2023-03-10 11:44:13'),(16,'shangpin_erji_types','商品类型',2,'鞋靴2',1,NULL,'2023-03-10 11:44:13'),(17,'shangpin_erji_types','商品类型',3,'孕装1',2,NULL,'2023-03-10 11:44:13'),(18,'shangpin_erji_types','商品类型',4,'孕装2',2,NULL,'2023-03-10 11:44:13'),(19,'shangpin_erji_types','商品类型',5,'女装1',3,NULL,'2023-03-10 11:44:13'),(20,'shangpin_erji_types','商品类型',6,'女装2',3,NULL,'2023-03-10 11:44:13'),(21,'shangpin_erji_types','商品类型',7,'男装1',4,NULL,'2023-03-10 11:44:13'),(22,'shangpin_erji_types','商品类型',8,'男装2',4,NULL,'2023-03-10 11:44:13'),(23,'shangpin_erji_types','商品类型',9,'童装1',5,NULL,'2023-03-10 11:44:13'),(24,'shangpin_erji_types','商品类型',10,'童装2',5,NULL,'2023-03-10 11:44:13'),(25,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-10 11:44:13'),(26,'shangpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-03-10 11:44:13'),(27,'shangpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-03-10 11:44:13'),(28,'shangpin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-03-10 11:44:13'),(29,'shangpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-03-10 11:44:13'),(30,'shangpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-03-10 11:44:13'),(31,'shangpin_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-03-10 11:44:13'),(32,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-03-10 11:44:14'),(33,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-03-10 11:44:14'),(34,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-03-10 11:44:14'),(35,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-03-10 11:44:14'),(36,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-03-10 11:44:14'),(37,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-03-10 11:44:14'),(38,'shangpin_order_payment_types','订单支付类型',2,'积分',NULL,NULL,'2023-03-10 11:44:14'),(39,'shangpin_erji_types','商品类型',11,'童装3',5,'','2023-03-10 14:20:14');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-03-10 11:45:04','公告详情1','2023-03-10 11:45:04'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-03-10 11:45:04','公告详情2','2023-03-10 11:45:04'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-03-10 11:45:04','公告详情3','2023-03-10 11:45:04'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-03-10 11:45:04','公告详情4','2023-03-10 11:45:04'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-03-10 11:45:04','公告详情5','2023-03-10 11:45:04'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-03-10 11:45:04','公告详情6','2023-03-10 11:45:04'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-03-10 11:45:04','公告详情7','2023-03-10 11:45:04'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-03-10 11:45:04','公告详情8','2023-03-10 11:45:04'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-03-10 11:45:04','公告详情9','2023-03-10 11:45:04'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-03-10 11:45:04','公告详情10','2023-03-10 11:45:04'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-03-10 11:45:04','公告详情11','2023-03-10 11:45:04'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-03-10 11:45:04','公告详情12','2023-03-10 11:45:04'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-03-10 11:45:04','公告详情13','2023-03-10 11:45:04'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-03-10 11:45:04','公告详情14','2023-03-10 11:45:04');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_erji_types` int(11) DEFAULT NULL COMMENT '二级类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_yuzhi` int(11) DEFAULT NULL COMMENT '警戒值',
  `shangpin_price` int(11) DEFAULT NULL COMMENT '购买获得积分 ',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `shangpin_cangku` varchar(200) DEFAULT NULL COMMENT '所属仓库 Search111',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `shangpin_content` text COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`shangpin_types`,`shangpin_erji_types`,`shangpin_kucun_number`,`shangpin_yuzhi`,`shangpin_price`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_cangku`,`shangpin_clicknum`,`shangpin_content`,`shangxia_types`,`shangpin_delete`,`insert_time`,`create_time`) values (1,'商品名称1','1678419904764','upload/shangpin1.jpg',1,1,101,10,196,'801.80','207.91','所属仓库1',89,'商品介绍1',1,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(2,'商品名称2','1678419904775','upload/shangpin2.jpg',1,2,102,10,267,'975.47','471.50','所属仓库2',61,'商品介绍2',1,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(3,'商品名称3','1678419904812','upload/shangpin3.jpg',1,2,103,10,467,'589.00','386.04','所属仓库3',327,'商品介绍3',1,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(4,'商品名称4','1678419904836','upload/shangpin4.jpg',2,3,104,10,360,'706.90','442.74','所属仓库4',264,'商品介绍4',1,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(5,'商品名称5','1678419904852','upload/shangpin5.jpg',2,3,105,10,195,'595.35','441.31','所属仓库5',149,'商品介绍5',1,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(6,'商品名称6','1678419904777','upload/shangpin6.jpg',2,4,106,10,442,'609.80','224.58','所属仓库6',482,'商品介绍6',1,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(7,'商品名称7','1678419904843','upload/shangpin7.jpg',3,5,107,10,355,'983.28','41.01','所属仓库7',22,'商品介绍7',1,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(8,'商品名称8','1678419904800','upload/shangpin8.jpg',3,5,107,10,338,'965.45','166.59','所属仓库8',428,'商品介绍8',1,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(9,'商品名称9','1678419904835','upload/shangpin9.jpg',3,6,109,10,265,'963.05','239.39','所属仓库9',373,'商品介绍9',1,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(10,'商品名称10','1678419904841','upload/shangpin10.jpg',4,7,1010,10,104,'685.02','205.16','所属仓库10',495,'商品介绍10',1,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(11,'商品名称11','1678419904840','upload/shangpin11.jpg',4,8,1011,10,132,'649.72','138.34','所属仓库11',144,'商品介绍11',1,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(12,'商品名称12','1678419904771','upload/shangpin12.jpg',5,9,1011,10,375,'924.08','77.97','所属仓库12',49,'商品介绍12',1,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(13,'商品名称13','1678419904765','upload/shangpin13.jpg',5,9,1013,10,122,'557.23','297.74','所属仓库13',375,'商品介绍13',1,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(14,'商品名称14','1678419904800','upload/shangpin14.jpg',5,10,1010,10,71,'551.15','369.23','所属仓库14',354,'商品介绍14',1,1,'2023-03-10 11:45:04','2023-03-10 11:45:04');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(2,2,3,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(3,3,2,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(4,4,3,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(5,5,2,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(6,6,1,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(7,7,3,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(8,8,2,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(9,9,1,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(10,10,3,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(11,11,3,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(12,12,3,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(13,13,3,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(14,14,3,1,'2023-03-10 11:45:04','2023-03-10 11:45:04'),(15,14,4,1,'2023-03-10 14:15:43','2023-03-10 14:15:43');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评价内容1','2023-03-10 11:45:04','回复信息1','2023-03-10 11:45:04','2023-03-10 11:45:04'),(2,2,2,'评价内容2','2023-03-10 11:45:04','回复信息2','2023-03-10 11:45:04','2023-03-10 11:45:04'),(3,3,3,'评价内容3','2023-03-10 11:45:04','回复信息3','2023-03-10 11:45:04','2023-03-10 11:45:04'),(4,4,3,'评价内容4','2023-03-10 11:45:04','回复信息4','2023-03-10 11:45:04','2023-03-10 11:45:04'),(5,5,3,'评价内容5','2023-03-10 11:45:04','回复信息5','2023-03-10 11:45:04','2023-03-10 11:45:04'),(6,6,1,'评价内容6','2023-03-10 11:45:04','回复信息6','2023-03-10 11:45:04','2023-03-10 11:45:04'),(7,7,1,'评价内容7','2023-03-10 11:45:04','回复信息7','2023-03-10 11:45:04','2023-03-10 11:45:04'),(8,8,3,'评价内容8','2023-03-10 11:45:04','回复信息8','2023-03-10 11:45:04','2023-03-10 11:45:04'),(9,9,3,'评价内容9','2023-03-10 11:45:04','回复信息9','2023-03-10 11:45:04','2023-03-10 11:45:04'),(10,10,1,'评价内容10','2023-03-10 11:45:04','回复信息10','2023-03-10 11:45:04','2023-03-10 11:45:04'),(11,11,2,'评价内容11','2023-03-10 11:45:04','回复信息11','2023-03-10 11:45:04','2023-03-10 11:45:04'),(12,12,1,'评价内容12','2023-03-10 11:45:04','回复信息12','2023-03-10 11:45:04','2023-03-10 11:45:04'),(13,13,1,'评价内容13','2023-03-10 11:45:04','回复信息13','2023-03-10 11:45:04','2023-03-10 11:45:04'),(14,14,3,'评价内容14','2023-03-10 11:45:04','回复信息14','2023-03-10 11:45:04','2023-03-10 11:45:04'),(15,14,4,'的方大厦是个和','2023-03-10 14:16:37','灌灌灌灌','2023-03-10 14:20:44','2023-03-10 14:16:37');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_courier_name`,`shangpin_order_courier_number`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1678428539803',5,14,1,1,'361.85',NULL,NULL,101,1,'2023-03-10 14:09:00','2023-03-10 14:09:00'),(2,'1678428577124',4,12,1,1,'77.97',NULL,NULL,101,2,'2023-03-10 14:09:37','2023-03-10 14:09:37'),(3,'1678428949665',15,14,4,1,'361.85',NULL,NULL,101,1,'2023-03-10 14:15:50','2023-03-10 14:15:50'),(4,'1678428956940',15,14,4,1,'361.85','顺丰快递','24153165',105,1,'2023-03-10 14:15:57','2023-03-10 14:15:57'),(5,'1678429031337',15,14,4,1,'361.85',NULL,NULL,101,1,'2023-03-10 14:17:11','2023-03-10 14:17:11'),(6,'1678429031337',15,8,4,1,'163.26','顺丰','5646264',103,1,'2023-03-10 14:17:11','2023-03-10 14:17:11');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','rt9dd8iwhuywcmrd2vywrl0ubg3ficlt','2023-03-10 11:47:01','2023-03-10 15:19:27'),(2,1,'a1','yonghu','用户','d03ss04o840txx2f7tv5wtbpwr74jmuh','2023-03-10 11:50:01','2023-03-10 15:17:59'),(3,4,'a5','yonghu','用户','ehhaovmigxwfn4bpv9uu01xjtcfzw07a','2023-03-10 14:13:58','2023-03-10 15:18:07');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-10 11:44:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10,2) DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int(11) DEFAULT NULL COMMENT '会员等级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`yonghu_sum_jifen`,`yonghu_new_jifen`,`huiyuandengji_types`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','24.61','853.03','145.54',1,'2023-03-10 11:45:04'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','497.58','905.99','50.32',1,'2023-03-10 11:45:04'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','392.24','797.89','217.45',1,'2023-03-10 11:45:04'),(4,'a5','123456','张5','17703786965','410222555599996201','upload/1678428847217.jpg',1,NULL,'98750.20','551.00','551.00',1,'2023-03-10 14:13:51');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
