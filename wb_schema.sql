#To run this from the mariaDB prompt, use 'source wb_schema.sql'

CREATE DATABASE WB;
USE WB;

CREATE TABLE TENKTUP1 (
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

CREATE TABLE TENKTUP2 (
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

CREATE TABLE ONEKTUP (
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

LOAD DATA LOCAL INFILE 'wb_data_10K.csv' INTO WB.TENKTUP1 FIELDS TERMINATED BY ',' ENCLOSED BY '\'' LINES TERMINATED BY '\r\n';
LOAD DATA LOCAL INFILE 'wb_data_10K.csv' INTO WB.TENKTUP2 FIELDS TERMINATED BY ',' ENCLOSED BY '\'' LINES TERMINATED BY '\r\n';
LOAD DATA LOCAL INFILE 'wb_data_1K.csv' INTO WB.ONEKTUP FIELDS TERMINATED BY ',' ENCLOSED BY '\'' LINES TERMINATED BY '\r\n';