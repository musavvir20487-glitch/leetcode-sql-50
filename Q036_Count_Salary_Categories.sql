-- ================================================
-- LeetCode Q036:count Salary Categories
-- Difficulty: medium
-- Date: 30-05-2026
-- ================================================
-- problem:
-- Write a solution to count the number of employees in each salary category. The salary categories are defined as follows:
-- - 'Low' for salaries less than 3000  
-- - 'Medium' for salaries between 3000 and 7000 (inclusive)
-- - 'High' for salaries greater than 7000
-- Return the result table with two columns: salary_category and employee_count, ordered by salary_category in the order of 'Low', 'Medium', and 'High'.
SELECT 
    CASE 
        WHEN salary < 3000 THEN 'Low'
        WHEN salary BETWEEN 3000 AND 7000 THEN 'Medium'
        ELSE 'High'
    END AS salary_category,
    COUNT(*) AS employee_count
FROM Employees
GROUP BY salary_category
ORDER BY 
    CASE salary_category
        WHEN 'Low' THEN 1
        WHEN 'Medium' THEN 2
        WHEN 'High' THEN 3
    END;
-- Key learning:
-- 1. Use a CASE statement to categorize salaries into 'Low', 'Medium', and 'High'.
-- 2. Use COUNT(*) to count the number of employees in each salary category.
-- 3. Group the results by salary_category to get the count for each category.
-- 4. Use a custom ORDER BY clause to order the salary categories in the specified order.
        