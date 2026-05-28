-- ================================================
-- LeetCode Q030: Reports Count
-- Difficulty: easy
-- Date: 29-05-2026
-- ================================================
-- problem:
-- Write a solution to find the number of reports for each user.
-- Return the result table ordered by user_id in ascending order.   

SELECT 
    user_id,
    COUNT(*) AS report_count
FROM Reports
GROUP BY user_id
ORDER BY user_id ASC;
-- Key learning:
-- 1. Use COUNT(*) to count the number of reports for each user.
-- 2. Group the results by user_id to get the count for each user.
