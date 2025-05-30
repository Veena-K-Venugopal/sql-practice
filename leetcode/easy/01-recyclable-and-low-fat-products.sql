-- Problem: Recyclable and Low Fat Products
-- Source: Leetcode (SQL 50)
-- Link: https://leetcode.com/problems/recyclable-and-low-fat-products/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy
-- Tags: Conditions, AND operator

-- Objective:
-- Find the ids of products that are both low fat and recyclable.
-- Display the result in any order.

-- Schema:
-- Products(product_id INTEGER, low_fats ENUM, recyclable ENUM)
SELECT product_id 
FROM Products 
WHERE low_fats = 'Y' AND recyclable = 'Y'