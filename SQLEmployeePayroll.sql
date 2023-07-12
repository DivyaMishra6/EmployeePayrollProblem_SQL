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

