-- Q6. Which sectors are increasing or decreasing over time?

-- Analyses funding trends by sector over time.
-- Aggregates total funding for each sector by year, then compares each year
-- against the previous year to identify increases or decreases.
-- Useful for understanding which sectors are gaining more funding
-- and which sectors are declining over time.

SELECT 
year,
typeName AS sector,
SUM(funding) AS sum_of_funds,
LAG(SUM(funding)) OVER(PARTITION BY typeName ORDER BY year DESC) AS previous_year,
SUM(funding) - LAG(SUM(funding)) OVER(PARTITION BY typeName ORDER BY year DESC) AS funding_change
FROM Funding

GROUP BY typeName,year
ORDER BY sector, year