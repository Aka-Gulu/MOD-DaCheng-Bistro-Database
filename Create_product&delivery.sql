create table Product(
	product_ID int primary key auto_increment,
	product_name varchar(200) default'',
	product_type varchar(100) default'',
	product_category varchar(100) default '',
	product_price varchar(30) default 0
);


create table Delivery (
	delivery_ID varchar(100) default 'unkown',
	delivery_company varchar(50),
	delivery_method varchar(50),
	delivery_fee smallint(5),
    shipping_status char(100),
    customer_receive_time varchar(50),
    delivery_city varchar(30) 
);
