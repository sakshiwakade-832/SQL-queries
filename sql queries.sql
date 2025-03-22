create database bank;
show databases;
use bank;

CREATE TABLE accounts(acc_no int, emp_id int, bank_name varchar(50), city varchar(20));
CREATE TABLE employee(emp_id int, name varchar(40), DOB date, LastName varchar(50), salary int default 30000);

show tables;

insert into accounts values
(111, 101, "SBI", "pune"),
(122, 109, "HDFC", "mumbai"),
(124, 106, "HDFC", "banglore"),
(130, 116, "BOI", "pune"),
(112, 100, "Bank Of Baroda", "surat"),
(210, 96, "Bank of Maharashtra", "mumbai");

select * from accounts;

insert into employee values
(107, "sakshi", '2003-10-09', "wakade", 30000),
(108, "shrau", '2007-05-04', "naik", 30000),
(109, "mom", '1982-06-06', "deshpande", 25000),
(110, "sai", '2002-06-11', "patil", 35000),
(112, "mini", '2002-07-27', "rajule", 10000),
(113, "sanchit", '2003-12-09', "choudhari", 23000);

select * from employee;

drop table employee;

create table employee(emp_id int, FOREIGN KEY (emp_id) references employee(emp_id));

CREATE TABLE city(id int primary key, city varchar(40), age int, constraint check(age>=18 and city="mumbai"));
select * from city;

select distinct bank_name from accounts;

select * from accounts 
where acc_no > 120
LIMIT 3;

SELECT emp_id, LastName from employee order by LastName ASC;

select count(bank_name), city
from accounts
group by city
having max(emp_id) > 80;

SET SQL_SAFE_UPDATES = 0;

update employee
set emp_id = 119
where emp_id = 110;

DELETE from employee
where name = "mom";