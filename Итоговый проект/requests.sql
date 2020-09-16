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
# Список городов, в которых есть магазины
select distinct
    city
from stores;
# Мужские товары в магазинах моего города Moenhaven, все доступные в городе размеры, отсортированы по ценам
select
    p.name as Product,
    a.name as Author,
    group_concat(distinct sz.name order by sz.id) as Sizes,
    min(price) as Price
from products p
    join warehouse w on p.id = w.product_id
    join stores s on w.store_id = s.id
    join sizes sz on w.size_id = sz.id
    join authors a on p.author_id = a.id
    join categories c on p.category_id = c.id
where city = 'Moenhaven' and (c.id = 1 or c.root_category_id = 1)
group by p.name,a.name
order by Price;
# Список заказов пользователя id=1
select
       orders.id,
       s.city as `Доставка из`,
       order_date as 'Заказано',
       os.name as 'Статус заказа',
       cost as 'Цена'
from orders
    join stores s on orders.store_id = s.id
    join order_statuses os on orders.status_id = os.id
where user_id = 1;
# Список товаров от пользователя id=1 в заказе id=9
select
    p.name as Product,
    s.name as Size,
    amount,
    p.price,
    cost
from order_products
    join products p on order_products.product_id = p.id
    join sizes s on order_products.size_id = s.id
where order_id = 9;

# Проверка формулы, рассчитывающей разницу сегодня с ближайшим днем рождения
select BD_is_coming(date(now()),'1992-09-10');

# Корзина пользователя с id=1
# Update cart
update cart set
    user_id = null
where not session = '';
update cart set
    session = null
where user_id is not null;

select
    id,
    user_id,
    isnull(user_id),
    session,
    isnull(session),
    session = ''
from cart;

select
    p.name as Product,
    c.amount
from cart c
    join products p on c.product_id = p.id
where user_id = 1;