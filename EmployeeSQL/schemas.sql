-- create a table for the titles
CREATE TABLE titles(
	title_id CHAR(5) NOT NULL PRIMARY KEY,
	title VARCHAR(30) NOT NULL
);

-- create a table for the employees
CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id CHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex CHAR(1) NOT NULL,
	hire_date DATE NOT NULL,	
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

-- create a table for the departments
CREATE TABLE departments(
	dept_no CHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

-- create a table for the department employees
CREATE TABLE dept_emp(
	emp_no INT,
	dept_no CHAR(4),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- create a table for the department managers
CREATE TABLE dept_manager(
	dept_no CHAR(4),
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- create a table for salaries
CREATE TABLE salaries(
	emp_no INT,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- check to see data was imported properly
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;





