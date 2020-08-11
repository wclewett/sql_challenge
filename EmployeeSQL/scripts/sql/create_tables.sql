-- Create Departments Schema
create table departments(
	dept_no varchar(4) primary key,
	dept_name varchar(30)
);

-- Import Data and View
select * from departments;

-- Create Titles Schema
create table titles(
	title_id varchar(5) primary key,
	title varchar(30)
);

-- Import Data and View
select * from titles;

-- Create Employees Schema
create table employees(
	emp_no int primary key,
	emp_title_id varchar(5) references titles(title_id),
	birth_date date,
	first_name varchar(30),
	last_name varchar(30),
	sex varchar(1),
	hire_date date
);

-- Import Data and View
select * from employees;

-- Create Department/Employee Schema
create table dept_emp(
	emp_no int references employees(emp_no),
	dept_no varchar(4)
);

-- Import Data and View
select * from dept_emp;

-- Create Department Manager Schema
create table dept_manager(
	dept_no varchar(4) references departments(dept_no),
	emp_no int primary key
);

-- Import Data and View
select * from dept_manager;

-- Create Salaries Schema
create table salaries(
	emp_no int references employees(emp_no),
	salary int
);

-- Import Data and View
select * from salaries;