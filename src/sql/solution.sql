-- PLEASE READ THIS BEFORE RUNNING THE EXERCISE

-- ⚠️ IMPORTANT: This SQL file may crash due to two common issues: comments and missing semicolons.

-- ✅ Suggestions:
-- 1) Always end each SQL query with a semicolon `;`
-- 2) Ensure comments are well-formed:
--    - Use `--` for single-line comments only
--    - Avoid inline comments after queries
--    - Do not use `/* */` multi-line comments, as they may break execution

-- -----------------------------------------------
-- queries.sql
-- Complete each mission by writing your SQL query
-- directly below the corresponding instruction
-- -----------------------------------------------

SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;


-- Level 1 – Basic Exploration

-- 1. First 10 observations
SELECT * FROM observations LIMIT 10;

-- 2. Present region identifiers
SELECT DISTINCT region_id FROM observations;

-- 3. Total distinct species observed
SELECT COUNT(DISTINCT species_id) AS total_species FROM observations;

-- 4. Observations in region with ID 2
SELECT * FROM observations WHERE region_id = 2;

-- 5. Observations from the day 1998-08-08
SELECT * FROM observations WHERE observation_date = '1998-08-08';

-- Level 2 – Aggregation and Sorting

-- 6. Region with the most observations
SELECT region_id, COUNT(*) AS total_observations
FROM observations
GROUP BY region_id
ORDER BY total_observations DESC;

-- 7. Most frequent species
SELECT species_id, COUNT(*) AS total_records
FROM observations
GROUP BY species_id
ORDER BY total_records DESC
LIMIT 5;

-- 8. Species with fewer than 5 records
SELECT species_id, COUNT(*) AS observation_count
FROM observations
GROUP BY species_id
HAVING observation_count < 5
ORDER BY observation_count ASC;

-- 9. Most active observers
SELECT observer, COUNT(*) AS total
FROM observations
GROUP BY observer
ORDER BY total DESC;

-- Level 3 – JOIN

-- 10. Region name per observation
SELECT observations.id, regions.name AS region_name, observations.observation_date
FROM observations
JOIN regions ON observations.region_id = regions.id;

-- 11. Scientific name of each species
SELECT observations.id, species.scientific_name
FROM observations
JOIN species ON observations.species_id = species.id;

-- 12. Most observed species per region
SELECT regions.name AS region, species.scientific_name, COUNT(*) AS total
FROM observations
JOIN species ON observations.species_id = species.id
JOIN regions ON observations.region_id = regions.id
GROUP BY region, species.scientific_name
ORDER BY region, total DESC;


-- Level 4 (optional) – Data Manipulation

-- 13. Insert fictitious observation
INSERT INTO observations (
    species_id, region_id, observer, observation_date, count
) VALUES (
    3, 2, 'analyst_test', '2024-12-01', 1
);

-- 14. Correct scientific name
UPDATE species
SET scientific_name = 'Panthera onca'
WHERE scientific_name = 'Panthera oncca';

-- 15. Delete a specific observation
DELETE FROM observations
WHERE id = 2;
