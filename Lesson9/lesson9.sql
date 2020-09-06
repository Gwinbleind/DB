# 1. Transaction
create schema shop;
create schema sample;
create table shop.users (
    id serial not null,
    name varchar(10)
);
insert shop.users (name) values
('Name1'),('Name2');
create table sample.users(
	id serial not null,
	name varchar(10)
);
# Это работает только если реально существует запись с id=1
# В противном случае происходит вставка null
# Как можно получить ошибку при select для отката транзакции?
start transaction;
insert sample.users (name) value
    ((select name from shop.users shu where shu.id = 1));
delete from shop.users where id = 1;
commit;
drop schema sample;
# 2. View

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT 'Название раздела',
	UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO catalogs VALUES
(NULL, 'Процессоры'),
(NULL, 'Материнские платы'),
(NULL, 'Видеокарты'),
(NULL, 'Жесткие диски'),
(NULL, 'Оперативная память');

create view b as
    select * from catalogs;

drop schema shop;