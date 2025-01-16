-- create a table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    product_line VARCHAR(50)
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    product_id INT,
    amount DECIMAL(10, 2),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
-- insert some values
INSERT INTO products (product_id, product_name, product_line) VALUES
(1, 'Quadro RTX 8000', 'GPU'),
(2, 'Quadro RTX 6000', 'GPU'),
(3, 'GeForce RTX 3060', 'GPU'),
(4, 'BlueField-3', 'DPU');

-- Inserting data into 'transactions' table
INSERT INTO transactions (transaction_id, product_id, amount) VALUES
(101, 1, 5000),
(102, 2, 4200),
(103, 3, 9000),
(104, 4, 7000);

-- fetch some values
SELECT * FROM PRODUCTS;
SELECT * FROM TRANSACTIONS;
WITH ProductRevenue AS (
    SELECT 
        p.product_line,
        SUM(t.amount) AS total_revenue
    FROM 
        products p
    JOIN 
        transactions t ON p.product_id = t.product_id
    GROUP BY 
        p.product_line
)
SELECT 
    product_line, 
    total_revenue
FROM 
    ProductRevenue
ORDER BY 
    total_revenue DESC;


