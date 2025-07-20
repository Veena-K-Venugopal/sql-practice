/* 
----------------------------------------
📝 Problem Description:
Find the number of times each student attended each exam
Return the resulting table ordered by student_id and subject_name

📌 Source: Leetcode (SQL 50)
🔗 Link: https://leetcode.com/problems/students-and-examinations/description/?envType=study-plan-v2&envId=top-sql-50
🏷️ Tags: COUNT(), CROSS JOIN, LEFT JOIN, GROUP BY, ORDER BY

----------------------------------------
🧾 Table Schema:
Table: Students
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| student_id    | int     |
| student_name  | varchar |
+---------------+---------+

Table: Subjects
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| subject_name | varchar |
+--------------+---------+

Table: Examinations
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| student_id   | int     |
| subject_name | varchar |
+--------------+---------+

----------------------------------------
💡 Thought Process:
- Create a CROSS JOIN between all students and all subjects
    - CROSS JOIN ensures all combinations of students × subjects
- LEFT JOIN this with Examinations to count how many times each student attended each subject.
    - LEFT JOIN ensures that even if there’s no matching exam, the combination shows up (with 0)
- COUNT(e.subject_name) counts how many times the student appeared for that subject. 
  If no match, it returns 0

----------------------------------------
🧪 Edge Cases to Consider:
-  A student might not attend one or all of the exams. 

----------------------------------------
✅ Final Query:
*/

SELECT 
    st.student_id,
    st.student_name,
    su.subject_name,
    COUNT(ex.subject_name) AS attended_exams
FROM Students st
CROSS JOIN Subjects su
LEFT JOIN Examinations ex
    ON st.student_id  = ex.student_id AND su.subject_name = ex.subject_name
GROUP BY st.student_id, st.student_name, su.subject_name
ORDER BY st.student_id, su.subject_name