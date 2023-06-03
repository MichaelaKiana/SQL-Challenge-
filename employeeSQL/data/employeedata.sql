--Question 1

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON (e.emp_no = s.emp_no);

--Question 2

SELECT first_name, last_name, hire_date
From employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986'
ORDER BY HIRE_DATE;


--Question 3
SELECT m.dept_no, d.dept_name, m.emp_no,e.last_name,e.first_name 
FROM dept_manager m 
JOIN employees e 
ON (m.emp_no = e.emp_no)
INNER JOIN departments d
ON (d.dept_no = m.dept_no)

--Question 4

SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_employees de
ON (e.emp_no = de.emp_no)
INNER JOIN departments d
ON (de.dept_no = d.dept_no)

--Question 5

SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--Question 6

SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_employees de
ON e.emp_no = de.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'

--Question 7

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_employees de
ON e.emp_no = de.emp_no
JOIN departments d
ON d.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'

--Question 8

SELECT last_name, COUNT(*) AS freq_count
FROM employees 
GROUP BY last_name
ORDER BY COUNT(last_name) desc;







