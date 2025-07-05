/* 
----------------------------------------
📝 Problem Description:
Report all the dates' id with higher temperature compared to its previous dates (yesterday)
Return the resulting table in any order.

📌 Source: Leetcode (SQL 50)
🔗 Link: https://leetcode.com/problems/rising-temperature/description/?envType=study-plan-v2&envId=top-sql-50
🏷️ Tags: SELF JOIN, DATE_ADD, INTERVAL

----------------------------------------
🧾 Table Schema:
Table: Weather
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+

----------------------------------------
💡 Thought Process:
- We have to compare any 2 rows of the table, so we can use self JOIN
- For this, we can use the constraints recordDate will have a day difference
    and temperature will be higher on the following day than the preceding 
- We can either self JOIN explicitly or through using ALIASES and constraints

----------------------------------------
🧪 Edge Cases to Consider:

----------------------------------------
✅ Final Query:
*/

/* Solution 1 */

SELECT w1.id
FROM Weather w1, Weather w2
WHERE w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
    AND w1.temperature > w2.temperature 

/* Solution 2 */

SELECT w1.id
FROM Weather w1
JOIN Weather w2
ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
WHERE w1.temperature > w2.temperature 