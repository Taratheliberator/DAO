CREATE table CUSTOMERS
(
    id           INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    name         VARCHAR,
    surname      VARCHAR,
    age          INT,
    phone_number VARCHAR
);
INSERT INTO CUSTOMERS (name, surname, age, phone_number)
VALUES
    ('Alexey', 'Doe', 30, '123-456-7890'),
    ('Jane', 'Smith', 25, '555-555-5555'),
    ('Bob', 'Johnson', 45, '111-222-3333'),
    ('Alice', 'Williams', 50, '444-444-4444'),
    ('David', 'Brown', 28, '777-777-7777'),
    ('Sarah', 'Davis', 33, '999-999-9999');


CREATE table ORDERS
(
    id           INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    date         TIMESTAMP,
    customer_id  INT,
    product_name VARCHAR,
    amount       INT,
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS (id)
);
INSERT INTO ORDERS (date, customer_id, product_name, amount)
VALUES
    ('2023-04-01', 1, 'Nike Air Max', 150.00),
    ('2023-04-02', 2, 'Samsung Galaxy S21', 999.00),
    ('2023-04-03', 3, 'Apple MacBook Pro', 1799.00),
    ('2023-04-04', 4, 'Sony PlayStation 5', 499.99),
    ('2023-04-05', 5, 'Bose QuietComfort 35 II', 299.00),
    ('2023-04-06', 6, 'Fitbit Versa 3', 229.95);