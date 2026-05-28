-- ================================================
-- LeetCode Q031: triangle Judgement
-- Difficulty: easy
-- Date: 29-05-2026
-- ================================================
-- problem:
-- Write a solution to determine if three given lengths can form a triangle. A triangle can be formed if the sum of any two sides is greater than the third side.
-- Return true if the lengths can form a triangle, and false otherwise.

SELECT 
    CASE 
        WHEN a + b > c AND a + c > b AND b + c > a THEN 'true'
        ELSE 'false'
    END AS can_form_triangle
FROM Triangle
LIMIT 1;

-- Key learning:
-- 1. Use a CASE statement to evaluate the triangle inequality conditions.
-- 2. Check if the sum of any two sides is greater than the third side to determine if a triangle can be formed.

        