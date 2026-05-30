-- ================================================
-- LeetCode Q037: Employee whose Manager Left the Company
-- Difficulty: easy
-- Date: 30-05-2026
-- ================================================
-- problem:
-- Write a solution to find the employees whose manager has left the company. An employee's manager is identified by the manager_id column in the Employees table. If an employee's manager has left the company, it means that there is no record in the Employees table with the manager_id of that employee.
-- Return the result table with two columns: employee_id and employee_name, ordered by employee_id in ascending order.      
SELECT 
    employee_id,
    employee_name
FROM Employees
WHERE manager_id IS NOT NULL
AND manager_id NOT IN (SELECT employee_id FROM Employees)
ORDER BY employee_id ASC;
-- Key learning:
-- 1. Use a subquery to check if the manager_id of an employee exists in the Employees table.
-- 2. Filter the results to include only those employees whose manager_id is not null and does not exist in the Employees table.

