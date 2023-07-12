 /*!!!!! Welcome to EmployeePayrollProblem !!!!*/

Create database Employee_Payroll   /* CREATE DATABASE */

use Employee_Payroll

create table employee_payroll
(
 Id int primary key identity,
 Name varchar(40) NOT NULL,
 Salary int,
 StartDate Date NOT NULL
)

select * from employee_payroll

insert into employee_payroll values('Ram', 50000, '2023-07-12'),
                                   ('Shyam', 20000, '2023-07-11'),
								   ('Bhole', 70000, '2023-07-13'),
								   ('Durga', 50000, '2023-07-14')

select * from employee_payroll  /* retrive data */

select Salary from employee_payroll where id = 3   /* salary of particular employee */

select * from employee_payroll where StartDate BETWEEN CAST('2023-07-11' AS DATE) AND GETDATE() /* employee deatil b/w date range */

alter table employee_payroll
add Gender char(1)
update employee_payroll set Gender= 'M' where name ='Ram' or name = 'Shyam' or name = 'Bhole'
update employee_payroll set Gender= 'F' where name ='Durga'

select SUM(Salary) from employee_payroll
where Gender = 'M' group by Gender;

select AVG(Salary) from employee_payroll
where Gender = 'M' group by Gender;

select MIN(Salary) from employee_payroll
where Gender = 'M' group by Gender;

select MAX(Salary) from employee_payroll
where Gender = 'M' group by Gender;

select COUNT(*) from employee_payroll
where Gender = 'M' group by Gender;

select COUNT(*) from employee_payroll
where Gender = 'F' group by Gender;



