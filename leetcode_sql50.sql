-- ============================================
-- LeetCode SQL 50 Study Plan (MySQL)
-- ============================================

-- #3: Big Countries (595)
-- A country is big if area >= 3,000,000 OR population >= 25,000,000.
SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;

-- #4: Article Views I (1148)
-- Find authors who viewed at least one of their own articles,
-- sorted by id in ascending order.
SELECT DISTINCT viewer_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC;
