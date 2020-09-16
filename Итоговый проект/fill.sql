use project;

# Независимые таблицы

#
# TABLE STRUCTURE FOR: authors
#

# DROP TABLE IF EXISTS `authors`;
#
# CREATE TABLE `authors` (
#     `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
#     `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
#     PRIMARY KEY (`id`),
#     UNIQUE KEY `id` (`id`),
#     UNIQUE KEY `authors_name_uindex` (`name`)
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `authors` (`id`, `name`) VALUES ('1', 'praesentium');
INSERT INTO `authors` (`id`, `name`) VALUES ('2', 'deserunt');
INSERT INTO `authors` (`id`, `name`) VALUES ('3', 'ut');
INSERT INTO `authors` (`id`, `name`) VALUES ('4', 'nisi');
INSERT INTO `authors` (`id`, `name`) VALUES ('5', 'pariatur');
INSERT INTO `authors` (`id`, `name`) VALUES ('6', 'facilis');
INSERT INTO `authors` (`id`, `name`) VALUES ('7', 'amet');
INSERT INTO `authors` (`id`, `name`) VALUES ('8', 'quis');
INSERT INTO `authors` (`id`, `name`) VALUES ('9', 'sunt');
INSERT INTO `authors` (`id`, `name`) VALUES ('10', 'fuga');

#
# TABLE STRUCTURE FOR: categories
#

# DROP TABLE IF EXISTS `categories`;
#
# CREATE TABLE `categories` (
#     `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
#     `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
#     `root_category_id` bigint(20) unsigned DEFAULT NULL,
#     PRIMARY KEY (`id`),
#     UNIQUE KEY `id` (`id`),
#     UNIQUE KEY `category_id_uindex` (`id`)
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `categories` (`id`, `name`, `root_category_id`) VALUES ('1', 'Men', '0');
INSERT INTO `categories` (`id`, `name`, `root_category_id`) VALUES ('2', 'Women', '0');
INSERT INTO `categories` (`id`, `name`, `root_category_id`) VALUES ('3', 'Kids', '0');
INSERT INTO `categories` (`id`, `name`, `root_category_id`) VALUES ('4', 'Accessories', '0');
INSERT INTO `categories` (`id`, `name`, `root_category_id`) VALUES ('5', 'ratione', '3');
INSERT INTO `categories` (`id`, `name`, `root_category_id`) VALUES ('6', 'molestiae', '1');
INSERT INTO `categories` (`id`, `name`, `root_category_id`) VALUES ('7', 'omnis', '4');
INSERT INTO `categories` (`id`, `name`, `root_category_id`) VALUES ('8', 'mollitia', '2');
INSERT INTO `categories` (`id`, `name`, `root_category_id`) VALUES ('9', 'voluptatibus', '2');
INSERT INTO `categories` (`id`, `name`, `root_category_id`) VALUES ('10', 'vel', '1');

#
# TABLE STRUCTURE FOR: materials
#

# DROP TABLE IF EXISTS `materials`;
#
# CREATE TABLE `materials` (
#     `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
#     `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
#     PRIMARY KEY (`id`),
#     UNIQUE KEY `id` (`id`),
#     UNIQUE KEY `materials_name_uindex` (`name`)
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `materials` (`id`, `name`) VALUES ('1', 'similique');
INSERT INTO `materials` (`id`, `name`) VALUES ('2', 'possimus');
INSERT INTO `materials` (`id`, `name`) VALUES ('3', 'at');
INSERT INTO `materials` (`id`, `name`) VALUES ('4', 'aut');
INSERT INTO `materials` (`id`, `name`) VALUES ('5', 'minus');
INSERT INTO `materials` (`id`, `name`) VALUES ('6', 'ut');
INSERT INTO `materials` (`id`, `name`) VALUES ('7', 'officiis');
INSERT INTO `materials` (`id`, `name`) VALUES ('8', 'eveniet');
INSERT INTO `materials` (`id`, `name`) VALUES ('9', 'qui');
INSERT INTO `materials` (`id`, `name`) VALUES ('10', 'earum');


#
# TABLE STRUCTURE FOR: order_statuses
#

# DROP TABLE IF EXISTS `order_statuses`;
#
# CREATE TABLE `order_statuses` (
#     `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
#     `name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
#     PRIMARY KEY (`id`),
#     UNIQUE KEY `id` (`id`),
#     UNIQUE KEY `order_statuses_name_uindex` (`name`)
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `order_statuses` (`id`, `name`) VALUES ('1', 'register');
INSERT INTO `order_statuses` (`id`, `name`) VALUES ('2', 'paid');
INSERT INTO `order_statuses` (`id`, `name`) VALUES ('3', 'on_package');
INSERT INTO `order_statuses` (`id`, `name`) VALUES ('4', 'sent');
INSERT INTO `order_statuses` (`id`, `name`) VALUES ('5', 'delivered');
INSERT INTO `order_statuses` (`id`, `name`) VALUES ('6', 'approved');
INSERT INTO `order_statuses` (`id`, `name`) VALUES ('7', 'lost');
INSERT INTO `order_statuses` (`id`, `name`) VALUES ('8', 'defective');


#
# TABLE STRUCTURE FOR: seasons
#

# DROP TABLE IF EXISTS `seasons`;
#
# CREATE TABLE `seasons` (
#     `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
#     `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
#     `from_date` date NOT NULL,
#     `to_date` date NOT NULL,
#     PRIMARY KEY (`name`),
#     UNIQUE KEY `id` (`id`),
#     UNIQUE KEY `seasons_name_from_date_to_date_uindex` (`name`,`from_date`,`to_date`)
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `seasons` (`name`, `from_date`, `to_date`) VALUES ('asperiores', '2020-01-18', '2020-06-02');
INSERT INTO `seasons` (`name`, `from_date`, `to_date`) VALUES ('aut', '2020-04-08', '2020-10-28');
INSERT INTO `seasons` (`name`, `from_date`, `to_date`) VALUES ('delectus', '1974-08-04', '1981-12-15');
INSERT INTO `seasons` (`name`, `from_date`, `to_date`) VALUES ('dolorum', '1994-01-31', '1971-08-26');
INSERT INTO `seasons` (`name`, `from_date`, `to_date`) VALUES ('ea', '2009-01-23', '1977-02-22');
INSERT INTO `seasons` (`name`, `from_date`, `to_date`) VALUES ('et', '1983-05-12', '1970-07-29');
INSERT INTO `seasons` (`name`, `from_date`, `to_date`) VALUES ('illo', '1997-06-13', '1980-05-31');
INSERT INTO `seasons` (`name`, `from_date`, `to_date`) VALUES ('maiores', '2012-04-11', '1970-02-22');
INSERT INTO `seasons` (`name`, `from_date`, `to_date`) VALUES ('omnis', '2004-03-16', '1973-09-17');
INSERT INTO `seasons` (`name`, `from_date`, `to_date`) VALUES ('vero', '1977-11-10', '2002-01-04');


#
# TABLE STRUCTURE FOR: sizes
#

