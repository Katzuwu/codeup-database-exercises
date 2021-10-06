use employees;

show tables from employees;

describe departments;

describe dept_emp;

describe dept_manager;

describe employees;

describe salaries;

describe titles;

select * from titles;

use codeup_test_db;

alter table albums add unique unique_artist_and_name (artist, name);

SELECT * from albums;

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Michael Jackson', 'Thriller', 1982,'Pop, post-disco, funk, rock', 48.9);