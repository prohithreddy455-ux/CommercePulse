-- CommercePulse: Sample E-commerce Data

INSERT INTO customers
(customer_id, customer_name, email, signup_date, country)
VALUES
(1, 'Aarav Sharma', 'aarav@example.com', '2026-01-05', 'India'),
(2, 'Emma Wilson', 'emma@example.com', '2026-01-10', 'USA'),
(3, 'Noah Brown', 'noah@example.com', '2026-02-02', 'UK'),
(4, 'Olivia Davis', 'olivia@example.com', '2026-02-15', 'USA'),
(5, 'Liam Martin', 'liam@example.com', '2026-03-01', 'Canada'),
(6, 'Sophia Taylor', 'sophia@example.com', '2026-03-10', 'UK'),
(7, 'Mason Lee', 'mason@example.com', '2026-04-05', 'India'),
(8, 'Isabella Clark', 'isabella@example.com', '2026-04-12', 'USA');

INSERT INTO products
(product_id, product_name, category, price)
VALUES
(101, 'Wireless Headphones', 'Electronics', 80.00),
(102, 'Mechanical Keyboard', 'Electronics', 120.00),
(103, 'Travel Backpack', 'Accessories', 55.00),
(104, 'Smart Watch', 'Electronics', 150.00),
(105, 'Desk Lamp', 'Home', 35.00),
(106, 'Water Bottle', 'Accessories', 20.00);

INSERT INTO orders
(order_id, customer_id, order_date, order_status)
VALUES
(1001, 1, '2026-05-01', 'Completed'),
(1002, 2, '2026-05-03', 'Completed'),
(1003, 1, '2026-05-15', 'Completed'),
(1004, 3, '2026-05-20', 'Cancelled'),
(1005, 4, '2026-06-02', 'Completed'),
(1006, 5, '2026-06-10', 'Returned'),
(1007, 2, '2026-06-18', 'Completed'),
(1008, 6, '2026-07-01', 'Completed'),
(1009, 7, '2026-07-10', 'Pending'),
(1010, 8, '2026-07-15', 'Completed'),
(1011, 3, '2026-08-05', 'Completed'),
(1012, 4, '2026-08-12', 'Completed');

INSERT INTO order_items
(order_item_id, order_id, product_id, quantity, unit_price, discount)
VALUES
(1, 1001, 101, 1, 80.00, 0),
(2, 1001, 106, 2, 20.00, 0),
(3, 1002, 102, 1, 120.00, 10),
(4, 1003, 104, 1, 150.00, 0),
(5, 1004, 103, 2, 55.00, 0),
(6, 1005, 101, 2, 80.00, 5),
(7, 1006, 104, 1, 150.00, 0),
(8, 1007, 105, 2, 35.00, 0),
(9, 1008, 103, 1, 55.00, 0),
(10, 1009, 106, 3, 20.00, 0),
(11, 1010, 102, 1, 120.00, 15),
(12, 1011, 101, 1, 80.00, 0),
(13, 1011, 105, 1, 35.00, 0),
(14, 1012, 104, 1, 150.00, 10);
