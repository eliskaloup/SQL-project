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

---
**The project contains of 5 questions:**

## First question: Do wages increase across all industries over the years, or do some decrease?
It cannot be answered definitively. In most industries, wages occasionally decreased; only in 3 industries did they never decrease: Manufacturing, Healthcare, and Other Activities.
The most significant wage decreases occurred in Mining, with 4 declines in the years 2009, 2013, 2014, and 2016.


## Second question: How many liters of milk and kilograms of bread could be purchased in the first and last comparable periods in the available price and wage data?
In 2006, it was possible to buy 1,026 liters of milk, whereas by 2018, this amount had increased to 1,285 liters. 
Similarly, in 2006, you could purchase 919 kilograms of bread, and by 2018, this had risen to 1,051 kilograms.


## Third question: Which category of groceries has the slowest price increase (the lowest percentage year-on-year growth)?
If we also consider periods when prices fell, sugar and tomatoes became cheaper, and the slowest price increase was observed for bananas. I should note that wine was measured only for the last four years (2015-2018).

The slowest price increases over the entire period:
- Granulated sugar - a decrease of 27.52% from 21.73 CZK to 15.75 CZK.
- Red round tomatoes - a decrease of 23.07% from 57.83 CZK to 44.49 CZK.
- Yellow bananas - an increase of 7.38% from 27.3 CZK to 29.32 CZK.

## Fourth question: Is there a year when the year-on-year increase in food prices was significantly higher than the growth in wages (greater than 10%)?
- The largest difference between food price increases and wage growth was in 2013, at 6.66% (food prices increased by 5.1%, while wages decreased by 1.56%).
- The highest increase in food prices was in 2017, at 9.63% (wages grew by 6.17%).
- The largest increase in wages was in 2008, at 7.69% (food prices increased by 6.19%).

There is no year in which the year-on-year increase in food prices was significantly higher than the growth in wages.

## Fifth question: Does GDP growth affect changes in wages and food prices? In other words, if GDP rises significantly in one year, does it lead to a noticeable increase in food prices or wages in the same or the following year?
GDP rose in 2007, 2015, and 2017, and fell in 2009, 2012, and 2013 (considering both the year when the GDP change occurred and the following year).

- In 2006 and 2007, there was an extreme increase in the prices of more than 20 types of food (an increase of up to 66%).
- In 2015 and 2016, there were large fluctuations, with prices mostly staying around zero.
- In 2017 and 2018, there was a sharp decline in prices for more than 15 types of food (a decrease of up to 31%).
- In the years when GDP grew, there were only a few declines in wages, indicating that GDP had an impact.

The year 2012 had the most significant impact due to the GDP decline, as in 2013, wage decreases were observed in 11 out of 19 sectors.

---
#Final Summary:

When GDP had the highest percentage growth in 2007, 2015, and 2017, wages predominantly increased.

As for food prices, there was an extreme price increase in 2006 and 2007, which is the complete opposite of the situation in 2017 and 2018, where there was a significant price drop. In 2015 and 2016, there were also price fluctuations, but the levels generally remained around 0 and ±15%. There were no substantial spikes, unlike in 2007 and 2017.

For the table regarding wage decreases, I based my analysis on the Excel table "01_question_excel_screenshot."

Project Notes:
>
>Primary Table - I combined several tables to obtain the necessary data. I started with >czechia_price< and gradually joined all other tables based on common values.
>
>Columns in the Primary Table::
>
> - avg_price_value - average prices in CZK,
> - categ_code - food category,
> - year_price - year of food price measurement,
> - payroll_id - unique ID from the payroll table,
> - avg_payroll_value - average wage in CZK,
> - value_type_code - code for employee wages (5958),
> - payroll_year - year of wage payment,
> - ib_code - industry code,
> - cat_name - name of the food item,
> - ind_name - industry



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
