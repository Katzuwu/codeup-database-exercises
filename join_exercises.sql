use employees;

SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager' FROM dept_emp as de
JOIN dept_manager as dm ON de.emp_no = dm.emp_no
JOIN employees e on e.emp_no = dm.emp_no
JOIN departments as d ON d.dept_no = de.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY dept_name;

SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager' FROM dept_emp as de
JOIN dept_manager as dm ON de.emp_no = dm.emp_no
JOIN employees e on e.emp_no = dm.emp_no
JOIN departments as d ON d.dept_no = de.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY dept_name;

SELECT t.title, COUNT(*) AS Total FROM departments d JOIN dept_emp de on de.dept_no = d.dept_no
JOIN titles t on de.emp_no = t.emp_no
WHERE t.to_date = '9999-01-01' AND d.dept_name = 'Customer Service' AND de.to_date = '9999-01-01'
GROUP BY title;

SELECT d.dept_name as 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary AS Salary
FROM dept_emp as de
    JOIN dept_manager as dm ON de.emp_no = dm.emp_no
    JOIN employees e on e.emp_no = dm.emp_no
    JOIN departments as d ON d.dept_no = de.dept_no
    JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY dept_name;


# Solved bonus thanks to solution provided by Chris
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee,
       d.dept_name AS Department,
        CONCAT(e2.first_name, ' ', e2.last_name) AS Manager
FROM employees e
    JOIN dept_emp de on e.emp_no = de.emp_no
    JOIN departments d on d.dept_no = de.dept_no
    JOIN dept_manager dm on d.dept_no = dm.dept_no
    JOIN employees e2 ON e2.emp_no = dm.emp_no
WHERE de.to_date = '9999-01-01'AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name, e.emp_no;