# DROP TABLE IF EXISTS `sizes`;
#
# CREATE TABLE `sizes` (
#     `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
#     `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
#     PRIMARY KEY (`id`),
#     UNIQUE KEY `id` (`id`),
#     UNIQUE KEY `sizes_name_uindex` (`name`)
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sizes` (`name`) VALUES ('XXS');
INSERT INTO `sizes` (`name`) VALUES ('XS');
INSERT INTO `sizes` (`name`) VALUES ('S');
INSERT INTO `sizes` (`name`) VALUES ('M');
INSERT INTO `sizes` (`name`) VALUES ('L');
INSERT INTO `sizes` (`name`) VALUES ('XL');
INSERT INTO `sizes` (`name`) VALUES ('XXL');


#
# TABLE STRUCTURE FOR: stores
#

# DROP TABLE IF EXISTS `stores`;
#
# CREATE TABLE `stores` (
#     `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
#     `city` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
#     `address` text COLLATE utf8_unicode_ci NOT NULL,
#     `open_time` time NOT NULL,
#     `close_time` time NOT NULL,
#     PRIMARY KEY (`id`),
#     UNIQUE KEY `id` (`id`),
#     KEY `stores_city_index` (`city`)
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `stores` (`id`, `city`, `address`, `open_time`, `close_time`) VALUES ('1', 'Port Gussieville', '53615 Annamae Tunnel\nCarrollshire, OR 36135', '14:15:22', '12:08:39');
INSERT INTO `stores` (`id`, `city`, `address`, `open_time`, `close_time`) VALUES ('2', 'West Heberport', '51676 Sabina Burgs Apt. 024\nGodfreyland, MA 16825', '14:23:04', '11:48:17');
INSERT INTO `stores` (`id`, `city`, `address`, `open_time`, `close_time`) VALUES ('3', 'East Elijah', '2609 Hintz Summit Apt. 745\nMacejkovichaven, MI 25853-9817', '13:14:54', '05:29:02');
INSERT INTO `stores` (`id`, `city`, `address`, `open_time`, `close_time`) VALUES ('4', 'Reynoldsview', '9322 Richie Vista Suite 109\nCartwrightville, MT 33468', '19:48:48', '19:02:28');
INSERT INTO `stores` (`id`, `city`, `address`, `open_time`, `close_time`) VALUES ('5', 'Howefurt', '39622 Heloise Road\nOwenborough, IN 85373-0593', '20:54:49', '01:38:53');
INSERT INTO `stores` (`id`, `city`, `address`, `open_time`, `close_time`) VALUES ('6', 'Moenhaven', '9441 Alexzander Field Suite 816\nNew Maudie, PA 49247-4364', '10:03:37', '14:56:42');
INSERT INTO `stores` (`id`, `city`, `address`, `open_time`, `close_time`) VALUES ('7', 'West Eloiseside', '300 Caleigh Village Suite 868\nWest Todstad, RI 77850', '11:42:04', '01:31:15');
INSERT INTO `stores` (`id`, `city`, `address`, `open_time`, `close_time`) VALUES ('8', 'Angelitatown', '71335 Parisian Villages\nAlexandromouth, MS 90488', '19:54:23', '07:06:35');
INSERT INTO `stores` (`id`, `city`, `address`, `open_time`, `close_time`) VALUES ('9', 'New Rickside', '30640 Elmo Path\nPort Joanneport, ME 51683', '13:36:41', '19:40:30');
INSERT INTO `stores` (`id`, `city`, `address`, `open_time`, `close_time`) VALUES ('10', 'New Jordynberg', '23299 Morar Fords\nWilliamsonborough, MD 49060', '11:19:01', '16:20:19');

# Связанные таблицы

#
# TABLE STRUCTURE FOR: users
#

# DROP TABLE IF EXISTS `users`;
#
# CREATE TABLE `users` (
#     `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
#     `login` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
#     `pass_hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
#     `session` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
#     `token` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
#     PRIMARY KEY (`id`),
#     UNIQUE KEY `id` (`id`),
#     UNIQUE KEY `users_login_uindex` (`login`)
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `login`, `pass_hash`, `session`, `token`) VALUES ('1', 'king15@heaney.com', '0978cf80bf761727153c02b069368170', '4114iky8j', '756781');
INSERT INTO `users` (`id`, `login`, `pass_hash`, `session`, `token`) VALUES ('2', 'shawna59@hotmail.com', '734b2bbaf57c021021f1d9af7b727a36', '9039yns4h', '109613');
INSERT INTO `users` (`id`, `login`, `pass_hash`, `session`, `token`) VALUES ('3', 'broderick96@yahoo.co', 'f6292675e0552060140b84deed3306db', '7419nwx6l', '835667');
INSERT INTO `users` (`id`, `login`, `pass_hash`, `session`, `token`) VALUES ('4', 'cathrine30@hotmail.c', 'ca93e66e46bfa3d59d309e1c534a8281', '1825scx2r', '274596');
INSERT INTO `users` (`id`, `login`, `pass_hash`, `session`, `token`) VALUES ('5', 'price.madelyn@yahoo.', 'b4acf475482bddc70296934ef51cfa9a', '6416zkj3i', '393760');
INSERT INTO `users` (`id`, `login`, `pass_hash`, `session`, `token`) VALUES ('6', 'fkuhn@yahoo.com', '110941c2a043ab9bcf4d9357ba8ac92d', '8873rib1o', '400053');
INSERT INTO `users` (`id`, `login`, `pass_hash`, `session`, `token`) VALUES ('7', 'yjones@yahoo.com', '9b1b66d554199e89551d904f34c4ce5d', '7447xya5k', '679701');
INSERT INTO `users` (`id`, `login`, `pass_hash`, `session`, `token`) VALUES ('8', 'emard.katheryn@herma', 'f2dae8ab15f19160a07c8b70117e76dd', '8263puq1m', '550418');
INSERT INTO `users` (`id`, `login`, `pass_hash`, `session`, `token`) VALUES ('9', 'beth.dach@walkerbosc', '3754e6eaa86d6f5d12c1223867e04a67', '4184gmu0u', '998188');
INSERT INTO `users` (`id`, `login`, `pass_hash`, `session`, `token`) VALUES ('10', 'ioberbrunner@carterw', 'af29e3ea07147df8f3a7bce7b95dfdf4', '1098tox7c', '986861');


#
# TABLE STRUCTURE FOR: profiles
#

# DROP TABLE IF EXISTS `profiles`;
#
# CREATE TABLE `profiles` (
#     `id` bigint(20) unsigned NOT NULL,
#     `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
#     `surname` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
#     `gender` enum('M','F') COLLATE utf8_unicode_ci DEFAULT NULL,
#     `birthday` date DEFAULT NULL,
#     `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
#     `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
#     `phone` int(11) DEFAULT NULL,
#     PRIMARY KEY (`id`),
#     UNIQUE KEY `id` (`id`),
#     CONSTRAINT `profiles_users_id_fk` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`id`, `name`, `surname`, `gender`, `birthday`, `email`, `address`, `phone`) VALUES ('1', 'Erna', 'Kilback', 'F', '1980-10-21', 'nschroeder@example.net', '74567 Letha Points Apt. 061\nLittlefort, LA 98068', 971411);
INSERT INTO `profiles` (`id`, `name`, `surname`, `gender`, `birthday`, `email`, `address`, `phone`) VALUES ('2', 'Ron', 'Kessler', 'M', '1975-08-23', 'edd63@example.net', '69043 Goyette Point\nNorth Kyla, CO 04358-5717', 0);
INSERT INTO `profiles` (`id`, `name`, `surname`, `gender`, `birthday`, `email`, `address`, `phone`) VALUES ('3', 'Abe', 'Reichert', 'F', '1983-03-01', 'barbara79@example.com', '65092 Sharon Locks Suite 369\nWest Isadore, NJ 43834', 0);
INSERT INTO `profiles` (`id`, `name`, `surname`, `gender`, `birthday`, `email`, `address`, `phone`) VALUES ('4', 'Isobel', 'Stiedemann', 'M', '1993-06-26', 'herzog.efrain@example.net', '418 Kling Crescent\nNew Elwynborough, AL 11753-4630', 373888);
INSERT INTO `profiles` (`id`, `name`, `surname`, `gender`, `birthday`, `email`, `address`, `phone`) VALUES ('5', 'Wilford', 'Marks', 'F', '1992-07-27', 'iprohaska@example.net', '9816 Brakus Harbor Suite 247\nHeathcotefort, NJ 14088-0822', 1);
INSERT INTO `profiles` (`id`, `name`, `surname`, `gender`, `birthday`, `email`, `address`, `phone`) VALUES ('6', 'Alfonso', 'Hoeger', 'M', '1983-12-24', 'rokuneva@example.com', '222 Bogan Well\nJaskolskichester, CA 31410-8161', 535);
INSERT INTO `profiles` (`id`, `name`, `surname`, `gender`, `birthday`, `email`, `address`, `phone`) VALUES ('7', 'Velda', 'Buckridge', 'F', '1990-01-28', 'qbechtelar@example.org', '707 Ophelia Shoals\nBurleyborough, FL 77745-1420', 94);
INSERT INTO `profiles` (`id`, `name`, `surname`, `gender`, `birthday`, `email`, `address`, `phone`) VALUES ('8', 'Marisol', 'Monahan', 'M', '1975-10-23', 'gschimmel@example.net', '275 Elvie Manors Suite 705\nKipstad, NM 39857', 0);
INSERT INTO `profiles` (`id`, `name`, `surname`, `gender`, `birthday`, `email`, `address`, `phone`) VALUES ('9', 'Fermin', 'Murphy', 'M', '1973-02-02', 'schowalter.rupert@example.org', '7973 Braun Island Suite 424\nLake Helena, ND 11074-6689', 1);
INSERT INTO `profiles` (`id`, `name`, `surname`, `gender`, `birthday`, `email`, `address`, `phone`) VALUES ('10', 'Pablo', 'Kreiger', 'F', '1992-01-06', 'mills.ila@example.org', '0515 Wisoky Square\nWest Evanberg, CO 39913', 641883);


