# Create a file called delete_exercises.sql.
USE codeup_test_db;
# Write SELECT statements for:
# Albums released after 1991
DELETE FROM albums
WHERE release_date > 1991;
# Albums with the genre 'disco'
DELETE FROM albums
WHERE genre = 'Disco';
#     Albums by 'Whitney Houston' (...or maybe an artist of your choice)
DELETE FROM albums
WHERE artist = 'Whitney Houston';
#     Make sure to put appropriate captions before each SELECT.
#                                                           Convert the SELECT statements to DELETE.
#     Use the MySQL command line client to make sure your records really were removed.
SELECT * FROM albums;