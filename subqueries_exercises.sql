use employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows
SELECT emp_no, CONCAT(first_name, ' ', last_name) as Name, hire_date FROM employees
WHERE hire_date IN (
    SELECT hire_date from employees WHERE emp_no = '101010'
    );

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
SELECT title from titles
WHERE emp_no IN (
    SELECT emp_no FROM employees WHERE first_name = 'Aamod'
    );
# Find all the current department managers that are female.
# +------------+------------+
# | first_name | last_name  |
# +------------+------------+
# | Isamu      | Legleitner |
# | Karsten    | Sigstam    |
# | Leon       | DasSarma   |
# | Hilary     | Kambil     |
# +------------+------------+
SELECT first_name, last_name FROM employees e
WHERE emp_no IN (
    SELECT emp_no FROM dept_manager dm WHERE e.gender = 'F' AND dm.to_date > NOW()
    );

# BONUS
#
# Find all the department names that currently have female managers.
# +-----------------+
# | dept_name       |
# +-----------------+
# | Development     |
# | Finance         |
# | Human Resources |
# | Research        |
# +-----------------+
SELECT dept_name from departments
WHERE dept_no IN (
    SELECT dept_no from dept_manager
        WHERE emp_no IN (
            SELECT emp_no from employees WHERE gender = 'F'
            ) AND to_date > NOW()
    );

# Find the first and last name of the employee with the highest salary.
# +------------+-----------+
# | first_name | last_name |
# +------------+-----------+
# | Tokuyasu   | Pesch     |
# +------------+-----------+

SELECT first_name, last_name from employees
WHERE emp_no IN (
    SELECT emp_no from salaries WHERE salary = (
        SELECT MAX(salary) from salaries
        )
    );