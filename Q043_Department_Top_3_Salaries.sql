-- ================================================
-- LeetCode Q043: Department Top 3 Salaries
-- Difficulty: hard
-- Date: 30-05-2026
-- ================================================
-- problem:
-- Write a solution to find the top three salaries for each department. If there are less than three employees in a department, return all the salaries for that department.
-- Return the result table with three columns: department_id, employee_id, and salary, ordered by department_id in ascending order and salary in descending order.
SELECT 
    department_id,
    employee_id,
    salary
FROM (
    SELECT
        department_id,
        employee_id,
        salary,
        RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rnk
    FROM Employees
) AS ranked
WHERE rnk <= 3
ORDER BY department_id ASC, salary DESC;
-- Key learning:
-- 1. Use RANK() window function to rank salaries for each department.
-- 2. Order by salary in descending order to get the top salaries.
-- 3. Filter the results to get only the top three salaries for each department (where rnk <= 3).
-- 4. Order the final results by department_id in ascending order and salary in descending order
                