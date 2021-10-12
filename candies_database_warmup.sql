# ================================= WARM UP
# Create a database called candy_db
CREATE DATABASE candy_db;
USE candy_db;

# Create a candies table with the following columns (choose the data type most appropriate for the column):
#   id (primary key)
#   name
#   price_in_cents
#   description
#   type_id (a foreign key pointing to the id column of the types table)
CREATE TABLE candies(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    price_in_cents INT UNSIGNED NOT NULL,
    description TEXT,
    type_id INT UNSIGNED NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(type_id) REFERENCES types(id)
);

# Create a types table with the following columns:
#   id (primary key)
#   name
#   description
CREATE TABLE types(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  description TEXT,
  PRIMARY KEY(id)
);

# Seed the database with the following insert statements:
INSERT INTO types (name, description) VALUES
  ('Chewing Gum', 'Great for chewing!'),
  ('Chocolate', 'Great for chocolate goodness!'),
  ('Hard Candy', 'Don''t bite too hard!'),
  ('Gummy Candy', 'Not too hard; not too soft.');

INSERT INTO candies (name, price_in_cents, description, type_id) VALUES
  ('Doublemint Gum', 159, 'Standard chewing gum', 1),
  ('Orbit Gum', 110, 'Another standard chewing gum', 1),
  ('Hershey Bar', 210, 'Standard chocolate bar', 2),
  ('Gushers', 312, 'Nice and sour!', 4),
  ('Sour Patch Kids', 206, 'Quite sour!', 4),
  ('M&Ms', 199, 'Crunchy and chocolatey', 2);

# What is the relationship between the candies and types table?
# One-to-Many; one type to many candies

# Write a query to display the type name and candy name for all candies over 200 cents.
SELECT c.name AS 'Candy Name', t.name AS 'Type' FROM candies c JOIN types t ON c.type_id = t.id
WHERE price_in_cents > 200;


# Attempts with sub-queries
# SELECT c.name AS 'Candy Name'
# FROM candies c
# WHERE type_id IN (
#     SELECT type_id
#     FROM types t
#     WHERE t.id = c.type_id
#     ) AND price_in_cents > 200;
#
# SELECT name AS 'Candy Name'
# FROM candies c
# WHERE id IN (
#     SELECT id
#     FROM types t
# ) AND price_in_cents > 200;