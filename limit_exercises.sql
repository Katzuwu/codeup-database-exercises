use employees;
use salaries;

# MySQL provides a way to return only unique results from our queries with the keyword DISTINCT. For example, to find all the unique titles within the company, we could run the following query:

SELECT DISTINCT title FROM titles;
# List the first 10 distinct last name sorted in descending order. Your result should look like this:
select distinct last_name from employees
order by last_name desc limit 10;

# Zykh
# Zyda
# Zwicker
# Zweizig
# Zumaque
# Zultner
# Zucker
# Zuberek
# Zschoche
# Zongker


# Create a query to get the top 5 salaries and display just the employees number from the salaries table. The employee number results should be:
select emp_no from salaries
order by salary desc limit 5;

#     43624
#     43624
#     254466
#     47978
#     253939

#     Try to think of your results as batches, sets, or pages. The first five results are your first page. The five after that would be your second page, etc. Update the previous query to find the tenth page of results. The employee number results should be:
select emp_no from salaries
order by salary desc limit 5 offset 45;

#     254466
#     492164
#     66793
#     492164
#     Hint

#     LIMIT and OFFSET can be used to create multiple pages of data. What is the relationship between OFFSET (number of results to skip), LIMIT (number of results per page), and the page number?