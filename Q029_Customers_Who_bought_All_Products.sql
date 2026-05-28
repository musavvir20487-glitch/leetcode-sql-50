-- ================================================
-- LeetCode Q029: Customers Who Bought All Products
-- Difficulty: medium
-- Date: 28-05-2026
-- ================================================
-- problem:
-- Write a solution to find the customers who bought all the products.
-- Return the result table ordered by customer_id in ascending order.

SELECT 
    customer_id
FROM Purchases
GROUP BY customer_id
HAVING COUNT(DISTINCT product_id) = (SELECT COUNT(DISTINCT product_id)
FROM Purchases)







