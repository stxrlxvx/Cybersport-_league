CREATE TABLE IF NOT EXISTS `employee` (
	`employee_id` int NOT NULL,
	`user_name` varchar(30) NOT NULL,
	`first_name` varchar(30) NOT NULL,
	`last_name` varchar(30) NOT NULL,
	`position` varchar(15) NOT NULL,
	`employment_date` date NOT NULL,
	`department_id` int,
	`manager_id` int,
	`rate` float NOT NULL,
	`bonus` float,
	PRIMARY KEY (`employee_id`)
);

CREATE TABLE IF NOT EXISTS `department` (
	`department_id` int NOT NULL,
	`department_name` varchar(30) NOT NULL,
	`city` varchar(30) NOT NULL,
	`street` varchar(40) NOT NULL,
	`building_no` varchar(3) NOT NULL,
	PRIMARY KEY (`department_id`)
);

CREATE TABLE IF NOT EXISTS `website` (
	`website_id` int AUTO_INCREMENT NOT NULL,
	`employee_id` int NOT NULL,
	`subscription_id` int NOT NULL,
	`customer_id` int NOT NULL,
	`subscription_type` int NOT NULL,
	`transaction_moment` datetime NOT NULL,
	PRIMARY KEY (`website_id`)
);

CREATE TABLE IF NOT EXISTS `Subscription` (
	`subscription_id` int NOT NULL,
	`subscription_name` varchar(30) NOT NULL,
	`subscription_description` varchar(150) NOT NULL,
	`category` varchar(15) NOT NULL,
	`price` float NOT NULL,
	PRIMARY KEY (`subscription_id`)
);

CREATE TABLE IF NOT EXISTS `Customer` (
	`customer_id` int AUTO_INCREMENT NOT NULL,
	`first_name` varchar(30) NOT NULL,
	`last_name` varchar(30) NOT NULL,
	`genger` varchar(1) NOT NULL,
	`birth_date` date NOT NULL,
	`phone_numbers` int NOT NULL,
	`email` varchar(50) NOT NULL,
	`discount` int NOT NULL,
	PRIMARY KEY (`customer_id`)
);

ALTER TABLE `employee` ADD CONSTRAINT `employee_fk6` FOREIGN KEY (`department_id`) REFERENCES `department`(`department_id`);

ALTER TABLE `employee` ADD CONSTRAINT `employee_fk7` FOREIGN KEY (`manager_id`) REFERENCES `employee`(`employee_id`);

ALTER TABLE `website` ADD CONSTRAINT `website_fk1` FOREIGN KEY (`employee_id`) REFERENCES `employee`(`employee_id`);

ALTER TABLE `website` ADD CONSTRAINT `website_fk2` FOREIGN KEY (`subscription_id`) REFERENCES `Subscription`(`subscription_id`);

ALTER TABLE `website` ADD CONSTRAINT `website_fk3` FOREIGN KEY (`customer_id`) REFERENCES `Customer`(`customer_id`);

