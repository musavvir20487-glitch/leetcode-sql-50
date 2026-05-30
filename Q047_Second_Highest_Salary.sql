-- LeetCode Q047: Department Top 3 Salaries
-- Difficulty: medium
-- Date: 31-05-2026
-- ================================================
-- problem:
-- Write a solution to find the second highest salary for each department. If there is no second highest salary, return null.
-- Return the result table with two columns: department_id and second_highest_salary, ordered by
-- department_id in ascending order.
SELECT 
    department_id,
    MAX(salary) AS second_highest_salary
FROM Employees AS e1
WHERE salary < (SELECT MAX(salary) FROM Employees AS e2 WHERE e2.department_id = e1.department_id)
GROUP BY department_id
ORDER BY department_id ASC;
-- Key learning:
-- 1. Use a subquery to find the maximum salary for each department and filter the
--    salaries to find the second highest salary.
-- 2. Use MAX() to get the second highest salary for each department.
-- 3. Group the results by department_id and order the final results by department_id in ascending order.

        