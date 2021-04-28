/*
SQLyog Community Edition- MySQL GUI v5.22a
Host - 5.0.19-nt : Database - management
*********************************************************************
Server version : 5.0.19-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `management`;

USE `management`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `administrator` */

DROP TABLE IF EXISTS `administrator`;

CREATE TABLE `administrator` (
  `Admin_ID` varchar(100) default NULL,
  `Admin_Password` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `administrator` */

LOCK TABLES `administrator` WRITE;

insert  into `administrator`(`Admin_ID`,`Admin_Password`) values ('admin','admin'),(NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `IM_ID` varchar(100) NOT NULL,
  `empname` varchar(100) default NULL,
  `pass` varchar(100) default NULL,
  `dob` varchar(100) default NULL,
  `address` varchar(100) default NULL,
  `phone` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `Department` varchar(100) default NULL,
  PRIMARY KEY  (`IM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employees` */

LOCK TABLES `employees` WRITE;

insert  into `employees`(`IM_ID`,`empname`,`pass`,`dob`,`address`,`phone`,`email`,`Department`) values ('FI132','Love Chauhan','Love123','10-dec-1992','Nehru Place Delhi','9555898574','love@gmail.com','Finance'),('HE123','Ilma Ali Farooqui','ilma123','18-Dec-1993','New delhi','8787878768','ilma@gmail.com','Helper'),('HE140','Mohit','mohit@123','25-feb-2001','moradabad','8245757575','mohit@gmal.com','Helper'),('HE987','RAVI','ravi','01-05-2020','Delhi','9898764554','ravi@gmail.com','Halper'),('HR130','Aamir','Aamir13','28-feb-1980','delhi','7252525252','aamir@gmail.com','HR'),('HR132','Shakir','shakir@13','14-dec-1960','delhi','8282545425','shakir@gmail.com','HR'),('HR520','Ajay','Ajay@123','10-may-1991','Delhi','8585858574','ajay@gmail.com','HR'),('HR630','Akhilesh','akhilesh123','28-Nov-1992','Vasant Vihar Delhi','8525254152','akhilesh@gmail.com','HR'),('PR140','Thakur','thakur13','28-dec-1980','Ramupur','7952525245','thakurgmail.com','Production'),('PR141','Pranav','pranav@123','7-May-1997','Uttra Khand','9898989766','pranav@gmail.com','Production'),('PR145','Mahipal','mahipal@321','8-Jan-1998','Madhya Pradesh','9187878789','mahipal@gmail.com','Production'),('PR146','Ramprasad','ramprasad@176','1-Mar-2000','Hariyana','6778898987','Ramprsad@gmail.com','Produciton'),('PR148','Kanhiya','kanhiya@787','2-Nov-1997','Uttrapradesh','89873434238','kanhiya@hotmail.com','Production'),('PR220','Monu','monu321','26-May-1987','Sangam Vihar Delhi','8585748596','monu@gmai.com','Production'),('PU720','Deepak Gupta','deepak123','15-Jul-1993','Noida','7907498525','deepak@gmail.com','Purchase'),('PU721','Prachi','prachi@432','5-Mar-1995','Rampur','9717676767','prachi@gmail.com','Purchase'),('PU725','Shashi','shashi@123','2-Feb-1997','Bihar','9876899009','shashi@gmail.com','Purchase'),('SA131','Sarukh','Sarukh','20-mar-1959','delhi','7906369414','sarukh@gmail.com','Sales'),('SA215','Kamal Gupta','Kamal@123','01-Jan-1994','Gr. Noida','9555899891','guptakamal334@gmail.com','Sales'),('SA941','Ramu','ramu@123','28-Jun-1990','Himachal Pradesh','9898989898','ramu@gmail.com','Sales'),('SA988','KIRAN','kIRAN@123','14-07-1995','Janakpuri Delhi','9865121234','kiran767@gmail.com','Sales');

UNLOCK TABLES;

/*Table structure for table `issue_items` */

DROP TABLE IF EXISTS `issue_items`;

CREATE TABLE `issue_items` (
  `IM_ID` varchar(10) default NULL,
  `Employee` varchar(255) default NULL,
  `Department` varchar(255) default NULL,
  `itemcat` varchar(255) default NULL,
  `Quantity` varchar(255) default NULL,
  `date` varchar(255) default NULL,
  `request_number` int(11) default NULL,
  `Request_status` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `issue_items` */

LOCK TABLES `issue_items` WRITE;

insert  into `issue_items`(`IM_ID`,`Employee`,`Department`,`itemcat`,`Quantity`,`date`,`request_number`,`Request_status`) values ('HE140','Mohit','Helper','Notebook','200','16-07-2020',2563,0),('HE140','Mohit','Helper','Paper','100','16-07-2020',2564,-1),('HE140','Mohit','Helper','Stapler','80','16-07-2020',2565,1),('HR130','Aamir','HR','Stapler','10','16-07-2020',2566,-1),('HR130','Aamir','HR','Paper','10','16-07-2020',2567,1),('HR130','Aamir','HR','Calculator','10','16-07-2020',2568,-1),('HR130','Aamir','HR','Fountain pen','10','16-07-2020',2569,0),('PR141','Pranav','Production','Calculator','5','16-07-2020',2570,1),('PR141','Pranav','Production','Pencil','50','16-07-2020',2571,0),('PR141','Pranav','Production','Ballpoint','10','16-07-2020',2572,-1),('HE987','RAVI','Halper','Paper','20','16-07-2020',2574,-1),('HE987','RAVI','Halper','Calculator','5','16-07-2020',2575,0),('PR220','Monu','Production','Eraser','10','20-07-2020',2576,0),('SA131','Sarukh','Sales','Paper','500','20-07-2020',2577,0),('SA941','Ramu','Sales','Marker','5','21-07-2020',2578,-1),('SA941','Ramu','Sales','Fountain pen','12','24-07-2020',2579,1),('PR145','Mahipal','Production','Pencil','20','22-07-2020',2580,-1),('PR145','Mahipal','Production','Notebook','5','22-07-2020',2581,0),('PR145','Mahipal','Production','Calculator','1','22-07-2020',2582,0),('HR132','Shakir','HR','Calculator','2','20-07-2020',2583,0),('HR132','Shakir','HR','Fountain pen','1','20-07-2020',2584,0),('PU725','Shashi','Purchase','Calculator','2','25-07-2020',2585,0),('PU725','Shashi','Purchase','Fountain pen','5','25-07-2020',2586,-1),('HR630','Akhilesh','HR','Eraser','10','25-07-2020',2587,-1),('HR630','Akhilesh','HR','Stapler','5','25-07-2020',2588,1),('HR630','Akhilesh','HR','Stapler','9','24-07-2020',2589,0),('PR146','Ramprasad','Produciton','Wastebasket','10','25-07-2020',2590,-1),('PR146','Ramprasad','Produciton','Marker','5','25-07-2020',2591,0),('PR148','Kanhiya','Production','Rubber stamp','10','25-07-2020',2592,1),('PR148','Kanhiya','Production','Ballpoint','1','25-07-2020',2593,1),('HE123','Ilma Ali Farooqui','Helper','Paper clip','10','25-07-2020',2594,-1),('HE123','Ilma Ali Farooqui','Helper','Marker','10','25-07-2020',2595,0),('SA215','Kamal Gupta','Sales','Rubber stamp','4','25-07-2020',2596,0),('SA215','Kamal Gupta','Sales','Calculator','1','25-07-2020',2597,1),('SA215','Kamal Gupta','Sales','Rubber stamp','10','25-07-2020',2598,0);

UNLOCK TABLES;

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `Item_Id` varchar(100) default NULL,
  `itemcat` varchar(100) default NULL,
  `noofunit` varchar(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `items` */

LOCK TABLES `items` WRITE;

insert  into `items`(`Item_Id`,`itemcat`,`noofunit`) values ('2518','Notebook','2075'),('2520','Rubber stamp','2268'),('2521','Paper','2995'),('2523','Pencil','2450'),('2524','Stapler','1845'),('2525','Calculator','164'),('2526','Ballpoint','2079'),('2527','Marker','250'),('2528','Marker','2400'),('2529','Envelope','2700'),('2530','Eraser','2800'),('2531','Paper clip','2850'),('2532','Fountain pen','2488'),('2533','Wastebasket','2900');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
