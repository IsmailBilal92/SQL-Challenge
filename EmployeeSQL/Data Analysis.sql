select * from employees
select * from salaries
select * from departments
select * from dept_empo
select * from dept_manager
select * from titles
--Data Analysis
--List the employee number, last name, first name, sex, and salary of each employee.
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
join
salaries on employees.emp_no = salaries.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986
select first_name, last_name, hire_date
from employees
where hire_date between '1/1/1986' and '12/31/1986'
ORDER BY hire_date;

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name,employees.first_name
from departments
join
dept_manager on departments.dept_no = dept_manager.dept_no
join employees on dept_manager.emp_no = employees.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select departments.dept_no, dept_empo.emp_no, employees.last_name,employees.first_name
from departments
join
dept_empo on departments.dept_no = dept_empo.dept_no
join employees on dept_empo.emp_no = employees.emp_no
order by dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name
select emp_no, last_name, first_name
from employees
where emp_no in (
select emp_no from dept_empo
where dept_no in (
select dept_no from departments
where dept_name = 'Sales')
order by emp_no);

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

select dept_empo.emp_no, employees.last_name,employees.first_name, departments.dept_name
from dept_empo
join employees on dept_empo.emp_no = employees.emp_no
join departments on dept_empo.dept_no = departments.dept_no
where dept_name = 'Sales' or dept_name = 'Development'
order by emp_no;

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name,
COUNT(last_name) AS "Frequency_Count"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;











