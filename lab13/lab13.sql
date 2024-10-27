.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students WHERE color = "blue" AND pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students WHERE color = "blue" AND pet = "dog";


CREATE TABLE smallest_int_having AS
  SELECT time, smallest FROM students GROUP BY smallest HAVING COUNT(*) = 1;


CREATE TABLE matchmaker AS
  SELECT a.pet AS pet, a.song AS song, a.color, b.color FROM students AS a, students AS b WHERE a.pet = b.pet AND a.song = b.song AND a.time < b.time;


CREATE TABLE sevens AS
  SELECT seven FROM students, numbers WHERE students.number = 7 AND numbers."7" = "True" AND students.time = numbers.time;


CREATE TABLE average_prices AS
  SELECT category, AVG(msrp) AS average_price FROM products GROUP BY category;


CREATE TABLE lowest_prices AS
  SELECT store, item, MIN(price) AS price FROM inventory GROUP BY item;


CREATE TABLE shopping_list AS
  SELECT name, store FROM products, lowest_prices WHERE lowest_prices.item = products.name GROUP BY category HAVING MIN(MSRP/rating);


CREATE TABLE total_bandwidth AS
  SELECT SUM(mbs) as bandwidth FROM shopping_list, stores WHERE shopping_list.store = stores.store;

