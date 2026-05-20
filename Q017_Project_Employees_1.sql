-- ================================================
-- LeetCode Q017: Project Employees I
-- Difficulty: Easy
-- Date: 20-05-2026
-- ================================================
-- Problem: Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits.
-- Return the result table in any order.


SELECT 
    project_id,
    ROUND(AVG(experience_years), 2) AS average_experience       
FROM Employees
GROUP BY project_id;    

-- Key learning:
-- 1. Use AVG() to calculate average experience years for each project.

