/* 
----------------------------------------
📝 Problem Description:
Select all the authors that viewed at least one of their own works
Return the resulting table sorted by id in ascending order.

📌 Source: Leetcode (SQL 50)
🔗 Link: https://leetcode.com/problems/article-views-i/description/?envType=study-plan-v2&envId=top-sql-50
🏷️ Tags: WHERE, AS, ORDER BY 

----------------------------------------
🧾 Table Schema:
Table: Views
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| article_id    | int     |
| author_id     | int     |
| viewer_id     | int     |
| view_date     | date    |
+---------------+---------+

----------------------------------------
💡 Thought Process:
- Use AS keyword to report the result in the desired tablename
- Use WHERE clause to get the results satisfying the given constraint
- Use ORDER BY to order the results in ascending order (DEFAULT)

----------------------------------------
✅ Final Query:
*/

SELECT DISTINCT author_id AS id 
FROM Views 
WHERE author_id = viewer_id
ORDER BY author_id