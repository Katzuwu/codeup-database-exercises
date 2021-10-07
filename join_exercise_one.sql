# Join Example Database
# Create a database named join_test_db and run the SQL provided in the Join Example DB section above; to create the same setup used for this lesson.
USE join_test_db;
# Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
INSERT INTO users (name, email, role_id) VALUES
    ('Robert', 'robert@example.com', 2),
    ('Dave', 'dave@example.com', 3),
    ('Geno', 'geno@example.com', 3),
    ('Giorgio', 'giorgio@example.com', null);
# Use JOIN, LEFT JOIN, and RIGHT JOIN to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results.

# Shows all that are not null
SELECT users.name, roles.name FROM users JOIN roles ON users.role_id = roles.id;

# Shows all from the left argument (users in this case).
SELECT users.name, roles.name FROM users LEFT JOIN roles ON users.role_id = roles.id;

# Shows all from the right argument (roles).
SELECT users.name, roles.name FROM users RIGHT JOIN roles ON users.role_id = roles.id;

# Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries. Use COUNT and the appropriate join type to get a list of roles along with the number of users that have a given role. Hint: You will also need to use GROUP BY in the query.
SELECT COUNT(users.name), r.name FROM users RIGHT JOIN roles r on users.role_id = r.id
GROUP BY r.name;
