-- [Insert values] into tables so they may show.
-- concessions table
insert into concessions(upc,order_id,total_cost,discount)
values(213,4,27.99,777.00);

-- movies table
insert into movies(seller_id,item_id,prod_name,discount,upc)
values(2,89001,'Adams Family',777.00,213);

-- customer table
insert into customer(customer_id,first_name,last_name,address,billing_info,seller_id)
values(3,'Randy','Jenkins','931 Thomas Jefferson Pkway Charlottesville VA', '12300012',2);

-- tickets table
insert into tickets(order_id,cart_id,customer_id,order_date)
values(4,12345,92000,'11/02/2022');

-- [Edit a table's value]
-- Make a change to tickets table, customer_id value to made customer_id in customer table
insert into tickets(customer_id) values (3);

-- see all in concessions
select * concessions;

-- see all in movies
select * movies;

-- see all in customer
select * customer;

-- see all in tickets
selec * tickets;



