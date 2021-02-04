
-- For 10Ktup1 table:
CREATE VIEW head_tail_int AS SELECT unique1,unique2,two,four,ten,twenty,onePercent,tenPercent,twentyPercent,fiftyPercent,unique3,evenOnePercent,oddOnePercent FROM tenktup1 WHERE unique2 < 10 OR unique2 > 9990;
CREATE VIEW head_tail_st1 AS SELECT unique2, stringu1 FROM tenktup1 WHERE unique2 < 10 OR unique2 > 9990;
CREATE VIEW head_tail_st2 AS SELECT unique2, stringu2 FROM tenktup1 WHERE unique2 < 10 OR unique2 > 9990;
CREATE VIEW head_tail_st4 AS SELECT unique2, string4 FROM tenktup1 WHERE unique2 < 10 OR unique2 > 9990;

-- For 10Ktup2 table:
CREATE VIEW head_tail_int_10K2 AS SELECT unique1,unique2,two,four,ten,twenty,onePercent,tenPercent,twentyPercent,fiftyPercent,unique3,evenOnePercent,oddOnePercent FROM tenktup2 WHERE unique2 < 10 OR unique2 > 9990;
CREATE VIEW head_tail_st1_10K2 AS SELECT unique2, stringu1 FROM tenktup2 WHERE unique2 < 10 OR unique2 > 9990;
CREATE VIEW head_tail_st2_10K2 AS SELECT unique2, stringu2 FROM tenktup2 WHERE unique2 < 10 OR unique2 > 9990;
CREATE VIEW head_tail_st4_10K2 AS SELECT unique2, string4 FROM tenktup2 WHERE unique2 < 10 OR unique2 > 9990;

-- For 1Ktup table:
CREATE VIEW head_tail_int_1K AS SELECT unique1,unique2,two,four,ten,twenty,onePercent,tenPercent,twentyPercent,fiftyPercent,unique3,evenOnePercent,oddOnePercent FROM onektup WHERE unique2 < 10 OR unique2 > 990;
CREATE VIEW head_tail_st1_1K AS SELECT unique2, stringu1 FROM onektup WHERE unique2 < 10 OR unique2 > 9990;
CREATE VIEW head_tail_st2_1K AS SELECT unique2, stringu2 FROM onektup WHERE unique2 < 10 OR unique2 > 9990;
CREATE VIEW head_tail_st4_1K AS SELECT unique2, string4 FROM onektup WHERE unique2 < 10 OR unique2 > 990;


