-- Create Database
CREATE DATABASE SampleDB;
USE SampleDB;
 
-- Create Table
CREATE TABLE Employee (
   EmployeeID INT PRIMARY KEY,
   FirstName VARCHAR(50),
   LastName VARCHAR(50),
   Salary INT
);
 
-- Insert 30 Rows
INSERT INTO Employee VALUES
(1, 'John', 'Doe', 50000),
(2, 'Jane', 'Smith', 60000),
(3, 'David', 'Johnson', 55000),
(4, 'Emily', 'Brown', 70000),
(5, 'Michael', 'Davis', 80000),
(6, 'Sophia', 'Anderson', 48000),
(7, 'William', 'Jones', 75000),
(8, 'Olivia', 'Miller', 62000),
(9, 'Daniel', 'Taylor', 53000),
(10, 'Ava', 'Wilson', 45000),
(11, 'Matthew', 'Moore', 68000),
(12, 'Ella', 'White', 52000),
(13, 'Christopher', 'Martin', 72000),
(14, 'Grace', 'Thomas', 59000),
(15, 'Andrew', 'Jackson', 90000),
(16, 'Madison', 'Hill', 48000),
(17, 'Joshua', 'Carter', 67000),
(18, 'Abigail', 'Perez', 58000),
(19, 'Logan', 'Hall', 85000),
(20, 'Sophie', 'Evans', 50000),
(21, 'Jackson', 'Wright', 77000),
(22, 'Lily', 'Harris', 63000),
(23, 'Aiden', 'Clark', 49000),
(24, 'Chloe', 'Lopez', 71000),
(25, 'Carter', 'Baker', 72000),
(26, 'Aubrey', 'Green', 55000),
(27, 'Ethan', 'Allen', 68000),
(28, 'Zoe', 'Lee', 59000),
(29, 'Mason', 'King', 80000),
(30, 'Emma', 'Garcia', 62000),
-- Additional 30 Rows
(31, 'Noah', 'Smith', 55000),
(32, 'Avery', 'Jones', 70000),
(33, 'Elijah', 'Wilson', 48000),
(34, 'Grace', 'Hill', 55000),
(35, 'Aria', 'Garcia', 72000),
(36, 'Liam', 'Taylor', 60000),
(37, 'Scarlett', 'Thomas', 53000),
(38, 'Lucas', 'Miller', 78000),
(39, 'Isabella', 'Brown', 52000),
(40, 'Henry', 'Moore', 67000),
(41, 'Aiden', 'Evans', 49000),
(42, 'Aria', 'Wright', 59000),
(43, 'Jackson', 'Johnson', 70000),
(44, 'Ava', 'Davis', 55000),
(45, 'Ethan', 'Allen', 68000),
(46, 'Chloe', 'Perez', 72000),
(47, 'Oliver', 'Harris', 59000),
(48, 'Sophie', 'Clark', 63000),
(49, 'Logan', 'Lopez', 55000),
(50, 'Lily', 'Baker', 71000),
(51, 'Mia', 'Green', 80000),
(52, 'Carter', 'King', 62000),
(53, 'Ella', 'Garcia', 55000),
(54, 'Matthew', 'Thomas', 90000),
(55, 'Avery', 'Hill', 48000),
(56, 'Sophia', 'Carter', 67000),
(57, 'Jackson', 'White', 58000),
(58, 'Aria', 'Hall', 85000),
(59, 'Aiden', 'Smith', 50000),
(60, 'Emma', 'Wilson', 77000);
         -- ************** UPDATE Clause  TO update existing Rows ********************
         
-- 1. Write a SQL query to update John Doe's salary to 55000.
UPDATE Employee 
     SET Salary = 55000
     Where FirstName = 'John' and LastName = 'Doe';
     
-- 2. Write a SQL query to increase all salaries by 10%.
UPDATE Employee
SET Salary = Salary * 1.10;

-- 3. Write a SQL query to update salaries for employees with a salary below 55000 to 55000.
UPDATE Employee 
     SET Salary = 55000
     where Salary < 55000;
      
-- 4. Write a SQL query to update Jane Smith's last name to 'Johnson'.
UPDATE Employee 
	SET LastName = 'Johnson'
    Where FirstName = 'Jane' and LastName = 'Smith';    
    
