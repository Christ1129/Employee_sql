Create table departments (
dept_no varchar primary key NOT NULL,
dept_name varchar NOT NULL);
select* from departments;

Create table employees(
emp_no int primary key,
emp_title_id varchar NOT NULL,
birth_date varchar NOT NULL,
first_name varchar NOT NULL,
last_name varchar NOT NULL,
sex varchar NOT NULL,
hire_date varchar NOT NULL
);
select*from employees;

Create table dept_emp(
emp_no INT NOT NULL,
dept_no varchar NOT NULL,
primary key (emp_no, dept_no),
foreign key (emp_no) REFERENCES employees(emp_no),
foreign key (dept_no) REFERENCES departments(dept_no));
select* from dept_emp;

Create table salaries(
emp_no int primary key,
salary int NOT NULL,
foreign key (emp_no) REFERENCES employees(emp_no));
select* from salaries;

Create table dept_manager(
dept_no varchar NOT NULL,
emp_no int NOT NULL,
primary key(dept_no, emp_no),
foreign key (dept_no) REFERENCES departments(dept_no),
foreign key (emp_no) REFERENCES employees(emp_no));
select* from dept_manager;

Create table titles(
title_id varchar primary key,
title varchar NOT NULL);
select* from titles;

