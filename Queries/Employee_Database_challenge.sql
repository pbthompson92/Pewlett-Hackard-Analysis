-- Create Retired employees by title table (retirement titles)
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (bith_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no

-- Create unique employee numbers by title (unique titles)
SELECT DISTINCT ON(emp_no) emp_no ,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

-- Do a count of unique employee numbers by title (retiring_titles)
SELECT COUNT(emp_no),
	title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT DESC


-- Create a table representing all employees eligibile for mentorship program (mentorship_eligibility)
SELECT DISTINCT ON(e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.bith_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
ON (de.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (bith_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;
