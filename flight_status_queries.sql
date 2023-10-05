-- Create flight status queries based on country
-- Create flight status queries for the month of March ("Spring Break")
SELECT
	count(flight_status),
	flight_status,
	'Mexico' AS country
FROM five_country_flights
where departure_date BETWEEN '2022-03-01' AND '2022-03-31' and country_name = 'Mexico'
GROUP BY flight_status

SELECT
	count(flight_status),
	flight_status,
	'Germany' AS country
FROM five_country_flights
where departure_date BETWEEN '2022-03-01' AND '2022-03-31' and country_name = 'Germany'
GROUP BY flight_status

SELECT
	count(flight_status),
	flight_status,
	'United_Kingdom' AS country
FROM five_country_flights
where departure_date BETWEEN '2022-03-01' AND '2022-03-31' and country_name = 'United Kingdom'
GROUP BY flight_status

SELECT
	count(flight_status),
	flight_status,
	'Argentina' AS country
FROM five_country_flights
where departure_date BETWEEN '2022-03-01' AND '2022-03-31' and country_name = 'Argentina'
GROUP BY flight_status

SELECT
	count(flight_status),
	flight_status,
	'Italy' AS country
FROM five_country_flights
where departure_date BETWEEN '2022-03-01' AND '2022-03-31' and country_name = 'Italy'
GROUP BY flight_status


-- Create flight status queries based on country
-- Create flight status queries for the month of March ("Summer Break/Summer Vacation")
SELECT
	count(flight_status),
	flight_status,
	'Mexico' AS country
FROM five_country_flights
where departure_date BETWEEN '2022-06-01' AND '2022-06-30' and country_name = 'Mexico'
GROUP BY flight_status

SELECT
	count(flight_status),
	flight_status,
	'Germany' AS country
FROM five_country_flights
where departure_date BETWEEN '2022-06-01' AND '2022-06-30' and country_name = 'Germany'
GROUP BY flight_status

SELECT
	count(flight_status),
	flight_status,
	'United_Kingdom' AS country
FROM five_country_flights
where departure_date BETWEEN '2022-06-01' AND '2022-06-30' and country_name = 'United_Kingdom'
GROUP BY flight_status

SELECT
	count(flight_status),
	flight_status,
	'Argentina' AS country
FROM five_country_flights
where departure_date BETWEEN '2022-06-01' AND '2022-06-30' and country_name = 'Argentina'
GROUP BY flight_status

SELECT
	count(flight_status),
	flight_status,
	'Italy' AS country
FROM five_country_flights
where departure_date BETWEEN '2022-06-01' AND '2022-06-30' and country_name = 'Italy'
GROUP BY flight_status

-- Create flight status queries based on country
-- Create flight status queries for the month of March ("Holiday Season")
SELECT
	count(flight_status),
	flight_status,
	'Mexico' AS country
FROM five_country_flights
where departure_date BETWEEN '2022-12-01' AND '2022-12-31' and country_name = 'Mexico'
GROUP BY flight_status
SELECT
	count(flight_status),
	flight_status,
	'Germany' AS country
FROM five_country_flights
where departure_date BETWEEN '2022-12-01' AND '2022-12-31' and country_name = 'Germany'
GROUP BY flight_status

SELECT
	count(flight_status),
	flight_status,
	'United_Kingdom' AS country
FROM five_country_flights
where departure_date BETWEEN '2022-12-01' AND '2022-12-31' and country_name = 'United_Kingdom'
GROUP BY flight_status

SELECT
	count(flight_status),
	flight_status,
	'Argentina' AS country
FROM five_country_flights
where departure_date BETWEEN '2022-12-01' AND '2022-12-31' and country_name = 'Argentina'
GROUP BY flight_status

SELECT
	count(flight_status),
	flight_status,
	'Italy' AS country
FROM five_country_flights
where departure_date BETWEEN '2022-12-01' AND '2022-12-31' and country_name = 'Italy'
GROUP BY flight_status