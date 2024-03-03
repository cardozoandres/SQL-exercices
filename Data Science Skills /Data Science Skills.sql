create database linkedin;
use linkedin;
create table candidates (candidate_id smallint, skill varchar(30));
insert into candidates values 
  (123, "Python"),
    (123, "Tableau"),
    (123, "PostgreSQL"),
    (234, "R"),
    (234, "PowerBI"),
    (234, "SQL Server"),
    (345, "Python"),
    (345, "Tableau");
SELECT * FROM candidates
WHERE skill IN ("Python","Tableau","PostgreSQL")
group by candidate_id
having count(skill)>2;
