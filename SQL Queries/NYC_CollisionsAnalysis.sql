-- 1. Percentage of Accidents per month
SELECT
    EXTRACT(MONTH FROM date) AS collision_month,
    COUNT(*) AS accident_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM collisions), 2) AS percentage
FROM collisions
GROUP BY collision_month
ORDER BY collision_month;


-- 2. Accidents by day of week and hour of day
SELECT
    TO_CHAR(date, 'Day') AS day_of_week,
    EXTRACT(HOUR FROM time) AS hour_of_day,
    COUNT(*) AS accident_count
FROM collisions
GROUP BY day_of_week, hour_of_day
ORDER BY accident_count DESC;

--3. Streets with the most reported accidents

select street, count(*) as accident_count, ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM collisions), 2) AS percentage
FROM (
	SELECT street_name AS street FROM collisions
	UNION ALL
	SELECT cross_street AS street FROM collisions) AS all_streets
WHERE street IS NOT NULL
GROUP BY street
ORDER BY accident_count DESC
limit 10;


--4. 
SELECT
    contributing_factor AS factor,
    COUNT(*) AS accident_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM collisions), 2) AS percentage
FROM collisions
GROUP BY factor
ORDER BY accident_count DESC;


-- Fatality
SELECT
    contributing_factor AS factor,
    COUNT(*) AS accident_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM collisions), 2) AS percentage
FROM collisions
WHERE persons_killed > 0
GROUP BY factor
ORDER BY accident_count DESC;
















