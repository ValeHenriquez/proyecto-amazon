drop table if exists customer cascade;
drop table if exists marketplace cascade;
drop table if exists category cascade;
drop table if exists product cascade;
drop table if exists review cascade;


create table customer(

	customer_id text primary key
);

create table marketplace(

	marketplace text primary key
);

create table category(

	category_name text primary key
);

create table product(

	product_id text primary key,
	product_parent text,
	product_title text,
	product_category text references Category(category_name) 
);

create table review(
	
	marketplace text references Marketplace(marketplace)
	customer text references Customer(customer_id),
	review_id text primary key,
	product text references Product(product_id),
	star_rating int not null,
	helpful_votes int,
	total_votes int,
	vine bool,
	verified_purchase bool,
	review_headline text,
	review_body text,
	review_date date
	
);