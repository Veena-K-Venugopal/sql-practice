/* 
----------------------------------------
📝 Problem Description:
Report the IDs of the invalid tweets.
The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.
Return the resulting table in any order.

📌 Source: Leetcode (SQL 50)
🔗 Link: https://leetcode.com/problems/invalid-tweets/description/?envType=study-plan-v2&envId=top-sql-50
🏷️ Tags: WHERE, LENGTH

----------------------------------------
🧾 Table Schema:
Table: Tweets
+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| tweet_id       | int     |
| content        | varchar |
+----------------+---------+

----------------------------------------
💡 Thought Process:
- Use LENGTH function on WHERE clause to get the required records

----------------------------------------
✅ Final Query:
*/

SELECT tweet_id 
FROM Tweets 
WHERE LENGTH(content) > 15