--otazka_1: Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?

--Ve vetsine odvetvi mzdy obcas klesly, pouze ve 3 odvetvich nikdy neklesly: 
--Mzdy se vzdy zvysovaly pouze ve 3 odvetvich, a to v: Zpracovatelskem prumyslu, Zdravotnictvi a Ostatnich cinnostech.

--Nejvice klesly mzdy v Tezebnictvi- 4 poklesy v letech 2009, 2013, 2014 a 2016.
--a druhy pokles u Vyroby a rozvodu elektriny- 3 poklesy v letech 2011, 2013 a 2015.


CREATE OR REPLACE VIEW v_first_quest AS 
SELECT 
	ib_code,
	ind_name,
	payroll_year,
	avg_payroll_value AS average_salary,
	LAG(avg_payroll_value) OVER (PARTITION BY ind_name ORDER BY payroll_year) AS previous_year_salary
FROM t_eliska_loup_project_sql_primary_final AS pf
GROUP BY 
	ind_name,
	payroll_year 
ORDER BY
	ind_name,	
	payroll_year;
	
SELECT *,
		CASE
		WHEN previous_year_salary < average_salary THEN 'salary increased'
		ELSE 'salary DECREASED'
	END AS payroll_growth
FROM v_first_quest
WHERE payroll_year BETWEEN 2007 AND 2018
ORDER BY ib_code;
