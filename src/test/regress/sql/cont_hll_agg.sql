CREATE CONTINUOUS VIEW test_hll_agg0 AS SELECT k::text, hll_agg(x::integer) FROM test_hll_agg_stream GROUP BY k;
CREATE CONTINUOUS VIEW test_hll_agg1 AS SELECT k::text, hll_cardinality(hll_agg(x::integer)) + hll_cardinality(hll_agg(y::text)) FROM test_hll_agg_stream GROUP BY k;

CREATE CONTINUOUS VIEW test_hll_agg2 AS SELECT k::text, hll_cardinality(hll_agg(x::integer)) + hll_cardinality(hll_agg(substring(y::text, 1, 1))) FROM test_hll_agg_stream GROUP BY k;

CREATE CONTINUOUS VIEW test_sw_hll_agg0 AS SELECT k::text, hll_print(hll_agg(x::integer)) FROM test_hll_agg_stream WHERE (arrival_timestamp > clock_timestamp() - interval '1 hour') GROUP BY k;

CREATE CONTINUOUS VIEW test_sw_hll_agg1 AS SELECT k::text, hll_cardinality(hll_agg(x::integer)) + hll_cardinality(hll_agg(y::text)) FROM test_hll_agg_stream WHERE (arrival_timestamp > clock_timestamp() - interval '1 hour')  GROUP BY k;

CREATE CONTINUOUS VIEW test_sw_hll_agg2 AS SELECT k::text, hll_cardinality(hll_agg(x::integer)) + hll_cardinality(hll_agg(substring(y::text, 1, 1))) FROM test_hll_agg_stream WHERE (arrival_timestamp > clock_timestamp() - interval '1 hour')  GROUP BY k;

INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('0', 0, '0');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('1', 1, '100');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('2', 2, '200');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('3', 3, '300');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('4', 4, '400');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('5', 5, '500');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('6', 6, '600');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('7', 7, '700');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('8', 8, '800');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('9', 9, '900');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('0', 10, '1000');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('1', 11, '1100');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('2', 12, '1200');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('3', 13, '1300');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('4', 14, '1400');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('5', 15, '1500');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('6', 16, '1600');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('7', 17, '1700');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('8', 18, '1800');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('9', 19, '1900');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('0', 20, '2000');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('1', 21, '2100');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('2', 22, '2200');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('3', 23, '2300');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('4', 24, '2400');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('5', 25, '2500');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('6', 26, '2600');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('7', 27, '2700');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('8', 28, '2800');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('9', 29, '2900');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('0', 30, '3000');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('1', 31, '3100');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('2', 32, '3200');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('3', 33, '3300');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('4', 34, '3400');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('5', 35, '3500');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('6', 36, '3600');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('7', 37, '3700');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('8', 38, '3800');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('9', 39, '3900');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('0', 40, '4000');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('1', 41, '4100');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('2', 42, '4200');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('3', 43, '4300');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('4', 44, '4400');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('5', 45, '4500');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('6', 46, '4600');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('7', 47, '4700');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('8', 48, '4800');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('9', 49, '4900');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('0', 50, '5000');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('1', 51, '5100');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('2', 52, '5200');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('3', 53, '5300');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('4', 54, '5400');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('5', 55, '5500');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('6', 56, '5600');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('7', 57, '5700');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('8', 58, '5800');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('9', 59, '5900');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('0', 60, '6000');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('1', 61, '6100');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('2', 62, '6200');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('3', 63, '6300');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('4', 64, '6400');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('5', 65, '6500');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('6', 66, '6600');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('7', 67, '6700');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('8', 68, '6800');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('9', 69, '6900');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('0', 70, '7000');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('1', 71, '7100');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('2', 72, '7200');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('3', 73, '7300');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('4', 74, '7400');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('5', 75, '7500');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('6', 76, '7600');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('7', 77, '7700');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('8', 78, '7800');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('9', 79, '7900');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('0', 80, '8000');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('1', 81, '8100');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('2', 82, '8200');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('3', 83, '8300');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('4', 84, '8400');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('5', 85, '8500');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('6', 86, '8600');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('7', 87, '8700');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('8', 88, '8800');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('9', 89, '8900');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('0', 90, '9000');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('1', 91, '9100');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('2', 92, '9200');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('3', 93, '9300');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('4', 94, '9400');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('5', 95, '9500');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('6', 96, '9600');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('7', 97, '9700');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('8', 98, '9800');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('9', 99, '9900');
INSERT INTO test_hll_agg_stream (k, x, y) VALUES ('0', 0, '0'), ('1', 1, '100'), ('2', 2, '200'), ('3', 3, '300'), ('4', 4, '400'), ('5', 5, '500'), ('6', 6, '600'), ('7', 7, '700'), ('8', 8, '800'), ('9', 9, '900'), ('0', 10, '1000'), ('1', 11, '1100'), ('2', 12, '1200'), ('3', 13, '1300'), ('4', 14, '1400'), ('5', 15, '1500'), ('6', 16, '1600'), ('7', 17, '1700'), ('8', 18, '1800'), ('9', 19, '1900'), ('0', 20, '2000'), ('1', 21, '2100'), ('2', 22, '2200'), ('3', 23, '2300'), ('4', 24, '2400'), ('5', 25, '2500'), ('6', 26, '2600'), ('7', 27, '2700'), ('8', 28, '2800'), ('9', 29, '2900'), ('0', 30, '3000'), ('1', 31, '3100'), ('2', 32, '3200'), ('3', 33, '3300'), ('4', 34, '3400'), ('5', 35, '3500'), ('6', 36, '3600'), ('7', 37, '3700'), ('8', 38, '3800'), ('9', 39, '3900'), ('0', 40, '4000'), ('1', 41, '4100'), ('2', 42, '4200'), ('3', 43, '4300'), ('4', 44, '4400'), ('5', 45, '4500'), ('6', 46, '4600'), ('7', 47, '4700'), ('8', 48, '4800'), ('9', 49, '4900'), ('0', 50, '5000'), ('1', 51, '5100'), ('2', 52, '5200'), ('3', 53, '5300'), ('4', 54, '5400'), ('5', 55, '5500'), ('6', 56, '5600'), ('7', 57, '5700'), ('8', 58, '5800'), ('9', 59, '5900'), ('0', 60, '6000'), ('1', 61, '6100'), ('2', 62, '6200'), ('3', 63, '6300'), ('4', 64, '6400'), ('5', 65, '6500'), ('6', 66, '6600'), ('7', 67, '6700'), ('8', 68, '6800'), ('9', 69, '6900'), ('0', 70, '7000'), ('1', 71, '7100'), ('2', 72, '7200'), ('3', 73, '7300'), ('4', 74, '7400'), ('5', 75, '7500'), ('6', 76, '7600'), ('7', 77, '7700'), ('8', 78, '7800'), ('9', 79, '7900'), ('0', 80, '8000'), ('1', 81, '8100'), ('2', 82, '8200'), ('3', 83, '8300'), ('4', 84, '8400'), ('5', 85, '8500'), ('6', 86, '8600'), ('7', 87, '8700'), ('8', 88, '8800'), ('9', 89, '8900'), ('0', 90, '9000'), ('1', 91, '9100'), ('2', 92, '9200'), ('3', 93, '9300'), ('4', 94, '9400'), ('5', 95, '9500'), ('6', 96, '9600'), ('7', 97, '9700'), ('8', 98, '9800'), ('9', 99, '9900');

SELECT k, hll_print(hll_agg) FROM test_hll_agg0 ORDER BY k;
SELECT * FROM test_hll_agg1 ORDER BY k;
SELECT * FROM test_hll_agg2 ORDER BY k;
SELECT * FROM test_sw_hll_agg0 ORDER BY k;
SELECT * FROM test_sw_hll_agg1 ORDER BY k;
SELECT * FROM test_sw_hll_agg2 ORDER BY k;

SELECT hll_print(combine(hll_agg)) FROM test_hll_agg0;
SELECT hll_cardinality(combine(hll_agg)) FROM test_hll_agg0;

DROP CONTINUOUS VIEW test_hll_agg0;
DROP CONTINUOUS VIEW test_hll_agg1;
DROP CONTINUOUS VIEW test_hll_agg2;
DROP CONTINUOUS VIEW test_sw_hll_agg0;
DROP CONTINUOUS VIEW test_sw_hll_agg1;
DROP CONTINUOUS VIEW test_sw_hll_agg2;
