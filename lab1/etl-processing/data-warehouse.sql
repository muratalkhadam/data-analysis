DROP DATABASE IF EXISTS data_warehouse;
CREATE DATABASE data_warehouse;

USE data_warehouse;

DROP TABLE IF EXISTS dim_country;
CREATE TABLE dim_country
(
    id           INT AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(50) UNIQUE
);

INSERT INTO data_warehouse.dim_country(country_name)
SELECT DISTINCT Country
FROM (SELECT Country
      FROM stage_zone.suicide_rates
      UNION
      SELECT Country
      FROM stage_zone.suicide_by_age
      UNION
      SELECT Country
      FROM stage_zone.human_resources
      UNION
      SELECT Country
      FROM stage_zone.facilities) AS c;

DROP TABLE IF EXISTS dim_year;
CREATE TABLE dim_year
(
    id     INT AUTO_INCREMENT PRIMARY KEY,
    `year` VARCHAR(50) UNIQUE
);

INSERT INTO data_warehouse.dim_year(`year`) VALUES ('2000');
INSERT INTO data_warehouse.dim_year(`year`) VALUES ('2010');
INSERT INTO data_warehouse.dim_year(`year`) VALUES ('2015');
INSERT INTO data_warehouse.dim_year(`year`) VALUES ('2016');

