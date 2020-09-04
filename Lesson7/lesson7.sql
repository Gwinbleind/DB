use snet0408;
# 1. Пользователи, делавшие заказы
drop table if exists test_users;
create table if not exists test_users (
    id serial not null,
    name varchar(10) not null
);
insert into test_users (name) values
('user1'), ('user2'), ('user3'), ('user4'), ('user5');

drop table if exists test_orders;
create table if not exists test_orders (
    id serial not null,
    user_id bigint unsigned not null,
    date datetime not null,
    amount int unsigned not null,
    constraint `users_user_id` foreign key (`user_id`) references `test_users`(`id`) on delete cascade on update cascade
);
insert into test_orders (date, amount, user_id) values
(current_timestamp,1,1),(current_timestamp,2,1),(current_timestamp,3,3),(current_timestamp,3,5);

select * from test_users as tu
where exists(select test_orders.id from test_orders where user_id = tu.id);

drop table if exists test_orders;
drop table if exists test_users;
# 2. Список товаров и разделов
drop table if exists test_categories;
create table if not exists test_categories (
    id serial not null,
    name varchar(10)
);
insert test_categories (name) values
('Car'),('Smartphone'),('Notebook');

drop table if exists test_products;
create table if not exists test_products (
    id serial not null,
    name varchar(10),
    category_id bigint unsigned not null,
    constraint `products_categories_id`
        foreign key (category_id) references test_categories(id) on DELETE cascade on update cascade
);
insert test_products (name, category_id) values
('Mersedes',1),('BMV',1),('Walkmann',2),('HP',3);

select
    name,
    (select name from test_categories ca
    where ca.id = category_id) 'category'
from test_products;

drop table if exists test_products;
drop table if exists test_categories;

# 3.
drop table if exists test_cities;
create table if not exists test_cities (
    id serial not null,
    label varchar(10),
    name varchar(10)
);
create index test_cities_name_index
    on test_cities (label);

insert test_cities (label, name) values
('moscow','Москва'),('irkutsk','Иркутск'),
('novgorod','Новгород'),('kazan','Казань'),('omsk','Омск');
drop table if exists test_flights;
create table if not exists test_flights
(
    id serial not null,
    `from` varchar(10) not null,
    `to` varchar(10) null,
    constraint test_flights_cities_name_fk
        foreign key (`from`) references test_cities (label),
    constraint test_flights_cities_name_fk2
        foreign key (`to`) references test_cities (label)
);
insert test_flights (`from`, `to`) values
('moscow','omsk'),('novgorod','kazan'),('irkutsk','moscow'),
('omsk','irkutsk'),('moscow','kazan');

select
    (select name from test_cities
        where label = `from`) `from`,
    (select name from test_cities
        where label = `to`) `to`
from test_flights;