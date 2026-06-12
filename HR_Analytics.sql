--- Creating a Database
CREATE DATABASE HR_Analytics;

--- Using the Database
USE HR_Analytics;

--- Uploading the table
SELECT * FROM HR_Data;

--- Overall Attrition Rate
SELECT SUM(AttritionFlag)*100/COUNT(*)
 AS AttritionRate
FROM HR_Data;

--- Attrition By Department
SELECT Department, Count(*) AS EmployeeCount, SUM(AttritionFlag) AS AttritionCount,
SUM(AttritionFlag)*100/COUNT(*) AS AttritionRate
FROM HR_Data
GROUP BY Department
ORDER BY AttritionRate DESC;

--- Attrition By Age Band
SELECT AgeBand, Count(*) AS EmployeeCount, SUM(AttritionFlag) AS AttritionCount,
SUM(AttritionFlag)*100/COUNT(*) AS AttritionRate
FROM HR_Data
GROUP BY AgeBand
ORDER BY AttritionRate DESC;

--- Attrition By Salary Bucket
SELECT SalaryBucket, COUNT(*) AS EmployeeCount, SUM(AttritionFlag) AS AttritionCount,
SUM(AttritionFlag)*100/COUNT(*) AS AttritionRate
FROM HR_Data
GROUP BY SalaryBucket
ORDER BY AttritionRate DESC;

--- Attrition By Tenure
SELECT TenureGroup, COUNT(*) AS EmployeeCount, SUM(AttritionFlag) AS AttritionCount,
SUM(AttritionFlag)*100/COUNT(*) AS AttritionRate
FROM HR_Data
GROUP BY TenureGroup
ORDER BY AttritionRate DESC;