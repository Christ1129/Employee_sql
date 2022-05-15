
--## Data Analysis
--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
Inner JOIN salaries
ON salaries.emp_no = employees.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
WHERE hire_date LIKE '%1986';

-- 3. List the manager of each department with the following information: department number, department name,
-- the manager's employee number, last name, first name.
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
Inner JOIN departments ON 
dept_manager.dept_no = departments.dept_no
Inner JOIN employees ON 
dept_manager.emp_no = employees.emp_no;

-- 4. List the department of each employee with the following information: 
-- employee number,last name,first name,and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
Inner JOIN dept_emp ON 
employees.emp_no = dept_emp.emp_no
Inner JOIN departments ON 
dept_emp.dept_no = departments.dept_no;

-- 5. List first name, last name, and sex for employees whose 
-- first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
Inner JOIN dept_emp ON 
employees.emp_no = dept_emp.emp_no
Inner JOIN departments ON 
dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd007';

-- 7. List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
Inner JOIN dept_emp ON 
employees.emp_no = dept_emp.emp_no
Inner JOIN departments ON 
dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd007' OR departments.dept_no = 'd005';

-- 8. List the frequency count of employee last names
-- (i.e., how many employees share each last name) in descending order.
select last_name,
COUNT(last_name) AS "frequency"
from employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;
	