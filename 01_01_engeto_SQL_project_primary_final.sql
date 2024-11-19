-- Primary table

CREATE OR REPLACE TABLE t_eliska_loup_project_SQL_primary_final AS 
SELECT czpay.industry_branch_code AS ib_code,
	ind_br.name AS ind_name,
	czpay.payroll_year AS payroll_year,
	round(avg(czpay.value), 2) AS avg_payroll_value,
	round(avg(czp.value), 2) AS avg_price_value,
	czp.category_code AS categ_code,
	czcat.name AS cat_name,
	YEAR(czp.date_from) AS year_price,
	ecz.GDP AS GDP
FROM czechia_payroll AS czpay
JOIN czechia_payroll_industry_branch AS ind_br
	ON ind_br.code = czpay.industry_branch_code
JOIN czechia_price AS czp
	ON year(czp.date_from) = czpay.payroll_year  
JOIN czechia_price_category AS czcat
	ON czcat.code = czp.category_code  
JOIN economies AS ecz
	ON ecz.year = czpay.payroll_year
WHERE 
	czpay.industry_branch_code IS NOT NULL 
	AND czpay.value_type_code = 5958
	AND czpay.unit_code = 200
	AND czpay.calculation_code = 200
	AND czpay.payroll_year BETWEEN 2006 AND 2018
	AND ecz.country = 'Czech Republic'
GROUP BY ib_code, payroll_year, categ_code, year(czp.date_from)
ORDER BY ib_code, payroll_year, categ_code, czp.date_from;
	
SELECT *
FROM t_eliska_loup_project_sql_primary_final AS telpspf;

--- Step by step

-- Where are NULL values?
SELECT *
FROM czechia_payroll AS cp   
WHERE cp.industry_branch_code IS NULL;

-- From which years do I have data?
SELECT min(cp.payroll_year),
	max(cp.payroll_year)
FROM czechia_payroll AS cp;

-- Are the years in the same format or in a different one?
SELECT DISTINCT payroll_year, payroll_quarter  
FROM czechia_payroll AS cp 
ORDER BY payroll_year DESC, payroll_quarter;

-- czechia_price: Is in date_from and date_to some value NULL?
SELECT *
FROM czechia_price  
WHERE date_from IS NULL
	OR date_to IS NULL; 
-- The answer is: There is none NULL value.

-- From which years do I have data?	
SELECT min(cp.date_from),
	max(cp.date_from),
	min(cp.date_to),
	max(cp.date_to)
FROM czechia_price AS cp;
-- We have got data from years from 2006 untill 2018.

-- Because the data type is defined as datetime, it cannot be unfitting value.
-- I also will find out if I have all year's measruing data in the year 2006 (min(cp.date_from)= 2.1.2006) and the same for year 2018 (max(cp.date_to)=16.12.2018)

