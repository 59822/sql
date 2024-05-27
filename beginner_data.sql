SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT first_name,
age + 45
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT age
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary < 34000;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Female'
AND age > 40;

-- LIKE Statement for specific pat 
-- Para recordar algo q no recordamos
-- % Cuando es lo que comienza y lo que sea luego de eso
-- _ cuando es lo que finaliza
-- % % somewhere in the name
SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'Jer%';

SELECT * 
FROM employee_demographics
WHERE first_name LIKE '%er%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__';

-- __ is the number of caracteres que le siguen luego


-- GROUP BY nos permite ver ciertas columnas nomas
-- Ver como avareage y vainas asi

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

-- ORDER BY
SELECT *
FROM employee_demographics
ORDER BY gender, age DESC 