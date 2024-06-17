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
Jednoznačně se nedá odpovědět. Ve vetsine odvetvi mzdy obcas klesly, pouze ve 3 odvetvich nikdy neklesly a to v Zpracovatelskem prumyslu, Zdravotnictvi a Ostatnich cinnostech. 
Nejvice klesly mzdy v Tezebnictvi- 4 poklesy v letech 2009, 2013, 2014 a 2016.
    
3. Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?
  - Mléka bychom si mohli koupit v roce 2006 1026 litrů a v roce 2018 už 1285 litrů.
  - Chleba bychom si mohli koupit v roce 2006 919 kilo a v roce 2018 už 1051 kilo.
    
3. Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)?
Pokud počítáme i období, kdy cena klesla, tak cukr a rajčata zlevnily a nejpomaleji cena stoupala u banánů. Jen musím upozornit, že u vína proběhlo měření pouze posledních 4 let 2015-2018.
Nejpomaleji zdražuje za celé období:
  - Cukr krystalový - pokles o 27,52 % z 21,73 Kč na 15,75 Kč
  - Rajská jablka červená kulatá - pokles o 23,07 % z 57,83 Kč na 44,49 Kč
  - Banány žluté - nárůst o 7,38 % z 27,3 Kč na 29,32 Kč
  
4. Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %)?
- Největší rozdíl nárůstu cen potravin a mezd byl v roce 2013 o 6,66% (potraviny rostly o 5,1 % a naopak mzdy klesaly o 1,56 %).
- Největší nárůst cen potravin byl v roce 2017 a to o 9,63% (mzdy rostly o 6,17 %).
- Největší nárůst mezd byl v roce 2008 o 7,69 % (potraviny rostly o 6,19 %).

Neexistuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd.

5. Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo následujícím roce výraznějším růstem?
HDP rostlo v roce 2007, 2015, 2017 a kleslo v letech 2009, 2012, 2013 (beru tedy v potaz rok kdy nastala zmena hdp a i nasledujici rok).
  - V roce 2006 a 2007 byl extremni narust cen u vice jak 20 druhu potravin (narust az 66 %).
  - V roce 2015 a 2016 byly velke vykyvy, spise se hladina udrzovala kolem nuly.
  - V roce 2017 a 2018 byl extremni pokles cen, a to u vice jak 15 druhu potravin (pokles az 31 %).
    
V letech co HDP rostlo jsme zaznamenali pouze par poklesu ve mzdach, takze urcite jde videt ze HDP toto ovlivlino.

Nejvice ovlivnil pokles HDP rok 2012, protoze v roce 2013 byl ovlivnen pokles mezd u 11 odvetvi z celkovych 19.

Finalni shrnuti:
Kdyz v letech 2007, 2015, 2017 HDP melo nejvetsi procentualni narust tak se mzdy ve velke prevaze zvysovaly. 
Co se tyce cen potravin, tak jsme zaznamenali v roce 2006 a 2007 extremni narust cen, to je uplne opacny pripad roku 2017 a 2018 kdy byl extremni pokles cen.
V letech 2015 a 2016 take nastaly vykyvy cen, ale hladina se spise drzi kolem 0 a +- 15 %. Nebylo zadne velke prevyseni jako jsme vypozorovali v let 2007 a 2017.

Co se tyce tabulky ohledne poklesu mezd, tak jsem vychazela z excel tabulky 01_question_excel_screenshot.

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
