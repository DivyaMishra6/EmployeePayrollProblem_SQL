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

insert into employee_payroll values('Ram', 50000, '2023-04-21'),
                                   ('Shyam', 20000, '2023-04-21'),
								   ('Bhole', 70000, '2023-04-21'),
								   ('Durga', 50000, '2023-04-21')

select * from employee_payroll  /* retrive data */

select Salary from employee_payroll where id = 3   /* salary of particular employee */

select * from employee_payroll where StartDate BETWEEN CAST('2023-07-11' AS DATE) AND GETDATE() /* employee deatil b/w date range */

update employee_payroll set StartDate = '2023-07-12'  where id = 1 /* upadte date */
update employee_payroll set StartDate = '2023-07-11'  where id = 2
update employee_payroll set StartDate = '2023-07-13'  where id = 3
update employee_payroll set StartDate = '2023-07-14'  where id = 4


