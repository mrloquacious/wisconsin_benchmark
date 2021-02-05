GitHub Repo: https://github.com/mrloquacious/wisconsin_benchmark

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

BULK INSERT TENKTUP1 ( unique1, unique2, two, four, ten, twenty, onePercent, tenPercent, twentyPercent, fiftyPercent, unique3, oddOnePercent, evenOnePercent, stringu1, stringu2, string4)
FROM '/home/xanderwtheepicmonk117/wb_data_10k.csv'
WITH (FORMAT csv);

BULK INSERT TENKTUP2 ( unique1, unique2, two, four, ten, twenty, onePercent, tenPercent, twentyPercent, fiftyPercent, unique3, oddOnePercent, evenOnePercent, stringu1, stringu2, string4)
FROM '/home/xanderwtheepicmonk117/wb_data_10k.csv'
WITH (FORMAT csv);

COPY ONEKTUP ( unique1, unique2, two, four, ten, twenty, onePercent, tenPercent, twentyPercent, fiftyPercent, unique3, oddOnePercent, evenOnePercent, stringu1, stringu2, string4)
FROM '/home/xanderwtheepicmonk117/wb_data_1k.csv'
WITH (FORMAT csv);