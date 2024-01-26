create database countries;
use countries;
desc countries;
create table country(
	country_id int primary key auto_increment,
    country_name varchar(200) unique not null,
    region_id int not null
);

select * from country;
desc country;

create table if not exists dup_countries like country;
desc dup_countries;
drop table country;

-- total students in django course
select sum(student_count) from courses,batches where courses.id=batches.course_id and courses.name="django";

-- course vise batches count 
select courses.name,sum(student_count) from courses,batches where courses.id=batches.course_id group by(courses.name);