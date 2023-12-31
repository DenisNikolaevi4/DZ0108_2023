CREATE DATABASE IF NOT EXISTS DZ108_2023;

use DZ108_2023;

-- Задача 1

CREATE TABLE IF NOT EXISTS sales (
  id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  order_date DATE NOT NULL,
  count_product INT not null
 );
 
 INSERT INTO sales (order_date, count_product)
VALUES 
  ('2022-01-01', '156'),
  ('2022-01-02', '180'),
  ('2022-01-03', '21'),
  ('2022-01-04', '124'),
  ('2022-01-05', '341');
  
  select * from sales ;
  
    -- Задача 2
  
    SELECT id, -- Перед CASE ставится запятая
CASE
	WHEN count_product < 100 THEN 'Маленький заказ'
    WHEN count_product BETWEEN 100 and 300 THEN "Средний заказ"
    WHEN count_product > 300 THEN 'Большой заказ'
    END AS Type_zakaz
FROM sales;

select * from sales ;

    -- Задача 3

CREATE TABLE IF NOT EXISTS orders (
  id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  employee_id VARCHAR(10) ,
  amount FLOAT,
  order_status varchar(15)
     );

 INSERT INTO orders (employee_id, amount, order_status)
VALUES 
  ('e03', '15.00', 'OPEN'),
  ('e01', '25.50', 'OPEN'),
  ('e05', '100.70', 'CLOSED'),
  ('e02', '22.18', 'OPEN'),
  ('e04', '9.50', 'CANCELLED');  
  
    SELECT id, -- Перед CASE ставится запятая
CASE
	WHEN order_status = 'OPEN' THEN 'Order is in open state'
    WHEN order_status = 'CLOSED' THEN 'Order is closed'
    WHEN order_status = 'CANCELLED' THEN 'Order is cancelled'
    END AS full_order_status
FROM orders;
  
  select * from orders ;
  
      -- Задача 4
/* 0  - это значение "0", а NULL - это путая ячейка, без каких либо значений.*/