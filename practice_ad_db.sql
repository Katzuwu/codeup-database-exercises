CREATE DATABASE practice_ad_db;

USE practice_ad_db;

CREATE TABLE users(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(50) NOT NULL,
  email_address VARCHAR(100)NOT NULL,
  password VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE ad(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    user_id INT UNSIGNED NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE categories(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ad_categories(
  ad_id INT UNSIGNED NOT NULL,
  category_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (ad_id) REFERENCES ad(id),
  FOREIGN KEY (category_id) REFERENCES categories(id)
);

INSERT INTO users(user_name, email_address, password) VALUES
('chad', 'chad@example.com', 'password1'),
('queen', 'queen@example.com', 'password2'),
('gamer', 'gamer@example.com', 'password3');

INSERT INTO ad(title, description, user_id) VALUES
('Selling my car', 'Selling old car. Great condition. $1000 OBO', 1),
('Selling toys', 'Selling my old toys. Price varies per toy.', 1),
('Want to buy desk', 'Wanting to a buy a desk. Looking for a standing one. Email me.', 2),
('Selling desk', 'Selling my old desk. Great condition. $100 or willing to trade for standing desk.', 2),
('Selling Gaming PC', 'selling Pc. here parts', 3),
('Selling gaming chair', 'selling my old gaming chair', 3);

INSERT INTO categories(name) VALUES
('Selling'),
('Buying'),
('Car'),
('Office'),
('Electronic'),
('Trade');

INSERT INTO ad_categories(ad_id, category_id) VALUES
(1,1),
(1,3),
(2,1),
(2,5),
(3,1),
(3,4),
(4,1),
(4,4),
(4,6),
(5,1),
(6,1),
(6,4),
(6,5);

SELECT email_address, title FROM users
JOIN ad ON users.id = ad.user_id;

SELECT ad.title, c.name FROM ad
JOIN ad_categories ac on ad.id = ac.ad_id
JOIN categories c on c.id = ac.category_id;