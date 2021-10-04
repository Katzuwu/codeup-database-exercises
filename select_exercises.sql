USE codeup_test_db;
# The name of all albums by Pink Floyd.
SELECT name AS 'The Name of Pink Flyod''s Albums are:' FROM albums
WHERE artist = 'Pink Floyd';
# The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date AS 'Sgt. Pepper''s Lonely Hearts Club Band Release Year' FROM albums
WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';
# The genre for Nevermind
SELECT genre AS 'Genre of Nevermind' FROM albums
WHERE name = 'Nevermind';
# Which albums were released in the 1990s
SELECT name AS 'Albums released in the 90s', release_date AS 'Release Years' FROM albums
WHERE release_date between 1990 and 1999;
# Which albums had less than 20 million certified sales
SELECT name AS 'Albums that sold less than 20 million', sales AS 'Album sales total' FROM albums
WHERE sales < 20;
# All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
#It does not select the other related rock genres because it is very specific in its search.
SELECT name AS 'Rock albums' FROM albums
WHERE genre = 'Rock';