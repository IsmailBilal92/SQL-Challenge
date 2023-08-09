--Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:
--Desplay the tables
select * from Titles
select * from Departments
select * from Employees
select * from dept_empo
select * from dept_manager
select * from Salaries


--create Titles table
create table Titles(
  Title_id varchar primary key, 
  Title varchar	
);

--create Departments table 
CREATE TABLE Departments (
  dept_no VARCHAR PRIMARY KEY,
  dept_name VARCHAR NOT NULL
);

--create Employees table 
CREATE TABLE Employees (
  emp_no SERIAL PRIMARY KEY,
  emp_title_id VARCHAR NOT NULL,
  birth_day VARCHAR NOT NULL,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  sex VARCHAR NOT NULL,
  hire_date VARCHAR NOT NULL,
 FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

--create dept_emp table 

create table dept_empo(
  emp_no integer,
  dept_no varchar, 
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);


--create dept_manager table 
create table dept_manager(
  dept_no varchar,
  emp_no integer, 
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);


--create Salaries table 
create table Salaries(
  emp_no integer, 
  Salary integer,	
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);





