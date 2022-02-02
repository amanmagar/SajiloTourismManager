/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 8.0.19 : Database - tourism
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tourism` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `tourism`;

/*Table structure for table `bookfood` */

DROP TABLE IF EXISTS `bookfood`;

CREATE TABLE `bookfood` (
  `type` varchar(45) NOT NULL,
  `foodName` varchar(45) NOT NULL,
  `foodCost` varchar(45) NOT NULL,
  `quantity` varchar(45) NOT NULL,
  `totalCost` int NOT NULL,
  `email` varchar(45) NOT NULL,
  `packagename` varchar(45) NOT NULL,
  `place` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `bookfood` */

insert  into `bookfood`(`type`,`foodName`,`foodCost`,`quantity`,`totalCost`,`email`,`packagename`,`place`) values 
('Non-Veg','Mutton','350','2',700,'pr.basnet007@gmail.com','WaterFall','Pokhara'),
('Non-Veg','Chicken','300','5',1500,'pingprajwal@protonmail.com','Riverside','Pokhara'),
('Non-Veg','Buff','250','3',750,'ankit12345@gmail.com','Tilicho','Manang');

/*Table structure for table `bookpackage` */

DROP TABLE IF EXISTS `bookpackage`;

CREATE TABLE `bookpackage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `packagename` varchar(45) NOT NULL,
  `place` varchar(45) NOT NULL,
  `packageCost` varchar(45) NOT NULL,
  `days` varchar(45) NOT NULL,
  `noofPersons` varchar(45) NOT NULL,
  `totalcost` int NOT NULL,
  `email` varchar(45) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `bookpackage` */

insert  into `bookpackage`(`id`,`packagename`,`place`,`packageCost`,`days`,`noofPersons`,`totalcost`,`email`) values 
(1,'WaterFall','Pokhara','500','4','6',3000,'pr.basnet007@gmail.com'),
(1,'Riverside','Pokhara','400','4','5',2000,'pingprajwal@protonmail.com'),
(1,'Tilicho','Manang','500','13','3',1500,'ankit12345@gmail.com');

/*Table structure for table `bookroom` */

DROP TABLE IF EXISTS `bookroom`;

