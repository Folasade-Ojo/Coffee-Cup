CREATE TABLE coffee (
	Profit int,
	Margin int,
	Sales int,
	Cost_of_Goods_sold int,
	Total_Expenses int,
	marketing int,
	inventory int,
	budget_profit int,
	budget_margin int,
	budget_sales int,
	budget_COGS int,
	date varchar,
	market varchar,
	province varchar,
	city varchar,
	store_number int,
	market_size varchar,
	product_type varchar,
	product varchar,
	type varchar)
;

COPY coffee
	FROM 'C:/PROGRA~1/POSTGR~1/14/bin/COFFEE~1.CSV' DELIMITER ',' CSV QUOTE '"' ESCAPE '''' HEADER;

SELECT * FROM coffee
LIMIT 25;

-- check the count
SELECT COUNT(*) FROM coffee;
-- 4250

-- check for records that have null records all through
SELECT * FROM coffee
WHERE coffee IS NULL;

-- delete those null records
DELETE FROM coffee
WHERE NOT (coffee IS NOT NULL);

-- check the count
SELECT COUNT(*) FROM coffee;
-- 4248

--convert the date format from UK to Canadian format
ALTER TABLE coffee
ALTER COLUMN date TYPE varchar USING to_date (date, 'DD/MM/YYYY');
ALTER TABLE coffee
ALTER COLUMN date TYPE date USING to_date (date, 'YYYY/MM/DD');

/* some inconsistencies were observed in the "profit" column.
Consequently, a new table will be created with newly calculated fields viz., 'net_profit', 'gross_profit'
*/

DROP TABLE new_coffee_table;

CREATE TABLE new_coffee_table AS
(SELECT sales, cost_of_goods_sold,total_expenses, marketing, inventory, budget_profit, budget_margin,budget_sales, budget_COGS, date, 
	TRIM(market) AS region, TRIM(province) AS province, TRIM(city) AS city, store_number, TRIM(market_size) AS market_size, 
	TRIM(product_type) AS product_type, TRIM(product) AS product, TRIM(type) AS type
FROM coffee);

ALTER TABLE new_coffee_table
ADD COLUMN net_profit INT,
ADD COLUMN gross_profit INT;

UPDATE new_coffee_table
SET net_profit = sales - cost_of_goods_sold, gross_profit = sales - (cost_of_goods_sold + total_expenses +marketing);

SELECT * FROM new_coffee_table
LIMIT 25;

CREATE TABLE city_check (
	cities text,
	province_name text)
;
copy city_check
from 'C:\Program Files\PostgreSQL\14\bin\city check.csv' with delimiter ',' csv header encoding 'windows-1251';

/*
SELECT * FROM city_check
WHERE cities LIKE  'Mount%';

UPDATE city_check
SET cities = 'Montreal'
WHERE cities = 'Montrйal';

UPDATE city_check
SET cities = 'Mount Pearl'
WHERE cities = 'Mount Pearl Park';
*/

-- verify the spelling of the cities
SELECT DISTINCT (city)
FROM new_coffee_table
WHERE city NOT IN
	(SELECT cities 
	 FROM city_check)

UPDATE new_coffee_table
SET city = 'Gatineau'
WHERE city = 'Gatieau';

UPDATE new_coffee_table
SET city = 'Fredericton'
WHERE city = 'Fredricton';

UPDATE new_coffee_table
SET city = 'Steinbach'
WHERE city = 'Steinback';

SELECT * FROM new_coffee_table;
