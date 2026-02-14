ALTER TABLE orders
ADD COLUMN date_created DATE;

ALTER TABLE product
ADD COLUMN price INTEGER;

UPDATE orders o
SET date_created = od.date_created
FROM orders_date od
WHERE od.order_id = o.id;

UPDATE product p
SET price = pi.price
FROM product_info pi
WHERE pi.product_id = p.id;

DROP TABLE orders_date;
DROP TABLE product_info;