CREATE TABLE `bookroom` (
  `hotelName` varchar(45) NOT NULL,
  `roomType` varchar(45) NOT NULL,
  `roomSize` varchar(45) NOT NULL,
  `roomCost` varchar(45) NOT NULL,
  `roomDate` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `packagename` varchar(45) NOT NULL,
  `place` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `bookroom` */

insert  into `bookroom`(`hotelName`,`roomType`,`roomSize`,`roomCost`,`roomDate`,`email`,`packagename`,`place`) values 
('Paradise','Non-AC','Single','250','2021-08-02','pr.basnet007@gmail.com','WaterFall','Pokhara'),
('Public Holiday','AC','Double','300','2021-08-07','pingprajwal@protonmail.com','Riverside','Pokhara'),
('Pritam','Non-AC','Double','250','2021-10-04','ankit12345@gmail.com','Tilicho','Manang');

/*Table structure for table `booktransport` */

DROP TABLE IF EXISTS `booktransport`;

CREATE TABLE `booktransport` (
  `transportType` varchar(45) NOT NULL,
  `vehicleType` varchar(45) NOT NULL,
  `vehicleName` varchar(45) NOT NULL,
  `vehicleCost` int NOT NULL,
  `vehicleDate` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `packagename` varchar(45) NOT NULL,
  `place` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `booktransport` */

insert  into `booktransport`(`transportType`,`vehicleType`,`vehicleName`,`vehicleCost`,`vehicleDate`,`email`,`packagename`,`place`) values 
('Bus','AC','Bus',200,'2021-08-02','pr.basnet007@gmail.com','WaterFall','Pokhara'),
('Bus','AC','Bus',200,'2021-08-07','pingprajwal@protonmail.com','Riverside','Pokhara'),
('Mini-Bus','AC','Mini-Bus',200,'2021-10-04','ankit12345@gmail.com','Tilicho','Manang');

/*Table structure for table `discount` */

DROP TABLE IF EXISTS `discount`;

CREATE TABLE `discount` (
  `packagename` varchar(45) NOT NULL,
  `discount` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `discount` */

insert  into `discount`(`packagename`,`discount`) values 
('WaterFall',''),
('Riverside','10'),
('Tilicho','8%');

/*Table structure for table `food` */

DROP TABLE IF EXISTS `food`;

CREATE TABLE `food` (
  `foodtype` varchar(45) NOT NULL,
  `foodname` varchar(45) NOT NULL,
  `foodcost` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `food` */

insert  into `food`(`foodtype`,`foodname`,`foodcost`) values 
('Non-Veg','Mutton','350'),
('Veg','Cauliflower','200'),
('Non-Veg','Chicken','300'),
('Non-Veg','Buff','250');

/*Table structure for table `hotel` */

DROP TABLE IF EXISTS `hotel`;

CREATE TABLE `hotel` (
  `hotelName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `hotel` */

insert  into `hotel`(`hotelName`) values 
('Paradise'),
('Public Holiday'),
('Pritam');

/*Table structure for table `package` */

DROP TABLE IF EXISTS `package`;

CREATE TABLE `package` (
  `id` int NOT NULL AUTO_INCREMENT,
  `packagename` varchar(45) NOT NULL,
  `place` varchar(45) NOT NULL,
  `cost` varchar(45) NOT NULL,
  `days` varchar(45) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `package` */

insert  into `package`(`id`,`packagename`,`place`,`cost`,`days`) values 
(7,'Riverside','Pokhara','400','4'),
(8,'Tilicho','Manang','500','13');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `packagename` varchar(45) NOT NULL,
  `place` varchar(45) NOT NULL,
  `cost` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `cardName` varchar(45) NOT NULL,
  `cardNumber` varchar(45) NOT NULL,
  `cvv` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `payment` */

insert  into `payment`(`packagename`,`place`,`cost`,`email`,`cardName`,`cardNumber`,`cvv`) values 
('WaterFall','Pokhara','1485','pr.basnet007@gmail.com','Prajwal Basnet','12345671867','345'),
('Riverside','Pokhara','1920','pingprajwal@protonmail.com','Abhishek Basnet','12345654321','432'),
('Tilicho','Manang','1394','ankit12345@gmail.com','Ankit','12345454232','123');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `register` */

insert  into `register`(`name`,`email`,`password`,`mobile`) values 
('Prajwal Basnet','pr.basnet007@gmail.com','prajwal','9860489304'),
('Suyog','pingprajwalgmail.com','aswedq','1234562781'),
('Abhishek Basnet','pingprajwal@protonmail.com','prajwal','9860489306'),
('Ankit','ankit12345@gmail.com','1234567890','9870645212');

/*Table structure for table `room` */

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `hotelName` varchar(45) NOT NULL,
  `roomType` varchar(45) NOT NULL,
  `roomSize` varchar(45) NOT NULL,
  `roomCost` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `room` */

insert  into `room`(`hotelName`,`roomType`,`roomSize`,`roomCost`) values 
('Public Holiday','AC','Double','300'),
('Pritam','Non-AC','Double','250');

/*Table structure for table `transport` */

DROP TABLE IF EXISTS `transport`;

CREATE TABLE `transport` (
  `transportType` varchar(45) NOT NULL,
  `vehicleType` varchar(45) NOT NULL,
  `vehicleName` varchar(45) NOT NULL,
  `vehicleCost` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

/*Data for the table `transport` */

insert  into `transport`(`transportType`,`vehicleType`,`vehicleName`,`vehicleCost`) values 
('Bus','AC','Bus','200'),
('Car','Non-AC','Ford','300'),
('Mini-Bus','AC','Mini-Bus','200');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
