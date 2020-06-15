CREATE TABLE employees(
	emp_no int PRIMARY KEY,
	emp_title VARCHAR(12),
	birth_date VARCHAR(12),
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	sex VARCHAR(3),
	hire_date VARCHAR(12)
	);
	
SELECT * FROM employees;

CREATE TABLE dept_emp(
	emp_no int REFERENCES employees(emp_no),
	dept_no VARCHAR(100) REFERENCES departments(dept_no)
	);

select dept_no from departments;
select * from dept_emp;

CREATE TABLE dept_manager(
	dept_no VARCHAR(100) REFERENCES departments(dept_no),
	emp_no int REFERENCES employees(emp_no)
	);
	
select * From dept_manager

CREATE TABLE salaries(
	emp_no int REFERENCES employees(emp_no),
	salary int 
	);
	
select * From salaries

CREATE TABLE titles(
	title_id VARCHAR(12) PRIMARY KEY,
	title VARCHAR(40) 
	);