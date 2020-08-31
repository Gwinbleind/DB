DROP DATABASE IF EXISTS `test_db`;
CREATE DATABASE IF NOT EXISTS `example`;
USE `example`;
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users`(
    id int auto_increment primary key,
    name text null
);
INSERT INTO `users` (`name`) VALUES ('user A'), ('user B'), ('user D'), ('user E'), ('user F');

CREATE DATABASE IF NOT EXISTS `sample`;