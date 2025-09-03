CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    country TEXT,
    signup_date DATE
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    order_date DATE,
    channel TEXT,           -- 'web' / 'mobile' / 'ads'
    amount NUMERIC(10,2),   -- сумма заказа $
    status TEXT             -- 'paid' / 'refunded' / 'pending'
);
