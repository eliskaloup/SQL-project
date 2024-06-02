--otazka_3: Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)?

--Nejpomaleji se v prubehu let zdrazuje cukr, rajcata, banány, dále vepřové pečeně a pak minerální voda
--jen musím upozornit, že u vína je jen měření posledních 4 let 2015-2018

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
