use employees_db;

SELECT concat(first_name, '', last_name) AS full_name
FROM employees
WHERE (first_name ='Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya')
AND gender= 'M';
