-- Step 1: Creating a database
CREATE DATABASE Company;


-- Step 2: To use this database
USE Company;


-- Step 3: Creating a table
CREATE TABLE Employee (

  EmployeeId int,

  Name varchar(20),

  Gender varchar(20),

  Salary int,

  Department varchar(20),

  Experience int

);


-- Step 4 :Add value to the table:

INSERT INTO Employee VALUES 

(1, 'Sagar Wavhal', 'Male', 35000, 'Boss', 8),

(2, 'Tessa','Female',75000,'Finance',3),

(3,'Bob','Male',28000,'HR',5),

(4, 'Abhishek Wavhal', 'Male', 95000, 'IT', 2),

(5, 'Priya Sharma', 'Female', 45000, 'IT', 2),

(6, 'Rahul Patel', 'Male', 65000, 'Sales', 5),

(7, 'Nisha Gupta', 'Female', 55000, 'Marketing', 4),

(8, 'Vikram Singh', 'Male', 75000, 'Finance', 7),

(9, 'Aarti Desai', 'Female', 50000, 'IT', 3);

select * from Employee;


        -- ***** HOME WORK **** --
        
        
-- 1] find departments with an sum salary 
select Department, sum(salary) as Total_Salary from employee
group by Department;

-- 2] find departments with an average salary 
select Department, avg(salary) from Employee
group by Department;


-- 3] Total Employee by gender 
select Gender, count(EmployeeId) as Total_Employee from Employee 
group by Gender;


-- 4] Total Employees by Dept 
select Department, count(EmployeeId) as Total_Employee from Employee
group by Department;

-- 5] Min salary by Gender 
select Gender, min(salary) as Min_Salary from Employee
group by Gender;

-- 6] Max salary in each dept 
select Department, max(salary) as Max_Salary from Employee
group by Department;

-- 7] Avg Experience in each dept
select Department, avg(Experience) as Avg_Experience from Employee
group by Department;


-- 8] find deparment with an sum of salary greator than 80000
select department, sum(salary) from employee
group by department
having sum(salary) > 80000;

-- 9]find departments with more than 2 employee and an average salary greator than 70000
select department, count(employeeId), avg(salary) from employee 
group by department
having count(employeeId) >=2 and avg(salary) > 70000;


-- find max salary from each department
select department, max(salary) from employee
group by department;

select * from employee;
