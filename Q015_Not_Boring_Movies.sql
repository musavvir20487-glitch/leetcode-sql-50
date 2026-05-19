-- LeetCode Q015: 
--Find movies that are not boring. A movie is considered boring if its id is present in the Boring_Movies table.
-- Difficulty: Easy
-- Date: 19-05-2026
-- ================================================
-- Problem:
-- Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".
-- Return the result table ordered by rating in descending order.

SELECT m.movie_id, m.title, m.description, m.rating
FROM Movies m
WHERE m.movie_id % 2 = 1
AND m.description != 'boring'
ORDER BY m.rating DESC;
    