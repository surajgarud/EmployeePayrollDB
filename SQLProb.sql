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


	UC3 & UC4

select * from employee_payroll1

insert into employee_payroll1 values
('ramesh',16345.90,'2019-02-07'),
('gauri',14312.56,'2022-02-16'),
('rakesh',9000.0,'2021-11-28')

		UC5

select salary from employee_payroll1 where name='ramesh'

select * from employee_payroll1 where start between '2018-01-01' and '2022-01-01'

select cast(getdate() as varchar(20))