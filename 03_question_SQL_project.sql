-- Question 3: Which category of groceries has the slowest price increase (the lowest percentage year-on-year growth)?

SELECT pf.categ_code,
	pf.cat_name,
	pf.avg_price_value AS value_2006,
	pf2.avg_price_value AS value_2018,
	round(avg((pf2.avg_price_value - pf.avg_price_value) / pf.avg_price_value * 100), 2) AS percentage_difference
FROM t_eliska_loup_project_sql_primary_final AS pf
JOIN t_eliska_loup_project_sql_primary_final AS pf2
	ON pf.categ_code = pf2.categ_code
	AND pf.year_price = 2006
	AND pf2.year_price = 2018
GROUP BY pf.categ_code
ORDER BY percentage_difference;
