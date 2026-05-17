-- ================================================
-- LeetCode Q005: Invalid Tweets
-- Difficulty: Easy
-- Date: 17-05-2026
-- ================================================
-- Problem: Find tweet_ids where content length is strictly more than 15

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;

-- Key learning: LENGTH() function counts characters in a string
-- Strictly more than 15 means > 15, not >= 15