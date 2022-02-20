        UC1

create database payroll_service
use payroll_service
select * from sys.databases

      UC2

create table employee_payroll1
(
id int primary key identity,
name varchar(50) not null unique,
salary money not null,
start date not null
)