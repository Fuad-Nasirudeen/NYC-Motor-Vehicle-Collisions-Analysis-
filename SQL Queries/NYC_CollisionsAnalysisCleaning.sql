UPDATE collisions
SET
   	borough = COALESCE(NULLIF(TRIM(borough), ''), 'Unknown'),
    street_name = COALESCE(NULLIF(TRIM(street_name), ''), 'Unknown'),
    cross_street = COALESCE(NULLIF(TRIM(cross_street), ''), 'Unknown'),
    contributing_factor = COALESCE(NULLIF(TRIM(contributing_factor), ''), 'Unknown');


ALTER TABLE collisions
ADD COLUMN fatality VARCHAR(10);

UPDATE collisions
SET fatality = CASE
    WHEN persons_killed > 0 THEN 'fatal'
    ELSE 'non-fatal'
END;














	