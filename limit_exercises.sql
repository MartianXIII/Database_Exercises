SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT concat(first_name, ' ', last_name) AS 1990s_hires
FROM employees
WHERE hire_date LIKE '199%' AND (birth_date LIKE '%-12-25')
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5;

SELECT concat(first_name, ' ', last_name) AS 1990s_hires
FROM employees
WHERE hire_date LIKE '199%' AND (birth_date LIKE '%-12-25')
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;
