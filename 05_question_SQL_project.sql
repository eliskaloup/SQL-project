--otazka_5: Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo násdujícím roce výraznějším růstem?

--HDP rostlo v roce 2007, 2015, 2017
	--kleslo 2009, 2012, 2013

--(beru tedy v potaz rok kdy nastavala zmena a i ten nasledujici)


--(+)V roce 2006 a 2007 byl extremni narust cen u vice jak 20 druhu potravin. (narust az 66%)
--(-+) V roce 2015- 2016 byly velke vykyvy, spise se hladina udrzovala kolem nuly. Nebylo zadne velke prevyseni oproti zbylych dvou let (2007 a 2017)
--(-)V roce 2017 a 2018 byl extremni pokles cen, a TO u vice jak 15 druhu potravin. (pokles az 31%)

--(+)V letech co HDP rostlo jsme zaznamenali pouze par poklesu ve mzdach, takze urcite jde videt ze HDP toto ovlivlino.
--(-)Nejvice ovlivnil pokles HDP rok 2012, protoze v roce 2013 bylo ovlivnen pokles mezd u 11 odvetvi z celkovych 19.

---Finalni shrnuti:
	--Kdyz v letech 2007, 2015, 2017 HDP melo nejvetsi procentualni narust tak se mzdy ve velike prevaze zvysovaly. 
	--Co se tyce cen potravin,tak jsme zaznamenali ze v roce 2006 a 2007 extremni narust cen, TO je uplne opacny pripad roku 2017 a 2018 kdy byl extremni pokles cen,
	--Co se tyce let 2015 a 2016 tak urcite velke vykyvy nastaly, ale spise se drzi kolem 0 a +- 15 %

	
	

CREATE OR REPLACE VIEW v_fifth_question AS 
SELECT pf.payroll_year,
	pf.gdp,
	round( (avg(pf.gdp) - avg(pf2.gdp) ) / avg(pf2.gdp) * 100, 2 ) AS gdp_percent
FROM t_eliska_loup_project_sql_primary_final AS pf
JOIN t_eliska_loup_project_sql_primary_final AS pf2 
	ON pf.payroll_year = pf2.payroll_year + 1
GROUP BY pf.payroll_year
ORDER BY pf.payroll_year 


SELECT *
FROM v_fifth_question AS vf 


SELECT *,
	CASE 
		WHEN gdp_percent > 5 THEN 'HIGH gdp growth'
		WHEN gdp_percent > 0 THEN 'small gdp growth'
		ELSE 'negative gdp growth'
	END AS hdp_growth
FROM v_fifth_question AS f
ORDER BY gdp_percent DESC 


--tabulka pouze kategorii produktu.
--tabulka je skoro totozna jako druhe otazky ,pouze bez pouziti prvniho a posledniho roku.

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
ORDER BY percentage_difference DESC 