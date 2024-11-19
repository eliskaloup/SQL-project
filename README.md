# Analysis of the Availability of Basic Foodstuffs to the General Public
### Description of Datasets and Tables Used in the Project - PRIMARY PROJECT TABLE


czechia_payroll – Information about wages in various sectors over several years. The dataset comes from the Czech Republic's Open Data Portal.
czechia_price – Information about the prices of selected groceries over several years. The dataset comes also comes from the Czech Republic's Open Data Portal.
czechia_payroll_industry_branch – A code list of sectors in the payroll table.
czechia_price_category – A code list of food categories that appear in our overview.
economies – GDP, Gini coefficient, tax burden, etc., for a given country and year.

### SECONDARY PROJECT TABLE

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
## Final Summary:

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
