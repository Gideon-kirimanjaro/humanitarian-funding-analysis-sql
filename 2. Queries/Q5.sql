-- Q5. Which year recorded the highest total funding?

-- Identifies the year with the highest total funding.
-- Aggregates funding by year and ranks results from highest to lowest
-- to highlight when the largest amount of funding was received.
-- Useful for spotting peak funding periods and understanding overall funding trends over time.

SELECT TOP 1
year,
SUM(funding) AS total_funding,
ROW_NUMBER() OVER(ORDER BY SUM(funding) desc) AS funding_rank
FROM Funding
GROUP BY year

