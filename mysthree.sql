CREATE TABLE EmployeeSalary(
	FirstName varchar(50), LastName varchar(50), HireDate varchar(50), Salary varchar(50));

SELECT TOP (1000) [EmployeeID]
      ,[FirstName]
      ,[LastName]
      ,[HireDate]
      ,[Salary]
  FROM [SQLTutorialOne].[dbo].[EmployeeSalary]

  INSERT INTO EmployeeSalary (EmployeeID, FirstName, LastName, HireDate, Salary)
  VALUES
(1, 'Jane', 'Dame', '2024-12-02', 2280)
, (2, 'Jane', 'Smith', '2023-06-11', 2949)
,(3, 'Mike' , 'Johnson', '2025-7-11', 3200)
,(4, 'Sarah', 'Williams', '11-03-2022', 2800)
,(5, 'Sean', 'Tizle', '06-06-2024', 4200)

/*
Some Code that can be use in SQL

SELECT *, Top, Distinct, Count, As, Max, Min, Avg
*/
