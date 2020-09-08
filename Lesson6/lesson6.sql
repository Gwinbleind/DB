use snet0408;
# Работа на уроке
select
    'name surname',
    content
from messages
where to_user_id = 1;
# 2. Самый общительный c юзером id=1
select
    (select concat(name,' ',surname)
        from profiles
        where id = from_user_id) who,
    count(*) amount
from messages
where to_user_id = 2 group by from_user_id
order by amount desc limit 1;
# 3. Лайки 10 самых молодых юзеров
# Пришлось немного поизвращаться, тк limit не работает внутри in
select count(*) as young_likes
from profiles_likes
where to_user_id in (
    select * from
    (select profiles.id
    from profiles
    order by birthday desc
    limit 10) as id
);
# 4. Лайки М/Ж
select if((
    select count(*)
    from profiles_likes
    where from_user_id in (
        select profiles.id
        from profiles
        where gender = 'M'
    )
    )>(
    select count(*)
    from profiles_likes
    where from_user_id in (
        select profiles.id
        from profiles
        where gender = 'F'
    )
    ),'Male','Female');
select count(*)
from profiles_likes
where from_user_id in (
    select profiles.id
    from profiles
    where gender = 'F'
    );
# 5. Наименее активные по сообщениям, лайкам, постам, фото, комментам и репостам в сумме
select count(*) as activity, id from (
    select from_user_id as id from messages union all
    select from_user_id as id from posts union all
    select from_user_id as id from photos union all
    select from_user_id as id from profiles_likes union all
    select from_user_id as id from post_likes union all
    select from_user_id as id from photos_likes union all
    select from_user_id as id from photos_comments union all
    select from_user_id as id from photos_comments union all
    select from_user_id as id from reposts
) as id
group by id
order by activity
limit 10;