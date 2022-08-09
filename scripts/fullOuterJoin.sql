-- select all data from boath tables
SELECT
	employee_name,
	department_name
FROM
	employees e
FULL OUTER JOIN departments d
	ON d.department_id = e.department_id;


-- select department that does not have any employees
SELECT
	employee_name,
	department_name
FROM
	employees e
FULL OUTER JOIN departments d
	ON d.department_id = e.department_id
WHERE
	employee_name IS NULL;

-- select employees not belonging to any department
SELECT
	employee_name,
	department_name
FROM
	employees e	
FULL OUTER JOIN departments d
	ON d.department_id = e.department_id
WHERE
	department_name IS NULL;
