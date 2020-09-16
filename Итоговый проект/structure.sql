drop schema if exists project;
create schema project;
use project;

drop table if exists categories;
create table categories
(
    id serial not null,
    name varchar(20) not null,
    root_category_id bigint unsigned default null null,
    constraint category_pk
        primary key (id)
);
create unique index category_id_uindex
    on categories (id);

drop table if exists materials;
create table materials
(
    id serial not null,
    name varchar(20) null,
    constraint materials_pk
        primary key (id)
);
create unique index materials_name_uindex
    on materials (name);

drop table if exists sizes;
create table sizes
(
    id serial not null,
    name varchar(20) null,
    constraint sizes_pk
        primary key (id)
);
create unique index sizes_name_uindex
    on sizes (name);

drop table if exists authors;
create table authors
(
    id serial not null,
    name varchar(20) null,
    constraint authors_pk
        primary key (id)
);
create unique index authors_name_uindex
    on authors (name);

drop table if exists seasons;
create table seasons
(
    id serial not null,
    name varchar(20) not null,
    from_date date not null,
    to_date date not null,
    constraint seasons_pk
        primary key (name)
);
create unique index seasons_name_from_date_to_date_uindex
    on seasons (name, from_date, to_date);

drop table if exists products;
create table products
(
    id serial not null,
    category_id bigint unsigned,
    name varchar(40) not null,
    price decimal(10,2) not null,
    material_id bigint unsigned,
    author_id bigint unsigned,
    season_id bigint unsigned,
    deleted bool not null,
    constraint Products_pk
        primary key (id),
    constraint Products_category_id_fk
        foreign key (category_id) references categories (id)
            on update cascade on delete set null,
    constraint Products_materials_id_fk
        foreign key (material_id) references materials (id)
            on update cascade on delete set null,
    constraint Products_authors_id_fk
        foreign key (author_id) references authors (id)
            on update cascade on delete set null,
    constraint Products_seasons_id_fk
        foreign key (season_id) references seasons (id)
            on update cascade on delete set null
);

drop table if exists users;
create table users
(
    id serial not null,
    login varchar(20) not null,
    pass_hash varchar(32) not null,
    session varchar(20) null,
    token varchar(20) null,
    constraint users_pk
        primary key (id)
);
create unique index users_login_uindex
    on users (login);

drop table if exists profiles;
create table profiles
(
    id bigint unsigned not null,
    name varchar(20) null,
    surname varchar(25) null,
    gender enum('M', 'F') null,
    birthday date null,
    email varchar(30) not null,
    address text null,
    phone int null,
    constraint profiles_pk
        primary key (id),
    constraint profiles_users_id_fk
        foreign key (id) references users (id)
            on update cascade on delete cascade
);

drop table if exists stores;
create table stores
(
    id serial not null,
    city varchar(20) not null,
    address text not null,
    open_time time not null,
    close_time time not null,
    constraint stores_pk
        primary key (id)
);
create index stores_city_index
    on stores (city);

drop table if exists warehouse;
create table warehouse
(
    id serial not null,
    store_id bigint unsigned not null,
    product_id bigint unsigned not null,
    size_id bigint unsigned not null,
    amount int not null,
    constraint warehouse_pk
        primary key (id),
    constraint warehouse_products_id_fk
        foreign key (product_id) references products (id)
            on update cascade on delete cascade,
    constraint warehouse_stores_id_fk
        foreign key (store_id) references stores (id)
            on update cascade on delete cascade,
    constraint warehouse_sizes_id_fk
        foreign key (size_id) references sizes (id)
            on update cascade
);

drop table if exists order_statuses;
create table order_statuses
(
    id serial not null,
    name varchar(15) not null,
    constraint order_statuses_pk
        primary key (id)
);
create unique index order_statuses_name_uindex
    on order_statuses (name);

drop table if exists orders;
create table orders
(
    id serial not null,
    user_id bigint unsigned not null,
    cost int unsigned not null,
    store_id bigint unsigned not null,
    order_date datetime not null,
    delivery_date datetime not null,
    status_id bigint unsigned not null,
    constraint orders_pk
        primary key (id),
    constraint orders_stores_id_fk
        foreign key (store_id) references stores (id)
            on update cascade,
    constraint orders_users_id_fk
        foreign key (user_id) references users (id)
            on update cascade,
    constraint orders_order_statuses_id_fk
        foreign key (status_id) references order_statuses (id)
            on update cascade
);

drop table if exists order_products;
create table order_products
(
    id serial not null,
    order_id bigint unsigned not null,
    product_id bigint unsigned not null,
    size_id bigint unsigned not null,
    amount int unsigned not null,
    price int unsigned not null,
    cost int as (amount * price),
    constraint order_products_pk
        primary key (id),
    constraint order_products_orders_id_fk
        foreign key (order_id) references orders (id)
            on update cascade,
    constraint order_products_products_id_fk
        foreign key (product_id) references products (id)
            on update cascade,
    constraint order_products_sizes_id_fk
        foreign key (size_id) references sizes (id)
            on update cascade
);

drop table if exists cart;
create table cart
(
    id serial not null,
    user_id bigint unsigned null,
    session varchar(20) null,
    product_id bigint unsigned not null,
    amount int unsigned not null,
    constraint cart_pk
        primary key (id),
    constraint cart_products_id_fk
        foreign key (product_id) references products (id)
            on update cascade on delete cascade,
    constraint cart_users_id_fk
        foreign key (user_id) references users (id)
            on update cascade on delete cascade
);

# Хранимые процедуры и функции.

drop function if exists BD_is_coming;
create function BD_is_coming(from_date date, bd date)
    returns bigint deterministic
begin
    declare days decimal;
    set days = round(mod(datediff(from_date,bd),365.25));
    if (days > 365.25/2) then
        return round(365.25-mod(datediff(from_date,bd),365.25));
    else
        return -round(mod(datediff(from_date,bd),365.25));
    end if;
end;

# Представления

drop view if exists user_info;
create view user_info as
    select
        u.login as Login,
        concat(p.name,' ',p.surname) as Name,
        round(datediff(now(),birthday)/365.25) as Age
#            ,
#         mod(datediff(now(),birthday),365.25) as beforeBD
    from users u
    join profiles p on u.id = p.id