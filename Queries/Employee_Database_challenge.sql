--------------Deliverable 1 Requirements---------

--1) A query is written and executed to create a Retirement Titles table for employees who are born
-- between January 1, 1952 and December 31
--retirement_titles--
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date 
--INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON e.emp_no = t.emp_no
where (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

--2) A query is written and executed to create a Unique Titles table that contains the employee 
--number, first and last name, and most recent title.
---unique_titles
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name,title
--INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no;

--3 A query is written and executed to create a Retiring Titles table that contains the number of 
--titles filled by employees who are retiring.
---retiring_titles.csv----
select count (title) count, title 
--INTO retiring_titles
from unique_titles
GROUP BY title 
ORDER BY count desc;


---Deliverable 2: The Employees Eligible for the Mentorship Program


-- create table - mentorship_eligibility

SELECT DISTINCT on(emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
--INTO mentorship_eligibility
FROM employees AS e 
INNER JOIN dept_emp AS de 
ON e.emp_no = de.emp_no
INNER JOIN Titles As t 
ON e.emp_no = t.emp_no
Where de.to_date = '9999-01-01' AND t.to_date = '9999-01-01'
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
order by e.emp_no;



