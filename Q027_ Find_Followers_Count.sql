-- ================================================
-- LeetCode Q027: Find Followers Count
-- Difficulty: easy
-- Date: 28-05-2026
-- ================================================
-- problem:-Write a solution that will, for each user, return the number of followers.
-- Return the result table ordered by user_id in ascending order.
SELECT 
    user_id,
    COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id ASC;   
-- Key learning:
-- 1. Use COUNT(follower_id) to count the number of followers for each user
-- 2. Group the results by user_id and order the final output by user_id in ascending order.