#
# TABLE STRUCTURE FOR: products
#

# DROP TABLE IF EXISTS `products`;
#
# CREATE TABLE `products` (
#     `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
#     `category_id` bigint(20) unsigned DEFAULT NULL,
#     `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
#     `price` decimal(10,2) NOT NULL,
#     `material_id` bigint(20) unsigned DEFAULT NULL,
#     `author_id` bigint(20) unsigned DEFAULT NULL,
#     `season_id` bigint(20) unsigned DEFAULT NULL,
#     `deleted` tinyint(1) NOT NULL,
#     PRIMARY KEY (`id`),
#     UNIQUE KEY `id` (`id`),
#     KEY `Products_category_id_fk` (`category_id`),
#     KEY `Products_materials_id_fk` (`material_id`),
#     KEY `Products_authors_id_fk` (`author_id`),
#     KEY `Products_seasons_id_fk` (`season_id`),
#     CONSTRAINT `Products_authors_id_fk` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
#     CONSTRAINT `Products_category_id_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
#     CONSTRAINT `Products_materials_id_fk` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
#     CONSTRAINT `Products_seasons_id_fk` FOREIGN KEY (`season_id`) REFERENCES `seasons` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('1', '9', 'Sint repudiandae voluptates quis.', '4451.08', '7', '9', '7', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('2', '2', 'Illum ducimus voluptatibus quia et.', '1593.13', '4', '7', '10', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('3', '1', 'Debitis illo voluptas rerum a.', '3324.64', '1', '10', '7', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('4', '3', 'Voluptate qui tempora ut.', '6073.56', '5', '3', '8', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('5', '9', 'Aut voluptas ut consequatur.', '7829.92', '8', '1', '5', 1);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('6', '2', 'Et rerum aperiam adipisci tenetur.', '3436.69', '1', '5', '4', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('7', '2', 'Aut est et odit nemo.', '2628.21', '6', '7', '3', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('8', '7', 'Nemo sit deserunt quidem fugit.', '4807.30', '9', '3', '5', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('9', '5', 'Odit non impedit qui sunt.', '8646.30', '1', '1', '6', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('10', '5', 'Est doloribus placeat cum veniam.', '9021.35', '7', '6', '5', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('11', '8', 'Dolorem id doloremque tempora unde.', '5100.85', '6', '1', '10', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('12', '10', 'Officiis magnam quisquam sit aut aut.', '8283.10', '3', '8', '9', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('13', '1', 'Sequi culpa eius voluptate minus earum.', '8592.64', '8', '3', '2', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('14', '9', 'Sunt aut ad aut itaque.', '4287.36', '8', '6', '10', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('15', '3', 'Cum in reiciendis explicabo.', '995.38', '2', '2', '10', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('16', '10', 'Qui autem et qui sunt nostrum commodi.', '5429.18', '4', '4', '5', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('17', '5', 'Saepe voluptatem sed unde ab rem sit.', '8208.79', '5', '1', '9', 1);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('18', '2', 'Adipisci eos ut eos rerum.', '3898.12', '6', '3', '9', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('19', '1', 'Atque facilis quia reiciendis sed.', '1141.05', '4', '9', '1', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('20', '7', 'Ad iusto praesentium ipsum labore.', '1082.24', '6', '10', '7', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('21', '4', 'Quisquam earum qui mollitia aut neque.', '2698.99', '3', '9', '3', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('22', '10', 'Et consectetur modi qui.', '7789.56', '5', '3', '3', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('23', '6', 'Atque amet corporis illo officia.', '6667.76', '5', '3', '6', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('24', '8', 'Sint in qui tenetur.', '3365.54', '6', '10', '3', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('25', '1', 'Placeat optio sit rerum voluptatum.', '2880.50', '10', '1', '2', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('26', '6', 'Sed aut magni magni ab necessitatibus.', '5144.96', '4', '1', '7', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('27', '7', 'Modi beatae cum maiores consequatur.', '9441.91', '10', '8', '3', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('28', '6', 'Sed hic quidem eius odit cum ratione.', '981.94', '7', '10', '9', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('29', '9', 'Et rem fuga et eos aut harum.', '2626.82', '9', '2', '9', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('30', '3', 'Ut esse cum eos vel.', '5849.26', '4', '2', '8', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('31', '8', 'Aut et nobis consequatur impedit et ea.', '8107.33', '4', '3', '6', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('32', '10', 'Accusantium vitae numquam dicta.', '2150.59', '3', '8', '10', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('33', '2', 'Voluptatem odio ut dolorem eum.', '8144.24', '9', '2', '7', 1);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('34', '2', 'Sed perspiciatis sed et.', '1605.89', '3', '3', '9', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('35', '2', 'Natus quod beatae alias eos.', '8677.47', '1', '2', '7', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('36', '7', 'Dolore aut quo sed molestias ut fugiat.', '4226.26', '1', '6', '6', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('37', '10', 'Ut nobis natus esse rerum et.', '7174.62', '8', '4', '2', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('38', '1', 'Quas a eligendi molestias magnam.', '6210.22', '5', '10', '9', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('39', '8', 'Et quod aut ab in sunt.', '3135.14', '3', '4', '7', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('40', '5', 'Nihil velit et repellendus quod vero.', '7574.58', '2', '7', '7', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('41', '1', 'Iure et cum debitis.', '8468.35', '8', '3', '3', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('42', '10', 'Ab incidunt iure inventore dolor est.', '2118.68', '6', '1', '2', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('43', '6', 'Est id veritatis non.', '7075.77', '2', '9', '3', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('44', '3', 'Illo maiores nihil expedita fugit.', '3876.74', '5', '8', '2', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('45', '2', 'Quo rerum labore qui rem.', '9755.09', '2', '4', '2', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('46', '7', 'Sunt ut asperiores alias minima.', '6141.40', '3', '10', '5', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('47', '5', 'Doloribus eum aspernatur voluptas qui.', '7418.68', '4', '2', '10', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('48', '6', 'Dolore adipisci et sint et.', '7290.46', '8', '6', '6', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('49', '6', 'Voluptas voluptate rerum perspiciatis.', '121.16', '9', '8', '6', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('50', '5', 'Sed amet aut mollitia esse est ipsam.', '2656.72', '9', '8', '1', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('51', '10', 'Dolores velit voluptatem odit.', '7452.98', '6', '4', '3', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('52', '10', 'Esse rerum non illum.', '8321.94', '1', '4', '1', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('53', '3', 'Totam iusto enim et sint voluptas.', '2745.45', '8', '3', '9', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('54', '10', 'Eligendi quia voluptas expedita.', '4638.51', '3', '4', '5', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('55', '6', 'Animi placeat laboriosam impedit nobis.', '2646.79', '5', '5', '2', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('56', '3', 'Quae et aut voluptatem.', '2402.84', '10', '8', '8', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('57', '9', 'Harum deleniti aut error aut earum.', '2519.25', '5', '4', '3', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('58', '4', 'Eos nulla est vel asperiores eligendi.', '1223.50', '1', '4', '3', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('59', '6', 'Nesciunt voluptates odit autem ea.', '7505.11', '7', '6', '5', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('60', '8', 'Ipsum necessitatibus unde est rerum.', '1587.70', '10', '6', '10', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('61', '7', 'Aut assumenda provident quibusdam.', '9597.69', '8', '9', '6', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('62', '10', 'Quod ut aut est eligendi non.', '997.01', '2', '1', '6', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('63', '7', 'Eum enim id assumenda et.', '1402.08', '5', '7', '9', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('64', '5', 'Eum voluptatibus quo est minus.', '1449.87', '4', '6', '4', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('65', '9', 'Molestias ut optio in aut neque.', '7893.08', '10', '6', '2', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('66', '10', 'Facilis nihil facilis nam aut.', '6800.57', '10', '5', '5', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('67', '6', 'Alias corporis aut quae sint.', '1609.32', '10', '10', '4', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('68', '9', 'Voluptatibus corporis qui velit.', '9271.19', '5', '4', '5', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('69', '3', 'Facilis consectetur ut at.', '2061.51', '2', '1', '2', 1);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('70', '4', 'Odit cum in ad facilis possimus beatae.', '4829.68', '1', '8', '10', 1);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('71', '6', 'Non et accusantium corporis velit et.', '3292.36', '4', '9', '1', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('72', '8', 'Voluptatibus quae doloremque iste et.', '3413.23', '4', '4', '7', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('73', '3', 'Adipisci nisi odit odit.', '3207.65', '9', '8', '3', 1);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('74', '9', 'Optio voluptas maxime quia optio.', '1673.75', '3', '7', '5', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('75', '3', 'Temporibus facilis et libero odit.', '9039.98', '7', '8', '1', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('76', '2', 'Quia voluptate perferendis omnis culpa.', '9584.57', '1', '6', '4', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('77', '3', 'Consequatur ipsam sunt est enim.', '9390.74', '7', '6', '7', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('78', '8', 'Voluptas accusantium non non ad.', '3387.63', '3', '6', '3', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('79', '7', 'Repellendus est libero ipsa.', '5984.39', '4', '3', '4', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('80', '8', 'Qui doloribus autem eos harum delectus.', '3802.46', '6', '1', '1', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('81', '5', 'Quaerat et non neque minima alias.', '3631.70', '9', '3', '4', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('82', '1', 'Veritatis quam magni nihil porro nihil.', '1921.06', '10', '8', '3', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('83', '7', 'In velit omnis ut quia cumque est.', '5200.39', '5', '4', '8', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('84', '6', 'Maiores neque vel voluptatem rerum.', '1611.23', '10', '2', '8', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('85', '6', 'Consequuntur saepe veniam nihil.', '5142.64', '7', '4', '3', 1);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('86', '10', 'Ut quis pariatur assumenda ullam.', '4060.45', '10', '6', '6', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('87', '4', 'Dolorem odio et a.', '9671.29', '9', '10', '2', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('88', '4', 'Quia rerum quidem et suscipit.', '5221.07', '10', '3', '9', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('89', '8', 'Excepturi facere vero molestiae.', '4376.47', '6', '2', '9', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('90', '5', 'Sit nihil numquam quia iure.', '177.10', '9', '2', '2', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('91', '4', 'Quam corporis enim sunt facere.', '9790.24', '5', '10', '10', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('92', '5', 'Blanditiis velit et temporibus et iste.', '9647.51', '1', '8', '10', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('93', '8', 'Molestiae ab esse et et.', '901.70', '2', '3', '7', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('94', '1', 'Animi non quasi similique ut tempora.', '2729.40', '8', '3', '5', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('95', '6', 'Eaque qui nihil sit quas ipsa non qui.', '9603.19', '2', '6', '10', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('96', '2', 'Et qui et iure ab quod facere.', '4276.22', '8', '9', '10', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('97', '3', 'Velit culpa hic suscipit vel.', '6460.82', '10', '8', '8', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('98', '9', 'Quia ab vel pariatur.', '1416.84', '10', '10', '3', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('99', '5', 'Est veniam saepe autem quisquam.', '3876.89', '9', '2', '9', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `material_id`, `author_id`, `season_id`, `deleted`) VALUES ('100', '10', 'Saepe rerum quas est.', '7003.53', '9', '9', '7', 0);


