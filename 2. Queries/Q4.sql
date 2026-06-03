--- Q4. Which countries receive the highest total funding?

-- Returns the top 5 countries with the highest total funding
-- by summing all funding amounts and ranking from highest to lowest.
SELECT TOP 5
countryCode AS Country,
SUM(funding) AS total_funding
FROM Funding
GROUP BY countryCode
ORDER BY total_funding DESC