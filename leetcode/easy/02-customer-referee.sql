/* 
----------------------------------------
📝 Problem Description:
Report the names of customers that are not referred by customer with id = 2
Return the resulting table in any order.

📌 Source: Leetcode (SQL 50)
🔗 Link: https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50
🏷️ Tags: WHERE, NOT

----------------------------------------
🧾 Table Schema:
Table: Customer
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| referee_id  | int     |
+-------------+---------+

----------------------------------------
💡 Thought Process:
- Combine NOT with WHERE clause to get the required records

----------------------------------------
🧪 Edge Cases to Consider:
-  A customer with no referee_id can exist in the Customer table (NULL check)

----------------------------------------
✅ Final Query:
*/

SELECT name 
FROM Customer 
WHERE NOT referee_id = 2 OR referee_id IS NULL