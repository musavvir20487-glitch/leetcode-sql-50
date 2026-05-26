-- ================================================
-- LeetCode Q026: Classes
-- Difficulty: easy
-- Date: 26-05-2026
-- ================================================
-- problem:-
-- Write a solution to find the total number of classes for each student.
-- Return the result table ordered by student_id in ascending order.    
SELECT 
    student_id,
    COUNT(DISTINCT class) AS total_classes
FROM Enrollments
GROUP BY student_id 
ORDER BY student_id ASC;
-- Key learning:              
-- 1. Use COUNT(DISTINCT class) to count unique classes for each student.
















