# SQL Challenge
## Background
*It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.* Analysis is conducted with PostgresSQL and Python.

## Strategy 
The best way to start is to build out a ERD or Entity Relationship Diagram. Please see the below ERD of the 6 databases:

![ERD Snapshot](https://github.com/wclewett/sql_challenge/blob/master/EmployeeSQL/erd/ERD.png)

As denoted above with blue text and a small key image, the primary keys in this database are: department id (dept_no), employee id (emp_no), and title id (title_id). Foriegn keys are denoted by a three pronged arrow connection, i.e. dept_no in dept_manager.

## Database Creation
The employee database is created in PostgresSQL by first creating schemas for each table and then importing the respective CSV files. See [Table Creation](https://github.com/wclewett/sql_challenge/blob/master/EmployeeSQL/scripts/sql/create_tables.sql) for specific code.

## SQL Queries
The next step in the analysis is to run a few SQL queries to get a better handle of the database. The below queries were ran on the employee database:
  
1. List the following details of each employee: employee number, last name, first name, sex, and salary.
2. List first name, last name, and hire date for employees who were hired in 1986.
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
4. List the department of each employee with the following information: employee number, last name, first name, and department name.
5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Nearly all of these queries were executing using an inner join. See [SQL Queries](https://github.com/wclewett/sql_challenge/blob/master/EmployeeSQL/scripts/sql/query.sql) for specific code.

## Python Analysis (Bonus)
*As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss.*
