-- ================================================
-- LeetCode Q019: Queries Quality and Percentage
-- Difficulty: Easy
-- Date: 24-05-2026
-- ================================================
-- problem:- Write a solution to find the percentage of the users registered in each contest rounded to two decimals.
-- Return the result table ordered by percentage in descending order. In case of a tie, order it by contest_id in ascending order.
SELECT 
    contest_id,
    ROUND(COUNT(DISTINCT user_id) * 100.0 / (SELECT COUNT(DISTINCT user_id) FROM Registrations), 2) AS percentage
FROM Registrations
GROUP BY contest_id 
ORDER BY percentage DESC, contest_id ASC;
-- Key learning:        
-- 1. Use COUNT(DISTINCT user_id) to count unique users for each contest
-- 2. Use a subquery to get the total number of unique users across all contests for percentage calculation.
