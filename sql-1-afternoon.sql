create table person (
    personal_id serial primary key,
    name varchar(80),
    age integer,
    height integer,
    city varchar(80),
    favorite_color varchar(20)
);
insert into person(name,age,height,city,favorite_color)
values('alex',23,56,'atlanta','blue-ish'),('barbara',43,58,'boston','teal'),('conner',19,75,'chicago','creme'),('ellie',433,28,'boulder','green'),('david',65,84,'anchorafe','green');



-- 3
select * from person order by height desc;
--4
select * from person order by height asc
--5
select * from person order by age desc
--6
select * from person where age > 20
--7
select * from person where age = 18
--8
select * from person where age <20 or age > 30;
--9
select * from person where age !=27
--10
select * from person where favorite_color != 'green'
--11
select * from person where favorite_color != 'green' and favorite_color != 'teal';
--12
select * from person where favorite_color = 'green' or favorite_color = 'teal';
--13
select * from person where favorite_color IN ('green','teal','blue-ish');
--14
select * from person where favorite_color IN ('yellow','purple');
--15




--PART 2?
create table orders (
    person_id serial primary key,
    product_name varchar(50), 
    product_price numeric,
    quantity integer
);
insert into orders(product_name,product_price,quantity)
values ('nerfie',14.99,2),('bullets',0.99,300),('hamburgers',5.99,1)



-- 3
select * from orders
--5
select sum(product_price *quantity) from orders;
--6
select sum(product_price *quantity) 
 from orders where person_id =1;


-- part3

--2
select * from artist order by name desc limit 10;
--3
select * from artist order by name asc limit 5;

--4
select * from artist where name ilike'black%';
--5
select * from artist where name ilike'%black%';


--EMPLOYEE
--1
select  first_name, last_name from employee where city = 'Calgary';
--2
select max(birth_date) from employee
--3
select min(birth_date) from employee
--4
select * from employee where reports_to = 2;
--5
select count(*) from employee where city = 'Lethbridge';



table invoices 
--1
select count(*) from invoice where billing_country = 'USA'; 
91
--2
select max(total) from invoice;
--3
select min(total) from invoice;
--4
select * from invoice where total > 5;
--5
select count(*) from invoice where total < 5;
--6
select count(*) from invoice where billing_state in ('CA','AZ','TX')
--7
select avg(total) from invoice;
--8
select sum(total) from invoice;