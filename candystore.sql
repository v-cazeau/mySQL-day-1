-- Create candystore database: 
CREATE DATABASE candystore; 

-- Switch to candystore database: 
USE candystore; 

-- Create the customer table: 
CREATE TABLE customer (
    customerId INT AUTO_INCREMENT PRIMARY KEY, 
    firstName VARCHAR(20) NOT NULL, 
    lastName VARCHAR(20) NOT NULL, 
    email VARCHAR(30), 
    phone VARCHAR(20), 
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
); 

-- Add our first customer:
INSERT INTO customer (firstName, lastName, email, phone)
VALUES ('Damian', 'Montero', 'damian@bocacode.com', '976-CODE');

-- Let's get ALL of the customers: 
SELECT * FROM customer;

-- Add Cassandra Curcio
INSERT INTO customer (firstName, lastName, email, phone)
VALUES ('Cassandra', 'Cursio', 'cassandra@bocacode.com', '954-CATS');


-- To find a specific customer, I can run:
SELECT * FROM customer WHERE firstName = 'Cassandra'


-- Create the orders table: 
CREATE TABLE orders (
    orderId INT AUTO_INCREMENT PRIMARY KEY,
    customerId INT NOT NULL, 
    total DECIMAL(8,2),
    tax DECIMAL(7,2),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
); 

-- now let's add an order to our order table: 

INSERT INTO orders (customerId, total, tax) 
VALUES (1, 19.48, 0.18), (2, 49.26, 3.44);

-- we can show the orders by: 
SELECT * FROM orders;

-- How can I search for all of Damian's orders?

SELECT * FROM customer
JOIN orders ON orders.customerId = customer.customerId
WHERE firstName = 'Damian'; 