#
# TABLE STRUCTURE FOR: warehouse
#

# DROP TABLE IF EXISTS `warehouse`;
#
# CREATE TABLE `warehouse` (
#     `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
#     `store_id` bigint(20) unsigned NOT NULL,
#     `product_id` bigint(20) unsigned NOT NULL,
#     `size_id` bigint(20) unsigned NOT NULL,
#     `amount` int(11) NOT NULL,
#     PRIMARY KEY (`id`),
#     UNIQUE KEY `id` (`id`),
#     KEY `warehouse_products_id_fk` (`product_id`),
#     KEY `warehouse_stores_id_fk` (`store_id`),
#     KEY `warehouse_sizes_id_fk` (`size_id`),
#     CONSTRAINT `warehouse_products_id_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
#     CONSTRAINT `warehouse_sizes_id_fk` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON UPDATE CASCADE,
#     CONSTRAINT `warehouse_stores_id_fk` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('1', '9', '91', '7', 73);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('2', '4', '80', '4', 58);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('3', '10', '28', '4', 31);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('4', '3', '20', '7', 99);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('5', '1', '31', '2', 20);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('6', '6', '34', '3', 98);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('7', '9', '6', '3', 37);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('8', '2', '94', '6', 68);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('9', '7', '95', '5', 30);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('10', '10', '42', '2', 96);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('11', '7', '24', '1', 16);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('12', '6', '64', '7', 62);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('13', '10', '58', '2', 41);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('14', '5', '82', '3', 6);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('15', '4', '83', '5', 67);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('16', '6', '37', '7', 22);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('17', '10', '22', '1', 91);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('18', '4', '36', '7', 51);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('19', '1', '98', '7', 43);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('20', '8', '91', '3', 76);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('21', '9', '56', '5', 94);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('22', '10', '7', '2', 20);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('23', '9', '4', '6', 85);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('24', '1', '51', '5', 74);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('25', '4', '87', '4', 7);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('26', '1', '42', '6', 14);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('27', '1', '38', '1', 47);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('28', '2', '69', '3', 12);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('29', '1', '72', '3', 63);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('30', '1', '42', '2', 73);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('31', '4', '31', '6', 68);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('32', '10', '29', '7', 61);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('33', '2', '15', '7', 31);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('34', '10', '17', '3', 84);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('35', '6', '55', '2', 27);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('36', '1', '60', '5', 32);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('37', '9', '65', '1', 87);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('38', '9', '76', '6', 67);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('39', '3', '86', '4', 36);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('40', '6', '90', '7', 59);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('41', '9', '29', '2', 97);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('42', '7', '26', '4', 5);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('43', '5', '46', '5', 53);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('44', '4', '45', '6', 70);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('45', '8', '5', '3', 82);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('46', '1', '8', '7', 91);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('47', '8', '90', '4', 25);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('48', '9', '75', '3', 47);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('49', '6', '97', '2', 93);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('50', '1', '53', '1', 43);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('51', '10', '33', '3', 55);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('52', '1', '95', '5', 14);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('53', '6', '42', '1', 24);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('54', '2', '81', '4', 93);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('55', '10', '60', '4', 91);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('56', '3', '67', '5', 19);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('57', '2', '42', '4', 96);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('58', '7', '25', '2', 67);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('59', '1', '82', '2', 19);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('60', '2', '86', '6', 52);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('61', '3', '77', '1', 88);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('62', '7', '85', '1', 96);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('63', '3', '40', '4', 49);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('64', '3', '54', '2', 96);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('65', '8', '44', '6', 12);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('66', '4', '66', '4', 86);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('67', '10', '79', '7', 31);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('68', '5', '49', '2', 76);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('69', '8', '50', '7', 37);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('70', '10', '70', '6', 59);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('71', '8', '96', '5', 36);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('72', '8', '58', '4', 90);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('73', '8', '80', '6', 51);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('74', '3', '9', '3', 35);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('75', '5', '88', '6', 72);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('76', '3', '22', '4', 28);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('77', '8', '18', '2', 57);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('78', '7', '65', '6', 47);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('79', '9', '39', '2', 78);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('80', '9', '35', '7', 11);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('81', '7', '6', '7', 86);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('82', '3', '84', '4', 28);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('83', '7', '64', '2', 69);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('84', '5', '86', '3', 8);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('85', '9', '33', '2', 59);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('86', '7', '62', '3', 56);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('87', '1', '41', '5', 69);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('88', '4', '10', '2', 15);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('89', '1', '94', '5', 32);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('90', '3', '75', '7', 27);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('91', '2', '38', '1', 52);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('92', '1', '59', '7', 64);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('93', '5', '24', '4', 91);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('94', '7', '71', '3', 20);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('95', '1', '54', '5', 16);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('96', '3', '17', '3', 28);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('97', '7', '24', '5', 13);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('98', '3', '56', '6', 34);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('99', '5', '59', '6', 15);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('100', '2', '84', '4', 96);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('101', '1', '99', '6', 26);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('102', '2', '1', '4', 45);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('103', '10', '47', '5', 92);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('104', '5', '16', '3', 18);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('105', '9', '18', '7', 20);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('106', '6', '40', '1', 85);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('107', '9', '4', '3', 71);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('108', '5', '28', '7', 78);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('109', '3', '75', '4', 43);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('110', '1', '86', '2', 13);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('111', '5', '93', '2', 19);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('112', '4', '4', '2', 59);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('113', '8', '1', '6', 39);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('114', '5', '48', '7', 83);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('115', '8', '30', '1', 27);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('116', '8', '81', '4', 85);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('117', '8', '61', '4', 54);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('118', '1', '11', '6', 28);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('119', '10', '40', '4', 80);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('120', '5', '41', '3', 23);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('121', '7', '90', '3', 35);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('122', '10', '22', '3', 21);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('123', '3', '98', '3', 91);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('124', '10', '40', '6', 5);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('125', '9', '20', '1', 56);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('126', '10', '91', '7', 37);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('127', '4', '69', '4', 35);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('128', '9', '79', '5', 53);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('129', '7', '76', '7', 82);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('130', '2', '17', '3', 20);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('131', '6', '87', '3', 16);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('132', '9', '83', '4', 57);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('133', '2', '7', '4', 91);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('134', '5', '4', '7', 20);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('135', '3', '91', '1', 59);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('136', '4', '84', '7', 92);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('137', '3', '23', '5', 58);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('138', '8', '11', '4', 71);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('139', '4', '75', '2', 93);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('140', '4', '91', '3', 93);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('141', '8', '42', '2', 45);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('142', '1', '23', '1', 9);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('143', '6', '35', '1', 78);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('144', '1', '80', '2', 94);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('145', '9', '5', '1', 43);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('146', '10', '38', '7', 3);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('147', '10', '61', '1', 17);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('148', '7', '33', '2', 67);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('149', '1', '66', '7', 37);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('150', '3', '98', '7', 13);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('151', '7', '70', '2', 89);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('152', '9', '72', '4', 18);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('153', '9', '25', '6', 58);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('154', '1', '26', '5', 23);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('155', '2', '16', '5', 21);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('156', '3', '13', '1', 17);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('157', '2', '7', '5', 26);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('158', '3', '68', '7', 49);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('159', '5', '73', '5', 50);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('160', '4', '98', '5', 23);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('161', '3', '59', '3', 98);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('162', '6', '43', '1', 83);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('163', '1', '33', '2', 78);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('164', '9', '34', '4', 90);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('165', '6', '51', '5', 3);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('166', '3', '73', '6', 59);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('167', '3', '85', '7', 63);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('168', '10', '7', '4', 66);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('169', '10', '51', '2', 89);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('170', '6', '91', '2', 90);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('171', '3', '17', '6', 94);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('172', '6', '71', '2', 56);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('173', '6', '75', '5', 27);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('174', '9', '63', '7', 13);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('175', '4', '17', '3', 25);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('176', '1', '39', '2', 62);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('177', '9', '67', '7', 98);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('178', '8', '63', '1', 66);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('179', '3', '58', '4', 74);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('180', '6', '17', '4', 7);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('181', '8', '39', '5', 38);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('182', '7', '92', '3', 49);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('183', '9', '48', '1', 71);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('184', '5', '31', '6', 90);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('185', '4', '66', '7', 95);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('186', '8', '69', '2', 45);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('187', '10', '53', '7', 11);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('188', '10', '24', '4', 36);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('189', '10', '49', '1', 93);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('190', '6', '2', '3', 81);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('191', '1', '79', '5', 57);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('192', '7', '39', '5', 9);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('193', '1', '26', '1', 80);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('194', '2', '71', '3', 66);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('195', '9', '8', '1', 44);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('196', '8', '87', '6', 8);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('197', '10', '81', '2', 96);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('198', '9', '74', '4', 40);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('199', '5', '73', '7', 30);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('200', '6', '28', '7', 56);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('201', '9', '31', '6', 28);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('202', '6', '98', '2', 55);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('203', '2', '1', '3', 89);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('204', '2', '12', '1', 97);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('205', '6', '94', '2', 6);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('206', '6', '65', '1', 47);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('207', '4', '61', '7', 47);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('208', '6', '51', '5', 34);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('209', '1', '96', '3', 2);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('210', '10', '53', '5', 23);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('211', '10', '40', '7', 79);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('212', '8', '94', '7', 42);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('213', '9', '7', '7', 47);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('214', '3', '26', '7', 8);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('215', '4', '83', '7', 86);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('216', '6', '42', '4', 31);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('217', '6', '73', '2', 9);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('218', '5', '28', '5', 98);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('219', '1', '30', '5', 5);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('220', '4', '28', '2', 81);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('221', '10', '24', '4', 84);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('222', '9', '96', '4', 24);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('223', '8', '83', '4', 5);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('224', '6', '9', '6', 41);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('225', '6', '46', '5', 77);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('226', '5', '1', '1', 84);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('227', '1', '60', '6', 89);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('228', '3', '6', '1', 69);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('229', '10', '11', '3', 72);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('230', '6', '48', '5', 13);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('231', '8', '43', '7', 66);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('232', '3', '28', '6', 71);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('233', '8', '100', '5', 32);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('234', '4', '60', '6', 90);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('235', '2', '18', '2', 60);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('236', '8', '67', '2', 78);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('237', '9', '73', '6', 63);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('238', '6', '97', '6', 97);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('239', '7', '88', '7', 19);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('240', '10', '43', '3', 54);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('241', '7', '15', '6', 15);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('242', '5', '42', '1', 57);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('243', '4', '19', '1', 59);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('244', '10', '50', '5', 34);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('245', '7', '63', '7', 13);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('246', '9', '38', '4', 68);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('247', '1', '19', '2', 65);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('248', '9', '77', '2', 95);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('249', '7', '40', '1', 67);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('250', '7', '39', '4', 85);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('251', '1', '99', '5', 56);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('252', '9', '47', '1', 47);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('253', '10', '77', '3', 83);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('254', '2', '72', '6', 63);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('255', '9', '39', '3', 6);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('256', '8', '25', '6', 48);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('257', '3', '29', '7', 75);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('258', '6', '12', '6', 32);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('259', '8', '78', '1', 29);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('260', '10', '39', '4', 9);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('261', '5', '42', '4', 75);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('262', '2', '29', '7', 50);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('263', '3', '29', '6', 35);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('264', '6', '41', '4', 99);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('265', '4', '23', '6', 17);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('266', '8', '94', '1', 96);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('267', '6', '20', '3', 64);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('268', '5', '74', '4', 2);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('269', '3', '53', '2', 35);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('270', '4', '43', '5', 78);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('271', '9', '87', '1', 38);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('272', '4', '100', '3', 94);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('273', '4', '24', '5', 30);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('274', '1', '77', '1', 33);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('275', '6', '9', '2', 5);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('276', '4', '82', '2', 83);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('277', '5', '34', '3', 28);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('278', '9', '83', '1', 65);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('279', '4', '6', '5', 61);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('280', '6', '43', '1', 12);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('281', '3', '31', '7', 13);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('282', '3', '70', '7', 98);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('283', '7', '7', '2', 22);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('284', '3', '17', '7', 25);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('285', '3', '71', '1', 90);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('286', '6', '10', '6', 7);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('287', '8', '56', '2', 33);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('288', '2', '39', '7', 69);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('289', '3', '70', '1', 54);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('290', '10', '27', '4', 52);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('291', '1', '49', '6', 80);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('292', '10', '76', '4', 29);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('293', '9', '37', '4', 64);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('294', '1', '61', '5', 3);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('295', '1', '88', '3', 55);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('296', '1', '41', '4', 29);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('297', '9', '14', '1', 62);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('298', '1', '26', '4', 53);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('299', '1', '52', '1', 54);
INSERT INTO `warehouse` (`id`, `store_id`, `product_id`, `size_id`, `amount`) VALUES ('300', '2', '44', '3', 65);


