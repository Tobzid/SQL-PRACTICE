CREATE TABLE EmployeeSary(
	FirstName varchar, LastName varchar, Age Int, Salary varchar, Post varchar) 

SELECT TOP (1000) [FirstName]
      ,[LastName]
      ,[Age]
      ,[Salary]
      ,[Post]
  FROM [SQLTutorial].[dbo].[EmployeeSalary]


INSERT INTO EmployeeSalary (FirstName, LastName, Age,Salary, Post) VALUES
('Alice', 'Johnson', 28, 55000, 'Data Analyst'),
('Robert', 'Miller', 35, 72000, 'Software Engineer'),
('Sam', 'Davis', 42, 95000, 'Project Manager'),
('Jessica', 'Chen', 24, 48000, 'Junior Developer'),
('Daniel', 'Wilson', 31, 61000, 'Marketing Specialist'),
('Sophia', 'Garcia', 29, 59000, 'HR Coordinator'),
('James', 'Anderson', 45, 110000, 'IT Director'),
('Emily', 'Taylor', 27, 52000, 'Sales Associate'),
('Kevin', 'Martinez', 38, 85000, 'Database Administrator'),
('Chloe', 'Thomas', 33, 67000, 'Business Analyst');

ALTER TABLE EmployeeSalary
ALTER COLUMN FirstName VARCHAR(50);

ALTER TABLE EmployeeSalary
ALTER COLUMN LastName VARCHAR(50);

ALTER TABLE EmployeeSalary
ALTER COLUMN Post VARCHAR(50);

ALTER TABLE EmployeeSalary
ALTER COLUMN Salary VARCHAR(50);


