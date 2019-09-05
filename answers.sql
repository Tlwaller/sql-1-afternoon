PERSON
1.
CREATE TABLE PERSON(
	ID serial PRIMARY KEY,
	name VARCHAR (255) NOT NULL,
	age INTEGER NOT NULL,
	height INTEGER NOT NULL,
	city VARCHAR (255) NOT NULL,
	fav_color VARCHAR (255) NOT NULL
);

2.
INSERT INTO person(name, age, height, city, fav_color)
VALUES ('Rob Johnson', 27, 180, 'Austin', 'gray'),
('madelyn arsenault', 20, 173, 'salt lake', 'blue'),
('Tramy Nguyen', 24, 125, 'LA', 'pink'),
('Trey Waller', 20, 186, 'Arlington', 'gray'),
('david newman', 28, 174, 'mckinney', 'black')

3.
SELECT person FROM person ORDER BY height DESC;

4.
SELECT person FROM person ORDER BY height ASC;

5.
SELECT person FROM person ORDER BY age DESC;

6.
SELECT person FROM person WHERE age > 20;

7.
SELECT person FROM person WHERE age = 18;

8.
SELECT person FROM person WHERE age < 20;
SELECT person FROM person WHERE age > 30;

9.
SELECT person FROM person WHERE age != 27;

10.
SELECT person FROM person WHERE fav_color != 'red';

11.
SELECT person FROM person WHERE fav_color != 'red' AND fav_color != 'blue';

12.
SELECT person FROM person WHERE fav_color = 'orange' OR fav_color = 'green';

13.
SELECT person FROM person WHERE fav_color IN ('orange', 'green', 'blue')

14.
SELECT person FROM person WHERE fav_color IN ('yellow', 'purple’);

ORDERS
1.

CREATE TABLE orders(
	order_id SERIAL PRIMARY KEY,
	person_id INT UNIQUE,
	product_name VARCHAR (255) NOT NULL,
	product_price FLOAT NOT NULL,
	quantity INT NOT NULL
)

2.
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES
(1, 'Jacket', 45.99, 1),
(2, 'Priceless Hotdog Painting', 10000012.99, 46)

3.
SELECT * FROM orders;

4.
SELECT SUM(quantity) FROM orders;

5.
SELECT SUM(product_price * quantity) FROM orders;

6.
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 2;

ARTIST
1.
INSERT INTO artist(name)
VALUES
('T.S.O.L.'),
('Minor Threat'),
('Black Flag')

2.
SELECT * FROM artist ORDER BY name DESC LIMIT 10;

3.
SELECT * FROM artist ORDER BY name ASC LIMIT 5;

4.
SELECT * FROM artist WHERE name LIKE 'Black%';

5.
SELECT * FROM artist WHERE name LIKE '%Black%';

EMPLOYEE
1.
SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

2.
SELECT MAX(birth_date) FROM employee

3.
SELECT MIN(birth_date) FROM employee

4.
SELECT * FROM employee WHERE reports_to = 2;

5.
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge'

INVOICE
1.
SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA'

2.
SELECT MAX(total) FROM invoice;

3.
SELECT MIN(total) FROM invoice;

4.
SELECT * FROM invoice WHERE total > 5;

5.
SELECT COUNT(*) FROM invoice WHERE total < 5;

6.
SELECT COUNT(*) FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ');

7.
SELECT AVG(total) FROM invoice;

8.
SELECT sum(total) FROM invoice;