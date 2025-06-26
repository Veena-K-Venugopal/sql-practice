/* 
----------------------------------------
📝 Problem Description:
Show each employee’s name with their unique ID (if available). 
If no unique ID exists, show NULL.

📌 Source: Leetcode (SQL 50)
🔗 Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50
🏷️ Tags: JOIN, LEFT JOIN, Aliases

----------------------------------------
🧾 Table Schema:
Table: Employees
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| id           | int     |
| name         | varchar |
+--------------+---------+

Table: EmployeeUNI
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| id            | int     |
| unique_id     | int |
+--------------+---------+

----------------------------------------
💡 Thought Process:
- Start from Employees (we want all employees)
- LEFT JOIN on id to get unique_id if present
- SELECT unique_id and name

----------------------------------------
🧪 Edge Cases to Consider:
- Employees with no entry in `EmployeeUNI` (their unique_id should be null)

----------------------------------------
✅ Final Query:
*/

SELECT e.name, u.unique_id
FROM Employees e
LEFT JOIN EmployeeUNI u
ON e.id = u.id