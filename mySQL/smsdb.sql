create database smsdb;
use smsdb;
create table courses (
	id int primary key auto_increment,
    name varchar(200) unique not null 
    );
insert into courses (name) values ("Django"),("Mearn"),("Testing"),("ML");
select *from courses;

create table batches (
	id int primary key auto_increment,
    batch_code varchar(200) unique not null,
    course_id int not null,
    faculty varchar(200) not null,
    stud_count int not null,
    foreign key(course_id) references courses(id) on delete cascade
    );
    
insert into batches(batch_code,course_id,faculty,stud_count)values
('dj_sept_b1',1,'Anjana',40),
('dj_sept_b2',1,'Sajna',45),
('ms_sept_b1',2,'Varun',50),
('ms_sept_b2',2,'Ashok',45),
('st_sept_b1',3,'Anjana',40);

select *from batches;

select batch_code,stud_count from batches where stud_count=(select  max(stud_count) from batches);

select batch_code,stud_count from batches where stud_count=(select  min(stud_count) from batches);

select batches.batch_code from batches,courses where courses.id=batches.course_id and courses.name='Django';
