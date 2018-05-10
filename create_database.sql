DROP DATABASE IF EXISTS my_guitar_shop1;
CREATE DATABASE my_guitar_shop1;
USE my_guitar_shop1;  -- MySQL command

-- create the tables
CREATE TABLE categories (
  categoryID       INT(11)        NOT NULL   AUTO_INCREMENT,
  categoryName     VARCHAR(255)   NOT NULL,
  PRIMARY KEY (categoryID)
);

CREATE TABLE products (
  productID       INT(11)        NOT NULL   AUTO_INCREMENT,
  categoryID       INT(11)        NOT NULL,
  productCode     VARCHAR(12)   NOT NULL,
  productName     VARCHAR(255) NOT NULL,
  listPrice     FLOAT(7,2)   NOT NULL,
  PRIMARY KEY (productID),
  FOREIGN KEY (categoryID) REFERENCES categories(categoryID)
);

-- insert data into the database
INSERT INTO categories VALUES
(1, 'Electric Guitars'),
(2, 'Acoustic Guitars'),
(3, 'Acoustic-Electric Guitars'),
(4, 'Guitar Amps'),
(5, 'Guitar Pedals');

INSERT INTO products VALUES
(1, 1, 'E765FL345YH9', 'Gibson Flying V', 1500.98),
(2, 1, 'EH77FL215YX5', 'Fender Telecaster', 1139.98),
(3, 1, 'E763933PG7R4', 'Schecter Hellraiser', 800.50),
(4, 1, 'E125LY999P8O', 'PRS Custom 24', 1700.98),
(5, 2, 'A765FL345TT6', 'Martin Custom D Classic', 989.98),
(6, 2, 'A353HY195R35', 'Taylor GS Mini', 459.98),
(7, 2, 'A733TL225YH3', 'Gibson SJ 200', 9699.98),
(8, 2, 'A765FL123YLT', 'Martin D45 Dreadnought', 8799.98),
(9, 3, 'AE65IL37U6H9', 'Breedlove Discovery Concert', 399.00),
(10, 3, 'AE65FR266YH6', 'Martin DRS1 Dreadnought', 759.98),
(11, 4, 'AMP5FL6Y22H9', 'VOX AC30', 1400.98),
(12, 4, 'AMP84476L3E2', 'Marshal JCM800', 750.98),
(13, 4, 'AMP5T447WA23', 'Engl Fireball', 3500.98),
(14, 4, 'AMP89P349D11', 'Orange Rocker 15', 700.98),
(15, 5, 'P765g534T54H', 'Dunlop Crybaby Wah', 44.98),
(16, 5, 'P5YJ3L34UU33', 'Ibanez Tube Screamer', 60.98);

-- create the users and grant priveleges to those users
GRANT SELECT, INSERT, DELETE, UPDATE
ON my_guitar_shop1.*
TO the_user@localhost
IDENTIFIED BY 'pa55word';