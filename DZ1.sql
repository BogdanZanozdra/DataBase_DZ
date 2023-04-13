CREATE DATABASE IF NOT EXISTS DZ1;
USE DZ1;
CREATE TABLE IF NOT EXISTS phones
(id INT PRIMARY KEY AUTO_INCREMENT,
model VARCHAR(45),
brand VARCHAR(45),
product_count INT,
price INT
);

INSERT phones(model, brand, product_count, price)
VALUES
	('Iphone X', 'Apple', 2, 78000),
	('Iphone 11', 'Apple', 3, 85000),
    ('Galaxy S10', 'Sumsung', 1, 60000),
    ('Galaxy S9', 'Sumsung', 3, 50000),
    ('Mi 8', 'Xiaomi', 5, 35000);
    
SELECT *
FROM phones;
    
#1 Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT brand, price
FROM phones
WHERE product_count > 2;

#2  Выведите весь ассортимент товаров марки “Samsung”
SELECT *
FROM phones
WHERE brand = 'Sumsung';

#3 Выведите информацию о телефонах, где суммарный чек больше 100000 и меньше 145000.
SELECT *
FROM phones
WHERE price * product_count > 100000 && price * product_count < 200000;

SELECT *
FROM phones
WHERE model LIKE 'Iphone%';

SELECT *
FROM phones
WHERE model RLIKE '[:digit:]';

SELECT *
FROM phones
WHERE model RLIKE '10';
