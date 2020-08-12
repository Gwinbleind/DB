drop database if exists `snet0408`;
create database `snet0408`;
use `snet0408`;

# Данные пользователей
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
    id bigint unsigned not null,
    name varchar(25) not null,
    surname varchar(25) not null,
    gender varchar(1) not null,
    birthday date null,
    avatar_id bigint null,
    constraint profiles_pk
        primary key (id),
    constraint profiles_users_id_fk
        foreign key (id) references users (id)
            on update cascade on delete cascade
);
drop table if exists profiles_likes;
create table if not exists profiles_likes
(
    id serial not null,
    from_user_id bigint unsigned not null,
    to_user_id bigint unsigned not null,
    send_at datetime default current_timestamp not null,
    constraint profiles_likes_profiles_id_fk
        foreign key (from_user_id) references profiles (id)
            on update cascade on delete cascade,
    constraint profiles_likes_profiles_id_fk2
        foreign key (to_user_id) references profiles (id)
            on update cascade on delete cascade
);

# Запросы в друзья
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
    constraint friend_requests_profiles_id_fk
        foreign key (from_user_id) references profiles (id)
            on update cascade on delete cascade,
    constraint friend_requests_profiles_id_fk_2
        foreign key (to_user_id) references profiles (id)
            on update cascade on delete cascade
);

# Личные сообщения
drop table if exists messages;
create table if not exists messages
(
    id serial not null,
    from_user_id bigint unsigned not null,
    to_user_id bigint unsigned not null,
    content text not null,
    send_at datetime default current_timestamp not null,
    change_at datetime default current_timestamp on update current_timestamp not null,
    changed bool default false,
    constraint messages_profiles_id_fk
        foreign key (from_user_id) references profiles (id)
            on update cascade on delete cascade,
    constraint messages_profiles_id_fk_2
        foreign key (to_user_id) references profiles (id)
            on update cascade on delete cascade
);

# Фотографии
drop table if exists photos;
create table if not exists photos
(
    id serial not null,
    from_user_id bigint unsigned not null,
    photo_id varchar(100) not null,
    send_at datetime default current_timestamp not null,
    change_at datetime default current_timestamp on update current_timestamp not null,
    changed bool default false,
    constraint photos_profiles_id_fk
        foreign key (from_user_id) references profiles (id)
            on update cascade on delete cascade
);
drop table if exists photos_comments;
create table if not exists photos_comments
(
    id serial not null,
    from_user_id bigint unsigned not null,
    photo_id bigint unsigned not null,
    content text not null,
    send_at datetime default current_timestamp not null,
    change_at datetime default current_timestamp on update current_timestamp not null,
    changed bool default false,
    constraint photos_comments_profiles_id_fk
        foreign key (from_user_id) references profiles (id)
            on update cascade on delete cascade,
    constraint photos_comments_profiles_id_fk2
        foreign key (photo_id) references photos (id)
            on update cascade on delete cascade
);
drop table if exists photos_likes;
create table if not exists photos_likes
(
    id serial not null,
    from_user_id bigint unsigned not null,
    photo_id bigint unsigned not null,
    send_at datetime default current_timestamp not null,
    constraint photos_likes_profiles_id_fk
        foreign key (from_user_id) references profiles (id)
            on update cascade on delete cascade,
    constraint photos_likes_profiles_id_fk2
        foreign key (photo_id) references photos (id)
            on update cascade on delete cascade
);

# Посты
drop table if exists posts;
create table if not exists posts
(
    id serial not null,
    from_user_id bigint unsigned not null,
    content text not null,
    send_at datetime default current_timestamp not null,
    change_at datetime default current_timestamp on update current_timestamp not null,
    changed bool default false,
    constraint posts_profiles_id_fk
        foreign key (from_user_id) references profiles (id)
            on update cascade on delete cascade
);
drop table if exists post_comments;
create table if not exists post_comments
(
    id serial not null,
    from_user_id bigint unsigned not null,
    post_id bigint unsigned not null,
    content text not null,
    send_at datetime default current_timestamp not null,
    change_at datetime default current_timestamp on update current_timestamp not null,
    changed bool default false,
    constraint post_comments_profiles_id_fk
        foreign key (from_user_id) references profiles (id)
            on update cascade on delete cascade,
    constraint post_comments_posts_id_fk2
        foreign key (post_id) references posts (id)
            on update cascade on delete cascade
);
drop table if exists post_likes;
create table if not exists post_likes
(
    id serial not null,
    from_user_id bigint unsigned not null,
    post_id bigint unsigned not null,
    send_at datetime default current_timestamp not null,
    constraint post_likes_profiles_id_fk
        foreign key (from_user_id) references profiles (id)
            on update cascade on delete cascade,
    constraint post_likes_posts_id_fk2
        foreign key (post_id) references posts (id)
            on update cascade on delete cascade
);