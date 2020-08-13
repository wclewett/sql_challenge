-- Note: All data was imported using the Import/Export Wizard 
-- Note: Data must be imported in the same order in which the schemas are created

-- Create Departments Schema
create table departments(
	dept_no varchar(4) not null,
	primary key (dept_no),
	dept_name varchar(30) not null	
);

-- Import Data and View
select * from departments;

-- Create Titles Schema
create table titles(
	title_id varchar(5) not null,
	primary key (title_id),
	title varchar(30) not null	
);

-- Import Data and View
select * from titles;

-- Create Employees Schema
create table employees(
	emp_no int not null,
	primary key (emp_no),
	emp_title_id varchar(5),
	foreign key (emp_title_id) references titles(title_id),
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
	emp_no int,
	foreign key (emp_no) references employees(emp_no),
	dept_no varchar(4)
);

-- Import Data and View
select * from dept_emp;

-- Create Department Manager Schema
create table dept_manager(
	dept_no varchar(4),
	foreign key (dept_no) references departments(dept_no),
	emp_no int,
	foreign key (emp_no) references employees(emp_no) 
);

-- Import Data and View
select * from dept_manager;

-- Create Salaries Schema
create table salaries(
	emp_no int,
	foreign key (emp_no) references employees(emp_no),
	salary int
);

-- Import Data and View
select * from salaries;