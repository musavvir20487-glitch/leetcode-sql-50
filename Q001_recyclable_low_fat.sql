-- ================================================
-- LeetCode Q001: Recyclable and Low Fat Products
-- Difficulty: Easy
-- Date: 16-05-2026
-- ================================================

-- Problem: Find products that are both low fat and recyclable

SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';

-- Key learning: Simple WHERE with AND condition