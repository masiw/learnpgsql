-- Self Inner Join

SELECT
    e.first_name || ' ' || e.last_name employee,
    m.first_name || ' ' || m.last_name manager 
FROM employee e
INNER JOIN employee m ON m.employee_id = e.manager_id
ORDER BY manager;

-- Self Left Join

SELECT
	e.first_name || ' ' || e.last_name employee,
	m.first_name || ' ' || m.last_name manager
FROM employee e
LEFT JOIN employee m ON m.employee_id = e.manager_id
ORDER BY manager;
