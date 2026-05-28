-- ================================================
-- LeetCode Q031: Primary Department
-- Difficulty: easy
-- Date: 29-05-2026
-- ================================================
-- problem:
-- Write a solution to find the primary department for each employee. The primary department is the one with the highest salary for that employee. If there are multiple departments with the same highest salary, return the one with the smallest department_id.
-- Return the result table ordered by employee_id in ascending order.


SELECT 
    employee_id,
    department_id AS primary_department
FROM (
    SELECT
        employee_id,
        department_id,
        salary,
        RANK() OVER (PARTITION BY employee_id ORDER BY salary DESC, department_id ASC) AS rnk
    FROM Employees
) AS ranked
WHERE rnk = 1
ORDER BY employee_id ASC;

-- Key learning:
-- 1. Use RANK() window function to rank departments for each employee based on salary
-- 2. Order by salary in descending order and department_id in ascending order to handle ties
-- 3. Filter the results to get only the primary department for each employee (where rnk = 1)   

