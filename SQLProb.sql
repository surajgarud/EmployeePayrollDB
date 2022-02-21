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

insert into employee_payroll1 (name,salary,start) values
('Rani',16345.90,'2019-02-07')
('gauri',14312.56,'2022-02-16'),
('vikash',9000.0,'2021-11-28')

		UC5

select salary from employee_payroll1 where name='ramesh'

select * from employee_payroll1 where start between '2018-01-01' and '2022-01-01'

select cast(getdate() as varchar(20))


		UC6

alter table employee_payroll1 add
Gender varchar(6)
update employee_payroll1 set gender='Male' where id in (1,3)
update employee_payroll1 set gender='FeMale' where id in (2,5)

		UC7


select sum(salary) from employee_payroll1
select avg(salary) from employee_payroll1
select min(salary) from employee_payroll1
select max(salary) from employee_payroll1
select gender,sum(salary)as'Sum Salary',avg(salary) as 'Avg Salary'from employee_payroll1 group by gender


		UC8
alter table employee_payroll1 add
phone varchar(15),address varchar(60),department varchar(30) not null default 'others'

alter table employee_payroll1 add
constraint DF_Address default 'India' for address