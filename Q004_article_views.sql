-- ================================================
-- LeetCode Q004: Article Views I
-- Difficulty: Easy
-- Date: 17-05-2026
-- ================================================
-- Problem: Find all authors who viewed at least one of their own articles
-- author_id = viewer_id means author viewed their own article

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC;

-- Key learning: DISTINCT removes duplicate author_ids
-- Self-reference check: author_id = viewer_id