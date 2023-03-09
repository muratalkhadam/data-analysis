drop database if exists stage_zone;
create database stage_zone;

use stage_zone;

DROP TABLE IF EXISTS suicide_by_age;
CREATE TABLE suicide_by_age
(
    id      INT AUTO_INCREMENT PRIMARY KEY,
    Country VARCHAR(50),
    Sex     VARCHAR(20),
    `2016`  FLOAT,
    `2015`  FLOAT,
    `2010`  FLOAT,
    `2000`  FLOAT
);

DROP TABLE IF EXISTS suicide_rates;
CREATE TABLE suicide_rates
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    Country    VARCHAR(50),
    Sex        VARCHAR(20),
    `80_above` FLOAT,
    `70to79`   FLOAT,
    `60to69`   FLOAT,
    `50to59`   FLOAT,
    `40to49`   FLOAT,
    `30to39`   FLOAT,
    `20to29`   FLOAT,
    `10to19`   FLOAT
);

DROP TABLE IF EXISTS facilities;
CREATE TABLE facilities
(
    id                     INT AUTO_INCREMENT PRIMARY KEY,
    Country                VARCHAR(50),
    `Year`                 INT,
    Mental_hospitals       FLOAT,
    health_units           FLOAT,
    outpatient_facilities  FLOAT,
    day_treatment          FLOAT,
    residential_facilities FLOAT
);

DROP TABLE IF EXISTS human_resources;
CREATE TABLE human_resources
(
    id             INT AUTO_INCREMENT PRIMARY KEY,
    Country        VARCHAR(50),
    `Year`         INT,
    Psychiatrists  FLOAT,
    Nurses         FLOAT,
    Social_workers FLOAT,
    Psychologists  FLOAT
);
