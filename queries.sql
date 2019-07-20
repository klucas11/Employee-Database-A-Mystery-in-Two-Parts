-- List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT e.emp_no,
    e.last_name,
    e.first_name,
    e.gender,
    s.salary
FROM salaries AS s
    INNER JOIN employees AS e ON
	e.emp_no = s.emp_no
ORDER BY emp_no ASC;



-- List employees who were hired in 1986.

SELECT last_name,
    first_name,
    hire_date
FROM employees
WHERE hire_date LIKE '1986%'
ORDER BY hire_date ASC;



-- List the manager of each department with the following information: department number, 
-- department name, the manager's employee number, last name, first name, and start and 
-- end employment dates.

SELECT d.dept_no,
    d.dept_name,
    dm.emp_no,
    e.last_name,
    e.first_name,
    e.hire_date,
    dm.to_date
FROM departments AS d
    INNER JOIN dept_manager AS dm ON
	d.dept_no = dm.dept_no
    INNER JOIN employees as e ON
	e.emp_no = dm.emp_no
WHERE to_date LIKE '9999-%'
ORDER BY dept_no ASC;



-- List the department of each employee with the following information: employee number, 
-- last name, first name, and department name.

SELECT e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM employees AS e
    INNER JOIN dept_emp AS de ON
	e.emp_no = de.emp_no
    INNER JOIN departments AS d ON
	de.dept_no = d.dept_no
ORDER BY e.emp_no ASC;



-- List all employees whose first name is "Hercules" and last names begin with "B."

SELECT
    first_name,
    last_name
FROM employees
WHERE
	first_name = 'Hercules'
    AND last_name LIKE 'B%'



-- List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.

SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM employees AS e
    INNER JOIN dept_emp as de ON
	e.emp_no = de.emp_no
    INNER JOIN departments AS d ON
	de.dept_no = d.dept_no
WHERE dept_name = 'Sales'
ORDER BY e.emp_no ASC;



-- List all employees in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.

SELECT e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM employees AS e
    INNER JOIN dept_emp as de ON
	e.emp_no = de.emp_no
    INNER JOIN departments AS d ON
	de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR
    d.dept_name = 'Development'
ORDER BY dept_name DESC;



-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.

SELECT last_name,
    COUNT(last_name) AS Frequency
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC


