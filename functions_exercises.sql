use employees;

# Copy the order_by_exercises.sql script and save it as functions_exercises.sql.
# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
select CONCAT(first_name, last_name) from employees
where last_name like 'e%' AND last_name like '%e';

# Find all employees born on Christmas — 842 rows.
select * from employees
where month(birth_date) = 12 and day(birth_date) = 25;

# Find all employees hired in the 90s and born on Christmas — 362 rows.
select * from employees
where year(hire_date) between 1990 and 1999 and month(birth_date) = 12 and day(birth_date) = 25;

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
select * from employees
where year(hire_date) between 1990 and 1999 and month(birth_date) = 12 and day(birth_date) = 25
order by birth_date, hire_date desc;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).
select datediff(now(), hire_date) from employees
where year(hire_date) between 1990 and 1999 and month(birth_date) = 12 and day(birth_date) = 25;
# order by hire_date desc;


# Code copied from order by:
# # Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Demeyer.
# select * from employees
# where first_name in ('Irena', 'Vidya', 'Maya')
# order by first_name;
# # Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Boguraev.
# select * from employees
# where first_name in ('Irena', 'Vidya', 'Maya')
# order by first_name, last_name;
# # Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Vidya Quittner.
# select * from employees
# where first_name in ('Irena', 'Vidya', 'Maya')
# order by last_name, first_name;
# # Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
# select * from employees
# where last_name LIKE '%e%'
# order by emp_no;
# # Now reverse the sort order for both queries and compare results.
# select * from employees
# where last_name LIKE '%e%'
# order by emp_no desc;


#extra code from copying where_exercises per instruction 1: Create a new file called order_by_exercises.sql and copy and paste the contents of your where_exercises.sql.
# select * from employees
# where last_name LIKE '%q%';
#
# select * from employees
# where first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';
#
# select * from employees
# where (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';
#
# select * from employees
# where last_name like 'e%' OR last_name like '%e';
#
# select * from employees
# where last_name like 'e%' AND last_name like '%e';
#
# select * from employees
# where last_name like '%q%' and last_name not like '%qu%';