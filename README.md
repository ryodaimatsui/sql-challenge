## Pewlett Hackard - Analysis of Employees (1980s-1990s)
![sean-pollock-PhYq704ffdA-unsplash](https://github.com/ryodaimatsui/sql-challenge/assets/137141385/5c602880-7cc1-4644-9133-924965987e85)

As a data engineer at a fictional company — Pewlett Hackard — I was tasked with analyzing data related to employees employed by the company during the 1980s and 1990s. The first part of the project entailed data modelling in order to identify the connections between the data points and their structures. Utilizing "Quick Database Diagrams", a free online tool to map the flow of data, I produced the following model:

![QuickDBD-export](https://github.com/ryodaimatsui/sql-challenge/assets/137141385/97a2bfb0-03b0-460f-86e9-13e9632f87aa)

As evident in the image, there were six total tables that were produced from six corresponding csv files. The "Employees," "Departments," and "Titles" tables each contain a unique primary key that allows for tables with a valid foreign key to access the data values contained within that speciic table. For instance, the "Salaries" table contains the foreign key "employee_num" which references the primary key with the same name in the "Employees" table. 

Following the data modelling and data engineering phase of the project, the following analysis is conducted:
- List the employee number, last name, first name, sex, and salary of each employee.
- List the first name, last name, and hire date for the employees who were hired in 1986.
- List the manager of each department along with their department number, department name, employee number, last name, and first name.
- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
- List each employee in the Sales department, including their employee number, last name, and first name.
- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

The result of these queries are eight new tables. 
