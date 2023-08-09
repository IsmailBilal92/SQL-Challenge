# SQL-Challenge
Challenge number 9

This Challenge is divided into three parts: data modeling, data engineering, and data analysis.

Data Modeling
Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. To create the sketch, feel free to use a tool like QuickDBDLinks to an external site..

**Here is the code to create the diagram

Departments
-
dept_no varchar PK   
dept_name  varchar

dept_emp
-
emp_no   integer FK - employees.emp_no  
dept_no   varchar FK - Departments.dept_no

dept_manager
-
dept_no  varchar FK >- Departments.dept_no
emp_no  integer FK -< employees.emp_no  

employees
-
emp_no  integer PK FK 
emp_title_id  varchar
birth_date   varchar
first_name  varchar
last_name  varchar
sex varchar
hire_date   varchar

salaries
-
emp_no  integer FK - employees.emp_no
salary integer

titles
-
title_id   varchar FK -< employees.emp_title_id
title   varchar



Data Engineering
     1-Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:
       Make sure to respecte the following order while you are creating your tables

        **order found is:

          1-Titles Table

          2-Departments Table

          3-Employees Table

          4-dept_emp Table

          5-dept_manager

          6-salaries
         


      2-Import each CSV file into its corresponding SQL table.

         you should respect the same order as before while you are importing the data, 
         For example you can't import CSV file Employees table before you import the CSV file in Titles table.  


Data Analysis 

      1-List the employee number, last name, first name, sex, and salary of each employee.

      2-List the first name, last name, and hire date for the employees who were hired in 1986.

      3-List the manager of each department along with their department number, department name, employee number, last name, and first name.

      4-List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

      5-List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

      6-List each employee in the Sales department, including their employee number, last name, and first name.

      7-List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

      8-List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).


Answers for all these questions are in the SQL file named "Data Analyses"




