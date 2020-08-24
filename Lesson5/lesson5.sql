use snet0408;
alter table users
    add column updated_at datetime;

# 1. Заполнение пустых строк
update users set
created_at=current_timestamp,
updated_at=current_timestamp
where 1;

# 2. Преобразование varchar в datetime на примере тестовой таблицы
use snet0408;
drop table if exists test_users;
create table if not exists test_users
(
    id serial,
    created_at varchar(16),
    updated_at varchar(16)
);
insert into test_users
    (created_at, updated_at)
values
    ('20.10.2017 8:30','20.10.2018 13:5'),
    ('2.10.2017 18:30','20.1.2018 18:30');
# Добавляем новые столбцы, пересчитываем их из старых,
# а затем заменяем новые столбцы старыми
alter table test_users add
(
    created_at_test datetime,
    updated_at_test datetime
);
update test_users set
    created_at_test=str_to_date(created_at,'%d.%m.%Y %T'),
    updated_at_test=str_to_date(updated_at,'%d.%m.%Y %T')
where 1;
alter table test_users drop column created_at;
alter table test_users drop column updated_at;
alter table test_users change created_at_test created_at datetime;
alter table test_users change updated_at_test updated_at datetime;
drop table if exists test_users;
# 3. Сортировка с нолями в конце на примере тестовой таблицы
drop table if exists test_products;
create table if not exists test_products
(
id serial,
value int
);
insert into test_products (value) values (0), (2500), (0), (30), (500), (1);
# Два варианта сортировки: через if и case
select value from test_products order by if(value>0,0,1),value;
select value from test_products
order by
case
    when value>0 then 0
    else 1 end,
value;
drop table if exists test_products;
# 4*. Юзеры, которые родились в мае или августе. Запрос не рабочий, не совпадает с таблицей
select * from users where month in ('may','august');
# 5*. Сортировка в произвольном порядке. Запрос не рабочий, не совпадает с таблицей
select * from catalogs where id in (5,1,2) order by
case
    when id = 5 then 0
    when id = 1 then 1
    when id = 2 then 2
    else 3
end;

# 1. Средний возраст пользователей. Возраст целый, среднее значение дробное
select avg(floor(datediff(now(),birthday)/365.25)) from profiles;
# 2. Количество юзеров по дням недели, на которые приходится ДР в этом году
select count(id),
       dayofweek(
           date_add(
               date_add(
                   makedate(year(now()),1),
                   interval month(birthday)-1 MONTH),
               interval day(birthday)-1 DAY)) dow
       from profiles
group by
    dayofweek(
        date_add(
            date_add(
                makedate(year(now()),1),
                interval month(birthday)-1 MONTH),
            interval day(birthday)-1 DAY))
order by
    dayofweek(
        date_add(
            date_add(
                makedate(year(now()),1),
                interval month(birthday)-1 MONTH),
            interval day(birthday)-1 DAY));
# Можно ли сократить этот запрос, не повторяя трижды одну и ту же формулу расчета дня недели?

# 3. Произведение через log
drop table if exists test;
create table if not exists test
(
value int
);
insert into test (value)
values (1),(2),(3),(4),(5);
select round(exp(SUM(log(value))),9) from test;
drop table if exists test;