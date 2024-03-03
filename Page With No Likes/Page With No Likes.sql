create database facebook;
use facebook;
create table pages (
	page_id int,
	page_name varchar (30) NOT NULL,
    primary key (page_id)
);
create table page_likes (
	user_id int not null, 
    page_id int, 
    liked_date datetime default current_timestamp(),
    FOREIGN KEY (page_id) REFERENCES pages(page_id)
);
insert into pages values 
	(20001, "SQL Solutions"),
    (20045, "Brain Exercises"),
    (20701, "Tips for Data Analysts");
insert into page_likes values 
	(111, 20001, "2022-04-08 00:00:00"),
    (121, 20045, "2022-03-12 00:00:00"),
    (156, 20001, "2022-07-25 00:00:00");
select distinct(pages.page_id)
from pages
left join page_likes
on page_likes.page_id = pages.page_id
where liked_date is null;