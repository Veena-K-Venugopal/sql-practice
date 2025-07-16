/* 
----------------------------------------
📝 Problem Description:
Find the average time each machine takes to complete a process rounded off to 3 decimal places
Return the resulting table in any order.

📌 Source: Leetcode (SQL 50)
🔗 Link: https://leetcode.com/problems/average-time-of-process-per-machine/submissions/1700229318/?envType=study-plan-v2&envId=top-sql-50
🏷️ Tags: WHERE, JOIN, AVG(), ROUND()

----------------------------------------
🧾 Table Schema:
Table: Activity
+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| machine_id     | int     |
| process_id     | int     |
| activity_type  | enum    |
| timestamp      | float   |
+----------------+---------+

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