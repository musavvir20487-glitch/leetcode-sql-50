-- ================================================
-- LeetCode Q023: Number of Unique Subjects
-- Difficulty: easy
-- Date: 26-05-2026
-- ================================================
-- problem:-
-- Write a solution to find the total number of unique subjects for each student. 
-- Return the result table ordered by student_id in ascending order.

SELECT 
    student_id,
    COUNT(DISTINCT subject) AS unique_subjects
FROM Enrollments
GROUP BY student_id 
ORDER BY student_id ASC;
-- Key learning:        

-- 1. Use COUNT(DISTINCT subject) to count unique subjects for each student.
-- 2. Group the results by student_id and order the final output by student_id in ascending order.  