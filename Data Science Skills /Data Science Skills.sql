create database linkedin;
use linkedin;
create table candidates (
	candidate_id smallint, 
	skill varchar(30) not null,
	primary key (candidate_id),
	constraint unique (candidate_id,skill)
);
insert into candidates values 
	(123, "Python"),
	(123, "Tableau"),
    (123, "PostgreSQL"),
    (234, "R"),
    (234, "PowerBI"),
    (234, "SQL Server"),
    (345, "Python"),
    (345, "Tableau");
SELECT candidate_id FROM candidates
WHERE skill IN ("Python","Tableau","PostgreSQL")
group by candidate_id
having count(skill)>2;
