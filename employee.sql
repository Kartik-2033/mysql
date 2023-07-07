/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 8.0.33 : Database - employee
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`employee` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `employee`;

/*Table structure for table `employee_data` */

DROP TABLE IF EXISTS `employee_data`;

CREATE TABLE `employee_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `mobile_number` varchar(10) NOT NULL,
  `address` varchar(95) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `employee_data` */

insert  into `employee_data`(`id`,`first_name`,`last_name`,`mobile_number`,`address`,`created_at`,`updated_at`) values 
(1,'Kartik','Panchal','8866227830','c-302, SocName, AreaName, LocalAreaName, city-382032','2023-07-05 15:34:52','2023-07-05 15:47:36'),
(2,'Vishal','Patel','8866827831','c-303, SocName, AreaName, LocalAreaName, city-382032','2023-07-05 15:43:49','2023-07-05 15:43:58'),
(3,'Shahnawaj','Mohammed ','8866827832','c-304, SocName, AreaName, LocalAreaName, city-382032','2023-07-05 15:44:46','2023-07-05 15:44:54'),
(4,'Chankit','Sharma','8866827833','c-305, SocName, AreaName, LocalAreaName, city-382032','2023-07-05 15:45:27','2023-07-05 15:45:34'),
(7,'Krish','Varma','8866827836','c-306, SocName, AreaName, LocalAreaName, city-382032','2023-07-05 16:01:06','2023-07-05 16:01:06'),
(8,'Priyansh','Gohel','8866827837','c-307, SocName, AreaName, LocalAreaName, city-382032','2023-07-05 16:01:06','2023-07-05 16:10:59');

/*Table structure for table `employee_hobby` */

DROP TABLE IF EXISTS `employee_hobby`;

CREATE TABLE `employee_hobby` (
  `id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int NOT NULL,
  `emp_hobby` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FR_KEY_EmpHobby_EMP_ID` (`emp_id`),
  KEY `FR_KEY_EmpHobby_EMP_HOBBY` (`emp_hobby`),
  CONSTRAINT `FR_KEY_EmpHobby_EMP_HOBBY` FOREIGN KEY (`emp_hobby`) REFERENCES `hobby` (`id`),
  CONSTRAINT `FR_KEY_EmpHobby_EMP_ID` FOREIGN KEY (`emp_id`) REFERENCES `employee_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `employee_hobby` */

insert  into `employee_hobby`(`id`,`emp_id`,`emp_hobby`,`created_at`,`updated_at`) values 
(1,1,4,'2023-07-05 16:22:57','2023-07-05 16:22:57'),
(2,1,17,'2023-07-05 16:23:20','2023-07-05 16:23:20'),
(3,2,1,'2023-07-05 16:23:28','2023-07-05 16:23:28'),
(4,2,2,'2023-07-05 16:23:33','2023-07-05 16:23:33'),
(5,3,5,'2023-07-05 16:23:45','2023-07-05 16:23:45'),
(6,3,6,'2023-07-05 16:23:48','2023-07-05 16:23:48'),
(7,4,10,'2023-07-05 16:23:59','2023-07-05 16:23:59'),
(8,4,11,'2023-07-05 16:24:15','2023-07-05 16:24:15'),
(9,7,3,'2023-07-05 16:24:28','2023-07-05 16:24:28'),
(10,7,12,'2023-07-05 16:24:33','2023-07-05 16:24:33'),
(11,8,18,'2023-07-05 16:24:42','2023-07-05 16:24:42');

/*Table structure for table `employee_salary` */

DROP TABLE IF EXISTS `employee_salary`;

