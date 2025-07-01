/* 
----------------------------------------
📝 Problem Description:
Report the name, population, and area of the big countries
A country is big if:
    - it has an area of at least three million (i.e., 3000000 km^2), or
    - it has a population of at least twenty-five million (i.e., 25000000).
Return the resulting table in any order.

📌 Source: Leetcode (SQL 50)
🔗 Link: https://leetcode.com/problems/big-countries/description/?envType=study-plan-v2&envId=top-sql-50
🏷️ Tags: WHERE, OR

----------------------------------------
🧾 Table Schema:
Table: World
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | bigint  |
+-------------+---------+

----------------------------------------
💡 Thought Process:
- Combine both the conditions in WHERE clause using OR
----------------------------------------
✅ Final Query:
*/

SELECT name, population, area 
FROM World 
WHERE area >= 3000000 OR population >= 25000000