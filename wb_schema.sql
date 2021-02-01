-- To run this from the mariaDB prompt, use 'source wb_schema.sql'

CREATE DATABASE IF NOT EXISTS WB;
USE WB;

CREATE TABLE IF NOT EXISTS tenktup1 (
    unique1 integer NOT NULL,
    unique2 integer NOT NULL PRIMARY KEY,
    two integer NOT NULL,
    four integer NOT NULL,
    ten integer NOT NULL,
    twenty integer NOT NULL,
    onePercent integer NOT NULL,
    tenPercent integer NOT NULL,
    twentyPercent integer NOT NULL,
    fiftyPercent integer NOT NULL,
    unique3 integer NOT NULL,
    oddOnePercent integer NOT NULL,
    evenOnePercent integer NOT NULL,
    stringu1 char(52) NOT NULL,
    stringu2 char(52) NOT NULL,
    string4  char(52) NOT NULL
    );

CREATE TABLE IF NOT EXISTS tenktup2 (
    unique1 integer NOT NULL,
    unique2 integer NOT NULL PRIMARY KEY,
    two integer NOT NULL,
    four integer NOT NULL,
    ten integer NOT NULL,
    twenty integer NOT NULL,
    onePercent integer NOT NULL,
    tenPercent integer NOT NULL,
    twentyPercent integer NOT NULL,
    fiftyPercent integer NOT NULL,
    unique3 integer NOT NULL,
    oddOnePercent integer NOT NULL,
    evenOnePercent integer NOT NULL,
    stringu1 char(52) NOT NULL,
    stringu2 char(52) NOT NULL,
    string4 char(52) NOT NULL
    );

CREATE TABLE IF NOT EXISTS onektup (
    unique1 integer NOT NULL,
    unique2 integer NOT NULL PRIMARY KEY,
    two integer NOT NULL,
    four integer NOT NULL,
    ten integer NOT NULL,
    twenty integer NOT NULL,
    onePercent integer NOT NULL,
    tenPercent integer NOT NULL,
    twentyPercent integer NOT NULL,
    fiftyPercent integer NOT NULL,
    unique3 integer NOT NULL,
    oddOnePercent integer NOT NULL,
    evenOnePercent integer NOT NULL,
    stringu1 char(52) NOT NULL,
    stringu2 char(52) NOT NULL,
    string4 char(52) NOT NULL
    );

LOAD DATA LOCAL INFILE 'wb_data_10K.csv' INTO TABLE WB.tenktup1 FIELDS TERMINATED BY ',' ENCLOSED BY '\'' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE 'wb_data_10K.csv' INTO TABLE WB.tenktup2 FIELDS TERMINATED BY ',' ENCLOSED BY '\'' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE 'wb_data_1K.csv' INTO TABLE WB.onektup FIELDS TERMINATED BY ',' ENCLOSED BY '\'' LINES TERMINATED BY '\n';
