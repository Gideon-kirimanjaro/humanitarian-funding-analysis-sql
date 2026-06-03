
----------------------------------------------------------------------------------Q1

-- Identifies the 10 countries with the lowest average funding.
-- Calculates average funding grouped by country and year,
-- then ranks results in ascending order to highlight lower-funded countries.
-- Useful for spotting funding gaps and comparing country-level funding trends.

-------------------------------------------------------------------------------Query
SELECT TOP 10 countryCode, AVG(funding) AS avg_funding, name,year
FROM Funding
GROUP BY countryCode, name, year
ORDER BY avg_funding ASC
