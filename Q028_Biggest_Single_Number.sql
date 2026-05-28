-- ================================================
-- LeetCode Q028: Biggest Single Number 
-- Difficulty: easy
-- Date: 28-05-2026
-- ================================================
-- problem:
-- Write a solution to find the biggest single number in the given table.
-- A single number is a number that appears only once in the table.             

SELECT 
    MAX(num) AS biggest_single_number
FROM (
    SELECT      
        num
    FROM Numbers
    GROUP BY num
    HAVING COUNT(*) = 1
) AS single_numbers;
-- Key learning:
-- 1. Use GROUP BY num to group the numbers and HAVING COUNT(*) =
--    1 to filter out the single numbers.
-- 2. Use MAX(num) to find the biggest single number from the filtered results.
