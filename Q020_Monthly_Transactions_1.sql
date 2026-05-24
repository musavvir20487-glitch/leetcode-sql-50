-- ================================================
-- LeetCode Q020: Monthly Transactions I
-- Difficulty: MODERATE
-- Date: 24-05-2026
-- ================================================
-- problem:-
-- Write a solution to find the total number of transactions for each month in the year 2020.
-- Return the result table in any order.    

SELECT 
    MONTH(transaction_date) AS month,
    COUNT(*) AS total_transactions
FROM Transactions           
WHERE YEAR(transaction_date) = 2020 
GROUP BY MONTH(transaction_date);
-- Key learning: 
-- 1. Use MONTH() and YEAR() functions to extract month and year from transaction_date. 
-- 2. Use COUNT(*) to count total transactions for each month in the year 2020.
        