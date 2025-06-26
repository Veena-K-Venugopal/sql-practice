/* 
----------------------------------------
📝 Problem Description:
Report the product_name, year, and price for each sale_id in the Sales table.
Return the resulting table in any order.

📌 Source: Leetcode (SQL 50)
🔗 Link: https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50
🏷️ Tags: JOIN, Aliases

----------------------------------------
🧾 Table Schema:
Table: Sales
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| sale_id     | int   |
| product_id  | int   |
| year        | int   |
| quantity    | int   |
| price       | int   |
+-------------+-------+

Table: Products
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| product_id   | int     |
| product_name | varchar |
+--------------+---------+

----------------------------------------
💡 Thought Process:
- Perform an INNER JOIN between Product and Sales using product_id.
- Select the required columns: product_name, year, and price.

----------------------------------------
🧪 Edge Cases to Consider:
-  A product_id exists in the Product table but has no corresponding entry in the Sales table (INNER JOIN excludes these records)

----------------------------------------
✅ Final Query:
*/

SELECT p.product_name, s.year, s.price 
FROM Product p
JOIN Sales s 
ON P.product_id = S.product_id