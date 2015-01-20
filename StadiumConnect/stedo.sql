/*
SQLyog - Free MySQL GUI v5.19
Host - 5.5.25a : Database - stedo
*********************************************************************
Server version : 5.5.25a
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `stedo`;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `bookedseats` */

DROP TABLE IF EXISTS `bookedseats`;

CREATE TABLE `bookedseats` (
  `bookedSeatsID` int(11) NOT NULL AUTO_INCREMENT,
  `bookingID` int(11) NOT NULL,
  `seatID` int(11) NOT NULL,
  PRIMARY KEY (`bookedSeatsID`),
  KEY `bookingID` (`bookingID`),
  KEY `seatMapID` (`seatID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bookedseats` */

/*Table structure for table `bookinginfo` */

DROP TABLE IF EXISTS `bookinginfo`;

CREATE TABLE `bookinginfo` (
  `bookingID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) NOT NULL,
  `scheduleID` int(11) NOT NULL,
  `totalSeats` int(11) NOT NULL,
  `bookTime` time DEFAULT NULL,
  `bookDate` date DEFAULT NULL,
  `price` int(10) DEFAULT '0',
  PRIMARY KEY (`bookingID`),
  KEY `customerID` (`customerID`),
  KEY `scheduleID` (`scheduleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bookinginfo` */

/*Table structure for table `cinema` */

DROP TABLE IF EXISTS `cinema`;

CREATE TABLE `cinema` (
  `cinemaID` int(11) NOT NULL AUTO_INCREMENT,
  `cinemaName` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `cityID` int(10) NOT NULL,
  `rating` int(11) NOT NULL,
  `numOfScreens` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  PRIMARY KEY (`cinemaID`),
  KEY `cityID` (`cityID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `cinema` */

insert into `cinema` (`cinemaID`,`cinemaName`,`address`,`cityID`,`rating`,`numOfScreens`,`capacity`) values (1,'City Centre 1','Salt lake\r\nCalcutta',1,4,4,240);
insert into `cinema` (`cinemaID`,`cinemaName`,`address`,`cityID`,`rating`,`numOfScreens`,`capacity`) values (2,'City Centre 2','Near Calcutta Airport',1,4,2,200);
insert into `cinema` (`cinemaID`,`cinemaName`,`address`,`cityID`,`rating`,`numOfScreens`,`capacity`) values (3,'BIG Cinemas','Odeon Complex, 23- D Block, Connaught Place, New Delhi, Delhi (state) 110001',2,5,2,200);
insert into `cinema` (`cinemaID`,`cinemaName`,`address`,`cityID`,`rating`,`numOfScreens`,`capacity`) values (4,'wave cinemas','Shivaji Palace, Plot No.2, Raja Garden, New Delhi, Delhi 110027',2,3,2,100);
insert into `cinema` (`cinemaID`,`cinemaName`,`address`,`cityID`,`rating`,`numOfScreens`,`capacity`) values (5,'PVR Naraina','Industrial Area, Community Centre, Naraina, Naraina Indl Area - I, Naraina, New Delhi, DL 110028',2,3,2,160);
insert into `cinema` (`cinemaID`,`cinemaName`,`address`,`cityID`,`rating`,`numOfScreens`,`capacity`) values (6,'PVR Cinemas','Dynamix mall, 5th Floor, Shoppers Stop, Near Chandan Cinema, Parulekar Road, Juhu, Mumbai, MH 400049',3,4,4,400);
insert into `cinema` (`cinemaID`,`cinemaName`,`address`,`cityID`,`rating`,`numOfScreens`,`capacity`) values (7,'Metro Big Cinemas','Metro House, 2nd Floor, M.G. Road, Dhobi Talao Junction, Marine Lines, Mumbai, MH, 400020',3,5,2,100);
insert into `cinema` (`cinemaID`,`cinemaName`,`address`,`cityID`,`rating`,`numOfScreens`,`capacity`) values (8,'Cinemax Sion','Sion Circle, Sion Road, Sion East, Mumbai, MH 400022',3,3,1,100);
insert into `cinema` (`cinemaID`,`cinemaName`,`address`,`cityID`,`rating`,`numOfScreens`,`capacity`) values (9,'Cauvery Theatre','1st Main Rd, Guttahalli, Bangalore, Karnataka',4,2,1,100);
insert into `cinema` (`cinemaID`,`cinemaName`,`address`,`cityID`,`rating`,`numOfScreens`,`capacity`) values (10,'Urvashi Theatre','40, Lalbagh Road, Doddamavalli, Sudhama Nagar, Bangalore, Karnataka 560002',4,3,2,200);
insert into `cinema` (`cinemaID`,`cinemaName`,`address`,`cityID`,`rating`,`numOfScreens`,`capacity`) values (11,'Fun Cinemas','Bangalore, Karnataka 560052',4,4,2,200);
insert into `cinema` (`cinemaID`,`cinemaName`,`address`,`cityID`,`rating`,`numOfScreens`,`capacity`) values (12,'Alka Theatre','8/1 Sadashiv Peth, Tilak Road, Pune, MH 411030',5,3,2,200);
insert into `cinema` (`cinemaID`,`cinemaName`,`address`,`cityID`,`rating`,`numOfScreens`,`capacity`) values (13,'Mariplex Gold Ad Labs','Wadgaon Sheri, Pune, MH',5,4,1,100);
insert into `cinema` (`cinemaID`,`cinemaName`,`address`,`cityID`,`rating`,`numOfScreens`,`capacity`) values (14,'Prabhat Talkies','681 Baji Rao Peshwe Road, Budhwar Peth, Pune, MH 411002',5,5,1,100);
insert into `cinema` (`cinemaID`,`cinemaName`,`address`,`cityID`,`rating`,`numOfScreens`,`capacity`) values (15,'Vasant Talkies','Rameshwar Chouk, Guruwar Peth, Pune',5,3,1,80);
insert into `cinema` (`cinemaID`,`cinemaName`,`address`,`cityID`,`rating`,`numOfScreens`,`capacity`) values (16,'Maharaja Talkies','Bhoi Nagar, Bhubaneswar, Orissa',6,4,1,100);
insert into `cinema` (`cinemaID`,`cinemaName`,`address`,`cityID`,`rating`,`numOfScreens`,`capacity`) values (17,'Inox','Bhawani Mall, Market Street, Sahid Nagar, Bhubaneshwar, Orissa',6,4,2,200);
insert into `cinema` (`cinemaID`,`cinemaName`,`address`,`cityID`,`rating`,`numOfScreens`,`capacity`) values (18,'Kalpana Talkies','BJB Nagar, Bhubaneswar, Orissa',6,3,2,100);
insert into `cinema` (`cinemaID`,`cinemaName`,`address`,`cityID`,`rating`,`numOfScreens`,`capacity`) values (19,'Sathyam Cinemas Multiplex','8, Thiru-vi-ka Road, Royapettah, Chennai, Tamil Nadu 600014',7,4,1,100);
insert into `cinema` (`cinemaID`,`cinemaName`,`address`,`cityID`,`rating`,`numOfScreens`,`capacity`) values (20,'Anu Ega','Poonamallee High Road, Kilpauk, Chennai, Tamil Nadu 600010',7,2,1,100);

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `cityID` int(10) NOT NULL AUTO_INCREMENT,
  `cityName` varchar(30) NOT NULL,
  PRIMARY KEY (`cityID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `city` */

insert into `city` (`cityID`,`cityName`) values (1,'Calcutta');
insert into `city` (`cityID`,`cityName`) values (2,'Delhi');
insert into `city` (`cityID`,`cityName`) values (3,'Mumbai');
insert into `city` (`cityID`,`cityName`) values (4,'Bangalore');
insert into `city` (`cityID`,`cityName`) values (5,'Pune');
insert into `city` (`cityID`,`cityName`) values (6,'Bhubaneswar');
insert into `city` (`cityID`,`cityName`) values (7,'Chennai');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `emailID` varchar(30) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `middleName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `balance` int(10) NOT NULL,
  `lastVisit` date DEFAULT NULL,
  `totalVisits` int(11) DEFAULT NULL,
  `totalTickets` int(11) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert into `customer` (`customerID`,`userName`,`password`,`emailID`,`firstName`,`middleName`,`lastName`,`phone`,`balance`,`lastVisit`,`totalVisits`,`totalTickets`) values (1,'admin','827ccb0eea8a706c4c34a16891f84e7b','admin@gmail.com','Admin','','adm','919980960048',18290,NULL,NULL,NULL);
insert into `customer` (`customerID`,`userName`,`password`,`emailID`,`firstName`,`middleName`,`lastName`,`phone`,`balance`,`lastVisit`,`totalVisits`,`totalTickets`) values (2,'mrinal','827ccb0eea8a706c4c34a16891f84e7b','mrinal@gmail.com','Mrinal','','Chakraborty','9898898989',1325,NULL,NULL,NULL);

/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `event_id` int(10) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(100) DEFAULT NULL,
  `event_desc` varchar(500) DEFAULT NULL,
  `event_image` varchar(500) DEFAULT NULL,
  `event_url` varchar(500) DEFAULT NULL,
  `event_category` varchar(100) DEFAULT NULL,
  `event_location` varchar(500) DEFAULT NULL,
  `stadiumId` int(10) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `event` */

insert into `event` (`event_id`,`event_name`,`event_desc`,`event_image`,`event_url`,`event_category`,`event_location`,`stadiumId`) values (1,'ISL','ISL DESC','image','url','FOOTBALL','Kolkata',1);

/*Table structure for table `movie` */

DROP TABLE IF EXISTS `movie`;

CREATE TABLE `movie` (
  `movieID` int(11) NOT NULL AUTO_INCREMENT,
  `movieName` varchar(100) NOT NULL,
  `storyLine` text NOT NULL,
  `imageURL` varchar(250) NOT NULL,
  `rating` int(11) NOT NULL,
  `trailer` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `cast` text NOT NULL,
  PRIMARY KEY (`movieID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `movie` */

insert into `movie` (`movieID`,`movieName`,`storyLine`,`imageURL`,`rating`,`trailer`,`category`,`cast`) values (1,'Batman Begins','Bruce Wayne loses his philanthropic parents to a senseless crime, and years later becomes the Batman to save the crime-ridden Gotham City on the verge of destruction by an ancient order.','BatmanBegins.jpg',10,'http://www.youtube.com/embed/vak9ZLfhGnQ','Action, Adventure','Christian Bale,Michael Caine,Liam Neeson,Katie Holmes,Gary Oldman,Cillian Murphy,Tom Wilkinson,Morgan Freeman');
insert into `movie` (`movieID`,`movieName`,`storyLine`,`imageURL`,`rating`,`trailer`,`category`,`cast`) values (2,'Transformers: Dark of the Moon','The Autobots learn of a Cybertronian spacecraft hidden on the moon, and race against the Decepticons to reach it and to learn its secrets.','TransformersDarkOfTheMoon.jpg',8,'http://www.youtube.com/embed/oGXNn5qXVZ0','Action. Sci-Fi','Shia LaBeouf\r\nJosh Duhamel\r\nJohn Turturro\r\nTyrese Gibson\r\nRosie Huntington-Whiteley\r\nPatrick Dempsey');
insert into `movie` (`movieID`,`movieName`,`storyLine`,`imageURL`,`rating`,`trailer`,`category`,`cast`) values (3,'The Hobbit: An Unexpected Journey','A younger and more reluctant Hobbit, Bilbo Baggins, sets out on a \"unexpected journey\" to the Lonely Mountain with a spirited group of Dwarves to reclaim a their stolen mountain home from a dragon named Smaug.','TheHobbit.jpg',9,'http://www.youtube.com/embed/QLr8yv1_qHM','Fantasy, Adventure','	\r\nIan McKellen\r\nMartin Freeman\r\nRichard Armitage\r\nJames Nesbitt\r\nKen Stott\r\nCate Blanchett\r\nIan Holm\r\nChristopher Lee\r\nHugo Weaving\r\nElijah Wood\r\nAndy Serkis');
insert into `movie` (`movieID`,`movieName`,`storyLine`,`imageURL`,`rating`,`trailer`,`category`,`cast`) values (4,'The Avengers','Nick Fury of S.H.I.E.L.D. brings together a team of super humans to form The Avengers to help save the Earth from Loki and his army.','TheAvengers.jpg',7,'http://www.youtube.com/embed/eOrNdBpGMv8','Superhero, Action, Adventure','Robert Downey, Jr.\r\nChris Evans\r\nMark Ruffalo\r\nChris Hemsworth\r\nScarlett Johansson\r\nJeremy Renner\r\nTom Hiddleston\r\nClark Gregg\r\nCobie Smulders\r\nStellan Skarsgrd\r\nSamuel L. Jackson');
insert into `movie` (`movieID`,`movieName`,`storyLine`,`imageURL`,`rating`,`trailer`,`category`,`cast`) values (5,'Iron Man 2','Because of his superhero alter ego, Tony Stark must contend with deadly issues involving the government, his own friends and new enemies.','IronMan2.jpg',7,'http://www.youtube.com/embed/FNQowwwwYa0','Superhero, Action, Adventure','	Robert Downey, Jr.\r\nGwyneth Paltrow\r\nDon Cheadle\r\nScarlett Johansson\r\nSam Rockwell\r\nMickey Rourke');
insert into `movie` (`movieID`,`movieName`,`storyLine`,`imageURL`,`rating`,`trailer`,`category`,`cast`) values (6,'Mission: Impossible - Ghost Protocol','The IMF is shut down when it\'s implicated in the bombing of the Kremlin, causing Ethan Hunt and his new team to go rogue to clear their organization\'s name.','MIGP.jpg',8,'http://www.youtube.com/embed/V0LQnQSrC-g','Action, Adventure','Tom Cruise\r\nJeremy Renner\r\nSimon Pegg\r\nPaula Patton');
insert into `movie` (`movieID`,`movieName`,`storyLine`,`imageURL`,`rating`,`trailer`,`category`,`cast`) values (7,'3 Idiots','Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend who inspired them to think differently, even as the rest of the world called them \"idiots\".','3idiots.jpg',9,'http://www.youtube.com/embed/xvszmNXdM4w','Comedy, Drama, Romance','Aamir Khan, Kareena Kapoor, Madhavan, Boman Irani, Sharman Joshi, Omi Vaidya');
insert into `movie` (`movieID`,`movieName`,`storyLine`,`imageURL`,`rating`,`trailer`,`category`,`cast`) values (8,'Dabangg 2','Chulbul Pandey is back and transferred to Kanpur where he is in charge of the local police station and faces challenges from his family, gangsters and politicians.','Dabbang.jpg',7,'http://www.youtube.com/embed/7nPN1M9zVcI','Action, Comedy, Crime','Salman Khan, Sonakshi Sinha and Vinod Khanna');
insert into `movie` (`movieID`,`movieName`,`storyLine`,`imageURL`,`rating`,`trailer`,`category`,`cast`) values (9,'Desi Boyz','Two friends lose their jobs, then part bitterly after they get exposed as male escorts.','desiboyz.jpg',6,'http://www.youtube.com/embed/uWlorjdK8cI','Comedy, Drama','Akshay Kumar, John Abraham, Deepika Padukone, Chitrangada Sen');
insert into `movie` (`movieID`,`movieName`,`storyLine`,`imageURL`,`rating`,`trailer`,`category`,`cast`) values (10,'Rockstar','An uninhibited youth woos the hottest about-to-be-married college girl. He rises to become a rock-star - then self-destructs.','Rockstar.jpg',8,'http://www.youtube.com/embed/o43cELQH63U','Biography, Drama, Music','Ranbir Kapoor, Nargis Fakhri and Shammi Kapoor');

/*Table structure for table `schedule` */

DROP TABLE IF EXISTS `schedule`;

CREATE TABLE `schedule` (
  `scheduleID` int(11) NOT NULL AUTO_INCREMENT,
  `showDate` date NOT NULL,
  `showtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `screenID` int(11) NOT NULL,
  `movieID` int(11) NOT NULL,
  `genClass` int(11) DEFAULT NULL,
  `silverClass` int(11) DEFAULT NULL,
  `goldClass` int(11) DEFAULT NULL,
  PRIMARY KEY (`scheduleID`),
  KEY `screenID` (`screenID`),
  KEY `movieID` (`movieID`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`screenID`) REFERENCES `screen` (`screenID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`movieID`) REFERENCES `movie` (`movieID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `schedule` */

insert into `schedule` (`scheduleID`,`showDate`,`showtime`,`screenID`,`movieID`,`genClass`,`silverClass`,`goldClass`) values (1,'2014-05-12','2014-12-05 19:28:09',26,1,10,10,2);

/*Table structure for table `schedule_match` */

DROP TABLE IF EXISTS `schedule_match`;

CREATE TABLE `schedule_match` (
  `scheduleId` int(10) NOT NULL DEFAULT '0',
  `schedule_name` varchar(200) DEFAULT NULL,
  `showDate` date DEFAULT NULL,
  `eventID` varchar(20) DEFAULT NULL,
  `scheduleTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stadiumId` int(10) DEFAULT NULL,
  `seat_avail` int(10) DEFAULT NULL,
  PRIMARY KEY (`scheduleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `schedule_match` */

insert into `schedule_match` (`scheduleId`,`schedule_name`,`showDate`,`eventID`,`scheduleTime`,`stadiumId`,`seat_avail`) values (1,'Mumbai City FC -   FC Pune City','2014-12-18','1','2014-12-18 19:00:00',2,1000);
insert into `schedule_match` (`scheduleId`,`schedule_name`,`showDate`,`eventID`,`scheduleTime`,`stadiumId`,`seat_avail`) values (2,'Mumbai City FC -  Chennai FC','2014-12-18','1','2014-12-18 16:00:00',2,1000);
insert into `schedule_match` (`scheduleId`,`schedule_name`,`showDate`,`eventID`,`scheduleTime`,`stadiumId`,`seat_avail`) values (3,'Mumbai City FC - Atlectico De Kolkata','2014-12-19','1','2014-12-19 20:00:00',1,2000);

/*Table structure for table `screen` */

DROP TABLE IF EXISTS `screen`;

CREATE TABLE `screen` (
  `screenID` int(11) NOT NULL AUTO_INCREMENT,
  `cinemaID` int(11) NOT NULL,
  `screenNum` int(11) NOT NULL,
  `genCapacity` int(11) NOT NULL,
  `silverCapacity` int(11) NOT NULL,
  `goldCapacity` int(11) NOT NULL,
  `totalCapacity` int(11) NOT NULL,
  PRIMARY KEY (`screenID`),
  KEY `cinemaID` (`cinemaID`),
  CONSTRAINT `screen_ibfk_1` FOREIGN KEY (`cinemaID`) REFERENCES `cinema` (`cinemaID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

/*Data for the table `screen` */

insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (26,1,3,60,30,20,110);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (27,1,2,80,30,20,130);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (28,2,1,80,30,20,130);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (29,2,2,40,20,10,70);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (30,3,1,50,30,20,100);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (31,4,1,30,20,10,60);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (32,4,2,20,10,10,40);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (33,5,1,40,20,10,80);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (34,5,2,50,20,10,80);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (35,6,2,60,40,20,120);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (36,6,3,50,40,30,120);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (37,7,1,30,20,10,60);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (38,9,1,30,30,40,100);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (39,10,1,50,30,20,100);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (40,11,1,50,20,30,100);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (41,11,2,40,30,30,100);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (42,12,2,50,20,30,100);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (43,13,1,30,40,30,100);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (44,14,1,20,30,30,100);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (45,15,1,40,20,20,80);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (46,16,1,40,30,30,100);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (47,17,1,50,30,20,100);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (48,17,2,50,30,20,100);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (49,18,2,20,20,10,50);
insert into `screen` (`screenID`,`cinemaID`,`screenNum`,`genCapacity`,`silverCapacity`,`goldCapacity`,`totalCapacity`) values (50,20,1,40,40,20,100);

/*Table structure for table `seatmap` */

DROP TABLE IF EXISTS `seatmap`;

CREATE TABLE `seatmap` (
  `seatMapID` int(11) NOT NULL AUTO_INCREMENT,
  `screenID` int(11) NOT NULL,
  `seatClass` varchar(8) NOT NULL,
  `seatNum` int(11) NOT NULL,
  PRIMARY KEY (`seatMapID`),
  KEY `screenID` (`screenID`),
  CONSTRAINT `seatmap_ibfk_1` FOREIGN KEY (`screenID`) REFERENCES `screen` (`screenID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2941 DEFAULT CHARSET=latin1;

/*Data for the table `seatmap` */

insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (641,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (642,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (643,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (644,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (645,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (646,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (647,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (648,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (649,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (650,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (651,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (652,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (653,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (654,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (655,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (656,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (657,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (658,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (659,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (660,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (661,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (662,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (663,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (664,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (665,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (666,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (667,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (668,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (669,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (670,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (671,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (672,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (673,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (674,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (675,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (676,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (677,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (678,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (679,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (680,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (681,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (682,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (683,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (684,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (685,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (686,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (687,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (688,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (689,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (690,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (691,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (692,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (693,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (694,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (695,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (696,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (697,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (698,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (699,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (700,26,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (701,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (702,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (703,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (704,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (705,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (706,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (707,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (708,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (709,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (710,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (711,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (712,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (713,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (714,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (715,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (716,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (717,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (718,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (719,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (720,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (721,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (722,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (723,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (724,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (725,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (726,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (727,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (728,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (729,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (730,26,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (731,26,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (732,26,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (733,26,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (734,26,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (735,26,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (736,26,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (737,26,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (738,26,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (739,26,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (740,26,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (741,26,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (742,26,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (743,26,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (744,26,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (745,26,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (746,26,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (747,26,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (748,26,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (749,26,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (750,26,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (751,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (752,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (753,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (754,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (755,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (756,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (757,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (758,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (759,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (760,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (761,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (762,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (763,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (764,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (765,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (766,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (767,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (768,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (769,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (770,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (771,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (772,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (773,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (774,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (775,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (776,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (777,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (778,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (779,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (780,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (781,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (782,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (783,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (784,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (785,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (786,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (787,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (788,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (789,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (790,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (791,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (792,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (793,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (794,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (795,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (796,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (797,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (798,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (799,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (800,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (801,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (802,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (803,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (804,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (805,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (806,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (807,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (808,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (809,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (810,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (811,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (812,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (813,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (814,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (815,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (816,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (817,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (818,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (819,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (820,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (821,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (822,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (823,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (824,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (825,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (826,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (827,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (828,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (829,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (830,27,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (831,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (832,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (833,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (834,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (835,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (836,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (837,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (838,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (839,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (840,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (841,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (842,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (843,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (844,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (845,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (846,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (847,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (848,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (849,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (850,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (851,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (852,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (853,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (854,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (855,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (856,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (857,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (858,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (859,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (860,27,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (861,27,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (862,27,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (863,27,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (864,27,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (865,27,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (866,27,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (867,27,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (868,27,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (869,27,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (870,27,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (871,27,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (872,27,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (873,27,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (874,27,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (875,27,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (876,27,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (877,27,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (878,27,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (879,27,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (880,27,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (881,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (882,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (883,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (884,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (885,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (886,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (887,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (888,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (889,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (890,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (891,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (892,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (893,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (894,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (895,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (896,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (897,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (898,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (899,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (900,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (901,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (902,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (903,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (904,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (905,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (906,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (907,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (908,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (909,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (910,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (911,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (912,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (913,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (914,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (915,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (916,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (917,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (918,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (919,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (920,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (921,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (922,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (923,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (924,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (925,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (926,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (927,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (928,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (929,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (930,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (931,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (932,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (933,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (934,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (935,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (936,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (937,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (938,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (939,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (940,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (941,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (942,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (943,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (944,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (945,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (946,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (947,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (948,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (949,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (950,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (951,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (952,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (953,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (954,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (955,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (956,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (957,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (958,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (959,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (960,28,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (961,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (962,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (963,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (964,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (965,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (966,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (967,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (968,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (969,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (970,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (971,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (972,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (973,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (974,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (975,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (976,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (977,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (978,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (979,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (980,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (981,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (982,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (983,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (984,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (985,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (986,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (987,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (988,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (989,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (990,28,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (991,28,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (992,28,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (993,28,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (994,28,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (995,28,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (996,28,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (997,28,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (998,28,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (999,28,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1000,28,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1001,28,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1002,28,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1003,28,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1004,28,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1005,28,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1006,28,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1007,28,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1008,28,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1009,28,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1010,28,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1011,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1012,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1013,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1014,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1015,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1016,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1017,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1018,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1019,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1020,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1021,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1022,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1023,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1024,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1025,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1026,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1027,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1028,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1029,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1030,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1031,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1032,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1033,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1034,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1035,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1036,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1037,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1038,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1039,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1040,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1041,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1042,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1043,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1044,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1045,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1046,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1047,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1048,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1049,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1050,29,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1051,29,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1052,29,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1053,29,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1054,29,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1055,29,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1056,29,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1057,29,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1058,29,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1059,29,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1060,29,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1061,29,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1062,29,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1063,29,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1064,29,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1065,29,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1066,29,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1067,29,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1068,29,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1069,29,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1070,29,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1071,29,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1072,29,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1073,29,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1074,29,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1075,29,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1076,29,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1077,29,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1078,29,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1079,29,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1080,29,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1081,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1082,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1083,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1084,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1085,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1086,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1087,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1088,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1089,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1090,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1091,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1092,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1093,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1094,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1095,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1096,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1097,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1098,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1099,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1100,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1101,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1102,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1103,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1104,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1105,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1106,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1107,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1108,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1109,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1110,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1111,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1112,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1113,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1114,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1115,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1116,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1117,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1118,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1119,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1120,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1121,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1122,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1123,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1124,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1125,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1126,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1127,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1128,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1129,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1130,30,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1131,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1132,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1133,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1134,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1135,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1136,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1137,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1138,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1139,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1140,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1141,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1142,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1143,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1144,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1145,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1146,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1147,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1148,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1149,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1150,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1151,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1152,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1153,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1154,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1155,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1156,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1157,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1158,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1159,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1160,30,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1161,30,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1162,30,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1163,30,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1164,30,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1165,30,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1166,30,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1167,30,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1168,30,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1169,30,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1170,30,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1171,30,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1172,30,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1173,30,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1174,30,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1175,30,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1176,30,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1177,30,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1178,30,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1179,30,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1180,30,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1181,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1182,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1183,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1184,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1185,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1186,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1187,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1188,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1189,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1190,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1191,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1192,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1193,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1194,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1195,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1196,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1197,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1198,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1199,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1200,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1201,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1202,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1203,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1204,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1205,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1206,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1207,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1208,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1209,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1210,31,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1211,31,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1212,31,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1213,31,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1214,31,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1215,31,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1216,31,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1217,31,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1218,31,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1219,31,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1220,31,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1221,31,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1222,31,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1223,31,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1224,31,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1225,31,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1226,31,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1227,31,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1228,31,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1229,31,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1230,31,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1231,31,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1232,31,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1233,31,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1234,31,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1235,31,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1236,31,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1237,31,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1238,31,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1239,31,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1240,31,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1241,32,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1242,32,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1243,32,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1244,32,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1245,32,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1246,32,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1247,32,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1248,32,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1249,32,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1250,32,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1251,32,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1252,32,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1253,32,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1254,32,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1255,32,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1256,32,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1257,32,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1258,32,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1259,32,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1260,32,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1261,32,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1262,32,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1263,32,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1264,32,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1265,32,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1266,32,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1267,32,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1268,32,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1269,32,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1270,32,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1271,32,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1272,32,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1273,32,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1274,32,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1275,32,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1276,32,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1277,32,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1278,32,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1279,32,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1280,32,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1281,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1282,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1283,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1284,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1285,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1286,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1287,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1288,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1289,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1290,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1291,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1292,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1293,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1294,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1295,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1296,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1297,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1298,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1299,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1300,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1301,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1302,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1303,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1304,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1305,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1306,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1307,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1308,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1309,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1310,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1311,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1312,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1313,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1314,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1315,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1316,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1317,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1318,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1319,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1320,33,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1321,33,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1322,33,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1323,33,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1324,33,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1325,33,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1326,33,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1327,33,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1328,33,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1329,33,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1330,33,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1331,33,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1332,33,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1333,33,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1334,33,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1335,33,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1336,33,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1337,33,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1338,33,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1339,33,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1340,33,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1341,33,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1342,33,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1343,33,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1344,33,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1345,33,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1346,33,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1347,33,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1348,33,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1349,33,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1350,33,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1351,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1352,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1353,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1354,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1355,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1356,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1357,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1358,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1359,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1360,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1361,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1362,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1363,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1364,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1365,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1366,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1367,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1368,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1369,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1370,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1371,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1372,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1373,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1374,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1375,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1376,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1377,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1378,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1379,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1380,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1381,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1382,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1383,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1384,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1385,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1386,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1387,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1388,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1389,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1390,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1391,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1392,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1393,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1394,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1395,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1396,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1397,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1398,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1399,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1400,34,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1401,34,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1402,34,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1403,34,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1404,34,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1405,34,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1406,34,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1407,34,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1408,34,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1409,34,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1410,34,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1411,34,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1412,34,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1413,34,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1414,34,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1415,34,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1416,34,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1417,34,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1418,34,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1419,34,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1420,34,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1421,34,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1422,34,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1423,34,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1424,34,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1425,34,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1426,34,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1427,34,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1428,34,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1429,34,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1430,34,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1431,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1432,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1433,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1434,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1435,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1436,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1437,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1438,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1439,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1440,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1441,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1442,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1443,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1444,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1445,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1446,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1447,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1448,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1449,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1450,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1451,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1452,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1453,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1454,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1455,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1456,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1457,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1458,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1459,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1460,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1461,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1462,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1463,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1464,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1465,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1466,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1467,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1468,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1469,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1470,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1471,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1472,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1473,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1474,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1475,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1476,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1477,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1478,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1479,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1480,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1481,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1482,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1483,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1484,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1485,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1486,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1487,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1488,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1489,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1490,35,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1491,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1492,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1493,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1494,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1495,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1496,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1497,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1498,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1499,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1500,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1501,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1502,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1503,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1504,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1505,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1506,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1507,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1508,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1509,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1510,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1511,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1512,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1513,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1514,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1515,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1516,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1517,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1518,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1519,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1520,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1521,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1522,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1523,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1524,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1525,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1526,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1527,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1528,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1529,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1530,35,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1531,35,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1532,35,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1533,35,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1534,35,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1535,35,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1536,35,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1537,35,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1538,35,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1539,35,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1540,35,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1541,35,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1542,35,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1543,35,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1544,35,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1545,35,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1546,35,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1547,35,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1548,35,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1549,35,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1550,35,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1551,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1552,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1553,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1554,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1555,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1556,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1557,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1558,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1559,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1560,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1561,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1562,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1563,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1564,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1565,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1566,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1567,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1568,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1569,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1570,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1571,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1572,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1573,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1574,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1575,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1576,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1577,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1578,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1579,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1580,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1581,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1582,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1583,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1584,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1585,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1586,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1587,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1588,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1589,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1590,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1591,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1592,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1593,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1594,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1595,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1596,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1597,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1598,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1599,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1600,36,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1601,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1602,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1603,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1604,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1605,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1606,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1607,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1608,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1609,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1610,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1611,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1612,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1613,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1614,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1615,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1616,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1617,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1618,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1619,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1620,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1621,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1622,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1623,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1624,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1625,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1626,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1627,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1628,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1629,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1630,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1631,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1632,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1633,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1634,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1635,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1636,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1637,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1638,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1639,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1640,36,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1641,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1642,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1643,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1644,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1645,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1646,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1647,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1648,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1649,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1650,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1651,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1652,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1653,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1654,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1655,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1656,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1657,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1658,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1659,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1660,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1661,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1662,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1663,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1664,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1665,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1666,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1667,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1668,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1669,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1670,36,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1671,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1672,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1673,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1674,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1675,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1676,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1677,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1678,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1679,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1680,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1681,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1682,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1683,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1684,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1685,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1686,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1687,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1688,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1689,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1690,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1691,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1692,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1693,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1694,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1695,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1696,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1697,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1698,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1699,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1700,37,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1701,37,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1702,37,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1703,37,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1704,37,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1705,37,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1706,37,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1707,37,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1708,37,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1709,37,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1710,37,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1711,37,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1712,37,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1713,37,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1714,37,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1715,37,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1716,37,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1717,37,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1718,37,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1719,37,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1720,37,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1721,37,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1722,37,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1723,37,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1724,37,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1725,37,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1726,37,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1727,37,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1728,37,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1729,37,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1730,37,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1731,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1732,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1733,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1734,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1735,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1736,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1737,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1738,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1739,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1740,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1741,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1742,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1743,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1744,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1745,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1746,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1747,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1748,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1749,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1750,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1751,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1752,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1753,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1754,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1755,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1756,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1757,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1758,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1759,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1760,38,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1761,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1762,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1763,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1764,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1765,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1766,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1767,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1768,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1769,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1770,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1771,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1772,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1773,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1774,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1775,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1776,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1777,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1778,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1779,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1780,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1781,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1782,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1783,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1784,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1785,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1786,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1787,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1788,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1789,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1790,38,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1791,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1792,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1793,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1794,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1795,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1796,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1797,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1798,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1799,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1800,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1801,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1802,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1803,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1804,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1805,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1806,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1807,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1808,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1809,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1810,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1811,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1812,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1813,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1814,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1815,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1816,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1817,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1818,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1819,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1820,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1821,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1822,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1823,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1824,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1825,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1826,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1827,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1828,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1829,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1830,38,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1831,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1832,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1833,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1834,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1835,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1836,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1837,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1838,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1839,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1840,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1841,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1842,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1843,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1844,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1845,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1846,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1847,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1848,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1849,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1850,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1851,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1852,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1853,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1854,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1855,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1856,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1857,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1858,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1859,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1860,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1861,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1862,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1863,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1864,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1865,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1866,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1867,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1868,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1869,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1870,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1871,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1872,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1873,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1874,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1875,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1876,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1877,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1878,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1879,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1880,39,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1881,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1882,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1883,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1884,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1885,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1886,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1887,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1888,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1889,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1890,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1891,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1892,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1893,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1894,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1895,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1896,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1897,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1898,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1899,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1900,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1901,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1902,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1903,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1904,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1905,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1906,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1907,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1908,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1909,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1910,39,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1911,39,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1912,39,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1913,39,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1914,39,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1915,39,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1916,39,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1917,39,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1918,39,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1919,39,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1920,39,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1921,39,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1922,39,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1923,39,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1924,39,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1925,39,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1926,39,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1927,39,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1928,39,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1929,39,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1930,39,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1931,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1932,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1933,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1934,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1935,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1936,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1937,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1938,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1939,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1940,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1941,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1942,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1943,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1944,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1945,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1946,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1947,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1948,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1949,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1950,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1951,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1952,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1953,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1954,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1955,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1956,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1957,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1958,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1959,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1960,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1961,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1962,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1963,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1964,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1965,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1966,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1967,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1968,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1969,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1970,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1971,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1972,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1973,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1974,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1975,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1976,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1977,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1978,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1979,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1980,40,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1981,40,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1982,40,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1983,40,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1984,40,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1985,40,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1986,40,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1987,40,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1988,40,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1989,40,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1990,40,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1991,40,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1992,40,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1993,40,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1994,40,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1995,40,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1996,40,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1997,40,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1998,40,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (1999,40,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2000,40,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2001,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2002,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2003,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2004,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2005,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2006,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2007,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2008,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2009,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2010,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2011,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2012,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2013,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2014,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2015,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2016,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2017,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2018,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2019,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2020,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2021,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2022,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2023,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2024,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2025,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2026,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2027,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2028,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2029,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2030,40,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2031,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2032,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2033,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2034,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2035,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2036,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2037,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2038,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2039,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2040,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2041,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2042,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2043,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2044,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2045,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2046,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2047,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2048,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2049,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2050,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2051,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2052,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2053,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2054,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2055,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2056,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2057,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2058,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2059,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2060,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2061,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2062,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2063,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2064,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2065,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2066,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2067,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2068,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2069,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2070,41,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2071,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2072,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2073,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2074,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2075,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2076,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2077,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2078,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2079,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2080,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2081,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2082,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2083,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2084,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2085,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2086,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2087,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2088,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2089,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2090,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2091,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2092,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2093,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2094,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2095,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2096,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2097,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2098,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2099,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2100,41,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2101,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2102,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2103,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2104,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2105,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2106,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2107,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2108,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2109,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2110,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2111,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2112,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2113,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2114,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2115,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2116,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2117,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2118,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2119,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2120,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2121,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2122,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2123,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2124,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2125,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2126,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2127,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2128,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2129,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2130,41,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2131,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2132,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2133,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2134,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2135,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2136,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2137,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2138,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2139,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2140,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2141,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2142,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2143,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2144,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2145,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2146,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2147,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2148,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2149,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2150,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2151,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2152,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2153,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2154,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2155,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2156,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2157,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2158,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2159,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2160,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2161,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2162,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2163,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2164,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2165,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2166,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2167,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2168,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2169,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2170,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2171,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2172,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2173,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2174,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2175,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2176,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2177,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2178,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2179,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2180,42,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2181,42,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2182,42,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2183,42,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2184,42,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2185,42,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2186,42,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2187,42,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2188,42,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2189,42,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2190,42,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2191,42,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2192,42,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2193,42,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2194,42,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2195,42,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2196,42,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2197,42,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2198,42,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2199,42,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2200,42,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2201,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2202,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2203,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2204,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2205,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2206,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2207,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2208,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2209,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2210,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2211,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2212,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2213,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2214,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2215,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2216,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2217,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2218,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2219,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2220,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2221,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2222,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2223,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2224,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2225,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2226,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2227,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2228,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2229,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2230,42,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2231,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2232,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2233,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2234,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2235,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2236,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2237,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2238,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2239,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2240,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2241,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2242,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2243,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2244,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2245,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2246,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2247,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2248,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2249,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2250,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2251,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2252,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2253,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2254,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2255,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2256,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2257,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2258,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2259,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2260,43,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2261,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2262,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2263,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2264,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2265,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2266,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2267,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2268,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2269,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2270,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2271,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2272,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2273,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2274,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2275,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2276,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2277,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2278,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2279,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2280,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2281,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2282,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2283,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2284,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2285,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2286,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2287,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2288,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2289,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2290,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2291,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2292,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2293,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2294,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2295,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2296,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2297,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2298,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2299,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2300,43,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2301,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2302,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2303,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2304,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2305,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2306,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2307,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2308,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2309,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2310,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2311,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2312,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2313,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2314,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2315,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2316,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2317,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2318,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2319,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2320,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2321,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2322,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2323,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2324,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2325,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2326,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2327,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2328,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2329,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2330,43,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2331,44,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2332,44,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2333,44,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2334,44,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2335,44,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2336,44,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2337,44,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2338,44,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2339,44,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2340,44,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2341,44,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2342,44,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2343,44,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2344,44,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2345,44,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2346,44,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2347,44,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2348,44,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2349,44,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2350,44,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2351,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2352,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2353,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2354,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2355,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2356,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2357,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2358,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2359,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2360,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2361,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2362,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2363,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2364,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2365,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2366,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2367,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2368,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2369,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2370,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2371,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2372,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2373,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2374,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2375,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2376,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2377,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2378,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2379,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2380,44,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2381,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2382,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2383,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2384,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2385,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2386,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2387,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2388,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2389,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2390,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2391,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2392,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2393,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2394,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2395,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2396,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2397,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2398,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2399,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2400,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2401,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2402,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2403,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2404,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2405,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2406,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2407,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2408,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2409,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2410,44,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2411,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2412,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2413,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2414,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2415,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2416,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2417,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2418,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2419,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2420,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2421,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2422,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2423,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2424,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2425,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2426,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2427,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2428,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2429,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2430,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2431,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2432,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2433,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2434,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2435,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2436,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2437,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2438,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2439,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2440,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2441,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2442,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2443,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2444,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2445,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2446,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2447,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2448,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2449,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2450,45,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2451,45,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2452,45,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2453,45,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2454,45,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2455,45,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2456,45,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2457,45,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2458,45,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2459,45,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2460,45,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2461,45,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2462,45,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2463,45,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2464,45,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2465,45,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2466,45,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2467,45,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2468,45,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2469,45,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2470,45,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2471,45,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2472,45,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2473,45,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2474,45,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2475,45,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2476,45,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2477,45,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2478,45,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2479,45,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2480,45,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2481,45,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2482,45,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2483,45,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2484,45,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2485,45,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2486,45,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2487,45,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2488,45,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2489,45,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2490,45,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2491,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2492,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2493,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2494,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2495,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2496,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2497,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2498,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2499,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2500,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2501,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2502,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2503,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2504,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2505,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2506,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2507,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2508,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2509,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2510,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2511,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2512,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2513,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2514,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2515,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2516,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2517,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2518,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2519,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2520,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2521,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2522,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2523,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2524,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2525,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2526,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2527,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2528,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2529,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2530,46,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2531,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2532,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2533,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2534,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2535,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2536,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2537,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2538,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2539,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2540,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2541,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2542,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2543,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2544,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2545,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2546,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2547,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2548,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2549,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2550,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2551,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2552,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2553,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2554,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2555,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2556,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2557,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2558,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2559,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2560,46,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2561,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2562,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2563,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2564,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2565,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2566,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2567,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2568,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2569,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2570,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2571,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2572,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2573,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2574,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2575,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2576,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2577,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2578,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2579,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2580,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2581,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2582,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2583,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2584,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2585,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2586,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2587,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2588,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2589,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2590,46,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2591,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2592,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2593,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2594,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2595,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2596,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2597,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2598,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2599,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2600,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2601,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2602,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2603,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2604,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2605,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2606,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2607,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2608,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2609,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2610,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2611,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2612,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2613,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2614,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2615,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2616,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2617,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2618,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2619,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2620,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2621,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2622,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2623,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2624,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2625,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2626,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2627,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2628,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2629,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2630,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2631,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2632,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2633,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2634,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2635,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2636,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2637,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2638,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2639,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2640,47,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2641,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2642,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2643,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2644,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2645,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2646,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2647,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2648,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2649,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2650,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2651,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2652,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2653,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2654,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2655,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2656,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2657,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2658,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2659,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2660,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2661,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2662,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2663,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2664,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2665,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2666,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2667,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2668,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2669,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2670,47,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2671,47,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2672,47,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2673,47,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2674,47,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2675,47,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2676,47,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2677,47,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2678,47,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2679,47,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2680,47,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2681,47,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2682,47,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2683,47,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2684,47,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2685,47,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2686,47,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2687,47,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2688,47,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2689,47,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2690,47,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2691,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2692,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2693,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2694,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2695,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2696,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2697,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2698,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2699,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2700,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2701,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2702,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2703,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2704,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2705,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2706,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2707,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2708,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2709,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2710,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2711,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2712,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2713,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2714,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2715,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2716,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2717,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2718,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2719,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2720,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2721,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2722,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2723,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2724,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2725,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2726,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2727,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2728,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2729,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2730,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2731,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2732,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2733,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2734,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2735,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2736,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2737,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2738,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2739,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2740,48,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2741,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2742,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2743,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2744,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2745,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2746,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2747,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2748,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2749,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2750,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2751,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2752,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2753,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2754,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2755,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2756,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2757,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2758,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2759,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2760,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2761,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2762,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2763,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2764,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2765,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2766,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2767,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2768,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2769,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2770,48,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2771,48,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2772,48,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2773,48,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2774,48,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2775,48,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2776,48,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2777,48,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2778,48,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2779,48,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2780,48,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2781,48,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2782,48,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2783,48,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2784,48,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2785,48,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2786,48,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2787,48,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2788,48,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2789,48,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2790,48,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2791,49,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2792,49,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2793,49,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2794,49,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2795,49,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2796,49,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2797,49,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2798,49,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2799,49,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2800,49,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2801,49,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2802,49,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2803,49,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2804,49,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2805,49,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2806,49,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2807,49,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2808,49,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2809,49,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2810,49,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2811,49,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2812,49,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2813,49,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2814,49,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2815,49,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2816,49,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2817,49,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2818,49,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2819,49,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2820,49,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2821,49,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2822,49,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2823,49,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2824,49,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2825,49,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2826,49,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2827,49,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2828,49,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2829,49,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2830,49,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2831,49,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2832,49,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2833,49,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2834,49,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2835,49,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2836,49,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2837,49,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2838,49,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2839,49,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2840,49,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2841,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2842,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2843,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2844,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2845,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2846,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2847,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2848,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2849,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2850,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2851,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2852,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2853,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2854,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2855,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2856,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2857,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2858,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2859,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2860,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2861,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2862,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2863,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2864,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2865,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2866,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2867,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2868,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2869,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2870,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2871,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2872,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2873,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2874,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2875,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2876,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2877,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2878,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2879,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2880,50,'GEN',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2881,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2882,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2883,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2884,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2885,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2886,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2887,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2888,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2889,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2890,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2891,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2892,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2893,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2894,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2895,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2896,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2897,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2898,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2899,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2900,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2901,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2902,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2903,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2904,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2905,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2906,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2907,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2908,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2909,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2910,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2911,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2912,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2913,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2914,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2915,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2916,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2917,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2918,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2919,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2920,50,'SILVER',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2921,50,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2922,50,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2923,50,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2924,50,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2925,50,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2926,50,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2927,50,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2928,50,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2929,50,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2930,50,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2931,50,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2932,50,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2933,50,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2934,50,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2935,50,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2936,50,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2937,50,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2938,50,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2939,50,'GOLD',0);
insert into `seatmap` (`seatMapID`,`screenID`,`seatClass`,`seatNum`) values (2940,50,'GOLD',0);

/*Table structure for table `stadium` */

DROP TABLE IF EXISTS `stadium`;

CREATE TABLE `stadium` (
  `stadiumId` int(10) NOT NULL AUTO_INCREMENT,
  `stadium_name` varchar(100) DEFAULT NULL,
  `cityId` int(10) DEFAULT NULL,
  `parkingAvailable` varchar(1) DEFAULT NULL,
  `capacity` int(10) DEFAULT NULL,
  PRIMARY KEY (`stadiumId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `stadium` */

insert into `stadium` (`stadiumId`,`stadium_name`,`cityId`,`parkingAvailable`,`capacity`) values (1,'EDEN',1,'Y',2000);
insert into `stadium` (`stadiumId`,`stadium_name`,`cityId`,`parkingAvailable`,`capacity`) values (2,'Wankhede',3,'Y',1000);

/*Table structure for table `stadium_parking` */

DROP TABLE IF EXISTS `stadium_parking`;

CREATE TABLE `stadium_parking` (
  `stadium_parking_id` int(10) NOT NULL AUTO_INCREMENT,
  `parking_name` varchar(100) DEFAULT NULL,
  `stadiumId` int(10) DEFAULT NULL,
  PRIMARY KEY (`stadium_parking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stadium_parking` */

/*Table structure for table `stadium_seat` */

DROP TABLE IF EXISTS `stadium_seat`;

CREATE TABLE `stadium_seat` (
  `stadium_seatId` int(10) NOT NULL DEFAULT '0',
  `stadium_standId` varchar(200) DEFAULT NULL,
  `num_stand_seat` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`stadium_seatId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stadium_seat` */

insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (1,'1','S1');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (2,'1','S2');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (3,'1','S3');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (5,'1','S5');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (6,'1','S6');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (7,'1','S7');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (8,'1','S8');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (9,'1','S9');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (10,'1','S10');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (11,'1','S11');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (12,'1','S12');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (13,'1','S13');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (14,'1','S14');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (15,'1','S15');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (16,'1','S16');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (17,'1','S17');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (18,'1','S18');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (19,'1','S19');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (20,'1','S20');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (21,'1','S21');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (22,'3','S1');
insert into `stadium_seat` (`stadium_seatId`,`stadium_standId`,`num_stand_seat`) values (23,'3','S2');

/*Table structure for table `stadium_stand` */

DROP TABLE IF EXISTS `stadium_stand`;

CREATE TABLE `stadium_stand` (
  `stadium_standId` int(10) NOT NULL DEFAULT '0',
  `stand_name` varchar(200) DEFAULT NULL,
  `stand_color` varchar(10) DEFAULT NULL,
  `stand_angular_width` int(10) DEFAULT NULL,
  `stand_size` int(10) DEFAULT NULL,
  `stadiumId` int(10) DEFAULT NULL,
  `stand_level` int(10) DEFAULT NULL,
  `stand_days` int(10) DEFAULT NULL,
  `stand_parent_id` int(10) DEFAULT '0',
  `stand_price` int(10) DEFAULT '0',
  PRIMARY KEY (`stadium_standId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stadium_stand` */

insert into `stadium_stand` (`stadium_standId`,`stand_name`,`stand_color`,`stand_angular_width`,`stand_size`,`stadiumId`,`stand_level`,`stand_days`,`stand_parent_id`,`stand_price`) values (0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0);
insert into `stadium_stand` (`stadium_standId`,`stand_name`,`stand_color`,`stand_angular_width`,`stand_size`,`stadiumId`,`stand_level`,`stand_days`,`stand_parent_id`,`stand_price`) values (1,'C Stand','FF3399',1800,1200,1,0,1,0,100);
insert into `stadium_stand` (`stadium_standId`,`stand_name`,`stand_color`,`stand_angular_width`,`stand_size`,`stadiumId`,`stand_level`,`stand_days`,`stand_parent_id`,`stand_price`) values (2,'G stand','6666FF',1200,1100,1,1,2,1,100);
insert into `stadium_stand` (`stadium_standId`,`stand_name`,`stand_color`,`stand_angular_width`,`stand_size`,`stadiumId`,`stand_level`,`stand_days`,`stand_parent_id`,`stand_price`) values (3,'L stand','6699FF',1200,1100,1,1,2,2,100);
insert into `stadium_stand` (`stadium_standId`,`stand_name`,`stand_color`,`stand_angular_width`,`stand_size`,`stadiumId`,`stand_level`,`stand_days`,`stand_parent_id`,`stand_price`) values (4,'B stand','6666FF',1200,100,1,0,3,0,100);
insert into `stadium_stand` (`stadium_standId`,`stand_name`,`stand_color`,`stand_angular_width`,`stand_size`,`stadiumId`,`stand_level`,`stand_days`,`stand_parent_id`,`stand_price`) values (5,'F Stand','FFFF66',1200,100,1,1,2,4,100);
insert into `stadium_stand` (`stadium_standId`,`stand_name`,`stand_color`,`stand_angular_width`,`stand_size`,`stadiumId`,`stand_level`,`stand_days`,`stand_parent_id`,`stand_price`) values (6,'K stand','FF3399',1200,100,1,1,3,5,100);

/*Table structure for table `ticket` */

DROP TABLE IF EXISTS `ticket`;

CREATE TABLE `ticket` (
  `ticketID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) NOT NULL,
  `scheduleID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `totalAmount` int(11) NOT NULL,
  `seatNums` int(11) NOT NULL,
  `dateSold` date NOT NULL,
  `ticketNum` int(11) NOT NULL,
  PRIMARY KEY (`ticketID`),
  UNIQUE KEY `ticketNum` (`ticketNum`),
  KEY `customerID` (`customerID`),
  KEY `scheduleID` (`scheduleID`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ticket` */

/*Table structure for table `transaction` */

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `transactionID` int(11) NOT NULL AUTO_INCREMENT,
  `bookingID` int(11) NOT NULL,
  `transactionNum` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `transactionDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transactionID`),
  UNIQUE KEY `transactionNum` (`transactionNum`),
  KEY `bookingID` (`bookingID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transaction` */

SET SQL_MODE=@OLD_SQL_MODE;