----------------------------------------------------------------------------------------Q3

-- Query description
-- Year-over-year funding analysis by funding type.
-- Aggregates total funding per type and year, then uses LAG to pull the prior year's value
-- within each funding type. Calculates the difference to highlight increases or decreases over time.

------------------------------------------------------------------------------------Query
SELECT typeName,
year,
SUM(funding) AS total_funding,
LAG(SUM(funding),1,0) OVER(PARTITION BY typeName ORDER BY year DESC) AS previous_year,
SUM(funding)-LAG(SUM(funding),1,0) OVER(PARTITION BY typeName ORDER BY year DESC) AS difference
FROM Funding
GROUP BY typeName, year

