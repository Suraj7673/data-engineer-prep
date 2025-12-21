CREATE DATABASE IF NOT EXISTS de_interview_prep;
USE de_interview_prep;

CREATE TABLE IF NOT EXISTS orders (
    order_id        BIGINT,
    user_id         BIGINT,
    city            STRING,
    amount          DOUBLE,
    payment_mode    STRING,
    order_date      DATE
)
USING DELTA;

INSERT INTO orders VALUES
(1, 101, 'Mumbai', 1200, 'UPI',   '2024-12-01'),
(2, 102, 'Delhi',  800,  'cash',  '2024-12-01'),
(3, 103, 'Pune',   2500, 'card',  '2024-12-02'),
(4, 104, 'Mumbai', 1800, 'UPI',   '2024-12-02'),
(5, 105, 'Delhi',  3200, 'card',  '2024-12-03'),
(6, 106, 'Mumbai', 600,  'UPI',   '2024-12-03'),
(7, 107, 'Pune',   1500, 'cash',  '2024-12-04'),
(8, 108, 'Delhi',  900,  'UPI',   '2024-12-04'),
(9, 109, 'Mumbai', 2100, 'card',  '2024-12-05'),
(10,110, 'Chennai',700,  'UPI',   '2024-12-05');

SELECT * FROM orders;

--Get all orders from Mumbai where amount is between 500 and 2000 and payment is UPI

:param_1 SELECT order_id, city, amount, payment_mode
FROM orders
WHERE city = 'Mumbai'
  AND amount BETWEEN 500 AND 2000
  AND payment_mode = 'UPI';

