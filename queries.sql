DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    monthly_income INTEGER,
    province TEXT,
    join_date TEXT
);

INSERT INTO customers VALUES
(1, 'Thabo Mokoena', 34, 15000, 'Gauteng', '2023-01-15'),
(2, 'Naledi Dube', 28, 22000, 'Gauteng', '2023-03-20'),
(3, 'Sipho Ndlovu', 45, 8000, 'KwaZulu-Natal', '2022-11-10'),
(4, 'Ayesha Khan', 31, 35000, 'Western Cape', '2023-06-05'),
(5, 'Pieter van der Berg', 52, 12000, 'Free State', '2022-08-12');

SELECT * FROM customers;

SELECT name, monthly_income, province
FROM customers
WHERE monthly_income >= 15000;

SELECT AVG(monthly_income) AS avg_income FROM customers;

SELECT name, province, monthly_income
FROM customers
WHERE province = 'Gauteng';
