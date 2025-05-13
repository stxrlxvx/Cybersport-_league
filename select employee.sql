SELECT *
FROM employee;

SELECT *
FROM employee
WHERE employee_id = 1;

SELECT *
FROM employee
WHERE user_name = 'liamtaylor';

SELECT *
FROM employee
WHERE first_name = 'Олена';

SELECT *
FROM employee
WHERE last_name = 'Петрова';

SELECT *
FROM employee
WHERE position = 'admin';

SELECT *
FROM employee
WHERE employment_date = '2020-02-29';

SELECT *
FROM employee
WHERE manager_id IS NULL;

SELECT *
FROM employee
WHERE manager_id = '1';


