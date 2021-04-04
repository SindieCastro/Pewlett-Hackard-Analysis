--Challenge
--Deliverable 1
--Steps 1-4 create retirement_titles table.
SELECT es.emp_no,
		es.first_name,
		es.last_name,
		ti.title, 
		ti.from_date,
		ti.to_date
INTO retirement_titles
FROM employees as es
INNER JOIN titles as ti
ON (es.emp_no = ti.emp_no)
WHERE (es.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY (es.emp_no = ti.emp_no);

-- Step 4-7 remove duplicate rows
SELECT rt.emp_no,
		rt.first_name,
		rt.last_name,
		rt.title, 
		rt.to_date
INTO recent_titles
FROM retirement_titles AS rt;

--Step 8-14 use Dictinct with Orderby to create unique_titles table
SELECT DISTINCT ON (ret.emp_no) ret.emp_no,
					ret.first_name,
					ret.last_name,
					ret.title 
INTO unique_titles
FROM recent_titles AS ret
ORDER BY ret.emp_no ASC, ret.to_date DESC;

--Steps 15-21 create retiring_titles
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
Group By ut.title
ORDER By count DESC;

--Deliverable 2
--Steps 1-11 create a mentorship_eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
					e.first_name,
					e.last_name,
					e.birth_date,
					de.from_date,
					de.to_date,
					ti.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND ti.to_date='9999-01-01'
ORDER BY e.emp_no ASC;

--Extra Query
SELECT COUNT(me.title), me.title
INTO mentorship_titles
FROM mentorship_eligibility as me
Group By me.title
ORDER By count DESC;

--Extra Query
SELECT es.emp_no,
		es.birth_date,
		es.first_name,
		es.last_name,
		rti.title,
		ti.from_date,
		ti.to_date
INTO first_retire
FROM employees as es
INNER JOIN titles as ti
ON (es.emp_no = ti.emp_no)
INNER JOIN retiring_titles as rti
ON (ti.title = rti.title)
WHERE (es.birth_date BETWEEN '1952-01-01' AND '1952-12-31')
ORDER BY (es.emp_no = ti.emp_no);

--Extra Query
SELECT COUNT(ft.title), ft.title
INTO first_titles
FROM first_retire as ft
WHERE (ft.birth_date BETWEEN '1952-01-01' AND '1952-12-31')
Group By ft.title
ORDER By count DESC;