#
# TABLE STRUCTURE FOR: cart
#

# DROP TABLE IF EXISTS `cart`;
#
# CREATE TABLE `cart` (
#     `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
#     `user_id` bigint(20) unsigned DEFAULT NULL,
#     `session` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
#     `product_id` bigint(20) unsigned NOT NULL,
#     `amount` int(10) unsigned NOT NULL,
#     PRIMARY KEY (`id`),
#     UNIQUE KEY `id` (`id`),
#     KEY `cart_products_id_fk` (`product_id`),
#     KEY `cart_users_id_fk` (`user_id`),
#     CONSTRAINT `cart_products_id_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
#     CONSTRAINT `cart_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('1', '1', '2942fcp3i', '87', 2);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('2', '4', '1521zaw7g', '94', 7);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('3', '5', '4343gbh9y', '61', 8);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('4', '5', '0930pav9f', '79', 3);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('5', '3', '1974yhg3h', '8', 8);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('6', '6', '4388wsa5c', '80', 6);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('7', '5', '', '44', 1);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('8', '8', '8592dcr0k', '49', 7);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('9', '8', '5369acr8x', '98', 1);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('10', '1', '9499hdp1e', '38', 9);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('11', '6', '8960sdm6a', '15', 10);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('12', '7', '', '45', 8);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('13', '2', '', '3', 2);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('14', '6', '5672qcp6y', '90', 2);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('15', '5', '3738qxz1d', '43', 2);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('16', '1', '', '47', 1);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('17', '3', '', '43', 3);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('18', '4', '1585ykp5w', '74', 2);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('19', '1', '4973rcp1w', '90', 10);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('20', '6', '3733rjp3b', '30', 7);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('21', '10', '8134vai0y', '5', 10);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('22', '1', '', '39', 7);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('23', '5', '0252uvo1b', '88', 1);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('24', '9', '', '26', 3);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('25', '9', '', '95', 7);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('26', '7', '', '40', 1);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('27', '1', '', '26', 3);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('28', '9', '8418lsu5j', '26', 6);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('29', '3', '2059euj3r', '42', 10);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('30', '2', '', '68', 5);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('31', '9', '6940ksf3i', '21', 6);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('32', '2', '1158mmo0r', '13', 3);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('33', '7', '4094ivb6h', '54', 8);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('34', '9', '1199knq4v', '66', 6);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('35', '5', '', '37', 10);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('36', '10', '9288slv8e', '40', 8);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('37', '5', '', '4', 10);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('38', '8', '', '88', 9);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('39', '10', '', '66', 2);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('40', '2', '7758dcc0v', '77', 3);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('41', '7', '', '77', 2);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('42', '2', '9272qut6s', '70', 8);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('43', '1', '', '1', 2);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('44', '10', '', '30', 9);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('45', '5', '', '11', 8);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('46', '10', '', '26', 7);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('47', '4', '5041sis9f', '12', 3);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('48', '4', '', '93', 3);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('49', '7', '1864ptm2x', '23', 9);
INSERT INTO `cart` (`id`, `user_id`, `session`, `product_id`, `amount`) VALUES ('50', '6', '8860hqj7s', '9', 1);


