# Analýza dostupnosti základních potravin široké veřejnosti

---------------------------------------------

Popis datových sad a tabulek použitých v projektu - PRIMÁRNÍ TABULKA PROJEKTU

czechia_payroll – Informace o mzdách v různých odvětvích za několikaleté období. Datová sada pochází z Portálu otevřených dat ČR.
czechia_price – Informace o cenách vybraných potravin za několikaleté období. Datová sada pochází z Portálu otevřených dat ČR.
czechia_payroll_industry_branch – Číselník odvětví v tabulce mezd.
czechia_price_category – Číselník kategorií potravin, které se vyskytují v našem přehledu.
economies - HDP, gini, daňová zátěž... pro daný stát a rok

SEKUNDÁRNÍ TABULKA PROJEKTU

economies - HDP, gini, daňová zátěž... pro daný stát a rok
countries - všemožné informace o zemích na světě, například hlavní město, měna, národní jídlo nebo průměrná výška populace

Je definováno 5 otázek-

1.Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?
2.Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd? 
3.Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)? 
4.Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %)? 
5.Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo následujícím roce výraznějším růstem?

Poznámky k projektu:

Primární tabulka - Spojila jsem několik tabulek do sebe pro získání potřebných dat. Začínala jsem s czechia_price a postupně jsem napojila všechny další na základě společných hodnot.

Sloupce v primární tabulce:

avg_price_value - průměry cen v Kč,
categ_code - kategorie potravin,
year_price - rok měření cen potravin,
payroll_id - jedinečné ID z tabulky mezd,
avg_payroll_value - prumerna mzda v Kč,
value_type_code - kód pro mzdy zaměstnanců (5958),
payroll_year - rok vyplácení mezd,
ib_code - kód odvětví,
cat_name - nazev potraviny,
ind_name - odvětví ,
GDP - HDP