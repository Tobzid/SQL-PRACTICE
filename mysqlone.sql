SELECT TOP (1000) [FirstName]
      ,[LastName]
      ,[Age]
      ,[Salary]
      ,[Job Position]
  FROM [SQLTutorial].[dbo].[EmployeeSalary]

SELECT *
FROM SQLTutorial.dbo.EmployeeSalary
Full Outer Join SQLTutorial.dbo.EmployeeDemographics
    ON EmployeeDemographics.FirstName = EmployeeSalary.FirstName


