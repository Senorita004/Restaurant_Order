Use restaurant_db;

-- viewing the menu_items table
SELECT * FROM menu_items;

-- Finding the number of items on the menu
SELECT COUNT(*) FROM menu_items;

-- Finding the least and most expensive items on the menu
SELECT * FROM menu_items
ORDER BY price;

SELECT * FROM menu_items
ORDER BY price DESC;

-- Number of Italian dishes are on the menu
SELECT COUNT(*) FROM menu_items
WHERE category = 'Italian';

-- The least and most expensive Italian dishes on the menu
SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price;

SELECT * 
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC;

-- Number of dishes in each category
SELECT category, COUNT(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category;

-- Average dish price within each category
SELECT category, AVG(price) AS avg_price
FROM menu_items
GROUP BY category;