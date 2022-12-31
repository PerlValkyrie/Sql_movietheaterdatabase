-- Changign database structure (When needed)
alter table customer add column cancellations INT unique;
alter table customer drop column cancellations;

-- Check the structure of concessions data
select upc
from concessions;

-- Update address
update customer
set address = '931 Thomas Jefferson Pkwy Charlottesville VA'
where address = '931 Thomas Jefferson Ave Charlottesville VA' and billing_info = 12300013;


-- DELETE statement from (Deletes the whole row of data)
delete from customer
where billing_info = '12300012';

-- Verify data is empty
select * from customer;

-- ADD
alter table tickets
add email VARCHAR(150);

-- Verify email has been added
select * from tickets;

-- UPDATE tickets email
update tickets
set email = 'joelc@codingtemple.com'
where customer_id = 92000;

update tickets
set customer_id = '3'
where customer_id = 92000;

update tickets
set customer_id = '4'
where order_date = null and customer_id = 3;

-- DROP statement for removing a table from the database
drop table tickets cascade;

-- Confirm tickets table no longer exists
select * from tickets;