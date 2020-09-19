# 1. Transaction
create schema if not exists shop;
create schema if not exists sample;
drop table if exists shop.users;
create table shop.users (
    id serial not null,
    name varchar(10)
);
insert shop.users (name) values
('Name1'),('Name2');
drop table if exists sample.users;
create table sample.users(
	id serial not null,
	name varchar(10)
);
drop procedure if exists sp_transaction_shift;
create procedure sp_transaction_shift(out result varchar(200))
begin
    declare _rollback bool default 0;
    declare code varchar(50);
    declare err_msg varchar(200);
    declare continue handler for sqlexception
        begin
            set _rollback = 1;
            get stacked diagnostics condition 1
                code = returned_sqlstate, err_msg = message_text;
            set result = concat('Error: ',code,', message:',err_msg);
        end;
    start transaction;
        if ((select count(id) from shop.users shu where shu.id = 1) = 1) then
            insert sample.users (name) value
                ((select name from shop.users shu where shu.id = 1));
            delete from shop.users where id = 1;
        else
            set _rollback = 1;
            set result = 'Error: user not found';
        end if;
    if (_rollback) then
        rollback;
    else
        commit;
        set result = 'OK';
    end if;
end;

call sp_transaction_shift(@result);
select @result;

drop schema sample;
# 2. View
use shop;
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

DROP TABLE IF EXISTS products;
CREATE TABLE products (
						  id SERIAL PRIMARY KEY,
						  name VARCHAR(255) COMMENT 'Название',
						  description TEXT COMMENT 'Описание',
						  price DECIMAL (11,2) COMMENT 'Цена',
						  catalog_id INT UNSIGNED,
						  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
						  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
						  KEY index_of_catalog_id (catalog_id)
) COMMENT = 'Товарные позиции';

INSERT INTO products
(name, description, price, catalog_id)
VALUES
('Intel Core i3-8100', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 7890.00, 1),
('Intel Core i5-7400', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 12700.00, 1),
('AMD FX-8320E', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 4780.00, 1),
('AMD FX-8320', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 7120.00, 1),
('ASUS ROG MAXIMUS X HERO', 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX', 19310.00, 2),
('Gigabyte H310M S2H', 'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
('MSI B250M GAMING PRO', 'Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', 5060.00, 2);

create view test_view as
    select
    	p.name 'product',
        c.name 'catalog'
    from products p
	left join catalogs c on p.catalog_id = c.id;
select * from test_view;
# 3.
drop table if exists test;
create table if not exists `test` (
	created_at datetime
);
insert test values
('2018-08-01'), ('2016-08-04'), ('2018-08-16'), ('2018-08-17');
select
	m.id day,
    not isnull(dayofmonth(test.created_at)) exist
from snet0408.messages m
left join test
on m.id = dayofmonth(test.created_at)
order by m.id limit 31;
# 4. 5 новых записей
insert into test (created_at)
values (current_timestamp),(current_timestamp),(current_timestamp);
select * from test;
delete from test
where created_at not in (
    (select * from
        (select created_at
            from test
            order by created_at desc
            limit 5) as t));
select * from test;
# Администрирование
# 1. Юзеры
create user if not exists shop_read;
grant select on shop.*  to shop_read;
create user if not exists shop;
grant all on shop.* to shop;
# 2. Юзер с правом для представления
create table if not exists accounts (
    id serial not null,
    name varchar(10),
    password varchar(20)
);
create view username as
    select id, name from accounts;
create user user_read;
grant select on shop.accounts to user_read;
# Хранимые процедуры и функции
# 1. Приветствие
drop function if exists hello;
create function hello() returns text deterministic
begin
    if (hour(current_timestamp)>=6 and hour(current_timestamp)<12) then
        return 'Доброе утро';
    elseif (hour(current_timestamp)>=12 and hour(current_timestamp)<18) then
        return 'Добрый день';
    elseif (hour(current_timestamp)>=18 and hour(current_timestamp)<24) then
        return 'Добрый вечер';
    elseif (hour(current_timestamp)>=0 and hour(current_timestamp)<6) then
        return 'Доброй ночи';
    end if;
end;
select hello();
# 2. Triggers
drop trigger if exists update_products;
create trigger update_products before update on products
    for each row
    begin
        if (isnull(NEW.name) and isnull(NEW.description)) then
            signal sqlstate '45000' set message_text = 'UPDATE canceled';
        end if;
    end;
drop trigger if exists insert_products;
create trigger insert_products before insert on products
    for each row
    begin
        if (isnull(NEW.name) and isnull(NEW.description)) then
            signal sqlstate '45000' set message_text = 'INSERT canceled';
        end if;
    end;
update products
set name = null
where id = 1;
update products
set description = null
where id = 2;
update products
set name = null, description = null
where id = 3;
insert products (name, description, price, catalog_id) values (null,null,1,1);
# 3. Фибоначчи
drop function if exists FIBONACCI;
create function FIBONACCI(number int unsigned)
returns bigint deterministic
begin
    declare n1,n2,n3 int;
    declare i int default 1;
    case number
        when 0 then return 0;
        when 1 then return 1;
        else
        begin
            set n1 = 0;
            set n2 = 1;
            while i<number do
                set i = i + 1;
                set n3 = n1 + n2;
                set n1 = n2;
                set n2 = n3;
            end while;
#             cycle: loop
#                 set n3 = n1 + n2;
#                 if (i = number) then
#                     leave cycle;
#                 end if;
#                 set n1 = n2;
#                 set n2 = n3;
#             end loop cycle;
            return n3;
        end;
    end case;
end;
select FIBONACCI(10);

drop schema shop;