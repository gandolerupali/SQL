create database try;

use try;

create table employee
(emp_id int primary key,
name varchar(20) not null,
salary int,
gender varchar(1),
dept varchar(10));

insert into employee values 
(1, "sagar" , 5000, "M", "DA");
select * from employee;

-- count the emp in each dept
select dept, count(emp_id) as Total_Employee from employee
group by dept;

-- count the emp by gender
select gender, count(emp_id) as Total_Employee from employee
group by gender;

-- total salary in ech dept 
select dept, sum(salary) as Total_Salary, count(emp_id) as Total_Employee from employee 
group by dept;


-- find average salary of employee
select avg(salary) from employee;

