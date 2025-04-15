
CREATE DATABASE cybersport_league;

USE cybersport_league;

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

CREATE TABLE IF NOT EXISTS `website` (
	`website_id` int NOT NULL,
	`employee_id` int,
	`player_id` int,
	`adone_id` int,
	`subscription_type` varchar(30) NOT NULL,
	PRIMARY KEY (`website_id`)
);

CREATE TABLE IF NOT EXISTS `hub` (
	`hub_id` int AUTO_INCREMENT NOT NULL,
	`website_id` int,
	`player_id` int,
	`match_id` int,
	`team_1_id` varchar(30) NOT NULL,
	`team_2_id` varchar(30) NOT NULL,
	`date_time` datetime NOT NULL,
	`status` varchar(30) NOT NULL,
	PRIMARY KEY (`hub_id`)
);

CREATE TABLE IF NOT EXISTS `match` (
	`match_id` int NOT NULL,
	`team_1_id` varchar(30) NOT NULL,
	`team_2_id` varchar(30) NOT NULL,
	`score_team_1` varchar(10) NOT NULL,
	`score_team_2` varchar(10) NOT NULL,
	`date_time` varchar(255) NOT NULL,
	`match_status` varchar(30) NOT NULL,
	PRIMARY KEY (`match_id`)
);

CREATE TABLE IF NOT EXISTS `match_stats` (
	`match_id` int,
	`player_id` int,
	`kills` varchar(15) NOT NULL,
	`deaths` varchar(15) NOT NULL,
	`assists` varchar(15) NOT NULL,
	`damage_dealt` varchar(15) NOT NULL,
	`damage_absorbed` varchar(15) NOT NULL,
	`healing_done` varchar(15) NOT NULL,
	`gold_per_minut` varchar(15) NOT NULL,
	`experience_per_minut` varchar(15) NOT NULL,
	`creeps_kill` varchar(15) NOT NULL,
	`net_worth` varchar(15) NOT NULL
);

CREATE TABLE IF NOT EXISTS `player` (
	`player_id` int AUTO_INCREMENT NOT NULL,
	`nickname` varchar(30) NOT NULL,
	`first_name` varchar(30) NOT NULL,
	`last_name` varchar(30) NOT NULL,
	`birth_date` date NOT NULL,
	`phone_number` varchar(15) NOT NULL,
	`email` varchar(30) NOT NULL,
	`discount` varchar(30) NOT NULL,
	PRIMARY KEY (`player_id`)
);

CREATE TABLE IF NOT EXISTS `adone` (
	`adone_id` int NOT NULL,
	`website_id` int,
	`adone_type` varchar(30) NOT NULL,
	`cost_points` varchar(30) NOT NULL,
	`rare` varchar(15) NOT NULL,
	`character_skin` varchar(30) NOT NULL,
	PRIMARY KEY (`adone_id`)
);

CREATE TABLE IF NOT EXISTS `subscription` (
	`subscription_id` int NOT NULL,
	`website_id` int,
	`subscription_name` varchar(30) NOT NULL,
	`subscription_description` varchar(30) NOT NULL,
	`cost` varchar(20) NOT NULL,
	PRIMARY KEY (`subscription_id`)
);

ALTER TABLE `employee` ADD CONSTRAINT `employee_fk7` FOREIGN KEY (`manager_id`) REFERENCES `employee`(`employee_id`);
ALTER TABLE `website` ADD CONSTRAINT `website_fk1` FOREIGN KEY (`employee_id`) REFERENCES `employee`(`employee_id`);

ALTER TABLE `website` ADD CONSTRAINT `website_fk2` FOREIGN KEY (`player_id`) REFERENCES `player`(`player_id`);

ALTER TABLE `website` ADD CONSTRAINT `website_fk3` FOREIGN KEY (`adone_id`) REFERENCES `adone`(`adone_id`);
ALTER TABLE `hub` ADD CONSTRAINT `hub_fk1` FOREIGN KEY (`website_id`) REFERENCES `website`(`website_id`);

ALTER TABLE `hub` ADD CONSTRAINT `hub_fk2` FOREIGN KEY (`player_id`) REFERENCES `player`(`player_id`);

ALTER TABLE `hub` ADD CONSTRAINT `hub_fk3` FOREIGN KEY (`match_id`) REFERENCES `match`(`match_id`);

ALTER TABLE `match_stats` ADD CONSTRAINT `match_stats_fk0` FOREIGN KEY (`match_id`) REFERENCES `match`(`match_id`);

ALTER TABLE `match_stats` ADD CONSTRAINT `match_stats_fk1` FOREIGN KEY (`player_id`) REFERENCES `player`(`player_id`);

ALTER TABLE `adone` ADD CONSTRAINT `adone_fk1` FOREIGN KEY (`website_id`) REFERENCES `website`(`website_id`);
ALTER TABLE `subscription` ADD CONSTRAINT `subscription_fk1` FOREIGN KEY (`website_id`) REFERENCES `website`(`website_id`);

DESCRIBE `match`;

ALTER TABLE
	website
DROP FOREIGN KEY
	website_fk3;
    
ALTER TABLE
	website
DROP COLUMN
	adone_id;
    
ALTER TABLE
	subscription
MODIFY
	subscription_description varchar(50);
    
ALTER TABLE
	employee
DROP COLUMN
	department_id;
