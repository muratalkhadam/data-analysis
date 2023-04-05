USE stage_zone;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\datasets\\GrandPrix_drivers_details_1950_to_2022.csv'
    INTO TABLE drivers
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\datasets\\GrandPrix_fastest-laps_details_1950_to_2022.csv'
    INTO TABLE laps
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\datasets\\GrandPrix_races_details_1950_to_2022.csv'
    INTO TABLE races
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\datasets\\country-codes.csv'
    INTO TABLE country_code
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS
    (country_name, @skip, country_code, @skip, @skip, region, sub_region, @skip, @skip, @skip, @skip)
