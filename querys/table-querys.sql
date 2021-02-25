CREATE TABLE departments (
    dept_no VARCHAR(255),
    dept_name VARCHAR(255)
);
CREATE TABLE dept_emp (
    emp_no INT,
    dept_name VARCHAR(255)
);
CREATE TABLE dept_manager (
    dept_no INT,
    emp_no INT
);
CREATE TABLE employees (
    emp_no INT,
    emp_title_id VARCHAR(255),
    birth_date DATE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sex VARCHAR(1),
    hire_date DATE
);
CREATE TABLE salaries (
    emp_no VARCHAR(255),
    salary INT
);
CREATE TABLE titles (
    title_id VARCHAR(255),
    title VARCHAR(255)
);