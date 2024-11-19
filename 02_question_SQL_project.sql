-- Question 2: How many liters of milk and kilograms of bread could be purchased in the first and last comparable periods in the available price and wage data?

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
