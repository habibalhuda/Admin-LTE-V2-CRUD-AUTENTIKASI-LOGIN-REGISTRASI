/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.17-MariaDB : Database - db_siswa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_siswa` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;

USE `db_siswa`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `password` varchar(32) COLLATE latin1_general_ci DEFAULT 'MD5',
  `nama` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `profil` text COLLATE latin1_general_ci DEFAULT NULL,
  `cpassword` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `admin` */

insert  into `admin`(`id_admin`,`username`,`password`,`nama`,`profil`,`cpassword`,`date`) values 
(1,'habib','123','habib','tes',NULL,'2022-04-04 21:16:08'),
(2,'tes123','coba123',NULL,NULL,NULL,'2022-04-04 21:16:08'),
(7,'admin','admin',NULL,NULL,NULL,'2022-04-04 21:50:26'),
(11,'admin1','admin1',NULL,NULL,NULL,'2022-04-04 22:24:09');

/*Table structure for table `tabel_siswa` */

DROP TABLE IF EXISTS `tabel_siswa`;

CREATE TABLE `tabel_siswa` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `jenkel` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `no_hp` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tabel_siswa` */

insert  into `tabel_siswa`(`id`,`nama`,`jenkel`,`alamat`,`no_hp`) values 
(1,'123','budi','jl.melati',0),
(4,'habib','Laki-Laki','jl.tegal',888888);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
