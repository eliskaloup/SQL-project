# Analysis of the Availability of Basic Foodstuffs to the General Public


**Description of Datasets and Tables Used in the Project - PRIMARY PROJECT TABLE**
---

czechia_payroll – Information about wages in various sectors over several years. The dataset comes from the Czech Republic's Open Data Portal.
czechia_price – Information about the prices of selected groceries over several years. The dataset comes also comes from the Czech Republic's Open Data Portal.
czechia_payroll_industry_branch – A code list of sectors in the payroll table.
czechia_price_category – A code list of food categories that appear in our overview.
economies – GDP, Gini coefficient, tax burden, etc., for a given country and year.

**SECONDARY PROJECT TABLE**
---

economies - GDP, Gini coefficient, tax burden... for a given country and year
countries - various information about countries around the world, such as the capital city, currency, national dish, or average population height

## The project contains 5 questions:

***First quesstion: Do wages increase across all industries over the years, or do some decrease?***

It cannot be answered definitively. In most industries, wages occasionally decreased; only in 3 industries did they never decrease: Manufacturing, Healthcare, and Other Activities.
The most significant wage decreases occurred in Mining, with 4 declines in the years 2009, 2013, 2014, and 2016.















    # Analýza dostupnosti základních potravin široké veřejnosti

---------------------------------------------
**Popis datových sad a tabulek použitých v projektu - PRIMÁRNÍ TABULKA PROJEKTU**

- czechia_payroll – Informace o mzdách v různých odvětvích za několikaleté období. Datová sada pochází z Portálu otevřených dat ČR.
- czechia_price – Informace o cenách vybraných potravin za několikaleté období. Datová sada pochází z Portálu otevřených dat ČR.
- czechia_payroll_industry_branch – Číselník odvětví v tabulce mezd.
- czechia_price_category – Číselník kategorií potravin, které se vyskytují v našem přehledu.
- economies - HDP, gini, daňová zátěž... pro daný stát a rok

**SEKUNDÁRNÍ TABULKA PROJEKTU**

- economies - HDP, gini, daňová zátěž... pro daný stát a rok
- countries - všemožné informace o zemích na světě, například hlavní město, měna, národní jídlo nebo průměrná výška populace


Je definováno 5 otázek-

1. Rostou v průběhu let mzdy ve všech odvětvích nebo v některých klesají?
Jednoznačně se nedá odpovědět. Ve většině odvětví mzdy občas klesly, pouze ve 3 odvětvích nikdy neklesly, a to v Zpracovatelském průmyslu, Zdravotnictví a Ostatních činnostech.
Nejvíce klesly mzdy v Těžebnictví - 4 poklesy v letech 2009, 2013, 2014 a 2016.
    
2. Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?
  - Mléka bychom si mohli koupit v roce 2006 1026 litrů a v roce 2018 už 1285 litrů.
  - Chleba bychom si mohli koupit v roce 2006 919 kilo a v roce 2018 už 1051 kilo.
    
3. Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)?
Pokud počítáme i období, kdy cena klesla, tak cukr a rajčata zlevnily a nejpomaleji cena stoupala u banánů. Jen musím upozornit, že u vína proběhlo měření pouze poslední 4 roky (2015-2018).
Nejpomaleji zdražuje za celé období:
  - Cukr krystalový - pokles o 27,52 % z 21,73 Kč na 15,75 Kč.
  - Rajská jablka červená kulatá - pokles o 23,07 % z 57,83 Kč na 44,49 Kč.
  - Banány žluté - nárůst o 7,38 % z 27,3 Kč na 29,32 Kč.
  
4. Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %)?
- Největší rozdíl nárůstu cen potravin a mezd byl v roce 2013 o 6,66% (potraviny rostly o 5,1 % a naopak mzdy klesaly o 1,56 %).
- Největší nárůst cen potravin byl v roce 2017 a to o 9,63% (mzdy rostly o 6,17 %).
- Největší nárůst mezd byl v roce 2008 o 7,69 % (potraviny rostly o 6,19 %).

Neexistuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd.

5. Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo následujícím roce výraznějším růstem?
HDP rostlo v roce 2007, 2015, 2017 a kleslo v letech 2009, 2012, 2013 (beru tedy v potaz rok, kdy nastala změna HDP, a i následující rok).
  - V roce 2006 a 2007 byl extrémní nárůst cen u více než 20 druhů potravin (nárůst až 66 %).
  - V roce 2015 a 2016 byly velké výkyvy, spíše se hladina udržovala kolem nuly.
  - V roce 2017 a 2018 byl extrémní pokles cen, a to u více než 15 druhů potravin (pokles až 31 %).
  - V letech, kdy HDP rostlo, jsme zaznamenali pouze pár poklesů ve mzdách, takže je vidět, že HDP toto ovlivnilo.

Nejvíce ovlivnil pokles HDP rok 2012, protože v roce 2013 byl ovlivněn pokles mezd u 11 odvětví z celkových 19.

Finální shrnutí:
Když v letech 2007, 2015, 2017 HDP mělo největší procentuální nárůst, tak se mzdy ve velké převaze zvyšovaly.
Co se týče cen potravin, tak jsme zaznamenali v roce 2006 a 2007 extrémní nárůst cen, to je úplně opačný případ roku 2017 a 2018, kdy byl extrémní pokles cen.
V letech 2015 a 2016 také nastaly výkyvy cen, ale hladina se spíše drží kolem 0 a ±15 %. Nebylo žádné velké převýšení, jak jsme vypozorovali v letech 2007 a 2017.

Co se týče tabulky ohledně poklesu mezd, tak jsem vycházela z excel tabulky 01_question_excel_screenshot.

-----------------------------------------------------------------------------------------------------------------------------
Poznámky k projektu:
>
>Primární tabulka - Spojila jsem několik tabulek do sebe pro získání potřebných dat. Začínala jsem s czechia_price a postupně jsem napojila všechny další na základě společných hodnot.
>
>Sloupce v primární tabulce:
>
> - avg_price_value - průměry cen v Kč,
> - categ_code - kategorie potravin,
> - year_price - rok měření cen potravin,
> - payroll_id - jedinečné ID z tabulky mezd,
> - avg_payroll_value - prumerna mzda v Kč,
> - value_type_code - kód pro mzdy zaměstnanců (5958),
> - payroll_year - rok vyplácení mezd,
> - ib_code - kód odvětví,
> - cat_name - nazev potraviny,
> - ind_name - odvětví,
> - GDP - HDP

