
CREATE DATABASE PlayIn;


USE PlayIn;


CREATE TABLE IF NOT EXISTS `employee` (
	`employee_id` int NOT NULL,
	`user_name` varchar(30) NOT NULL,
	`first_name` varchar(30) NOT NULL,
	`last_name` varchar(30) NOT NULL,
	`position` varchar(15) NOT NULL,
	`employment_date` date NOT NULL,
	`manager_id` int NOT NULL,
	`rate` float,
	`bonus` float NOT NULL,
	PRIMARY KEY (`employee_id`)
);

CREATE TABLE IF NOT EXISTS `hub` (
	`hub_id` int NOT NULL UNIQUE,
	`player_id` int NOT NULL,
	`match_id` int NOT NULL,
	`employee_id` int NOT NULL,
	`adone_id` int NOT NULL,subscription
	`subscription_id` int NOT NULL,
	`date_time` datetime NOT NULL,
	`status` varchar(20) NOT NULL,
	PRIMARY KEY (`hub_id`)
);

CREATE TABLE IF NOT EXISTS `match` (
	`match_id` int NOT NULL,
	`team_1` varchar(30) NOT NULL,
	`team_2` varchar(30) NOT NULL,
	`score_team_1` varchar(10) NOT NULL,
	`score_team_2` varchar(10) NOT NULL,
	`data_time` datetime NOT NULL,
	`match_status` varchar(20) NOT NULL,
	PRIMARY KEY (`match_id`)
);

CREATE TABLE IF NOT EXISTS `match_stats` (
	`match_id` int NOT NULL,
	`player_id` int NOT NULL,
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
	`player_id` int NOT NULL,
	`nickname` varchar(30) NOT NULL,
	`first_name` varchar(30) NOT NULL,
	`last_name` varchar(30) NOT NULL,
	`birth_date` date NOT NULL,
	`phone_number` varchar(15) NOT NULL,
	`email` varchar(40) NOT NULL,
	`discount` varchar(30) NOT NULL,
	PRIMARY KEY (`player_id`)
);

CREATE TABLE IF NOT EXISTS `adone` (
	`adone_id` int NOT NULL,
	`adone_type` varchar(30) NOT NULL,
	`cost_points` varchar(30) NOT NULL,
	`rare` varchar(15) NOT NULL,
	`character` varchar(40) NOT NULL,
	PRIMARY KEY (`adone_id`)
);

CREATE TABLE IF NOT EXISTS `subscription` (
	`subscription_id` int NOT NULL,
	`subscription_name` varchar(30) NOT NULL,
	`subscription_type` varchar(30) NOT NULL,
	`subscription_description` varchar(50) NOT NULL,
	`cost` varchar(15) NOT NULL,
	PRIMARY KEY (`subscription_id`)
);


ALTER TABLE `hub` ADD CONSTRAINT `hub_fk1` FOREIGN KEY (`player_id`) REFERENCES `player`(`player_id`);

ALTER TABLE `hub` ADD CONSTRAINT `hub_fk2` FOREIGN KEY (`match_id`) REFERENCES `match`(`match_id`);

ALTER TABLE `hub` ADD CONSTRAINT `hub_fk3` FOREIGN KEY (`employee_id`) REFERENCES `employee`(`employee_id`);

ALTER TABLE `hub` ADD CONSTRAINT `hub_fk4` FOREIGN KEY (`adone_id`) REFERENCES `adone`(`adone_id`);

ALTER TABLE `hub` ADD CONSTRAINT `hub_fk5` FOREIGN KEY (`subscription_id`) REFERENCES `subscription`(`subscription_id`);

ALTER TABLE `match_stats` ADD CONSTRAINT `match_stats_fk0` FOREIGN KEY (`match_id`) REFERENCES `match`(`match_id`);

ALTER TABLE `match_stats` ADD CONSTRAINT `match_stats_fk1` FOREIGN KEY (`player_id`) REFERENCES `player`(`player_id`);

ALTER TABLE `employee` ADD CONSTRAINT `employee_fk7` FOREIGN KEY (`manager_id`) REFERENCES `employee`(`employee_id`);

ALTER TABLE employee
MODIFY COLUMN manager_id INT;

ALTER TABLE `match`
CHANGE COLUMN data_time date_time datetime NOT NULL;

ALTER TABLE hub
DROP COLUMN hub_id;

ALTER TABLE match_stats
DROP FOREIGN KEY match_stats_fk0;

ALTER TABLE match_stats
DROP COLUMN match_id;

ALTER TABLE match_stats
RENAME TO player_stats;