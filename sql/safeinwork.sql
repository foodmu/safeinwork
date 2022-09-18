/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 8.0.11 : Database - powergrid
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`powergrid` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `powergrid`;

/*Table structure for table `co_dangerpoint` */

DROP TABLE IF EXISTS `co_dangerpoint`;

CREATE TABLE `co_dangerpoint` (
  `dId` int(11) NOT NULL AUTO_INCREMENT,
  `dName` varchar(100) DEFAULT NULL,
  `dMeasure` text,
  PRIMARY KEY (`dId`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

/*Data for the table `co_dangerpoint` */

insert  into `co_dangerpoint`(`dId`,`dName`,`dMeasure`) values (1,'高空坠落、落物伤人或损坏设备','（1）高空作业设置专人监护；（2）正确使用合格的安全带及保险绳，使用长度大于3米时加装缓冲器，作业前检查确认安全带及保险绳锁扣牢靠；（3）安全带及保险绳严禁低挂高用，严禁系在移动物体、绝缘子及其它不牢固物体上；（4）断复引、一次设备部件拆装、传递物品时使用绳索或专用吊具，严禁上下抛掷；（5）严禁踩踏、倚靠绝缘子。'),(2,'人身触电伤害','（1）工作中使用的临时检修电源必须加装独立的漏电保护器，且经试验功能完好；（2）采用硬质隔离，与带电设备形成物理隔离，确保无法进入带电设备区域；(3)控制吊车吊臂摆动范围，控制与高处与带电部位的安全距离。'),(3,'拆除基础时误伤人','（1）拆除基础时，周围设置围栏，非作业人员禁止入内；（2）作业人员施工时确认脚踏位置稳固后再行工作；\r\n（3）高处作业系好安全带（4）专人监护，遇到危险情况时，及时提醒作业人员，并做好应急措施。'),(4,'拆除电缆时误碰运行回路、误拆线','（1）拆除电缆前，确认二次安措已完成，电缆正确，电缆两端无电；（2）拆除电缆时，技术负责人专人监护，监护人与作业人员共同确认电缆无误后进行作业。'),(5,'吊车、钩机等机具使用时误伤人','（1）吊车、钩机固定作业区域，（2）非作业人员，严禁进入。'),(6,'电缆沟内人员窒息风险','（1）先进行30分钟的通风（2）人员进入前，进行含氧量检测，低于18%严禁进入。'),(7,'作业车辆、大型工器具误碰设备、伤人','（1）作业车辆、大型工器具等进入现场注意保持与带电设备的安全距离，速度不得超过5km/h，并在指定区域停放；（2）拆装设备区限高装置时，必须经值班人员许可；（3）作业车升降或移动时，设置专人监护，防止误碰其它设备，禁止在平台升起时移动车辆，禁止作业车辆支撑平衡装置未安装时进行升降作业；（4）吊臂下方严禁站人，禁止与工作无关的人员在起重工作区域内行走或停留；（5）遇有6级以上大风时，禁止露天进行起重工作。'),(8,'土建施工，挖沟时挖到电缆','（1）挖沟时，先人工试挖，禁止直接用挖掘机挖掘；（2）从电缆沟、隧道井等观察待开挖区域有无电缆，确认无电缆时，再稳妥开挖。'),(9,'挖电缆沟时，边坡堆放工具伤人','（1）边坡禁止堆放工具；（2）边坡按规定做好梯形护坡；（3）禁止黄土露空。'),(10,'电缆沟、基础坑洞跌落伤人','（1）电缆沟基坑要做好标识、护栏；（2）晚上收工后，对坑洞做好封盖措施；'),(11,'斗臂车（吊车）不稳固造成倾覆','（1）斗臂车（吊车）的工作位置应选择在坚实平整的地面处，在松软的地面上使用时，支腿下应用加宽、加长的方木垫实；（2）使用前，应在预定位置空斗试操作一次，确认液压传动、回转、升降、伸缩系统工作正常、操作灵活，制动装置可靠；（3）必要时，设专人监视支腿沉降情况；（4）斗臂车（吊车）支腿与电缆沟边缘的距离不准小于电缆沟深度的1.2倍，否则应采取防倾、防坍塌措施；（5）应提前勘察斗臂车（吊车）站位，确保支腿伸展完毕。'),(12,'安装工艺不良','（1）严格按图纸施工；（2）严格按照国标、规程规范、五通要求施工。'),(13,'二次回路误接线、误碰运行回路','（1）严格执行二次安全措施票；（2）严防交直流二次回路接地或短路；（3）防止发生误碰和误接线；（4）保护校验完成后应打印定值单，并与验收人员共同签字确认。'),(14,'未严格执行检修工艺导致设备故障','（1）回路接头“十步法”检查时严格按照五通要求开展并在检修记录上签字；（2）紧固螺栓时严格按照标准使用力矩扳手；（3）严禁踩踏设备及绝缘子；（4）验收时核对阀门状态并铅封；（5）对设备检修后三个月内出现的发热、漏油、漏气、放电、不平衡保护报警等质量问题进行考核。'),(15,'工作完毕后，设备上遗留物品','（1）高低压设备上检修使用的工器具、仪器仪表应编号、登记，下设备时进行逐项核对；（2）设备检修完毕后应设置专人检查确认现场及设备上无遗留物。'),(16,'绝缘油存放区域火灾隐患','（1）配备足够合格的灭火器，（2）现场禁止烟火。'),(17,'滤油机用电缆发热隐患','（1）使用合格的足够容量的滤油机专用电缆；（2）使用滤油过程中，关注电缆温度，如发热严重，及时更换；（3）电缆使用区域，配备灭火器。'),(18,'主变上下台，人员四肢挤压隐患','（1）加强安全教育，（2）严格按照工艺执行；（3）专人监护，时刻提醒人员注意自身安全。'),(19,'一次、二次引线误接线隐患','（1）复引时，使用引线接线记录；（2）复引后，核对引线是否正确；（3）各接头用“十步法”检查接头是否完好；'),(20,'登高作业，发生高空坠落','（1）作业人员进行高空作业前，必须认真核对工作地点、工作内容，确认无误后，方可施工；（2）施工时使用的工具、材料不准上下抛掷，要用绝缘绳拴好传递或用后放入工具包内，预防坠落伤人和与结构件碰撞导致严重的后果；（3）登高作业需加强监护，安全带的挂钩或绳子应系安全带，且安全带应固定在牢固物体上。'),(21,'感应电导致人身伤害、设备、试验仪器损坏','（1）检查设备、电动工具、仪器仪表的外壳接地良好，保护接地线的接法应满足要求；（2）使用金属外壳的电气工具时应戴绝缘手套；（3）二次断接线时，应使用绝缘工具。'),(22,'发生继电保护“三误”','（1）严格执行二次安全措施票；（2）严防交直流二次回路接地或短路；（3）防止发生误碰和误接线；（4）保护校验完成后应打印定值单，并与验收人员共同签字确认。'),(23,'走错间隔','（1）加强监护，进入设备区，认清工作位置；（2）作业前做好三核对：核对工作任务、核对设备铭牌、再次核对工作任务。');

/*Table structure for table `co_group` */

DROP TABLE IF EXISTS `co_group`;

CREATE TABLE `co_group` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gName` varchar(100) DEFAULT NULL,
  `gleader` varchar(20) DEFAULT NULL,
  `maintenance_once` int(11) DEFAULT NULL COMMENT '检修公司一次',
  `maintenance_protect` int(11) DEFAULT NULL COMMENT '检修公司保护',
  `maintenance_test` int(11) DEFAULT NULL COMMENT '检修公司实验',
  `maintenance_transmission` int(11) DEFAULT NULL COMMENT '检修公司输电',
  `commission_once` int(11) DEFAULT NULL COMMENT '外委一次',
  `commission_protect` int(11) DEFAULT NULL COMMENT '外委保护',
  `commission_test` int(11) DEFAULT NULL COMMENT '外委实验',
  `assist_number` int(11) DEFAULT NULL COMMENT '技改辅修人数',
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`gid`),
  KEY `co_group_ibfk_3` (`sid`),
  CONSTRAINT `co_group_ibfk_3` FOREIGN KEY (`sid`) REFERENCES `co_stage` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `co_group` */

insert  into `co_group`(`gid`,`gName`,`gleader`,`maintenance_once`,`maintenance_protect`,`maintenance_test`,`maintenance_transmission`,`commission_once`,`commission_protect`,`commission_test`,`assist_number`,`sid`) values (1,'二次电缆组','郝长明',0,2,0,0,6,2,0,0,1),(2,'一次设备拆除组','赵勇江',2,0,0,0,6,0,0,0,1),(3,'拆除设备运输组','张亚东',2,0,0,0,6,0,0,0,1),(4,'开挖组','马士良',2,0,0,0,6,2,0,0,2),(5,'模板组','钟博松',2,0,0,0,6,0,0,0,2),(6,'浇筑组','胡云葱',2,0,0,0,6,0,0,0,2),(7,'养护组','钟旺来',2,0,0,0,2,0,0,0,2),(8,'构支架安装组','郝长明',1,0,0,0,3,2,0,0,3),(9,'一次设备安装组','武鹏龙',1,0,0,0,4,0,0,0,3),(10,'二次电缆安装组','赵勇江',1,0,0,0,0,4,0,0,3),(11,'试验工作组','王文昭',0,0,2,0,0,0,2,0,3),(12,'拆旧主变大件运输组','石文旭',1,0,0,0,10,2,0,0,4),(13,'返厂大修主变大件运输组','刘文彬',1,0,0,0,8,2,0,0,4),(14,'主变附件安装组','万建兵',1,0,0,0,6,4,0,0,4),(15,'主变绝缘油处理组','王健',1,0,0,0,2,0,2,0,4),(16,'主变交接试验组','杨艳会',0,0,3,0,3,3,6,0,4),(17,'一次设备安装组','赵豪杰',1,0,0,0,4,0,0,0,5),(18,'二次电缆安装组','高驰',0,2,0,0,0,2,0,0,5),(19,'试验工作组','高驰',0,0,2,0,0,2,0,0,5),(20,'开盖点检、气动机构更换液压碟簧机构','赵豪杰',1,0,0,0,7,0,0,0,6),(21,'电缆更换，新安装汇控柜','张孝顺',0,1,0,0,0,5,0,0,6),(22,'开关特性试验、耐压试验等','杨  明',0,0,3,0,0,0,3,0,6),(23,'旧设备拆除，新设备安装调试','赵豪杰',1,0,0,0,10,0,0,0,7),(24,'电缆更换','张孝顺',0,1,0,0,0,5,0,0,7),(25,'一次消缺组','赵豪杰',1,0,0,0,0,0,0,0,8),(26,'二次消缺组','高驰',0,1,0,0,0,0,0,0,NULL),(27,'获1号主变停电操作组','张骁',0,0,0,6,0,0,0,0,NULL),(28,'获1号主变送电操作组','张骁',0,0,0,6,0,0,0,0,NULL),(29,'土建验收工作组','张国辉',0,0,0,3,0,0,0,0,NULL),(30,'一次设备验收工作组','刘凯源',0,0,0,3,0,0,0,0,NULL),(31,'二次设备验收工作组','苏  莉',0,0,0,3,0,0,0,0,NULL),(32,'生产准备工作组','王红利',0,0,0,4,0,0,0,0,NULL),(33,'特巡特护工作组','张骁',0,0,0,9,0,0,0,0,NULL),(34,'废旧物资工作组','张骁',0,0,0,2,0,0,0,0,NULL);

/*Table structure for table `co_guidemap` */

DROP TABLE IF EXISTS `co_guidemap`;

CREATE TABLE `co_guidemap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `originalUrl` varchar(255) DEFAULT NULL,
  `editUrl` varchar(255) DEFAULT NULL,
  `pId` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`),
  CONSTRAINT `co_guidemap_ibfk_1` FOREIGN KEY (`pId`) REFERENCES `co_project` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `co_guidemap` */

insert  into `co_guidemap`(`id`,`originalUrl`,`editUrl`,`pId`,`type`) values (3,'fd0aae16-7018-4e1b-b705-3d0938a4e2a6.jpg','fdd324ed-f18a-40de-a713-1656b8a6f0f9.jpg',7,1);

/*Table structure for table `co_maintenance` */

DROP TABLE IF EXISTS `co_maintenance`;

CREATE TABLE `co_maintenance` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  `pId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `pId` (`pId`),
  CONSTRAINT `co_maintenance_ibfk_1` FOREIGN KEY (`pId`) REFERENCES `co_project` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `co_maintenance` */

insert  into `co_maintenance`(`Id`,`path`,`pId`) values (1,'e3fe83ab-2ca2-49ed-a842-0046c3e3efd5.jpg',1),(2,'9381cfe3-516d-4c94-94e0-7edf89810e61.jpg',1);

/*Table structure for table `co_project` */

DROP TABLE IF EXISTS `co_project`;

CREATE TABLE `co_project` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pName` varchar(200) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `measure_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `co_project` */

insert  into `co_project`(`pid`,`pName`,`img`,`measure_img`) values (1,'500千伏获嘉变获1号主变综合检修作业面一览表',NULL,NULL),(4,'1千伏获嘉变获1号主变综合检修',NULL,NULL),(7,'年的次哦我i阿胶','fd0aae16-7018-4e1b-b705-3d0938a4e2a6.jpg','14bcbf0e-330d-4d9e-a4fb-aaa383ffb613.jpg');

/*Table structure for table `co_role` */

DROP TABLE IF EXISTS `co_role`;

CREATE TABLE `co_role` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `co_role` */

insert  into `co_role`(`rid`,`roleName`) values (1,'员工'),(2,'管理');

/*Table structure for table `co_stage` */

DROP TABLE IF EXISTS `co_stage`;

CREATE TABLE `co_stage` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sName` varchar(100) DEFAULT NULL,
  `sGuardian` varchar(20) DEFAULT NULL,
  `sAcceptor` varchar(20) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `unitandleader` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `rId` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `startTime` varchar(255) DEFAULT NULL,
  `endTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `fid` (`fid`),
  KEY `pid` (`pid`),
  CONSTRAINT `fid` FOREIGN KEY (`fid`) REFERENCES `co_workface` (`fid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pid` FOREIGN KEY (`pid`) REFERENCES `co_project` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

/*Data for the table `co_stage` */

insert  into `co_stage`(`sid`,`sName`,`sGuardian`,`sAcceptor`,`fid`,`unitandleader`,`remark`,`rId`,`pid`,`startTime`,`endTime`) values (1,'低压侧拆除','娄遂山','张庆军',1,'河北工程公司/索志刚',NULL,'1,2,3,4,5,6',1,'2021-09-01','2021-09-10'),(2,'低压侧土建施工','娄遂山','张庆军',1,'河北工程公司/魏鹏',NULL,'1,7,8,9,10',1,'2021-09-11','2021-09-24'),(3,'低压侧设备安装','娄遂山','张庆军',1,'河北工程公司/索志刚',NULL,'1,7,2,11,12,13',1,'2021-09-27','2021-11-03'),(4,'主变本体大修','赵豪杰','王若星',2,'河北工程公司/索志刚',NULL,'1,7,2,11,14,15,16,17,18,19',1,'2021-09-27','2021-11-05'),(5,'中压侧设备技改','赵豪杰','张骁',3,'变电检修中心/赵豪杰',NULL,'2,20,7,12,21,13',1,'2021-10-01','2021-10-07'),(6,'高压侧500kV断路器大修','赵豪杰','张骁',4,'变电检修中心/赵豪杰',NULL,'2,22,23',1,'2021-10-17','2021-10-28'),(7,'高压侧500kV隔离开关技改','赵豪杰','张骁',4,'变电检修中心/赵豪杰',NULL,'20,2,21,7,12,13',1,'2021-10-09','2021-10-16'),(8,'停电间隔消缺','赵豪杰','张骁',5,'变电检修中心/赵豪杰',NULL,'2',1,'2021-09-27','2021-10-02'),(19,'测试阶段','李元芳','狄仁杰',1,'项目实施单位/负责人','备注内容','18,19,20',1,'2021-02-06','2021-06-06'),(32,'南方的阶段','1','1',1,'能促进','1','1',1,'2022-01-20','2022-02-26');

/*Table structure for table `co_unitandcontext` */

DROP TABLE IF EXISTS `co_unitandcontext`;

CREATE TABLE `co_unitandcontext` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `unit` varchar(200) DEFAULT NULL,
  `utype` varchar(200) DEFAULT NULL,
  `uContext` text,
  `uDuty` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `uLeader` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uPhone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `pid` (`pid`),
  CONSTRAINT `co_unitandcontext_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `co_project` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `co_unitandcontext` */

insert  into `co_unitandcontext`(`uid`,`unit`,`utype`,`uContext`,`uDuty`,`uLeader`,`uPhone`,`pid`) values (1,'国网河南省电力公司检修公司','业主及主要管控单位','获1号主变等设备综合检修。','（1）进行现场勘察，组织作业方案、作业卡编制及上报；（2）负责其检修范围施工外包单位、厂家专业技术人员组织、管理；（3）负责所承担项目的安全监管、检修质量控制、检修进度控制及过程资料收集；（4）对检修施工质量负直接责任，确保设备设施零缺陷投运，投运后不发生因检修施工质量导致的设备异常和缺陷；（5）按五通要求完成所承担项目三级验收工作；（8）负责检修后试验报告、检修记录等相关资料提交、录入PMS系统及检修后设备状态评估。','刘亚林','18239977007',1),(2,'国网河南省电力公司电力科学研究院','技术监督单位','对获1号主变等设备综合检修工程项目设备制造、到货验收、安装、调试、竣工各个阶段全过程技术监督。','（1）通过查阅驻厂监造报告、关键节点现场见证、试验环节现场见证、抽查出厂试验报告等方式，对设备制造阶段开展技术监督工作；（2）通过查阅技术文件、运输与储存管理记录、质量证明文件以及到货物资抽检等方式，对变压器设备是否满足订货合同、招投标文件和有关技术标准开展验收阶段技术监督工作；设备制造阶段将技术监督发现的问题报送设备部，由设备部组织设备制造单位进行整改，电科院对整改情况进行检查核实；（3）通过隐蔽工程现场检查、中间验收、现场监督、安装质量抽检、查阅监理报告等方式开展设备安装阶段技术监督工作；（4）通过查阅过程资料（调试方案、调试记录、监理记录等）、现场见证、关键环节现场见证等方式开展设备调试阶段技术监督工作；（5）通过查阅工程竣工资料（竣工验收报告、安装过程记录、缺陷处理记录、交接试验报告等）、现场试验、核实反事故措施执行情况、现场检查等方式，开展竣工阶段技术监督工作。','王伟','15238660790',1),(3,'中国电建集团河南省电力勘测设计院','省检500千伏获嘉变500千伏获#1主变大修（2021国网大修）-施工监理','对获1号主变大修进行全过程监管；负责组织业主单位、运维单位、安检单位、施工单位、设计单位进行现场协调会、例会等。','（1）负责获1号主变大修工程施工监理；（2）负责完成对施工单位的资质审查（各参检单位作业车辆、机具、仪器仪表均需在检修合格周期内，相关检验报告、资质齐全，开工前由监理统一检查备案）和全过程安全管理，及时纠正、通报各类违章行为；（3）坚决杜绝国网系统内已通报的安全、质量事件；（4）除各区域项目监理外，安排至少1名专职安全员，开展安全监督工作。','郑  斌,李国治','15003843632,13838016054',1),(4,'河北工程有限公司','省检500千伏获嘉变500千伏获#1主变大修（2021国网大修）-施工单位','1）拆除原获1号主变ABC三相；\r\n2）安装返厂大修后获1号主变ABC三相，并进行交接试验；\r\n3） 安装获1号主变一次引线；','（1）负责获1号主变拆除，返厂大修，恢复安装，试验等工作的具体施工；（2）参与现场勘察、作业方案、作业卡编制；（3）负责其检修范围施工外包单位、厂家专业技术人员组织、管理；（4）负责所承担项目的安全监管、检修质量控制、检修进度控制及过程资料收集；（5）对检修施工质量负直接责任，确保设备设施零缺陷投运，投运后不发生因检修施工质量导致的设备异常和缺陷；（6）配合业主依据五通要求完成所承担项目三级验收工作；（7）负责检修后试验报告、检修记录等相关资料提交。','高士娟,吴保忠','13833241037,13383026182',1),(5,'中国电建集团河南省电力勘测设计院','省检500千伏获嘉变500千伏获#1主变大修（2021国网大修）-设计单位','对获1号主变返厂大修工程进行土建、一次、二次等相关设计，并出具图纸，配合业主进行设计整改。','（1）参与现场勘察，负责获1号主变大修工程土建、一次、二次相关设计；（2）出具图纸；（3）配合业主完成设计图纸的','刘昊晟','15838260688',1),(6,'河南九域博大','省检500千伏获嘉变220千伏获221断路器等一次设备改造（2021国网技改）-监理单位','对获1号主变中低压侧一次设备技改工程进行全过程监管；负责组织业主单位、运维单位、安检单位、施工单位、设计单位进行现场协调会、例会等。','（1）负责获1号主变中低压侧一次设备技改工程施工监理；（2）负责完成对施工单位的资质审查（各参检单位作业车辆、机具、仪器仪表均需在检修合格周期内，相关检验报告、资质齐全，开工前由监理统一检查备案）和全过程安全管理，及时纠正、通报各类违章行为；（3）坚决杜绝国网系统内已通报的安全、质量事件；（4）除各区域项目监理外，安排至少1名专职安全员，开展安全监督工作。','韩爱军','13838068229',1),(7,'河北工程有限公司','省检500千伏获嘉变220千伏获221断路器等一次设备改造（2021国网技改）-施工单位','1）获1号主变低压侧设备拆除，包括35kV获1号、获2号、获3号电抗器；35kV获抗1、获抗2、获抗3、获容1、获35所用1间隔设备；拆除后按照图纸进行土建施工\r\n2）获1号主变低压侧设备安装；\r\n3）220kV设备区主变进线间隔断路器、隔离开关、电流互感器更换；\r\n4）35kV设备区主变进线间隔断路器、隔离开关、电流互感器更换；','（1）负责获1号主变中低压侧一次设备现场技改工作内容的具体实施；（2）负责现场作业安全文明措施的布置；（3）负责施工工作范围内施工作业的安全监管；（4）按五通要求完成所承担项目自验收工作；负责系统投运前设备状态自检查；（5）负责所承担工程项目的出厂资料、试验报告、检修记录、调试记录、备品备件等的移交工作。','高士娟,吴保忠','13833241037,13383026182',1),(8,'中国电建集团河南省电力勘测设计院','省检500千伏获嘉变220千伏获221断路器等一次设备改造（2021国网技改）-设计单位','对获1号主变中低压侧一次设备技改工程进行土建、一次、二次等相关设计，并出具图纸，配合业主进行设计整改。','（1）参与现场勘察，负责获1号主变中低压侧技改工程土建、一次、二次相关设计；（2）出具图纸；（3）配合业主完成设计图纸的','古  圳','13783455190',1),(9,'河南工程有限公司','省检500千伏获嘉变500千伏隔离开关改造(2019国网技改)-施工单位','1）拆除原获50212、获50221隔离开关更换\r\n2）安装新获50212、获50221隔离开关','（1）负责获1号主变高压侧刀闸更换现场技改工作内容的具体实施；（2）负责现场作业安全文明措施的布置；（3）负责施工工作范围内施工作业的安全监管；（4）按五通要求完成所承担项目自验收工作；负责系统投运前设备状态自检查；（5）负责所承担工程项目的出厂资料、试验报告、检修记录、调试记录、备品备件等的移交工作。','马路','18837160820',1),(10,'上海思源高压开关有限公司','省检500千伏获嘉变220千伏获221断路器等一次设备改造（2021国网技改）-低压侧HGIS开关厂家','提供相应设备，按照业主要求及时发货，指导设备安装，调试。','（1）依据技术协议提供合格的设备；（2）按照业主要求及时发货；（3）配合业主完成设备生产过程中的关键点见证；（4）指导设备的安装、调试工作。','毛亮 ','18017101753',1),(11,'许继电气股份有限公司','省检500千伏获嘉变220千伏获221断路器等一次设备改造（2021国网技改）-并联电抗器厂家','提供相应设备，按照业主要求及时发货，指导设备安装，调试。','（1）依据技术协议提供合格的设备；（2）按照业主要求及时发货；（3）配合业主完成设备生产过程中的关键点见证；（4）指导设备的安装、调试工作。','周  祥','18037308556',1),(12,'西门子(杭州)高压开关有限公司','省检500千伏获嘉变220千伏获221断路器等一次设备改造（2021国网技改）-低压侧开关厂家','提供相应设备，按照业主要求及时发货，指导设备安装，调试。','（1）依据技术协议提供合格的设备；（2）按照业主要求及时发货；（3）配合业主完成设备生产过程中的关键点见证；（4）指导设备的安装、调试工作。','郑秋红','17638543141',1),(13,'江苏思源赫兹互感器有限公司','省检500千伏获嘉变220千伏获221断路器等一次设备改造（2021国网技改）-低压侧CT厂家','提供相应设备，按照业主要求及时发货，指导设备安装，调试。','（1）依据技术协议提供合格的设备；（2）按照业主要求及时发货；（3）配合业主完成设备生产过程中的关键点见证；（4）指导设备的安装、调试工作。','毛亮','18017101753',1),(14,'西安西电高压开关有限责任公司','省检500千伏获嘉变220千伏获221断路器等一次设备改造（2021国网技改）-低压侧刀闸厂家','提供相应设备，按照业主要求及时发货，指导设备安装，调试。','（1）依据技术协议提供合格的设备；（2）按照业主要求及时发货；（3）配合业主完成设备生产过程中的关键点见证；（4）指导设备的安装、调试工作。','杨叶青','19991921028',1),(15,'河南平高电气股份有限公司','省检500千伏获嘉变220千伏获221断路器等一次设备改造（2021国网技改）-中压侧开关刀闸厂家','提供相应设备，按照业主要求及时发货，指导设备安装，调试。','（1）依据技术协议提供合格的设备；（2）按照业主要求及时发货；（3）配合业主完成设备生产过程中的关键点见证；（4）指导设备的安装、调试工作。','张亚峰','15038855917',1),(16,'山东泰开互感器有限公司','省检500千伏获嘉变220千伏获221断路器等一次设备改造（2021国网技改）-中压侧CT厂家','提供相应设备，按照业主要求及时发货，指导设备安装，调试。','（1）依据技术协议提供合格的设备；（2）按照业主要求及时发货；（3）配合业主完成设备生产过程中的关键点见证；（4）指导设备的安装、调试工作。','李达全','15662077886',1),(17,'阿尔斯通隔离开关(无锡)有限公司','省检500千伏获嘉变500千伏隔离开关改造(2019国网技改)-高压侧刀闸厂家','提供相应设备，按照业主要求及时发货，指导设备安装，调试。','（1）依据技术协议提供合格的设备；（2）按照业主要求及时发货；（3）配合业主完成设备生产过程中的关键点见证；（4）指导设备的安装、调试工作。','盛伟栋','13373668366',1);

/*Table structure for table `co_user` */

DROP TABLE IF EXISTS `co_user`;

CREATE TABLE `co_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(20) DEFAULT NULL,
  `uPwd` varchar(20) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `rid` (`rid`),
  CONSTRAINT `co_user_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `co_role` (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `co_user` */

insert  into `co_user`(`uid`,`Username`,`uPwd`,`rid`) values (1,'mike','123456789',2);

/*Table structure for table `co_workcontext` */

DROP TABLE IF EXISTS `co_workcontext`;

CREATE TABLE `co_workcontext` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `workContext` text,
  `startTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `endTime` varchar(255) DEFAULT NULL,
  `workNums` int(11) DEFAULT NULL COMMENT '工作人数',
  `workDays` double DEFAULT NULL COMMENT '工作天数',
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `co_workcontext_ibfk_1` (`sid`),
  CONSTRAINT `co_workcontext_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `co_stage` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

/*Data for the table `co_workcontext` */

insert  into `co_workcontext`(`cid`,`workContext`,`startTime`,`endTime`,`workNums`,`workDays`,`sid`) values (1,'1）拆除二次控缆、二次至中控室信号电缆；','2021-09-02','2021-09-02',NULL,0.5,1),(2,'2）拆除35kV获抗1、获抗2、获抗3开关间隔 3 个；','2021-09-02','2021-09-04',NULL,3,1),(3,'3）拆除35kV获容1开关间隔1个','2021-09-04','2021-09-05',NULL,1.5,1),(4,'4）拆除35k获35所用1开关间隔1个；','2021-09-06','2021-09-06',NULL,1,1),(5,'5）拆除35kV 获351断路器 1组、获351电流互感器1组；','2021-09-06','2021-09-10',NULL,5,1),(6,'6）拆除35kV获1号、获2号、获3号电抗器9台；','2021-09-06','2021-09-10',NULL,5,1),(7,'1）拆除35kV断路器基础；','2021-09-11','2021-09-11',NULL,1,2),(8,'2）拆除35kV电流互感器、隔离开关支架及基础','2021-09-11','2021-09-12',NULL,2,2),(9,'3）拆除35kV并联电抗器基础','2021-09-12','2021-09-13',NULL,2,2),(10,'4）拆除35kV支柱绝缘子支架及基础；','2021-09-13','2021-09-14',NULL,2,2),(11,'5）地基开挖，地网敷设，管道预埋；','2021-09-14','2021-09-21',NULL,8,2),(12,'6）新建35kV断路器基础；','2021-09-15','2021-09-16',NULL,2,2),(13,'7）新建35kV电流互感器、隔离开关支架及基础；','2021-09-20','2021-09-23',NULL,4,2),(14,'8）新建35kV支柱绝缘子支架及基础； ','2021-09-21','2021-09-24',NULL,4,2),(15,'9）新建35kV并联电抗器基础','2021-09-22','2021-09-24',NULL,3,2),(16,'10）新建户外HGIS 基础；','2021-09-14','2021-09-20',NULL,7,2),(17,'1）更换35kV 获351断路器 1 组、获351甲隔离开关 1 组、获351电流互感器 1 组；','2021-09-27','2021-10-09',NULL,13,3),(18,'2）新建35kV获1号、获2号、获3号电抗器9 台；','2021-10-10','2021-10-19',NULL,10,3),(58,'开幕式查看111','2022-01-20','2022-01-21',2,2,32),(59,'就会出兵','2022-01-22','2022-02-02',10,12,32),(60,'就会出兵3222','2022-02-03','2022-02-14',10,12,32),(61,'就会出兵3222','2022-02-03','2022-02-14',10,12,32),(62,'就会出兵32223442','2022-02-15','2022-02-26',10,12,32);

/*Table structure for table `co_worker` */

DROP TABLE IF EXISTS `co_worker`;

CREATE TABLE `co_worker` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `wName` varchar(20) DEFAULT NULL,
  `wSex` int(11) DEFAULT NULL,
  `wAge` int(11) DEFAULT NULL,
  `wPhone` varchar(11) DEFAULT NULL,
  `wMajor` varchar(50) DEFAULT NULL,
  `wUnit` varchar(50) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `workGroupId` int(11) DEFAULT NULL,
  PRIMARY KEY (`wid`),
  KEY `asdfgn` (`workGroupId`),
  CONSTRAINT `asdfgn` FOREIGN KEY (`workGroupId`) REFERENCES `co_workgroup` (`workgroupid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `co_worker` */

insert  into `co_worker`(`wid`,`wName`,`wSex`,`wAge`,`wPhone`,`wMajor`,`wUnit`,`type`,`workGroupId`) values (1,'马伟',2,35,'12345678912','电修','检修公司',1,1),(2,'郝曙光',2,35,'12345678913','检修','检修公司',1,2),(3,'彭勇',2,35,'12345678914','检修','检修公司',1,3),(4,'沈晖',2,35,'12345678915','检修','检修公司',0,4),(5,'刘红伟',2,34,'12345678916','检修','检修公司',0,5),(6,'张洪涛',2,35,'12345678917','点修','河南检修公司',0,6),(7,'张劲光',2,32,'12345674123','运维','运维公司',0,7),(8,'杨朝峰',2,25,'14124141418','检修','检修公司',0,8),(9,'郭凯',2,34,'12412543249','运维','运维公司',0,9),(10,'张广钧',2,34,'12432154312','安全','安全公司',0,10),(11,'曲欣',1,32,'14124123521','维护','维护公司',0,11),(12,'李晨',2,23,'12421245231','检修','河南公司',0,12),(13,'寇适晓',1,32,'12421453254','检修','南阳公司',1,13),(14,'杜少燚',1,31,'12421435505','运维','郑州公司',1,14),(15,'王超',2,31,'12421422506','安全','开封公司',0,15),(16,'庞素红',1,31,'12432143209','维护','嘉陵变电站',0,16),(17,'高远',2,31,'14124124418','运维','漯河公司',0,17),(18,'董泉',1,31,'14214214212','管理','信阳公司',0,1),(19,'刘亚林',1,31,'12414141112','运维','驻马店公司',0,2),(20,'李国治',1,31,'14343254532','检修','洛阳公司',0,2),(21,'贾继灏',2,32,'14252562553','安全','周口公司',0,4),(22,'张晓',1,34,'14214321411','运维','运维公司',0,2),(23,'许东升',2,32,'12424143243','安全','南阳变电站',1,4),(24,'马路',1,32,'12432425555','检修','检修公司',1,3),(25,'索志刚',2,35,'11423524234','检修','检修公司',1,5),(26,'柳青',1,32,'12432542366','检修','运维公司',1,6),(27,'娄遂山',2,32,'14313514764','运维','检修公司',1,7),(28,'赵豪杰',2,31,'12344321167','管理','检修',1,7),(29,'魏鹏',2,24,'43125276476','管理','变电站',1,4),(30,'滑志刚',2,28,'13154142515','维修','河北检修',1,11),(31,'何四海',2,32,'12142315465','检修','河南检修',1,13);

/*Table structure for table `co_workface` */

DROP TABLE IF EXISTS `co_workface`;

CREATE TABLE `co_workface` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fName` varchar(200) DEFAULT NULL,
  `leaderName` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`fid`),
  KEY `pid` (`pid`),
  CONSTRAINT `co_workface_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `co_project` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `co_workface` */

insert  into `co_workface`(`fid`,`fName`,`leaderName`,`pid`) values (1,'低压侧作业面','马伟',1),(2,'主变本体大修作业面','马伟',1),(3,'中压侧作业面','马伟',1),(4,'高压侧作业面','马伟',1),(5,'停电间隔消缺作业面','马伟',1),(6,'运行操作','马伟',1),(7,'设备验收工作','马伟',1),(8,'特巡特护工作','马伟',1),(9,'废旧物资工作','马伟',1);

/*Table structure for table `co_workgroup` */

DROP TABLE IF EXISTS `co_workgroup`;

CREATE TABLE `co_workgroup` (
  `workgroupId` int(11) NOT NULL AUTO_INCREMENT,
  `workgroupName` varchar(50) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `leaderId` varchar(100) DEFAULT NULL,
  `member` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pId` int(11) DEFAULT NULL,
  PRIMARY KEY (`workgroupId`),
  KEY `pId` (`pId`),
  CONSTRAINT `co_workgroup_ibfk_1` FOREIGN KEY (`pId`) REFERENCES `co_project` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `co_workgroup` */

insert  into `co_workgroup`(`workgroupId`,`workgroupName`,`parentId`,`leaderId`,`member`,`pId`) values (1,'领导小组',NULL,'1,2,3','4,5,6,7,8,9,10,11,12',1),(2,'现场指挥部',1,'8','11,12,13,14,15,16,17,18,19',1),(3,'检修协调组',2,'11',NULL,1),(4,'安全观察组',2,'12',NULL,1),(5,'停电计划协调组',2,'19',NULL,1),(6,'获嘉变运行组',2,'21',NULL,1),(7,'特训特护工作组',2,'22',NULL,1),(8,'变电检修中心检修组',2,'18,23',NULL,1),(9,'综合检修施工组',2,'24,25',NULL,1),(10,'物资保障组',2,'26',NULL,1),(11,'验收工作组',2,'19',NULL,1),(12,'后勤保障组',2,'15',NULL,1),(13,'党建及工会工作组',2,'14',NULL,1),(14,'低压侧作业面管控组',8,'27',NULL,1),(15,'中压侧作业面管控组',8,'27',NULL,1),(16,'高压侧作业面管控组',8,'27',NULL,1),(17,'主变本体作业面管控组',8,'28',NULL,1),(18,'停电间隔消缺管控组',8,'28',NULL,1),(19,'低压侧作业面工作组',9,'29',NULL,1),(20,'中压侧作业面工作组',9,'31',NULL,1),(21,'高压侧作业面工作组',9,'30',NULL,1),(22,'主变本体作业面工作组',9,'25',NULL,1),(26,'检修组',3,'6','1,2',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
