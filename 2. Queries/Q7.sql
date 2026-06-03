-- Q7. Which countries had the biggest funding increase from one year to the next?

-- Identifies countries with the largest year-over-year increase in funding.
-- Aggregates funding by country and year, then compares each year
-- to the previous year to calculate the change in funding.
-- Useful for highlighting countries that experienced the strongest growth
-- in funding over time.

SELECT 
year,
countryCode AS country,
SUM(funding) AS total_funding,
LAG(SUM(funding)) OVER(PARTITION BY countryCode ORDER BY year) AS previous_year,
SUM(funding) - LAG(SUM(funding)) OVER(PARTITION BY countryCode ORDER BY year) AS funding_difference

FROM Funding
GROUP BY year, countryCode