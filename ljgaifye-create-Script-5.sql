-- Create database tables
CREATE TABLE concessions (
  upc Integer,
  order_id SERIAL,
  total_cost NUMERIC,
  discount DECIMAL,
  PRIMARY KEY (upc)
);

CREATE TABLE movies (
  seller_id SERIAL,
  item_id SERIAL,
  prod_name VARCHAR(100),
  discount DECIMAL,
  upc Integer,
  PRIMARY KEY (seller_id),
  foreign key (upc) references concessions (upc)
);

CREATE TABLE customer (
  customer_id SERIAL,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  address VARCHAR(150),
  billing_info VARCHAR(150),
  seller_id SERIAL,
  PRIMARY KEY (customer_id),
  foreign key (seller_id) references movies (seller_id)
);

CREATE TABLE tickets (
  order_id SERIAL,
  cart_id Integer,
  customer_id SERIAL,
  order_date DATE,
  PRIMARY KEY (order_id)
);

