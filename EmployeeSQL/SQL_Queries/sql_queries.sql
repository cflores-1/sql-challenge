--Queries
-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary. 
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
JOIN salaries as s
ON e.emp_no = s.emp_no

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees as e
WHERE hire_date >= '1986-01-01' and hire_date < '1987-01-01';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name. 
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager as dm
JOIN departments as d 
ON dm.dept_no = d.dept_no 
JOIN employees as e
ON dm.emp_no = e.emp_no

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_manager as dm 
ON dm.emp_no = e.emp_no 
JOIN departments as d
ON dm.dept_no = d.dept_no

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B." 
SELECT e.first_name, e.last_name, e.sex
FROM employees as e
WHERE first_name = 'Hercules' and left(last_name,1)='B'

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name. 
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_manager as dm
ON e.emp_no=dm.emp_no
JOIN departments as d
ON dm.dept_no=d.dept_no
WHERE dept_name = 'Sales'

--7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_manager as dm
ON e.emp_no=dm.emp_no
JOIN departments as d
ON dm.dept_no=d.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development'

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name. 
SELECT e.last_name, count(*) as frequency
FROM employees as e
GROUP BY e.last_name
ORDER BY frequency DESC;