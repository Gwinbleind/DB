use snet0408;
# Вставка
insert into friend_requests (from_user_id, to_user_id)
values (1,2);
# Обновление
update friend_requests
set status='approved'
where from_user_id=1 and to_user_id = 2;
# Удаление
delete from friend_requests
where from_user_id=1 and to_user_id = 2;
# Выбор
select * from friend_requests limit 10;
select concat(name, ' ', surname) 'ФИО' from profiles limit 10;
select distinct name from profiles;
select name, surname from profiles order by name limit 10;
select content,send_at,changed from posts where from_user_id=10;
select content,send_at,changed from posts where content like '%Corporis%';

alter table posts modify content text null;
update posts
set content = null
where id < 5;
select count(*) from posts;
select count(content) from posts;
select * from posts where content is null;

select from_user_id, count(*) 'Count' from post_likes group by from_user_id;

# Репосты
drop table if exists `reposts`;
create table reposts
(
    id serial auto_increment,
    post_id bigint unsigned not null,
    from_user_id bigint unsigned not null,
    to_user_id bigint unsigned not null,
    reposted_at datetime default current_timestamp not null,
    constraint reposts_posts_id_fk
        foreign key (post_id) references posts (id)
            on update cascade on delete cascade,
    constraint reposts_profiles_id_id_fk
        foreign key (from_user_id) references profiles (id)
            on update cascade on delete cascade,
    constraint reposts_profiles_id_id_fk1
        foreign key (to_user_id) references profiles (id)
            on update cascade on delete cascade
);
INSERT INTO `reposts`
(`id`, `post_id`, `from_user_id`, `to_user_id`, `reposted_at`)
VALUES (2,1,1,2,'2020-08-18 23:49:46'),
       (3,1,2,3,'2020-08-18 23:50:14'),
       (4,1,2,4,'2020-08-18 23:50:14');
alter table post_likes
    add like_page bigint unsigned not null;
update post_likes
set like_page = post_id
where 1;
insert into post_likes (from_user_id, post_id, like_page)
select (to_user_id, post_id, from_user_id) from reposts;
insert into post_likes (from_user_id, post_id, like_page)
values (5,1,2),(6,1,1);