-- ==========================================================
-- SQL DATA ANALYTICS PRACTICE 
-- Author: Srinidhi Dharmapuri
-- ==========================================================
-- Description:
-- This file contains SQL queries written for practice using tables from a "Brazilian e-commerce dataset" and "istudio project dataset", organised within schemas.
-- ==========================================================
-- The queries cover basic SQL operations, including:
-- Selecting specific columns, Filtering records using WHERE, Sorting results using ORDER BY, Limiting the number of rows, Pattern matching using LIKE, Aggregating and grouping data using COUNT() and GROUP BY.
-- ==========================================================
-- Purpose: To practise SQL querying techniques and strengthen skills.
-- ==========================================
-- Query 1
-- Question: Select only the seller IDs, Cities, States from the sellers table.

SELECT seller_id, seller_city, seller_state
FROM sellers;

-- ==========================================
-- Query 2
-- Question: Select only the seller IDs from the sellers table.

SELECT seller_id
FROM sellers;

-- ==========================================
-- Query 3
-- Question: Select users whose status is active, and order the results by status in descending order.

SELECT  user_id, name, status 
FROM users
WHERE status = 'Active'
ORDER BY status DESC;

-- ==========================================
-- Query 4
-- Question: Select user IDs and names, sorted in alphabetical order (A to Z) by name.

SELECT  user_id, name
FROM users
ORDER BY name ASC;

-- ==========================================
-- Query 4.1 
-- Question: Select unique user IDs and their corresponding names from the users table, sorted in ascending order by user_id.

SELECT  DISTINCT user_id, name 
FROM users
ORDER BY user_id ASC;

-- ==========================================
-- Query 5
-- Question: Retrieve the first 10 users (ID and name) from the users table.

SELECT  user_id, name
FROM users
LIMIT 10;

-- ==========================================
-- Query 6
-- Question: Retrieve the first 1000 orders along with their status and delivery dates from the orders table.

SELECT order_id, order_status, order_delivered_customer_date
FROM orders
LIMIT 1000;

-- ==========================================
-- Query 7
-- Question: Select up to 15 users whose status is pending, ordered by status, and limited to 15 rows.

SELECT  user_id, name, status 
FROM users
WHERE status = 'Pending'
ORDER BY status ASC
LIMIT 15;

-- ==========================================
-- Query 8
-- Question: Select all users with a pending status, ordered by status.

SELECT  user_id, name, status 
FROM users
WHERE status = 'Pending'
ORDER BY status ASC;

-- ==========================================
-- Query 9
-- Question: Select customer IDs and their states, sorted alphabetically from A to Z by state.

SELECT customer_id, customer_state
FROM customers
ORDER BY customer_state ASC;

-- ==========================================
-- Query 10
-- Question: Select customer IDs and states, sorted alphabetically by state, restricted to the first 20 rows.

SELECT customer_id, customer_state
FROM customers
ORDER BY customer_state ASC
LIMIT 20;

-- ==========================================
-- Query 11
-- Question: Select customer IDs and states specifically for customers living in São Paulo (SP), limited to the first 20 rows.

SELECT customer_id, customer_state
FROM customers
WHERE customer_state = 'SP'
ORDER BY customer_state ASC
LIMIT 20;

-- ==========================================
-- Query 12
-- Question: Select customer IDs, cities, and states for customers in São Paulo (SP), sorted by state, limited to the first 200 rows.

SELECT customer_id, customer_city, customer_state
FROM customers
WHERE customer_state = 'SP'
ORDER BY customer_state ASC
LIMIT 200;

-- ==========================================
-- Query 13
-- Question: Select customer IDs, cities, and states for customers in Rio de Janeiro (RJ), sorted by state, limited to the first 10 rows.

SELECT customer_id, customer_city, customer_state
FROM customers
WHERE customer_state = 'RJ'
ORDER BY customer_state ASC
LIMIT 10;

-- ==========================================
-- Query 14
-- Question: Select customer IDs, cities, and states for customers in Rio de Janeiro (RJ) where the city starts with the letter R, sorted by state, and limited to 10 rows.

SELECT customer_id, customer_city, customer_state
FROM customers
WHERE customer_state = 'RJ'
AND customer_city LIKE 'R%'
ORDER BY customer_state ASC
LIMIT 10;

-- ==========================================
-- Query 15
-- Question: Select customer IDs, cities, and states for customers in Rio de Janeiro (RJ) where the city starts with the letter S, sorted by state, and limited to 100 rows.

SELECT customer_id, customer_city, customer_state
FROM customers
WHERE customer_state = 'RJ'
AND customer_city LIKE 'S%'
ORDER BY customer_state ASC
LIMIT 100;

-- ==========================================
-- Query 16 
-- Question: Write a query to list each state along with the total number of customers in it, grouped by customer_state.

SELECT customer_state,
       COUNT(*) AS total_customers
FROM customers
GROUP BY customer_state;

-- ==========================================
-- Query 16.1 
-- Question: Write a query to list each state along with the total number of customers in it, grouped by customer_state, and sorted from highest to lowest by the customer count.

SELECT customer_state,
       COUNT(*) AS total_customers
FROM customers
GROUP BY customer_state
ORDER BY total_customers DESC;

-- ==========================================
-- Query 17
-- Question: Write a query to find the top 10 cities and states with the highest number of customers from the customers table, grouped by customer_city and customer_state and sorted from highest to lowest.

SELECT customer_city, customer_state,
       COUNT(*) AS total_customers
FROM customers
GROUP BY customer_city, customer_state
ORDER BY total_customers DESC
LIMIT 10;

-- ==========================================