DROP DATABASE IF EXISTS data_warehouse;
CREATE DATABASE data_warehouse;

USE stage_zone;
# YEAR
SELECT DISTINCT `year`
FROM (SELECT `year`
      FROM drivers
      UNION
      SELECT `year`
      FROM laps
      UNION
      SELECT `year`
      FROM races) tab;


SELECT DISTINCT c.country_name, d.Nationality, c.region, c.sub_region
FROM country_code c
         JOIN drivers d
              ON c.country_code = d.Nationality;
# REG SUB-REG
SELECT DISTINCT region
FROM country_code
WHERE region != '';

SELECT DISTINCT sub_region
FROM country_code
WHERE sub_region != '';
# DRIVER
SELECT DISTINCT Driver
FROM (SELECT Driver
      FROM drivers
      UNION
      SELECT Driver
      FROM laps
      UNION
      SELECT Winner
      FROM races) tab;
# GRAND
SELECT DISTINCT GrandPrix
FROM (SELECT GrandPrix
      FROM races
      UNION
      SELECT GrandPrix
      FROM laps) tab;

SELECT DISTINCT Car
FROM (SELECT Car
      FROM races
      UNION
      SELECT Car
      FROM laps
      UNION
      SELECT Car
      FROM drivers) tab
WHERE Car != '';