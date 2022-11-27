drop table if exists customer cascade;
drop table if exists "time" cascade;
drop table if exists category cascade;
drop table if exists product cascade;
drop table if exists review cascade;

create table customer(
	customer_id text primary key
);

create table "time"(
	
	"date" date primary key
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
	star_rating int,
	helpful_votes int,
	total_votes int,
	vine text,
	verified_purchase text,
	review_headline text,
	review_body text,
	review_date date references "time"("date")
);

