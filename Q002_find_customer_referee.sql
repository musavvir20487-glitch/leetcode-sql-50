-- ================================================
-- LeetCode Q002: Find Customer Referee
-- Difficulty: Easy
-- Date: 17-05-2026
-- ================================================
-- Problem: Find names of customers not referred by customer id = 2

SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;

-- Key learning: NULL values are NOT caught by != operator
-- Must explicitly handle NULL with OR referee_id IS NULL