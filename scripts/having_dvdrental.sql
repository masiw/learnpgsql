SELECT
	customer_id,
	SUM(amount)
FROM
	payment
GROUP BY
	customer_id;

-- only display customers spending more than 200
SELECT
	customer_id,
	SUM(amount)
FROM
	payment
GROUP BY
	customer_id
HAVING
	SUM(amount) > 200;

-- count the number of customers per store
SELECT
	store_id,
	COUNT(customer_id)
FROM
	customer
GROUP BY
	store_id;

-- only list stores with more than 300 customers
SELECT
	store_id,
	COUNT(customer_id)
FROM
	customer
GROUP BY
	store_id
HAVING
	COUNT(customer_id) > 300;

