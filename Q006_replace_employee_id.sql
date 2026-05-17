-- ================================================
-- LeetCode Q006: Replace Employee ID With Unique Identifier
-- Difficulty: Easy
-- Date: 17-05-2026
-- ================================================
-- Problem: Show unique_id for each employee, NULL if no unique_id exists

SELECT eu.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI eu
    ON e.id = eu.id;

-- Key learning: LEFT JOIN keeps all employees even if no unique_id
-- Employees with no unique_id show NULL automatically