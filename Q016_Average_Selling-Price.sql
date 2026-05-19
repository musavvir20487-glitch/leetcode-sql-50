-- ================================================
-- LeetCode Q016: Customer Who Visited But Did Not Make Any Transaction
-- Difficulty: Easy
-- Date: 19-05-2026
-- ================================================
-- Problem: 
-- Write a solution to find the average selling price for each product.
-- average_price should be rounded to 2 decimal places.
-- If a product does not have any sold units, its average selling price is assumed to be 0.
-- Return the result table in any order.
# Write your MySQL query statement below
SELECT 
    p.product_id,
    COALESCE(ROUND(SUM(u.units * p.price) / SUM(u.units), 2), 0) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
    ON p.product_id = u.product_id
    AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
