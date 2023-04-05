DROP DATABASE IF EXISTS stage_zone;
CREATE DATABASE stage_zone;

USE stage_zone;

DROP TABLE IF EXISTS drivers;
CREATE TABLE drivers
(
    Pos INT,
    Driver VARCHAR(50),
    Nationality VARCHAR(50),
    Car VARCHAR(50),
    PTS INT,
    `year` INT
);

DROP TABLE IF EXISTS laps;
CREATE TABLE laps
(
    GrandPrix VARCHAR(50),
    Driver VARCHAR(50),
    Car VARCHAR(50),
    `Time` TIME(3),
    `year` INT
);

DROP TABLE IF EXISTS races;
CREATE TABLE races
(
    GrandPrix VARCHAR(50),
    `Date` DATE,
    Winner VARCHAR(50),
    Car VARCHAR(50),
    Laps INT,
    `Time` VARCHAR(15),
    `year` INT
);

DROP TABLE IF EXISTS country_code;
CREATE TABLE country_code
(
    country_name VARCHAR(60),
    country_code VARCHAR(3),
    region VARCHAR(50),
    sub_region VARCHAR(50)
);