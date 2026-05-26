-- ================================================
-- LeetCode Q024: User Activity
-- Difficulty: easy
-- Date: 26-05-2026
-- ================================================
-- problem:-
-- Write a solution to find the total number of active users for each day.
-- An active user is a user who has at least one activity on that day.
-- Return the result table ordered by date in ascending order.

SELECT 
    activity_date,
    COUNT(DISTINCT user_id) AS active_users
FROM UserActivity
GROUP BY activity_date
ORDER BY activity_date ASC;

-- Key learning:
-- 1. Use COUNT(DISTINCT user_id) to count unique active users for each
--    activity_date.
-- 2. Group the results by activity_date and order the final output by
--    activity_date in ascending order.


                