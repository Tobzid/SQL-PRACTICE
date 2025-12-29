/* used to change words to small and capital letter */

SELECT FirstName, LOWER(FirstName) AS LowercaseFirstName
FROM EmployeeSalary;

SELECT LastName, UPPER(LastName) AS UppercaseLastName
FROM EmployeeSalary;
