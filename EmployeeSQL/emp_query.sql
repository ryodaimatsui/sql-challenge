-- employee salaries
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
LEFT JOIN salaries s 
ON s.emp_no = e.emp_no;

-- employees hired in 1986
SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- department manager
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments d
LEFT JOIN dept_manager dm 
ON dm.dept_no = d.dept_no
LEFT JOIN employees e
ON dm.emp_no = e.emp_no;

-- employee department
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
LEFT JOIN employees e
ON e.emp_no = de.emp_no
LEFT JOIN departments d
ON d.dept_no = de.dept_no;

-- employee name "Hercules B."
SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- Sales department
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_emp de
LEFT JOIN departments d
ON d.dept_no = de.dept_no
LEFT JOIN employees e
ON e.emp_no = de.emp_no
WHERE d.dept_name = 'Sales';

-- Sales and Development departments
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
LEFT JOIN departments d
ON d.dept_no = de.dept_no
LEFT JOIN employees e
ON e.emp_no = de.emp_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';

-- last name frequency counts
SELECT e.last_name, COUNT(e.last_name) AS "Total"
FROM employees e
GROUP BY e.last_name
ORDER BY "Total" DESC;