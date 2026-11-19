create database if not exists students;

use students;

create table if not exists info3
(id int primary key,name varchar(50),age int ,city varchar(30),marks int);

insert into info3 (id , name, age , city,marks)
values (101,"Tom",15,"Pune",89),
(102,"Tim",17,"Delhi",79),
(103,"Adam",19,"Mumbai",80),
(104,"Jhon",20,"Pune",91),
(105,"Tonny",16,"Mumbai",75),
(106,"Ronny",19,"Pune",55);

show  tables;

select * from info3;

select name , marks from info3;

select * from info3 
where age > 18;

select * from info3 
where city = "Mumbai";

select * from info3 
where city = "Mumbai" and marks > 75;

select * from info3 
where age between 18 and 22;

select * from info3 
where name like "T%";

select distinct city from info3;

select * from info3 
order by marks desc;

select * from info3
order by marks desc
limit 3;

select sum(marks) from info3
order by marks;

select count(name) from info3;

select avg(marks) as ave_marks from info3;

select city,avg(marks) from info3 
group by city;

select city, count(name) from info3
group by city;

select city , avg(marks) from info3 
group by city 
having avg(marks) >=70;
 
 select city , count(name) from info3
 group by city 
 having avg(marks) >60;
 
select name,
case 
	 when marks >= 80 then "Topper"
     when marks between 50 and 79 then "Average"
	 else "fail" 
end as category 
from info3;


select name,
case 
	 when marks >= 80 then "Topper"
     when marks between 50 and 79 then "Average"
	 else "fail" 
end as category 
from info3;

select name,marks from info3
	where marks>
		(select avg(marks)
		from info3
        );
        
select name,marks,
rank() over (order by marks desc)as  R_ank
from  info3;

select name,marks,
sum(marks) over (order by marks) as running_total
from info3;

select name,marks from info3
where marks<
(select avg(marks)
from info3);

select name,marks,city,
count(city) over (partition by city) as city_wise_rank
from info3
;