CREATE TABLE `employee_salary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int NOT NULL,
  `emp_salary` int NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FR_KEY_Emp_id` (`emp_id`),
  CONSTRAINT `FR_KEY_Emp_id` FOREIGN KEY (`emp_id`) REFERENCES `employee_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `employee_salary` */

insert  into `employee_salary`(`id`,`emp_id`,`emp_salary`,`date`,`created_at`,`updated_at`) values 
(1,1,15500,'2023-07-05','2023-07-05 16:39:19','2023-07-05 16:39:19'),
(2,2,14000,'2023-07-03','2023-07-05 16:39:36','2023-07-05 16:39:36'),
(3,3,15000,'2023-06-21','2023-07-05 16:39:46','2023-07-05 16:39:46'),
(4,4,12000,'2023-06-27','2023-07-05 16:40:02','2023-07-05 16:40:02'),
(5,7,5000,'2023-06-30','2023-07-05 16:40:16','2023-07-05 16:40:16'),
(6,8,7000,'2023-07-04','2023-07-05 16:40:25','2023-07-05 16:40:25');

/*Table structure for table `hobby` */

DROP TABLE IF EXISTS `hobby`;

CREATE TABLE `hobby` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `hobby` */

insert  into `hobby`(`id`,`name`,`created_at`,`updated_at`) values 
(1,'Dancing','2023-07-05 16:19:12','2023-07-05 16:19:12'),
(2,'Singing','2023-07-05 16:19:17','2023-07-05 16:19:17'),
(3,'Reading','2023-07-05 16:19:51','2023-07-05 16:19:51'),
(4,'Video Games','2023-07-05 16:19:54','2023-07-05 16:19:54'),
(5,'Team Sports','2023-07-05 16:20:15','2023-07-05 16:20:15'),
(6,'Walking','2023-07-05 16:20:19','2023-07-05 16:20:19'),
(7,'Yoga','2023-07-05 16:20:22','2023-07-05 16:20:22'),
(8,'Traveling','2023-07-05 16:20:33','2023-07-05 16:20:33'),
(9,'Watching Sports','2023-07-05 16:20:37','2023-07-05 16:20:37'),
(10,'Playing Cards','2023-07-05 16:20:41','2023-07-05 16:20:41'),
(11,'Board Games','2023-07-05 16:20:49','2023-07-05 16:20:49'),
(12,'Eating Out','2023-07-05 16:20:53','2023-07-05 16:20:53'),
(13,'Writing','2023-07-05 16:20:57','2023-07-05 16:20:57'),
(14,'Running','2023-07-05 16:21:05','2023-07-05 16:21:05'),
(15,'Volunteer Work','2023-07-05 16:21:11','2023-07-05 16:21:11'),
(16,'Painting','2023-07-05 16:21:15','2023-07-05 16:21:15'),
(17,'Cooking','2023-07-05 16:21:19','2023-07-05 16:21:19'),
(18,'Bicycling','2023-07-05 16:21:23','2023-07-05 16:21:23'),
(19,'Housework','2023-07-05 16:21:32','2023-07-05 16:21:32'),
(20,'Movie Watching','2023-07-05 16:21:48','2023-07-05 16:21:48');

/*All Querys */

/*• Insert multiple data in all tables*/

insert  into `employee_hobby`(`id`,`emp_id`,`emp_hobby`,`created_at`,`updated_at`) values 
(1,1,4,'2023-07-05 16:22:57','2023-07-05 16:22:57'),
(2,1,17,'2023-07-05 16:23:20','2023-07-05 16:23:20'),
(3,2,1,'2023-07-05 16:23:28','2023-07-05 16:23:28'),
(4,2,2,'2023-07-05 16:23:33','2023-07-05 16:23:33');

/*• Update data of all tables*/

UPDATE `employee`.`employee_data` SET `first_name` = 'Priyansh' WHERE `id` = 8 ;
UPDATE `employee`.`employee_hobby` SET `emp_hobby` = '20' WHERE `id` = '11';
UPDATE `employee`.`employee_salary` SET `emp_salary` = '0' WHERE `id` = '11';
UPDATE `employee`.`hobby` SET `name` = 'HouseClean' WHERE `id` = '19';

/*• Delete 2 records of all tables*/
DELETE FROM `employee`.`employee_data` WHERE `id` = '11';
DELETE FROM `employee`.`employee_data` WHERE `id` = '9';
DELETE FROM `employee`.`employee_hobby` WHERE `id` = '20'; 
DELETE FROM `employee`.`employee_hobby` WHERE `id` = '10'; 
DELETE FROM `employee`.`employee_salary` WHERE `id` = '5';

/*• Truncate all tables*/
TRUNCATE TABLE employee_data;
TRUNCATE TABLE employee_hobby;
TRUNCATE TABLE employee_salary;
TRUNCATE TABLE hobby;

/*• Create separate select queries to get a hobby, employee, employee_salary, and employee_hobby.*/

/*
SELECT 
  ed.id AS "Employee Id", 
  CONCAT(ed.first_name, ' ', ed.last_name) AS "Employee",
  (es.emp_salary) AS "Employee_Salary",
  (es.date) AS "Salary Credit Date", 
  GROUP_CONCAT(DISTINCT hobby.name) AS "Employee Hobiies"
FROM 
  employee_data AS ed 
  INNER JOIN employee_salary AS es 
	  ON ed.id = es.emp_id 
  INNER JOIN employee_hobby AS eh 
	  ON ed.id = eh.emp_id 
  INNER JOIN hobby 
	  ON eh.emp_hobby = hobby.id 
WHERE 
  ed.id = '1' 
GROUP BY 
  ed.id,es.emp_salary;
*********************************************************************
*/

/*• Create a select single query to get all employee names, all hobby_name in a single column*/

/*
SELECT 
  CONCAT(
    CONCAT(ed.first_name, ' ', ed.last_name), 
    ': ', 
    GROUP_CONCAT(
      DISTINCT IFNULL(
        (hobby.name), 
        "Employye Have No Hobby"
      )
    )
  ) AS "Employee Name : Hobbies" 
FROM 
  employee_data AS ed
  INNER JOIN employee_hobby AS eh
	  ON ed.id = eh.emp_id 
  INNER JOIN hobby 
	  ON eh.emp_hobby = hobby.id 
GROUP BY 
  ed.id;
*********************************************************************
*/

/*• Create a select query to get  employee name, his/her employee_salary*/

/*
SELECT 
  CONCAT(ed.first_name, ' ', ed.last_name) AS "Employee", 
  SUM(es.emp_salary) AS "Salary" 
FROM 
  employee_data AS ed 
  INNER JOIN employee_salary AS es 
	  ON ed.id = es.emp_id 
WHERE 
  ed.id = '1' ;
*********************************************************************
*/

/*• Create a select query to get employee name, total salary of employee, hobby name(comma-separated - you need to use a subquery for hobby name).*/

/*
SELECT 
  CONCAT(ed.first_name, ' ', ed.last_name) AS "Employee", 
  SUM(DISTINCT es.emp_salary) AS "Total Salary", 
  GROUP_CONCAT(
    DISTINCT IFNULL(
      (Hobbies.name), 
      "Employye Have No Hobby"
    )
  ) AS "Hobbies"
FROM 
  employee_data AS ed 
  INNER JOIN employee_salary AS es
	  ON ed.id = es.emp_id 
  INNER JOIN employee_hobby AS eh
	  ON ed.id = eh.emp_id 
  INNER JOIN (
    (
      SELECT 
        (hobby.id), 
        (hobby.name) 
      FROM 
        hobby 
    )
  ) AS Hobbies ON Hobbies.id = eh.emp_hobby 
GROUP BY 
  ed.id;
*********************************************************************
*/

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;