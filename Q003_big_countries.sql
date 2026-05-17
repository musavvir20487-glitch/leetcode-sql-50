-- ================================================
-- LeetCode Q003: Big Countries
-- Difficulty: Easy
-- Date: 17-05-2026
-- ================================================
-- Problem: Find countries with area >= 3000000 OR population >= 25000000

SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;

-- Key learning: OR condition — either condition being true is enough