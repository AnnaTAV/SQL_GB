CREATE DATABASE HT1;
USE HT1;
CREATE TABLE MTelephone
(
ID INT NOT NULL AUTO_INCREMENT,
ProductName VARCHAR(45) NOT NULL,
Manufacturer VARCHAR(45) NULL,
ProductCount DOUBLE NULL,
Price DOUBLE NULL,
PRIMARY KEY (ID)
);

INSERT MTelephone
(
ProductName, Manufacturer, ProductCount, Price
)
VALUES
('iPhone X', 'Apple', 3, 76000),
('iPhone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huawei', 5, 36000);

-- 2. Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT ProductName, Manufacturer, Price
FROM MTelephone
WHERE ProductCount > 2;

-- 3. Выведите весь ассортимент товаров марки “Samsung”
SELECT *
FROM MTelephone
WHERE Manufacturer = 'Samsung';

-- 4. Товары, в которых есть упоминание "Iphone"
SELECT *
FROM MTelephone
WHERE ProductName LIKE '%iPhone%';

-- 5. Товары, в которых есть упоминание "Galaxy"
SELECT *
FROM MTelephone
WHERE ProductName LIKE '%Galaxy%';

-- 6. Товары, в которых есть ЦИФРА "8"
SELECT *
FROM MTelephone
WHERE ProductName RLIKE '8'