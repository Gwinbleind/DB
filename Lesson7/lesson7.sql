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
# 2. 