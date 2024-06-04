-- Otazka_2: Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?

-- výsledek:
-- Mléka bychom si mohli koupit v roce 2006 1026 litrů a v roce 2018 už 1285 litrů
-- Chleba bychom si mohli koupit v roce 2006 919 kilo a v roce 2018 už 1051 kilo

SELECT categ_code,
	cat_name,
	payroll_year,
	avg_price_value,
	round(avg_payroll_value) AS avg_payroll_value,
	round(avg_payroll_value / avg_price_value ) AS average_quantity
FROM t_eliska_loup_project_sql_primary_final AS tf
	WHERE categ_code IN (114201, 111301)
		AND payroll_year IN (2006, 2018) 
GROUP BY categ_code, payroll_year
ORDER BY categ_code, payroll_year; 
