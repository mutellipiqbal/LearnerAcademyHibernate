DROP SCHEMA IF EXISTS `ikbal`;

CREATE SCHEMA `ikbal`;

use `ikbal`;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `classRoom`;

CREATE TABLE `classRoom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classRoom_name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `classRoom_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_classRoom` (`classRoom_id`),
  CONSTRAINT `FK_classRoom` FOREIGN KEY (`classRoom_id`) 
  REFERENCES `classRoom` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  
  PRIMARY KEY (`id`),
  
  KEY `FK_STUDENT_idx` (`student_id`),
  
  CONSTRAINT `FK_STUDENT_idx` 
  FOREIGN KEY (`student_id`) 
  REFERENCES `student` (`id`) 
  
  ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;


CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(128) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  
  PRIMARY KEY (`id`),
  
  
  KEY `FK_STUDENT_x` (`student_id`),
  
  CONSTRAINT `FK_STUDENT_x` 
  FOREIGN KEY (`student_id`) 
  REFERENCES `student` (`id`) 
  
  ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;


SET FOREIGN_KEY_CHECKS = 1;
