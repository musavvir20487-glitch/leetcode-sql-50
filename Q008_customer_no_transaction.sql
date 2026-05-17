-- ================================================
-- LeetCode Q008: Customer Who Visited But Did Not Make Any Transaction
-- Difficulty: Easy
-- Date: 17-05-2026
-- ================================================
-- Problem: Find customer_id who visited but made no transaction
-- Also show count of visits with no transaction

SELECT v.customer_id,
       COUNT(v.visit_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
    ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;

-- Key learning: LEFT JOIN keeps all visits even with no transaction
-- WHERE t.transaction_id IS NULL = visits with no transaction
-- COUNT gives how many such visits per customer