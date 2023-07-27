/* Create an “employee” database*/
CREATE DATABASE employee 
USE `employee`;

/*Create `employee` table */

CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `age` int NOT NULL,
  `mobile_number` varchar(10) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Create `employee_hobby` table*/

CREATE TABLE `employee_hobby` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fk_employee_id` int NOT NULL,
  `fk_employee_hobby_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FR_KEY_EmpHobby_EMP_ID` (`fk_employee_id`),
  KEY `FR_KEY_EmpHobby_EMP_HOBBY` (`fk_employee_hobby_id`),
  CONSTRAINT `FR_KEY_EmpHobby_EMP_HOBBY` FOREIGN KEY (`fk_employee_hobby_id`) REFERENCES `hobby` (`id`),
  CONSTRAINT `FR_KEY_EmpHobby_EMP_ID` FOREIGN KEY (`fk_employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Create `employee_salary` table*/

CREATE TABLE `employee_salary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fk_employee_id` int NOT NULL,
  `salary` int NOT NULL,
  `salary_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FR_KEY_Emp_id` (`fk_employee_id`),
  CONSTRAINT `FR_KEY_Emp_id` FOREIGN KEY (`fk_employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Create `hobby` table*/

CREATE TABLE `hobby` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Insert Data for the table `employee` */

insert  into `employee`(`id`,`first_name`,`last_name`,`age`,`mobile_number`,`address`,`created_at`,`updated_at`) values 
(1,'Kartik','Panchal',22,'8866227830','c-302, SocName, AreaName, LocalAreaName, city-382032','2023-07-05 15:34:52','2023-07-06 13:32:16'),
(2,'Vishal','Patel',23,'8866827831','c-303, SocName, AreaName, LocalAreaName, city-382032','2023-07-05 15:43:49','2023-07-06 13:32:21'),
(3,'Shahnawaj','Mohammed ',20,'8866827832','c-304, SocName, AreaName, LocalAreaName, city-382032','2023-07-05 15:44:46','2023-07-06 13:32:23'),
(4,'Chankit','Sharma',24,'8866827833','c-305, SocName, AreaName, LocalAreaName, city-382032','2023-07-05 15:45:27','2023-07-06 13:32:25'),
(7,'Krish','Varma',40,'8866827836','c-306, SocName, AreaName, LocalAreaName, city-382032','2023-07-05 16:01:06','2023-07-06 13:32:33'),
(8,'Priyansh','Gohel',28,'8866827837','c-307, SocName, AreaName, LocalAreaName, city-382032','2023-07-05 16:01:06','2023-07-06 13:32:37'),
(10,'Rakesh','Varma',11,'8866827836','c-306, SocName, AreaName, LocalAreaName, city-382032','2023-07-06 12:46:00','2023-07-06 14:47:27');

/*Insert Data for the table `employee_hobby` */

insert  into `employee_hobby`(`id`,`fk_employee_id`,`fk_employee_hobby_id`,`created_at`,`updated_at`) values 
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
(11,8,20,'2023-07-05 16:24:42','2023-07-06 14:48:40'),
(12,10,2,'2023-07-06 18:21:10','2023-07-06 18:50:25');

/*Insert Data for the table `employee_salary` */

insert  into `employee_salary`(`id`,`fk_employee_id`,`salary`,`salary_date`,`created_at`,`updated_at`) values 
(1,1,15500,'2023-07-05','2023-07-05 16:39:19','2023-07-05 16:39:19'),
(2,2,14000,'2023-07-03','2023-07-05 16:39:36','2023-07-05 16:39:36'),
(3,3,15000,'2023-06-21','2023-07-05 16:39:46','2023-07-05 16:39:46'),
(4,4,12000,'2023-06-27','2023-07-05 16:40:02','2023-07-05 16:40:02'),
(5,7,5000,'2023-06-30','2023-07-05 16:40:16','2023-07-05 16:40:16'),
(6,8,7000,'2023-07-04','2023-07-05 16:40:25','2023-07-05 16:40:25'),
(7,1,10000,'2023-08-05','2023-07-06 13:33:58','2023-07-07 10:14:10'),
(8,2,13500,'2023-08-03','2023-07-06 13:34:25','2023-07-07 10:38:39'),
(9,3,14250,'2023-07-21','2023-07-06 13:34:43','2023-07-07 10:38:45'),
(10,4,12500,'2023-07-27','2023-07-06 13:34:57','2023-07-07 11:07:27'),
(11,7,2000,'2023-07-30','2023-07-06 13:35:14','2023-07-07 11:08:54'),
(12,8,7500,'2023-08-04','2023-07-06 13:35:38','2023-07-06 13:35:38'),
(13,10,10,'2023-06-22','2023-07-06 18:26:12','2023-07-06 18:56:27'),
(14,10,20,'2023-07-06','2023-07-06 18:51:22','2023-07-07 10:38:58');

/*Insert Data for the table `hobby` */

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
(19,'HouseClean','2023-07-05 16:21:32','2023-07-06 14:49:32'),
(20,'Movie Watching','2023-07-05 16:21:48','2023-07-05 16:21:48');

/* Update data of all tables*/

UPDATE `employee` SET `first_name` = 'Priyansh' WHERE `id` = 8 ;
UPDATE `employee_hobby` SET `fk_employee_hobby_id` = '20' WHERE `id` = '11';
UPDATE `employee_salary` SET `salary` = '12500' WHERE `fk_employee_id` = '4';
UPDATE `hobby` SET `name` = 'HouseClean' WHERE `id` = '19';

/*• Delete 2 records of all tables*/
DELETE FROM `employee` WHERE `id` = '11';
DELETE FROM `employee` WHERE `id` = '9';

DELETE FROM `employee_hobby` WHERE `id` = '20'; 
DELETE FROM `employee_hobby` WHERE `id` = '10';

DELETE FROM `employee_salary` WHERE `id` = '5';
DELETE FROM `employee_salary` WHERE `id` = '10';

DELETE FROM `hobby` WHERE `id` = '21';
DELETE FROM `hobby` WHERE `id` = '22';

/*• Truncate all tables*/
TRUNCATE TABLE employee;
TRUNCATE TABLE employee_hobby;
TRUNCATE TABLE employee_salary;
TRUNCATE TABLE hobby;

/*• Create separate select queries to get a hobby, employee, employee_salary, and employee_hobby.*/

SELECT 
  * 
FROM 
  employee;

SELECT 
  * 
FROM 
  employee_hobby;

SELECT 
  * 
FROM 
  employee_salary;

SELECT 
  * 
FROM 
  hobby;

/*• Create a select single query to get all employee names, all hobby_name in a single column*/

SELECT 
  CONCAT(first_name, ' ', last_name) AS "employee names" 
FROM 
  employee 
UNION ALL 
SELECT 
  NAME AS "hobby_name" 
FROM 
  hobby;

/*• Create a select query to get  employee name, his/her employee_salary*/

SELECT 
  e.id AS "employee_id", 
  CONCAT(e.first_name, ' ', e.last_name) AS "employee name", 
  SUM(es.salary) AS "employee_salary"
FROM 
  employee e 
INNER JOIN employee_salary es 
        ON e.id = es.fk_employee_id 
GROUP BY 
  e.id;

/*• Create a select query to get employee name, total salary of employee, hobby name(comma-separated - you need to use a subquery for hobby name).*/

SELECT  
  CONCAT(e.first_name, ' ', e.last_name) AS "employee name", 
  SUM(es.salary) AS "total salary", 
  (
    SELECT 
      GROUP_CONCAT(h.name SEPARATOR ', ') 
    FROM 
      employee_hobby eh 
    INNER JOIN hobby h 
            ON h.id = eh.fk_employee_hobby_id 
    WHERE 
      e.id = eh.fk_employee_id
  ) AS "hobby name"
FROM 
  employee e 
  INNER JOIN employee_salary es 
          ON e.id = es.fk_employee_id 
GROUP BY 
  e.id;
