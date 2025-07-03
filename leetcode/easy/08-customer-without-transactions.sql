/* 
----------------------------------------
📝 Problem Description:
Find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.
Return the resulting table in any order

📌 Source: Leetcode (SQL 50)
🔗 Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50
🏷️ Tags: JOIN, LEFT JOIN, Aliases, COUNT, WHERE, GROUP BY

----------------------------------------
🧾 Table Schema:
Table: Visits
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| visit_id    | int     |
| customer_id | int     |
+-------------+---------+

Table: Transactions
+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| transaction_id | int     |
| visit_id       | int     |
| amount         | int     |
+----------------+---------+

----------------------------------------
💡 Thought Process:
- Joining Visits and Transactions tables by visit_id
- We want the results that don't match
    - SELECT the customer_id with no transaction_id in the Transactions table
- We then count these no-transactions per customer_id using COUNT and GROUP BY keywords 
- SELECT the count with the required column name using AS keyword

----------------------------------------
🧪 Edge Cases to Consider:


----------------------------------------
✅ Final Query:
*/

SELECT v.customer_id, COUNT(customer_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.visit_id IS NULL
GROUP BY customer_id