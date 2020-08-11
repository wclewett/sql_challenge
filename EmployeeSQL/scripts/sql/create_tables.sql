create table departments(
	dept_no varchar(4) primary key,
	dept_name varchar(30)
);

select * from departments;

create table titles(
	title_id varchar(5) primary key,
	title varchar(30)
);

select * from titles;

create table employees(
	emp_no int primary key,
	emp_title_id varchar(5) references titles(title_id),
	birth_date date,
	first_name varchar(30),
	last_name varchar(30),
	sex varchar(1),
	hire_date date
);

select * from employees;

create table dept_emp(
	emp_no int references employees(emp_no),
	dept_no varchar(4)
);

select * from dept_emp;

create table dept_manager(
	dept_no varchar(4) references departments(dept_no),
	emp_no int primary key
);

select * from dept_manager;

create table salaries(
	emp_no int references employees(emp_no),
	salary int
);

select * from salaries;