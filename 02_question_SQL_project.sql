--otazka_2: Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?

--Za první období, rok 2006 je možné si z průměrné mzdy 20.75 Kč koupit- 1.287 Ks chlebů, při ceně 16,12 Kč / Ks nebo 1.437 L mléka, při ceně 14,43 Kč / L.
--Za poslední srovnatelné období, rok 2018 při průměrné mzdě 32.53 Kč je možné koupit- 1.342 Ks chlebů při ceně 24,23 Kč / Ks nebo 1.642 L mléka, při ceně 19,81 Kč / L.

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
