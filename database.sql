drop table if exists customer cascade;
drop table if exists "time" cascade;
drop table if exists product cascade;
drop table if exists review cascade;

create table customer(
	
	"index" int,
	customer_id text primary key
);

create table "time"(
	
	"index" int,
	"date" date primary key
);

create table product(
	
	"index" int,
	product_id text primary key,
	product_parent text,
	product_title text,
	product_category text

);

create table review(

	"index" int,
	customer_id text references customer(customer_id),
	marketplace text,
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

Gift_card
gift card