create DATABASE ecommerce;
use ecommerce;
commit;
create TABLE customer(customer_id int primary key,customer_name varchar(30),customer_phone int,customer_email varchar(60),address varchar(50));
create TABLE supplier(supplier_id int primary key,supplier_name varchar(30),gstin int,domain varchar(30) ,supplier_phone int,email varchar(50));
create TABLE orders(order_id int primary key,order_date date,total_order_value int,delivery_date date,customer_id int,supplier_id int,FOREIGN KEY(customer_id) references customer(customer_id) on delete cascade,FOREIGN KEY(supplier_id) references supplier(supplier_id) on delete cascade);
create TABLE shipper(shipper_id int primary key,shipper_name varchar(30),shipper_email varchar(50),phone_number int,supplier_id int,FOREIGN KEY(supplier_id) references supplier(supplier_id) on delete cascade);
create TABLE product(product_id int primary key,product_name varchar(30),brand varchar(30),product_domain varchar(30),quantity int,supplier_id int,FOREIGN KEY(supplier_id) references supplier(supplier_id) on delete cascade);

select * from supplier;
select * from customer;
INSERT INTO customer(customer_id, customer_name, customer_phone, customer_email, address)
VALUES(1, 'John Smith', 12356890, 'john@example.com', '123 Main St');
update customer set customer_phone=123456789 where customer_id=1;
INSERT INTO customer(customer_id, customer_name, customer_phone, customer_email, address)
VALUES(2, 'Jane Doe', 987653210, 'jane@example.com', '456 Elm St'),
    (3, 'Alice Johnson', 555234567, 'alice@example.com', '789 Oak St'),
    (4, 'Bob Brown', 333555777, 'bob@example.com', '321 Pine St'),
    (5, 'Emily Williams', 448889999, 'emily@example.com', '654 Maple St'),
    (6, 'Michael Davis', 777113333, 'michael@example.com', '987 Cedar St'),
    (7, 'Samantha Wilson', 222994444, 'samantha@example.com', '741 Birch St');
show tables;
select * from customer;
DELETE FROM customer where customer_id = 7;
select * from customer;
INSERT INTO customer(customer_id, customer_name, customer_phone, customer_email, address)
VALUES(1, 'John Smith', 123457890, 'john@example.com', '123 Main St'),
(2, 'Jane Doe', 987654310, 'jane@example.com', '456 Elm St'),
    (3, 'Alice Johnson', 551234567, 'alice@example.com', '789 Oak St'),
    (4, 'Bob Brown', 333557777, 'bob@example.com', '321 Pine St'),
    (5, 'Emily Williams', 448889999, 'emily@example.com', '654 Maple St'),
    (6, 'Michael Davis', 777113333, 'michael@example.com', '987 Cedar St'),
    (7, 'Samantha Wilson', 222994444, 'samantha@example.com', '741 Birch St');
    select * from customer;

INSERT INTO supplier (supplier_id, supplier_name, gstin, domain, supplier_phone, email)
VALUES
    (101, 'Supplier1', 7896, 'ecommerce.com', 123456890, 'supplier1@example.com'),
    (102, 'Supplier2', 5646, 'ecommerce.com', 234678901, 'supplier2@example.com'),
    (103, 'Supplier3', 3452, 'ecommerce.com', 345789012, 'supplier3@example.com');
    
    delete from supplier where supplier_id = 103;
INSERT INTO supplier (supplier_id, supplier_name, gstin, domain, supplier_phone, email)
VALUES (101, 'James', 7896, 'electronic', 123456890, 'james@example.com'),
(102, 'Shivam', 5646, 'Clothing', 234678901, 'shivam@example.com'),(103, 'Lara', 3452, 'Grocery', 345789012, 'lara@example.com');
    select *from supplier;
INSERT INTO orders (order_id, order_date, total_order_value, delivery_date, customer_id, supplier_id)
VALUES (10, '2024-02-21', 100, '2024-02-25', 1, 101),(20, '2024-02-22', 150, '2024-02-26', 2, 101),
(30, '2024-02-23', 200, '2024-02-27', 3, 103),(40, '2024-02-24', 250, '2024-02-28', 4, 102),
(50, '2024-02-25', 300, '2024-02-29', 5, 103),(60, '2024-02-26', 350, '2024-03-01', 6, 101),
(70, '2024-02-27', 400, '2024-03-02', 7, 103), (80, '2024-02-28', 450, '2024-03-03', 2, 101),
(90, '2024-02-29', 500, '2024-03-04', 3, 103);

    select * from orders;
    insert into shipper (shipper_id,shipper_name,shipper_email,phone_number,supplier_id)
    VALUES (11,'bluedart.co','blue@example.com',432175689,101),(12,'dhl.co','dhl@example.com',432179689,102),
    (13,'xpress','xpress@example.com',434175689,103);
    select *from shipper;
    drop  table product;
insert into product (product_id,product_name,brand,product_domain,quantity,supplier_id)
VALUES(201,'Television','LG','electronic',10,101),(202,'Refrigerator','samsung','electronic',17,101),
(203,'Washing Machine','LG','electronic',14,101),(204,'T-shirt','HRX','clothing',100,102),
(205,'Jeans','Jocky','clothing',150,102),(206,'Shirt','allen solly','clothing',180,102),
(207,'garlicpaste','mdh','grocery',1000,103),(208,'Rice','india gate','grocery',200,103);
    select *from product;
    commit;