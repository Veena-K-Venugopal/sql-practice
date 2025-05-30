-- Problem: Top Profitable Drugs Part 1
-- Source: DataLemur (CVS Health SQL Interview Question)
-- Link: https://datalemur.com/questions/top-profitable-drugs
-- Difficulty: Easy
-- Tags: Aggregation, Sorting, LIMIT

-- Objective:
-- Find the top 3 most profitable drugs sold, and how much profit they made.
-- Assume that there are no ties in the profits.
-- Display the result from the highest to the lowest total profit.

-- Schema:
-- pharmacy_sales(product_id INTEGER, units_sold INTEGER, total_sales DECIMAL, cogs DECIMAL, manufacturer VARCHAR, drug VARCHAR)

SELECT drug, (total_sales - cogs) AS total_profit 
FROM pharmacy_sales
ORDER BY total_profit DESC
LIMIT 3;