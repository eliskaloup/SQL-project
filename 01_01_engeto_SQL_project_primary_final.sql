-- Primarni tabulka

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

--- muj postup

-- kde jsou NULL hodnoty?
SELECT *
FROM czechia_payroll AS cp   
WHERE cp.industry_branch_code IS NULL;

-- z jakych let mame data?
SELECT min(cp.payroll_year),
	max(cp.payroll_year)
FROM czechia_payroll AS cp;

-- kontrola zda jsou roky zapsany stejne, ne v jinem tvaru
SELECT DISTINCT payroll_year, payroll_quarter  
FROM czechia_payroll AS cp 
ORDER BY payroll_year DESC, payroll_quarter;

-- czechia_price: je v date_from a date_to nějaká hodnota nulová?
SELECT *
FROM czechia_price  
WHERE date_from IS NULL
	OR date_to IS NULL; --žádná hodnota není nulová 

-- z jakych let mame vsechny data?	
SELECT min(cp.date_from),
	max(cp.date_from),
	min(cp.date_to),
	max(cp.date_to)
FROM czechia_price AS cp;
-- data mame z let 2006 az 2018

-- jelikož je datový typ definován datetime nemůže zde být nevyhovující hodnota
-- tady i zjistim, je k dispozici měření za celý rok 2006 (min(cp.date_from)= 2.1.2006) a za celý rok 2018 (max(cp.date_to)=16.12.2018)

