-- Secundary table

CREATE OR REPLACE TABLE t_eliska_loup_project_SQL_secondary_final AS 
SELECT e.country,
	e.GDP,
	e.gini,
	e.population,
	e.year
FROM economies AS e
JOIN countries AS c 
	ON c.country = e.country
	WHERE c.continent = 'Europe'
	AND e.year BETWEEN 2006 AND 2018
ORDER BY c.country, e.year;


SELECT *
FROM t_eliska_loup_project_SQL_secondary_final AS sf;
