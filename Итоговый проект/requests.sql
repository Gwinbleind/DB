use project;
# Каталог мужских моделей одежды, 10 самых дорогих
select
    p.name as name,
    c.name as category,
    a.name as author,
    m.name as material,
    s.name as season,
    price
from products p
    join materials m on p.material_id = m.id
    join categories c on p.category_id = c.id
    join authors a on p.author_id = a.id
    join seasons s on p.season_id = s.id
where c.id = 1 or c.root_category_id = 1
order by price desc limit 10;
# коллекции, не вышедшие из моды (на текущий момент)
select *
from seasons
where to_date > now();
# Все вещи, не вышедшие из моды
select *
from products p
where season_id in (
    select id
    from seasons s
    where to_date > now());
# Мужские вещи, не вышедшие из моды
select
    p.name as name,
    c.name as category,
    a.name as author,
    m.name as material,
    s.name as season,
    price
from products p
    join materials m on p.material_id = m.id
    join categories c on p.category_id = c.id
    join authors a on p.author_id = a.id
    join seasons s on p.season_id = s.id
where (c.id = 1 or c.root_category_id = 1) and
    season_id in (
        select id
        from seasons s
        where to_date > now()
    );

select BD_is_coming(date(now()),'1992-09-10')
