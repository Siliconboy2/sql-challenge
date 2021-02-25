SELECT A.emp_no, last_name, first_name, sex, salary FROM
employees A
INNER JOIN salaries birth_dateON A.emp_no = B.emp_no;

SELECT first_name, last_name, EXTRACT(YEAR FROM hire_date) from employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

SELECT A.dept_no, dept_name, A.emp_no, last_name, first_name FROM dept_manager A
INNER JOIN
departments B ON A.dept_no = B.dept_no
INNER JOIN
employees C ON A.emp_no = C.emp_no;

SELECT A.emp_no, last_name, first_name, dept_name FROM dept_name A
INNER JOIN
departments B ON A.dept_no = B.dept_no
INNER JOIN
employees C ON A.emp_no = C.emp_no;

SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT A.emp_no, last_name, first_name, dept_name FROM dept_emp A
INNER JOIN
departments B ON A.dept_no = B.emp_no
INNER JOIN
employees C ON A.emp_no = C.emp_no
WHERE dept_name = 'Sales';

SELECT A.emp_no, last_name, first_name, dept_name FROM dept_emp A
INNER JOIN
departments B ON A.dept_no = B.emp_no
INNER JOIN
employees C ON A.emp_no = C.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

SELECT last_name, COUNT(last_name) FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;