#
# TABLE STRUCTURE FOR: orders
#

# DROP TABLE IF EXISTS `orders`;
#
# CREATE TABLE `orders` (
#     `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
#     `user_id` bigint(20) unsigned NOT NULL,
#     `cost` int(10) unsigned NOT NULL,
#     `store_id` bigint(20) unsigned NOT NULL,
#     `order_date` datetime NOT NULL,
#     `delivery_date` datetime NOT NULL,
#     `status_id` bigint(20) unsigned NOT NULL,
#     PRIMARY KEY (`id`),
#     UNIQUE KEY `id` (`id`),
#     KEY `orders_stores_id_fk` (`store_id`),
#     KEY `orders_users_id_fk` (`user_id`),
#     KEY `orders_order_statuses_id_fk` (`status_id`),
#     CONSTRAINT `orders_order_statuses_id_fk` FOREIGN KEY (`status_id`) REFERENCES `order_statuses` (`id`) ON UPDATE CASCADE,
#     CONSTRAINT `orders_stores_id_fk` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON UPDATE CASCADE,
#     CONSTRAINT `orders_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('1', '5', 130899681, '9', '1971-08-28 02:31:46', '1975-09-28 17:31:12', '5');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('2', '8', 4097915, '1', '2016-02-09 18:43:26', '2018-03-02 10:20:45', '4');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('3', '5', 10, '10', '1996-05-29 20:33:23', '2000-08-10 14:15:10', '8');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('4', '2', 7, '1', '2011-11-02 05:26:18', '1974-12-25 16:50:45', '2');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('5', '3', 4, '6', '2017-10-03 21:35:26', '1974-01-13 13:38:50', '5');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('6', '7', 549, '4', '1989-11-20 22:31:35', '2002-12-09 21:38:23', '1');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('7', '3', 6339443, '6', '1994-01-06 06:34:12', '2013-12-30 19:05:37', '6');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('8', '9', 2644, '7', '1982-05-17 14:24:31', '1981-04-08 12:29:23', '5');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('9', '1', 621385, '6', '2014-03-07 15:37:55', '1993-12-25 20:39:00', '1');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('10', '2', 33467, '1', '2000-03-29 04:36:15', '2016-08-11 10:25:46', '5');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('11', '1', 65378, '6', '2016-08-19 03:09:32', '1970-04-09 09:35:09', '4');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('12', '7', 2203016, '3', '1983-10-17 01:19:37', '2000-12-03 20:13:05', '4');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('13', '2', 82981, '8', '1996-01-30 20:26:54', '2011-01-18 08:19:51', '4');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('14', '1', 18743850, '9', '2015-07-18 02:35:29', '2009-01-31 18:07:07', '4');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('15', '3', 0, '1', '1992-07-05 14:25:24', '1972-09-29 13:13:17', '1');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('16', '9', 2228721, '8', '2008-07-22 03:33:42', '1981-01-17 21:47:36', '4');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('17', '10', 85175, '1', '1974-03-30 13:33:33', '2007-07-22 16:07:43', '8');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('18', '7', 431860078, '9', '2012-12-23 22:23:02', '1976-10-08 23:13:49', '5');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('19', '3', 41527, '9', '2007-07-24 06:15:27', '1997-06-24 06:40:09', '2');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('20', '5', 4224077, '1', '1974-02-18 15:12:02', '2002-12-07 17:17:27', '2');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('21', '10', 423488137, '1', '2011-08-23 07:44:59', '2000-12-16 17:44:24', '7');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('22', '4', 5830853, '7', '1987-11-25 19:45:19', '1988-09-17 17:47:13', '1');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('23', '9', 14326, '9', '1988-04-07 02:44:36', '1980-09-06 15:43:29', '7');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('24', '3', 38298, '9', '1978-01-20 01:10:22', '1992-04-11 04:39:11', '5');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('25', '8', 450849900, '2', '1989-12-12 10:40:17', '1987-02-12 05:53:27', '6');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('26', '8', 1500524, '1', '2015-12-10 16:18:05', '2018-06-17 01:05:49', '4');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('27', '2', 0, '10', '2010-11-10 17:12:42', '1981-10-22 16:30:29', '5');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('28', '2', 2206174, '7', '2010-12-03 22:50:08', '1993-08-14 19:06:59', '3');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('29', '8', 0, '10', '2006-03-05 15:47:25', '1975-10-03 22:46:01', '3');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('30', '9', 317, '4', '1970-03-31 21:35:01', '1988-10-18 16:09:45', '3');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('31', '1', 417814, '3', '1981-07-22 22:45:47', '1997-09-24 07:26:51', '3');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('32', '9', 10, '7', '1982-10-31 20:13:52', '2017-10-04 22:08:58', '1');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('33', '10', 83465859, '5', '1993-12-11 18:11:59', '2000-11-10 19:41:54', '7');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('34', '7', 3687, '7', '2004-07-17 12:17:54', '2009-03-04 07:51:17', '6');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('35', '3', 1, '4', '1985-12-13 23:46:58', '2003-01-29 16:40:26', '8');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('36', '10', 18899096, '2', '2012-04-09 05:50:00', '1994-02-04 05:16:27', '8');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('37', '5', 101, '4', '2003-12-29 17:59:59', '2005-07-11 14:34:55', '7');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('38', '10', 13939, '5', '1972-04-01 22:18:57', '1992-03-15 07:50:18', '4');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('39', '4', 9174, '3', '2016-03-19 01:11:52', '1995-01-26 08:31:31', '4');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('40', '6', 32, '1', '2019-01-25 21:33:20', '1988-01-29 19:46:30', '6');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('41', '9', 23798135, '2', '2012-01-30 15:32:16', '1970-10-13 00:28:44', '1');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('42', '2', 0, '1', '1971-10-19 09:01:30', '1974-07-11 09:23:15', '6');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('43', '3', 0, '10', '2008-01-01 08:45:41', '1971-09-29 07:08:01', '1');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('44', '1', 482057185, '7', '2007-02-02 13:39:36', '1988-12-29 08:10:54', '7');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('45', '8', 0, '10', '2000-01-20 21:03:08', '2002-06-13 18:59:48', '2');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('46', '7', 3845736, '10', '1972-09-17 20:28:41', '1972-04-17 07:54:37', '3');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('47', '6', 8, '4', '2001-08-08 14:24:46', '2018-10-26 23:26:30', '6');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('48', '4', 58052, '4', '1991-06-24 01:00:25', '1990-02-14 03:42:40', '1');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('49', '9', 278, '8', '1972-07-25 09:44:23', '1970-12-07 21:57:46', '3');
INSERT INTO `orders` (`id`, `user_id`, `cost`, `store_id`, `order_date`, `delivery_date`, `status_id`) VALUES ('50', '3', 49971730, '4', '2004-09-26 03:36:28', '2020-06-14 09:14:32', '4');


