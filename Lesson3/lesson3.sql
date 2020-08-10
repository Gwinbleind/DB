drop database if exists `snet0408`;
create database `snet0408`;
use `snet0408`;

drop table if exists `users`;
create table if not exists `users`
(
    id serial,
    email varchar(50) not null,
    phone bigint not null,
    pass_hash varchar(100) not null,
    created_at datetime not null default current_timestamp,
    can_comment bool null,
    who_can_view enum('all', 'friends_of_friends', 'friends', 'me') default 'all' not null,
    who_can_message enum('all', 'friends_of_friends', 'friends', 'me') default 'all' null,
    who_can_invite enum('all', 'friends_of_friends', 'friends', 'me') default 'all' null,
    constraint users_pk
        primary key (id)
);
create unique index users_email_index
    on users (email);

drop table if exists `profiles`;
create table `profiles`
(
    user_id bigint unsigned not null,
    name varchar(25) not null,
    surname varchar(25) not null,
    gender varchar(1) not null,
    birthday date null,
    avatar_id bigint null,
    constraint profiles_pk
        primary key (user_id),
    constraint profiles_users_id_fk
        foreign key (user_id) references users (id)
            on update cascade on delete cascade
);

insert into `users` (email, phone, pass_hash, created_at, can_comment, who_can_view, who_can_message, who_can_invite)
values ('1@2.com', 79876543210, '1', '2020-08-10 22:04:18', 1, default, default, default);
insert into `profiles` (user_id, name, surname, gender, birthday, avatar_id)
values (1,'Name','Surname','M','2000-08-10',1);

drop table if exists `friend_requests`;
create table `friend_requests`
(
    id serial null,
    from_user_id bigint unsigned not null,
    to_user_id bigint unsigned not null,
    status enum('send','approved','declined','denied') default 'send',
    sent_at datetime default current_timestamp,
    updated_at datetime null,
    constraint friend_requests_pk
        primary key (from_user_id, to_user_id),
    constraint friend_requests_users_id_fk
        foreign key (from_user_id) references users (id)
            on update cascade on delete cascade,
    constraint friend_requests_users_id_fk_2
        foreign key (from_user_id) references users (id)
            on update cascade on delete cascade
);