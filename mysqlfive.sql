/*
Creating a Temporal table
*/

CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitle varchar (100),

Salary int
)

SELECT *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES (
'1001', 'HR', '45000'
)
