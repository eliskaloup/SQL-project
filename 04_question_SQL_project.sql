--otazka_4: Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %)?
	
--Nastesti takova situaci nikdy nenastala, a nejvyssi narust byl 6,6% v roce 2013.
--Pote v roce 2012 byl rozdil 3,8% a v roce 2017 3,5%.

CREATE OR REPLACE VIEW v_fourth_question AS 
SELECT
	pf.payroll_year,
	pf.avg_price_value AS average_price,
	pf.avg_payroll_value AS average_salary,
	pf2.payroll_year + 1 AS year_prev,
	round( ( avg(pf.avg_price_value) - avg(pf2.avg_price_value) ) / avg(pf2.avg_price_value) * 100, 2 ) AS price_growth,
	round( ( avg(pf.avg_payroll_value) - avg(pf2.avg_payroll_value) ) / avg(pf2.avg_payroll_value) * 100, 2) AS payroll_percent
FROM
	t_eliska_loup_project_sql_primary_final AS pf
JOIN t_eliska_loup_project_sql_primary_final AS pf2
    ON
	pf.payroll_year = pf2.payroll_year + 1
GROUP BY
	payroll_year
ORDER BY
	payroll_year;


SELECT *,
	price_growth - payroll_percent AS percentage_diff
FROM v_fourth_question AS vf
ORDER BY percentage_diff DESC 