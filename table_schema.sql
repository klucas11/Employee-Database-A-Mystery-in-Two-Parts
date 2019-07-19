CREATE TABLE departments
(
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR NOT NULL
);

CREATE TABLE employees
(
    emp_no INT PRIMARY KEY,
    birth_date VARCHAR NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    gender VARCHAR NOT NULL,
    hire_date VARCHAR NOT NULL
);

CREATE TABLE dept_emp
(
    id SERIAL PRIMARY KEY,
    emp_no INT NOT NULL,
    dept_no VARCHAR NOT NULL,
    from_date VARCHAR NOT NULL,
    to_date VARCHAR NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager
(
    id SERIAL PRIMARY KEY,
    dept_no VARCHAR NOT NULL,
    emp_no INT NOT NULL,
    from_date VARCHAR NOT NULL,
    to_date VARCHAR NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries
(
    id SERIAL PRIMARY KEY,
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    from_date VARCHAR NOT NULL,
    to_date VARCHAR NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles
(
    id SERIAL PRIMARY KEY,
    emp_no INT NOT NULL,
    title VARCHAR NOT NULL,
    from_date VARCHAR NOT NULL,
    to_date VARCHAR NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Check tables after each CSV import
SELECT *
FROM titles
