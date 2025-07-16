/* 
----------------------------------------
📝 Problem Description:
Report the names of customers that are not referred by customer with id = 2
Return the resulting table in any order.

📌 Source: Leetcode (SQL 50)
🔗 Link: https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50
🏷️ Tags: WHERE, JOIN, AVG(), ROUND()

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
- JOINed the table to itself on both machine_id and process_id
- Filtered for 'start' and 'end' activity types 
- Subtracted the timestamps 
- Used AVG() to calculate the average processing time per machine 
- Applied ROUND(..., 3) to round the result to 3 decimal places
- GROUPed BY machine_id

----------------------------------------
✅ Final Query:
*/

SELECT a1.machine_id, 
    ROUND(AVG(a1.timestamp - a2.timestamp), 3) AS processing_time
FROM Activity a1
JOIN Activity a2
    ON a1.machine_id = a2.machine_id 
    AND a1.process_id = a2.process_id
WHERE a1.activity_type = 'end' 
    AND a2.activity_type = 'start'
GROUP BY a1.machine_id