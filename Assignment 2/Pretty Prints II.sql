-- ASSIGNMENT 2 Pretty Prints II --

-- 1. List all customer along with their address, city, state and zip --
SELECT customer_name, customer_add, customer_city, customer_state, customer_zip FROM customers;

-- 2. List all customers and their phone numbers that live in GA--
SELECT customer_name, customer_phone FROM customers WHERE customer_state = 'GA';

-- 3. List all customers along with their zip codes that live in NC or SC--
SELECT customer_name, customer_zip FROM customers WHERE customer_state = 'NC' OR customer_state = 'SC';

-- 4. List all titles that have been sold along with the artist, order date and ship date--
SELECT title, Artist, order_date, ship_date FROM items, orderline, orders WHERE items.item_id = orderline.item_id;

-- 5. List all item id, title, artist, unit price, and on hand in ascending order by price--
SELECT item_id, title, artist, unit_price, on_hand FROM items ORDER BY Unit_Price;

-- 6. List all item id, title, artist, unit price, and on hand for all items with a unit price that is more than $100.00--
SELECT item_id, title, artist, unit_price, on_hand FROM items WHERE Unit_Price > 100.00;

-- 7. List all item id, title, artist, unit price, and on hand for all items where there are more than 300 on hand--
SELECT item_id, title, artist, unit_price, on_hand FROM items WHERE on_hand > 300;

-- 8. List all titles along with their unit price and retail price (retail price is unit price doubled)--
SELECT title, Unit_Price, Unit_Price * 2 AS retail_Price FROM items;

-- 9. List all customers that have placed an order in 2014 along with their phone numbers--
SELECT customer_name, customer_phone FROM customers INNER JOIN orders ON customers.customer_id = orders.customer_id  WHERE order_date LIKE "2014%" ;

-- 10. List all artists with the number of their prints that have been sold--
SELECT artist, order_qty, orderline.item_id FROM items INNER JOIN orderline ON items.item_id = orderline.item_id;

-- 11. List all titles that have a unit price between $40.00 and $100.00.--
SELECT Title FROM items WHERE Unit_Price BETWEEN 40.00 AND 100.00;

-- 12. List all customers, title, artist, quantity ordered--
SELECT customer_name, Title, artist, order_qty FROM orderline, items, customers;

-- 13. List all customers along with the total revenue received from that customer (revenue would be total retail price)--
SELECT customer_name, Unit_Price * 2 AS retail_Price FROM customers, items;

-- 14. List each state and the number of customers from that state--
SELECT customer_state, (SELECT COUNT(customer_state) FROM customers) AS number_of_customers FROM customers;