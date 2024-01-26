show databases;
create database cakebox;
use cakebox;
create table cake(
	id int auto_increment primary key,
    name varchar(100) not null,
    price int not null,
    category varchar(100) not null,
    shape varchar(100) not null
    );
desc cake;
insert into cake(name,price,category,shape) values 
('chocolate',1200,'foam','round'),
('redvelvet',890,'foam','heart'),
('vancho',950,'sponge','square'),
('carrot',780,'butter','round'),
('carame',1500,'fudge','heart')
;
select *from cake;
-- max priced cake
select max(price) from cake;

-- min priced cake
select min(price) from cake;

-- avg price
select avg(price) from cake;

-- square shaped
select name from cake where shape='square';
select category from cake where name='carame';

select * from cake order by (price) desc;

select name from cake where price=(select max(price) from cake);
select name,price from cake where price=(select max(price) from cake);
select name,price from cake where  price=(select max(price) from cake where price!=(select max(price) from cake));

update cake set name='caramel' where id =5;
update cake set name='caramel' where id =10;


     