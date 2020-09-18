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
       s.city as `Deliver from`,
       order_date as 'Ordered at',
       os.name as 'Order status',
       cost as 'Cost'
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
select
    p.name as Product,
    c.amount
from cart c
    join products p on c.product_id = p.id
where user_id = 1;

# Cart to Order
# TODO: Потестить процедуру
create procedure sp_trans_cart_to_order(in _store_id int, in _user bigint unsigned, out result varchar(200))
begin
    declare _rollback, _complite, _available bool default 0;
    declare _error_code, _error_message varchar(200);
    declare _count, _product_id, _size_id, _amount, _order_id,
        _cart_id, _warehouse_amount, _warehouse_id bigint unsigned;
    declare _cost, _price decimal unsigned;
    # Курсор для обработки корзины
    declare cursor_cart cursor for
        select c.id, product_id, size_id, amount, price
        from cart c
                 join products p on c.product_id = p.id
        where user_id = _user;
    declare continue handler for sqlstate '02000' set _complite = 1;
    # Обработчик ошибок при транзакции
    declare continue handler for sqlexception
        begin
            set _rollback = 1;
            get stacked diagnostics condition 1
                _error_code = returned_sqlstate, _error_message = message_text;
            set result = concat('Error: ',_error_code,', message:',_error_message);
        end;
    # Проверим корзину юзера
    set _count =
        (select count(id)
        from cart
        where user_id = _user);
    if (_count > 0) then
        # Создать новый заказ
        insert orders
            (user_id, cost, store_id, order_date, delivery_date, status_id) VALUE
            (_user,_cost,_store_id,current_timestamp,date_add(current_timestamp,interval 7 day),1);
        set _order_id = last_insert_id();
        # Заполнить данные заказа
        open cursor_cart;
        repeat
            set _rollback = 0;
            # Транзакция
            fetch cursor_cart into
                _cart_id,_product_id,_size_id,_amount,_price;
            start transaction;
            # Проверка на конец курсора
            if (not _complite) then
                # Проверка на доступность товара на складе
                select id,amount
                into _warehouse_id, _warehouse_amount
                from warehouse
                where
                    store_id = _store_id and
                    size_id = _size_id and
                    product_id = _product_id;
                if (_warehouse_amount is not null and _warehouse_amount >= _amount) then
                    # Вставка позиции в заказ, удаление из корзины, уменьшение склада
                    insert order_products
                    (order_id, product_id, size_id, amount, price) value
                        (_order_id, _product_id, _size_id, _amount, _price);
                    delete from cart where id = _cart_id;
                    update warehouse set
                        amount = amount - _amount
                    where id = _warehouse_id;
                end if;
            end if;
            # Выбор commit/rollback
            if (_rollback) then
                rollback;
            else
                set result = 'OK';
                commit;
            end if;
            # Конец транзакции
        until _complite end repeat;
        # Проверка успешности операции, подсчет суммы заказа
        select sum(o.cost)
        into _cost
        from order_products o
            join products p on o.product_id = p.id
        where order_id = _order_id;
        # Если сумма заказа по итогу null, то заказ не успешен
        if (_cost is not null) then
            update orders set
                cost = _cost
            where id = _order_id;
        else
            delete from orders where id = _order_id;
        end if;
    end if;
end;

# Test

select sum(o.cost)
into @a
from order_products o
join products p on o.product_id = p.id
where order_id = 1000;
select @a;
