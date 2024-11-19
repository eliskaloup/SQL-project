--Question 5: Does GDP growth affect changes in wages and food prices? In other words, if GDP rises significantly in one year, does it lead to a noticeable increase in food prices or wages in the same or the following year?

CREATE OR REPLACE VIEW v_fifth_question AS 
SELECT pf.payroll_year,
	pf.gdp,
	round( (avg(pf.gdp) - avg(pf2.gdp) ) / avg(pf2.gdp) * 100, 2 ) AS gdp_percent
FROM t_eliska_loup_project_sql_primary_final AS pf
JOIN t_eliska_loup_project_sql_primary_final AS pf2 
	ON pf.payroll_year = pf2.payroll_year + 1
GROUP BY pf.payroll_year
ORDER BY pf.payroll_year;


SELECT *,
	CASE 
		WHEN gdp_percent > 5 THEN 'HIGH gdp growth'
		WHEN gdp_percent > 0 THEN 'small gdp growth'
		ELSE 'negative gdp growth'
	END AS hdp_growth
FROM v_fifth_question AS f
ORDER BY gdp_percent DESC;


--tabulka pouze kategorii produktu.
--tabulka je skoro totozna jako u druhe otazky, pouze bez pouziti min a max roku ale vsech let.

CREATE OR REPLACE VIEW v_fifth_question_products AS
SELECT pf.categ_code,
	pf.cat_name,
	pf.avg_price_value,
	pf.year_price,
	round(avg((pf2.avg_price_value - pf.avg_price_value) / pf.avg_price_value * 100), 2) AS percentage_difference
FROM t_eliska_loup_project_sql_primary_final AS pf
JOIN t_eliska_loup_project_sql_primary_final AS pf2
	ON pf.categ_code = pf2.categ_code
GROUP BY pf.year_price, pf.cat_name
ORDER BY percentage_difference;


SELECT *,
	CASE 
		WHEN percentage_difference > 30 THEN 'HIGH increase' 
		WHEN percentage_difference >= 15 THEN 'Medium increase'
		WHEN percentage_difference > 0 THEN 'Small increase'
		WHEN percentage_difference >= -15 THEN 'HIGH decrease'
        ELSE 'Decrease'
	END AS price_growth
FROM v_fifth_question_products f
ORDER BY percentage_difference DESC;
