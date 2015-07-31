use employees_db;

--Employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
--Employees whose last name starts with 'E' — 7,330 rows.
--Employees hired in the 90s — 135,214 rows.
--Employees born on Christmas — 842 rows.
--Employees with a 'q' in their last name — 1,873 rows.

SELECT concat(first_name, '', last_name) AS full_name
FROM employees
WHERE (first_name ='Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya')
AND gender= 'M';

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE (last_name LIKE 'E%'
AND last_name LIKE 'E%');

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
