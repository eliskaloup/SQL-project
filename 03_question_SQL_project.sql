-- Otazka_3: Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)?

-- Při porovnání prvního a posledního měřeného období - roků 2006 a 2018 můžeme definovat rozdíl v cenách.
-- Nejpomaleji zdražuje za celé období -
-- Cukr krystalový - pokles o 27,52 % z 21,73 Kč na 15,75 Kč
-- Rajská jablka červená kulatá - pokles o 23,07 % z 57,83 Kč na 44,49 Kč
-- Banány žluté - nárůst o 7,38 % z 27,3 Kč na 29,32 Kč

-- (U vína je jen měření pouze z posledních 4 let 2015-2018)

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
