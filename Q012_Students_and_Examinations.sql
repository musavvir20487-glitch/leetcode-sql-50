LeetCode Q012: 
-- Difficulty: Easy
-- Date: 18-05-2026
-- ================================================
-- Problem:Write a solution to find the number of times each student attended each exam.
-- Return the result table ordered by student_id and subject_name.
SELECT s.student_id, s.student_name, sb.subject_name, count(e.student_id) as attended_exams from students s cross join subjects sb 
 LEFT JOIN Examinations e 
    ON s.student_id = e.student_id 
    AND e.subject_name = sb.subject_name
group by s.student_id, s.student_name,sb.subject_name
order by s.student_id,sb.subject_name;