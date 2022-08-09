SELECT * FROM products
NATURAL JOIN categories;

SELECT * FROM products
INNER JOIN categories USING (category_id);
