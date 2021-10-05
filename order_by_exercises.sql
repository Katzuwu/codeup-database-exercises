use employees;

# Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Demeyer.
select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name;
# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Boguraev.
select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name, last_name;
# Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Vidya Quittner.
select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name, first_name;
# Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
select * from employees
where last_name LIKE '%e%'
order by emp_no;
# Now reverse the sort order for both queries and compare results.
select * from employees
where last_name LIKE '%e%'
order by emp_no desc;


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