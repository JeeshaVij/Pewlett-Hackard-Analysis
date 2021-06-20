--Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT emp_no, first_name, last_name
FROM employees;
--Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT title, from_date, to_date
FROM titles;
-- Create a new table using the INTO clause.
SELECT et.emp_no, et.first_name, et.last_name, tt.title, tt.from_date, tt.to_date
INTO emp_data_new
FROM employees as et
JOIN titles as tt
ON et.emp_no = tt.emp_no;

--Ritrement Titles table created:
--Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. 
--Then, order by the employee number.
SELECT edn.first_name, edn.last_name, edn.title, edn.from_date, edn.to_date,
edn.emp_no
FROM employees as et
JOIN emp_data_new as edn
ON et.emp_no = edn.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY edn.emp_no;
--Table name changed to retirement_titles
ALTER TABLE emp_data_new
RENAME TO retirement_titles;

--Unique Titles table created
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no)emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC,
		 to_date DESC ;

		 
--Retiring Titles table created
SELECT COUNT(title),title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

--Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
SELECT emp_no, first_name, last_name, birth_date
FROM employees;

-- Retrieve the from_date and to_date columns from the Department Employee table.
SELECT from_date, to_date
FROM dept_emp;

--Retrieve the title column from the Titles table.
SELECT title
FROM titles;

--The Mentorship Eligibility table created
-- Join the Employees and the Department Employee tables on the primary key
--Join the Employees and the Titles tables on the primary key.
SELECT 
	et.emp_no, et.first_name, et.last_name, et.birth_date, de.from_date, de.to_date, tt.title
	INTO mentorship_eligibilty
FROM employees as et 
	JOIN dept_emp as de ON et.emp_no = de.emp_no
	JOIN titles as tt ON et.emp_no = tt.emp_no
WHERE 
	(et.birth_date BETWEEN '1965-01-01' AND '1966-1-1')
AND 
	(de.to_date > CURRENT_DATE );

-- A query is written and executed to create a Mentorship Eligibility table for current employees who were born between 
January 1, 1965 and December 31, 1965. 
SELECT DISTINCT ON (emp_no)emp_no,
first_name,
last_name,
birth_date,
from_date,
to_date,
title
FROM mentorship_eligibilty
ORDER BY emp_no;