#
# TABLE STRUCTURE FOR: order_products
#

# DROP TABLE IF EXISTS `order_products`;
#
# CREATE TABLE `order_products` (
#     `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
#     `order_id` bigint(20) unsigned NOT NULL,
#     `product_id` bigint(20) unsigned NOT NULL,
#     `size_id` bigint(20) unsigned NOT NULL,
#     `amount` int(10) unsigned NOT NULL,
#     `price` int(10) unsigned NOT NULL,
#     `cost` int(11) GENERATED ALWAYS AS (`amount` * `price`) VIRTUAL,
#     PRIMARY KEY (`id`),
#     UNIQUE KEY `id` (`id`),
#     KEY `order_products_orders_id_fk` (`order_id`),
#     KEY `order_products_products_id_fk` (`product_id`),
#     KEY `order_products_sizes_id_fk` (`size_id`),
#     CONSTRAINT `order_products_orders_id_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE,
#     CONSTRAINT `order_products_products_id_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
# CONSTRAINT `order_products_sizes_id_fk` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON UPDATE CASCADE
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('1', '1', '29', '4', 9, 883);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('2', '2', '82', '1', 10, 3994);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('3', '3', '12', '1', 9, 2179);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('4', '4', '49', '7', 7, 5690);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('5', '5', '21', '2', 3, 8796);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('6', '6', '47', '2', 7, 7924);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('7', '7', '90', '7', 10, 6434);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('8', '8', '39', '3', 5, 3509);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('9', '9', '70', '4', 8, 9419);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('10', '10', '59', '7', 8, 3645);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('11', '11', '44', '5', 2, 4345);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('12', '12', '92', '5', 8, 7955);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('13', '13', '2', '4', 4, 3706);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('14', '14', '22', '7', 9, 2310);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('15', '15', '95', '5', 8, 2355);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('16', '16', '52', '2', 3, 8590);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('17', '17', '17', '3', 1, 9693);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('18', '18', '35', '2', 3, 7835);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('19', '19', '41', '6', 2, 6632);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('20', '20', '14', '5', 6, 1065);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('21', '21', '1', '5', 4, 4321);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('22', '22', '87', '7', 1, 9544);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('23', '23', '57', '2', 9, 1333);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('24', '24', '23', '2', 5, 3659);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('25', '25', '82', '6', 10, 3101);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('26', '26', '25', '2', 10, 8337);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('27', '27', '42', '2', 6, 8879);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('28', '28', '96', '4', 3, 2712);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('29', '29', '69', '2', 6, 8767);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('30', '30', '33', '5', 6, 9338);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('31', '31', '77', '6', 8, 1769);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('32', '32', '86', '7', 10, 3361);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('33', '33', '17', '2', 5, 8328);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('34', '34', '21', '5', 9, 2405);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('35', '35', '5', '3', 3, 1156);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('36', '36', '20', '1', 10, 1216);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('37', '37', '94', '1', 5, 7028);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('38', '38', '96', '4', 9, 6246);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('39', '39', '31', '2', 8, 4541);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('40', '40', '77', '1', 9, 7135);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('41', '41', '1', '1', 4, 4882);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('42', '42', '36', '3', 5, 8338);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('43', '43', '18', '3', 10, 5966);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('44', '44', '87', '7', 3, 5653);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('45', '45', '49', '2', 9, 3032);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('46', '46', '49', '2', 1, 988);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('47', '47', '3', '3', 7, 2387);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('48', '48', '19', '2', 9, 8814);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('49', '49', '55', '3', 5, 6347);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('50', '50', '78', '5', 1, 336);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('51', '1', '73', '7', 2, 5134);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('52', '2', '65', '5', 8, 142);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('53', '3', '3', '5', 9, 2272);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('54', '4', '17', '3', 10, 774);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('55', '5', '80', '7', 2, 2103);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('56', '6', '45', '6', 8, 3594);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('57', '7', '94', '6', 5, 304);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('58', '8', '23', '1', 1, 7992);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('59', '9', '12', '1', 5, 9252);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('60', '10', '98', '5', 4, 342);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('61', '11', '28', '4', 1, 4869);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('62', '12', '87', '3', 2, 9759);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('63', '13', '81', '1', 3, 9590);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('64', '14', '51', '3', 7, 6234);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('65', '15', '44', '2', 8, 4368);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('66', '16', '95', '2', 8, 3958);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('67', '17', '25', '5', 4, 7179);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('68', '18', '84', '2', 1, 4542);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('69', '19', '19', '7', 1, 5559);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('70', '20', '60', '7', 3, 4170);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('71', '21', '93', '1', 2, 6845);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('72', '22', '78', '7', 2, 5630);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('73', '23', '84', '7', 6, 6864);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('74', '24', '98', '7', 10, 8903);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('75', '25', '9', '7', 9, 1934);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('76', '26', '57', '3', 1, 5758);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('77', '27', '41', '3', 7, 1792);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('78', '28', '67', '2', 10, 4152);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('79', '29', '48', '2', 7, 693);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('80', '30', '56', '7', 3, 3457);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('81', '31', '45', '4', 1, 424);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('82', '32', '8', '5', 3, 6287);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('83', '33', '8', '7', 9, 2787);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('84', '34', '96', '2', 7, 5385);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('85', '35', '91', '4', 3, 1478);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('86', '36', '25', '6', 10, 146);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('87', '37', '59', '1', 4, 1632);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('88', '38', '69', '3', 4, 9929);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('89', '39', '2', '5', 5, 9947);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('90', '40', '39', '1', 5, 5949);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('91', '41', '61', '7', 8, 4362);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('92', '42', '47', '1', 6, 9565);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('93', '43', '37', '1', 7, 7710);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('94', '44', '21', '6', 9, 3341);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('95', '45', '29', '6', 1, 9202);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('96', '46', '75', '6', 3, 6883);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('97', '47', '26', '6', 9, 5148);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('98', '48', '43', '3', 5, 8195);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('99', '49', '74', '3', 1, 8274);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('100', '50', '60', '5', 3, 9178);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('101', '1', '94', '6', 7, 5384);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('102', '2', '46', '4', 2, 3982);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('103', '3', '86', '1', 9, 9348);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('104', '4', '95', '7', 6, 6974);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('105', '5', '80', '3', 7, 8490);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('106', '6', '98', '3', 2, 7200);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('107', '7', '28', '4', 2, 407);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('108', '8', '41', '5', 4, 3977);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('109', '9', '57', '5', 2, 4707);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('110', '10', '48', '6', 5, 5755);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('111', '11', '38', '2', 10, 1026);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('112', '12', '59', '5', 10, 7656);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('113', '13', '5', '1', 10, 7693);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('114', '14', '96', '6', 2, 3339);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('115', '15', '39', '4', 6, 6748);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('116', '16', '42', '3', 10, 2865);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('117', '17', '39', '7', 6, 6363);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('118', '18', '84', '2', 10, 953);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('119', '19', '1', '6', 5, 4690);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('120', '20', '12', '6', 3, 7312);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('121', '21', '12', '1', 2, 4886);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('122', '22', '21', '3', 9, 2280);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('123', '23', '53', '5', 4, 7951);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('124', '24', '4', '1', 7, 425);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('125', '25', '22', '4', 10, 315);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('126', '26', '94', '5', 5, 6345);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('127', '27', '74', '4', 8, 7787);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('128', '28', '22', '6', 9, 4663);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('129', '29', '53', '2', 7, 3995);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('130', '30', '56', '7', 3, 137);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('131', '31', '72', '7', 7, 6171);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('132', '32', '22', '1', 10, 2364);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('133', '33', '84', '1', 4, 8809);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('134', '34', '34', '6', 9, 8952);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('135', '35', '85', '4', 4, 7475);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('136', '36', '64', '7', 9, 3521);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('137', '37', '54', '6', 10, 3668);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('138', '38', '36', '1', 4, 9372);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('139', '39', '45', '3', 5, 3290);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('140', '40', '15', '5', 8, 8612);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('141', '41', '91', '1', 2, 8129);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('142', '42', '25', '5', 10, 5117);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('143', '43', '62', '4', 9, 644);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('144', '44', '42', '1', 7, 9901);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('145', '45', '63', '7', 2, 7477);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('146', '46', '4', '3', 7, 2850);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('147', '47', '94', '2', 2, 3491);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('148', '48', '43', '6', 10, 3260);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('149', '49', '32', '6', 9, 3377);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('150', '50', '61', '2', 8, 3495);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('151', '1', '21', '2', 1, 1317);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('152', '2', '13', '6', 4, 6565);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('153', '3', '9', '4', 5, 8443);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('154', '4', '81', '4', 9, 4567);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('155', '5', '88', '7', 9, 1852);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('156', '6', '20', '6', 2, 9915);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('157', '7', '5', '4', 1, 8682);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('158', '8', '42', '5', 8, 1706);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('159', '9', '90', '6', 10, 4079);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('160', '10', '79', '4', 6, 5128);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('161', '11', '81', '6', 7, 5527);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('162', '12', '86', '6', 10, 7876);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('163', '13', '9', '2', 7, 8980);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('164', '14', '52', '3', 9, 4814);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('165', '15', '5', '1', 5, 5723);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('166', '16', '57', '2', 5, 3320);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('167', '17', '37', '5', 5, 4157);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('168', '18', '100', '4', 5, 1840);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('169', '19', '17', '6', 5, 1306);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('170', '20', '99', '1', 4, 4494);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('171', '21', '76', '2', 1, 7743);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('172', '22', '82', '6', 7, 6471);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('173', '23', '62', '2', 7, 771);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('174', '24', '46', '4', 5, 5675);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('175', '25', '6', '2', 9, 7274);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('176', '26', '3', '7', 7, 3354);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('177', '27', '8', '7', 10, 7860);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('178', '28', '61', '2', 8, 9901);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('179', '29', '16', '1', 7, 3448);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('180', '30', '57', '2', 2, 1719);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('181', '31', '24', '1', 8, 1140);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('182', '32', '45', '5', 6, 8915);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('183', '33', '83', '4', 6, 6011);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('184', '34', '5', '7', 5, 6000);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('185', '35', '25', '1', 1, 9357);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('186', '36', '3', '7', 4, 6149);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('187', '37', '20', '6', 9, 6908);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('188', '38', '80', '6', 10, 9321);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('189', '39', '8', '2', 5, 3580);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('190', '40', '32', '1', 9, 3592);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('191', '41', '50', '3', 6, 5906);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('192', '42', '100', '4', 5, 1014);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('193', '43', '23', '5', 6, 4114);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('194', '44', '74', '3', 10, 8125);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('195', '45', '71', '3', 2, 5195);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('196', '46', '59', '7', 1, 8721);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('197', '47', '44', '1', 1, 8604);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('198', '48', '54', '2', 6, 9098);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('199', '49', '48', '5', 5, 8876);
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `size_id`, `amount`, `price`) VALUES ('200', '50', '25', '6', 3, 7690);
