-- 1. List the following details of each employee:
--    employee number, last name, first name, sex, and salary.

select employees.emp_no as "Employee Number",
	employees.last_name as "Last Name",
	employees.first_name as "First Name",
	employees.sex as "Sex",
	salaries.salary as "Salary"
from employees
inner join salaries on
employees.emp_no = salaries.emp_no
order by "Employee Number";

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

select first_name as "First Name", 
	last_name as "Last Name", 
	hire_date as "Hire Date"
from employees
where hire_date < '19870101' and hire_date >= '19860101'
order by "Hire Date";

-- 3. List the manager of each department with the following information:
--    department number, department name, the manager's employee number, last name, first name.

select dept_manager.dept_no as "Manager",
	departments.dept_name as "Department",
	dept_manager.emp_no as "Employee Number",
	employees.last_name as "Last Name",
	employees.first_name as "First Name"
from dept_manager
inner join departments on dept_manager.dept_no = departments.dept_no
inner join employees on dept_manager.emp_no = employees.emp_no
order by "Department";

-- 4. List the department of each employee with the following information:
--    employee number, last name, first name, and department name.

select dept_emp.emp_no as "Employee Number",
	employees.last_name as "Last Name",
	employees.first_name as "First Name",
	departments.dept_name as "Department"
from dept_emp
inner join employees on dept_emp.emp_no = employees.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
order by "Employee Number";

-- 5. List first name, last name, and sex for employees whose:
--    first name is "Hercules" and last names begin with "B."

select first_name as "First Name",
	last_name as "Last Name",
	sex as "Sex"
from employees
where employees.first_name = 'Hercules' and employees.last_name like 'B%'
order by "Last Name";

-- 6. List all employees in the Sales department, including their:
--    employee number, last name, first name, and department name.

select dept_emp.emp_no as "Employee Number",
	employees.last_name as "Last Name",
	employees.first_name as "First Name",
	departments.dept_name as Department
from departments
inner join dept_emp on departments.dept_no = dept_emp.dept_no
inner join employees on dept_emp.emp_no = employees.emp_no
where departments.dept_name = 'Sales'
order by "Employee Number";

-- 7. List all employees in the Sales and Development departments,
--    including their employee number, last name, first name, and department name.

select dept_emp.emp_no as "Employee Number",
	employees.last_name as "Last Name",
	employees.first_name as "First Name",
	departments.dept_name as Department
from departments
inner join dept_emp on departments.dept_no = dept_emp.dept_no
inner join employees on dept_emp.emp_no = employees.emp_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development'
order by "Employee Number";

-- 8. In descending order, list the frequency count of employee last names,
--    i.e., how many employees share each last name.

select last_name,
	count(last_name)
from employees
group by last_name
order by count(last_name) desc;