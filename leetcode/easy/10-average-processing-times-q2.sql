/* 
----------------------------------------
📝 Problem Description:
Find the average time each machine takes to complete a process rounded off to 3 decimal places
Return the resulting table in any order.
(We are using pivoting pattern here)

📌 Source: Leetcode (SQL 50)
🔗 Link: https://leetcode.com/problems/average-time-of-process-per-machine/submissions/1700229318/?envType=study-plan-v2&envId=top-sql-50
🏷️ Tags: CASE WHEN, pivoting, MAX(), ROUND(), AVG(), GROUP BY, conditional aggregation, Common Table Expression (CTE)

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
- Combine start and end timestamped rows into columns
- Use conditional aggregation to get one row per machine_id + process_id, and pull values into separate columns based on condition
- That is, if the row is a start, give the timestamp in the start_time column and if it is end, give the timestamp in the end_time column
- If a CASE statement doesn't have an ELSE, SQL defaults it to NULL
- Use MAX() to collapse multiple rows into one, extracting the value
- Use GROUP BY machine_id, process_id to ensure one row per process
- After pivoting calculate duration and average by each machine
- Use ROUND() to get the decimal places correct

----------------------------------------
✅ Final Query:
*/

WITH pivoted AS (
    SELECT 
        machine_id, 
        process_id,
        MAX(CASE WHEN activity_type = 'start' THEN timestamp END) AS start_time,
        MAX(CASE WHEN activity_type = 'end' THEN timestamp END) AS end_time
    FROM Activity
    GROUP BY machine_id, process_id
)
SELECT
    machine_id,
    ROUND(AVG(end_time - start_time), 3) AS processing_time
FROM pivoted
GROUP BY machine_id