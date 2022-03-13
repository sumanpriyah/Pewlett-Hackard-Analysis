-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01'AND '1988-12-31');

---Count--
-- Retirement eligibility
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01'AND '1988-12-31');

---Create New Tables from another table

SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT emp_no,first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Joining departments and dept_manager tables
select d.dept_name, dm.emp_no, dm.from_date, dm.to_date
from departments AS d
inner join dept_manager AS dm
ON d.dept_no = dm.dept_no;


-- Joining retirement_info and dept_emp tables
select ri.emp_no, ri.first_name, ri.last_name, de.to_date
from retirement_info AS ri
LEFT JOIN dept_emp AS de
ON ri.emp_no = de.emp_no;

--When this block of code is executed, a new table containing only the current employees who are eligible for retirement will be returned.
select ri.emp_no, ri.first_name, ri.last_name, de.to_date
from retirement_info AS ri
LEFT JOIN dept_emp AS de
ON ri.emp_no = de.emp_no
where de.to_date = '9999-01-01'

SELECT count(ce.emp_no), de.dept_no
FROM current_emp AS ce
LEFT JOIN dept_emp AS de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no ;

--created new table
SELECT count(ce.emp_no), de.dept_no
INTO dept_emp_count
FROM current_emp AS ce
LEFT JOIN dept_emp AS de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no ;


--Employees--employee number, last name , first name , salary
--Manager - list of manager for each department , depatment number, manager name , manager employee number, last name , first name start and end dates
-- dapartment retirees- update current_employee list all info and employee department


select e.emp_no, e.last_name, e.first_name, s.salary
from employees AS e
join salaries AS s
On e.emp_no = s.emp_no



SELECT e.emp_no, e.first_name, e.last_name, e.gender, s.salary
INTO emp_info
FROM employees AS e
INNER JOIN salaries AS s
On e.emp_no = s.emp_no
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
     AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
AND (de.to_date ='9999-01-01');

select dm.dept_no, ce.emp_no, ce.first_name, ce.last_name, d.dept_name, dm.from_date, ce.to_date
FROM dept_manager AS dm
INNER JOIN current_emp AS ce
ON dm.emp_no = ce.emp_no
INNER JOIN departments AS d
ON dm.dept_no = d.dept_no

select ce.emp_no, ce.first_name, ce.last_name, d.dept_name
-- INTO dept_info
from current_emp AS ce
INNER JOIN dept_emp de
ON ce.emp_no= de.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
where dept_name in ('Sales');

select ce.emp_no, ce.first_name, ce.last_name, d.dept_name
-- INTO dept_info
from current_emp AS ce
INNER JOIN dept_emp de
ON ce.emp_no= de.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
where dept_name in ('Sales', 'Development');

SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date 
--INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON e.emp_no = t.emp_no
where (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

--Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees 
--by their most recent job title who are about to retire. First, retrieve the number of titles from 
--the Unique Titles table. Then, create a Retiring Titles table to hold the required information.
-- Group the table by title, then sort the count column in descending order.Export the Retiring 
--Titles table as retiring_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis 
--folder.

select count (title) count, title 
INTO retiring_titles
from unique_titles
GROUP BY title 
ORDER BY count desc;