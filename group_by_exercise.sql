SELECT title
FROM titles
GROUP BY title ASC;

SELECT DISTINCT last_name, first_name
FROM employees
WHERE (last_name LIKE 'E%'
AND last_name LIKE 'E%');
