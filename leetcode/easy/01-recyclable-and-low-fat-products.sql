/* 
----------------------------------------
📝 Problem Description:
- Find the ids of products that are both low fat and recyclable
- Display the result in any order

📌 Source: Leetcode (SQL 50)
🔗 Link: https://leetcode.com/problems/recyclable-and-low-fat-products/description/?envType=study-plan-v2&envId=top-sql-50
🏷️ Tags: conditions, AND

----------------------------------------
🧾 Table Schema:
Table: Products
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |
+-------------+---------+

----------------------------------------
💡 Thought Process:
- Combine AND with WHERE clause to get the required records

----------------------------------------
✅ Final Query:
*/

SELECT product_id 
FROM Products 
WHERE low_fats = 'Y' AND recyclable = 'Y'