/* 
----------------------------------------
📝 Problem Description:
Return the name and bonus of each employee who either has a bonus less than 1000 or has no bonus record at all (NULL)
(The wording of the problem in the Leetcode description could be a little confusing.)
Return the resulting table in any order.

📌 Source: Leetcode (SQL 50)
🔗 Link: https://leetcode.com/problems/employee-bonus/description/?envType=study-plan-v2&envId=top-sql-50
🏷️ Tags: WHERE, JOIN, IS NULL

----------------------------------------
🧾 Table Schema:
Table: Employee
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |
+-------------+---------+

Table: Bonus
+-------------+------+
| Column Name | Type |
+-------------+------+
| empId       | int  |
| bonus       | int  |
+-------------+------+

----------------------------------------
💡 Thought Process:
- LEFT JOIN Employee and Bonus
- Check for Employee records that is absent from Bonus (IS NULL condition)
- And check for employees with Bonus < 1000
- If Bonus.bonus is nullable but indexed, the condition b.bonus < 1000 OR b.bonus IS NULL could cause a partial index scan, 
    which is fine here but might be slightly less performant on large datasets compared to explicit logic like b.empId IS NULL.

----------------------------------------
🧪 Edge Cases to Consider:
-  An employee with no bonus can exist 

----------------------------------------
✅ Final Query:
*/

SELECT 
    e.name, 
    b.bonus
FROM Employee e
LEFT JOIN Bonus b
    ON e.empId = b.empId
WHERE b.empId IS NULL OR b.bonus < 1000