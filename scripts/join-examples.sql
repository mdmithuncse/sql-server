select * from HumanResources.Department 
order by DepartmentID; -- Total 16 rows

select * from HumanResources.EmployeeDepartmentHistory
order by DepartmentID; -- Total 296 rows

SELECT COUNT(*) AS TotalRows
FROM HumanResources.EmployeeDepartmentHistory; -- Total 60 rows
--WHERE DepartmentID IN (1,2,3,4,5,6,7); -- Total 236 rows

--DELETE FROM HumanResources.EmployeeDepartmentHistory
--WHERE DepartmentID IN (1,2,3,4,5,6,7); -- Total 236 rows deleted


select * from HumanResources.Department as Dept
inner join HumanResources.EmployeeDepartmentHistory as EmpDept
on Dept.DepartmentID = EmpDept.DepartmentID
order by Dept.DepartmentID; -- Total 296 rows

select * from HumanResources.Department as Dept
left join HumanResources.EmployeeDepartmentHistory as EmpDept
on Dept.DepartmentID = EmpDept.DepartmentID
order by Dept.DepartmentID; -- Total 296 rows

select * from HumanResources.EmployeeDepartmentHistory as EmpDept
left join HumanResources.Department as Dept
on EmpDept.DepartmentID = Dept.DepartmentID
order by EmpDept.DepartmentID;

select * from HumanResources.Department as Dept
right join HumanResources.EmployeeDepartmentHistory as EmpDept
on Dept.DepartmentID = EmpDept.DepartmentID
order by Dept.DepartmentID; -- Total 296 rows

select * from HumanResources.EmployeeDepartmentHistory as EmpDept
right join HumanResources.Department as Dept
on EmpDept.DepartmentID = Dept.DepartmentID
order by EmpDept.DepartmentID;