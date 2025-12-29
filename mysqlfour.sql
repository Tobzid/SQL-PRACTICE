/*
Some Code that can be use in SQL

SELECT *, Top, Distinct, Count, As, Max, Min, Avg
*/

SELECT Dem.FirstName, Dem.LastName
FROM SQLTutorial.dbo.EmployeeDemographics AS Dem
JOIN SQLTutorial.dbo.EmployeeSalary AS Sal
    ON Dem.FirstName = Sal.FirstName;
