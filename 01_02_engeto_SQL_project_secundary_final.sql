-- Sekundarni tabulka

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

-- Tuto tabulku jsem nakonec ani nepouzila, vychazela jsem z primary, kde jsem vyfiltrovala pouze Cesko, prijde mi zbytecne vychazet z teto tabulky,
-- protoze kdyz HDP je ovlivneno v Evrope tak je i v Cesku. A nebylo tedy receno konkretne, zda se 5. otazka vztahuje z hlediska na EU nebo CZ.
	
