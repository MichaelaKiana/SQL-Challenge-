Create Table departments(
	dept_no VARCHAR(30)PRIMARY Key,
	dept_name VARCHAR(30)

);
select*
from departments

Create Table dept_employees(
	emp_no INT,
	dept_no VARCHAR(30)

);

select*
from dept_employees


Create Table dept_manager(
	dept_no VARCHAR(30),
	emp_no INT  

);

select*
from dept_manager

Create Table employees(
	emp_no INT Primary Key,
	emp_title_id VARCHAR,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date VARCHAR


);

select*
from employees

Create Table salaries(
	emp_no INT,
	salary INT


);

select*
from salaries

Create Table titles(
	title_id VARCHAR Primary key,
	title VARCHAR
);

select*
from titles

drop table dept_manager
drop table dept_employees
drop table employees
drop table manager