-- 5. Write a SQL query to double the salary for employees with an ID greater than 15.
UPDATE Employee
SET Salary = Salary * 2
WHERE EmployeeID > 15;

           -- ************* Questions on DELETE Clause *******************
 Select * from Employee;
-- 1. Write a SQL query to delete the employee with ID 10.
DELETE FROM Employee
WHERE EmployeeID = 10;

-- 2. Write a SQL query to delete all employees with a salary less than 40000.
DELETE FROM Employee
WHERE Salary < 40000;

-- 3. Write a SQL query to delete all rows from the Employee table.
DELETE FROM Employee;

TRUNCATE TABLE Employee;

-- 4. Write a SQL query to delete employees with a last name starting with 'A'.
DELETE FROM Employee
WHERE Last_Name LIKE 'A%';

-- 5. Write a SQL query to delete employees with an even EmployeeID.
 DELETE FROM Employee
WHERE MOD(EmployeeID, 2) = 0; 

DELETE FROM Employee
WHERE EmployeeID % 2 = 0;

-- 1. Update the salary of employees with 'son' in their last name to 60000.
UPDATE Employee
SET Salary = 60000
WHERE LastName LIKE '%son%';

-- 2. Update the salary of employees with 'Evans' in their last name to 58000.
UPDATE Employee
SET Salary = 58000
WHERE LastName LIKE '%Evans%';

-- 3. Delete employees with a salary between 60000 and 70000.
DELETE FROM Employee
WHERE Salary BETWEEN 60000 AND 70000;

-- 4. Update the last name of employees with 'Lee' in their last name to 'Lewis'.
UPDATE Employee
SET LastName = 'Lewis'
WHERE LastName LIKE '%Lee%';

-- 5. Delete employees with a last name ending with 'son'.
DELETE FROM Employee
WHERE LastName LIKE '%son';

-- 6. Retrieve the details of employees whose first name contains 'a' and last name contains 'o'
SELECT *
FROM Employee
WHERE FirstName LIKE '%a%'
  AND LastName LIKE '%o%';
  
-- 1. Update the salary of employees with 'son' in their last name to 60000.
UPDATE Employee
SET Salary = 60000
WHERE LastName LIKE '%son%';


-- New Data-Base
-- Table Related Queries
-- To Change the Schema
 
-- 1. Add a new column called 'Birthdate' of type DATE to the Employee table
ALTER TABLE Employee
ADD Birthdate DATE;

-- 2. Drop the 'Salary' column from the Employee table.
ALTER TABLE Employee
DROP COLUMN Salary;

-- 3. Rename the 'FirstName' column to 'First_Name' in the Employee table.
ALTER TABLE Employee
RENAME COLUMN FirstName TO First_Name;

-- 4. Add a new column called 'Department' of type VARCHAR(50) to the Employee table.
ALTER TABLE Employee
ADD Department VARCHAR(50);

-- 5. Drop the 'LastName' column from the Employee table.
ALTER TABLE Employee
DROP COLUMN LastName;

-- 6. Rename the 'Birthdate' column to 'DOB' in the Employee table.
ALTER TABLE Employee
RENAME COLUMN Birthdate TO DOB;

-- Q1. Change the datatype of FirstName column from VARCHAR(50) to VARCHAR(100).
ALTER TABLE Employee
MODIFY First_Name VARCHAR(100); 

ALTER TABLE Employee
ALTER COLUMN FirstName VARCHAR(100);

-- Q2. Modify the Salary column to DECIMAL(12,2) instead of INT.
ALTER TABLE Employee
MODIFY Salary DECIMAL(12,2);

-- Q3. Add a NOT NULL constraint to the LastName column.
ALTER TABLE Employee
MODIFY LastName VARCHAR(50) NOT NULL;

-- Q4. Add a UNIQUE constraint on the FirstName column.
ALTER TABLE Employee
ADD CONSTRAINT unique_First_Name UNIQUE (First_Name);

-- Q5. Make Department column mandatory (NOT NULL) after adding it.
 ALTER TABLE Employee
MODIFY Department VARCHAR(50) NOT NULL; 