-- This table doesn't have a foreign key
CREATE TABLE Customer1 (
  id INT PRIMARY KEY,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  age INT,
  country VARCHAR(10));
  
-- Adding foreign key to the customer_id field
-- The foreign key references to the id field of the Customers table
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  item VARCHAR(40),
  amount INT,
  customer_id INT REFERENCES Customer1(id));
  
  
  
-- Inserting record in table with no foreign key first
INSERT INTO Customer1(id,first_name,last_name,age,country)
VALUES(1, 'John', 'Doe', 31, 'USA');

INSERT INTO Customer1(id,first_name,last_name,age,country)
VALUES(2, 'jk', 'asd', 32, 'UK');



-- Insertion Success
INSERT INTO Orders
(order_id,item,amount,customer_id)VALUES(4, 'Keyboard', 400, 7);

select * from customer1;
select * from orders;

--inner
select c.id,o.order_id
from customer1 c
inner join orders o
on c.id=o.order_id;

--left
select c.id,o.order_id
from customer1 c
left join orders o
on c.id=o.order_id;

--right
select c.id,o.order_id
from customer1 c
inner join orders o
on c.id=o.order_id;

--
select c.id,o.order_id
from customer1 c
full join orders o
on c.id=o.order_id;
