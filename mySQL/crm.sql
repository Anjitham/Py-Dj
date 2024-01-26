create database crm;
use crm;
create table employees(
	id int auto_increment primary key,
    name varchar(200) not null,
    department varchar(200) not null,
    salary int not null,
    location varchar(200) not null
	);
desc employees;
insert into employees(name,department,salary,location) values
('ram','hr',60000,'ekm'),
('rithu','hr',55000,'tvm'),
('varun','qa',55000,'ekm'),
('anusha','qa',40000,'tvm');

-- list table 
select*from employees;

-- list dept 
select department from employees;

-- query for listing all dept(distinct) 
select distinct(department) from employees;

--  query for selecting employees whose saslary>50k 
select * from employees where salary>50000;

-- aggregate fn--sum,max,min,count,avg

-- highest salary
select max(salary) from employees;

-- find min,avg,sum
select min(salary) from employees;
select avg(salary) from employees; 

select * from employees order by (salary) desc;

-- HIGHEST SAL name
select name,salary from employees where salary>=45000;
select name,salary from employees where salary=(select max(salary) from employees) ;
select name,salary from employees where salary=(select min(salary) from employees);
select max(salary) from employees where salary!=(select max(salary) from employees);
select name from employees where salary=(select max(salary) from employees where salary!=(select max(salary) from employees));
update employees set  department='ba',salary=60000 where id=3;
delete from employees where id=2;

-- delete contents of table
-- truncate table employees; 

-- delete table
-- drop table employees; 

-- group by for count
select department,count(*) from employees group by (department);
select location,sum(salary) from employees group by (location);

-- Aliasing 
select department,sum(salary) as total from employees group by (department);
-- having  
select department,count(*) as deptcount from employees group by (department) having deptcount>1;