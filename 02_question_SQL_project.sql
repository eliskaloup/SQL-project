--Otazka_2: Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?

---první období je rok 2006 a poslední je rok 2018

--Chlebu bychom si mohli koupit v roce 2006 919kg a v roce 2018 az 1051kg.
Mleka bychom si mohli koupit v roce 2006 1026l a v roce 2018 az 1285l.

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
