# SQL Challenge
## Background
*It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.* Analysis was conducted with PostgresSQL and Python.

## Strategy 
The best way to start is to build out a ERD or Entity Relationship Diagram. Please see the below ERD of the 6 databases:

![ERD Snapshot](https://github.com/wclewett/sql_challenge/blob/master/EmployeeSQL/erd/ERD.png)

## Database Creation
The employee database was created in PostgresSQL by first creating schemas for each table and then importing the respective CSV files. See [Table Creation](https://github.com/wclewett/sql_challenge/blob/master/EmployeeSQL/scripts/sql/create_tables.sql) for specific code. Primary keys were as follows: Department Number, Title Id, and Employee Number.

## SQL Queries
The next step in the analysis was to run a few SQL queries to get a better handle of the database. The below queries were ran on the employee database:
  
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

Instead of reading in the CSVs directly to a Jupyter notebook we can use the Python package *SQLAlchemy* to connect our Jupyter Notebook directly to our SQL database. See [Pandas Analysis](https://github.com/wclewett/sql_challenge/blob/master/EmployeeSQL/scripts/python/pandas_analysis.ipynb) for specific code.

Our analysis focused on two main visualizations: average salary by job title and the distribution of all employee salaries. See the below visualizations created using pandas and matplotlib:

![Employee Salary Histogram](https://github.com/wclewett/sql_challenge/blob/master/EmployeeSQL/data%20visualizations/Employee%20Salaries%20Histogram.png)

![Average Salary by Job Title](https://github.com/wclewett/sql_challenge/blob/master/EmployeeSQL/data%20visualizations/Average%20Salary%20by%20Job%20Title.png)

## Summary and Epilogue
As we progressed through our analysis we began to realize that this may not be a real dataset. This became obvious was when we executed the final SQL query and there was extremely high frequencies of the same name (>150). When ordering the final SQL query in ascending fashion, we see that the only unique last name is "Foolsday". Once the Python analysis was complete and the results were handed into the boss we were presented with the following epilogue:

*Evidence in hand, you march into your boss's office and present the visualization. With a sly grin, your boss thanks you for your work. On your way out of the office, you hear the words, "Search your ID number." You look down at your badge to see that your employee ID number is 499942.*

When we search the ID number using the Pandas Employees dataframe we are returned with the below row information:

emp_no | title_id | birth_date | first_name | last_name | sex | hire_date | title | salary 
------------ | ------------- | ------------ | ------------- | ------------ | ------------- | ------------ | ------------- | ------------ 
499942 | e0004 | 1963-01-10 | April | Foolsday | F | 1997-02-10 | Technique Leader | 40000 

April Fools!
