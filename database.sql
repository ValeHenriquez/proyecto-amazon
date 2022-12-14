drop table if exists customer cascade;
drop table if exists "time" cascade;
drop table if exists category cascade;
drop table if exists product cascade;
drop table if exists review cascade;

create table customer(
	customer_id text primary key
);

create table "time"(
	
	"date" date primary key,
	"year" int,
	"month" int,
	"day" int
);

create table category(
	category_name text primary key
);

create table product(

	product_id text primary key,
	product_parent text,
	product_title text,
	product_category text references category(category_name)

);

create table review(
	marketplace text,
	customer_id text references customer(customer_id),
	review_id text primary key,
	product_id text references product(product_id),
	star_rating real,
	helpful_votes real,
	total_votes real,
	vine text,
	verified_purchase text,
	review_headline text,
	review_body text,
	review_date date references "time"("date")
);


copy product from 'C:\Users\Public\Documents\product.csv' delimiter ';';
copy review from 'C:\Users\Public\Documents\review.csv' delimiter ';';