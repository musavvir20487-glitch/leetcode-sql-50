-- ================================================
-- LeetCode Q007: Product Sales Analysis I
-- Difficulty: Easy
-- Date: 17-05-2026
-- ================================================
-- Problem: Show product_name, year, price for each sale

SELECT p.product_name, s.year, s.price
FROM Sales s
INNER JOIN Product p
    ON s.product_id = p.product_id;

-- Key learning: INNER JOIN to get product_name from Product table
-- sales table has product_id but not product_name
-- Join on product_id to get the name