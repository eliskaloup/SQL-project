-- Question 1: Do wages increase across all industries over the years, or do some decrease?

-- I used BETWEEN 2007, because in year 2006 are all values NULL.

CREATE OR REPLACE VIEW v_first_quest AS 
SELECT 	ib_code,
	ind_name,
	payroll_year,
	avg_payroll_value AS average_salary,
	LAG(avg_payroll_value) OVER (PARTITION BY ind_name ORDER BY payroll_year) AS previous_year_salary
FROM t_eliska_loup_project_sql_primary_final AS pf
GROUP BY  ind_name, payroll_year 
ORDER BY ind_name, payroll_year;
	
SELECT *,
	CASE
		WHEN previous_year_salary < average_salary THEN 'salary increased'
		ELSE 'salary DECREASED'
	END AS payroll_growth
FROM v_first_quest
WHERE payroll_year BETWEEN 2007 AND 2018
ORDER BY ib_code, payroll_year;
